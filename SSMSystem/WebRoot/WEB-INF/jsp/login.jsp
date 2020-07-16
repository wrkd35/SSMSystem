<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<head>
	<title>登陆</title>
	<jsp:include page="head.jsp"/>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
   <script type="text/javascript" src="js/judge.js"></script>
   </head>
   <body style="background-image: url('image/geometry2.png')">
   ${msg}
   <div style="height:50px;width:100%"></div>
		<div class="container">
			<div class="row">	
			</div>
			<div class="row">
				<div class="col-md-4 col-md-push-8" style="background: rgba(210,260,60, 0.3);border-radius:10px;height:370px;width:350px">
					<form action="ssm_checklogin.action" method="post" name="form" onSubmit="return myCheck()" >
						<h2><b>Sign In</b></h2>
						<div class="form-group">
						<center>
						<b>
						  User&nbsp<input type="radio" name="radio" value="0" checked="true">
						  Manager&nbsp<input type="radio" name="radio" value="1">
						  </b>
						</center>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="usercode" placeholder="Usercode">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password" placeholder="Password">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember"><font size="4"> Remember Me </font></label>
						</div>
						<div class="form-group">
						<font size="3">
							<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNot registered? <a href="ssm_registerinto.action">Sign Up</a></p>
						</font>
						</div>
						<div class="form-group">
						<center>
							<input type="submit" value="Sign In" class="btn btn-primary" style="width:300px">
						</center>
						</div>
					</form>
				</div>
			</div>
			</div>
	</body>
</html>


