// want to set RAM[100] to -1
//@100      // A = 100, selects M = RAM[100]
//M=-1

// flips the values of RAM[0] and RAM[1]
// temp = R0
// R0 = R1
// R1 = temp

@R0            // selects M=RAM[0]
D=M            // stores value of RAM[0] in D register

// variable -> select first available memory register(in this case 16 onwards), use variable to represent the
// memory register
@temp          // A=16, selects M=RAM[16]   
M=D            // stores value of D register(RAM[0]) in variable temp

@R1            // selects M=RAM[1]
D=M            // puts value of RAM[1] in D register  
@R0            // selects RAM[0]
M=D            // puts value of RAM[1] in RAM[0]

@temp          // variable -> memory register currently holding value of RAM[0]
D=M            // stores temp value in D register
@R1
M=D

(END)
@END
0;JMP