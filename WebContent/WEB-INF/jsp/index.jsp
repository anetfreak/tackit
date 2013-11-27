<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to TackIt!</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom CSS for the 'Round About' Template -->
    <link href="css/round-about.css" rel="stylesheet">
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/bootstrap/bootstrap.js"></script>

  </head>

  <body>

    <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <ul id="categoryMenu" class="nav" style="float: left; margin: 30px 20px 0px 5px;">
			<li class="dropdown" id="categories">
	 			<a class="dropdown-toggle" data-toggle="dropdown" href="#categories"><i class="icon-th-list icon-white"></i></a>
				<ul class="dropdown-menu">
					<li><a href="#">Profile</a></li>
					<c:forEach var="c" items="${categories}">
						<li><a href="#">${c.name}</a></li>
					</c:forEach>
				</ul>
			</li>
		</ul>
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
    
    <div class="container">
      
      <div class="row">
      
        <div class="col-lg-12">
          <h1 class="page-header">About Us <small>It's Nice to Meet You!</small></h1>
          <p>This is a great place to start off with a short and sweet description of your company, organization, or whatever purpose your website is serving. Keep it friendly, engaging, but short enough to where you won't lose your reader!</p>
          <p>If you need a bit more space to describe what is going on, we recommend putting a picture in this section. Use the <code>pull-right</code> class on the image to make it look good!</p>
        </div>

        <div class="col-lg-12">
          <h2 class="page-header">Our Team</h2>
        </div>

      </div>

      <div class="row">
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smith <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smath <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smeth <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smyth <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smoth <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6">
        	<img class="img-circle img-responsive" src="http://placehold.it/200x200">
            <h3>John Smuth <small>Job Title</small></h3>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
      </div>

      <hr>

      <footer>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; Company 2013 &middot; Facebook &middot; Twitter &middot; Google+</p>
          </div>
        </div>
      </footer>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
   
  </body>
</html>