/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.db.JDBCConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author VENKAT
 */
@MultipartConfig(maxFileSize = 16177215) 
public class Upload extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String bname=request.getParameter("bname");
            String bdate=request.getParameter("bdate");
            String desc=request.getParameter("desc");
             Part image=request.getPart("file");
             InputStream inputstream=null;
             if(image!=null){
                 inputstream=image.getInputStream();
             }
            Connection con=JDBCConnection.getCon();
            PreparedStatement pst=con.prepareStatement("insert into budget values(?,?,?,?,?)");
            pst.setString(1,null);
            pst.setString(2,bname);
             pst.setString(3,bdate);
              pst.setString(4,desc);
              if(inputstream!=null){
                  pst.setBlob(5,inputstream);
              }
             int i=pst.executeUpdate();
             if(i>0){
                 response.sendRedirect("Upload.jsp?msg=success");
             }else{
               response.sendRedirect("Upload.jsp?msg=failed");  
             }
        }catch(Exception e){
          out.println();  
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
