/*
Definir una clase llamada Puntos que contendrá las coordenadas de dos puntos, sus
atributos serán, x1, y1, x2, y2, siendo cada x e y un punto. Generar un objeto puntos
usando un método crearPuntos() que le pide al usuario los dos números y los ingresa
en los atributos del objeto. Después, a través de otro método calcular y devolver la
distancia que existe entre los dos puntos que existen en la clase Puntos. Para conocer
como calcular la distancia entre dos puntos consulte el siguiente link:
http://www.matematicatuya.com/GRAFICAecuaciones/S1a.html.
 */
package pooee2;

import Entidad.Punto;
import Service.PuntoService;

/**
 *
 * @author sorro
 */
public class POOEE2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        PuntoService psv = new PuntoService();
        System.out.println("Creando el punto P1");
        Punto p1 =psv.crearPunto();
        System.out.println("["+(int)p1.getX()+","+(int)p1.getY()+"]");
        System.out.println("Creando el Punto P2");
        Punto p2 = psv.crearPunto();
        System.out.println("["+(int)p2.getX()+","+(int)p2.getY()+"]");
        psv.calcular(p1, p2);
    }
}
