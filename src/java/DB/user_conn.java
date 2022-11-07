package DB;
import java.sql.*;
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
//jdbc:mysql://localhost:3306/railway?useSSL=false
public class user_conn {
   
    String url = "jdbc:mysql://localhost:3306/railway?useSSL=false";//DB naeme
    String username= "C3A_2"; 
    String password ="Project.cpit-455"; //pass
    Connection conn = null;
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";
    //--------------------create connection to DB---------------------------//
    public user_conn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,username,password);
        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user_conn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
  

        //------------------------search for available trips 
        public ResultSet getTrips(String from, String to, String date) {
        sqlQuery = "SELECT * FROM TRIP WHERE departure_station= '" +from + "' AND arrival_station= '" +to + "' AND date='"+ date +"' ;";
        try{
            preparedStmt = conn.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            System.out.println("succeed in getting trips");
        }catch(SQLException e){
            System.out.println("error in getting trips");
        }
        return resultSet;
    }
        
        //-----------------------get trip info
        
        public ResultSet getTrip(int id) {
        sqlQuery = "SELECT * FROM TRIP WHERE id= " +id + ";";
        try{
            preparedStmt = conn.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            System.out.println("succeed in getting trips");
        }catch(SQLException e){
            System.out.println("error in getting trips");
        }
        return resultSet;
    }
        
        //-----------------------------pay ticket for user
        
        public int bookTicket(int user_id, int trip_id) {// insert new user (6 parameters)
        int r=0;
        sqlQuery = "INSERT INTO RESERVATION (trip_id,user_id) VALUES ("+ trip_id +","+ user_id +");";
        try{
            Statement statement = conn.createStatement();
            r = statement.executeUpdate(sqlQuery);//r is the number of records inserted

        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();
            return 0;
        }
        return r;
    }
       
        //----------------------------- cancel user ticket
        public boolean deleteTicket(int user_id, int id) {// insert new user (6 parameters)
        int r=0;
        sqlQuery = "delete from RESERVATION  where  user_id="+ user_id +" AND id="+ id +";";
        try{
            Statement statement = conn.createStatement();
            r = statement.executeUpdate(sqlQuery);//r is the number of records inserted

        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();return false;
            
        }
        return true;
    }
        
        
      
        //---------------------get user tickets history
        
        public ResultSet getUserTicketHistory(int user_id) {// insert new user (6 parameters)
        //int r = 0 ; 
        sqlQuery = "select * from RESERVATION where user_id= "+user_id+";";
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
        
        
        
        
        
   //---------------------- close the connection     
        
        
    public void close(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(user_conn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    //-------------------------add trip
        
        
//        public ResultSet addTrips(String from, String to , String date ,String time, int available_seat_no) {
//        sqlQuery = "insert into **trips**(from,to,date,time,seatsAvailable) values('"+from+"','"+to+"','"+date+"','"+time+"',"+available_seat_no+");";
//        try{
//            preparedStmt = conn.prepareStatement(sqlQuery);
//            resultSet = preparedStmt.executeQuery();
//            System.out.println("succeed in adding trips");
//            
//        }catch(SQLException e){
//            System.out.println("error in adding trips");
//        }
//        return resultSet;
//    }
            
     //--------------------add new user
        
        
//        public int addUser(String id,String f_name,String l_name,String email,String phone ,String bdate) {// insert new user (6 parameters)
//        int r = 0 ; 
//        sqlQuery = "insert into **users** (id,first_name,last_name,dateOfBirth,phone,email) values('"+id+"','" + f_name + "','" + l_name +  "' ,'"+ bdate +"','"+ phone +"');";
//        try{
//            Statement statement = conn.createStatement();
//            r = statement.executeUpdate(sqlQuery);//r is the number of records inserted
//            System.out.println("succeed in adding user");
//        }
//        catch(Exception e){
//            System.out.println("error in adding user");
//            e.printStackTrace();
//        }
//        return r;
//    }
//    
        

   
}
