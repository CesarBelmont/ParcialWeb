<%-- 
    Document   : registroN
    Created on : 26/10/2018, 06:44:07 PM
    Author     : César
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cuenta=request.getParameter("cuenta");
    String password=request.getParameter("contrasena");
    ((ArrayList)session.getAttribute("lista")).add(new Usuario(cuenta,password));
    response.sendRedirect("login.jsp");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
