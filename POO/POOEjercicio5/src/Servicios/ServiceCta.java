/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servicios;

import Entidad.Cuenta;
import java.util.Scanner;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ServiceCta {    
    
    public Timer tm = new Timer();


    public Cuenta crearCuenta() {

        Scanner sc = new Scanner(System.in);
        
        System.out.println("----------------------------------");
        System.out.println("Creacion de Cuenta:");
        System.out.println("----------------------------------\n\n");
        System.out.print("Ingresar DNI: ");
        long dni = sc.nextLong();
        System.out.print("Ingrese Numero de Cuenta: ");
        int numeroCuenta = sc.nextInt();
        System.out.println("Ingrese Saldo:");
        float saldo_actual=sc.nextFloat();
        
        Timer.wait(2);
        return new Cuenta(numeroCuenta, dni, saldo_actual);
    }

    public void ingresarCta(Cuenta cta) {
        Scanner sc = new Scanner(System.in);
        Menu mn = new Menu();

        System.out.println("----------------------------------");
        System.out.println("Ingreso a la Cuenta:");
        System.out.println("----------------------------------");
        System.out.print("Ingrese el DNI:");
        int cuenta = sc.nextInt();
        if (cuenta == cta.getDni() && cuenta != 0) {
            System.out.println("----------------------------------\n\n\n");
            System.out.println("Bienvenido: \n\nCliente N°" + cta.getNumeroCuenta() + "\n\n");
            System.out.println("----------------------------------\n\n\n");
            Timer.wait(2);
            mn.menuCta(true, cta);
        } else {
            System.out.println("\n\n\n----------------------------------");
            System.out.println("No se encuentra cuenta registrada para su DNI.");
            System.out.println("----------------------------------\n\n\n");
            Timer.wait(2);
            
            mn.menu(cta);
        }
    }

    public void ingresar(Cuenta cta) {
        Scanner sc = new Scanner(System.in);
        Menu mn = new Menu();
        
        System.out.println("Ingreso de Dinero:");
        System.out.println("----------------------------------");
        System.out.println("Cuenta N°: " + cta.getNumeroCuenta());
        System.out.println("Saldo Actual: $" + cta.getSaldo_actual());
        System.out.println("Ingrese Nuevo saldo: $");
        float saldoActual = cta.getSaldo_actual();
        saldoActual+= sc.nextFloat();
        cta.setSaldo_actual(saldoActual);
        System.out.println("----------------------------------\n\n");
        Timer.wait(4);
        System.out.println("----------------------------------");
        System.out.println("Saldo Actual: $" + cta.getSaldo_actual() + "\n\n\n");
        Timer.wait(2);
        mn.menuCta(true, cta);
    }

    public void retirar(Cuenta cta) {
        Scanner sc = new Scanner(System.in);
        Menu mn = new Menu();
        
        float saldoActual = cta.getSaldo_actual();
        System.out.println("----------------------------------");
        System.out.println("-       Retiro de Dinero:        -");
        System.out.println("----------------------------------");
        System.out.println("Cuenta N°: " + cta.getNumeroCuenta());
        System.out.println("Saldo Actual: $" + saldoActual);
        System.out.print("Ingrese importe a retirar: $");
        float aux2 = sc.nextFloat();
        Timer.wait(2);
        if (aux2 > saldoActual) {
            System.out.println("----------------------------------");
            System.out.println("Saldo Insuficiente: $" + saldoActual);
            System.out.println("----------------------------------");
            Timer.wait(2);
            System.out.println("Desea ingresar un monto nuevo:\n"
                    + "1- (S)i     2- (N)o");
            String salir = sc.nextLine();
            if ("s".equals(salir) || "S".equals(salir)) {
                Timer.wait(2);
                retirar(cta);
            } else {
                Timer.wait(2);
                mn.menuCta(true, cta);
            }
        } else {
            saldoActual -= aux2;
            cta.setSaldo_actual(saldoActual);
            mn.menuCta(true, cta);
        }
    }

    public void retiroExpress(Cuenta cta) {
        
        Scanner sc = new Scanner(System.in);
        Menu mn = new Menu();
        
        float saldoActual = cta.getSaldo_actual();
        if (saldoActual != 0) {

            System.out.println("----------------------------------");
            System.out.println("-         Retiro Rapido:         -");
            System.out.println("----------------------------------");
            System.out.println("Saldo Actual: $" + saldoActual);
            System.out.println("Su retiro rapido es de :$" + saldoActual * 0.2);
            System.out.println("----------------------------------");
            System.out.println("Dese realizar el retiro:\n"
                    + "1- Si     2- No");
            int opcion = sc.nextInt();
            if (opcion == 1) {
                saldoActual -= saldoActual * 0.2;
                Timer.wait(4);
                System.out.println("----------------------------------");
                System.out.println("Saldo Actualizado");
                System.out.println("----------------------------------");
                System.out.println("Saldo Actual: $" + saldoActual);
                Timer.wait(4);
                mn.menuCta(true, cta);
            } else {
                mn.menuCta(true, cta);
            }

        }

    }
}
