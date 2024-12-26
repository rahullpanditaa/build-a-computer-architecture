// Computes the maximum of R0 and RI and puts result in R2

@R0                // M = RAM[0]
D=M                // D = RAM[0]

@R1                // M = RAM[1]
D=D-M 

// if D > 0; R0 > R1 -> R2 outputs R0 value
// else R2 outputs R1 value

@BIGRO
D;JGT

(BIGRO)
@R0
D=M

// R1 bigger
@R1
D=M

@OUTPUT_D
0;JMP

(OUTPUT_D)
@R2
M=D

(END)
@END
0;JMP