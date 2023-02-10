/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DN68
 */
public class DBcontext {

    public Connection getConnection() throws ClassNotFoundException, SQLException {

        String url = "jdbc:sqlserver://" + serverName + ":" + portName + ";databaseName = "
                + dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userName, password);
    }

    private final String serverName = "localhost";
    private final String portName = "1433";
    private final String dbName = "PRJ301_SP22";
    private final String userName = "sa";
    private final String password = "duynguyen68";
    //lưu ý: không viết bất kỳ một method hoặc một cái gì lên DBContext
    //chỉ có thay đổi cho: serverName;portName,dbName,userName,password
    public static void main(String[] args) {
        try {
            System.out.println(new DBcontext().getConnection());
        } catch (Exception e) {
        }
    }
    
}
