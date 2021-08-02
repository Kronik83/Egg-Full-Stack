/*
Vamos a realizar una clase llamada Raices, donde representaremos los valores de una
ecuación de 2o grado. Tendremos los 3 coeficientes como atributos, llamémosles a, b
y c. Hay que insertar estos 3 valores para construir el objeto a través de un método
constructor. Luego, las operaciones que se podrán realizar son las siguientes:
• Método getDiscriminante(): devuelve el valor del discriminante (double). El
discriminante tiene la siguiente formula: (b^2)-4*a*c
• Método tieneRaices(): devuelve un booleano indicando si tiene dos soluciones, para
que esto ocurra, el discriminante debe ser mayor o igual que 0.
• Método tieneRaiz(): devuelve un booleano indicando si tiene una única solución,
para que esto ocurra, el discriminante debe ser igual que 0.
• Método obtenerRaices(): llama a tieneRaíces() y si devolvió́true, imprime las 2
posibles soluciones.
• Método obtenerRaiz(): llama a tieneRaiz() y si devolvió́true imprime una única raíz.
Es en el caso en que se tenga una única solución posible.
• Método calcular(): esté método llamará tieneRaices() y a tieneRaíz(), y mostrará por
pantalla las posibles soluciones que tiene nuestra ecuación con los métodos
obtenerRaices() o obtenerRaiz(), según lo que devuelvan nuestros métodos y en
caso de no existir solución, se mostrará un mensaje.
Nota: Formula ecuación 2o grado: (-b±√((b^2)-(4*a*c)))/(2*a) Solo varia el signo
delante de -b 
 */
package pooee3;

import Entidad.Raiz;
import ServiceRaiz.ServiceRaiz;

/**
 *
 * @author sorro
 */
public class POOEE3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ServiceRaiz sr = new ServiceRaiz();
        // TODO code application logic here
        System.out.println("Ingrese los terminos de la funcion cuadrada\n "
                + "a.x^2 + b.y + c\n");
        Raiz r = sr.crearRaiz();
        
        System.out.println("Su discriminante es: "+sr.getDiscriminante(r));
        boolean r2=sr.obtenerRaices(sr.tieneRaices(sr.getDiscriminante(r)),r);
        boolean r1=sr.obtenerRaiz(sr.tieneRaiz(sr.getDiscriminante(r)),r);
        if (r1==false && r2 == false){
            System.out.println("No se puede calcula la raiz.");
        }
    }
    
}
