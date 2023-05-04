<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>



<html>
<head>
<title>download</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

String filename = request.getParameter("filename");

Blob f = null;

try
{

Connection conn = DB.getConnection();
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("Select * from plandata where filename='"+filename+"'");
while(rs.next())
{
	 f = rs.getBlob("file");
	 filename = rs.getString("filename");

}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}

	if(f != null)
		{
			
			byte[] ba = f.getBytes(1, (int)f.length());
			response.setContentType("image/gif");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			response.sendRedirect("");
		}
		else
		{
			System.out.println("null");
		}
	


%>

</body>

</html>