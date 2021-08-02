/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio;

import Entidad.NIF;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class ServiceNif {
    public NIF crearNif(){
        Scanner sc = new Scanner(System.in);
         long dni;
        String letra;
       System.out.print("Ingrese su DNI:");
        dni=sc.nextLong();        
        letra=calcularLetra(dni);
        return new NIF(dni, letra);
    }
    
    public static String calcularLetra(long a){
        String letras="TRWAGMYFPDXBNJZSQVHLCKE"; 
        int modulo= (int)(a % 23); 
        String letra = Character.toString(letras.charAt(modulo)); 
        return letra; 
    }
    
    public void motrarNif(NIF a){
        System.out.println("Este es su NIF:"+a.getDni()+"-"+a.getLetra());
    }
    
}
