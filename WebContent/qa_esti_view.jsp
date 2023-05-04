<%@page import="org.apache.poi.util.SystemOutLogger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700');

$base-spacing-unit: 24px;
$half-spacing-unit: $base-spacing-unit / 2;

$color-alpha: #1772FF;
$color-form-highlight: #EEEEEE;

*, *:before, *:after {
	box-sizing:border-box;
}

body {
	padding:$base-spacing-unit;
	font-family:'Source Sans Pro', sans-serif;
	margin:0;
}

h1,h2,h3,h4,h5,h6 {
	margin:0;
}

.container {
	margin-top:200px;
	max-width: 1500px;
	margin-right:auto;
	margin-left:auto;
	display:flex;
	justify-content:center;
	align-items:center;
}

.table {
	width:100%;
	border:100px solid $color-form-highlight;
	padding-bottom: 50px;
}

.table-header {
	display:flex;
	width:100%;
	background:#000;
	padding:($half-spacing-unit * 1.5) 0;
	justify-content:center;
     	align-items:center;
     	
}
.table-header{
     height:10vh;
     	width:100%;
     
     	justify-content:center;
     	align-items:center;
     


}
.table-row {
	display:flex;
	    
	
	width:100%;
	padding:($half-spacing-unit * 1.5) 0;
	
	&:nth-of-type(odd) {
		background:$color-form-highlight;
	}
}
.table-row{
   height:30vh;
   width:100%;
   color:white;
   	background:grey;
   	justify-content:center;
     	align-items:center;
   padding-bottom: 20px;
}

.divScroll
{
Width-5px;
Height-10 px;
Overflow-x:scroll;
}

.table-data, .header__item {
	flex: 1 1 20%;
	text-align:center;
}

.header__item {
	text-transform:uppercase;
}
.table-data{
padding-right: 0px;
	padding-left: 0px;

}

.filter__link {
	color:white;
	text-decoration: none;
	position:relative;
	display:inline-block;
	padding-left:$base-spacing-unit;
	padding-right:$base-spacing-unit;
	
	&::after {
		content:'';
		position:absolute;
		right:-($half-spacing-unit * 1.5);
		color:white;
		font-size:$half-spacing-unit;
		top: 50%;
		transform: translateY(-50%);
	}
	
	&.desc::after {
		content: '(desc)';
	}

	&.asc::after {
		content: '(asc)';
	}
	
}
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
}

.button:hover,
.button:active {
  background-color: black;
  background-position: 0 0;
  color: white;
}

