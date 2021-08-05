/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import java.util.Arrays;

/**
 *
 * @author sorro
 */
public class Juego {
    private int jugadas;
    private String letras;
    private String[] palabra;
    private String[] encontradas;

    public Juego() {
    }

    public Juego(int jugadas, String letras, String[] palabra, String[] encontradas) {
        this.jugadas = jugadas;
        this.letras = letras;
        this.palabra = palabra;
        this.encontradas = encontradas;
    }

    public int getJugadas() {
        return jugadas;
    }

    public void setJugadas(int jugadas) {
        this.jugadas = jugadas;
    }

    public String getLetras() {
        return letras;
    }

    public void setLetras(String letras) {
        this.letras = letras;
    }


    public String[] getPalabra() {
        return palabra;
    }

    public void setPalabra(String[] palabra) {
        this.palabra = palabra;
    }

    public String[] getEncontradas() {
        return encontradas;
    }

    public void setEncontradas(String[] encontradas) {
        this.encontradas = encontradas;
    }

    @Override
    public String toString() {
        return "Juego{" + "jugadas=" + jugadas + ", letras=" + letras + ", palabra=" + palabra + ", encontradas=" + encontradas + '}';
    }
    
    public void toStringEnc(){
        System.out.println("\nPalabra del Ahorcado:");
        for (String encontrada : encontradas) {
            System.out.print(encontrada + " ");            
        }
    }
    
    public void toStringJugadas(){
        System.out.println("\nIntentos iniciales: "+jugadas);
    }
}
