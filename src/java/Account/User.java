/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Account;

/**
 *
 * @author Sara_
 */
public class User extends Account {

    private int creditCard;

    public User(int creditCard, String username, String fname, String lname, String email, String password, int phoneNumber, int id) {
        super(username, fname, lname, email, password, phoneNumber, id);
        this.creditCard = creditCard;
    }

    public int getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(int creditCard) {
        this.creditCard = creditCard;
    }

}
