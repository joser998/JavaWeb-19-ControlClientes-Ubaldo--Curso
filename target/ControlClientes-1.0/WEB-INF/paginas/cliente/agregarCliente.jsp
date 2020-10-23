<div class="modal fade" id="agregarClienteModal">
    <div class="modal-dialog modal-lg">
        <!--esta ya es el contenido de la ventana modal que se estara desplegando-->
        <div class="modal-content">
            <!--este es el contenedor que nos arroja el titulo de la pantalla modal-->
            <div class="modal-header bg-info text-white">
                <!--este ya es el titulo de +agregar cliente-->
                <h5 class="modal-title">Agregar Cliente</h5>
                <!--este boton es para que puedan cerrar la ventana modal-->
                <button class="close" data-dismiss="modal">
                    <!--para agregar el simbolo de una equis-->
                    <span>&times;</span>
                </button>
            </div>
            
            <!--formulario que se enviara hacia el ServletControlador-->
            <!-- el ? indica que vamos a pasar un parametro -->
            <!--el parametro que estamos pasando es el parametro de accion y el valor de insertar-->
            <!--en este caso la peticion para este formulario se hara de tipo POST-->
            <!--was-validated es para que se revisen cada uno de los campos de texto y se cumpla
                la validacion que se les agrego al final (required) para que no se vallan vacios
                en caso de un campo vacio se tomara como invalido, esta es una clase de Bootstrap-->
            <!--esto puede observarse a que los campos no llenos, se mostraran de rojo en el contorno 
                del campo de texto, y los que esten llenos se mostraran de verde, ya que estos si se 
                podran enviar mediante el boton 'Guardar' -->
            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar"
                  method="POST" class="was-validated">
                <!--este modal-body debe de estar forsozamente dentro del div de modal-content-->
                <div class="modal-body">
                    
                    <!--agregamos un estilo diferente para este formulario-->
                        <!--este es el div para el Nombre-->
                    <div class="form-group">
                        <!--aqui se empiezan a mostrar los datos de la ventana modal-->
                        <label for="nombre">Nombre</label>
                        <!--se llama nombre como la etiqueta anterior ya que es el espacio en blanco
                            para guardar el atributo perteneciente a nombre y es el mismo 
                            que usaremos dentro de nuestro ServletControlador-->
                        <input type="text" class="form-control" name="nombre" required>
                    </div>
                    
                    <!--este es el div encargado del apellido-->
                    <div class="form-group">
                        <!--aqui se empiezan a mostrar los datos de la ventana modal-->
                        <label for="apellido">Apellido</label>
                        <!--se llama nombre como la etiqueta anterior ya que es el espacio en blanco
                            para guardar el atributo perteneciente a nombre y es el mismo 
                            que usaremos dentro de nuestro ServletControlador-->
                        <input type="text" class="form-control" name="apellido" required>
                    </div>
                    
                    
                    <!--este es el div encargado del email-->
                    <div class="form-group">
                        <!--aqui se empiezan a mostrar los datos de la ventana modal-->
                        <label for="email">Email</label>
                        <!--se llama nombre como la etiqueta anterior ya que es el espacio en blanco
                            para guardar el atributo perteneciente a nombre y es el mismo 
                            que usaremos dentro de nuestro ServletControlador-->
                        <!--usamos el type email para que sea necesario que coloques un email-->
                        <input type="email" class="form-control" name="email" required>
                    </div>
                    
                    
                    <!--este es el div encargado del Telefono-->
                    <div class="form-group">
                        <!--aqui se empiezan a mostrar los datos de la ventana modal-->
                        <label for="telefono">Telefono</label>
                        <!--se llama nombre como la etiqueta anterior ya que es el espacio en blanco
                            para guardar el atributo perteneciente a nombre y es el mismo 
                            que usaremos dentro de nuestro ServletControlador-->
                        <!--aqui usamos el type tel para que lo que solicite sea un telefono-->
                        <input type="tel" class="form-control" name="telefono" required>
                    </div>
                    
                    
                    <!--este es el div encargado del Saldo-->
                    <div class="form-group">
                        <!--aqui se empiezan a mostrar los datos de la ventana modal-->
                        <label for="saldo">Saldo</label>
                        <!--se llama nombre como la etiqueta anterior ya que es el espacio en blanco
                            para guardar el atributo perteneciente a nombre y es el mismo 
                            que usaremos dentro de nuestro ServletControlador-->
                        <!--aqui usamos el type number para que el campo solo acepte numeros 
                            y no letras-->
                        <input type="number" class="form-control" name="saldo" required>
                    </div>
                </div>
                
                <!--este elemento va justo antes de cerrar el formulario-->
                <!--da el estilo de un footer pero dentro de la misma ventana modal-->
                <div class="modal-footer">
                    <!--este boton sera el submit de nuestro formulario-->
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>
            </form>
            
            
        </div>
    </div>
</div>