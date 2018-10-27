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
<%!
    ArrayList<Usuario> aux;
%>
<%
    String usuario = " ";
    String clave = " ";
    boolean band = false;
    if (request.getParameter("usuario") != null) {
        usuario = request.getParameter("usuario");
    }
    if (request.getParameter("clave") != null) {
        clave = request.getParameter("clave");
    }
    //if(usuario.equals("Ximena")&& clave.equals("hola")){
    aux = (ArrayList<Usuario>) session.getAttribute("lista");
    for (int i = 0; i < aux.size(); i++) {
        if (usuario.equals(aux.get(i).getNombre()) && clave.equals(aux.get(i).getClave())) {
            band = true;
            break;
        } else {
            band = false;
        }
    }
    if (band == true) {
        HttpSession sesionOk = request.getSession();
        sesionOk.setAttribute("usuario", usuario);
        sesionOk.setAttribute("lista", aux);
%>
<jsp:forward page="index.jsp"/>
<%
} else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Usuario y/o clave incorrectos.<br>Vuelve a intentarlo."/>
</jsp:forward>
<%
    }
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
