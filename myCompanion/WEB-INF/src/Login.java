import java.sql.*;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  

public class Login extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
       try{
            //Initialise all the information regarding Database Connection
            String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            //database name to access
            String dbName = "mybness";
            String dbUserName = "root";
            String dbPassword = "";
            String password = null;

            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL + dbName, dbUserName, dbPassword);
            
            
        }
        catch (Exception e){
            e.printStackTrace();
        } 
    }
}