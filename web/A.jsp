<%@page import="com.db.JDBCConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String cid=request.getParameter("cid");
System.out.println("Complaint iD"+cid);

Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);
try{
    String query="update complaint set status='citizen',adate='"+date+"' where cid='"+cid+"'";
    int i=JDBCConnection.getUpdateQuery(query);
    if(i>0){
        response.sendRedirect("Check_Complaints.jsp?msg=success");          
    }else{
      response.sendRedirect("Check_Complaints.jsp?msg=failed");  
    }
    
}catch(Exception e){
    out.println(e);
}

%>