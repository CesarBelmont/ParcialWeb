<%-- 
    Document   : AboutUs
    Created on : Oct 27, 2018, 9:22:15 PM
    Author     : MD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="images/farolito.png" rel="icon" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre nosotros</title>
        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
        <header>

        </header>
        <nav class="navbar navbar-dark bg-dark" style=" width: 100%;">
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


        <div id="carouselExampleIndicators" class="carousel slide mb-5" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/CSGO.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/fortnite.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/programacion.png" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/electronica.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>  
        <main role="main">
            <div class="container marketing">


                <div class="row">
                    <div class="col-lg-6">
                        <img class="rounded-circle" src="images/MD.png" alt="Generic placeholder image" width="140" height="140">
                        <h2>Manuel David Alonso Muñoz</h2>
                        <p>Estudiante de Ing. en Sistemas Computacionales.</p>

                    </div>

                    <div class="col-lg-6">
                        <img class="rounded-circle" src="images/Rea.jpg" alt="Generic placeholder image" width="140" height="140">
                        <h2>Cesar Arturo Rea Reyes</h2>
                        <p>Estudiante de Ing. en Sistemas Computacionales.</p>
                    </div>
                </div>
                <hr class="featurette-divider">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Aclaraciones de la certificación</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5">
                        <img class="featurette-image img-fluid mx-auto" src="images/servidor_cliente.jpg" alt="Generic placeholder image">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <h2 class="featurette-heading">Beneficios de la certificación</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5 order-md-1">

                        <img class="featurette-image img-fluid mx-auto" src="images/certificacion.png" alt="Generic placeholder image">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Diploma</h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5">

                        <img class="featurette-image img-fluid mx-auto" src="images/diploma.jpg" alt="Generic placeholder image" width="40%">
                    </div>
                </div>

                <hr class="featurette-divider">


            </div>

            <footer class="container">
                <p class="float-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017-2018 Company, Inc.
            </footer>
        </main>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
