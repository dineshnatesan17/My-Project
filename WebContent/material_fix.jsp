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
	margin-top:0px;
	max-width: 1500px;
	margin-right:auto;
	margin-left:auto;
	display:flex;
	justify-content:center;
	align-items:center;
	min-height:10vh;
}

.table {
	width:100%;
	border:100px solid $color-form-highlight;
}

.table-header {
	display:flex;
	width:100%;
	background:#000;
	padding:($half-spacing-unit * 1.5) 0;
}
.table-header{
     height:10vh;
     	width:100%;
     padding-left:25px;
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
   height:20vh;
   width:100%;
   color:white;
   	background:grey;
   	justify-content:center;
     	align-items:center;
   padding-bottom: 100px;
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
	height:10px;
}
.table-data1, .header__item {
	flex: 1 1 20%;
	text-align:center;
	
	height:10px;
}

.table-data1{
padding-top:45px;
}

.header__item {
	text-transform:uppercase;
	margin-bottom:20px;
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
  margin-top:45px;
  margin-left:20px;
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
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}


</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('images/1.jpg');">
	<center><h2 style="color:white;background-color:black;font-size:46px; margin-top: 100px;"> FILTER MATERIALS</h2></center><br>
<form action="Architechindex.html">
<button class="button">BACK</button><br>
</form> <br>
<div class="container">
	<div class="table">
		<div class="table-header">
			<div class="header__item"><a style="background-color: black;" id="wins" class="filter__link filter__link--number" href="#">Cement</a></div><br><br>
			<div class="header__item"><a style="background-color: black;" id="losses" class="filter__link filter__link--number" href="#">Steel</a></div>
			<div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Brick</a></div>
		    <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Sand</a></div>
			  <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Wood</a></div>
			 <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Tiles</a></div>
			 <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Aggregate</a></div>
		     <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">ProjectBudget</a></div>
		     <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">BudgetType</a></div>
		     <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Squarefeet</a></div>
		      <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Status</a></div>
		     <div class="header__item"><a style="background-color: black;" id="total" class="filter__link filter__link--number" href="#">Action</a></div>
		     
		</div><br>
		
		 <% 	 
		// HttpSession session1 = request.getSession();
		  String budget1 = request.getParameter("budget1");
		  String budget2 = request.getParameter("budget1");
		  String budgettype5 = request.getParameter("budgettype3");
		  String squarefeet2 = request.getParameter("squarefeet1");
		  
	//	  System.out.println(budget1);
	//	  System.out.println(budgettype5);
	//	  System.out.println(squarefeet2);
		  
         %>
