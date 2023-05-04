package res;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DB;

/**
 * Servlet implementation class dataanalyreq
 */
@WebServlet("/Qa_per_to_esti")
public class Qa_per_to_esti extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String reason = request.getParameter("reason");
	//	String id = request.getParameter("id");

		
		String st ="Accepted";
	
		try{
		//	String s = "INSERT INTO clientregform1 SELECT * FROM clientregform WHERE UserName='"+UserName+"' ";
			String s1 = "update updatedestimatecost set status='"+st+"' where reason='"+reason+"'";
		//	String s2 = "update clientregform1 set status='"+st+"' where UserName='"+UserName+"'";
		//	String s3 = "update udata set status1='"+st+"' where id='"+id+"'";
		//	int r = DB.getConnection().prepareStatement(s).executeUpdate();
			int r1 = DB.getConnection().prepareStatement(s1).executeUpdate();
	//		int r2 = DB.getConnection().prepareStatement(s2).executeUpdate();
	//		int r3 = DB.getConnection().prepareStatement(s3).executeUpdate();

					
			if(r1>0)
			
				{
					out.print("<html><body><script>alert(' Estimation Accepted');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("qa_esti_view.jsp");
					rs1.include(request, response);
				}
				else 
				{
					out.print("<html><body><script>alert(' Estimation Accepted');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("qa_esti_view.jsp");
					rs1.include(request, response);
				}
			
		}catch(Exception e)
		{
			System.out.println(e);
		}

	}
	}


