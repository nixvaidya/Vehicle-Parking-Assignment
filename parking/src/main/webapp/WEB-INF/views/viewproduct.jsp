<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Shopping Cart|View Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Html5TemplatesDreamweaver.com">
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
<link
	href="<c:url value="/resources/scripts/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/scripts/bootstrap/css/bootstrap-responsive.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/scripts/icons/general/stylesheets/general_foundicons.css"/>"
	media="screen" rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/scripts/icons/social/stylesheets/social_foundicons.css"/>"
	media="screen" rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/resources/scripts/fontawesome/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/scripts/carousel/style.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/scripts/camera/css/camera.css"/>"
	rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Syncopate"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Abel"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Pontano+Sans"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Oxygen"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resources/scripts/bootstrap/css/custom.css"/>"
	rel="stylesheet" type="text/css" />
<style type="text/css">
textarea, input[type="text"], input[type="password"], input[type="datetime"],
	input[type="datetime-local"], input[type="date"], input[type="month"],
	input[type="time"], input[type="week"], input[type="number"], input[type="email"],
	input[type="url"], input[type="search"], input[type="tel"], input[type="color"],
	.uneditable-input {
	background-color: #fff;
	border: 1px solid #ccc;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-webkit-transition: border linear .2s, box-shadow linear .2s;
	-moz-transition: border linear .2s, box-shadow linear .2s;
	-o-transition: border linear .2s, box-shadow linear .2s;
	transition: border linear .2s, box-shadow linear .2s;
}

select, input[type="text"], input[type="password"], input[type="datetime"],
	input[type="datetime-local"], input[type="date"], input[type="month"],
	input[type="time"], input[type="week"], input[type="number"], input[type="email"],
	input[type="url"], input[type="search"], input[type="tel"], input[type="color"],
	.uneditable-input {
	display: inline-block;
	height: 32px;
	padding: 4px 6px;
	margin-bottom: 10px;
	font-size: 14px;
	line-height: 20px;
	color: #555;
	width: 211px;
	vertical-align: middle;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.row-fluid .span5 {
	width: 40.17094017094017%;
	margin-left: 87px;
}

.row-fluid [class*="span"]:first-child {
	margin-left: 0;
	margin-top: -12px;
}

.sidebox {
	background-color: rgb(250, 250, 250);
	width: 237px;
	-webkit-box-shadow: none;
	box-shadow: none;
	padding: 18px;
	margin-top: 26px;
	border: 1px solid rgb(235, 235, 235);
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-left: 40px;
	margin-bottom: 60px;
	font-family: 'Open Sans', sans-serif;
	line-height: 24px;
	color: rgb(51, 51, 51);
}
</style>

<script src="<c:url value="/resources/scripts/jquery.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/scripts/bootstrap/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/resources/scripts/default.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/scripts/carousel/jquery.carouFredSel-6.2.0-packed.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: {width: 320,visible: {min: 2, max: 6}} });</script>
<script src="scripts/camera/scripts/camera.min.js"
	type="text/javascript"></script>
<script
	src="<c:url value="/resources/scripts/easing/jquery.easing.1.3.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">function startCamera() {$('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '35%', pagination: true });}$(function(){startCamera()});</script>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="<c:url value="/resources/js/viewproduct.js"/>"
	type="text/javascript"></script>
