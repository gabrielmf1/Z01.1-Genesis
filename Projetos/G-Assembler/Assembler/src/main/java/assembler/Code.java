/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

import java.util.HashMap;
import java.util.Map;
import java.lang.Math;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {




    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        int tamanho = mnemnonic.length;
        String opcoes = "jmp je jne jg jge jl jle nop";
        String resposta;
        Map<String,String> mapDestino = new HashMap<String, String>();
        mapDestino.put("Null","0000");
        mapDestino.put("%A","0001");
        mapDestino.put("%D","0010");
        mapDestino.put("(%A)","0100");
        mapDestino.put("%D%A","0011");
        mapDestino.put("(%A)%A","0101");
        mapDestino.put("(%A)%D","0110");
        mapDestino.put("(%A)%A%D","0111");
        if (opcoes.contains(mnemnonic[0])){
            resposta = "0000";
            }
        else if(mnemnonic[0] == "movw" && tamanho > 3){
            String juntos = mnemnonic [tamanho-2] + mnemnonic[tamanho-1];
            resposta = mapDestino.get(juntos);
            }
        else{
        String destino = mnemnonic[tamanho-1];
        resposta = mapDestino.get(destino);
            }
        return resposta;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        int tamanho = mnemnonic.length;
        String resposta = null;
        String opcoes = "jmp je jne jg jge jl jle";
        if(opcoes.contains(mnemnonic[0])){
            resposta = "000001100";
        }
        else if(mnemnonic[0] == "movw"){
            switch (mnemnonic[1]){
                case "%A" : resposta = "000110000";
                case "(%A)" : resposta = "001110000";
                case "%D" : resposta = "000001100";
                default    : resposta = "000000000";
            }

        }
        else if (mnemnonic[0] == "incw"){
            switch (mnemnonic[1]){
                case "%A" : resposta = "000110111";
                case "(%A)" :resposta= "001110111";
                case "%D" : resposta = "000011111";
                default    : resposta = "000000000";
            }
        }
        else if (mnemnonic[0] == "decw"){
            switch (mnemnonic[1]){
                case "%A" : resposta = "000110010";
                case "(%A)" : resposta = "001110111";
                case "%D" : resposta = "000001110";
                default    : resposta = "000000000";
            }
        }
        else if (mnemnonic[0] == "andw"){
            switch (mnemnonic[1] + mnemnonic[2]){
                case "%A%D" : resposta = "0000000000";
                case "%D%A" : resposta = "0000000000";
                case "(%A)%D" : resposta = "0010000000";
                case "%D(%A)" : resposta = "0010000000";
                default    : resposta = "000000000";
            }
        }
        else if (mnemnonic[0] == "orw"){
            switch (mnemnonic[1] + mnemnonic[2]){
                case "%A%D" : resposta = "0000010101";
                case "%D%A" : resposta = "0000010101";
                case "(%A)%D" : resposta = "0010010101";
                case "%D(%A)" : resposta = "0010010101";
                default    : resposta = "000000000";
            }
        }

    	return resposta;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        /* TODO: implementar */

        switch (mnemnonic[0]){
            case "jmp"  : return "111";
            case "jg"   : return "001";
            case "je"   : return "010";
            case "jge"   : return "011";
            case "jl"   : return "100";
            case "jne"   : return "101";
            case "jle"   : return "110";
            default    : return "000";


        }

    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int numero = Integer.parseInt(symbol);
        String binario = Integer.toBinaryString(numero);
        while (binario.length() < 16){
            binario = "0" + binario;
        }
    	return binario;
    }

}