.button:active {
  opacity: .5;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('images/1.jpg');">

<div class="container">
	
	<div class="table">
	<center><h2 style="color:white;background-color:black;font-size:46px;"> UPDATED ESTIMATION</h2></center><br>
	<form action="QAengineerindex.html">
<button class="button">BACK</button><br>
</form><br>
		<div class="table-header">
		
			<div class="header__item"><a id="wins" class="filter__link filter__link--number" href="#">Cement</a></div>
			<div class="header__item"><a id="losses" class="filter__link filter__link--number" href="#">Steel</a></div>
			<div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Brick</a></div>
		    <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Sand</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Tiles</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Fittings</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Architecture Cost</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Labour Cost</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Reason</a></div>
			 <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Total Cost</a></div>
			<div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Status</a></div>
		   <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Action</a></div>
		  <div class="header__item"><a id="total" class="filter__link filter__link--number" href="#">Action</a></div>
		     
		</div><br>
		
		 <% 	 
					// HttpSession session1 = request.getSession();
					  String budget1 = request.getParameter("budget");
					  String squarefeet1 = request.getParameter("squarefeet");
					  String budgettype5 = request.getParameter("budgettype4");
			          
					//  int squarefeet2 = Integer.parseInt(squarefeet1);
			    //      double cementq = squarefeet1 * cement;
					  System.out.println(budget1);
					  System.out.println(squarefeet1);
					  System.out.println(budgettype5);
				//	  int lowtotal = squarefeet2 * 800; 
				//	  int medtotal = squarefeet2 * 1000;
				//	  int higtotal = squarefeet2 * 1200;
			        %>
			        
			        <%
			        
        	try{
				 	
					 Connection con=DB.getConnection();  
		             Statement stmt = con.createStatement();  
		            // if(budget2 == 9990000){
         
		            	ResultSet rs = stmt.executeQuery("SELECT * FROM updatedestimatecost ");  
		             
				 		while(rs.next())
				  		{
				  			%>
		<div class="table-content">	
			<div class="table-row">		
				<div class="table-data">
							<h4 style="color: black;">QUANTITY: 12.8%</h4>
							<h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("cement") %> </div>
							<div class="table-data">
							<h4 style="color: black;">QUANTITY: 11%</h4><br>
							<h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("steel") %> </div>
							<div class="table-data">
							<h4 style="color: black;">QUANTITY: 4%</h4><br>
							<h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("brick") %> </div>
							<div class="table-data">
							<h4 style="color: black;">QUANTITY: 6.2</h4><br>
							<h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("sand")  %></div>
							
							<div class="table-data">
							<h4 style="color: black;">QUANTITY: 10%</h4><br>
							<h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("tiles")%></div>
						    <div class="table-data">
						    <h4 style="color: black;">QUANTITY: 8%</h4><br>
						    <h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("fittings")%></div>
							<div class="table-data">
						    <h4 style="color: black;">QUANTITY: 10%</h4><br>
						    <h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("Architecture") %></div>
				            <div class="table-data">
						    <h4 style="color: black;">QUANTITY: 37%</h4><br>
						    <h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("labour") %></div>
							<div class="table-data"><br><br>
						    <h4 style="color: black;"></h4>
							<%=rs.getString("reason") %></div>
							<div class="table-data"><br><br>
						    <h4 style="color: black;">PRICE</h4>
							<%=rs.getDouble("total") %></div>
							<div class="table-data"><br><br>
						    <h4 style="color: black;"></h4>
							<%=rs.getString("status") %></div>
				
		<div class="table-data"><td> <form method="post" action="Qa_per_to_esti" >
		<input type="hidden" name="reason" value="<%=rs.getString("reason")%>">
               <button id="myBtn"  style="background:green; color:white; height:40px; width:90px;">Accept</button>
                </form></td></div>
                
                <div class="table-data"><td> <form method="post" action="Qa_per_to_esti1">
                <input type="hidden" name="reason" value="<%=rs.getString("reason")%>">
               <button id="myBtn" style="background:red; color:white; height:40px; width:90px;">Reject</button>
                </form></td></div>
                
                
			</div>
		</div>	
		<%
					    }
		          //   }
		             
		             
		             
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
      
			        
					    	%>
					    	
				    	
					    	
					   	
	</div>
</div>
<script>
var properties = [
	'name',
	'wins',
	'draws',
	'losses',
	'total',
];

$.each( properties, function( i, val ) {
	
	var orderClass = '';

	$("#" + val).click(function(e){
		e.preventDefault();
		$('.filter__link.filter__link--active').not(this).removeClass('filter__link--active');
  		$(this).toggleClass('filter__link--active');
   		$('.filter__link').removeClass('asc desc');

   		if(orderClass == 'desc' || orderClass == '') {
    			$(this).addClass('asc');
    			orderClass = 'asc';
       	} else {
       		$(this).addClass('desc');
       		orderClass = 'desc';
       	}

		var parent = $(this).closest('.header__item');
    		var index = $(".header__item").index(parent);
		var $table = $('.table-content');
		var rows = $table.find('.table-row').get();
		var isSelected = $(this).hasClass('filter__link--active');
		var isNumber = $(this).hasClass('filter__link--number');
			
		rows.sort(function(a, b){

			var x = $(a).find('.table-data').eq(index).text();
    			var y = $(b).find('.table-data').eq(index).text();
				
			if(isNumber == true) {
    					
				if(isSelected) {
					return x - y;
				} else {
					return y - x;
				}

			} else {
			
				if(isSelected) {		
					if(x < y) return -1;
					if(x > y) return 1;
					return 0;
				} else {
					if(x > y) return -1;
					if(x < y) return 1;
					return 0;
				}
			}
    		});

		$.each(rows, function(index,row) {
			$table.append(row);
		});

		return false;
	});

});

</script>
</body>
</html>