/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceRaiz;

import Entidad.Raiz;
import java.util.Scanner;

/**
 *
 * @author sorro
 */
public class ServiceRaiz {
    
    public Raiz crearRaiz(){
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        double a,b,c;
        System.out.print("Ingrese el valor de a:");
        a= sc.nextDouble();
        System.out.print("Ingrese el valor de b:");
        b= sc.nextDouble();
        System.out.print("Ingrese el valor de c:");
        c= sc.nextDouble();
        return new Raiz(a,b,c);
    }
    
    public double getDiscriminante(Raiz a){
        //(b^2)-4*a*c        
        return (Math.pow(a.getB(),2)-4*a.getA()*a.getC());
    }
    public boolean tieneRaices(double a){
        if (a>0){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean tieneRaiz(double a){
        if (a==0){
                return true;
        }else{
            return false;
        }
    }
    
    public boolean obtenerRaices(boolean bool, Raiz r){
        if (bool){
            //(-b±√((b^2)-(4*a*c)))/(2*a)
            double a=r.getA();
            double b = r.getB();
            double c = r.getC();
            double raiz1=((-1*b)+Math.sqrt(Math.pow(b,2)-(4*a*c)))/(2*a);
            double raiz2=((-1*b)-Math.sqrt(Math.pow(b,2)-(4*a*c)))/(2*a);
            System.out.println("Raiz 1:"+raiz1+"\nRaiz 2:"+raiz2);
            return true;
        }else{
            return false;
        }
    }
    
    public boolean obtenerRaiz(boolean bool, Raiz r){
        if(bool){
            double a=r.getA();
            double b = r.getB();
            double c = r.getC();
            double raiz=(-b-Math.sqrt(Math.pow(b,2)-(4*a*c)))/2*a;
            System.out.println("Raiz:"+raiz);
            return true;
        }else{
            return false;
        }
    }
}
