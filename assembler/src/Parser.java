import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Parser {
    String inputAsmFileName;
    BufferedReader reader;


    public Parser(String inputAsm) {
        this.inputAsmFileName = inputAsm;

        try {
            BufferedReader reader = new BufferedReader(new FileReader(inputAsmFileName));
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    // this method should ignore whitespace and comments
    public boolean hasMoreLines() {
        // check whether the text file opened by this Parser object has a next line
        try {
            String nextLine = reader.readLine();
            return (nextLine != null && nextLine.startsWith("//"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    // if there is a next line or instruction, go to it and make it the current
    // instruction
    void advance() {
        if (hasMoreLines()) {
            try {
                String currentInstruction = reader.readLine();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }


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