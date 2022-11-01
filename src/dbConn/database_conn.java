package dbConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author atheer
 */
public class database_conn {
 String url = "jdbc:mysql://localhost:3306/Atheer_1805209?useSSL=false";//DB naeme >> to be changed
    String username= ""; //to be chnaged
    String password =""; //to be changed
    Connection conn = null;
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";

    //--------------------create connection to DB---------------------------//
    public database_conn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,username,password);
        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(database_conn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //add new user
        public int addUser(String id,String f_name,String l_name,String email,String phone ,String bdate) {// insert new user (6 parameters)
        int r = 0 ; 
        sqlQuery = "insert into **users** (id,first_name,last_name,dateOfBirth,phone,email) values('"+id+"','" + f_name + "','" + l_name +  "' ,'"+ bdate +"','"+ phone +"');";
        try{
            Statement statement = conn.createStatement();
            r = statement.executeUpdate(sqlQuery);//r is the number of records inserted
            System.out.println("succeed in adding user");
        }
        catch(Exception e){
            System.out.println("error in adding user");
            e.printStackTrace();
        }
        return r;
    }
    
        
        //get user tickets history
        public ResultSet getUserTicketHistory(String user_id) {// insert new user (6 parameters)
        //int r = 0 ; 
        sqlQuery = "select * from **tickets** where user_id= '"+user_id+"';";
        try{
            preparedStmt = conn.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();//r is the number of records inserted
            System.out.println("succeed in getting user's tickets");
        }
        catch(Exception e){
            System.out.println("error in getting user's tickets");
            e.printStackTrace();
        }
        return resultSet;
    }
        
        
        //search for available trips 
        public ResultSet getTrips(String from, String to , String date , int seat_no) {
        sqlQuery = "SELECT * FROM **trips** WHERE from= '" +from + "'AND to '" +to + "' AND tripDate'" +date+ "' AND seatsAvailable>= "+seat_no+";";
        try{
            preparedStmt = conn.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            System.out.println("succeed in getting trips");
            
        }catch(SQLException e){
            System.out.println("error in getting trips");
        }
        return resultSet;
    }
        
        //add trip
        public ResultSet addTrips(String from, String to , String date ,String time, int available_seat_no) {
        sqlQuery = "insert into **trips**(from,to,date,time,seatsAvailable) values('"+from+"','"+to+"','"+date+"','"+time+"',"+available_seat_no+");";
        try{
            preparedStmt = conn.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            System.out.println("succeed in adding trips");
            
        }catch(SQLException e){
            System.out.println("error in adding trips");
        }
        return resultSet;
    }
   
}
