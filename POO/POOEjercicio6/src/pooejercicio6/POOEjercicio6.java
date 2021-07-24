/*
Programa Nespresso. Desarrolle una clase Cafetera con los atributos
capacidadMaxima (la cantidad máxima de café que puede contener la cafetera) y
cantidadActual (la cantidad actual de café que hay en la cafetera). Implemente, al
menos, los siguientes métodos: 
18
• Constructor predeterminado o vacío
• Constructor con la capacidad máxima y la cantidad actual
• Métodos getters y setters.
• Método llenarCafetera(): hace que la cantidad actual sea igual a la capacidad
máxima.
• Método servirTaza(int): se pide el tamaño de una taza vacía, el método recibe el
tamaño de la taza y simula la acción de servir la taza con la capacidad indicada. Si la
cantidad actual de café “no alcanza” para llenar la taza, se sirve lo que quede. El
método le informará al usuario si se llenó o no la taza, y de no haberse llenado en
cuanto quedó la taza.
• Método vaciarCafetera(): pone la cantidad de café actual en cero.
• Método agregarCafe(int): se le pide al usuario una cantidad de café, el método lo
recibe y se añade a la cafetera la cantidad de café indicada.
 */
package pooejercicio6;

import java.util.Scanner;
import Menu.Menu;
/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class POOEjercicio6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        POOEjercicio6 in =new POOEjercicio6();
        in.inicio();
        
        
    }
    
    public void inicio() {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        Menu mn = new Menu();
        int opcion;
        do{
            System.out.print("Bienvenido al auto-servicio de Cafeteria:\n"
                    + "Es un servicio cooperativo si sos el primero vas a hacer el cafe, para vos y tus colegas,\n"
                    + "sino deseas colaborar enfrente hay un Starbucks, anda y comprale a ellos, aca es gratis:\n\n\n"
                    + "Deseas colaborar y disfrutar:\n"
                    + "1-Si     2-No\n"
                    + "Tu desicion:");
            opcion = sc.nextInt();
            switch(opcion){
                case 1:
                    mn.menu();
                case 2:
                    System.exit(0);
                default:
                    System.out.println("Desde ya no colaboras con el programa eleccion incorrecta.");
                    
            }
        }while(opcion <0 || opcion>2);
    }

    
}
