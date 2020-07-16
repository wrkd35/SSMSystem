<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
   <meta charset="utf-8">
	<title>错误页面</title>
	<style type="text/css">
		@import url("css/base.css");
		@import url("css/main.css");
		@import url("css/vendor.css");
	</style>   
</head>

<body>
   <header class="main-header">
   	<div class="row">
   		<div class="logo">
	         <a href="#">Quatro</a>
	      </div>   		
   	</div>   
   	<a class="menu-toggle" href="#"><span>Menu</span></a>	
   </header> <!-- /header -->
   <nav id="menu-nav-wrap">
   	<h5>Site Pages</h5>   	
		<ul class="nav-list">
			<li><a href="ssm_index.action">Home</a></li>
			<li><a href="ssm_login.action">Login</a></li>										
		</ul>
		<h5>Some Text</h5>  
		<p>Lorem ipsum Non non Duis adipisicing pariatur eu enim Ut in aliqua dolor esse sed est in sit exercitation eiusmod aliquip consequat.</p>
	</nav>
   <main id="main-404-content" class="main-content-static">
   	<div class="content-wrap">
		   <div class="shadow-overlay"></div>
		   <div class="main-content">
		   	<div class="row">
		   		<div class="col-twelve">		  		
			  			<h1 class="kern-this">404 Error.</h1>
			  			<p>
						Oooooops! Looks like nothing was found at this location.
						Maybe try on of the links below, click on the top menu
						or try a search?
			  			</p>
			  			<div class="search">
				      	<form>
								<input type="text" id="s" name="s" class="search-field" placeholder="Type and hit enter …">
							</form>
				      </div>	   			
			   	</div> <!-- /twelve --> 		   			
		   	</div> <!-- /row -->    		 		
		   </div> <!-- /main-content --> 
           <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" ></a></div>
		   <footer>
		   	<div class="row">
		   		<div class="col-seven tab-full social-links pull-right">
			   		<ul>
				   		<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					      <li><a href="#"><i class="fa fa-behance"></i></a></li>
					      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
					      <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					      <li><a href="#"><i class="fa fa-instagram"></i></a></li>   			
				   	</ul>
			   	</div>   			
		  			<div class="col-five tab-full bottom-links">
			   		<ul class="links">
				   		<li><a href="ssm_index.action">Home</a></li>				                    
				   	</ul>
			   	</div>   		   		
		   	</div>   		  		
		   </footer>
		</div>
   </main>
   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 
   <script src="js/modernizr.js"></script>
	<script src="js/jquery-2.1.3.min.js"></script>
   <script src="js/plugins.js"></script>
   <script src="js/main.js"></script>
</body>
</html>