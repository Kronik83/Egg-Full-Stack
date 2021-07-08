package rs232;
import java.util.Scanner;
/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Ejercicio17 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here 
        int contador = 0;
        int contador1 = 0;
        String palabra = null;
        String FDE = null;

        Scanner leer = new Scanner(System.in);

        do {
            System.out.println("Ingrese una cadena, la cual debe iniciar con X y terminar con O,"
                    + "Y no pueder ser mayor a 5 caracteres de longitud:");
            palabra = leer.next();
            
            // 0 1 2 3 4 5 
            // x a a a o
            
            if (palabra.length() <= 5) {
                if (palabra.substring(0, 1).equalsIgnoreCase("X") && palabra.substring(4, 5).equalsIgnoreCase("o")) {
                    FDE = "&&&&&";
                } else {
                    contador++;
                }
            } else {
                contador1++;
            }
        } while (FDE == null);
        System.out.println("Las veces que se ingreso incorrecta fueron " + (contador + contador1));
    }
}
