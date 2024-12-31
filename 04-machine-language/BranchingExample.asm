// Usually, machine languages have a single branching mechanism
// if some condition met; jump to specified instruction; else continue(jump to next instruction in sequence)

// Program example
// Computes : if R0 > 0; R1 = 1; else R1 = 0;

@R0          // selects M=RAM[0]

@POSITIVE
M;JGT       // if M=RAM[0] > 0, jump to POSITIVE label

// else
@0         // A=0, side effect M=RAM[0]
@R1        // M=RAM[1]
M=A        // sets M(RAM[1]) to 0

(POSITIVE)
@1        // A=1, side effect M=RAM[1]
M=A       // sets M(RAM[1]) to A(1)

(END)
@END
0:JMP