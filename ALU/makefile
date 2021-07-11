HalfAdder_1B : HalfAdder_1B.v HalfAdder_1B_t.v
	iverilog -g2005-sv -o HalfAdder_1B HalfAdder_1B.v HalfAdder_1B_t.v
FullAdder_1B : HalfAdder_1B.v FullAdder_1B.v FullAdder_1B_t.v
	iverilog -g2005-sv -o FullAdder_1B HalfAdder_1B.v FullAdder_1B.v FullAdder_1B_t.v
FullAdder_8B : HalfAdder_1B.v FullAdder_1B.v Fulladder8B.v Fulladder8B_t.v
	iverilog -g2005-sv -o Fulladder_8B HalfAdder_1B.v FullAdder_1B.v Fulladder8B.v Fulladder8B_t.v
ALU : ../8BitGate/Replicater_8B.v ../8BitGate/BitWiseInverter_8B.v ../8BitGate/BitWiseAndGate_8B.v HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v ../MUX/MUX_2to1_1B.v ../MUX/MUX_2to1_8B.v ../MUX/MUX_4to1_8B.v ALU.v ALU_t.v
	iverilog -g2005-sv -o ALU ../8BitGate/Replicater_8B.v ../8BitGate/BitWiseInverter_8B.v ../8BitGate/BitWiseAndGate_8B.v HalfAdder_1B.v FullAdder_1B.v FullAdder_8B.v ../MUX/MUX_2to1_1B.v ../MUX/MUX_2to1_8B.v ../MUX/MUX_4to1_8B.v ALU.v ALU_t.v
clean:
	rm result.vcd