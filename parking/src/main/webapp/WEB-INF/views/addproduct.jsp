<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Shopping Cart</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Html5TemplatesDreamweaver.com">
	<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
    <link href="<c:url value="/resources/scripts/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/scripts/bootstrap/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/scripts/icons/general/stylesheets/general_foundicons.css"/>" media="screen" rel="stylesheet" type="text/css" />  
    <link href="<c:url value="/resources/scripts/icons/social/stylesheets/social_foundicons.css"/>" media="screen" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/scripts/fontawesome/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/scripts/carousel/style.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/scripts/camera/css/camera.css"/>" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Syncopate" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/scripts/bootstrap/css/custom.css"/>" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
    textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    background-color: #fff;
    border: 1px solid #ccc;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
    -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
    -webkit-transition: border linear .2s,box-shadow linear .2s;
    -moz-transition: border linear .2s,box-shadow linear .2s;
    -o-transition: border linear .2s,box-shadow linear .2s;
    transition: border linear .2s,box-shadow linear .2s;
}
select, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
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

<script src="<c:url value="/resources/scripts/jquery.min.js"/>" type="text/javascript"></script> 
<script src="<c:url value="/resources/scripts/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/scripts/default.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/scripts/carousel/jquery.carouFredSel-6.2.0-packed.js"/>" type="text/javascript"></script><script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: {width: 320,visible: {min: 2, max: 6}} });</script><script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
<script src="<c:url value="/resources/scripts/easing/jquery.easing.1.3.js"/>" type="text/javascript"></script>
<script type="text/javascript">function startCamera() {$('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '35%', pagination: true });}$(function(){startCamera()});</script>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$( document ).ready(function() {
	message = "${message}";
    if(message==""){ 
    	
    }else{
    	alert(message);
    }    	
});
</script> 


</head>
<body id="pageBody">

<div id="divBoxed" class="container">
    <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>
   	 <div class="divPanel notop nobottom">
    	 <div class="row-fluid">
        	 <div class="span12">
            	 <div id="divLogo" class="pull-left">
              		   <a id="divSiteTitle">VEHICAL PARKING</a><br />
	                   <!--  <a  id="divTagLine">Accelerating Shop</a> -->
                  </div>
                  <div id="divMenuRight" class="pull-right">
                    <div class="navbar">
                  	  <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            Menu <span class="icon-chevron-down icon-white"></span>
                      </button>
                      <div class="nav-collapse collapse">
                    	<ul class="nav nav-pills ddmenu">
                            <li><a href="./">Home</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <hr>

            <div align="center" style="color:red">${sucess}</div>
           	<div align="center" style="color:red">${sucess1}</div>

            
    </div>


    <div class="contentArea">
                <!--Edit Sidebar Content here-->
                <div class="span3">     
                    <div class="sidebox">
                        <h3 class="sidebox-title"><b>Create Parking Layout</b></h3>
                          <ul>
                          <form role="form" action="./product/add" method="post" id="myForm" class="login" commandName="layout" >
                          	<label>Name</label>
							<input type="text" name="name"  style="text-transform: capitalize;"  placeholder="Name" autofocus required/>
								<span class="input-group-addon"></span>
									<label>No. Of Slots</label>
									<input type="text" name="noOfSlots"  style="text-transform: capitalize;"  placeholder="Enter Slots" autofocus required/>
									<label>Two Wheeler Slots</label> 
									<input type="text" name="twowheelerSlots"  style="text-transform: capitalize;"  placeholder="Enter Slots" autofocus required/>
									
									<label>Four Wheeler Slots</label> 
									<input type="text" name="fourwheelerSlot"  style="text-transform: capitalize;"  placeholder="Enter Slots" autofocus required/>
									
									<label>Opening Time</label>(AM)
									<input type="text" name="openTime"  style="text-transform: capitalize;"  placeholder="Enter Time" autofocus required/>
   									
   									<label>Closing Time</label>(PM)
									<input type="text" name="closeTime"  style="text-transform: capitalize;"  placeholder="Enter Time" autofocus required/>
   									
   									<button>
     									<span class="state">Create</span>
    								</button>
 							</form>
               		</div>
                </div>
   		 </div>
</body>
</html>