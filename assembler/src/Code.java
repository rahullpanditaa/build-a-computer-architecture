import java.util.HashMap;

// deals only with C instructions -> dest=comp;jump
public class Code {
    String dest;
    String comp;
    String jump;
    HashMap<String, String> compTable;
    HashMap<String, String> destTable;
    HashMap<String, String> jumpTable;

    public code() {
        this.dest = null;
        this.comp = null;
        this.jump = null;
        compTable = new HashMap<String, String>();
        destTable = new HashMap<String, String>();
        jumpTable = new HashMap<String, String>();
    }




}
