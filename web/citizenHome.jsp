<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Citizen::Home</title>
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
         <li><a href="Budget.jsp">Budget</a></li>
      <li><a href="Complaint.jsp">Complaint</a></li>
      <li><a href="Check_Status.jsp">Check Complaint Status</a></li>
	  <li><a href="Feedback.jsp">FeedBack</a></li>
	  <li><a href="browse.jsp">Browse</a></li>
            <li><a href="Create_Group.jsp">Create Group</a></li>
            <li><a href="Suggestions.jsp">Suggestions</a></li>
          
           <li><a href="Login.jsp">Logout</a></li>
     
   </ul>
            </div>
            <center><p align="justify" style="width:400px;height:500px;float:right;margin-right:200px;">
Users should be able to create new account, log-in to their 
existing accounts which will give them the authority to use the services provided 
by the system. Authenticated users should be able to issue complaints, check complaint status,
submit feedback, browse through other complaints and their feedback. 
Authenticated users should be able to create suggestions/petitions;
other users can support or make suggestions for petitions  forward petitions 
to corresponding authority for possible implementation. Users can to create groups where 
users can share their experiences discuss common problems, and the possible solution.
			
                </p></center>
	
          </div>
		          
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
