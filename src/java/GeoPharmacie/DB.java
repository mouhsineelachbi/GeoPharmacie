package GeoPharmacie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DB {
    public Connection getConnection() throws ClassNotFoundException, SQLException{
        String url  = "jdbc:mysql://localhost:3306/geophar";
        String driver = "com.mysql.jdbc.Driver";
        Class.forName(driver);
        Connection con =DriverManager.getConnection(url, "root", "");
        return con;
    }
}