<!--  	//	  int budget2 = Integer.parseInt(budget1);
		//	 session.setAttribute("budget", budget);
  
        //     int budget1 =9990000; -->
        <% 
      if(budgettype5.equals("lowbudget")){
				try{
				 	
					 Connection con=DB.getConnection();  
		             Statement stmt = con.createStatement();  
		            // if(budget2 == 9990000){
		            int rs1= stmt.executeUpdate("INSERT INTO fixedmaterials (cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status) SELECT cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status FROM materialdata where ORDER BY sandprice DESC limit 1");
		             ResultSet rs = stmt.executeQuery("SELECT * FROM materialdata ORDER BY sandprice DESC limit 1");  
		             
				 		while(rs.next())
				  		{
				  			%>
		<div class="table-content">	
			<div class="table-row">		
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs.getString("cementcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("cementprice") %>
				</div>
				
				
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs.getString("steelcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("steelprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("brickitems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("brickprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("sanditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("sandprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("wooditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("woodprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("tilesitems") %><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("tilesprice") %>
				</div>
				
			    <div class="table-data">
			    <h4 style="color: black;">Item Name:-</h4>
			    <%=rs.getString("aggregateitems") %><br><br>
			    <h4 style="color: black;">PRICE:-</h4>
			    <%=rs.getString("aggregateprice") %>
			    </div>

				<div class="table-data1" >
				<%=budget1%></div>
				<div class="table-data1"><%=budgettype5 %></div>
				<div class="table-data1"><%=squarefeet2%></div>
				<div class="table-data1"><%=rs.getString("status") %></div>
				 <button style="margin-top: 45px;"><td style="padding-left:30px;font-size:20px; color: white;"><a style="color:white;" href="altertable.jsp?budget2=<%=budget1 %>&&squarefeet3=<%=squarefeet2 %>&&budgettype4=<%=budgettype5 %>" class="btn btn-warning">SEND</a></td></button>
				
			</div>
		</div>	
		<%
					    }
		          //   }
		             
		             
		             
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
      }
				
					    	%>
					    	
					    	<% 
      if(budgettype5.equals("highbudget")){
				try{
				 	
					 Connection con=DB.getConnection();  
		             Statement stmt = con.createStatement();  
		            // if(budget2 == 9990000){
		            int rs1= stmt.executeUpdate("INSERT INTO fixedmaterials (cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status) SELECT cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status FROM materialdata where ORDER BY sandprice ASC limit 1");
		             ResultSet rs = stmt.executeQuery("SELECT * FROM materialdata ORDER BY sandprice ASC limit 1");  
		             
				 		while(rs.next())
				  		{
				  			%>
		<div class="table-content">	
			<div class="table-row">		
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs.getString("cementcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("cementprice") %>
				</div>
				
				
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs.getString("steelcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("steelprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("brickitems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("brickprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("sanditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("sandprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("wooditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("woodprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs.getString("tilesitems") %><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs.getString("tilesprice") %>
				</div>
				
			    <div class="table-data">
			    <h4 style="color: black;">Item Name:-</h4>
			    <%=rs.getString("aggregateitems") %><br><br>
			    <h4 style="color: black;">PRICE:-</h4>
			    <%=rs.getString("aggregateprice") %>
			    </div>
				<div class="table-data1"><%=budget1%></div>
				<div class="table-data1"><%=budgettype5 %></div>
				<div class="table-data1"><%=squarefeet2%></div>
				<div class="table-data1"><%=rs.getString("status") %></div>
				<button style="margin-top: 45px;"> <td style=padding-left:30px;font-size:20px;><a href="altertable.jsp?budget2=<%=budget1 %>&&squarefeet3=<%=squarefeet2 %>&&budgettype4=<%=budgettype5 %>" class="btn btn-warning">SEND</a></td></button>
				
				
			</div>
		</div>	
		<%
					    }
		          //   }
		             
		             
		             
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
      }
				
					    	%>
					    	
					    	
					    	<% 
      if(budgettype5.equals("mediumbudget")){
				try{
				 	
					 Connection con=DB.getConnection();  
		             Statement stmt = con.createStatement();  
		            // if(budget2 == 9990000){
		           int rs= stmt.executeUpdate("INSERT INTO fixedmaterials (cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status) SELECT cementcompany, cementprice, steelcompany,steelprice, brickitems, brickprice, sanditems, sandprice, wooditems, woodprice, tilesitems, tilesprice, aggregateitems, aggregateprice, status FROM materialdata where sandprice = 150");
		            ResultSet rs1 = stmt.executeQuery("SELECT * FROM materialdata where sandprice = 150");  

				 		while(rs1.next())
				  		{
				  			%>
		<div class="table-content">	
			<div class="table-row">		
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs1.getString("cementcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("cementprice") %>
				</div>
				
				
				<div class="table-data">
				<h4 style="color: black;">Company Name:-</h4>
				<%=rs1.getString("steelcompany") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("steelprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs1.getString("brickitems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("brickprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs1.getString("sanditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("sandprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs1.getString("wooditems") %><br><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("woodprice") %>
				</div>
				
				<div class="table-data">
				<h4 style="color: black;">Item Name:-</h4>
				<%=rs1.getString("tilesitems") %><br><br>
				<h4 style="color: black;">PRICE:-</h4>
				<%=rs1.getString("tilesprice") %>
				</div>
				
			    <div class="table-data">
			    <h4 style="color: black;">Item Name:-</h4>
			    <%=rs1.getString("aggregateitems") %><br><br>
			    <h4 style="color: black;">PRICE:-</h4>
			    <%=rs1.getString("aggregateprice") %>
			    </div>
				<div class="table-data1"><%=budget1%></div>
				<div class="table-data1"><%=budgettype5 %></div>
				<div class="table-data1"><%=squarefeet2%></div>
				<div class="table-data1"><%=rs1.getString("status") %></div>
			<button style="margin-top: 45px;"> <td style=padding-left:30px;font-size:20px;><a href="altertable.jsp?budget2=<%=budget1 %>&&squarefeet3=<%=squarefeet2 %>&&budgettype4=<%=budgettype5 %>" class="btn btn-warning">SEND</a></td></button>
				
				
			</div>
		</div>	
		<%
					    }
		          //   }
		             
		             
		             
					    	}catch(Exception e)
					    {
					    		System.out.println(e);
					    }
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