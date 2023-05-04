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
@WebServlet("/Adminpertoarc1")
public class Adminpertoarc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String filename = request.getParameter("filename");
		//String id = request.getParameter("id");
		String res = request.getParameter("reason");

System.out.println(filename);
System.out.println(res);
		
		String st ="Rejected";
	
		try{
		//	String s = "INSERT INTO clientregform1 SELECT * FROM clientregform WHERE UserName='"+UserName+"' ";
		//	String s1 = "delete from clientregform where UserName='"+UserName+"'";
			String s1 = "update plandata set reason='"+res+"' where filename='"+filename+"'";
			String s2 = "update plandata set status='"+st+"' where filename='"+filename+"'";
			String s3 = "INSERT INTO rejectedplan (filename,file,status,reason) SELECT filename,file,status,reason FROM plandata WHERE filename='"+filename+"' ";
			String s4 = "delete from plandata where filename='"+filename+"'";
			//	String s3 = "update clientregform1 set status='"+st+"' where UserName='"+UserName+"'";
		//	String s4 = "update udata set status='"+st+"' where id='"+id+"'";
			
		//	int r = DB.getConnection().prepareStatement(s).executeUpdate();
			int r1 = DB.getConnection().prepareStatement(s1).executeUpdate();
			int r2 = DB.getConnection().prepareStatement(s2).executeUpdate();
			int r3 = DB.getConnection().prepareStatement(s3).executeUpdate();
			int r4 = DB.getConnection().prepareStatement(s4).executeUpdate();


					
			if(r2>0 && r1>0 && r3>0 && r4>0)
			
				{
					out.print("<html><body><script>alert('Architech plan Rejected');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("adminviewplan.jsp");
					rs1.include(request, response);
				}
				else
				{
					out.print("<html><body><script>alert('Rejected');</script></body></html>");
					RequestDispatcher rs1 = request.getRequestDispatcher("adminviewplan.jsp");
					rs1.include(request, response);
				}
			
		}catch(Exception e)
		{
			System.out.println(e);
		}

	}
	}


