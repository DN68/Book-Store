/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import static javafx.scene.input.KeyCode.O;
import javax.persistence.criteria.Order;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.OrderDetail;
import model.Orders;
import model.Shipping;

/**
 *
 * @author DN68
 */
@WebServlet(name = "CheckoutControll", urlPatterns = {"/checkout"})
public class CheckoutControll extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
            Map<Integer,Cart> carts= (Map<Integer,Cart>) session.getAttribute("carts");
            if(carts==null){
                carts=new LinkedHashMap<>();
            }
        int totalMoney=0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer pid = entry.getKey();
                Cart cart = entry.getValue();
                
                totalMoney+= cart.getQuantity() * cart.getProduct().getPrice();
            }
            request.setAttribute("totalMoney", totalMoney);
        request.getRequestDispatcher("view/checkout.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name= request.getParameter("name");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        
        HttpSession session = request.getSession();
            Map<Integer,Cart> carts= (Map<Integer,Cart>) session.getAttribute("carts");
            if(carts==null){
                carts=new LinkedHashMap<>();
            }
            //tinh tong tien
            int totalMoney=0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer pid = entry.getKey();
                Cart cart = entry.getValue();
                
                totalMoney+= cart.getQuantity() * cart.getProduct().getPrice();
            }
        //luu vao database
        
        //luu shipping trc
        Shipping shipping= new Shipping(name, phone, address);
        int shippingid = new DAO().createReturnid(shipping);//tra id tu tang cua ban ghi dc luu vao database
        //luu order
        Orders order= new Orders(1, shippingid, totalMoney);
        
        int orderid=new DAO().createReturnid(order);
        //luu orderdetail
        DAO orderdetail= new DAO();
        orderdetail.saveCart(orderid,carts);
        session.removeAttribute("carts");
        response.sendRedirect("thanks");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
