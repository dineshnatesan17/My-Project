
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
	

	String a=request.getParameter("budget2");
	String b=request.getParameter("squarefeet3");
	System.out.println(b);
	String c=request.getParameter("budgettype4");
	String st ="Data send";
	//String status="pending";
	
	
	String sql1="update fixedmaterials set squarefeet='"+b+"',budgettype='"+c+"',projectbudget='"+a+"',status='"+st+"'";
	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();	
	System.out.println(b);

	if(r>0)
	{
	%>
	<script>
	alert("Details Send To Admin");
	window.location="arcmaterialview.jsp";
	</script>
	<% 
	}
	else
	{%>
		<script>
		alert(" Error");
		window.location="arcmaterialview.jsp;
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