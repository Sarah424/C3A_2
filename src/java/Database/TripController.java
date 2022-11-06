package Database;

import Journey.Trip;
import java.sql.Connection;
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
        query = "SELECT * FROM Trip WHERE status <> 'cancelled';";
        try {
            prdStmt = con.prepareStatement(query);
            rs = prdStmt.executeQuery();
        } catch (SQLException e) {
        }
        return rs;
    }

    public int addTrip(Trip trip) {
        int result = 0;
        try {
            query = "INSERT INTO Trip (departure_station, arrival_station, date, departure_time, arrival_time, price, gate, status) "
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            prdStmt = con.prepareStatement(query);
            prdStmt.setString(1, trip.getDepartureStation());
            prdStmt.setString(2, trip.getArrivalStation());
            prdStmt.setDate(3, trip.getDate());
            prdStmt.setString(4, trip.getDepartureTime());
            prdStmt.setString(5, trip.getArrivalTime());
            prdStmt.setDouble(6, trip.getPrice());
            prdStmt.setString(7, trip.getGate());
            prdStmt.setString(8, trip.getStatus());
            prdStmt.execute();
            result = 1;
        } catch (SQLException e) {
            result = -1;
        }
        return result;
    }

    public int deleteTrip(Trip trip) {
        query = "DELETE FROM Trip WHERE TripID= " + trip.getID();
        int result = 0;
        try {
            st = con.createStatement();
            result = st.executeUpdate(query);
        } catch (Exception e) {
            result = -1;
        }
        return result;
    }

    public ResultSet getTripInfo(Trip trip) {
        query = "SELECT * FROM Trip WHERE TripID=" + trip.getID();
        try {
            prdStmt = con.prepareStatement(query);
            rs = prdStmt.executeQuery();
        } catch (SQLException e) {
        }
        return rs;
    }

    public int updateTrip(Trip trip) {
        int result = 0;
        try {
            query = "UPDATE Trip SET price = ?, gate = ?, departure_station = ?, arrival_station = ?, date = ?, departure_time = ?,"
                    + "arrival_time = ? ,status = ? WHERE TripID = ?";
            prdStmt = con.prepareStatement(query);
            prdStmt.setDouble(1, trip.getPrice());
            prdStmt.setString(2, trip.getGate());
            prdStmt.setString(3, trip.getDepartureStation());
            prdStmt.setString(4, trip.getArrivalStation());
            prdStmt.setDate(5, trip.getDate());
            prdStmt.setString(6, trip.getDepartureTime());
            prdStmt.setString(7, trip.getArrivalTime());
            prdStmt.setString(8, trip.getStatus());
            prdStmt.setInt(9, trip.getID());
            result = prdStmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            result = -1;
        }
        return result;
    }
}
