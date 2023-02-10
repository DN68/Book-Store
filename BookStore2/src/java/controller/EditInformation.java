/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;

/**
 *
 * @author DN68
 */
@WebServlet(name = "Information", urlPatterns = {"/information"})
public class EditInformation extends HttpServlet {

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
        request.setCharacterEncoding("UTF8");
        String inid = request.getParameter("inid");
        HttpSession session= request.getSession();
        session.setAttribute("inid", inid);
        DAO dao = new DAO();
        
        
        Customer cu= dao.getCustomerbyID(inid);
               request.setAttribute("infor", cu);

        request.getRequestDispatcher("view/Information.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF8");
        int inid = Integer.parseInt(request.getParameter("inid"));
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phonenumber = request.getParameter("phonenumber");
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        Customer cus = new Customer();
        cus.setFullname(fullname);
        cus.setEmail(email);
        cus.setAddress(address);
        cus.setPhone(phonenumber);
        cus.setUsername(username);
        cus.setPassword(pass);
        cus.setCustomerId(inid);
        DAO dao = new DAO();
        dao.editinformation(cus);
        
        request.setAttribute("mess", "Edit successful!!!");
        request.getRequestDispatcher("view/Information.jsp").forward(request, response);
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
