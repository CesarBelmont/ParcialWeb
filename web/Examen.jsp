<%-- 
    Document   : Examen
    Created on : 26-oct-2018, 16:18:53
    Author     : ManuelDavid
--%>

<%@page import="java.io.File"%>
<%@page import="Clases.Archivos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            Archivos archivo = new Archivos();
            archivo.setDireccion("C:\\Users\\ManuelDavid\\Desktop\\ParcialWeb\\txt\\preguntas.txt");
            String[] text;
            text = new String [12];
            text = archivo.leer();
            out.println(text[0]);
        %>
    </body>

</html>
