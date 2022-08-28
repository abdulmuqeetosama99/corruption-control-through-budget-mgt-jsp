<%-- 
    Document   : sugg
    Created on : Oct 24, 2018, 4:38:23 PM
    Author     : VENKAT
--%>

<%@page import="com.db.JDBCConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <table style="background:none;">
                            <%
                                String uid=(String)session.getAttribute("uid");
                            String query4="select * from suggestion where userid='"+uid+"'";
                            try{
                              ResultSet s=JDBCConnection.getExecuteQuery(query4);
                              while(s.next()){%>
                              <tr><td><input type="text" value="<%=s.getString("sugg")%>" style="border:none;">
                              
                                     </td>   </tr>  
                            
                              <%}
                                      
                            }catch(Exception e){
                                out.println(e);
                            }
                            %>
                            </table>
    </body>
</html>
