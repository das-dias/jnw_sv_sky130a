
A translinear gain cellcircuit is a wonderful thing. It's not that common these days, so
allow me to do an explantion.

You can find details in [Analog Integrated Circuit Design](https://www.amazon.com/Analog-Integrated-Circuit-Design-Carusone/dp/1118092333)

Consider the circuit below. The important transitors are XM1, XM2, XM3 and XM4.
Call the bias current in XM1 and XM2 $I_1$ and $I_2$ in XM3 and XM4.

The transistors are all biased in weak inversion, so the VGS of XM1 and XM2 will
be

$$ I_{D1} = I_0 e^{(V_{GS1}-V_TH)/nU_T} = I_0 e^{V_{TH}/nU_T}e^{V_{GS1}/nU_T} = A e^{V_{GS1}/B} $$ 

and 

$$ V_{GS1} = B \ln (I_{D1}/A) $$

Assume that the gate is at $ 0 V$ it's not really at $0 V$, can see from the schematic, but it makes the analysis easier.

$$ V_{S1} = -B \ln (I_{D1}/A) $$


where A and B are constants.

Consider a small current difference into IIP and IIN where $$IIP = i_1$ and $IIN=-i_1$, since the gate is shared,
the differential voltage on source will be 

$$\Delta V = V_{S2} - V_{S1} = -B \ln\left(\frac{I_1-i_1}{A}\right) + B \ln \left(\frac{I_1+i_1}{A}\right)$$

which can be simplified to 

$$ \Delta V = B \ln \left( \frac{I_1 + i_1 }{ I_1 - i_1 } \right) $$

Now consider the differential pair XM3 and XM4. The voltgage $V-$ must be given by

$$ V+ - V_{GS3} + V_{GS4} = V-$$ 

or 

$$ \Delta V = B \ln \frac{I_3}{I_4}$$ 

or 

$$\frac{I_3}{I_4} = e^{\Delta V/B} $$

It must be the case that 

$$ 2I_2 = I_3 + I_4$$

As the current in the tail current source is the sum of the differential pair currents, as such, we can compute

$$ 2I_2 = I_4 e^{\Delta V/B} + I_4 $$ 

inserting for $\Delta V$ we get 

$$ 2 I_2 = I_4 \frac{I_1 + i_1 }{ I_1 - i_1 } + I_4$$

or 

$$ I_4 = \frac{2 I_2}{\frac{I_1 + i_1 }{ I_1 - i_1 } + 1} $$

multiply over and under with $I_1 - i_1 $ and we get 

$$I_4 = \frac{2 I_2(I_1 - i_1)}{I_1 - i_1 + I_1 + i_1} = I_2  - \frac{I_2}{I_1} i_1$$

Computing for $I_3$ and taking $i_o = I_4 - I_3$ one gets (provided tounge straight and all those $-$ checks)

$$i_o = \frac{I_2}{I_1} i_1$$

The input current is a linear scaling with the current difference between $I_2$ and $I_1$, which I find a remarkable result.

I remember learning about translinear circuits 25 years ago, and I found it beautiful that one could use
the exponential relationship of bipolars, and mosfets in subthreshold to create linear gain.

In the circuit below the $I_1$ is a mirrored version of the bias current, while $I_2$ comes from a current DAC.



