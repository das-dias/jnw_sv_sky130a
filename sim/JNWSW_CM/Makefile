

all: typical etc mc summary

mynetlist: netlist
	-rm dig.so
	-rm -rf dig_obj_dir
	ngspice vlnggen ../../rtl/dig.v
	perl ../../tech/script/gensvinst ../../rtl/dig.v dig

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=JNWSW_CM
LIB =JNW_SV_SKY130A
OPT=

include ../../tech/make/sim.make

test:
	${MAKE} typical OPT="Debug"

typical: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

slow: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"

etc: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_etc ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

mc: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_mc --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_ntc ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: mynetlist
	cicsim run --replace replace.yaml --name ${VIEW}_temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

summary:
	cicsim summary --output "README.md"

slide:
	pandoc -s  -t slidy README.md -o README.html


clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
