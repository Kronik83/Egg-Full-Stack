/*
 Pongamos de lado un momento el concepto de POO, ahora vamos a trabajar solo con
la clase Date. En este ejercicio deberemos instanciar en el main, una fecha usando la
clase Date, para esto vamos a tener que crear 3 variables, dia, mes y anio que se le
pedirán al usuario para poner el constructor del objeto Date. Una vez creada la fecha
de tipo Date, deberemos mostrarla y mostrar cuantos años hay entre esa fecha y la
fecha actual, que se puede conseguir instanciando un objeto Date con constructor
vacío.
Ejemplo fecha: Date fecha = new Date(anio, mes, dia);
Ejemplo fecha actual: Date fechaActual = new Date();
Si necesiten acá tienen más información en clase Date: Documentación Oracle

 */
package pooejercicio11;


import java.util.Date;

/**
 *
 * @author sorro
 */
public class POOEjercicio11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int dia=17, mes=7, anio=1983-1900;
        
        Date fecha = new Date(anio, mes, dia);
        
        System.out.println(fecha);
        Date actual = new Date();
        System.out.println("Fecha Actual:"+actual);
        System.out.println("Diferencia de Años:"+(actual.getYear()-fecha.getYear()));
     }
    
}
