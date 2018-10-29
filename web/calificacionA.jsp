<%-- 
    Document   : finales
    Created on : 28/10/2018, 08:11:14 PM
    Author     : César
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="images/farolito.png" rel="icon" type="image/x-icon" />
        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            *{
                font-family: 'Dosis', sans-serif;
            }
            body{
                background-color: #FEFDEF;
            }

            footer {

                position: absolute;
                bottom: 0;
                width: 100%;

            }
        </style>
        <title>Calificacion</title>
    </head>
    <body>


        <%
            Date fecha = new Date();
            DateFormat Formato = new SimpleDateFormat("dd/MM/yyyy");
        %>
        <nav class="navbar navbar-dark bg-dark">
            <a href="index.jsp"><img class="mb-2 ml-5" src="images/farolito.png" alt="" width=60" height="60" style="filter: invert(100%);"></a>
            <p class="lead navbar-toggler"  data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation"  style="color: white; border: transparent;">CERTIFICACIONES EL FAROLITO</p>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="AboutUs.jsp">Sobre nosotros <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Certificacion en Tecnologías</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Programación</a>
                            <a class="dropdown-item" href="#">Electrónica</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Certificacion en Videojuegos</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="Examen.jsp">Counter Strike: Global Offensive</a>
                            <a class="dropdown-item" href="#">Fortnite</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <%
                            if (session.getAttribute("usuario") == null) {
                        %>
                        <div class="d-flex flex-column flex-md-row mb-2 px-md-0 mt-2">
                            <a class="btn btn-primary" href="login.jsp">Iniciar sesión</a>
                        </div>
                        <%
                        } else {
                        %>
                        <div class="d-flex flex-column flex-md-row mb-2 px-md-0 mt-2">
                            <a class="btn btn-primary" href="cerrarsesion.jsp">Cerrar sesion</a>

                        </div>
                        <p class="lead" style="color: white;">Bienvenid@: <%=session.getAttribute("usuario")%></p>
                        <%}%>
                    </li>
                </ul>

            </div>

        </nav>


        <div class="position-relative overflow-hidden p-1 p-md-3 m-md-3 text-center bg-light">
            <div class="col-md-5 p-lg-5 mx-auto ">
                <h1 class="display-4 font-weight-normal">FELICIDADES <%=session.getAttribute("usuario")%> APROBASTE</h1>
                <p class="lead font-weight-normal">Ahora estas certificado  en Counter Strike: Global Offensive
                    <canvas id="myCanvas" width="300" height="100" style="border:transparent;"></canvas>
                    <br>
                    <canvas id="Canvas" width="400" height="100" style="border:transparent;"></canvas>
                    <canvas id="Canvas1" width="400" height="100" style="border:transparent;"></canvas>
                </p>

                <p class="lead font-weight-normal"><%out.println(Formato.format(fecha));%></p>

                <a class="btn btn-outline-secondary" href="index.jsp">Volver al incio</a>
            </div>
            <div class="product-device shadow-sm d-none d-md-block"></div>
            <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
        </div>

        
        <script>
            var c = document.getElementById("myCanvas");
            var ctx = c.getContext("2d");
            ctx.font = "30px Arial";
            ctx.strokeText("Farolito", 10, 50);
        </script>
        <script>
            var c = document.getElementById("Canvas");
            var ctx = c.getContext("2d");
            ctx.font = "30px Arial";
            ctx.strokeText("Ciudad: Aguascalientes", 10, 50);
        </script>
        <script>
            var c = document.getElementById("Canvas1");
            var ctx = c.getContext("2d");
            ctx.font = "30px Arial";
            ctx.strokeText("Instructor: Manuel Alonso", 10, 50);
        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
