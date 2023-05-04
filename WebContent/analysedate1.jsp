<%@page import="org.apache.poi.util.SystemOutLogger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.ParseException" %>
<%@ page import = "java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	

	String a=request.getParameter("dateofcompletion1");
	System.out.println(a);
	String b=request.getParameter("squarefeet1");
	System.out.println(b);
	String c=request.getParameter("budgettype3");
	System.out.println(c);
	String st ="Possible";
	String st1 = "Not Possible";
	int squarefeet2 = Integer.parseInt(b);
	//String status="pending";
	%>
	
	<!-- squarefeet range 1000 to 1300  one year is fixed for completion -->
	
	<% 
	if(squarefeet2 >= 1000 && squarefeet2 <= 1200 ){
	  try {
          SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
          sdf.setLenient(false);

          Date d1 = sdf.parse("09/21/2022");
          Date d2 = sdf.parse(a);
          Date d3 = sdf.parse("09/21/2023");
          System.out.println(d2);
       %>
       <% 
         
                if ((d2.compareTo(d3) <= 0) && (d2.compareTo(d1) >= 0)) {
                	String sql1="update siteengviewany set status='"+st1+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();	
                    System.out.println("d2 is in between d1 and d2");
                    %>   <script>
                   	alert("Not Possible");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                	
                } else {
                	String sql1="update siteengviewany set status='"+st+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();
                       System.out.println("possible");
                    %>   <script>
                   	alert("Possible To Complete ");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                }
       
          
   } catch (ParseException pe) {
          pe.printStackTrace();
   }
	}
%>
<!--  squarefeet range 1300 to 1600  one and half year is fixed for completion-->

<% 
  if(squarefeet2 >= 1300 && squarefeet2 <= 1600 ){
	  try {
          SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
          sdf.setLenient(false);

          Date d1 = sdf.parse("09/21/2022");
          Date d2 = sdf.parse(a);
          Date d3 = sdf.parse("03/21/2024");
          System.out.println(d2);
       %>
       <% 
         
                if ((d2.compareTo(d3) <= 0) && (d2.compareTo(d1) >= 0)) {
                	String sql1="update siteengviewany set status='"+st1+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();	
                    System.out.println("d2 is in between d1 and d2");
                    %>   <script>
                   	alert("Not Possible");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                	
                } else {
                	String sql1="update siteengviewany set status='"+st+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();
                       System.out.println("possible");
                    %>   <script>
                   	alert("Possible To Complete ");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                }
       
          
   } catch (ParseException pe) {
          pe.printStackTrace();
   }
	}
%>
<!--  squarefeet range 1300 to 1600 2years fixed for completion -->

<% 
 if(squarefeet2 >= 1650 && squarefeet2 <= 1800 ){
	  try {
          SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
          sdf.setLenient(false);

          Date d1 = sdf.parse("09/21/2022");
          Date d2 = sdf.parse(a);
          Date d3 = sdf.parse("09/21/2024");
          System.out.println(d2);
       %>
       <% 
         
                if ((d2.compareTo(d3) <= 0) && (d2.compareTo(d1) >= 0)) {
                	String sql1="update siteengviewany set status='"+st1+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();	
                    System.out.println("d2 is in between d1 and d2");
                    %>   <script>
                   	alert("Not Possible");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                	
                } else {
                	String sql1="update siteengviewany set status='"+st+"'";
                	int r = DB.getConnection().prepareStatement(sql1).executeUpdate();
                       System.out.println("possible");
                    %>   <script>
                   	alert("Possible To Complete ");
                   	window.location="analysedate.jsp";
                   	</script>
                   	<% 
                }
       
          
   } catch (ParseException pe) {
          pe.printStackTrace();
   }
	}
%>


</body>
</html>