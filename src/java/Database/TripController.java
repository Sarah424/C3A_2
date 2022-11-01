package Database;

import java.sql.Connection;
import java.sql.ResultSet;
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

    public int insertTrip() {
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
    
    public int deleteTrip(){
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

        public int updateTrip(){
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
