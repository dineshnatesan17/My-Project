package connection;

import java.io.InputStream;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class Fileup1 {

   
	


	public int uploadFile(String filename,Blob file) {
        int row = 0;
        try {
        Connection con=DB.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into plandata values(?,?)"); 
             {
 				ps.setString(1, filename);
 				
            
			if (file != null) {
                ps.setBlob(2, file);
                
            }

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