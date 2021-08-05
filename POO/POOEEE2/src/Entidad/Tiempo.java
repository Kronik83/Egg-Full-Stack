/*
 Definir la clase Tiempo, la cual tendrá la hora, minutos y segundos. Definir dos constructores: un
constructor vacío y otro con la hora, minutos y segundos ingresado por el usuario. Deberá definir
además, los métodos getters y setters correspondientes, y el método imprimirHoraCompleta().
Recordar crear una validación sobre las horas, minutos y segundos ingresados por el usuario. Te
animas a simular el paso del tiempo en consola?
 */
package Entidad;

/**
 *
 * @author sorro
 */
public class Tiempo {
    private int hora;
    private int min;
    private int sec;

    public Tiempo() {
    }

    public Tiempo(int hora, int min, int sec) {
        this.hora = hora;
        this.min = min;
        this.sec = sec;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public int getSec() {
        return sec;
    }

    public void setSec(int sec) {
        this.sec = sec;
    }

    @Override
    public String toString() {
        return "Hora: " + hora + ":" + min + ":" + sec;
    }
    
}
