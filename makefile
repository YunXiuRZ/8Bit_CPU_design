CPU : 8BitGate/NorGate_8B.v 8BitGate/Replicater_8B.v 8BitGate/BitWiseInverter_8B.v 8BitGate/BitWiseAndGate_8B.v ALU/FullAdder_8B.v ALU/FullAdder_1B.v ALU/HalfAdder_1B.v MUX/MUX_2to1_8B.v MUX/MUX_2to1_1B.v MUX/MUX_4to1_8B.v ALU/ALU.v FlipFlop/FDCE.v Register/Register_2B.v Decoder/StatusRegister.v Decoder/InstructionDecoder.v Decoder/CompleteInstructionDecoder.v FlipFlop/FDC.v Decoder/JumpLogic.v Decoder/SequenceGenerator.v Decoder/Decoder.v FlipFlop/FD.v RAM/RAM.v Register/Register_8B.v Register/Register_4B.v Register/Register_16B.v SplitAndJoin/Join_16B.v SplitAndJoin/Split_16B.v
	iverilog -g2005-sv -o CPU 8BitGate/NorGate_8B.v 8BitGate/Replicater_8B.v 8BitGate/BitWiseInverter_8B.v 8BitGate/BitWiseAndGate_8B.v ALU/FullAdder_8B.v ALU/FullAdder_1B.v ALU/HalfAdder_1B.v MUX/MUX_2to1_8B.v MUX/MUX_2to1_1B.v MUX/MUX_4to1_8B.v ALU/ALU.v FlipFlop/FDCE.v Register/Register_2B.v Decoder/StatusRegister.v Decoder/InstructionDecoder.v Decoder/CompleteInstructionDecoder.v FlipFlop/FDC.v Decoder/JumpLogic.v Decoder/SequenceGenerator.v Decoder/Decoder.v FlipFlop/FD.v RAM/RAM.v Register/Register_8B.v Register/Register_4B.v Register/Register_16B.v SplitAndJoin/Join_16B.v SplitAndJoin/Split_16B.v CPU_8B.v, CPU_8B_t.v