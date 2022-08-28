<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Login::Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript">
function validate(formObj){
	if(formObj.uname.value.length==0){
		alert("Please Enter your uname name");
		formObj.uname.focus();
		return false;
	}
	if(formObj.pw.value.length==0){
		alert("Please Enter your pws");
		formObj.pw.focus();
		return false;
    }
	if(regform.uname.value=="admin" && regform.pw.value=="admin"){
		alert("Login successful");

		return true;
    }
  }
  </script>
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
       <li><a href="index.html">Home</a></li>
      <li><a href="Login.jsp">Citizen</a></li>
      <li><a href="M_Login.jsp">Municipal Authorities</a></li>
	  <li><a href="N_Login.jsp">NGOs</a></li>
	  <li><a href="Login1.jsp">Administrator</a></li>
     
   </ul>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">
        
        <div class="entry">
          <p><center>
         
			 <form name="regform" action="N_Action.jsp" method="post" onSubmit="return validate(this);">
			 <table border="0" >
                             <tr><td>User Type</td><td><input type="text" name="utype" value="NGOS" readonly></td>
                    </tr>
                            <tr><td>UserName</td><td><input type="text" name="uid"/></td></tr>
							<tr><td>Password</td><td><input type="password" name="pwd"/></td></tr>
                            <tr rowspan="2" align="center"><td><input type="submit" name="submit" value="    Login    " /></td></tr>
							<tr></tr>
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
