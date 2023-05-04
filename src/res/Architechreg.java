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
@WebServlet("/Architechreg")
public class Architechreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("cpassword");
     System.out.println(username+email+password+confirmPassword);
    try {
		Connection con = DB.getConnection();
  	    PreparedStatement ps = con.prepareStatement("insert into architechlogreg(username,email,password,confirmPassword) values(?,?,?,?)");
          
  	    ps.setString(1, username);
  	    ps.setString(2, email);
  	    ps.setString(3, password);
  	    ps.setString(4, confirmPassword);
  	     System.out.println(username+email+password+confirmPassword);

		int status = ps.executeUpdate();
	     System.out.println(username+email+password+confirmPassword);

		if(status>0)
			
		{
			out.print("<html><body><script>alert('Architect Registeration Successfull');</script></body></html>");
			RequestDispatcher rs1 = request.getRequestDispatcher("architechlogregindex.html");
			rs1.include(request, response);
		}
		else
		{
			out.print("<html><body><script>alert('Architect Registration Unsuccessfull');</script></body></html>");
			RequestDispatcher rs1 = request.getRequestDispatcher("architechlogregindex.html");
			rs1.include(request, response);
		}


    	
    }catch(Exception e)
    {
    	System.out.println(e);
    }


	}

}
