/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDBContext;
import dal.SendEmail;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Email;

/**
 *
 * @author Admin
 */
public class ForgotPass extends HttpServlet {

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
        request.getRequestDispatcher("view/forgotpass.jsp").forward(request, response);
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
        try {
            String emailaddress = request.getParameter("email");
            String username = request.getParameter("username");
            AccountDBContext adb = new AccountDBContext();
            Account a = adb.findPass(username, emailaddress);
            if(a == null){
                request.setAttribute("error", "Sai");
            }else{
                Email email = new Email();
                email.setFrom("hoapkhe130797@fpt.edu.vn");
                email.setFromPass("0945416205");
                email.setTo(emailaddress);
                email.setSubject("L???y l???i m???t kh???u");
                StringBuilder sb = new StringBuilder();
                sb.append("G???i ").append(username).append("<br/>");
                sb.append("M???t kh???u c???a b???n l?? : ").append(a.getPassword()).append("<br/>");
                
                email.setContent(sb.toString());
                SendEmail.send(email);
                
                request.setAttribute("mesage", "???? g???i m???t kh???u ?????n email c???a b???n.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("mesager", e.getMessage());
        }
        //request.getRequestDispatcher("view/login.jsp").forward(request, response);
        request.setAttribute("mesage", "???? g???i m???t kh???u ?????n email c???a b???n.");
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
