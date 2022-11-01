/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sara_
 */
public class DBConnector {

    /*
https://dbdiagram.io/d
    
 Table TRIP {
  id int pk
  admin_id fk
  user_id fk
  price_economic int
  price_bussiness int 
  gate varchar
  departure_station varchar
  arrival_station varchar
  date date
  time time
}

Table ADMIN{
  id int pk
  first_name varchar
  last_name varchar
  email varchar
  phone_number int
  password varchar
}

Table USER{
  id int pk
  admin_id fk
  first_name varchar
  last_name varchar
  email varchar
  phone_number int
  password varchar
}

Ref: TRIP.admin_id > ADMIN.id
Ref: USER.admin_id > ADMIN.id
Ref: TRIP.user_id > USER.id


     */
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
//        if (con != null) {
//            try {
//                DatabaseMetaData dbm = con.getMetaData();
//                ResultSet adminTable = dbm.getTables(null, null, "admin", null);
//                ResultSet userTable = dbm.getTables(null, null, "user", null);
//                ResultSet tripTable = dbm.getTables(null, null, "Trip", null);
//                ResultSet reservationTable = dbm.getTables(null, null, "Reservation", null);
//
//                if (!adminTable.next() || !userTable.next() || !tripTable.next() || !reservationTable.next()) {
//                    // createTables();
//                    // insertInfo();
//
//                    createTables(con);
//                }
//            } catch (SQLException ex) {
//            }
//        }
        return con;
    }

//    public static void createTables(Connection con) {
//        try {
//            Statement st = con.createStatement();
//            String adminTable = "CREATE TABLE `admin` "
//                    + "  ID int NOT NULL,"
//                    + "  Fname varchar(100) NOT NULL,"
//                    + "  Lname varchar(100) NOT NULL,"
//                    + "  Email varchar(100) NOT NULL,"
//                    + "  phoneNum int NOT NULL,"
//                    + "  Password varchar(150) NOT NULL,"
//                    + "  PRIMARY KEY (ID);";
//            st.executeUpdate(adminTable);
////            String userTable = "CREATE TABLE user1 (ID int not null, userEmail VARCHAR(100), services VARCHAR(100), PRIMARY KEY (ID));";
////            st.executeUpdate(userTable);
////            String tripTable = "CREATE TABLE user1 (ID int not null, userEmail VARCHAR(100), services VARCHAR(100), PRIMARY KEY (ID));";
////            st.executeUpdate(tripTable);
////            String reservationTable = "CREATE TABLE user1 (ID int not null, userEmail VARCHAR(100), services VARCHAR(100), PRIMARY KEY (ID));";
////            st.executeUpdate(reservationTable);
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        }
//    }
//
//    public static void insertInfo(Connection con) {
//        try {
//            Statement st = con.createStatement();
//            st.executeUpdate("INSERT INTO Services(service, employeeNum) VALUES('Devices Maintenance', 1)");
//            st.executeUpdate("INSERT INTO Services(service, employeeNum) VALUES('Gas Cylinder', 3)");
//            st.executeUpdate("INSERT INTO Services(service, employeeNum) VALUES('Home Maintenance', 5)");
//            st.executeUpdate("INSERT INTO Services(service, employeeNum) VALUES('House Cleaning', 6)");
//
//        } catch (SQLException ex) {
//        }
//    }
}
