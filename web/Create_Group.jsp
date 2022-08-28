<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>create::group</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<style>
    ul li{
        padding-top:20px;
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
        <li><a href="Budget.jsp">Budget</a></li>
      <li><a href="Check_Status.jsp">Check Complaint Status</a></li>
	  <li><a href="Feedback.jsp">FeedBack</a></li>
	  <li><a href="browse.jsp">Browse</a></li>
          <li><a href="Create_Group.jsp">Create Group</a></li>
          
           <li><a href="Suggestions.jsp">Suggestions</a></li>
            <li><a href="Login.jsp">Logout</a></li>
     
   </ul>
            </div>
            
            <center>
                <form action="creat.jsp" method="post">
                                        <h2><U>CREATE YOUR GROUP</U></h2>

                      <table style="margin-top:20px;">
                    
                    
                    <tr><th><u>Enter Group Name:</u></th>
                        <td><input  type="text" name="gname" style="border:none;" REQUIRED>
                            </td></tr>
                    <tr><td></td><td><input type="submit" value="create"> <input type="reset" value="reset"></td></tr>
                    
                    

                  
    
                   </table>
                </form>
            </center>
            <center>
            
            <table style="margin-top: 50px;">
                <tr><th><h3><a href="view_group.jsp">** Click View Group **</a></h3></th></tr>
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
