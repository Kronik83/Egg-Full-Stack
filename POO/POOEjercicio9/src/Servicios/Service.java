/*
Realizar una clase llamada Matemática que tenga como atributos dos números reales
con los cuales se realizarán diferentes operaciones matemáticas. La clase deber tener
un constructor vacío, parametrizado y get y set. En el main se creará el objeto y se
usará el Math.random para generar los dos números y se guardaran en el objeto con
su respectivos set. Deberá además implementar los siguientes métodos:
• Método devolverMayor() para retornar cuál de los dos atributos tiene el mayor
valor
20
• Método calcularPotencia() para calcular la potencia del mayor valor de la clase
elevado al menor número. Previamente se deben redondear ambos valores.
• Método calculaRaiz(), para calcular la raíz cuadrada del menor de los dos valores.
Antes de calcular la raíz cuadrada se debe obtener el valor absoluto del número.
 */

package Servicios;

import Entidad.Matematica;
import java.text.DecimalFormat;

/**
 *
 * @author sorro
 */
public class Service {
    public static double devolverMayor(Matematica m){
        return Math.max(m.getUno(), m.getDos());
    }
    
    public static double calcularPotencia(Matematica m){
        return Math.pow(Math.round(devolverMayor(m)),Math.round(esMenor(m)));
    }
    
    public static double calculaRaiz(Matematica m){
        return Math.sqrt(Math.abs(esMenor(m)));
        
    }
    public static double esMenor(Matematica m){
        return Math.min(m.getUno(),m.getDos());
    }
}
