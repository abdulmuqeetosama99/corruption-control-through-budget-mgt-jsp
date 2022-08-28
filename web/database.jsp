<%@page import="com.pojo.Store"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.JDBCConnection"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
try{
 
    
}catch(Exception e){
    out.println(e);
}


%>