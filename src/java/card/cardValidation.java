package card;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author atheer
 */
public class cardValidation {

    public static boolean isCard(String card) {

        int sz = card.length();
        if (sz != 13) {
            return false;
        }
        else{
        for (int i = 0; i < sz; i++) {
            if (!Character.isDigit(card.charAt(i))) {
                return false;
            }
        }
        
        }
        return true;
    }
    
    public static boolean isCCV(String ccv) {

        int sz = ccv.length();
        if (sz != 3) {
            return false;
        }
        else{
        for (int i = 0; i < sz; i++) {
            if (!Character.isDigit(ccv.charAt(i))) {
                return false;
            }
        }
        }
        return true;
    }
    
    public static boolean isName(String name) {

        int sz = name.length();
        if (sz > 30) {
            return false;
        }
        else{
        for (int i = 0; i < sz; i++) {
            if (Character.isLetter(name.charAt(i))||(name.charAt(i)==' ')) {
                
            }else{return false;}
        }
        
        }
        return true;
    }

}
