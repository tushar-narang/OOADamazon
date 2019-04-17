<!DOCTYPE HTML>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="`-ecommerce by Vosidiy">

<title>Amazon OOAD Project</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js" type="text/javascript"></script>


<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">

<!-- plugin: owl carousel  -->
<link href="plugins/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="plugins/owlcarousel/assets/owl.theme.default.css" rel="stylesheet">

<script src="plugins/owlcarousel/owl.carousel.min.js"></script>

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />
<link href="css/custom.css" rel="stylesheet"  />




<script src="scripts/default.js" type="text/javascript"></script>






<!-- jQuery -->

<!-- Data Table -->
		<script src="js/jquery.dataTables.js" type="text/javascript"></script>
		<link type="text/css" rel="stylesheet" href="css/jquery.dataTables.css">
<script type="text/javascript">
function sellerProducts(id) {
	localStorage.setItem("admin_seller_id", id);
	window.location.href ="prod_sell.html";
}
function bankDetails(id) {
	localStorage.setItem("user_id", id);
	window.location.href ="bank_detail.html";
}
$(document).ready(function() {
    $(document).ready(function(){
    	
    	//alert("Call success");
    	
    	/*var obj = {
    			fullname	: $("#fullname").val(),
    			email 		: $("#email").val(),
    			phonenumber	: $("#phonenumber").val(),
    			password1	: $("#password1").val(),
    			dob 		: $('#dob').val().toString()
    	};
    	*/

    	var api = "http://localhost:8055/amazon.com/webapi/AdminController/displayseller";
    	$.get(api , function(data, status){
    		var i=1;
			data.forEach(function(seller){
				
		    	var api2 = "http://localhost:8055/amazon.com/webapi/AdminController/displayprodseller/"+seller.id;
		    	var prodcount = 0;
				$.get(api2 , function(data2, status){	
				    data2.forEach(function(prod){
				    	console.log("prodcount inc" + prodcount);
				    	prodcount++;
						});		
				    
				    console.log("final val" + prodcount);
		    		$('#sellerList').append("<tr><td>"+i+"</td><td>"+seller.fname+"</td><td>"+seller.id+"</td><td>"+prodcount+"</td></tr>")
					i++;
		    		
					});
				
				
			
			
			
			});		
		});
 });
});
</script>

<!--  <script src="js/admin_layout.js" type="text/javascript"></script>  -->
</head>
<body>
  <%@include file="header.jsp" %>
<div id="admin_header_container">
</div>
<!--  --------------------------------------------main    body------------------------------------------------------------   -->
 <section class="section-main bg padding-y-sm">
<div class="card">
  <div class="card-body" >
  
	  <table id="sellertable" class="table table-striped table-bordered" style="width:100%">
	        <thead>
	            <tr>
	                <th>Sr no</th>
	                <th>Seller Name</th>
	                <th>Seller ID</th>
	                <th>Total items</th>
	            </tr>
	        </thead>
	        <tbody id="sellerList">
	        	
	        </tbody>
	  </table>
	  
	  	
	  	  <button style="width: 200px;margin-left: 1100px;" type="button" name="Add" class="btn btn-warning btn-block" id ="addaddress" onclick="window.location.href='home.jsp'"> Home </button>
	  	
	</div>
	</div>

  	    
    
</section>

 <!--  ---------------------------------------------main    body  end---------------------------------------------------------  -->
 


<div id="admin_footer_container">

</div>
<!-- ========================= FOOTER END // ========================= -->


</body>

</html>
