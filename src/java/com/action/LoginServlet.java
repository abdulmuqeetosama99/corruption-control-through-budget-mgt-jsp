/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.db.JDBCConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VENKAT
 */
public class LoginServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
       
        try{
             HttpSession session=request.getSession();
           String utype = request.getParameter("utype").trim();
		String uid = request.getParameter("uid").trim();
		String pwd = request.getParameter("pwd").trim();
		
                String query="select utype from login where userid like '"+ uid + "' and password like '" + pwd + "' and utype like '"+utype+"'";
                  ResultSet rs=JDBCConnection.getExecuteQuery(query);
                if(rs.next()){
                    String ustype=rs.getString("utype");
                    System.out.println(ustype);
                    if(ustype.equals("MunicipalAuthority")){
                 session.setAttribute("uid",uid);
                 response.sendRedirect("M_AuthoritiesHome.jsp?msg=Login Success");
                    }else if(ustype.equals("Citizen")){
                      session.setAttribute("uid",uid);
                 response.sendRedirect("citizenHome.jsp?msg=Login Success");  
                    }
                    else if(ustype.equals("NGOS")){
                      session.setAttribute("uid",uid);
                 response.sendRedirect("NGOSHome.jsp?msg=Login Success");  
                    }else{
                     response.sendRedirect("N_Login.jsp?msg=Login Failed");    
                    }
                }else{
                    if(uid.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
                   
                 response.sendRedirect("AdminHome.jsp?msg=Login Success");  
                    }else{
                    response.sendRedirect("Login1.jsp?msg=Login Failed");    
                    }
                }
            
        }catch(Exception e){
            out.println(e);
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
