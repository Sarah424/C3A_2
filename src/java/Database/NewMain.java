/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Database;

import Account.Admin;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

/**
 *
 * @author Sara_
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

//        //2022-11-18
        String str = "2022-11-18";
        Date date = Date.valueOf(str);//converting string into sql date  
//        System.out.println(date);
//
//        // 11:23
//        try {
//            String time = "11:23";
//            String sec = ":00";
//            java.sql.Time time1 = java.sql.Time.valueOf(time + sec);
//
//            System.out.println(java.sql.Time.valueOf(time + sec));
//            System.out.println(time1);
//        } catch (java.lang.IllegalArgumentException ex) {
//            System.out.println("ex");
//        }
//
//        String riyal = "12";
//        String halal = ".60";
//        double price = Double.parseDouble(riyal+halal);
//        System.out.println(price);
//        
//        TripController trip = new TripController();
//        System.out.println(trip.addTrip("jeddah", "makkah", date, "11:50", 60.5, "g5"));

        String otp1 = "1";
        String otp2 = "2";
        String otp3 = "3";
        String otp4 = "4";
        String otpText = otp1 + otp2 + otp3 + otp4;
        if (Integer.parseInt(otpText) != Integer.parseInt("1234")) {
            System.out.println("equal");
        }
                    System.out.println(otpText);

                    SignupController s = new SignupController();
                    s.sendOTP("sara_almeshaal@outlook.com");
                    
                    
    }
}
