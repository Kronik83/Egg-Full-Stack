/*
 Definir la clase Tiempo, la cual tendrá la hora, minutos y segundos. Definir dos constructores: un
constructor vacío y otro con la hora, minutos y segundos ingresado por el usuario. Deberá definir
además, los métodos getters y setters correspondientes, y el método imprimirHoraCompleta().
Recordar crear una validación sobre las horas, minutos y segundos ingresados por el usuario. Te
animas a simular el paso del tiempo en consola?
 */
package Service;

import Entidad.Tiempo;

import java.util.Scanner;


/**
 *
 * @author sorro
 */
public class Service {
    public static Tiempo cargarHora(){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        int hora, min, sec;
        do{
            System.out.print("Ingrese la Hora:");
            hora = sc.nextInt();
        }while(hora<-1 || hora >24);
        do{
            System.out.println("Ingrese los Minutos (0-59):");
            min = sc.nextInt();
        }while(min<-1 || min>60);
        do{
            System.out.println("Ingrese los Segundos (0-59):");
            sec = sc.nextInt();
        }while(sec<-1 || sec>60);
        return new Tiempo(hora,min,sec); 
    }
    
    
    
    public static void timeRun(Tiempo t){
        int hh= t.getHora();
        int mm= t.getMin();
        int ss= t.getSec();

        
        do{
            if(hh>24){
                hh = 0;
            }
            if(mm>60){
                hh++;
                mm=0;
            }
            if(ss>60){
                mm++;
                ss=0;
            }
            ss++;
        }while(timer.scheduleAtFixedRate(timeTask,0 ,1000));
        
    }

    private static TimerTask TimerTask() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
        
    }

        
}
