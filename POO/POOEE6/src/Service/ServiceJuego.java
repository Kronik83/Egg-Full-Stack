/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Entidad.Ahorcado;
import Entidad.Juego;
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class ServiceJuego {
    public static Ahorcado crearPalabra() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese la Palabra:");
        String[] lista ={"quisquilloso","pajaro","gato","caballo",
            "argentina","egg"};
        //String palabra = sc.next();
        String palabra = lista[(int)Math.floor(Math.random()*lista.length)];
        int longitud = palabra.length();
        return new Ahorcado(palabra, longitud);
    }
    
    public static Juego crearJuego(Ahorcado palabra) {
        Juego js = new Juego();
        Scanner sc = new Scanner(System.in);
        String[] palabraArray = new String[palabra.getLongitud()];
        String[] encontradas = new String[palabra.getLongitud()];
        int jugadas = 7;
        String letras = "";

        Arrays.fill(encontradas, 0, palabra.getLongitud(),"_");
        for (int i = 0; i < palabra.getLongitud(); i++) {
            palabraArray[i] = Character.toString(palabra.getPalabra().charAt(i));
        }

        return new Juego(jugadas, letras, palabraArray, encontradas);
    }
    /*Método buscar(letra): este método recibe una letra dada por el usuario y busca sila
    letra ingresada es parte de la palabra o no. También informará si la letra estaba o no*/
    public static boolean buscar(String letra, Juego game){
        
        if(Arrays.asList(game.getPalabra()).contains(letra)){
            return true;
        }else{
            return false;
        }
    }
    /*Método encontradas(letra): que reciba una letra ingresada por el usuario y muestre
    cuantas letras han sido encontradas y cuantas le faltan. Este método además deberá
    devolver true si la letra estaba y false si la letra no estaba, ya que, cada vez que se
    busque una letra que no esté, se le restará uno a sus oportunidades*/
    public static void encontrar(String letra, Juego game){
        int longitud = game.getPalabra().length;
        String[] auxPalabra = game.getPalabra();
        String[] auxEnc = game.getEncontradas();
        for (int i = 0; i < longitud; i++) {
            if(auxPalabra[i] == null ? letra == null :
                    auxPalabra[i].equals(letra)){
                auxEnc[i]=letra;
            }
        }
    }
    /*Método intentos(): para mostrar cuantas oportunidades le queda al jugador*/
    public static void intentos(String letra, Juego game){
        if(game.getLetras().contains(letra)){
            System.out.println("\nLa letra Ingresada ya se encuentra entre "
                    + "las elegidas.");
        }else{
            game.setJugadas(game.getJugadas()-1);
            game.setLetras(letra+game.getLetras());
            System.out.println("\nLetras no encontradas: "+game.getLetras()
                    +"\nNo se encontro la letra le quedan "+game.getJugadas()
                    +" intentos.");
        }
    }
    
    public static boolean ganar(Juego game){
        String[] palabra = game.getPalabra();
        String[] encontradas=game.getEncontradas();
        if(Arrays.equals(palabra, encontradas)){
            return true;
        }else{
            return false;
        }
    }
    public static String controlLetra(Juego game){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        String letra;
        do{
            System.out.println("Ingrese la letra a buscar:");
            letra=sc.next();
            if(game.getLetras().contains(letra)){
                System.out.println("\nLa letra Ingresada ya se encuentra entre "
                        + "las elegidas.");
            }
        }while(game.getLetras().contains(letra));
        return letra;
    }
    ///Desencadenante
    public static void juego(){
        System.out.println("Creando Condicione del juego:");
        Ahorcado palabra = ServiceJuego.crearPalabra();
        Juego game = ServiceJuego.crearJuego(palabra);
        game.toStringEnc();
        game.toStringJugadas();
        boolean ganar;
        do{
            String letra=ServiceJuego.controlLetra(game);
            boolean buscar = ServiceJuego.buscar(letra, game);
            if (buscar){
                ServiceJuego.encontrar(letra, game);
            }else{
                ServiceJuego.intentos(letra, game);
            }
            ganar=ganar(game);
            if (ganar){
                game.toStringEnc();
                System.out.println("\n¡¡¡Ganaste!!!");
                break;
            }
            game.toStringEnc();
            game.toStringJugadas();
            if(game.getJugadas() ==0){
                System.out.println("\n¡¡¡Perdiste!!!");
            }
        }while(game.getJugadas()!=0);

    }
}
