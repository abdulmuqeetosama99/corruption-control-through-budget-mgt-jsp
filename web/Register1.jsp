<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
<title>Corruption Control through Budget Maintenance</title>
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
          <li><a href="H_Complaints.jsp">Complaints</a></li>
          <li><a href="Login1.jsp">LogOut</a></li>
   </ul>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">
           <center><font size="5" style="margin-left:100px;">Create Authority Form</font></center>
        <div class="entry">
          <p><center>
            
			<div style="position: absolute;left: 150px">
                           
			<%
			if(request.getParameter("regStatus")!=null)
			{
			 %>
			 <br/> 
			 <font color="#ff0000">User Already Exists. Try Another</font> 
			 <%} %>
<form action="./RegisterServlet" name="regform" method="post" onSubmit="return validate(this);">
<font  size="3" face="Georgia"><u><b>Personal Details</b></u></font>
<table cellspacing=10 style="margin-left: 50px;" >
<tr>
<td>User Type</td><td>
    <input type="text" name="utype" value="MunicipalAuthority">
</td>
</tr>
<tr>
<td colspan="2">
<table>
<tr>
<td>
Full Name
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="name"/>
</td>

<td>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>Gender</td><td><select name="gender">

<option value="m">Male</option>
<option value="f">Female</option>
</select></td>
</tr>
<tr>
<td>Date of Birth</td><td>
<input type="date" name="dob" ></td>
</tr>
<tr>
<td>
Addres
</td>
<td>
<textarea name="address" cols="14" rows="4"></textarea>
</td>
</tr>
<tr>
<td>
Phone Number
</td>
<td>
<input type="text" name="pno"/>
</td>
</tr>

<tr>
<td>
Email
</td>
<td>
<input type="text" name="email"/>
</td>
</tr>

</table>
</div>
<div style="position:absolute;left: 500px;">
<font  size="3" face="Georgia"><u><b>Account Details</b></u></font>
<table cellspacing="10" style="margin-left: 200px;">
<tr>
<td>Username
</td>
<td>
<input type="text" name="userid" />
</td>
</tr>
<tr>
<td>
Password
</td>
<td>
<input type="password" name="password" />
</td>
</tr>
<tr>
<td>
Re-Enter Password
</td>
<td>
<input type="password" name="cpassword"/>
</td>
</tr>
</table>

<br/><br/><br/><br/>
<input  type="submit" value="Create My Account" style="font-style: Georgia;font-variant:normal;font-size: 13 "/>
</form>

                       </table>
             </div>
					</center>
          </div>
		          
      </div>
            <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">   </div>
    </div>
	
    
  </div>
</body>
</html>
