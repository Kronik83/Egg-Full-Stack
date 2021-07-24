/*
 Programa Nespresso. Desarrolle una clase Cafetera con los atributos
capacidadMaxima (la cantidad máxima de café que puede contener la cafetera) y
cantidadActual (la cantidad actual de café que hay en la cafetera). Implemente, al
menos, los siguientes métodos: 
18
• Constructor predeterminado o vacío
• Constructor con la capacidad máxima y la cantidad actual
• Métodos getters y setters.
• Método llenarCafetera(): hace que la cantidad actual sea igual a la capacidad
máxima.
• Método servirTaza(int): se pide el tamaño de una taza vacía, el método recibe el
tamaño de la taza y simula la acción de servir la taza con la capacidad indicada. Si la
cantidad actual de café “no alcanza” para llenar la taza, se sirve lo que quede. El
método le informará al usuario si se llenó o no la taza, y de no haberse llenado en
cuanto quedó la taza.
• Método vaciarCafetera(): pone la cantidad de café actual en cero.
• Método agregarCafe(int): se le pide al usuario una cantidad de café, el método lo
recibe y se añade a la cafetera la cantidad de café indicada.
 */

package Menu;

import Entidad.Cafetera;
import Entidad.TazaCafe;
import Servicio.ServiceCafeteria;
import java.util.Scanner;
import pooejercicio6.POOEjercicio6;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Menu {
    
    public Scanner sc = new Scanner(System.in).useDelimiter("\n");
    POOEjercicio6 back= new POOEjercicio6();
    
    
    public void menu(){
        int opcion;
            do{
                System.out.print("Menu Acciones:\n"
                    + "Debe crear Escojer el Tamaño de Taza Cafe o Jarra de Cafe primero:\n"
                    + "1- Jarra de Cafe\n"
                    + "2- Taza de Cafe\n"
                    + "3- Volver al Inicio\n\n"
                    + "Opcion:");
                opcion = sc.nextInt();
                switch(opcion){
                    case 1:
                        menuCafe(null,null);
                        break;
                    case 2:
                        menuTaza(null,null);
                        break;
                    case 3:
                        back.inicio();
                }
            
            
            }while(opcion >3 || opcion <0);
    }
    
    public void menu(TazaCafe taza, Cafetera jarra){
        ServiceCafeteria sCafe = new ServiceCafeteria();

        if(taza!=null && jarra!=null){
            int opcion;
            do{
                if(jarra.getCapAct()==0){
                    System.out.println("Primero deberias preparar café.");
                    sCafe.agregarCafe(taza,jarra);
                }
                System.out.print("Menu Acciones:\n"
                    + "1- Vaciar Cafetera\n"
                    + "2- Preparar Cafe\n"
                    + "3- Servir Cafe\n"
                    + "4- Volver\n\n"
                    + "Opcion:");
                opcion = sc.nextInt();
            
                switch(opcion){
                case 1:
                    sCafe.vaciarCafetera(taza, jarra);
                    menu(taza,jarra);
                    break;
                case 2:
                    sCafe.agregarCafe(taza,jarra);
                    menu(taza,jarra);
                    break;
                case 3:
                    float cafet=jarra.getCapAct();
                    if (cafet==0){
                        System.out.println("Cafetera Vacia.\n"
                                + "Deberias preaparar cafe primero.");
                        menu(taza,jarra);
                        break;
                    }
                    
                    float tazaAc =sCafe.servirTaza(taza, jarra);
                    if (tazaAc==taza.getCapTaza()){
                        System.out.println("Taza llena, a disfrutar del café");
                        menu(taza,jarra);
                    }else{
                        System.out.println("La Taza se encuentra al "+(tazaAc*100/taza.getCapTaza())+"%");
                        menu(taza,jarra);
                    }
                    break;
                case 4:
                    back.inicio();
                    break;
                default:
                    System.out.println("Opcion Incorrecta!!!!");
                }   
                
            }while(opcion>4 || opcion <0);
            
        }
        
        
    }
    
    public void menuCafe(TazaCafe taza, Cafetera jarra){
        ServiceCafeteria sC = new ServiceCafeteria();
        if(taza!=null && jarra!=null){
            menu(taza,jarra);
        }
        int opcion;
        do{
            System.out.print("Menu de Eleccion de Cafetera:\n"
                    + "(Si no elige tamaño de taza por defecto toma la chica)\n"
                    + "1- Ingresar Tamaño de Taza Personalizada(500 a 1000cc)\n"
                    + "2- Cafetera chica(500cc)\n"
                    + "3- Cafetera Grande(1000cc)\n"
                    + "4-Volver\n\n"
                    + "Opcion:");
            opcion=sc.nextInt();
            switch(opcion){
                case 1:
                    Cafetera tP = sC.crearCafetera();
                    if (taza==null){
                        menuTaza(null,tP);
                    }else{
                        menu(taza, tP);
                    }
                    break;
                case 2:
                    Cafetera tG = sC.crearCafetera(500);
                    if(taza == null){
                        menuTaza(taza,tG);
                    }else{
                        menu(taza,tG);
                    }
                    break;
                case 3:
                    Cafetera tM = sC.crearCafetera(1000);
                    if(taza==null){
                        menuTaza(null,tM);
                    }else{
                        menu(taza,tM);
                    }
                    break;
                case 4:
                    Cafetera tD = sC.crearCafetera(500);
                    if(taza==null){
                        menuTaza(null,tD);
                    }else{
                        menu(taza,tD);
                    }
                    break;
                default:
                    Cafetera tDc = sC.crearCafetera(500);
                    if(taza==null){    
                        menuTaza(null,tDc);
                    }else{
                        menu(taza,tDc);
                    }
                    break;
            }
        }while(opcion >5 || opcion <0);
    }
    
    public void menuTaza(TazaCafe taza,Cafetera jarra){
        ServiceCafeteria sC = new ServiceCafeteria();
        if(taza!=null && jarra!=null){
            menu(taza,jarra);
        }
        int opcion;
        do{
            System.out.print("Menu de eleccion de Taza:\n"
                    + "(Si no elige tamaño de taza por defecto toma la chica)\n"
                    + "1- Ingresar Tamaño de Taza Personalizada(100 a 300cc)\n"
                    + "2- Taza Grande (300cc)\n"
                    + "3- Taza Media (200cc)\n"
                    + "4- Taza Chica (100cc)\n"
                    + "5-Volver\n\n"
                    + "Opcion:");
            opcion=sc.nextInt();
            switch(opcion){
                case 1:
                    TazaCafe tP = sC.crearTaza();
                    if (jarra==null){
                    menuCafe(tP,null);
                    }else{
                        menu(tP, jarra);
                    }
                    break;
                case 2:
                    TazaCafe tG = sC.crearTaza(300);
                    if(jarra == null){
                        menuCafe(tG,null);
                    }else{
                        menu(tG,jarra);
                    }
                    break;
                case 3:
                    TazaCafe tM = sC.crearTaza(200);
                    if(jarra==null){
                        menuCafe(tM,null);
                    }else{
                        menu(tM,jarra);
                    }
                    break;
                case 4:
                    TazaCafe tc = sC.crearTaza(100);
                    if(jarra==null){
                        menuCafe(tc,null);
                    }else{
                        menu(tc,jarra);
                    }
                    break;
                case 5:
                    TazaCafe tD = sC.crearTaza(100);
                    if(jarra==null){
                        menuCafe(tD,null);
                    }else{
                        menu(tD,jarra);
                    }
                    break;
                default:
                    TazaCafe tDc = sC.crearTaza(100);
                    if(jarra==null){    
                        menuCafe(tDc,null);
                    }else{
                        menu(tDc,jarra);
                    }
                    break;
            }
        }while(opcion >5 || opcion <0);
    }

}
