package res;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DB;

/**
 * Servlet implementation class Userlog
 */
@WebServlet("/QAlog")
public class QAlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("Password");
		
		System.out.println(email+" "+password);
		try {
			Connection con = DB.getConnection();
	  	    PreparedStatement ps = con.prepareStatement("Select * from QAlogreg where email=? and password=?");
	    	ps.setString(1, email);
		   	ps.setString(2, password);
		   	ResultSet rs = ps.executeQuery();
		   	if(rs.next())
		   	{
		   		out.print("<html><body><script>alert('Quality Analyser Login Successfully');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("QAengineerindex.html");
				rs1.include(request, response);
			}
			else
			{
				out.print("<html><body><script>alert('Login Unsuccessfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("QAenglogregindex.html");
				rs1.include(request, response);
			}
		   				
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
