/*
Declarar una clase llamada PooEjercicio2 que tenga como atributo privado el radio
de tipo real. A continuación, se deben crear los siguientes métodos:
a) Método constructor que inicialice el radio pasado como parámetro.
b) Métodos get y set para el atributo radio de la clase PooEjercicio2.
c) Método para crearCircunferencia(): que le pide el radio y lo guarda en el atributo
del objeto.
d) Método area(): para calcular el área de la circunferencia (Area = π ∗ radio!).
e) Método perimetro(): para calcular el perímetro (Perimetro = 2 ∗ π ∗ radio).
 */
package pooejercicio2;

import java.util.Scanner;
import javax.swing.JOptionPane;
import static pooejercicio2.PooEjercicio2.sc;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class PooEjercicio2 {

    /**
     * @param args the command line arguments
     */
    static Scanner sc = new Scanner(System.in).useDelimiter("\n");
    static Circunferencia circ = new Circunferencia();

    public static void main(String[] args) {
        // TODO code application logic here

        circ.crearCircunferencia();
        circ.show();

    }

}

class Circunferencia {
    
    private double radio;

    public Circunferencia() {

    }

    public Circunferencia(double radio) {
        this.radio = radio;
    }

    public void setRadio(double r) {
        radio = r;
    }

    public double getRadio() {
        return radio;
    }

    public void crearCircunferencia() {
        System.out.println("Ingrese el Radio: ");
        this.setRadio(sc.nextDouble());
    }

    public double area() {
        return Math.PI * radio;
    }

    public double perimetro() {
        return 2 * Math.PI * radio;
    }

    public void show() {
        boolean log = true;
        do {
            System.out.println("Que desea ver:");
            System.out.println("1- el Area.");
            System.out.println("2- el Perimetro.");
            System.out.println("3- Ambos");
            System.out.println("4- Salir");

            switch (sc.nextInt()) {
                case 1:
                    System.out.println("El area es: " + area());
                    show();
                    break;
                case 2:
                    System.out.println("El perimetro es: " + perimetro());
                    show();
                    break;
                case 3:
                    System.out.println("El Area es: " + area());
                    System.out.println("El perimetro es: " + perimetro());
                    show();
                    break;
                case 4:
                    System.exit(0);
                    break;
                default:
                    log = false;
            }
        } while (log == false);

    }
}
