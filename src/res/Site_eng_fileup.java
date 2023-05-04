package res;

import java.io.FileInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connection.DB;
import connection.Fileup1;
import connection.Sup;

@WebServlet("/Site_eng_fileup")
@MultipartConfig(maxFileSize = 16177215) 
public class Site_eng_fileup extends HttpServlet {

    private static final long serialVersionUID = 1L;

/*    private Sup sup;

    @Override
    public void init() {
    	sup = new Sup();
    }   */

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		 
    	 String filename = request.getParameter("filename");
         
        
         
        System.out.println(" "+filename+" ");
      

        InputStream inputStream = null; 

        //String message = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
          //  System.out.println(filePart.getContentType());

            inputStream = filePart.getInputStream();
            System.out.println(inputStream);
            
       try {
        Connection con=DB.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into siteplanup(filename,file) values(?,?)");
        
			ps.setString(1, filename);
		//	ps.setBlob(2, inputStream);
			ps.setBinaryStream(2, inputStream,(int)filePart.getSize());
	            System.out.println(filename+inputStream);

      int row = ps.executeUpdate();
      
  

        if (row > 0) {

        	
    			out.print("<html><body><script>alert('Structural Plan Uploaded successfully')</script></body></html>");
    			request.getRequestDispatcher("siteengview.jsp").include(request, response);
    		}
    		else {
    			out.print("<html><body><script>alert('sorry')</script></body></html>");
        }

       }catch (Exception e) {
    	   System.out.println(e);
       }

    }
}}