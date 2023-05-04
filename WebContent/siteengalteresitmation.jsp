<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page isELIgnored="false"%>
<%@page import="connection.DB"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.button{
  background: #FF4742;
  border: 1px solid #FF4742;
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: nunito,roboto,proxima-nova,"proxima nova",sans-serif;
  font-size: 16px;
  font-weight: 800;
  line-height: 16px;
  min-height: 40px;
  outline: 0;
  padding: 12px 14px;
  text-align: center;
  text-rendering: geometricprecision;
  text-transform: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  margin-right: 485px;
}

.button:hover,
.button:active {
  background-color: grey;
  background-position: 0 0;
  color: white;
}

.button:active {
  opacity: .5;
}


</style>
<title>Material Analysing index</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Home Loan Application Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="assets7/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="assets7/css/jquery-ui.css" />
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=GFS+Neohellenic:400,400i,700,700i&amp;subset=greek" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body style="background-image: url('images/1.jpg');">
	<div class="center-container">
		<!--header-->
		<div class="header-w3l">
			<h1>Update Estimation</h1>
			<form action="SiteEngineerindex.html">
<button class="button">BACK</button><br>
</form><br>
		</div>
		<!--//header-->
		<!--main-->
	<div class="agileits-register">
		<form action="siteengalterestimation1.jsp" method="post">
		<% 
		String budget = request.getParameter("budget2");
		String squarefeet = request.getParameter("squarefeet2");
		String budgettype5 = request.getParameter("budgettype4");

		//String typeofbuilding =null;
        Statement st = null;
    	ResultSet rs = null;
    	try {
    		Connection con = DB.getConnection();
    		st = con.createStatement();
    		String qry ="SELECT * FROM materialcost"; 
    		rs = st.executeQuery(qry);
    		if (rs.next()) {
    		//	typeofbuilding = rs.getString("typeofbuilding");
    		
    		}
    	}catch(Exception ex){out.println(ex);}
		
    	%>
    		
		
		
		
				
				<div class="w3_modal_body_grid">
				<input type="hidden" value=<%=rs.getDouble("cement")%> name="cement">
					<span>Cement</span>
					<input type="email" name="cement" readonly placeholder="Enter the budget" value=<%=rs.getDouble("cement")%> required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("steel")%> name="steel">
					<span>Steel</span>
					<input type="text" name="steel" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("steel")%> required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("brick")%> name="brick">
					<span>Brick</span>
					<input type="text" name="brick" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("brick")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("sand")%> name="sand">
					<span>Sand</span>
					<input type="text" name="sand" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("sand")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("tiles")%> name="tiles">
					<span>Tiles</span>
					<input type="text" name="tiles" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("tiles")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("fittings")%> name="fittings">
					<span>Fittings</span>
					<input type="text" name="fittings" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("fittings")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("Architecture")%> name="Architecture">
					<span>Architecture</span>
					<input type="text" name="Architecture" readonly placeholder="Enter the square feet" value=<%=rs.getDouble("Architecture")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_gri w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("labour")%> name="labour">
					<span>Labour</span>
					<input type="text" name="labour1"  placeholder="Enter the square feet" value=<%=rs.getDouble("labour")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<input type="hidden" value=<%=rs.getDouble("total")%> name="total">
					<span>Total</span>
					<input type="text" name="total"  readonly placeholder="Enter the square feet" value=<%=rs.getDouble("total")%> required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					
					<span>Reason</span>
					<input type="hidden"  name="re1">
					<textarea name="reason" style="width: 200px;height: 100px; padding: 10px; border:3px dashed indigo; background-color:black; color: white"> </textarea>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid">
				
				<input type="submit" value="UPDATE" />
				<div class="clear"></div>
			</form>
		</div>
		
		<!--//main-->
		
	</div>
	<!--footer-->
		<div class="footer">
			<h2> <a href="http://w3layouts.com"></a></h2>
		</div>
		<!--//footer-->
<!-- js -->
<script type="text/javascript" src="assets7/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- Calendar -->
<script src="assets7/js/jquery-ui.js"></script>
	<script>
	  $(function() {
		$( "#datepicker" ).datepicker();
	 });
	</script>
<!-- //Calendar -->		

</body>
</html>