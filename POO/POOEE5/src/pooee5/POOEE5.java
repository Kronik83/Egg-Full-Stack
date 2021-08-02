/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pooee5;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class POOEE5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        String mesSecreto, mes;
        String [] meses = {"enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"};
        int intentos = 3;
        boolean testMes;
        do{
            do{
                System.out.print("Ingrese el mes en minuscula:");
                mes = sc.next();
                testMes=buscarMes(meses,mes);
                if (testMes==false){
                    System.out.println("Opcion Incorrecta.\n\n");
                }
            }while(testMes==false);
            mesSecreto=meses[numerodeMes()];
            if(mes.equals(mesSecreto)){
                System.out.println("Has Acertado, Ganaste");
                break;
            }else{
                intentos--;
                if (intentos==0){
                    System.out.println("No has Acertado era '"+mesSecreto+"' \n"
                    + "Mala Suerte Intentalo mas Tarde.");
                }else{
                    System.out.println("No has Acertado era '"+mesSecreto+"' sigue intetando.\n"
                        + "Te quedan "+intentos+" intentos.");
                }
            }
        }while(intentos!=0);
        
    }
    
    public static boolean buscarMes(String[] a, String b){
        return Arrays.asList(a).contains(b);
    }
    
    public static int numerodeMes(){
        double num = Math.random()*11+1;
        return (int)num;
    }

}
