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
public class Menu {

    public void menu(Cuenta cuenta) {
        Scanner op = new Scanner(System.in).useDelimiter("\n");
        ServiceCta sCta = new ServiceCta();

        int opcion;
        //1do{
        System.out.print("\n\n---------------------------\n");
        System.out.print("Menu Cuentas Bancarias:\n");
        System.out.print("---------------------------\n\n");
        System.out.print("1- Crear Cuenta.\n"
                + "2- Ingresar Cuenta.\n"
                + "3- Salir.\n\n\n"
                + "Opcion: ");
        opcion = op.nextInt();
        switch (opcion) {
            case 1:
                Cuenta cta = sCta.crearCuenta();
                menu(cta);
                break;
            case 2:
                sCta.ingresarCta(cuenta);
                break;
            case 3:
                System.exit(0);
            default:
                Timer.wait(3);
                menu(null);
        }

    }

    public void menuCta(boolean a, Cuenta cuenta) {
        Scanner op = new Scanner(System.in).useDelimiter("\n");
        ServiceCta sCta = new ServiceCta();
        int opcion;
        if (a == true) {
            System.out.println("\n----------------------------------");
            System.out.print("Bienvenido cliente N°:" + cuenta.getNumeroCuenta() + "\n\n");
            System.out.println("----------------------------------");

            System.out.print("1- Consultar Saldo.\n"
                    + "2- Ingresar Dinero.\n"
                    + "3- Retiro de Dinero.\n"
                    + "4- Retiro Express.\n"
                    + "5- Consultar Datos\n"
                    + "6- Volver\n\n"
                    + "Opcion:");
            opcion = op.nextInt();
            switch (opcion) {
                case 1:
                    Timer.wait(4);
                    System.out.println("\n\n----------------------------------");
                    System.out.println("Consulta de Saldo");
                    System.out.println("----------------------------------");
                    System.out.println("Cliente N°" + cuenta.getNumeroCuenta());
                    System.out.println("Saldo Actual:" + cuenta.getSaldo_actual());
                    menuCta(true, cuenta);
                    break;
                case 2:
                    sCta.ingresar(cuenta);
                    menuCta(true, cuenta);
                    break;
                case 3:
                    sCta.retirar(cuenta);
                    menuCta(true, cuenta);
                    break;
                case 4:
                    sCta.retiroExpress(cuenta);
                    menuCta(true, cuenta);
                    break;
                case 5:
                    Timer.wait(4);
                    System.out.println("\n\n----------------------------------");
                    System.out.println("Consulta de Cuenta:");
                    System.out.println("----------------------------------");
                    System.out.println("DNI N°:" + cuenta.getDni() + "\nNumero de Cuenta:" + cuenta.getNumeroCuenta() + "\nSaldo Actual:" + cuenta.getSaldo_actual());
                    menuCta(true, cuenta);
                    break;
                case 6:
                    menu(cuenta);
                    break;
                default:
                    Timer.wait(2);
                    System.out.println("----------------------------------");
                    System.out.println("-       Opcion Incorrecta        -");
                    System.out.println("----------------------------------\n\n\n");
                    menuCta(true, cuenta);
            }
        }
    }
}
