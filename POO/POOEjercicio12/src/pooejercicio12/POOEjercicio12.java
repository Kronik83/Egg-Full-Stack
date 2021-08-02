/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pooejercicio12;

import Entidad.Persona;
import Servicio.Service;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class POOEjercicio12 {

    /**
     * @param args the command line arguments
     */
        
    
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        // TODO code application logic here
        Service sv = new Service();
        
        Date actual = new Date();
        
        System.out.println("Fecha actual: "+df.format(actual));
        Persona per = sv.crearPersona();
        
        System.out.println(df.format(per.getFecNac()));
        
        System.out.println("Usted tiene: "+sv.calcularEdad(per)+" años");
        System.out.print("Ingrese la edad de otra persona:");
        int nuevaEdad=leer.nextInt();
        boolean rta=sv.menorQue(sv.calcularEdad(per),nuevaEdad);
        if (rta){
            System.out.println("No es menor que yo");
        }else{
            System.out.println("Es menor que yo.");
        }
        
        System.out.println(per.toString());
        
        
       
    }
    
}
