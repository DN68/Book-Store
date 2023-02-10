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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;

/**
 *
 * @author DN68
 */
@WebServlet(name = "AddtocartControll", urlPatterns = {"/add-to-cart"})
public class AddtocartControll extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int productId=Integer.parseInt(request.getParameter("pid"));
            HttpSession session=request.getSession();
            Map<Integer,Cart> carts= (Map<Integer,Cart>) session.getAttribute("carts");
            if(carts==null){
                carts=new LinkedHashMap<>();
            }
            //chua co trong gio hang
            if(carts.containsKey(productId)){//co tren gio hang
                int oldQuantity=carts.get(productId).getQuantity();
                carts.get(productId).setQuantity(oldQuantity+1);
            }else{//chua co tren gio hang
                Product product= new DAO().getProductbyID(productId);
                Cart cart= new Cart(product,productId);
                carts.put(productId, cart);
            }
            //luu len session
            session.setAttribute("carts", carts);
            String UrlHistory=(String)session.getAttribute("UrlHistory");
            if(UrlHistory==null){
                UrlHistory="ProductControll";
            }
            response.sendRedirect(UrlHistory);
        }
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
        processRequest(request, response);
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
