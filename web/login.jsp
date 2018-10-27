<%-- 
    Document   : login
    Created on : 26-oct-2018, 13:38:14
    Author     : ManuelDavid
--%>

<%@page import="Clases.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color:beige;
            }
        </style>

    </head>
    <body class="text-center">
        <form action="checklogin.jsp" class="form-signin p-5 mx-auto" style="width:400px;padding-left: 600px">
            <img class="mb-3" src="../../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal" >Iniciar sesión</h1>
            <label for="inputEmail" class="sr-only">Cuenta</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="Cuenta" required autofocus class="mr-5 ml-5" name="usuario">
            <label for="inputPassword" class="sr-only">Contraseña</label>
            <input type="password" id="inputPassword" class="form-control mt-2" placeholder="Contraseña" name="clave" required  >
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Recuerdame
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesión</button>
            <div style="color:red">
                <%
                    if (request.getParameter("error") != null) {
                        out.println(request.getParameter("error"));
                    }
                %>
            </div>
            <p class="mt-2 mb-3 text-muted mr-2"><a href="agregar.jsp">¿No tienes una cuenta? Crea una</a></p>
        </form>
        
        <%
           /*
            ArrayList<Usuario> aux = (ArrayList<Usuario>) session.getAttribute("lista");
            for (int i = 0; i < aux.size(); i++) {
                out.print(aux.get(i).getNombre());
                out.println(aux.get(i).getClave());
           }
          
          for (int i = 0; i < aux.size(); i++) {
              aux.remove(i);
          }
          */
        %>
      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
