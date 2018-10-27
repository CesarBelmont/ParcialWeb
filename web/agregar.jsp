<%-- 
    Document   : agregar
    Created on : 26/10/2018, 03:01:56 PM
    Author     : César
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function validarPassword(f){
                var p1 = document.getElementsByName("contrasena").value;
                var p2 = document.getElementsByName("contrasena2").value;
                if(f.contrasena.value == f.contrasena2.value){
                    return true;
                }else{
                    alert("Contraseñas no coinciden, intenta de nuevo");
                    return false;
                }
            }
        </script>
        <title>Registro</title>
    </head>
    
        <h1>Registro de usuario</h1>
        <%
            ArrayList<Usuario> aux=(ArrayList<Usuario>) session.getAttribute("lista");
            if(request.getParameter("cuenta")!=null&&request.getParameter("contrasena")!= null){
                aux.add(new Usuario(request.getParameter("cuenta"), request.getParameter("contrasena")));
                session.setAttribute("lista", aux);
            }
        %>
        <br><br>
        <form action="registroN.jsp" onsubmit="return validarPassword(this)">
            <fieldset>
                <br><center>
                    Cuenta: <input type="text" name="cuenta" placeholder="Nombre de la cuenta" required><br><br>
                    Contraseña: <input type="password" name="contrasena" placeholder="Contraseña" required><br><br>
                    Conformar contraseña: <input type="password" name="contrasena2" placeholder="Contraseña" required><br><br><br>
                    <input type="submit" value="Agregar"><br><br>
                </center>
            </fieldset>
        </form>
        <div style="text-align: center"><a href="index.jsp">Regresar</a></div>    
</html>
