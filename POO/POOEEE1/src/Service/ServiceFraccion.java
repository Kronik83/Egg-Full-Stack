/*
Crear una clase llamada fracción que contenga 2 atributos (denominador y numerador de cada
fracción). Crear la clase servicio que contenga métodos para sumar, restar, multiplicar y dividir
fracciones. Mostrar por pantalla un menú de opciones para que el usuario decida que ver. */
package Service;

import Entidad.Fraccion;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class ServiceFraccion {
    
    public static Fraccion crearFraccion(){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        int deno;
        do{
            System.out.print("Ingrese el Denominador:");
            deno=sc.nextInt();
        }while(deno==0);
        System.out.print("Ingrese el Numerador:");
        int nume = sc.nextInt();
        if(nume==0){
            nume = 1;
        }
        return new Fraccion (deno, nume);
    }
    
    public static void reingreso(Fraccion a){
       Scanner sc = new Scanner(System.in).useDelimiter("\n");
        int deno;
        do{
            System.out.print("Ingrese el Denominador:");
            deno=sc.nextInt();
        }while(deno==0);
        System.out.print("Ingrese el Numerador:");
        int nume = sc.nextInt();
        if(nume==0){
            nume = 1;
        }
        a.setDeno(deno);
        a.setNume(nume);
    }
    
    public static void suma(Fraccion a, Fraccion b){
        int mCM = a.getNume()*b.getNume();
        int nDeno = (a.getDeno() * (mCM/a.getNume())) + (b.getDeno() * 
                (mCM/b.getNume()));
        System.out.println(a.toString()+"+"+b.toString()+"="+nDeno+"/"+mCM);
    }
    
    public static void resta(Fraccion a, Fraccion b){
        int mCM = a.getNume()*b.getNume();
        int nDeno = (a.getDeno() * (mCM/a.getNume())) - (b.getDeno() * 
                (mCM/b.getNume()));
        System.out.println(a.toString()+" - "+b.toString()+" = "+nDeno+"/"+mCM);
    }
    
    public static void division(Fraccion a, Fraccion b){
        System.out.println(a.toString()+" / "+b.toString()+" = "+
                (a.getDeno()*b.getNume())+"/"+(b.getDeno()*a.getNume()));
    }
    
    public static void multi(Fraccion a, Fraccion b){
        System.out.println(a.toString()+" * "+b.toString()+" = "+
                (a.getDeno()*b.getDeno())+"/"+(a.getNume()*b.getNume()));
    }
}
