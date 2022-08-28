<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Authority Details</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<style>
                  table tr th{
                      color:green;
                      background:#ADE5E7;
                  }
                  table tr td{
                      color:whitesmoke;
                     background:#626262;  
                  }
              </style>
</head>
<body>
<div id="wrapper">
  <div id="header">
    <div id="logo">
      <h1><font color="white" size=20>Corruption Control through Budget Maintenance</font></h1>
	  <marquee><font color="18F510" size=6>Corruption Control through Budget Maintenance</font></marquee>
    </div>
   
  
    </div>
  </div>
  <div id="menu">
    <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
           <li><a href="ViewCitizen.jsp">View Citizen</a></li>
      <li><a href="Register1.jsp">Create Authorities</a></li>
      <li><a href="ViewAuthority.jsp">View Authorities</a></li>
	 <li><a href="Upload.jsp">Post Budget</a></li>
          <li><a href="H_Complaints.jsp">Complaints</a></li>
          <li><a href="Login1.jsp">LogOut</a></li>
     
   </ul>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">
        
        <div class="entry">
          <p><center>
            
              
            <table cellpadding="10" cellspacing="10" border="1">
                    <h2>COMPLAINT DETAILS</h2>
                    <tr>
                        <th>Complaint ID</th>
                         <th>Petitioner</th>
                          <th>Complaint Name</th>
                           <th>Description</th>
                            <th>Compalint Date</th>
                            <th>Accept</th>
             
                   
                    <%try{
                      String query="select * from complaint where status='administrator'";
                     ResultSet rs=JDBCConnection.getExecuteQuery(query);
                     while(rs.next()){
                         String status=rs.getString("status");
                         %>
                  <tr>
                      <td><%=rs.getString("cid")%></td>
                      <td><%=rs.getString("userid")%></td>
                      <td><%=rs.getString("cname")%></td>
                      <td><%=rs.getString("desc")%></td>
                      <td><%=rs.getString("cdate")%></td>
                      
                      <%if(status.equals("administrator")){%>
                      <td><a href="Accept.jsp?cid=<%=rs.getString("cid")%>"><font color="red">Accept</font></a></td>
                      <%}else{%>
                      <td style="background:white"><font color="blue">waiting</font></td>
<%}%>
                  </tr>
                         <%
                     }
}catch(Exception e){
out.println(e);
}
                      %> 
                  
              </table>
			
					</center>
          </div>
		          
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
