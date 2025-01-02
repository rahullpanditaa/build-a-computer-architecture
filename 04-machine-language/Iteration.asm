// Compute 1 + 2 + .... + n
// n -> RAM[0]
// Computes RAM[1] = 1 + 2 + ... + RAM[0]

// n = R0    ; The value upto which sum is to be computed
// i = 1     ; The starting number
// sum = 0   ; Initial sum before computaion begins

// Loop:
// if i > n; goto STOP
// else sum = sum + i; i = i + 1; goto Loop
// STOP: R1 = sum

// initialize variables
@R0
D=M
@n
M=D

@i
M=1

@sum
M=0

// Loop starts
(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT

@sum
D=M
@i
D=D+M
@sum
M=D

@i
M=M+1
@LOOP
0;JMP

(STOP)
@sum
D=M
@R1
M=D

(END)
@END
0;JMP