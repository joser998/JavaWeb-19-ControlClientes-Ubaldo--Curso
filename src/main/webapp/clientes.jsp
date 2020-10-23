<!--directiva para poder mostrar en una lista los valores de la base de datos-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Iteramos cada uno de los elementos de la lista-->
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!--link de font awesome-->
        <script src="https://kit.fontawesome.com/1210c5d85d.js" crossorigin="anonymous"></script>

        <title>Control de Clientes</title>
    </head>
    <body>
        <!--Para direccionar al Cabecero-->
        <!--esta directiva es para direccionarnos a la parte del cabecero y como si fuera
            otra pagina pero es esta misma, solo dividimos la pagina en dos-->
        <jsp:include page="WEB-INF/paginas/comunes/cabecero.jsp"/>


        <!--Directiva para mandar a llamar la parte del navegacion del boton +agregar clientes-->
        <jsp:include page="WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>


        <!--Directiva para mandar a llamar la parte del navegacion del boton listado clientes-->
        <jsp:include page="WEB-INF/paginas/cliente/listadoClientes.jsp"/>


        <!--Directiva para mandar a llamar el pie de pagina (recuadro naranga que dice GlobalMentoring)-->
        <jsp:include page="WEB-INF/paginas/comunes/piePagina.jsp"/>


        <!--link de JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    </body>
</html>