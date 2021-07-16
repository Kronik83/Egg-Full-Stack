package ej28;

import java.util.Scanner;
import java.util.Random;

public class Ej28 {

    public static void main(String[] args) {
        // TODO code application logic here
        Scanner sc = new Scanner(System.in);
        Random rd = new Random();

        int Xl[][] = new int[10][10];
        int Sm[][] = new int[3][3];
        int pi = 0;
        int pj = 0;
        boolean log;
        
        //Carga de Matriz Grande de forma aleatoria
        for (int i = 0; i < Xl.length; i++) {
            for (int j = 0; j < Xl[i].length; j++) {
                Xl[i][j] = rd.nextInt(10);
                //Math.floor(Math.random()*(Max-Min))+Min); aleatorio con min y max
            }
        }
        
        //Visualizacion Matriz Grande
        for (int i = 0; i < Xl.length; i++) {
            for (int j = 0; j < Xl[i].length; j++) {
                System.out.print("[" + Xl[i][j] + "]");
            }
            System.out.println();
        }
        
        //Carga de Matriz Chica por el usuario
        for (int i = 0; i < Sm.length; i++) {
            for (int j = 0; j < Sm[i].length; j++) {
                Sm[i][j] = sc.nextInt();
            }
        }
        
        //Recorrido de la matriz Grande hasta dos filas y columnas antes
        for (int i = 0; i < Xl.length - 2; i++) {
            for (int j = 0; j < Xl[i].length - 2; j++) {
                
                log=true;
                //Recorrido de la matriz chica 
                for (int k = 0; k < Sm.length; k++) {
                    for (int m = 0; m < Sm[k].length; m++) {
                        //Condicion q recorre la matriz chica verificando en la posicion de la matriz grande.
                        //Si es falso corta el recorrido y pone la variable booleana log en falso
                        if (Sm[k][m] != Xl[i + k][j + m]) {
                            log=false;
                            break;
                        }   
                    }
                }
                //Cuando la variable se pone en verdadero imprime las coordenadas de posicion de la matriz chica dentro de la Grande
                if(log==true){
                    System.out.println("La Matriz 3x3 se encuentra en las siguientes coordenadas de posision dentro de la 10x10:");
                    for (int k = 0; k <Sm.length; k++) {
                        for (int m = 0; m <Sm.length; m++) {
                            //Aca se determina que (i,j) es el punto de arranque para contar los movimientos en la matriz Grande 
                            //de acuerdo al desplazamiento en la matriz chica.
                            System.out.print("(" +(i+k)+ ","+(j+m)+")=["+Xl[i+k][j+m]+"]");
                        }
                        System.out.println();
                    }
                    
                    return;
                }
                
            }
        }
        System.out.println("No se Encontro la Matriz");
    }
}
