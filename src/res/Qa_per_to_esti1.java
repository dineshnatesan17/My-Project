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
@WebServlet("/Qa_per_to_esti1")
public class Qa_per_to_esti1 extends HttpServlet {
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
System.out.println(reason);
		
		String st ="Rejected";
	
		try{
		//	String s = "INSERT INTO clientregform1 SELECT * FROM clientregform WHERE UserName='"+UserName+"' ";
		//	String s1 = "delete from clientregform where UserName='"+UserName+"'";
		//	String s2 = "update clientregform set status='"+st+"' where UserName='"+UserName+"'";
		//	String s3 = "update clientregform1 set status='"+st+"' where UserName='"+UserName+"'";
			String s1 = "update updatedestimatecost set status='"+st+"' where reason='"+reason+"'";
			String s2 = "INSERT INTO rejectedestimation (cement,steel,brick,sand,tiles,fittings,Architecture,labour,reason,total,status) SELECT cement,steel,brick,sand,tiles,fittings,Architecture,labour,reason,total,status FROM updatedestimatecost WHERE reason='"+reason+"' ";
			String s3 = "delete from updatedestimatecost where reason='"+reason+"'";
			int r = DB.getConnection().prepareStatement(s1).executeUpdate();
			int r1 = DB.getConnection().prepareStatement(s2).executeUpdate();
			int r2 = DB.getConnection().prepareStatement(s3).executeUpdate();
		//	int r3 = DB.getConnection().prepareStatement(s3).executeUpdate();
		//	int r4 = DB.getConnection().prepareStatement(s1).executeUpdate();


					
			if(r>0 && r1>0 && r2>0)
			
				{
					out.print("<html><body><script>alert('Estimation Rejected');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("qa_esti_view.jsp");
					rs1.include(request, response);
				}
				else
				{
					out.print("<html><body><script>alert('Estimation Rejected');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("qa_esti_view.jsp");
					rs1.include(request, response);
				}
			
		}catch(Exception e)
		{
			System.out.println(e);
		}

	}
	}


