<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.Random" %>
<%@page import="connection.DB"%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>

<title>Client upload data</title>
<!-- Mete tag keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Career Appeal Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Mete tag keywords -->
<!-- Stylesheet -->
<link href="assets9/css/font-awesome.css" rel="stylesheet"> 
<link href="assets9/css/style.css" rel='stylesheet' type='text/css' />
<!-- //Stylesheet -->
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800" rel="stylesheet">
<!--//fonts--> 
<script>
	function func(){
	<%--	document.getElementById("fid").value = Math.floor(Math.random() * 10000)+ 123;  --%>
		document.getElementById("fkeys").value = Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);}
	</script>
</head>
<body onload="func()">
<div class="video" data-vide-bg="video/training.mp4">
<div class="center-container">
<!--background-->
<!-- form -->
<h1>UPLOAD TRAINED DATA</h1>			
			<div class="login-form">
				
				<form action="Adminfileup" method="post" enctype="multipart/form-data" autocomplete="off" >
					
					<div class="inputs-w3ls upload-wthree">
					
					<div class="inputs-w3ls email-wthree">
						<p>FILE NAME</p>
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" name="filename" placeholder="" />
						</div>
						
						<p>UPLOAD FILE</p>
						<input type="file" id="fileselect" name="file" multiple="multiple" />
						<div id="filedrag">Upload</div>
					</div>
					<input type="submit" value="UPLOAD">
				</form>	
			</div>
			<!-- //form -->
			<!--copyright-->
				<div class="clear"></div>
			<div class="footer-agileits">
			<p>. <a href="http://w3layouts.com/"></a></p>
			</div>
			<!--//copyright-->
			</div>
						<p>. <a href="http://w3layouts.com/"></a></p>
			
			</div>
<!--js-->
		<script src="assets9/js/jquery-2.2.3.min.js"></script> 
		<script src="assets9/js/jquery.vide.min.js"></script>
<!--//js-->
</body>
</html>