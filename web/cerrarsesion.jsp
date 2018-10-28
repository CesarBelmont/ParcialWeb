<%-- 
    Document   : cerrarsesion
    Created on : 26/10/2018, 02:54:23 PM
    Author     : César
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    
    HttpSession sesionOk = request.getSession();
    sesionOk.invalidate();
%>
<jsp:forward page="index.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
