<%@page import="DAO.ProductDAO"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <title>Admin | Guitar Seller</title>
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
	if(session.getAttribute("login")==null){
		response.sendRedirect("login.jsp");
	}
%>
	<section id="slider">
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="height:400px;background-image: url('images/home/bg.jpg');background-size: 100%;background-repeat: no-repeat"; >
				</div>
			</div>
		</div>
	</section><!--/slider-->
	<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.jsp"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="/Seller1/CheckLogin?command=logout"><i class="fa fa-lock"></i> Logout </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	<div class="productinfo text-center">
	 	<a href="insert.jsp" class="btn btn-default add-to-cart">Add new product</a>
	 	 </div>
	 	 <section>		
				<div class="col-sm-11 padding-right">
					<div class="features_items"><!--features_items-->
					<% for(Product p : ProductDAO.getAllProduct()){ %>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<h2><%= p.getName() %></h2>
											<iframe src="<%= p.getPicture()%>" width="220" height="220"></iframe>
											<%switch(p.getGuitar()){
											case 1 : out.print("<br><b><font color=#6600CC>Classic Guitar</font></b>"); break;
											case 2 : out.print("<br><b><font color=#6600CC>Acoustic Guitar</font></b>"); break;
											case 3 : out.print("<br><b><font color=#6600CC>Electric Guitar</font></b>"); break;
											case 4 : out.print("<br><b><font color=#6600CC>Used Guitar</font></b>"); break;
											case 5 : out.print("<br><b><font color=#6600CC>Accesories Guitar</font></b>"); break;
											default: break;
											}
											%>
											<br>
											<%if(p.getGuitar()!=5)
												{
													out.print(p.getDang());
													out.print("&nbsp-&nbsp");
													out.print(p.getChatlieu());
												}%>
											<p><%= p.getPrice() %>$</p>
											<a href="edit.jsp?id=<%= p.getIdprod() %>" class="btn btn-default add-to-cart">Edit</a>
											<a href="/Seller1/ProductServlet?id=<%= p.getIdprod() %>&command=delete" class="btn btn-default add-to-cart">Delete</a>
										</div>
								</div>
								<div class="choose">
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>
		</div>
	</section>
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>