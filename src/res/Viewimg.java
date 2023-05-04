package res;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DB;

/**
 * Servlet implementation class D
 */
@WebServlet("/Viewimg")
public class Viewimg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String filename = request.getParameter("squarefeet");
        System.out.println(filename);
		Blob b = null;
		
		try
		{

			Connection con=DB.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("Select file from plandata where filename= '"+filename+"'");
		while(rs.next())
		{
			 b = rs.getBlob("file");
			
		}
		
		}
		catch(Exception e1)
		{
		
		}

			if(b != null)
				{
					try {
						byte[]	ba = b.getBytes(1, (int)b.length());
					 
					response.setContentType("text");
					
					OutputStream os = response.getOutputStream();
					os.write(ba);
					os.close();
					ba = null;
				}catch (SQLException e) {
						e.printStackTrace();
					}
					
	}

}
}
