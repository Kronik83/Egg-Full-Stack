/*
Crear una clase llamada fracción que contenga 2 atributos (denominador y numerador de cada
fracción). Crear la clase servicio que contenga métodos para sumar, restar, multiplicar y dividir
fracciones. Mostrar por pantalla un menú de opciones para que el usuario decida que ver.
 */
package pooeee1;

import Entidad.Fraccion;
import Service.ServiceFraccion;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class POOEEE1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        menu();
    }
    public static void menu(){
        System.out.println("Fraccion A:");
        Fraccion A = ServiceFraccion.crearFraccion();
        A.toString();
        System.out.println("Fraccion B:");
        Fraccion B = ServiceFraccion.crearFraccion();
        B.toString();
        menu(A,B);
    }
    
    public static void menu(Fraccion A, Fraccion B){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        
        int opc, deno, nume;
        do{
            System.out.print("/*****************************/\n"
                + "/************Menu*************/\n"
                + "/*****************************/\n"
                + "/* 1- Reingresar fraccion A  */\n"
                + "/* 2- Reingresar fraccion B  */\n"
                + "/* 3- Suma                   */\n"
                + "/* 4- Resta                  */\n"
                + "/* 5- Division               */\n"
                + "/* 6- Multiplicacion         */\n"
                + "/* 7- Salir                  */\n"
                + "/*****************************/\n"
                + "Opcion:");
            opc = sc.nextInt();
        }while(opc<0 || opc>8);
        switch(opc){
            case 1:
                
                ServiceFraccion.reingreso(A);
                
                System.out.println("Fraccion A: "+A.toString());
                menu(A,B);
                break;
            case 2:
                ServiceFraccion.reingreso(B);
                System.out.println("Fraccion B"+B.toString());
                menu(A,B);
                break;
            case 3:
                ServiceFraccion.suma(A, B);
                menu(A,B);
                break;
            case 4:
                ServiceFraccion.resta(A, B);
                menu(A,B);
                break;
            case 5:
                ServiceFraccion.division(A,B);
                menu(A,B);
                break;
            case 6:
                ServiceFraccion.multi(A, B);
                menu(A,B);
                break;    
            case 7:
                System.exit(0);
        }
    }
}
