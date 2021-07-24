/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servicios;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Timer {
    public static void wait(int segundos) {
        try {
            Thread.sleep(segundos * 1000);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
