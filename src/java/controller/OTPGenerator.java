/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import static controller.SendEmail.mailSnd;
import java.util.Random;

/**
 *
 * @author Varad
 */
public class OTPGenerator {
    String otp;
    public String generateOTP()
    {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
        return Integer.toString(otp);
    }
//    public void sendEmail()
//    {
//       OTPGenerator op = new OTPGenerator();
//        String email = request.getParameter("email");          
//         otp = op.generateOTP();
//        SendEmail.mailSnd(email,"Your Otp is: "+otp);
//        }
}
