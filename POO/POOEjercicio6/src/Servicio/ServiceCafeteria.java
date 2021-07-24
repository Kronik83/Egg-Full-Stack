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

package Servicio;

import Entidad.Cafetera;
import Entidad.TazaCafe;
import Menu.Menu;
import java.util.Scanner;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ServiceCafeteria {
    public Scanner sc = new Scanner(System.in).useDelimiter("\n");
    Menu mn = new Menu();
    //Crea Taza personalizada.
    public TazaCafe crearTaza(){    
        float taza;
        do{
            System.out.print("Ingrese el Tamaño de la Taza:\n"
                    + "La taza debe ser de 100cc a 300cc");
            taza = sc.nextFloat();
        }while(taza>300 || taza <100);
        return new TazaCafe(taza);
    }
    
    //Crea Taza de acuerdo al Parametro pasado.
    public TazaCafe crearTaza(float tamaño){
        return new TazaCafe(tamaño);
    }
    
    
    //Crea Cafetera personalizada
    public Cafetera crearCafetera(){
        float capMax, capActual;
        do{
            System.out.print("Ingrese el Tamaño de la Cafetera:\n"
                    + "La Cafereta debe ser de 500cc a 1000cc");
            capMax = sc.nextFloat();
        }while(capMax>500 || capMax <1000);
        capActual=0;
        return new Cafetera(capMax, capActual);
    }
    
    
    ///Crea Jarra de acuerdo al Parametro
    public Cafetera crearCafetera(float tamaño){
        float capActual=0;
        return new Cafetera(tamaño, capActual);
    }
    
    public void llenarCafetera(TazaCafe taza, Cafetera jarra){
        jarra.setCapAct(jarra.getCapMax());
        System.out.println("Cafetera llena.");
        mn.menu(taza,jarra);
    }
    
    
    public void agregarCafe(TazaCafe taza, Cafetera jarra){
        float cafe;
        do{
            System.out.println("Indique la cantidad de Cafe a Agregar");
            cafe = sc.nextFloat();
        }while(cafe<0);
        
        float capCafetera=jarra.getCapMax();
        if (cafe == capCafetera){
            jarra.setCapAct(jarra.getCapMax());
            System.out.println("Se lleno la Cafetera.");
        }else{
            if(cafe>capCafetera){
                jarra.setCapAct(jarra.getCapMax());
                System.out.println("Llenaste la Cafetera pero, tiraste "+(cafe-jarra.getCapMax())+"cc de cafe al suelo."
                        + "¡Tene mas Cuidado!");
            }else{
                jarra.setCapAct(cafe);
                System.out.println("No se lleno la Cafetera le faltaron "+(jarra.getCapMax()-cafe)+"cc");
            }
        }
        mn.menu(taza,jarra);
    }
    
    
    public void vaciarCafetera(TazaCafe taza, Cafetera jarra){
        jarra.setCapAct(0);
        System.out.println("Cafetera Vacia.");
        mn.menu(taza, jarra);
    }
    
    
    
    public float servirTaza(TazaCafe taza, Cafetera caf){
        float cafe, jarra, maximo;
        
        cafe=taza.getCapTaza();
        jarra = caf.getCapAct();
        maximo = caf.getCapMax();
        System.out.println("\n\nJarraActual:"+jarra+ "\nTTaza:"+cafe);
               
        if(jarra==0){
            cafe=0;
            System.out.println("JarraMax"+maximo+"JarraActual:"+jarra+ "\nTTaza:"+cafe);
        }else{
            if(jarra>cafe && jarra<=maximo){
                cafe=300;
                jarra-=cafe;
                caf.setCapAct(jarra);

            }else{
                if(jarra<cafe && jarra>0){
                    caf.setCapAct(0);
                    cafe=jarra;
                }
            }
        }
    System.out.println("Actualizacion de datos\nJarraActual:"+caf.getCapAct()+ "\nTTaza:"+cafe);
        
        return cafe;
    }

}
