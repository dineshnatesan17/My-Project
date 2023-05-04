
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
	

	String a=request.getParameter("cement");
	String b=request.getParameter("steel");
	String c=request.getParameter("brick");
	String d=request.getParameter("sand");
	String e=request.getParameter("tiles");
	String f=request.getParameter("fittings");
	String g=request.getParameter("Architecture");
	String h=request.getParameter("labour1");
	String i = request.getParameter("reason");
	
	String re = request.getParameter("re1");
	
	double d0 = Double.parseDouble(a);
	double d1 = Double.parseDouble(b);
	double d2 = Double.parseDouble(c);
	double d3 = Double.parseDouble(d);
	double d4 = Double.parseDouble(e);
	double d5 = Double.parseDouble(f);
	double d6= Double.parseDouble(g);
	double d7 = Double.parseDouble(h);
	System.out.println(a+" "+b+" "+c+" "+d+" "+e+" "+f+" "+g+" "+h+" "+i);
	double total = (d0+d1+d2+d3+d4+d5+d6+d7);
	System.out.println(total);
	System.out.println(re);

	//String status="pending";
	
	Connection conn=DB.getConnection();
	String sql="insert into updatedestimatecost(cement,steel,brick,sand,tiles,fittings,Architecture,labour,reason,total) values(?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e);
	ps.setString(6, f);
	ps.setString(7, g);
	ps.setString(8, h);
	ps.setString(9, i);
	ps.setDouble(10, total);
	int aa=ps.executeUpdate();

	if(aa>0)
	{
	%>
	<script>
	alert("Estimation Updated successfully");
	window.location="siteengalterestimation2.jsp?res=<%=request.getParameter("reason")%>";
	</script>
	<% 
	}
	else
	{%>
		<script>
		alert(" Error");
		window.location="siteengalterestimation2.jsp;
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