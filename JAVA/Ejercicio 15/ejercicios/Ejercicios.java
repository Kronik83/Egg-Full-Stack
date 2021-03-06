/*
Realizar un programa que pida dos números enteros positivos por teclado y
muestre por pantalla el siguiente menú:
MENU
1. Sumar
2. Restar
3. Multiplicar
4. Dividir
5. Salir
Elija opción:
El usuario deberá elegir una opción y el programa deberá mostrar el resultado por
pantalla y luego volver al menú. El programa deberá ejecutarse hasta que se elija la
opción 5. Tener en cuenta que, si el usuario selecciona la opción 5, en vez de salir
del programa directamente, se debe mostrar el siguiente mensaje de confirmación:
¿Está seguro que desea salir del programa (S/N)? Si el usuario selecciona el
carácter ‘S’ se sale del programa, caso contrario se vuelve a mostrar el menú.
 */
package ejercicios;
import  java.util.Scanner;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Ejercicios {

    /**
     * @param args the command line arguments
     */
   
    public static void main(String[] args) {
           // TODO code application logic here 
           Ejercicios menu = new Ejercicios();              //Definicion de nuevo Objeto (Menu)
           
           menu.Menu();                 
    }
    
    
    // algo parecido a un SubProceso  Menu
    public void Menu(){
            Scanner sc = new Scanner(System.in).useDelimiter("\n");
            int opc=0;
            String salida = null;
            //Definicion de nuevo Objeto (op que viene del archivo Opciones.java que es donde estan las operaciones)
            Operaciones op = new Operaciones(); 
           //hacer ... mientras que
            do{
                    System.out.println("MENU:");
                    System.out.println("1) - Sumar");
                    System.out.println("2) - Restar");
                    System.out.println("3) - Multiplicar");
                    System.out.println("4) - Dividir");
                    System.out.println("5) - Salir");
                    System.out.println("Elija Opcion:");
                    opc = sc.nextInt();
                    switch (opc) {
                        case 1:
                            op.suma();                  //llamo la operacion suma definida en el Archivo Operaciones
                            break;
                        case 2:
                            op.resta();                  //llamo la operacion resta definida en el Archivo Operaciones
                            break;
                        case 3:
                            op.miltiplicacion();    //llamo la operacion multiplicacion definida en el Archivo Operaciones
                            break;
                        case 4:
                            op.division();              //llamo la operacion division definida en el Archivo Operaciones
                            break;
                        case 5:
                            op.salir();                     //llamo la operacion salir definida en el Archivo Operaciones
                           break;
                        default:
                            System.out.println("Ingreso una opcion Incorrecta");
                            break;
                    }
           } while (opc <= 0 || 5 <= opc);      //si opc es menor a cero o mayor o igual a 5 se repite todo hasta q sea correcta la opcion
    }
    
}
