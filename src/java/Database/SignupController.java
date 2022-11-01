/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import Account.Account;
import Account.Admin;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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

    public boolean isAdmin(String username) {
        boolean isUser = false;
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT username FROM admin WHERE username = '" + username + "'");
            if (rs.next()) {
                isUser = true;
            }
        } catch (SQLException ex) {
        }
        return isUser;
    }

    public boolean isValidAdmin(String username, String password) {
        boolean isValid = false;
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT username, password FROM admin WHERE username = '" + username
                    + "' AND password ='" + passwordHash(password) + "'");
            if (rs.next()) {
                isValid = true;
            }
        } catch (SQLException ex) {
        }
        return isValid;
    }

    public String getAdminEmail(String username) {
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT Email FROM admin WHERE username = '" + username + "'");
            if (rs.next()) {
                return rs.getString("email");
            }
        } catch (SQLException ex) {
        }
        return "";
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

    public int sendOTP(String recipient) {

        final String email = "railway_booking@outlook.com";
        final String password = "Project.cpit-455";

        Properties prop = new Properties();

        prop.put("mail.smtp.host", "smtp.outlook.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        });
        int otp = 0;
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(recipient)
            );

            Random rand = new Random();
            otp = rand.nextInt(10000);
            message.setSubject("Your One Time Password");
            message.setText("Your OTP to login is " + otp + " Please do not share your OTP.");
            Transport.send(message);
        } catch (MessagingException e) {
        }
        return otp;
    }

}
