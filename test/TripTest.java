/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */

import Account.Admin;
import Account.SignupController;
import Journey.Trip;
import Journey.TripController;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Sara_
 */
public class TripTest {

    public TripTest() {
    }

    @BeforeAll
    public static void setUpClass() {
    }

    @AfterAll
    public static void tearDownClass() {
    }

    @BeforeEach
    public void setUp() {
    }

    @AfterEach
    public void tearDown() {
    }

    
     @Test
    public void admin() {
        Admin admin = new Admin();
        SignupController s = new SignupController();
        
      admin.setUsername("s.almeshaal");
       assertTrue(s.isAdmin(admin));
    }
    
//    @Test
//    public void addTripTest() {
//        TripController controllerInstance = new TripController();
//        Trip tripInstance = new Trip();
//        tripInstance.setID(0);
//        if (controllerInstance.deleteTrip(tripInstance) == 1)
//       assertTrue(controllerInstance.deleteTrip(tripInstance) == 1);
//    }
    
    
    
}
