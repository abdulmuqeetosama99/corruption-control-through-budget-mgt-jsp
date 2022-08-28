/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.db.JDBCConnection;
import com.mail.Mail;
import com.mail.Send;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VENKAT
 */
public class RegisterServlet extends HttpServlet {

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
        try { 
            String utype=request.getParameter("utype").trim();
		String name=request.getParameter("name").trim();
		String  gender=request.getParameter("gender").trim();
		String dob=request.getParameter("dob").trim();
		String address=request.getParameter("address").trim();
		String pno=request.getParameter("pno").trim();
				String email=request.getParameter("email").trim();
		String  userid=request.getParameter("userid").trim();
		String password=request.getParameter("password").trim();
                String msg="Your username is:"+userid+"\n\n Your password is:"+password;
                       String msg2="please check your login details";
                
                
                 String query="select count(*) from reg where email='"+email+"' and utype='"+utype+"' ";
                 String query1="insert into reg values(null,'"+utype+"','"+name+"','"+gender+"','"+dob+"','"+address+"','"+pno+"','"+email+"','"+userid+"','"+password+"','waiting')";
        String query2="insert into login values(null,'"+userid+"','"+password+"','"+utype+"')";
 
        ResultSet rs=JDBCConnection.getExecuteQuery(query);
        while(rs.next()){
            int count=rs.getInt(1);
            if(count==0)
            {
             int i=JDBCConnection.getUpdateQuery(query1);  
             int ii=JDBCConnection.getUpdateQuery(query2);  
             if(utype.equalsIgnoreCase("citizen"))
				{
						
					RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
					rd.include(request,response);
					out.println("<br><br><br><center><font color='blue'>Registration Successful. You Can Login Now</center>");

				}else{
                 Mail.secretMail(msg, email, email);
                                        RequestDispatcher rd=request.getRequestDispatcher("Register1.jsp");
					rd.include(request,response);
					out.println("<br><br><br><center><font color='blue'>Registration Successful. </center>");
			
             }
            }else{
                if(utype.equals("Citizen")){
             RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
					rd.include(request,response);
					out.println("<br><br><br><center><font color='red'>USER ID ALREADY EXIST</center>");
                }else{
                RequestDispatcher rd=request.getRequestDispatcher("Register1.jsp");
					rd.include(request,response);
					out.println("<br><br><br><center><font color='red'>USER ID ALREADY EXIST</center>");
            
                }
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
