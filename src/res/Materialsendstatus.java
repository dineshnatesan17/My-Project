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
 * Servlet implementation class Logout
 */
@WebServlet("/Materialsendstatus")
public class Materialsendstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	//	String name = request.getParameter("name");
        String cementcompany = request.getParameter("cementcompany");
        String st ="Data send";
       
		try{
			String s1 = "update materialdata set status='"+st+"'";
            String s2 = "INSERT INTO fixedmaterials (cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, projectbudget, budgettype, squarefeet, status) SELECT cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, projectbudget, budgettype, squarefeet, status FROM materialdata where sandprice = 6000";
            		
			int r = DB.getConnection().prepareStatement(s1).executeUpdate();
			int r1= DB.getConnection().prepareStatement(s2).executeUpdate();
			

			if(r>0 && r1>0)
				
			{
	                	out.print("<html><body><script>alert('Data Send Successfully');</script></body></html>");
	                	RequestDispatcher rs1 = request.getRequestDispatcher("arcmaterialview.jsp");
	        			rs1.include(request, response);
		
			}
			else
			{
				out.print("<html><body><script>alert('sended Unsuccessfull');</script></body></html>");
				RequestDispatcher rs1 = request.getRequestDispatcher("arcmaterialview.jsp");
				rs1.include(request, response);
			}
		
	}catch(Exception e)
	{
		System.out.println(e);
	}

}
}

