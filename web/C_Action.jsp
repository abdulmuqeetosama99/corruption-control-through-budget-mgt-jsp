<%@page import="com.db.JDBCConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String uid=request.getParameter("uid");
String complaint=request.getParameter("com");
String desc=request.getParameter("desc");
Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);

try{
   String query="insert into complaint values(null,'"+uid+"','"+complaint+"','"+desc+"','municipalauthority','"+date+"','waiting')";
   int i=JDBCConnection.getUpdateQuery(query);
   if(i>0){
     response.sendRedirect("Complaint.jsp?msg=success");  
   }else{
     response.sendRedirect("Complaint.jsp?msg=failed");  
   }
}catch(Exception e){
    out.println(e);
}
%>