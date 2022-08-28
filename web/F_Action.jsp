<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String uid=request.getParameter("uid");
String dept=request.getParameter("dept");
String desc=request.getParameter("desc");
Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);

try{
   String query="insert into feedback values(null,'"+uid+"','"+dept+"','"+desc+"','"+date+"','0')";
   String query1="select count(*) from feedback";
   ResultSet rs=JDBCConnection.getExecuteQuery(query1);
    int count=0;
   while(rs.next()){
      count=rs.getInt(1);
       if(count==0){
          int i=JDBCConnection.getUpdateQuery(query);
           if(i>0){
     response.sendRedirect("Feedback.jsp?msg=success");  
   }else{
     response.sendRedirect("Feedback.jsp?msg=failed");  
   }
       }else{
           int count2=count+1;
           String query2="insert into feedback values(null,'"+uid+"','"+dept+"','"+desc+"','"+date+"','"+count2+"')"; 
   int i=JDBCConnection.getUpdateQuery(query2);
    if(i>0){
     response.sendRedirect("Feedback.jsp?msg=success");  
   }else{
     response.sendRedirect("Feedback.jsp?msg=failed");  
   }
       }
   }
  
  
}catch(Exception e){
    out.println(e);
}
%>