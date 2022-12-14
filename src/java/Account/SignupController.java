/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Account;

import Database.DBConnector;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;
/**
 *
 * @author Sara_
 */
public class SignupController {

    private static Connection con = DBConnector.getConnection();
    private static Statement st = null;
    private static ResultSet rs = null;

    public boolean isAdmin(Admin admin) {
        boolean isUser = false;
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT username FROM admin WHERE username = '" + admin.getUsername() + "'");
            if (rs.next()) {
                isUser = true;
            }
        } catch (SQLException ex) {
        }
        return isUser;
    }

    public boolean isValidAdmin(Admin admin) {
        boolean isValid = false;
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT username, password FROM admin WHERE username = '" + admin.getUsername()
                    + "' AND password ='" + passwordHash(admin.getPassword()) + "'");
            if (rs.next()) {
                isValid = true;
            }
        } catch (SQLException ex) {
        }
        return isValid;
    }

    public String getAdminEmail(Admin admin) {
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT Email FROM admin WHERE username = '" + admin.getUsername() + "'");
            if (rs.next()) {
                return rs.getString("email");
            }
        } catch (SQLException ex) {
        }
        return "";
    }
    
    
    public int getAdminId(Admin admin) {
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT ID FROM admin WHERE username = '" + admin.getUsername() + "'");
            if (rs.next()) {
                return rs.getInt("ID");
            }
        } catch (SQLException ex) {
        }
        return -1;
    }

    public String passwordHash(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());
            BigInteger no = new BigInteger(1, messageDigest);
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

//    public static int sendOTP(String recipient) {
//        final String email = "railway_booking@outlook.com";
//        final String password = "Project.cpit-455";
//
//        Properties props = new Properties();
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.ssl.trust", "smtp.outlook.com");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.host", "smtp.outlook.com");
//        props.put("mail.smtp.port", "587");
//        props.put("mail.debug", "true");
//
//        jakarta.mail.Authenticator auth = new jakarta.mail.Authenticator() {
//            protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
//                return new jakarta.mail.PasswordAuthentication(email, password);
//            }
//        };
//        
//        jakarta.mail.Session session = jakarta.mail.Session.getInstance(props, auth);
//        int otp = 0;
//        try {
//            jakarta.mail.internet.MimeMessage message = new jakarta.mail.internet.MimeMessage(session);
//            message.setFrom(new jakarta.mail.internet.InternetAddress(email));
//            jakarta.mail.internet.InternetAddress[] address = {new jakarta.mail.internet.InternetAddress(recipient)};
//            message.setRecipients(jakarta.mail.Message.RecipientType.TO, address);
//            Random rand = new Random();
//            otp = rand.nextInt(10000);
//            message.setSubject("Your One Time Password");
//            message.setText("Your OTP to login is " + otp + " Please do not share your OTP.");
//            jakarta.mail.Transport.send(message);
//
//        } catch (jakarta.mail.MessagingException ex) {
//        }
//        return otp;
//    }
}
