package connection;

import java.io.InputStream;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class File {

   
	


	public int uploadFile(String filename) {
        int row = 0;
        try {
        Connection con=DB.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into traindatasetcategory values(?)"); 
             {
 				ps.setString(1, filename);
 				
            
			

            row = ps.executeUpdate();

        }
             }catch (SQLException e) {
          System.out.println(e);
        }
        return row;
    }
    
	  

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    
}
}