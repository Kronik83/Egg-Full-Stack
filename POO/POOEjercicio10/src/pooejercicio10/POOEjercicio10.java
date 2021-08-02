package pooejercicio10;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Random;



/**
 *
 * @author sorro
 */
public class POOEjercicio10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        double[] a = new double[50];

        System.out.println("Vector A:");
        carga(a);
        //System.out.println(Arrays.toString(a));
        mostrar(a);
        Arrays.sort(a);
        System.out.println("\nVector a Ordenado:");
        mostrar(a);
        System.out.println("\nVector B:");
        operacion(a);       
    }
    
    public static void operacion(double a[]){
        double[] b=Arrays.copyOfRange(a, 0, 10);

        b = Arrays.copyOfRange(b, 0, b.length + 10);
        Arrays.fill(b, 10,20,0.5);
        mostrar(b);
    }
    
    public static void carga(double a []){
        for (int i = 0; i<a.length; i++) {
            a[i]=(double)(Math.random()*10)+1;
        }
    }
    
    public static void mostrar(double a[]){
        DecimalFormat df = new DecimalFormat("##.#");
        for (int i = 0; i < a.length; i++) {
            System.out.print("["+df.format(a[i])+"]");
        }
    }

    
}
