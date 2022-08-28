<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    String admin=(String)session.getAttribute("uid");
     String gname=(String)session.getAttribute("gname");
String uid=request.getParameter("uname");


Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);

try{
   String query="insert into usergroup values('"+gname+"','"+admin+"','"+uid+"','"+date+"')";
   String query1="select count(*) from usergroup where admin='"+admin+"'and userid='"+uid+"'";
   ResultSet rs=JDBCConnection.getExecuteQuery(query1);
   int count=0;
   while(rs.next()){
      count=rs.getInt(1);
      if(count==0){
       int i=JDBCConnection.getUpdateQuery(query);
    if(i>0){
session.setAttribute("gname",gname);%>
    <script type="text/javascript">
        window.alert("Added Successfully");
        window.location="creat.jsp";
        </script>
      <%}else{
     %>
    <script type="text/javascript">
        window.alert("Adding Failed");
        window.location="creat.jsp";
        </script>
      <%  
   }   
      }else{
%>
    <script type="text/javascript">
        window.alert("User Already Added ");
        window.location="creat.jsp";
        </script>
      <%  
}
   }
   
  
}catch(Exception e){
    out.println(e);
}
%>