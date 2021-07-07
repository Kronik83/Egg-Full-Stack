/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicio_28;
import java.util.Scanner;
import java.util.Random;

/**
 *
 * @author Sorroche, Angel Exequiel (exe.sorroche@gmail.com)
 */
public class Ejercicio_28 {

    /**
     * @param args the command line arguments
     */
    
    Scanner sc = new Scanner(System.in).useDelimiter("\n");
    public int i,j,n;
    
    public static void main(String[] args) {
        
        Ejercicio_28 op = new Ejercicio_28();
        
        // TODO code application logic here
        
        int matXL[][] = new int[10][10];
        int matSM[][] = new int[3][3];

        boolean news;
        op.cargarAl(matXL);
        
        System.out.println("Matriz 10x10");
        op.ver(matXL);

        System.out.println("Cargar Mastrz 3x3:");
        op.carga(matSM);
        
        System.out.println("Matriz 3x3");
        op.ver(matSM);
        System.out.println("");
        op.find(matSM,matXL);
        
    }
    public void carga(int[][] a){
        for (i = 0; i < a.length; i++) {
            for(j = 0; j<a[i].length;j++){
                a[i][j]=sc.nextInt();
            }
        }
    }
    public void find(int[][] a, int[][] b){
        Ejercicio_28 op = new Ejercicio_28();
        int k=0;
        int posi=0;
        int posj=0;
        boolean corte=false;
       
        
        for (i = 0; i < b.length; i++) {
            for(j = 0; j<b[i].length;j++){
                if(a[0][0]==b[i][j]){
                    posi=i;
                    posj=j;
                    corte=op.Controls(posi, posj,a,b);
                    if(corte==true){
                        System.out.println("La matriz se la encontro en las posisiones:");
                        System.out.println("["+i+","+j+"]["+i+","+(j+1)+"]["+i+","+(j+2)+"]");
                        System.out.println("["+(i+1)+","+j+"]["+(i+1)+","+(j+1)+"]["+(i+1)+","+(j+2)+"]");
                        System.out.println("["+(i+2)+","+j+"]["+(i+2)+","+(j+1)+"]["+(i+2)+","+(j+2)+"]");
                    }
                }
            }
        }
        if (corte==false){
            System.out.println("No se encontro la Matriz");
        }
    }
    
    public boolean Controls(int a, int b, int[][] SM, int [][] XL){
        int f0[][]=new int[3][3];
        int k=0;
        for (i=0;i<SM.length;i++){
            for(j=0;j<SM[i].length;j++){
                f0[i][j]=XL[a+i][b+j];

                if(f0[i][j]==SM[i][j]){
                    k++;
                }
            }
        }
        if(k==9){
            return true;
        }else{
            return false;
        }
    }
    
    public void ver(int[][] a){
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                System.out.print("["+a[i][j]+"]");
            }
            System.out.println("");
        }
    }
    
    public void cargarAl(int[][] a){
        n=0;
        Random r = new Random();
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                a[i][j]= r.nextInt(100)+1;
            }
        }
    }
    
}


