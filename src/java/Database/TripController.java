package Database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Sara_
 */
public class TripController {

    private static Connection con = DBConnector.getConnection();
    private static Statement st = null;
    private static ResultSet rs = null;
    private static PreparedStatement prdStmt = null;
    private String query = null;

    public ResultSet getTrips() {
        query = "SELECT * FROM Trip;";
        try {
            prdStmt = con.prepareStatement(query);
            rs = prdStmt.executeQuery();
        } catch (SQLException e) {
        }
        return rs;
    }
    
      public ResultSet getUpdatableTrips() {
        query = "SELECT * FROM Trip WHERE status = 'on Time';";
        try {
            prdStmt = con.prepareStatement(query);
            rs = prdStmt.executeQuery();
        } catch (SQLException e) {
        }
        return rs;
    }
    

    public int addTrip(String from, String to, Date date, String time, double price, String gate) {
        int result = 0;
        try {
            query = "INSERT INTO Trip (departure_station, arrival_station, Date, time, price, gate, status) "
                    + " VALUES (?, ?, ?, ?, ?, ?, ?)";
            prdStmt = con.prepareStatement(query);
            prdStmt.setString(1, from);
            prdStmt.setString(2, to);
            prdStmt.setDate(3, date);
            prdStmt.setString(4, time);
            prdStmt.setDouble(5, price);
            prdStmt.setString(6, gate);
            prdStmt.setString(7, "On Time");
            prdStmt.execute();
            result = 1;
        } catch (SQLException e) {
            result = -1;
        }
        return result;
    }

    public int deleteTrip() {
        String query = "";
        int result = -1;
        try {
            st = con.createStatement();
            result = st.executeUpdate(query);
        } catch (Exception e) {
            result = 0;
        }
        return result;
    }

    public int updateTrip() {
        String query = "";
        int result = -1;
        try {
            st = con.createStatement();
            result = st.executeUpdate(query);
        } catch (Exception e) {
            result = 0;
        }
        return result;
    }
}
