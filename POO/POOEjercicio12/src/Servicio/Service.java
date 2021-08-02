
package Servicio;

import Entidad.Persona;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class Service {
    
    private Scanner sc = new Scanner(System.in).useDelimiter("\n");
    
    public Persona crearPersona() throws ParseException{
        System.out.print("Ingrese su nombre: ");
        String nombre = sc.next();
        System.out.println("Ingrese su fecha de naciemiento (dd/mm/yyyy)");
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        
/** 
 * Partiendo de la declaracion del objeto df de la clase SimpleDateFormat,
 * puedo usar el metodo .parse(String); que transforma una cadena con formato
 * que se determino anteriormente en el "SimpleDateFormat("dd/MM/yyyy");" a al
 * tipo de dato aceptado por la clase Date.
 */
        Date fecNac = df.parse(sc.next());
        
        /**
         * Sino de la otra manera es creando un objeto vacio del tipo Date 
         * e ingresar cada atributo por medio de su set de forma individual.
         */
        
//        Date fecNac = new Date();
//        System.out.print("Ingrese el día: ");
//        fecNac.setDate(sc.nextInt());
//        System.out.print("Ingrese el mes: ");
//        fecNac.setMonth(sc.nextInt()-1); //0 enero - 11 diciembre
//        System.out.print("Ingrese el año: ");
//        fecNac.setYear(sc.nextInt()-1900);  //
                
        return new  Persona(nombre, fecNac);
    }
    
    public int calcularEdad(Persona a){
       Date actual = new Date();        
       return actual.getYear()-a.getFecNac().getYear();
    }
    
    public boolean menorQue(int a , int b ){
        if(a<b){
            return true; 
        }else{
            return false;
        }
    }
}
