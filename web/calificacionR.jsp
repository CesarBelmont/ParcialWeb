<%-- 
    Document   : calificacionR
    Created on : Oct 28, 2018, 9:03:12 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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


        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
            <div class="col-md-5 p-lg-5 mx-auto my-5">
                <h1 class="display-4 font-weight-normal">LO SENTIMOS <%=session.getAttribute("usuario")%> NO APROBASTE</h1>
                <p class="lead font-weight-normal"></p>
                <a class="btn btn-outline-secondary" href="index.jsp">Volver al incio</a>
            </div>
            <div class="product-device shadow-sm d-none d-md-block"></div>
            <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
        </div>

        <footer class="pt-4 pt-md-5 border-top bg-dark mt-5 container-fluid">
            <div class="row">
                <div class="col-12 col-md" style=" text-align: right;">
                    <img class="mb-2 ml-5" src="images/farolito.png" alt="" width="90" height="90" style="filter: invert(100%);">

                </div>
                <div class="col-6 col-md">

                    <h5>Features</h5>
                    <ul class="list-unstyled text-small">
                        <li><a class="text-muted" href="#">Cool stuff</a></li>
                        <li><a class="text-muted" href="#">Random feature</a></li>
                        <li><a class="text-muted" href="AboutUs.jsp">Team feature</a></li>
                        <li><a class="text-muted" href="#">Stuff for developers</a></li>
                        <li><a class="text-muted" href="#">Another one</a></li>

                    </ul>
                </div>
                <div class="col-6 col-md">
                    <h5>Resources</h5>
                    <ul class="list-unstyled text-small">
                        <li><a class="text-muted" href="#">Resource</a></li>
                        <li><a class="text-muted" href="#">Resource name</a></li>
                        <li><a class="text-muted" href="#">Another resource</a></li>
                        <li><a class="text-muted" href="#">Final resource</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md">
                    <h5>About</h5>
                    <ul class="list-unstyled text-small">
                        <li><a class="text-muted" href="AboutUs.jsp">Team</a></li>
                        <li><a class="text-muted" href="AboutUs.jsp">Locations</a></li>
                        <li><a class="text-muted" href="AboutUs.jsp">Privacy</a></li>
                        <li><a class="text-muted" href="AboutUs.jsp">Terms</a></li>
                    </ul>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
