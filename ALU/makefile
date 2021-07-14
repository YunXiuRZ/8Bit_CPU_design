version = -g2005-sv
files = HalfAdder_1B FullAdder_1B FullAdder_8B ALU

all : $(addsuffix .vcd, $(files))

%.vcd : %.vvp
	vvp $<

HalfAdder_1B.vvp : HalfAdder_1B.v HalfAdder_1B_t.v
	iverilog $(version) -o HalfAdder_1B.vvp HalfAdder_1B.v HalfAdder_1B_t.v

FullAdder_1B.vvp : HalfAdder_1B.v FullAdder_1B.v FullAdder_1B_t.v
	iverilog $(version) -o FullAdder_1B.vvp HalfAdder_1B.v FullAdder_1B.v FullAdder_1B_t.v

FullAdder_8B.vvp : HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v FullAdder_8B_t.v
	iverilog $(version) -o FullAdder_8B.vvp HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v FullAdder_8B_t.v

ALU.vvp : ../8BitGate/Replicater_8B.v ../8BitGate/BitWiseInverter_8B.v ../8BitGate/BitWiseAndGate_8B.v HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v ../MUX/MUX_2to1_1B.v ../MUX/MUX_2to1_8B.v ../MUX/MUX_4to1_8B.v ALU.v ALU_t.v
	iverilog $(version) -o ALU.vvp ../8BitGate/Replicater_8B.v ../8BitGate/BitWiseInverter_8B.v ../8BitGate/BitWiseAndGate_8B.v HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v ../MUX/MUX_2to1_1B.v ../MUX/MUX_2to1_8B.v ../MUX/MUX_4to1_8B.v ALU.v ALU_t.v
