version = -g2005-sv
files = RAM

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

RAM.vvp : RAM.v RAM_t.v
	iverilog $(version) -o RAM.vvp RAM.v RAM_t.v

