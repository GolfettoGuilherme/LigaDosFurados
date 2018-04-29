package configurator;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnector {
    
    public static final String SERVIDOR = "localhost:3306";
    public static final String BANCO = "liga_dos_furados";
    public static final String USUARIO = "root";
    public static final String SENHA = "";
    
    
    public static Connection conectar(){
        String url =  "jdbc:mysql://"+ SERVIDOR + "/" + BANCO;
        Connection conn = null;
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            conn = DriverManager.getConnection(url, USUARIO, SENHA);
                     
        } catch (Exception ex) {
           ex.printStackTrace();
        }
        return conn;
    }
}
