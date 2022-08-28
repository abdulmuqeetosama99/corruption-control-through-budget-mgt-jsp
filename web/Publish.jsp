<%@page import="com.db.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>NGOS Home::Page</title>
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
        <li><a href="N_Home.jsp">Home</a></li>
           <li><a href="Publish.jsp">publish</a></li>
     
          <li><a href="N_Login.jsp">LogOut</a></li>
     
   </ul>
  </div>
  <div id="page">
   <div id="content">
      <div class="post">
        
        <div class="entry">
          <p><center>
              <form action="Publish.jsp" method="post">
              <table>
                  <tr><h2>publish here</h2></tr>
              <tR><th>Publish</th><td><textarea cols="25" rows="5" name="desc"></textarea></td></tr>
                  <tr><th></th><td><input type="submit" value="publish"></td><td></td></tr>
              </table>
              </form>
					</center>
          </div>
		          
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
      <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
	<%
        String desc=request.getParameter("desc");
        if(desc!=null){
         Date d=new Date();
SimpleDateFormat sfm=new SimpleDateFormat("dd:MM:yyyy");
String date=sfm.format(d);

String query="insert into publish values(null,'"+desc+"','"+date+"')";
int i=JDBCConnection.getUpdateQuery(query);
if(i>0){%>
<script type="text/javascript">
    window.alert("success");
</script>
<%}else{%>
<script type="text/javascript">
    window.alert("failed");
</script>
<%
        
}
}
  %>
    
  </div>
</body>
</html>
