<!--Este codigo lo que hace es generarnos el boton con las propiedades de Bootstrap
    es el boton +agregar cliente ya esta programado para abrir una ventana modal para
    un formulario-->
<!--Para agregar botones de navegacion-->
<!-- padding de 4 y un margin bottom de 4 y el color de fonto background ligth-->
<section id="actions" class="py-4 mb-4 bg-ligth">
    <!--contenedor clase container-->
    <div class="container">
        <!--contenedor para las filas-->
        <div class="row">
            <!--contenedor para columnas con un ancho de 3-->
            <div class="col-mid-3">
                <!--link para abrir un elemento modal-->
                <!-- # significa que se quedara en esta misma pagina-->
                <!-- btn indicamos que sera de tipo boton y de tipo boton primario-->
                <!-- data-toggle para que se abra el elemento modal, en este caso sera un formulario-->
                <a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#agregarClienteModal"> 
                    <!--agregamos un icono-->
                    <i class="fas fa-plus"></i> Agregar Cliente
                </a>
            </div>
        </div>
    </div>
</section>
    <!-- *****************************************************************************************************************-->     