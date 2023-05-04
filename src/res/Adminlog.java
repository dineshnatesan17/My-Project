package res;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlog
 */
@WebServlet("/Adminlog")
public class Adminlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	        String name=request.getParameter("Name");  
	        String password=request.getParameter("Password");  
	          
			if(name.equals("admin") && password.equals("admin123")){
		   		out.print("<html><body><script>alert('Admin Login Successfully');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("Adindex.html");
				rs1.include(request, response);
			}
			else
			{
				out.print("<html><body><script>alert('Admin Login Unsuccessfully');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("adminlogindex.html");
				rs1.include(request, response);
			}
		   		
	        out.close();  
	    }  
	} 
