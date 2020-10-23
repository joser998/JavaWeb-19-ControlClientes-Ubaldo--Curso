package dominio;

//Clase del Dominio del problema.
/*Esta clase se usara desde la capa de datos hasta la capa de presentacion, usara el 
  patron de diseño DTO */
//Tendra una mapeo con la base de datos con la tabla de cliente
public class Cliente {
    //Estamos mapeando cada una de las columnas de la DB con estos atributos definidos
    //en esta clase...
    private int idCliente;
    private String nombre;
    private String apellido;
    private String email;
    private String telefono;
    private double saldo;

    //Constructor Vacio
    public Cliente() {}

    //Constructor recibe idCliente
    //En ocasiones vamos a necesitar crear objetos de tipo cliente unicamente 
    //asignando el id.
    //Igual al querer borrar un registro de la DB bastara con encontrar este id
    public Cliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
    
    //Sobre carga de contructores
    //agregamos aqui todos los atributos excepto el idCliente ya que en ocasiones
    //necesitaremos insertar, etc, todos menos este id.
    //Este contructor tambien servira para cuando queramos agregar un objeto de 
    //tipo cliente a la base de datos
    public Cliente(String nombre, String apellido, String email, String telefono, double saldo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.telefono = telefono;
        this.saldo = saldo;
    }
    
   
    //Constructor con todos los elementos
    //Tambien sera necesario para cuando queramos modificar todos los elementos
    public Cliente(int idCliente, String nombre, String apellido, String email, String telefono, double saldo) {
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.telefono = telefono;
        this.saldo = saldo;
    }

    
    //Metodos Getter y Setter
    public int getIdCliente() {
        return idCliente;
    }
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public double getSaldo() {
        return saldo;
    }
    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
    
    
    //Metodo toString()
    //Nos retorna toda la informacion de los objetos y la imprime directo en la consola
    @Override
    public String toString() {
        return "Cliente{" + "idCliente=" + idCliente + ", nombre=" + nombre + ", apellido=" + apellido + ", email=" + email + ", telefono=" + telefono + ", saldo=" + saldo + '}';
    }
}