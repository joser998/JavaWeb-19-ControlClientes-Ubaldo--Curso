<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Libreria para dar formatos-->
<!--el prefijo que vamos a usar es ftm de formato-->
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--tambien especificamos la localidad-->
<ftm:setLocale value="es_MX"/>


<section id="clientes">
    <!--contenedor con la clase container-->
    <div class="container">
        <!--fila-->
        <div class="row">
            <!--esto es para que tengamos mas espacio al plasmar cada registro, columna de ancho 9-->
            <div class="col-mid-9">
                <!--contenedor con la clase tarjeta-->
                <div class="card">
                    <!--indicamos como sera el cabecero de esta tarjeta-->
                    <div class="card-header">
                        <h4>Listado de Clientes</h4>
                    </div>
                    <!--tabla para agregar los estilos-->
                    <table class="table table-striped">
                        <!--parte superior de la tabla-->
                        <thead class="thead-dark">
                            <tr>
                                <!--debajo de estas columnas son las mismas donde estamos presentado cada variable como se muestra abajo-->
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        
                        <!--iteramos cada elemento de la lista de clientes esto gracias a la libreria JSTL-->
                        <tbody>
                            <!--lo que esta siendo traido para la variable clientes(ServletControlador) se va guardando en cliente-->
                            <!--este varStatus esta como status para que muestre el id del cliente de acuerdo a los que estemos guardando
                                y no de acuerdo al id de nuestra base de datos, ya que este puede ser borrado o etc-->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status">   
                                <tr>
                                    <!--de esta forma mostramos cada variable mediante este for-->
                                    <td>${status.count}</td>
                                    <td>${cliente.nombre} ${cliente.apellido}</td>
                                    <!--le damos el formato de tipo moneda a esta fila-->
                                    <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/> </td>
                                    <!--se mostrara como un boton pero es un Link-->
                                    <td>
                                        <!--primeramente accedemos al contextPath de nuestra app-->
                                        <!--este link es para que mande a editar mediante el idCliente-->
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                           class="btn btn-secondary">
                                            <!--agregamos un icono en este mismo link-->
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!--Tarjetas de lado derecho que tambien se presentaran en la pagina (Total de Saldo)-->
            <div class="col-mid-3">
                <div class="card text-center bg-danger text-white mb-3"> 
                    <div class="card-body"> 
                        <!--titulo-->
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>
                        
            <!--Esta sera la segunda tarjeta-->
            <div class="card text-center bg-success text-white mb-3">
                <div class="card-body">
                    <h3>Total Clientes</h3>
                    <h4 class="display-4"> 
                        <!--icono y variable proveniente de servlet-->
                        <i class="fas fa-users"></i> ${totalClientes}
                    </h4>
                </div>
            </div>   
            </div>
            <!-- Aqui termina la parte de construccion de las tarjetas-->
     
        </div>
    </div>
</section>


                    
                    
<!--Agregando pagina modal pagina para agregar el cliente-->                 
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>                    