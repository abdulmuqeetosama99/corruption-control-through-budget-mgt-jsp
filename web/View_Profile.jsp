<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>complaint status</title>
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
         String query="select * from reg where userid='"+uid+"' and utype='MunicipalAuthority'";  
ResultSet rs=JDBCConnection.getExecuteQuery(query);
while(rs.next()){
    String name=rs.getString("name");
    String gender=rs.getString("gender");
    String dob=rs.getString("dob");
    String address=rs.getString("address");
    String phone=rs.getString("pno");
      String email=rs.getString("email");
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
                    <h2>PROFILE DETAILS</h2>
                    <tr>
                        <th>Name</th>
                         <th>Gender</th>
                          <th>BOD</th>
                           <th>Address</th>
                            <th>Phone</th>
                            <th>Email</th>
                    </tr>
                    <tr>
                            <td><%=name%></td>
                            <td><%=gender%></td>
                            <td><%=dob%></td>
                            <td><%=address%></td>
                            <td><%=phone%></td>
                            <td><%=email%></td>
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
