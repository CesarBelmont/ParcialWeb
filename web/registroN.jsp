<%-- 
    Document   : RegistroN
    Created on : 27/10/2018, 01:53:21 PM
    Author     : César
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
ArrayList<Usuario> temp=new ArrayList();
%>
<%
    String cuen=request.getParameter("cuenta");
    String pswd= request.getParameter("contrasena");
    temp.add(new Usuario(cuen,pswd));
    session.setAttribute("lista", temp);
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
