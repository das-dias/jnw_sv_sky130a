
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who

Carsten Wulff

# Why

I wanted to make an example of using digital code [rtl/dig.v](rtl/dig.v) in
NGSPICE.

<iframe width="560" height="315" src="https://www.youtube.com/embed/vEZPCIInwmQ?si=f42sDa6U5A6YV_Hw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


# The circuit

In `design/JNW_SV_SKY130A/JNWSW_CM.sch` you'll find a current mirror, and a
5-bit current DAC. 

What we want from the digital is to control the binary value of the current DAC. 

# The digital code

The digital code is shown below. The `clk` controls the stepping, while the
`reset` sets the output `b=0`. When `reset` is off, then the `b` increments. 


```verilog
module dig(
           input wire         clk,
           input wire         reset,
           output logic [4:0] b
           );

   logic                      rst = 0;

   always_ff @(posedge clk) begin
      if(reset)
        rst <= 1;
      else
        rst <= 0;
   end

   always_ff @(posedge clk) begin
      if(rst)
        b <= 0;
      else
        b <= b + 1;
   end // dig

endmodule

```


# Compile RTL 

The first thing we need to do is to translate the verilog into a compiled object
that can be used in ngspice. 



``` bash
cd sim/JNWSW_CM
ngspice vlnggen ../../rtl/dig.v
```

# Import object into spice file

I'm lazy. So I don't want to do the same thing multiple times. As such, I've
written a small script to help me instanciate the verilog 

``` bash
perl ../../tech/script/gensvinst ../../rtl/dig.v dig
```

The script generates an `svninst.spi` file. The first section imports the
digital compiled library 
``` spice
adut [clk
+ reset
+ ]
+ [b.4
+ b.3
+ b.2
+ b.1
+ b.0
+ ] null dut
.model dut d_cosim simulation="../dig.so" delay=10p

```

Turns out that ngspice needs the digital inputs and outputs to be connected to
something to calculate them (I think), so connect some resistors

``` spice
* Inputs
Rsvi0 clk 0 1G
Rsvi1 reset 0 1G

* Outputs
Rsvi2 b.4 0 1G
Rsvi3 b.3 0 1G
Rsvi4 b.2 0 1G
Rsvi5 b.1 0 1G
Rsvi6 b.0 0 1G
```

For the busses I find it easier to read the value as a real, so translate the
buses from digital `b[4:0]` to a real value `dec_b` 

``` spice
E_STATE_b dec_b 0 value={( 0 
+ + 16*v(b.4)/AVDD
+ + 8*v(b.3)/AVDD
+ + 4*v(b.2)/AVDD
+ + 2*v(b.1)/AVDD
+ + 1*v(b.0)/AVDD
+)/1000}
.save v(dec_b)

```

# Import in testbench

An example testbench can be seen below (`sim/JNWSW_CM/tran.spi`)

``` spice

VSS  VSS  0     dc 0
VDD  VDD_1V8  0  dc {AVDD}
VCLK clk 0 dc 0 pulse (0 {AVDD} 0 {TRF} {TRF} {PW_CLK} {PERIOD_CLK})
VRESET reset 0 dc {AVDD} pwl 0 {AVDD} {PW_CLK*2} {AVDD} {PW_CLK*2 + 1n} 0

.include ../xdut.spi
.include ../svinst.spi

* Translate names
VB0 b.0 b<0> dc 0
VB1 b.1 b<1> dc 0
VB2 b.2 b<2> dc 0
VB3 b.3 b<3> dc 0
VB4 b.4 b<4> dc 0

*- Bias current
IBPS 0 ibp dc 100n

* RC filter to calm the IDAC output
CDL IBN_DAC 0 10p
R1 IBN_DAC IBN_FILT 1k
VDAC IBN_FILT 0 dc 0.9

* The other bias currents
VI0 IBN_0 0 dc 0.9
VI1 IBN_1 0 dc 0.9
VI2 IBN_2 0 dc 0.9

...
```

# Override default digital output voltage

We can override the output dac from digital to analog to ensure that the digital
signals have the right levels 

``` spice

*- Override the default digital output bridge.
pre_set auto_bridge_d_out =
     + ( ".model auto_dac dac_bridge(out_low = 0.0 out_high = 1.8)"
     +   "auto_bridge%d [ %s ] [ %s ] auto_dac" )

```


# Running 

You can run the whole thing with 

``` bash
cd sim/JNWSW_CM/
make typical 
```


