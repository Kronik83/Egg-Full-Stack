/*
Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números del 1 al 9
donde la suma de sus filas, sus columnas y sus diagonales son idénticas. Crear un
programa que permita introducir un cuadrado por teclado y determine si este
cuadrado es mágico o no. El programa deberá comprobar que los números
introducidos son correctos, es decir, están entre el 1 y el 9.
 */
package ejercicio27;
import java.util.Scanner;
/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Ejercicio27 {

    /**
     * @param args the command line arguments
     */
    
    
    
    public static void main(String[] args) {
        
        // TODO code application logic here
        
        Scanner leer = new Scanner(System.in);
//        SI lo define el usuario iria esto:
//        int n=0;
//        int m=0;
//        n = leer.nextInt();
//        m = leer.nextInt();
//        int Matriz[][] = new int[n][m];
        int Matriz[][] = new int[3][3];
        int diagonalP=0;
        int diagonalS=0;
        int auxI=0;
        int auxJ=3;
        int vecC[]=new int[3];
        int vecF[]=new int[3];
        
        //fila= fila +1;  => fila++;    Contador
        //fila=fila+Matriz[i][j];       Acumulador
//          0  1  2    vecC
//       0 [1][2][3] = 15              0,2 1,1 2,0 i=0 j=j-1=>2  j=3
//       1 [4][5][6] = 15                               i=1 j=j-1=>1 
//       2 [7][8][9] = 15                               i=2 j=j-1=>0 
//   VecF   15 15 15 


//         {{1,2,3},{4,5,6},{7,8,9}} 
        // Relleno de Matriz cumpliendo las condiciones..
        System.out.println("Ingrese un numero, entre 1 y 9:");
        for (int i = 0; i < Matriz.length; i++) {
            for (int j = 0; j < Matriz[i].length; j++) {
               do{
                   
                   Matriz[i][j]=leer.nextInt();
               } while(Matriz[i][j] <= 0 || Matriz[i][j] > 9);
            }
        }
        // Visualizacion de la Matriz.
        for (int i = 0; i < Matriz.length; i++) {
            for (int j = 0; j < Matriz[i].length; j++) {
                System.out.print("["+Matriz[i][j]+"]");                
            }
            System.out.println();
        }
        //Suma Fila y Columna
        for (int i = 0; i < Matriz.length; i++) {
            for (int j = 0; j < Matriz[i].length; j++) {
                if(i==auxI){
                   vecF[i] = vecF[i] + Matriz[i][j]; //VecF{[f0],[f1],[f2]}
                   vecC[i]= vecC[i] + Matriz[j][i];
                }
            }
            auxI++;
        }
        //Suma Diagonales
        for (int i = 0; i < Matriz.length; i++) {     
           if(i==i){
                diagonalP = diagonalP+Matriz[i][i];
            }
            diagonalS=diagonalS+Matriz[i][auxJ-1];
            auxJ--;
        }
        //Verificacion de sumas  f0=f1 , f1=f2 (f0=f2)  F[[0],[1],[2]]; f[I]=f[i+1]
        for (int i = 0; i < vecF.length-1; i++) {
            if(vecF[i]==vecF[i+1]){
                if(vecC[i]==vecC[i+1]){
                    if(diagonalP==diagonalS){
                        System.out.println("La Matriz es Magica");
                        System.exit(0);               
                    }
                }
            }      
        }
        System.out.println("La Matriz no es Magica"); 
}