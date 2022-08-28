<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Admin Home::Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />

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
          <li><a href="H_Complaints.jsp">complaints</a></li>
          <li><a href="Login1.jsp">LogOut</a></li>
     
   </ul>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">
        
        <div class="entry">
          <p><center>
              <h2><u>Post Budget Here</u></h2>
              <form action="Upload" method="post" enctype="multipart/form-data">
              <table style="border:3px solid #A90000">
                  <tr><th>Budget Name</th><td><input type="text" name="bname" required></td></tr>
                   <tr><th>Date Of Budget</th><td><input type="date" name="bdate"required></td></tr>
                   <tr><th>Description</th><td><input type="text" name="desc"></td></tr>
                   <tr><th>Upload</th><td><input type="file" name="file" required></td></tr>
                   <tr><td></td><td><input type="submit" value="Post"> <input type="reset" value="Reset"></inpu></td></tr>
              </table>
              </form>			
          
          </center>
          </div>
       
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
