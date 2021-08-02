/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Entidad.Punto;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class PuntoService {
    
    public Punto crearPunto(){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        int x, y;
        System.out.print("Ingrese el valor de coordenada x:");
        x  =sc.nextInt();
        System.out.print("Ingrese el valor de coordenada y:");
        y = sc.nextInt();
        
        return new Punto(x,y);
    }
    
    public void calcular(Punto a, Punto b){
        double distancia=Math.sqrt(Math.pow((b.getX()-a.getX()),2) + Math.pow((b.getY()-a.getY()),2));
        
        System.out.println("La distancia entre el punto P1["+(int)a.getX()+","+(int)a.getY()+"] y el punto P2["+(int)b.getX()+","+(int)b.getY()+"] es "+distancia);
    }
}
