import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Parser {
    //    String inputAsmFileName;
    BufferedReader reader;


    public Parser(String inputAsm) {
//        this.inputAsmFileName = inputAsm;

        try {
            BufferedReader reader = new BufferedReader(new FileReader(inputAsm));
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    // this method should ignore whitespace and comments
    public boolean hasMoreLines() {
        // check whether the text file opened by this Parser object has a next line
        try {
            String nextLine = reader.readLine();
            return (nextLine != null && nextLine.startsWith("//") && nextLine.trim().isEmpty());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // if there is a next line or instruction, go to it and make it the current
    // instruction
    // static field?
    String currentInstruction;

    public void advance() {
        if (hasMoreLines()) {
            try {
                currentInstruction = reader.readLine();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    // Parsing the current instruction and return its instruction type
    InstructionType currentInstructionType;

    public InstructionType instructionType() {
        // return the type of current instruction as a constant
        // A instruction or C instruction
        // probably enums
        if (currentInstruction.startsWith("@")) {
            currentInstructionType = InstructionType.A_INSTRUCTION;
        } else {
            currentInstructionType = InstructionType.C_INSTRUCTION;
        }
        return currentInstructionType;
    }

    // TRANSLATING A AND C INSTRUCTIONS INTO BINARY CODE
    // if current instruction type is an A instruction -> @value
    // current instruction into binary = "0" + value into 15 bit binary constant
    // write to output file Xxx.hack
    public String translate(String currentInstruction) {
        switch (currentInstructionType) {
            case A_INSTRUCTION:
                // stores decimal after @ in @value as a string
                String decimalValAsString = currentInstruction.substring(1);
//                value as an decimal int
                int decimalVal = Integer.parseInt(decimalValAsString);
                // binary representation of value in A instruction @value (still not padded to 15 bits)
                String binaryString = Integer.toBinaryString(decimalVal);
                // A instruction op-code + 15 bit binary equivalent of decimal value
                String paddedBinaryString = "0" + String.format("%15s", binaryString).replace(" ", "0");
                return paddedBinaryString;
                break;
            case C_INSTRUCTION:
        }
    }


    
    // -----
    // if current instruction is a C instruction -> dest=comp;jump
    //


}
    /*
    public boolean hasMoreLines() {
        // check whether the text file opened by this Parser object has a next line
    }

    String advance() {
        // if there is a next line or instruction, go to it and make it the current
        // instruction
    }

    // Parsing the current instruction
    ??? instructionType() {
        // return the type of current instruction as a constant
        // A instruction or C instruction
        // probably enums
    }

    // Not dealing with symbols yet

    String dest() {
        // returns the instruction's dest field (will go to code api)
    }

    String comp() {
        // returns the C instruction's comp field
    }

    String jump() {
        // returns the C instruction's jump field
    }
}
*/