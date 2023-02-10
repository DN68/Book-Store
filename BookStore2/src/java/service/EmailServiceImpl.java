///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package service;
//
//import Ultis.EmailUtils.EmailUtils;
//import javax.servlet.ServletContext;
//import static javax.ws.rs.client.Entity.entity;
//import model.Account;
//import org.jcp.xml.dsig.internal.dom.Utils;
//
///**
// *
// * @author DN68
// */
//public class EmailServiceImpl {
//    /*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package service;
//
//import Utils.EmailUtils;
//import dao.DAO;
//import entity.account;
//import javax.servlet.ServletContext;
//
///**
// *
// * @author BinhNH981
// */
//public class EmailServiceImpl extends EmailService {
////    subject mail
//    private static final String EMAIL_FORGOT_PASSWORD = "Online GuuMusic shop New password!!!";
//
//    // function to send email
//    public void senEmail(ServletContext context, Account recipient, String type) {
//        String host = context.getInitParameter("host"); 
//        String port = context.getInitParameter("port");
//        String user = context.getInitParameter("user");
//        String pass = context.getInitParameter("pass");
//        try {
//            String content = null;
//            String subject = null;
//            switch (type) {
//                case "forgot":
//                    subject = EMAIL_FORGOT_PASSWORD;
//                    content = "Dear " + recipient.getUsername() + " your password is: " + recipient.getPassword()+ " \nplease change your new pass!";
//                    break;
//                default:
//                    subject = "Online guushop";
//                    content = "maybe email wrong";
//            }
//            EmailUtils.sendEmail(host, port, user, pass, recipient.get, subject, content);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    
//}
//}
