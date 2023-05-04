
<%@page import="org.apache.poi.util.SystemOutLogger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	

	String a=request.getParameter("date");
	System.out.println(a);
	
	//String st ="Data send";
	//String status="pending";
	
	
	String sql1="update updatedestimatecost set fixeddate='"+a+"'";
	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();	
	System.out.println(a);

	if(r>0)
	{
	%>
	<script>
	alert("Project Date updated Successfully");
	window.location="site_view_datefix.jsp";
	</script>
	<% 
	}
	else
	{%>
		<script>
		alert(" Error");
		window.location="site_view_datefix1.jsp;
		</script>
<% 	}
	
}
catch(Exception ex)
{
	ex.printStackTrace();
}
%>
</body>
</html>