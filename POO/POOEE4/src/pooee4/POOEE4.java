/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pooee4;

import Entidad.NIF;
import Servicio.ServiceNif;

/**
 *
 * @author sorro
 */
public class POOEE4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ServiceNif sn = new ServiceNif();
        NIF n = sn.crearNif();
         sn.motrarNif(n);
    }
    
}
