/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package magicmatrix;
import java.util.Scanner;

/**
 *
 * @author Angel Exequiel Sorroche
 */
public class MagicMatrix {

    /**
     * @param args the command line arguments
     */
    
    Scanner sc = new Scanner(System.in).useDelimiter("\n");
    public int i, j;
    
    public static void main(String[] args) {
        // TODO code application logic here
        MagicMatrix op = new MagicMatrix();
        int matriz[][] = new int[3][3];
        System.out.println("Cargar la Matriz: ");
        op.carga(matriz);
        System.out.println("Matriz Cargada:");
        op.ver(matriz);
        
        int fila= op.filas(matriz);
        int col= op.columnas(matriz);
        int diag=op.diagonales(matriz);
        
        op.confirmacion(fila, col, diag);
    }

    public MagicMatrix() {

    }
    
    public void confirmacion (int a, int b, int c){
        if (a==b && b==c){
            System.out.println("La Matriz es Magica");
        }else{
            System.out.println("La Matriz no es Magica");
        }
    }
    
    public void ver(int[][] a){
        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < a[i].length; j++) {
                System.out.print("["+a[i][j]+"]");                
            }
            System.out.println("");
        }
    }
    
    public void carga(int[][] a){
        for (i = 0; i < a.length; i++) {
            for (j = 0; j < a[i].length; j++) {
                System.out.print("Elemento ["+i+"]["+j+"]:");
                a[i][j]=sc.nextInt();
            }
        }
        
    }
    
    public Integer diagonales(int[][] a){
        int vecP[] = new int [3];
        int vecS[] = new int [3];
        int aux=0;
        int cont=0;
        int j=3;
        
        for (int i = 0; i < a.length; i++) {
           aux=aux+a[i][i];
           j=j-1;
           cont = cont +a[i][j];
           
        }
        
        if (aux==cont){
            return 15;
        }else{
            return 0;
        }
    }
    
    public Integer columnas(int[][] a){
        int vec[]= new int[3];
        int auxM[][] = new int [3][3];
        int aux=0;
        int i;
        for (i = 0; i < a.length; i++) {
            vec[i]=0;
            for (int j = 0; j < a[i].length; j++) {
                auxM[i][j]=a[j][i];
            }
        }
        for (i = 0; i < auxM.length; i++) {
            vec[i]=0;
            for (int j = 0; j < auxM[i].length; j++) {
                if (i==aux) {
                    vec[i]=vec[i]+auxM[i][j];
                }                
            }
            aux++;
        }
        aux=0;
        for (i = 0; i < vec.length-1; i++) {
            if(vec[i]==vec[i+1]){
                aux++;
            }
        }
        if(aux==vec.length-1){
            aux = vec[0];
            return aux;
        }else{
            return 0;            
        }
    }

    
    public Integer filas(int[][] a){
        int vec[]= new int[3];
        int aux=0;
        int i;
        for (i = 0; i < a.length; i++) {
            vec[i]=0;
            for (int j = 0; j < a[i].length; j++) {
                if (i==aux) {
                    vec[i]=vec[i]+a[i][j];
                }                
            }
            aux++;
        }
        aux=0;
        for (i = 0; i < vec.length-1; i++) {
            if(vec[i]==vec[i+1]){
                aux++;
            }
        }
        if(aux==vec.length-1){
            aux = vec[0];
            return aux;
        }else{
            return 0;            
        }
    }
}
