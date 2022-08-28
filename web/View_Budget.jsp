<%-- 
    Document   : View_Budget
    Created on : Nov 1, 2018, 11:10:39 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="black">
        <%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%
String bname=request.getParameter("bname");
try{
    String query="select * from budget where bname='"+bname+"'";
ResultSet r=JDBCConnection.getExecuteQuery(query);
while(r.next()){
    String id=r.getString("id");
    String desc = r.getString("desc");
 
    %>
    <center>
        <h1 style="color : white"><%= bname%> </h1>    
        <h2 style="color : aliceblue"> <%=desc%></h2>
        <image src="view.jsp?id=<%=id%>" width="500" height="400"/></center>
    
    <%
}
}catch(Exception e){
   out.println(e); 
}
%>
    </body>
</html>
