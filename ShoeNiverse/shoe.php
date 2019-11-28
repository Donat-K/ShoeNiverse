<?php
	require('./databases/database.php');
?>
<!DOCTYPE html>
<html>
<head>
<title>ShoeNiverse</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />



<link rel="stylesheet" href="css/style.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>

<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css'>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<link rel="stylesheet" href="css/style.css">


</head>

<body>
<!-- CONTAINER -->
<div id="container">
	
	<!-- HEADER -->
	<div id="header"><!--
		<a href="Home.html"><img src="images/company_logo.png" alt="sneakerbox.co logo" class="center"></a>
        <div id="header_right">
        	<p>
	        <a href="#">My Cart</a> | <a href="#">Checkout</a> | <a href="#">Log In</a></p>
         
		</div> -->
        <div class="cleaner"></div>
		
	</div> <!-- END of header -->
	
	<!-- NAVBAR -->
	<nav id="navbar">
		<ul>
			<li><a href="home.html">Home</a></li>
			
			<li><a href="contact.html">Contact</a></li>
			<li><a href="faq.html">FAQ</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="index.php">Forum</a></li>
		</ul>
		
	</nav> <!-- END of navbar -->
	
	<div style="background-image: url(images/mars.jpg); width:100%; height:100%; display:inline-block; background-repeat: repeat-x; background-size:cover; opacity:0.6">
		<h1 style="text-align:center; padding: 90px; font-size: 60px; font-style: inherit;font-weight: inherit; color:white;">Shoes</h1>
	</div>
	
	
	<div style="width:60%">
	<p style="margin-left:40px; font-size:30px; color: #00AFDB;  margin-bottom: 30px; text-transform: uppercase; margin-top:40px; ">Shoes</p>
	
	<!--<img src="images/company_logo2.png" ALIGN="left" alt="Shoe Picture" style="width:400px;height:150px;" hspace="20">
	-->
	<p style="font-size:16px; margin-left: 40px;"> Shoe Description<br><br>
		<?php
//			$query = 'SELECT * FROM Make';
//			$statement = $db->prepare($query);
//			$statement->execute();
//			$make = $statement->fetchAll();
//			$statement->closeCursor();
//			echo $make['makeID'];
			
			$query = 'SELECT * FROM Make';
			$products = $db->query($query); // $products is a PDOStatement object
			$product = $products->fetch();
			foreach ($products as $product) {
			echo $product['name'];
			}
		?>
	</p>
	</div>
	
	<div style="width:70%">
	<h1 style="margin-left:40px; color: #00AFDB; font-size:30px;  margin-bottom: 30px; text-transform: uppercase; margin-top:40px; ">Shoe Description</h1>
	
	
	</div>
	

	<hr style="width:90%; border: 0.4px solid #CCCCCC">
	<br>
	<h1 id="side"> Videos</h1><br>
	
	<br>
	<hr style="width:90%; border: 0.4px solid #CCCCCC">
	<br>
	

	
	<footer class="footer-distributed">

			<div class="footer-left">

				<a href="Home.html"><img src="images/company_logo.png" alt="sneakerbox.co logo" >

				<p class="footer-links">
					<a href="home.html">Home</a>&nbsp;
					|&nbsp;
					<a href="contact.html">Contact</a>&nbsp;
					|&nbsp;
					<a href="about.html">About</a>&nbsp;
					|&nbsp;
					<a href="faq.html">Faq</a>&nbsp;
					|&nbsp;
					<a href="shop.html">Shop</a>
				</p>
				
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>12666 72 Ave, Surrey, BC V3W 2M8</span> Surrey, BC, Canada</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p><a href="tel:1-604-599-2000">+1 (604) 599-2000</a></p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="contact.html">ShoeNiverse@ShoeNiverse.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					To tie the various facets of HYPEBEAST together is our online
					store. Since ShoeNiverse's inception, an appreciation for fashion
					and product has been fundamental to our vision. An online store
					has given visitors the opportunity to conveniently shop and purchase
					some of our favourite sneaker brands.
				</p>

				

			</div>

	</footer>
	
	<p class="footer-company-name">ShoeNiverse Co &copy; 2018</p>

</div> <!-- END of container -->
</body>
</html>