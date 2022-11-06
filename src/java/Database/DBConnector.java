/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sara_
 */
public class DBConnector {

    private static String serverURL = "jdbc:mysql://localhost:3306/railway?allowPublicKeyRetrieval=true&useSSL=false";
    private static String username = "C3A_2";
    private static String password = "Project.cpit-455";
    private static Statement st = null;
    private static Connection con = null;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(serverURL, username, password);
            st = con.createStatement();
        } catch (SQLException e) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, e);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection getConnection() {
        return con;
    }
}
