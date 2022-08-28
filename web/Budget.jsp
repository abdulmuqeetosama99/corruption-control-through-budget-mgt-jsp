<%-- 
    Document   : Budget
    Created on : Oct 25, 2018, 2:45:38 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>budget</title>
    </head>
    <body bgcolor="black;">
    <center>
        <div id ="main" style="width:600px;height:400px; border:none;">
            <form action="View_Budget.jsp" method="post">
            <table>
                <tR><h2>Get The Budget Details</h2></tR>
                <tr><td>Enter Budget</tD><td><input type="text" name="bname"></td></tr>
                <tr><td></td><td><input type="submit" value="Get Budget"></td></tr>
            </table>
            </form>
        </div>
        
    </center>
    </body>
</html>
