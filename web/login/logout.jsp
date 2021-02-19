<%-- 
    Document   : logout
    Created on : Dec 20, 2020, 7:41:33 PM
    Author     : Ruli gandari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("login.jsp");
        %>
    </body>
</html>
