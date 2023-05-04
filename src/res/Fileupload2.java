package res;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DB;
import connection.File;
import connection.Fileup1;




@WebServlet("/Fileupload2")
public class Fileupload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private File file;

    @Override
    public void init() {
    	file = new File();
    }

	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
	     String csvFilePath = "C:/work_space/project2/";
	     String csv = csvFilePath+"WebContent/data/project2dataset.csv";
	  //   String csv = "src\\main\\webapp\\data\\project2dataset.csv";
	     // String qry = "LOAD DATA INFILE '"+csvFilePath+"' " +
	      // "INTO TABLE feedback FIELDS TERMINATED BY ',' " +
	      // "OPTIONALLY ENCLOSED by '\"'";
	     try {
	    	 String qry = "LOAD DATA INFILE '"+csv+"'" + "INTO TABLE materialdata FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 LINES";
	    	 		      
	         Connection con=DB.getConnection();
	         int ps=con.prepareStatement(qry).executeUpdate();

	    	 if (ps > 0) {

	         	
	    			out.print("<html><body><script>alert('Material Data uploaded successfully')</script></body></html>");
	    			request.getRequestDispatcher("Architechindex.html").include(request, response);
	    		}
	    		else {
	    			out.print("<html><body><script>alert('sorry')</script></body></html>");
	        }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     
	     
	     		
	}
}

