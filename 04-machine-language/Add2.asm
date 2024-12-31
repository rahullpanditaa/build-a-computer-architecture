// Add two numbers
// Compute: RAM[2] = RAM[0] + RAM[1]
// Usage: Put values in RAM[0] and RAM[1]

@R0         // selects M=RAM[0]
D=M         // D=RAM[0]
@R1         // selects M=RAM[1]
D=D+M       // D = RAM[0] + RAM[1]
@R2         // selects M=RAM[2]
M=D         // M = RAM[0] + RAM[1]

(END)      // label END
@END       
0;JMP      // jump to END label unconditionally