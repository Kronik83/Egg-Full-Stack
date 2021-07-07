/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package antisimetrica;
import java.util.Scanner;

public class AntiSimetrica {

    /**
     * @param args the command line arguments
     */
  
    Scanner sc = new Scanner(System.in);
    public int i, j;

    
    public static void main(String[] args) {
        // TODO code application logic here
        AntiSimetrica op = new AntiSimetrica();
       Scanner sc = new Scanner(System.in);

        System.out.println("Ingrese el tamaño de la Matriz Cuadrada:");
        int n = sc.nextInt();
        int mat[][] = new int[n][n];
        int aux[][]= new int[n][n];
        int auxB[][] = new int[n][n];
        System.out.println("Ingrese los elementos de la Matriz:");
        op.cargar(mat);
        System.out.println("Esta es la Matriz cuadrada cargada:");
        op.ver(mat);
        System.out.println("Esta es su Traspuesta:");
        op.matT(mat,aux);   
        op.ver(aux);
        System.out.println("Verificacion de si la matriz es antisimetrica");
        op.verificacion(mat, aux, auxB);
    }
    
    public void verificacion(int[][] a, int[][] b, int[][] c){
        int k=0;
        int t=0;
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                t=a.length+a[i].length;
                c[i][j]=-1;
                if(i==j){
                    c[i][j]=a[i][j];
                }else{
                    c[i][j]=c[i][j]*a[i][j];
                }
            }
        }

        for (i = 0; i < c.length; i++) {
            for (j = 0; j < c[i].length; j++) {
                if(c[i][j]==b[i][j]){
                    k++;
                }
            }
        }
        if (k==t){
            System.out.println("La Matriz es Antisimetrica.");
        }else{
            System.out.println("La Matriz no es Antisimetrica.");
        }
    }
    
    public void matT(int[][] a, int[][] b){
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                b[i][j]=a[j][i];
            }
        }
    }
    
    public AntiSimetrica(){
    
    }
    
    public void ver(int[][] a){
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                System.out.print("["+a[i][j]+"]");                
            }
            System.out.println("");
        }
    }

    public void cargar(int[][] a){
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                System.out.print("Ingrese el elmento ["+i+"]["+j+"]: ");
                a[i][j]=sc.nextInt();
            }
        }
    }
    
}
