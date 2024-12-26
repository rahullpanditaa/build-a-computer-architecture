// Adds the constants 2 and 3, puts the result in R0

@2          // A = 2
D=A
@3          // A = 3
D=D+A       // D = 2 + 3
@R0         // selects M = RAM[0]
M=D
