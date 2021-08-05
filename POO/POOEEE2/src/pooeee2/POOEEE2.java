/*
 Definir la clase Tiempo, la cual tendrá la hora, minutos y segundos. Definir dos constructores: un
constructor vacío y otro con la hora, minutos y segundos ingresado por el usuario. Deberá definir
además, los métodos getters y setters correspondientes, y el método imprimirHoraCompleta().
Recordar crear una validación sobre las horas, minutos y segundos ingresados por el usuario. Te
animas a simular el paso del tiempo en consola?
 */
package pooeee2;

import Entidad.Tiempo;
import Service.Service;

/**
 *
 * @author sorro
 */
public class POOEEE2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Tiempo t = Service.cargarHora();
        System.out.println(t.toString());
        Service.timeRun(t);
    }
    
}
