<!--Esta pagina lo que va a hacer es mandar a llamar el Servlet controlador-->
<!--este meta es para que refresque esta pagina-->
<!--el valor content lo que hace es que refresca la pagina cada ciertos segundos-->
<!--una vez que se haga refresh manda a llamar la url que esta a continuacion-->
<!--en la url se usa lenguaje de expresiones para acceder al contextpath-->
<meta http-equiv="refresh" content="0; url=${pageContext.request.contextPath}/ServletControlador">