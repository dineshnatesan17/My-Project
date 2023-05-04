
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
	String b=request.getParameter("status");
	
	
	
	System.out.println(a+b);
	
	//String status="pending";
	
	Connection conn=DB.getConnection();
	String sql="insert into projectstatusup(date,status) values(?,?)";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, b);
	
	int aa=ps.executeUpdate();

	if(aa>0)
	{
	%>
	<script>
	alert("Project Status Updated ");
	window.location="update_project_status.jsp";
	</script>
	<% 
	}
	else
	{%>
		<script>
		alert(" Error");
		window.location="update_project_status.jsp;
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