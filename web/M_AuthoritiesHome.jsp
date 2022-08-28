<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>MA::Home</title>
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
       <li><a href="M_AuthoritiesHome.jsp">Home</a></li>
      <li><a href="View_Profile.jsp">View Profile</a></li>
      <li><a href="Check_Complaints.jsp">Check Complaint</a></li>
	   
           <li><a href="M_Login.jsp">Logout</a></li>
     
   </ul>
            </div>
            <center><p align="justify" style="width:400px;height:500px;float:right;margin-right:200px;">
Municipal authorities can log-in to their accounts as created by administrator. 
Authorities can access all the complaints, suggestions from users. 
Invoke proper activity in response to valid complaints, 
or redirect inappropriate complaints to the administrator. 
Give response to complaints with activity reports
                </p></center>
	
          </div>
		          
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