<script type="text/javascript">
$( document ).ready(function() {
	var status = "${status}"; 
	if(status == "" || status == null){ 
		
	}else{
		alert('${status}'); 
	}	
});
</script>
</head>
<body id="pageBody">

	<div id="divBoxed" class="container">
		<div class="transparent-bg"
			style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; z-index: -1; zoom: 1;"></div>
		<div class="divPanel notop nobottom">
			<div class="row-fluid">
				<div class="span12">
					<div id="divLogo" class="pull-left">
						<a id="divSiteTitle">Shopping Cart</a><br /> <a id="divTagLine">Accelerating
							Shop</a>
					</div>
					<div id="divMenuRight" class="pull-right">
						<div class="navbar">
							<button type="button"
								class="btn btn-navbar-highlight btn-large btn-primary"
								data-toggle="collapse" data-target=".nav-collapse">
								Menu <span class="icon-chevron-down icon-white"></span>
							</button>
							<div class="nav-collapse collapse">
								<ul class="nav nav-pills ddmenu">
									<li><a href="./">Home</a></li>
									<li><a href="./out">Out Product</a></li>
									<li class="active"><a href="./product">Product</a></li>
									<li><a href="./vender">Clients And Vender</a></li>
									<li><a href="./report">Summary</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr>

			<div align="center" style="color: red">${sucess}</div>
			<div align="center" style="color: red">${sucess1}</div>

			<div class="row-fluid">
				<div class="span12">
					<div id="contentInnerSeparator"></div>
					<div id="divMenuRight" class="pull-right">
						<div class="navbar">
							<button type="button"
								class="btn btn-navbar-highlight btn-large btn-primary"
								data-toggle="collapse" data-target=".nav-collapse">
								Menu <span class="icon-chevron-down icon-white"></span>
							</button>
							<div class="nav-collapse collapse">
								<ul class="nav nav-pills ddmenu">
									<li><a href="./category">Add Category</a></li>
									<li  class="active"><a href="./viewProducts">View Products</a></li>
									<li><a href="./viewcategory">View Category</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="contentArea">
			<!--Edit Sidebar Content here-->
			<div class="span3">
				<div class="sidebox">
					<h3 class="sidebox-title">
						<b>Edit Product</b>
					</h3>
					<ul>
						
						<form role="form" action="./updateProduct" method="post" id="myForm"
							class="login" commandName="product">
							<input type="hidden" id="id" name="id" value=""> 
							<label>Product Name</label> <input type="text" name="productName"
								id="productName" style="text-transform: capitalize;"
								placeholder="Product Name" autofocus required /> <span
								class="input-group-addon"></span> <label>Product
								Category</label>
							<div class="form-group">
								<select name="categoryId" id="categoryId" required>
									<option selected value="0">Select Product Category</option>
									<c:forEach items="${Categorylist}" var="product">
										<option value="${product.id}" name="users">
											<c:out value="${product.categoryName}"></c:out>
										</option>
									</c:forEach>
								</select>
							</div>
							<label>Product Image Name</label> <input type="text"
								name="imageName" id="imageName"
								style="text-transform: capitalize;" placeholder="Product Image"
								autofocus required /> <label>Product Price (Rs.)</label> <input
								type="text" name="productPrice" id="productPrice"
								style="text-transform: capitalize;" placeholder="Product Price"
								autofocus required /> <label>Product Count</label> <input
								type="text" name="productQuantity" id="productQuantity"
								style="text-transform: capitalize;" placeholder="Product Count"
								autofocus required />
								 
								<input class="state" type="submit" id="update-btn" value="Update Product" />  
								<input class="state" type="button" id="reset-btn" value="Reset" />
						</form>
				</div>

			</div>

		</div>
		<div align="center" > 
			<table class="tg" >  
				<c:set var="srno" value="0">
				</c:set>
				<tr height="50">   
					<th width="100">Sr.No</th>
					<th width="200">Product Name</th>
					<th width="200">Price / Unit</th>
					<th width="100">In Stock</th>
					<th width="100">Action</th>
				</tr>				
				<c:forEach items="${productList}" var="product">
					<tr height="50">  
						<td align="center">${product.id}</td>
						<td align="center">${product.productName}</td>
						<%-- <td align="center"><img
									src="<c:url value='/resources/images/${product.imageName}.jpg'/>"width="50" /></td> --%>
						<td align="center">Rs.&nbsp;&nbsp;${product.productPrice}&nbsp;
							Only</td>
						<td align="center">${product.productQuantity}</td>
						<td align="center">
							<%-- <a href="<c:url value='/edit/${product.id}' />"> --%>
							<button id="update-btn"
								onclick="edit(this,${product.id},'${product.productName}',${product.categoryId},${product.productPrice},${product.productQuantity},'${product.imageName}');">Edit</button>
							<!-- </a>  -->
						</td>
					</tr>
				</c:forEach>
				</tr>
			</table>
		</div>
</body>
</html>