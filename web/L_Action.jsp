<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%
		String uid = request.getParameter("uid").trim();
		String pwd = request.getParameter("pwd").trim();
                try{
                String query="select * from reg where userid like '"+ uid + "' and password like '" + pwd + "'";
                  ResultSet rs=JDBCConnection.getExecuteQuery(query);
            if(rs.next()){
String status=rs.getString("status");
if(status.equals("waiting")){%>
              <script type="text/javascript">
                  window.alert("You are not authorized by the admin");
                  window.location="Login.jsp";
                  </script>
             <% }else{
session.setAttribute("uid",uid);
%>
              <script type="text/javascript">
                  window.alert("Login Success");
                  window.location="citizenHome.jsp";
                  </script>
             <%
}
}else{
%>
              <script type="text/javascript">
                  window.alert("Login Failed check username/password");
                  window.location="Login.jsp";
                  </script>
             <%
}
                }catch(Exception e){
                    out.println(e);
                }

%>