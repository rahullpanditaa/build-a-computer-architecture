// RAM[5] = RAM[3]    ; store the value in RAM[3] in RAM[5]

@R3     // M = RAM[3]
D=M     // D = RAM[3]
@R5     // M = RAM[5]
M=D     // stores D=RAM[3] in M=RAM[5]