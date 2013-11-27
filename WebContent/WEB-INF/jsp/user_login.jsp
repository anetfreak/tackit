<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>TackIt - Login</title>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom CSS for the 'Round About' Template -->
    <link href="css/round-about.css" rel="stylesheet">
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/bootstrap/bootstrap.js"></script>
    
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#login').click(function(event) {
			//Validate email
			if(validEmail()) {
				var email = $('#email').val();
				var password = $('#password').val();
				$.ajax({
					url : "login.htm",
				    type: "POST",
				    data : "email=" + email + "&password=" + password,
				    success:function(data, textStatus, jqXHR){
				    	window.location.href="viewProjects.htm";
				    },
				    error: function(jqXHR, textStatus, errorThrown){
				    	alert("Could not process request.. " + errorThrown);
				    }
				});
			}
		});
		
		var validEmail = function() {
			var email = $('#email');
			var EMAIL_PATTERN = /^([a-zA-Z0-9_\-\.]+([+])?[a-zA-Z0-9_\-\.]+)@((\[[0-2]{1}[0-5]{1}[0-5]{1}\.[0-2]{1}[0-5]{1}[0-5]{1}\.[0-2]{1}[0-5]{1}[0-5]{1}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-2]{1}[0-5]{1}[0-5]{1})(\]?)$/;
			var result = false;

			// show error if field is empty or invalid email is entered
			if(email.val() == null || email.val().trim() == '') {
				alert('Please enter your email.');
			} else if(!EMAIL_PATTERN.test(email.val())) {
				alert('Email is not in a valid format.');
				email.val('');
			} else {
				result = true;
			}
			return result;
			
		};
		
	});
	
</script>

</head>
<body>

<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/tackit/">TackIt!</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#about">About US</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="login.htm">Login</a></li>
            <li><a href="signup.htm">Signup</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>

	<div id="container" style="padding-top: 40px;" align="center">
		<div class="container-fluid">
			<div id="loginOptions" style="margin: 80px 0px 0px 50px;">
				<div class="span1"></div>
				<div class="span4">
					<div style="-webkit-box-shadow: 3px 0px 5px #888888; -moz-box-shadow: 3px 0px 5px #888888; box-shadow: 3px 0px 5px #888888; padding: 30px;">
						<h3> Sign In </h3>
						<table>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">Email</label></td>
								<td><div class="col-sm-10"><input type="email" class="form-control" id="email" placeholder="Your registered email"></div></td>
							</tr>
							<tr>
								<td><label for="inputPassword3" class="col-sm-2 control-label">Password</label></td>
								<td><div class="col-sm-10"><input type="password" class="form-control" id="password" placeholder="Password"></div></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="col-sm-offset-2 col-sm-10"> <button type="submit" class="btn btn-default" id="login">Login</button></div></td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="divider-vertical"></div>
				<div class="span1" style="margin-top: 80px;">
					<h3> OR </h3>
				</div>
				<div class="divider-vertical"></div>
				
				<div class="span4">
					<div style="-webkit-box-shadow: 3px 0px 5px #888888; -moz-box-shadow: 3px 0px 5px #888888; box-shadow: 3px 0px 5px #888888; padding: 30px;">
						<h3> Sign In with Facebook </h3>
					</div>
				</div>
			</div>
		</div>
		
		<footer>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; Company 2013 &middot; Facebook &middot; Twitter &middot; Google+</p>
          </div>
        </div>
      </footer>
      
      
	</div>

</body>
</html>