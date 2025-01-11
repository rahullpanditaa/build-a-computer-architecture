import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Assembler {

    public static void main(String[] args) {

        try {
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter("output.hack"));
            writer.write("00001111001010010");
            writer.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
