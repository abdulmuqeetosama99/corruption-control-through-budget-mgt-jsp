<%@page import="com.db.JDBCConnection"%>
<%
String email=request.getParameter("email");
String query="update reg set status='Granted Access' where email='"+email+"'";
int i=JDBCConnection.getUpdateQuery(query);
if(i>0){
  response.sendRedirect("ViewCitizen.jsp?msg=success");  
}else{
response.sendRedirect("ViewCitizen.jsp?msg=failed");    
}

%>