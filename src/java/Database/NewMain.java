/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Database;

import Account.Admin;
import java.sql.Connection;

/**
 *
 * @author Sara_
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String username = "s.almeshaal";
        Database.SignupController loginControl = new Database.SignupController();

loginControl.sendOTP(loginControl.getAdminEmail(username));

//        String email = s.getAdminEmail(admin);
//        System.out.println(s.sendOTP(email));
    }
}
