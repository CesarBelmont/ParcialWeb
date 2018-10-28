<%-- 
    Document   : Examen
    Created on : 26-oct-2018, 16:18:53
    Author     : ManuelDavid
--%>

<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map"%>
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
        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
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
        <%
            if (session.getAttribute("usuario") == null) {
        %>
        <jsp:forward page="login.jsp">
            <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
        <%
        } else {
            Map<Integer, String> preguntas = new TreeMap<Integer, String>();
            Map<Integer, String> correctas = new TreeMap<Integer, String>();
            Map<Integer, String> mal = new TreeMap<Integer, String>();
            String path = getServletContext().getRealPath("/");
            String ruta = getServletContext().getRealPath("/");
            Archivos archivo = new Archivos();
            Archivos file = new Archivos();
            path += "\\..\\..\\txt\\preguntas.txt";
            ruta += "\\..\\..\\txt\\incorrectas.txt";
            File prueba = new File(path);
            File incorrectas = new File(ruta);
            archivo.setDireccion(prueba.getCanonicalPath());
            file.setDireccion(incorrectas.getCanonicalPath());
            String[] text, text2;
            text = new String[12];
            text = archivo.leer(12);
            text2 = new String[36];
            text2 = file.leer(36);
            String[] Tdividido;
            for (int i = 0; i < text.length; i++) {
                Tdividido = archivo.dividir(text[i]);
                for (int j = 0; j < 2; j++) {
                    if (j % 2 != 0) {
                        correctas.put(i, Tdividido[j]);
                    } else {
                        preguntas.put(i, Tdividido[j]);
                    }
                }
            }
            for (int i = 0; i < text2.length; i++) {
                Tdividido = file.dividir(text2[i]);
                for (int j = 0; j < 2; j++) {
                    if (j % 2 != 0) {
                        mal.put(i, Tdividido[j]);
                    }
                }
            }
        %>
        <div class="card">
            <h3 class="card-header"><% out.println(preguntas.get(0));%></h3>
            <div class="card-body">
                <h4 class="card-title">
                    <%
                            out.println(mal.get(4));
                            out.println(correctas.get(0));
                        }
                    %>
                </h4>
                <a href="#!" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>           
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>

</html>