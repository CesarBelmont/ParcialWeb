<%-- 
    Document   : index
    Created on : 26-oct-2018, 13:18:26
    Author     : ManuelDavid
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Inicio</title>
        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
        <link href="images/farolito.png" rel="icon" type="image/x-icon" />
        <style>
            *{
                font-family: 'Dosis', sans-serif;
            }
            body{
                background-color: #FEFDEF;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <img class="mb-2 ml-5" src="images/farolito.png" alt="" width=60" height="60" style="filter: invert(100%);">
            <p class="lead navbar-toggler"  data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation"  style="color: white; border: transparent;">CERTIFICACIONES EL FAROLITO</p>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.jsp">Sobre nosotros</a>
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
                </ul>
            </div>
        </nav>
        <%
            if (session.getAttribute("usuario") == null) {
        %>
        <div class="d-flex flex-column flex-md-row p-3 px-md-4 mb-3 bg-#FEFDEF border-bottom shadow-sm ">
            <a class="btn btn-primary" href="login.jsp">Iniciar sesión</a>
        </div>
        <%
        } else {
        %>
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-#FEFDEF border-bottom shadow-sm" style=" text-align: right;">
            <a class="btn btn-primary" href="cerrarsesion.jsp">Cerrar sesion</a>
            <p class="lead" style=" padding-left: 10px;">Bienvenid@: <%=session.getAttribute("usuario")%></p>
        </div>
        <%}%>

        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4">Costos</h1>
            <p class="lead">Nuestras certificaciones tienen diversos costos. Depende del costo el tiempo que sera valida tu certificacion.</p>
        </div>  

        <div class="container">
            <div class="card-deck mb-3 text-center">
                <div class="card mb-5 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Counter Strike: GO</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$0 <small class="text-muted"></small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>1 año de certificado valido.</li>
                            <li>Calificacion minima aprobatoria: 6.</li>
                            <li>Total de preguntas: 5.</li>
                            <li>Tiempo limite para respoder: 15 min.</li>
                        </ul>
                        <a href="Examen.jsp"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Comenzar</button></a>
                    </div>
                </div>
                <div class="card mb-5 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Fortnite</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$1500 <small class="text-muted"></small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>2 años de certificado valido.</li>
                            <li>Calificacion minima aprobatoria: 7.</li>
                            <li>Total de preguntas: 5.</li>
                            <li>Tiempo limite para respoder: 15 min.</li>
                        </ul>
                        <a href="#"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Comenzar</button></a>
                    </div>
                </div>
                <div class="card mb-5 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Programación</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$3000 <small class="text-muted"></small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>5 años de certificado valido.</li>
                            <li>Calificacion minima aprobatoria: 8.</li>
                            <li>Total de preguntas: 8.</li>
                            <li>Tiempo limite para respoder: 30 min.</li>
                        </ul>
                        <a href="#"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Comenzar</button></a>
                    </div>
                </div>
                <div class="card mb-5 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 font-weight-normal">Electrónica</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$5000 <small class="text-muted"></small></h1>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>10 años de certificado valido.</li>
                            <li>Calificacion minima aprobatoria: 10.</li>
                            <li>Total de preguntas: 8.</li>
                            <li>Tiempo limite para respoder: 30 min.</li>
                        </ul>
                        <a href="#"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Comenzar</button></a>
                    </div>
                </div>
            </div>
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