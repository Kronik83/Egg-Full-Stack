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
public class Matematica {
    
    private double uno;
    private double dos;

    public Matematica(double numero1, double numero2) {
        this.uno = numero1;
        this.dos = numero2;
    }

    public Matematica() {
    }

    public double getUno() {
        return uno;
    }

    public void setUno(double uno) {
        this.uno = uno;
    }

    public double getDos() {
        return dos;
    }

    public void setDos(double dos) {
        this.dos = dos;
    }
    
    
}
