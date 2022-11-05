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

    public int deleteTrip(int tripID) {
        query = "DELETE FROM Trip WHERE TripID= " + tripID;
        int result = 0;
        try {
            st = con.createStatement();
            result = st.executeUpdate(query);
        } catch (Exception e) {
            result = -1;
        }
        return result;
    }

    public ResultSet getTripInfo(int tripId) {
        query = "SELECT * FROM Trip WHERE TripID=" + tripId;
        try {
            prdStmt = con.prepareStatement(query);
            rs = prdStmt.executeQuery();
        } catch (SQLException e) {
        }
        return rs;
    }

    public int updateTrip(int tripId, double price, String gate, String from, String to, Date date, String time, String status) {
        int result = 0;
        try {
            query = "UPDATE Trip SET price = ?, gate = ?, departure_station = ?, arrival_station = ?, date = ?, time = ?, status = ? WHERE TripID = ?";
            prdStmt = con.prepareStatement(query);
            prdStmt.setDouble(1, price);

            prdStmt.setString(2, gate);
            prdStmt.setString(3, from);
            prdStmt.setString(4, to);
            prdStmt.setDate(5, date);
            prdStmt.setString(6, time);
            prdStmt.setString(7, status);
            prdStmt.setInt(8, tripId);
            result = prdStmt.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getMessage());
            result = -1;
        }
        return result;
    }

}
