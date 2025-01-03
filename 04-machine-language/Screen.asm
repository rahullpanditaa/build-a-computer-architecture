// EXAMPLE: Drawing a rectangle that is 16 pixels wide and RAM[0] pixels long
// for (i = 0; i < n; i++) {
//    draw 16 black pixels at beginning of row i    
// }

// addr = SCREEN   -> base address of screen memory map
// n = RAM[0]      -> length of rectangle (number of rows)
// i = 0           -> row counter variable
// LOOP:
// if i > n; goto END
// else
// RAM[addr] = -1        // -1 corresponds to 16 1's in binary -> 16 pixels at start of row turned black
// addr = addr + 32      // advances to next row; 1st 32 words in screen memory map represent 1 row of pixels
// i = i+1
// goto LOOP
// END

// addr = SCREEN


// n = RAM[0]
@R0
D=M
@n
M=D

// i = 0
@i
M=0

(LOOP)
// if i > n; goto END
@i
D=M
@n
D=D-M
@END
D;JGT

// else
// RAM[addr] = -1
@addr
M=-1

// addr = addr + 32 ; advances to next row
@32
D=A
@addr
A=D+A

// i = i + 1
@i
M=M+1
@LOOP
0;JMP

(END)
@END
0;JMP