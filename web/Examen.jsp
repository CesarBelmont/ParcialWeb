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
        <link href="images/favicon.png" rel="icon" type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <%
            if (session.getAttribute("usuario") == null) {
        %>
        <jsp:forward page="login.jsp">
            <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
        <%
        } else {
            String path = getServletContext().getRealPath("/");
            Archivos archivo = new Archivos();
            path += "\\..\\..\\txt\\preguntas.txt";
            File prueba = new File(path);
            archivo.setDireccion(prueba.getCanonicalPath());
            String[] text;
            text = new String[12];
            text = archivo.leer();

            String[] Tdividido;

            String[] resp, pregunta;
            resp = new String[12];
            pregunta = new String[12];

            for (int i = 0; i < text.length; i++) {
                Tdividido = archivo.dividir(text[i]);
                for (int j = 0; j < 2; j++) {
                    if (j % 2 != 0) {
                        resp[i] = Tdividido[j];
                    } else {
                        pregunta[i] = Tdividido[j];
                    }
                }
            }
        %>
        <div class="card">
            <h3 class="card-header"><% out.println(pregunta[0]);%></h3>
            <div class="card-body">
                <form action="Examen.jsp">
                    <input type="radio" name="valor" value="valor1">Hola<br>
                    <input type="radio" name="valor" value="valor2">1<br>
                    <input type="radio" name="valor" value="valor3">2<br>
                    <input type="radio" name="valor" value="valor4">3<br>
                    <input type="submit" value="boton">
                </form>

                <h4 class="card-title"><%out.println(resp[0]);
                    }%></h4>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#!" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>

</html>