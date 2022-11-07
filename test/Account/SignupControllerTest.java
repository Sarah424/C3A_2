/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package Account;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Sara_
 */
public class SignupControllerTest {
    
    public SignupControllerTest() {
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

    /**
     * Test of isAdmin method, of class SignupController.
     */
    @Test
    public void testIsAdmin() {
        System.out.println("isAdmin");
        Admin admin = null;
        SignupController instance = new SignupController();
        boolean expResult = false;
        boolean result = instance.isAdmin(admin);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of isValidAdmin method, of class SignupController.
     */
    @Test
    public void testIsValidAdmin() {
        System.out.println("isValidAdmin");
        Admin admin = null;
        SignupController instance = new SignupController();
        boolean expResult = false;
        boolean result = instance.isValidAdmin(admin);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAdminEmail method, of class SignupController.
     */
    @Test
    public void testGetAdminEmail() {
        System.out.println("getAdminEmail");
        Admin admin = null;
        SignupController instance = new SignupController();
        String expResult = "";
        String result = instance.getAdminEmail(admin);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAdminId method, of class SignupController.
     */
    @Test
    public void testGetAdminId() {
        System.out.println("getAdminId");
        Admin admin = null;
        SignupController instance = new SignupController();
        int expResult = 0;
        int result = instance.getAdminId(admin);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of passwordHash method, of class SignupController.
     */
    @Test
    public void testPasswordHash() {
        System.out.println("passwordHash");
        String password = "";
        SignupController instance = new SignupController();
        String expResult = "";
        String result = instance.passwordHash(password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
