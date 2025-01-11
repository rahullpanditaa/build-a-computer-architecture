import java.io.*;

public class Assembler {

    public static void main(String[] args) {

        String[] bits = {"0000101010001110",
                         "1000101000111001",
                         "1111000010111001"};
        try {
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter("output.hack"));
            writer.write("00001111001010010");
            writer.write("\n1000101000101110");

            for (String binaryCode : bits) {
                writer.write("\n" + binaryCode);
            }
            writer.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        try {
            BufferedReader reader = new BufferedReader(
                                    new FileReader("output.hack"));

            // declare a string to hold each line of text as we
            // read it
            String line;
            while((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
