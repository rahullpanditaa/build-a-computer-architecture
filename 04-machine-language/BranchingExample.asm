// Usually, machine languages have a single branching mechanism
// if some condition met; jump to specified instruction; else continue(jump to next instruction in sequence)

// Program example
// Computes : if R0 > 0; R1 = 1; else R1 = 0;

@R0          // selects M=RAM[0]
D=M

@POSITIVE
D;JGT       // if D=M=RAM[0] > 0, jump to POSITIVE label

// else
@R1        // M=RAM[1]
M=0        // sets M(RAM[1]) to 0
@END       // finish else clause; jump to end 
0;JMP

(POSITIVE)
@R1
M=1       // sets M(RAM[1]) to 1

(END)
@END
0;JMP