/*
Crear una clase Rectángulo que modele rectángulos por medio de un atributo
privado base y un atributo privado altura. La clase incluirá un método para crear el
rectángulo con los datos del Rectángulo dados por el usuario. También incluirá un
método para calcular la superficie del rectángulo y un método para calcular el
perímetro del rectángulo. Por último, tendremos un método que dibujará el
rectángulo mediante asteriscos usando la base y la altura. Se deberán además definir
los métodos getters, setters y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2.
 */
package pooejercicio4;

import Entidad.Rectangulo;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class POOEjercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Rectangulo rec = new Rectangulo();
        
        rec.creaRectangulo();
        
        System.out.println("El area del rectangulo de base "+rec.getBase()+" y aluta "+rec.getAltura()+" es = "+rec.area());
        System.out.println("El perimetro del rectangulo de base "+rec.getBase()+" y aluta "+rec.getAltura()+" es = "+rec.perimetro());
        System.out.println("Dibujo del rectangulo:");
        rec.dibujar();
    }
    
}
