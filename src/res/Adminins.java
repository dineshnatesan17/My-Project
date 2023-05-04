package res;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DB;

/**
 * Servlet implementation class Userreg
 */
@WebServlet("/Adminins")
public class Adminins extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String type = request.getParameter("type");
		String budget = request.getParameter("budget");
		
     System.out.println(type+budget);
    try {
		Connection con = DB.getConnection();
  	    PreparedStatement ps = con.prepareStatement("insert into traindatasetcategory values(?,?)");
          
  	    ps.setString(1, type);
  	    ps.setString(2, budget);
  	    
  	     System.out.println(type+budget);

		int status = ps.executeUpdate();
	     System.out.println(type+budget);

		if(status>0)
			
		{
			out.print("<html><body><script>alert('Project Instruction Updated Successfully');</script></body></html>");
			RequestDispatcher rs1 = request.getRequestDispatcher("arctraindatafilter.html");
			rs1.include(request, response);
		}
		else
		{
			out.print("<html><body><script>alert(' Unsuccessfull');</script></body></html>");
			RequestDispatcher rs1 = request.getRequestDispatcher("arctraindatafilter.html");
			rs1.include(request, response);
		}


    	
    }catch(Exception e)
    {
    	System.out.println(e);
    }


	}

}
