
package Entidad;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author sorro
 */
public class Persona {
    private String nombre;
    private Date fecNac;

    public Persona(String nombre, Date fecNac) {
        this.nombre = nombre;
        this.fecNac = fecNac;
    }

    public Persona() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFecNac() {
        return fecNac;
    }

    public void setFecNac(Date fecNac) {
        this.fecNac = fecNac;
    }

    @Override
    public String toString() {
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        return "Nombre =" + nombre + "\n Fecha de Nacimiento =" + df.format(fecNac);
    }
    
}
