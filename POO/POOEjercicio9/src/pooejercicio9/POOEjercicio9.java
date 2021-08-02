/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pooejercicio9;

import Entidad.Matematica;
import Servicios.Service;
import java.text.DecimalFormat;

public class POOEjercicio9 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Matematica m=new Matematica();
        m.setUno(2.559);//Math.random()*100);
        m.setDos(3.987);//Math.random()*100);
        DecimalFormat p = new DecimalFormat("#####,####");
        
        System.out.println("Los numeros son A="+m.getUno()+" y B="+m.getDos()); 
        
        System.out.println("Mayor = "+Service.devolverMayor(m)+"\n"
                + "Menor = "+Service.esMenor(m));
        System.out.println("El mayor elevado al menor es = "+Service.calcularPotencia(m));
        System.out.println("La Raiz cuadrada de Menor es ="+p.format(Service.calculaRaiz(m)));
    }
    
}
