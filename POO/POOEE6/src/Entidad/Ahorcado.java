/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author sorro
 */
public class Ahorcado {
    
    private String palabra;
    private int longitud;
    
    public Ahorcado() {
    }

    public Ahorcado(String palabra, int longitud) {
        this.palabra = palabra;
        this.longitud = longitud;
    }

    public int getLongitud() {
        return longitud;
    }

    public void setLongitud(int longitud) {
        this.longitud = longitud;
    }

    public String getPalabra() {
        return palabra;
    }

    public void setPalabra(String palabra) {
        this.palabra = palabra;
    }
}
