<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>TackIt - Sign Up</title>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom CSS for the 'Round About' Template -->
    <link href="css/round-about.css" rel="stylesheet">
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/bootstrap/bootstrap.js"></script>
    
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.8/jquery.validate.min.js"></script>
<script type="text/javascript"> $(document).ready(function(){ $("#subForm").validate(); }); </script>
<script src="http://jquery.bassistance.de/validate/additional-methods.js"></script>
<script type="text/javascript">

function checkPasswordMatch(){
//var checkPasswordMatch = function() {
    var password = $("#passwordInput").val();
    var rePassword = $("#reEnterPasswordInput").val();
	
    if (password != rePassword)
        $("#divCheckPasswordMatch").html("Passwords do not match!");
    else{
        $("#divCheckPasswordMatch").html("Passwords match.");  
    }
}

$(document).ready(function () {
	
	$("#reEnterPasswordInput").keyup(checkPasswordMatch());
   
   $('#signup').click(function(event) {
	   
	   var fname = $('#firstNameInput').val();
	   var lname = $('#lastNameInput').val();
	   var email = $('#emailInput').val();
	   var password = $('#passwordInput').val();
	   
		$.ajax({
			url : "signup.htm",
		    type: "POST",
		    data : "fname=" + fname + "&lname=" + lname + "&email=" + email + "&password=" + password,
		    success:function(data, textStatus, jqXHR){
		    },
		    error: function(jqXHR, textStatus, errorThrown){
		    	alert("Could not process request.. " + errorThrown);
		    }
		});
   });
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
	
	<div id="container" style="padding-top: 40px;">
		<div class="container-fluid">
			<div class="row-fluid">
				<div id="sidebar" class="span2">
						<!--Sidebar content-->
					<ul id="sidebar-list" class="nav nav-list">
					</ul>
				</div>
					<div class="tab-content">
						<div class="tab-pane active" id="NewUserSignUp">
							<table>
								<!--Body content-->
								<tr>
  									<h2>Create an account here</h2>
								</tr>
								<tr>
									<td><h2 class="label label-primary">First Name</h2></td>
									<td></td>
									<td><div class="input-group">
											<input type="text" id="firstNameInput" class="required" placeholder="First Name">
										</div></td>
								</tr>
								<tr></tr>
								<tr>
									<td><h2 class="label label-primary">Last Name</h2></td>
									<td></td>
									<td><div class="input-group">
											<input type="text" id="lastNameInput" class="required" placeholder="Last Name">
										</div></td>
								</tr>
								<tr></tr>
								<tr>
									<td><h2 class="label label-primary">Email</h2></td>
									<td></td>
									<td><div class="input-group">
											<input type="email" id="emailInput" class="required email" placeholder="Email ID">
										</div></td>
								</tr>
								<tr></tr>
								<tr>
									<td><h2 class="label label-primary">Password</h2></td>
									<td></td>
									<td><div class="input-group">
											<input type="password" id="passwordInput" name="passwordInput" class="required" placeholder="Password">
										</div></td>
								</tr>
								<tr></tr>
								<tr>
									<td><h2 class="label label-primary">Re-enter Password</h2></td>
									<td></td>
									<td><div class="input-group">
											<input type="password" id="reEnterPasswordInput" name="reEnterPasswordInput" class="required" placeholder="Re-enter Password" onChange="checkPasswordMatch();">
										</div></td>
									<td><div class="registrationFormAlert" id="divCheckPasswordMatch"></div></td>
								</tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<td></td>
									<td></td>
									<td><div class="col-sm-offset-2 col-sm-10">
									<input type="submit" class="btn btn-default" id="signup" value="Sign Up"/>
								</div></td>
								</tr>
							</table>
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