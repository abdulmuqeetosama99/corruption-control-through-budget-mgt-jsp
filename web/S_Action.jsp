<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String uid=request.getParameter("uid");
String cid=request.getParameter("cid");
String com=request.getParameter("com");
String sugg=request.getParameter("sugg");

Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);

try{
   String query="insert into suggestion values(null,'"+uid+"','"+cid+"','"+sugg+"','"+date+"')";
   int i=JDBCConnection.getUpdateQuery(query);
    if(i>0){
     response.sendRedirect("Suggestions.jsp?msg=success");  
   }else{
     response.sendRedirect("Suggestions.jsp?msg=failed");  
   }
  
}catch(Exception e){
    out.println(e);
}
%>