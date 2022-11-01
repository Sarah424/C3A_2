/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Account;

/**
 *
 * @author Sara_
 */
public class Admin extends Account {

    private boolean isAdmin;

    public Admin(boolean isAdmin, String username, String fname, String lname, String email, String password, int phoneNumber, int id) {
        super(username, fname, lname, email, password, phoneNumber, id);
        this.isAdmin = isAdmin;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

}
