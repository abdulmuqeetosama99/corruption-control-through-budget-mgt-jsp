<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.JDBCConnection"%>
<%            
		String uid = request.getParameter("uid").trim();
		String pwd = request.getParameter("pwd").trim();
                try{
                String query="select * from reg where userid like '"+ uid + "' and password like '" + pwd + "' and utype='MunicipalAuthority'";
                  ResultSet rs=JDBCConnection.getExecuteQuery(query);
            if(rs.next()){
                session.setAttribute("uid",uid);
%>
              <script type="text/javascript">
                  window.alert("Login Success");
                  window.location="M_AuthoritiesHome.jsp";
                  </script>
             <% }else{
%>
              <script type="text/javascript">
                  window.alert("Login Failed check username/password");
                  window.location="M_Login.jsp";
                  </script>
             <%
}
               }catch(Exception e){
                    out.println(e);
                }

%>