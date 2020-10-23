package datos;

import dominio.Cliente;
import java.sql.*;
import java.util.*;


//Esta clase es para poder interactuar con nuestra Base de Datos
public class ClienteDaoJDBC {
    //Query para select
    private static final String SQL_SELECT = "SELECT id_cliente, nombre, apellido, email, telefono, saldo FROM cliente";
    
    //Para seleccionar un registro filtrando por id_cliente
    private static final String SQL_SELECT_BY_ID = "SELECT id_cliente, nombre, apellido, email, telefono, saldo FROM cliente WHERE id_cliente = ?";

    //Para ejecutar un Insert
    //No lleva el idCliente pues este se genera de manera automatica en la DB
    public static final String SQL_INSERT = "INSERT INTO cliente(nombre, apellido, email, telefono, saldo) VALUES(?,?,?,?,?)";

    //Para hacer una actualizacion
    private static final String SQL_UPDATE = "UPDATE cliente SET nombre=?, apellido=?, email=?, telefono=?, saldo=? WHERE id_cliente=?";

    //Para hacer un delete
    private static final String SQL_DELETE = "DELETE FROM cliente WHERE id_cliente = ?";


    //Para regresar un lista de objetos de tipo cliente
    public List<Cliente> listar() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cliente cliente = null;

        //Definimos una lista de objetos de tipo Cliente llamada clientes
        List<Cliente> clientes = new ArrayList<>();
        try {
            //establecemos conexion
            conn = Conexion.getConnection();
            //sentencia que queremos ejecutar
            stmt = conn.prepareStatement(SQL_SELECT);
            //ejecutamos el query y lo asignamos a la variable ResultSet
            rs = stmt.executeQuery();

            //Iteramos cada uno de los elementos que tengamos en este ResultSet
            //nos posicionamos en el primer registro si es que existe
            while (rs.next()) {
                //recuperamos estos valores
                int idCliente = rs.getInt("id_cliente");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                double saldo = rs.getDouble("saldo");

                //se crea un objeto de tipo cliente y lo asignamos a nuestra variable
                //cliente que habiamos definido anteriormente
                cliente = new Cliente(idCliente, nombre, apellido, email, telefono, saldo);
                //ya que se contruyo el objeto de arriba lo agregamos a nuestro listado de clientes
                clientes.add(cliente);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return clientes;
    }
    
    
    
    
    
    
    
    //Metodo para encontrar un objeto de tipo cliente
    //vamos a usar el idCliente de este objeto
    public Cliente encontrar(Cliente cliente) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            //establecemos conexion
            conn = Conexion.getConnection();
            //sentencia que queremos ejecutar
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            //proporcionamos el id del cliente que estamos buscando
            stmt.setInt(1, cliente.getIdCliente());
            //ejecutamos el query y lo asignamos a la variable ResultSet
            rs = stmt.executeQuery();
            //para indicar el registro en el que nos queremos posicionar, en caso 
            //hallamos encontrado el objeto buscado
            rs.absolute(1);//nos posicionamos en el primer registro

            //recuperamos estos valores
            String nombre = rs.getString("nombre");
            String apellido = rs.getString("apellido");
            String email = rs.getString("email");
            String telefono = rs.getString("telefono");
            double saldo = rs.getDouble("saldo");

            //asignamos los valores del objeto que ya tenemos
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setEmail(email);
            cliente.setTelefono(telefono);
            cliente.setSaldo(saldo);

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return cliente;
    }
    
    
    
    
    
    
    //Metodo para insertar un registro
    //en este metodo recibimos un objeto de tipo cliente
    public int insertar(Cliente cliente){
        
        Connection conn = null;
        PreparedStatement stmt = null;

        //variable encargada de decirnos los registros que se han modificado
        int rows = 0;
        
        try {
            //establecemos conexion
            conn = Conexion.getConnection();
            //sentencia que queremos ejecutar
            stmt = conn.prepareStatement(SQL_INSERT);
            
            //Proporcionamos cada uno de los parametros a insertar
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getEmail());
            stmt.setString(4, cliente.getTelefono());
            //aqui si usamos esta sentencia pues tambien se actualizara en nuestra DB
            stmt.setDouble(5, cliente.getSaldo());
            
            //este metodo regresa los registros que han sido modificados
            rows = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        
        return rows;
    }
    
    
    
    
    //Metodo para actualizar
    public int actualizar (Cliente cliente){
        
        Connection conn = null;
        PreparedStatement stmt = null;

        //variable encargada de decirnos los registros que se han modificado
        int rows = 0;
        
        try {
            //establecemos conexion
            conn = Conexion.getConnection();
            //sentencia que queremos ejecutar
            stmt = conn.prepareStatement(SQL_UPDATE);
            
            //Proporcionamos cada uno de los parametros a insertar
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getApellido());
            stmt.setString(3, cliente.getEmail());
            stmt.setString(4, cliente.getTelefono());
            stmt.setDouble(5, cliente.getSaldo());
            stmt.setInt(6, cliente.getIdCliente());
            
            //este metodo regresa los registros que han sido modificados
            rows = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        
        return rows;
    }
    
    
    
    
    //Metodo para eliminar
    public int eliminar(Cliente cliente){
        
        Connection conn = null;
        PreparedStatement stmt = null;

        //variable encargada de decirnos los registros que se han modificado
        int rows = 0;
        
        try {
            //establecemos conexion
            conn = Conexion.getConnection();
            //sentencia que queremos ejecutar
            stmt = conn.prepareStatement(SQL_DELETE);
            
            //solo se usara este ya que solo se ocupa este para eliminar
            stmt.setInt(1, cliente.getIdCliente());
            
            //este metodo regresa los registros que han sido modificados
            rows = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        
        return rows;
    }
}