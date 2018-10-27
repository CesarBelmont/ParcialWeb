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
     

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                background-color: #FEFDEF;
            }
        </style>
        <script>
            function validarPassword(f) {
                var p1 = document.getElementsByName("contrasena").value;
                var p2 = document.getElementsByName("contrasena2").value;
                if (f.contrasena.value == f.contrasena2.value) {
                    return true;
                } else {
                    alert("Contraseñas no coinciden, intenta de nuevo");
                    return false;
                }
            }
        </script>
        <title>Registro</title>
    </head>
    <body>
        <%!ArrayList<Usuario> aux ;%>
        <%
                aux = (ArrayList<Usuario>) session.getAttribute("lista");
                if (request.getParameter("cuenta") != null && request.getParameter("contrasena") != null) {
                    aux.add(new Usuario(request.getParameter("cuenta"), request.getParameter("contrasena")));
                    session.setAttribute("lista", aux);
                }
        %>
        <br><br>
        <form action="RegistroN.jsp" class="form-signin mx-auto" style="width:400px;" onsubmit="return validarPassword(this)">
            <div class="text-center mb-4">
                <img class="mb-4" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                <h1 class="h3 mb-3 font-weight-normal">Registro de usuario</h1>
            </div>
            <div class="form-label-group">
                <input name="cuenta" type="text" id="inputEmail" class="form-control" placeholder="Cuenta" required autofocus>
            </div>
            <div class="form-label-group">
                <input  name="contrasena" type="password" id="inputPassword" class="form-control mt-2" placeholder="Contraseña" required>
            </div>
            <div class="form-label-group">
                <input  name="contrasena2" type="password" id="inputPassword" class="form-control mt-2" placeholder="Confirmar contraseña" required>
            </div>
            <button class="btn btn-lg btn-primary btn-block mt-5" type="submit">Agregar</button>
            <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
        </form>
        <div style="text-align: center"><a href="index.jsp">Regresar</a></div>   
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
