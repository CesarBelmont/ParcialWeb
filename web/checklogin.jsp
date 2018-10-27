<%-- 
    Document   : checklogin
    Created on : 26/10/2018, 01:21:19 PM
    Author     : César
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<%
    String usuario = " ";
    String clave = " ";
    if (request.getParameter("usuario") != null) {
        usuario = request.getParameter("usuario");
    }
    if (request.getParameter("clave") != null) {
        clave = request.getParameter("clave");
    }
        HttpSession sesionOk = request.getSession();
%>
<%!ArrayList<Usuario> usr = new ArrayList();%>
<%
    sesionOk.setAttribute("usuario", usuario);
    sesionOk.setAttribute("lista", usr);
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Usuario y/o clave incorrectos.<br>Vuelve a intentarlo."/>
</jsp:forward>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
