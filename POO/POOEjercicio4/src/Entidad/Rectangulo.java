/*
Crear una clase Rectángulo que modele rectángulos por medio de un atributo
privado base y un atributo privado altura. La clase incluirá un método para crear el
rectángulo con los datos del Rectángulo dados por el usuario. También incluirá un
método para calcular la superficie del rectángulo y un método para calcular el
perímetro del rectángulo. Por último, tendremos un método que dibujará el
rectángulo mediante asteriscos usando la base y la altura. Se deberán además definir
los métodos getters, setters y constructores correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2.
 */

package Entidad;

import java.util.Scanner;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Rectangulo {
    private float base, altura;
    
    public Rectangulo(float b, float a){
        base = b;
        altura = a;
    }

    public Rectangulo() {
    }

    public float getBase() {
        return base;
    }

    public float getAltura() {
        return altura;
    }

    public void setBase(float base) {
        this.base = base;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }
    
    public float area(){
        return base*altura;
    }
    
    public float perimetro(){
        return (base*altura)*2;
    }
    
    public void dibujar(){
        for (int i = 0; i < (int)altura ; i++) {
            for (int j = 0; j < (int)base; j++) {
                if (i==0 || j==0 || j==(int)base-1 || i==(int)altura-1){
                    System.out.print("* ");
                }else{
                    System.out.print("  ");
                }
            }
            System.out.println();
        }
    }
    
    public void creaRectangulo(){
        
        System.out.print("Ingrese la Base: ");
        base=control();
        System.out.print("Ingrese la Altura: ");
        altura = control(base);
    }
    
    public float control(){
        float aux;
        do{
            Scanner sc = new Scanner(System.in).useDelimiter("\n");
            aux = sc.nextFloat();
            if( aux <0){
                System.out.print("El numero ingresado es incorrecto.\nIngrese el valor nuevamente:");
            }
        }while(aux<0);
        return aux;
    }
    
    public float control(float b){
        float aux;
        do{
            Scanner sc = new Scanner(System.in).useDelimiter("\n");
            aux = sc.nextFloat();
            if( aux <0){
                System.out.print("El numero ingresado es incorrecto.\nIngrese el valor nuevamente:");
            }else{
                if(aux==b){
                    System.out.print("La altura debe ser diferente a la base. \nIngrese el valor nuevamente:");
                }
            }
        }while(aux<0 || aux==b);
        return aux;
    }
    
    

}
