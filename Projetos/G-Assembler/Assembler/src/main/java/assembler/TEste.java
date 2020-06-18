package assembler;

public class TEste {
    public static void main(String[] args) {
        String teste = "leaw $0, %A";
        String dois = "";
        String[] um;
//        dois = teste.replaceAll(";.*$", "").trim();
        um = teste.split("");
        int comeco = teste.indexOf("$");
        int fim = teste.indexOf(",");
        dois = teste.substring(comeco+1,fim);
        System.out.println(dois);
    }
}
