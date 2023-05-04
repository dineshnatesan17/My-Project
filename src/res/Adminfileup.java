package res;

import java.io.BufferedReader;

import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DB;
import connection.File;




@WebServlet("/Adminfileup")
public class Adminfileup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
	//	String filename = request.getParameter("filename");
		
//	System.out.println(filename);
		String csvFilePath = "C:/work_space/project2/";
	     String csv = csvFilePath+"WebContent/traindataset/traindataset.csv";
		
 try {
	    	 
	    	 String qry = "LOAD DATA INFILE '"+csv+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 LINES";
		
	    	 PreparedStatement ps2 = DB.getConnection().prepareStatement(qry);
	    	   int i1=ps2.executeUpdate();

		    	 if (i1 > 0) {

		         	
		    			out.print("<html><body><script>alert('Trained Data Uploaded Successfully')</script></body></html>");
		    			request.getRequestDispatcher("Adindex.html").include(request, response);
		    		}
		    		else {
		    			out.print("<html><body><script>alert('sorry')</script></body></html>");
		        }
		     
		    	 
		     }catch(Exception e) {
		    	 e.printStackTrace();
		     }
		
		
/*		if (filename.equals("lowbget")) {
			
		
	     String csvFilePath = "C:/workspace/Project2/";
	     String csv = csvFilePath+"src/main/webapp/traindataset/lowtraindataset.csv";
	  //   String csv1 = csvFilePath+"src/main/webapp/traindataset/lowtraindataset.csv";
	  //   String csv2 = csvFilePath+"src/main/webapp/traindataset/mediumtraindataset.csv";
          
	  //   String csv = "src\\main\\webapp\\data\\project2dataset.csv";
	     // String qry = "LOAD DATA INFILE '"+csvFilePath+"' " +
	      // "INTO TABLE feedback FIELDS TERMINATED BY ',' " +
	      // "OPTIONALLY ENCLOSED by '\"'";

	     try {
	    	 
	    	 String qry = "LOAD DATA INFILE '"+csv+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 ROWS";
	    	// String qry1 = "LOAD DATA INFILE '"+csv1+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 ROWS";
	    	// String qry2 = "LOAD DATA INFILE '"+csv2+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 ROWS";
    
	    	// PreparedStatement ps1 = DB.getConnection().prepareStatement(q1);
	    	 PreparedStatement ps2 = DB.getConnection().prepareStatement(qry);
	    //     int ps1=con.prepareStatement(qry1).executeUpdate();
	    //     int ps2=con.prepareStatement(qry2).executeUpdate();
              //   ps1.setString(1, filename);
              //   int i=ps1.executeUpdate();
                 int i1=ps2.executeUpdate();

	    	 if (i1 > 0) {

	         	
	    			out.print("<html><body><script>alert('Traindata updated')</script></body></html>");
	    			request.getRequestDispatcher("Adminindex.html").include(request, response);
	    		}
	    		else {
	    			out.print("<html><body><script>alert('sorry')</script></body></html>");
	        }
	     
	    	 
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     
		}
		else if (filename.equals("mediumbudget")) {
			
			
		     String csvFilePath = "C:/workspace/Project2/";
		     String csv = csvFilePath+"src/main/webapp/traindataset/mediumtraindataset.csv";
		
		     try {
		    	 
		    	 String qry = "LOAD DATA INFILE '"+csv+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 ROWS";
		
		    	 PreparedStatement ps2 = DB.getConnection().prepareStatement(qry);
                 int i1=ps2.executeUpdate();
                 if (i1 > 0) {

     	         	
 	    			out.print("<html><body><script>alert('Traindata updated')</script></body></html>");
 	    			request.getRequestDispatcher("Adminindex.html").include(request, response);
 	    		}
 	    		else {
 	    			out.print("<html><body><script>alert('sorry')</script></body></html>");
 	        }
 	     
 	    	 
 	     }catch(Exception e) {
 	    	 e.printStackTrace();
 	     }
 	     
 		}
		else if (filename.equals("highbudget")) {
			
			
		     String csvFilePath = "C:/workspace/Project2/";
		     String csv = csvFilePath+"src/main/webapp/traindataset/hightraindataset.csv";
		
		     try {
		    	 
		    	 String qry = "LOAD DATA INFILE '"+csv+"'" + "INTO TABLE traindataset FIELDS TERMINATED BY ',' " +"OPTIONALLY ENCLOSED by '\"'"+ "IGNORE 1 ROWS";
		
		    	 PreparedStatement ps2 = DB.getConnection().prepareStatement(qry);
                int i1=ps2.executeUpdate();
                if (i1 > 0) {

    	         	
	    			out.print("<html><body><script>alert('Traindata updated')</script></body></html>");
	    			request.getRequestDispatcher("Adminindex.html").include(request, response);
	    		}
	    		else {
	    			out.print("<html><body><script>alert('sorry')</script></body></html>");
	        }
	     
	    	 
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     
		}	*/	
	}
}

