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
public class Operaciones {
    
    Scanner sc = new Scanner(System.in).useDelimiter("\n");
    int n1 = 0 ;
    int n2 = 0;
    String salida= null;
    
    public void suma(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Suma de: "+n1+"+"+n2+"="+(n1+n2));
    }
    
    public void resta(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Resta de: "+n1+"-"+n2+"="+(n1-n2));
    }
    
    public void miltiplicacion(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        System.out.println("2° Numero:");
        n2 = sc.nextInt();
        System.out.println("La Multiplicacion de: "+n1+"*"+n2+"="+(n1*n2));    
    }
    
    public void division(){
        System.out.println("Ingrese dos numeros:");
        System.out.println("1° Numero:");
        n1 = sc.nextInt();
        do{
            System.out.println("2° Numero:");
            n2 = sc.nextInt();
        }while (n2<=0);
        System.out.println("La Division de: "+n1+"/"+n2+"="+(n1/n2));        
    }
    public void salir(){
        System.out.println("¿Está seguro que desea salir del programa (S/N)?");
        salida = sc.nextLine();
        salida = salida.toUpperCase();
        if(salida.equals("N")){
            Ejercicios mn = new Ejercicios();
            mn.Menu();
        }else{
            System.exit(0);
        }
    }
}
