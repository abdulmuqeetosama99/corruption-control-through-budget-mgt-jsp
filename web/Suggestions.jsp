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
                    <div id="left" style="width:200px;height:450px;border:1px solid black;background:black;float:left;">
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
            <div id="problem" style="width:290px;height:600px;border:1px solid black;float:left;border:none;">
                <%String gname=null;
                try{
         String query="select * from complaint";  
ResultSet rs=JDBCConnection.getExecuteQuery(query);
while(rs.next()){
    String cid=rs.getString("cid");
    session.setAttribute("cid",cid);
    
    String complaint=rs.getString("cname");
    String desc=rs.getString("desc");
    String cdate=rs.getString("cdate");
    String status=rs.getString("status");
            %>
            
          
                <style>
                    table tr th{
                        background:#626262;
                        color:burlywood;
                    }
                    table tr td{
                        background: #3366CC;
                        color:whitesmoke;
                        height:20px;
                    }
                </style>
                <table cellpadding="5" cellspacing="5" border="1">
                    <h2>COMPLAINT DETAILS</h2>
                    <tr>
                        
                         <th>Complaint</th>
                          <th>Problem Description</th>
                        
                           </tr>
                    <tr>
                         <td><%=complaint%></td>
                         <td><textarea cols="10" rows="1"><%=desc%></textarea></td>
                      
                           
                    </tr>

                
            
                    <%
                        }
                    }catch(Exception e){
out.println(e);
}
                    %>
                    </table>
            </div>
                    <div id="suggestions" style="width:260px;height:500px;border:1px solid black;float:left;border:none;">
                        <iframe src="sugg.jsp" width="258" height="400"></iframe>
                        
                            <table>
                                 <form action="chart_action.jsp" method="post">
                                <tr><td><input type="address" name="msg"><input type="submit" value="send"></td></tr>
                            
                            </form>
                            </table>
                            
                        
                 
                    </div>
           <div id="group" style="width:210px;height:400px;border:1px solid black;float:left;border:none;">
               <div id="gname" style="width:210px;height:50px;border:1px solid black;border-top:none;border-left:none;border-right:none;">
                   <p style="padding-top:20px;"><b>Group Members</b></p>
               </div>
                 <%
                   String query="select * from usergroup where admin='"+uid+"'or userid='"+uid+"'";
                   try{
                       ResultSet r=JDBCConnection.getExecuteQuery(query);
                       
                       while(r.next()){
                   gname=r.getString("gname");
                   %>
                   <table>
                       <tr><th><%=r.getString("userid")%></th></tr>
                   </table>
                 <% }
                  %>

               
                      <%  }catch(Exception e){
                       out.println(e);
                   }
                   
                   %>
           </div>
               
            
	
            </div>
      </div>
        <div style="background-color: gray;font-style: Georgia;font-size: 20;width:990 " align="center">
   </div>
    </div>
	
    
  </div>
</body>
</html>
