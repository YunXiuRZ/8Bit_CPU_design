version = -g2005-sv
files = MUX_2to1_1B MUX_2to1_8B MUX_4to1_8B

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

MUX_2to1_1B.vvp : MUX_2to1_1B.v MUX_2to1_1B_t.v
	iverilog $(version) -o MUX_2to1_1B.vvp MUX_2to1_1B.v MUX_2to1_1B_t.v

MUX_2to1_8B.vvp : MUX_2to1_1B.v MUX_2to1_8B.v MUX_2to1_8B_t.v
	iverilog $(version) -o MUX_2to1_8B.vvp MUX_2to1_1B.v MUX_2to1_8B.v MUX_2to1_8B_t.v

MUX_4to1_8B.vvp : MUX_2to1_1B.v MUX_2to1_8B.v MUX_4to1_8B.v MUX_4to1_8B_t.v
	iverilog $(version) -o MUX_4to1_8B.vvp MUX_2to1_1B.v MUX_2to1_8B.v MUX_4to1_8B.v MUX_4to1_8B_t.v
