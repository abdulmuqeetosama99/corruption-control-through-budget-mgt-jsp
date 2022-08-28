<%
String user=request.getParameter("uid");
String pwd=request.getParameter("pwd");

if(user.equalsIgnoreCase("NGOS")&& pwd.equalsIgnoreCase("NGOS")){
    response.sendRedirect("N_Home.jsp?msg=success");
}else{
 response.sendRedirect("N_Login.jsp?msg=failed");   
}

%>