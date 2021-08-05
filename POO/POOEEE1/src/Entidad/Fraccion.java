/*
Crear una clase llamada fracción que contenga 2 atributos (denominador y numerador de cada
fracción). Crear la clase servicio que contenga métodos para sumar, restar, multiplicar y dividir
fracciones. Mostrar por pantalla un menú de opciones para que el usuario decida que ver. */
package Entidad;

/**
 *
 * @author sorro
 */
public class Fraccion {
    private int deno;
    private int nume;

    public Fraccion() {
    }

    public Fraccion(int deno, int nume) {
        this.deno = deno;
        this.nume = nume;
    }

    public int getNume() {
        return nume;
    }

    public void setNume(int nume) {
        this.nume = nume;
    }

    public int getDeno() {
        return deno;
    }

    public void setDeno(int deno) {
        this.deno = deno;
    }

    @Override
    public String toString() {
        return deno + "/"+ nume;
    }
    
}
