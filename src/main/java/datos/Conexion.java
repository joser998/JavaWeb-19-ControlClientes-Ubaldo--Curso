package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

//Esta clase corresponde  a la capa logica de datos
//es para establecer conexion con la base de datos...
public class Conexion {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/control_clientes?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "admin";

    
    /*Explicacion Pool de Conexiones:
      El pool coge una de las conexiones que ya tiene abierta, la marca como que 
      alguien la está usando para no dársela a nadie más y la devuelve. 
      La siguiente llamada a este método pool.getConnection(), buscará una 
      conexión libre para marcarla como ocupada y la devolverá ... y así 
        sucesivamente...
    */
    /*
      Cuando el que ha pedido la conexión termina de usarla, normalmente después de 
      una transacción con la base de datos o varias seguidas, llama al método 
      connection.close(). 
      Esta conexión que nos ha sido entregada por el pool, realmente no se cierra 
      con esta llamada. El método close() únicamente avisa al pool que ya hemos 
      terminado con la conexión, de forma que sin cerrarla, la marca como libre 
      para poder entregársela a otro que lo pida, sigue el siguiente esquema:
    
      Se le pide al pool una conexion libre  
      Connection conexion = pool.getConnection();  
    
      Se hace una o más transacciones: select, update, insert, delete ...
      Se libera la conexión para su posible uso por otro hilo
    
      conexion.close();
    */
    //Esta es la configuracion de este pool de conexiones
    //retorna un objeto de tipo DataSource
    public static DataSource getDataSource(){
        BasicDataSource ds = new BasicDataSource();
        ds.setUrl(JDBC_URL);
        ds.setUsername(JDBC_USER);
        ds.setPassword(JDBC_PASSWORD);
        //el pool se inicia con 50 conexiones
        ds.setInitialSize(50);
        
        return ds;
    }
            
    //Metodo para obtener una conexion hacia la base de datos
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection();
    }
    
    //para cerrar el objeto resultset
    public static void close(ResultSet rs){
        try {
            rs.close();
        } catch (SQLException ex) {
            //se manda esta excepcion a la salida estandar
            ex.printStackTrace(System.out);
        }
    }
    
    //para cerrar un objeto de tipo PreparedStatement
    public static void close(PreparedStatement stmt){
        try {
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
    
    //para cerrar objeto de tipo conexion
    public static void close(Connection conn){
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
    
    
    
    
    
    
    
    
    
    
}