// When compiler has translated high level code into machine language, the notion of arrays gets lost, since
// the machine languae does not recognize the asbtraction of arrays.

// Example : suppose we have an array (length does not matter)
// for (i = 0; i < n; i ++) {
//     arr[i] = -1;    
// }
// As per the high level code, we want to manipulate the first n entries of the array, changing their
// values to -1

// Assume: array starts at address 100 i.e. RAM[100], do something to 1st 10 entries
// arr = 100   ; base address of the segment in memory representing array
// n = 10

// VARIABLES LIKE arr THAT STORE MEMORY ADDRESSES INSTEAD OF ACTUAL VALUES ARE CALLED POINTERS

// CODE:
// initialize arr and n
@100            // A=100, side effect M=RAM[100]
D=A             // D=100
@arr            // arr variable represents first available memory register
M=D             // store 100 in arr  -> arr variable/memory register stores base value of the (array) segment in memory

@10
D=A
@n
M=D             // n variable stores 10

// initialize i ; the counter variable
@i
M=0

(LOOP)
// if i == n; goto END  -> i-n equals 0
@i
D=M

@n
D=D-M

@END
D;JEQ

// RAM[arr+1] = -1;     start from arr=100, i=0; RAM[100]
@arr
D=M           // D stores value of arr register 100
@i
A=D+M         // A register stores value of arr + i; M=RAM[arr+i]
M=-1
// HACK LANGUAGE POINTER LOGIC:
// Whenever we have to access memory using a pointer(arr), we need an instruction like A=something
// Pointer semantics: set the address register A to the contents of some memory register to compute the address
// on which we want to operate.

// i++
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP