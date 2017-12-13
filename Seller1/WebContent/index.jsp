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
	    <title>Home | Guitar Seller</title>
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
<jsp:include page="header.jsp"></jsp:include>
	<section id="slider">
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="height:400px;background-image: url('images/home/bg.jpg');background-size: 100%;background-repeat: no-repeat"; >
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	
	<section>		
				ResultSet rsSuper
				<div class="col-sm-11 padding-right">
					<div class="features_items"><!--features_items-->
					<% for(Product p : ProductDAO.getAllProduct()){ %>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<h2><%= p.getName() %></h2>
											<%switch(p.getGuitar()){
											case 1 : out.print("<b><font color=#6600CC>Classic Guitar</font></b>"); break;
											case 2 : out.print("<b><font color=#6600CC>Acoustic Guitar</font></b>"); break;
											case 3 : out.print("<b><font color=#6600CC>Electric Guitar</font></b>"); break;
											case 4 : out.print("<b><font color=#6600CC>Used Guitar</font></b>"); break;
											case 5 : out.print("<b><font color=#6600CC>Accesories Guitar</font></b>"); break;
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
											<a href="https://web.facebook.com/messages/t/100007668551735/" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Buy now</a>
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
	<jsp:include page="footer.jsp"></jsp:include>
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>