<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>check complaint</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<style>
    ul li{
        padding-top:30px;
       font-style: Georgia;
    }
</style>
</head>
<body bgcolor="lightblue">
<div id="wrapper" style="background: #000066">
  <div id="header">
    <div id="logo">
      <h1><font color="white" size=20>Corruption Control through Budget Maintenance</font></h1>
	  <marquee><font color="18F510" size=6>Corruption Control through Budget Maintenance</font></marquee>
    </div>
  
    </div>
  </div>
  <div id="menu">
    <%String uid=(String)session.getAttribute("uid");
    System.out.println(uid);
    %>
    <center> <h2 style="padding-top:20px;color:blueviolet;">Welcome::: <%=uid%></h2></center>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">

        <div class="entry" style="border:1px solid black;">
                    <div id="left" style="width:200px;height:450px;border:1px solid black;background:black;float:left;">
                 <ul>
       <li><a href="M_AuthoritiesHome.jsp">Home</a></li>
      <li><a href="View_Profile.jsp">View Profile</a></li>
      <li><a href="Check_Complaints.jsp">Check Complaint</a></li>
	   
           <li><a href="M_Login.jsp">Logout</a></li>
      
   </ul>
            </div>
            <%
                try{
         String query="select * from complaint where status='municipalauthority'";  
ResultSet rs=JDBCConnection.getExecuteQuery(query);
while(rs.next()){
    String cid=rs.getString(1);
    String userid=rs.getString(2);
    String cname=rs.getString(3);
    String desc=rs.getString(4);
    String date=rs.getString(6);
    
    String status=rs.getString("status");
              %>
            
            <center>
                <style>
                    table tr th{
                        background:#626262;
                        color:burlywood;
                    }
                    table tr td{
                        background: #3366CC;
                        color:whitesmoke;
                    }
                </style>
                <table cellpadding="10" cellspacing="10" border="1">
                    <h2>COMPLAINT DETAILS</h2>
                    <tr>
                        <th>Complaint ID</th>
                         <th>Petitioner</th>
                          <th>Complaint Name</th>
                           <th>Description</th>
                            <th>Date</th>
                            <th>Accept</th>
                            <th>Send To Admin</th>
                    </tr>
                    <tr>
                            <td><%=cid%></td>
                            <td><%=userid%></td>
                            <td><%=cname%></td>
                            <td><%=desc%></td>
                            <td><%=date%></td>
                            <%if(status.equals("citizen")){%>
                            <td><font color="green">Accepted</font></td>
                            <%}else if(status.equals("administrator")){%>
                             <td><font color="green">Transfered to Admin</font></td>
                            <%}else{%>
                             <td><a href="A.jsp?cid=<%=cid%>"><font color="orange">Accept</font></a></td>
                            <%}%>
                        
                             <td><a href="Send.jsp?cid=<%=cid%>"><font color="orange">To Admin</font></a></td>
                  
                    </tr>
</table>
                
            </center>
                    <%
                        }
                    }catch(Exception e){
out.println(e);
}
                    %>
	      </div>
		          
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
