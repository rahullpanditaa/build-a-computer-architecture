// One register is used to represent one variable
// variable type - only bits

// Program : flip the values of RAM[0] and RAM[1]
// temp = R1
// R1 = R0
// R0 = temp

@R1           // selects M=RAM[1]
D=M           // D = value of RAM[1]

// using @temp says to the computer to find some available memory register (16 onwards usually) and use it to 
// represent the variable temp. From now on, each occurence of @temp in the program will be translated to @n (@16).

@temp         // selects register 16 and uses temp to represent it, side effect M=RAM[16] / RAM[temp]
M=D           // RAM[temp] stores the value of D (RAM[1])

@R0           // M=RAM[0]
D=M 
@R1
M=D           // stores D(RAM[0]) value in RAM[1]

@temp         // selects temp register currently holding original value of RAM[1]
D=M 
@R0
M=D

(END)
@END
0;JMP

