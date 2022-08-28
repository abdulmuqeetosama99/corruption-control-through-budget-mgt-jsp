<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>BROWSE COMPLAINT</title>
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
    <%String uid=(String)session.getAttribute("uid");%>
    <center> <h2 style="padding-top:20px;color:blueviolet;">Welcome::: <%=uid%></h2></center>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">

        <div class="entry" style="border:1px solid black;">
                    <div id="left" style="width:250px;height:450px;border:1px solid black;background:black;float:left;">
                 <ul>
       <li><a href="citizenHome.jsp">Home</a></li>
      <li><a href="Complaint.jsp">Complaint</a></li>
      <li><a href="Check_Status.jsp">Check Complaint Status</a></li>
	  <li><a href="Feedback.jsp">FeedBack</a></li>
	  <li><a href="browse.jsp">Browse</a></li>
           <li><a href="Suggestions.jsp">Suggestions</a></li>
           <li><a href="Create_Group.jsp">Create Group</a></li>
           <li><a href="Login.jsp">Logout</a></li>
     
   </ul>
            </div>
            <%String comp=request.getParameter("com");
                try{
         String query="select * from complaint where cname='"+comp+"'";  
ResultSet rs=JDBCConnection.getExecuteQuery(query);
while(rs.next()){
    String cid=rs.getString("cid");
    String complaint=rs.getString("cname");
    String desc=rs.getString("desc");
    String cdate=rs.getString("cdate");
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
                         <th>Complaint</th>
                          <th>Problem Description</th>
                           <th>Complaint Date</th>
                            <th>Status</th>
                    </tr>
                    <tr>
                        <td><%=cid%></td>
                         <td><%=complaint%></td>
                         <td><textarea cols="10" rows="4"><%=desc%></textarea></td>
                           <td><%=cdate%></td>
                            <td><%=status%></td>
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
