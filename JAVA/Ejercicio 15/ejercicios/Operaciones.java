/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ejercicios;
import java.util.Scanner;
/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */

// Clase publiva Operaciones
public class Operaciones {
    
    Ejercicios mn = new Ejercicios();                                                           //Definicion de nuevo Objeto mn que viene del archivo Ejercicios.java (Menu);
    Scanner sc = new Scanner(System.in).useDelimiter("\n");
    int n1 = 0 ;
    int n2 = 0;
    String salida= null;
    
    
    // algo parecido a un SubProceso  suma
    public void suma(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Suma de: "+n1+"+"+n2+"="+(n1+n2));
        mn.Menu();                                                                                                      //Llamado al Menu
    }
    
        // algo parecido a un SubProceso  resta
    public void resta(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Resta de: "+n1+"-"+n2+"="+(n1-n2));
        mn.Menu();                                                                                                      //Llamado al Menu
    }
    
        // algo parecido a un SubProceso  multiplicacion
    public void miltiplicacion(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Multiplicacion de: "+n1+"*"+n2+"="+(n1*n2));    
        mn.Menu();                                                                                                      //Llamado al Menu
    }
    
        // algo parecido a un SubProceso  division
    public void division(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();                                                                                                      //Llamado al Menu
        do{
            System.out.println("2° Numero:");
            n2 = sc.nextInt();
        }while (n2<=0);
        System.out.println("La Division de: "+n1+"/"+n2+"="+(n1/n2));        
        mn.Menu();                                                                                                      //Llamado al Menu
    }
    
        // algo parecido a un SubProceso  salir
    public void salir(){
        System.out.println("¿Está seguro que desea salir del programa (S/N)?");
        salida = sc.nextLine();
        salida = salida.toUpperCase();
        if(salida.equals("N")){                                                                                     //Confirmacion de Salida si salida es "N" no pasa nada sino se sale 
            mn.Menu();                                                                                                      //Llamado al Menu
        }else{
            System.exit(0);                                                                                              //System.exit(0); Cierra el programa.
        }
    }
}
