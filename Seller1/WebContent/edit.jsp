<%@page import="DAO.ProductDAO"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> (+84) 0907 546 581</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> btduy85@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="https://www.facebook.com/profile.php?id=100007668551735"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Edit | Guitar Seller</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
</head>
<body>
<%
	String name[] = {"Classic","Acoustic","Electric","Used","Accesories"};
	String s ="";
	Product p = null;
	if(request.getParameter("id")!=null){
		p = ProductDAO.getProductByID(Long.parseLong(request.getParameter("id")));
	}
%>
<div class="col-sm-4">
						<div class="logo pull-center">
							<a href="index.jsp"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h1>Edit info of product!</h1>
						<form action="/Seller1/ProductServlet" method="post">
						<input type="hidden" name="command" value="update" >
							<input type="hidden" name="id" value="<%= p.getIdprod() %>" >
							<h2>Name</h2>
							<input type="text" name="name" value="<%= p.getName() %>" />
							<h2>Type</h2>
							<select name="type">
								<%
								int stt = 0;
								for(int i=1;i<=5;i++){ 
									
								%>
									<option value="<%=i%>"> <%out.print(name[stt]);%> </option>
									<% stt++;} %>
							</select>
							<h2>Material</h2>
							<input type="text" name="material" value="<%= p.getChatlieu() %>" />
							<h2>Appearance</h2>
							<input type="text" name="appearance" value="<%= p.getDang() %>" />
							<h2>Price</h2	>
							<input type="text" name="price"value="<%= p.getPrice() %>" />
							<h2>Picture</h2	>
							<input type="text" name=""value="<%= p.getPicture() %>" />
							<button type="submit">Save</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>
</body>
</html>