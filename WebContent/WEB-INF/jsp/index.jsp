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
    
<div class="container well">
<div class="row">

<c:forEach var="tack" items="${tacks}" varStatus="loop">
  
  <div class="col-md-3">
  <div class="thumbnail">
  <div class="caption">
  <span class="text-primary text-center"><h3>${tack.title}</h3></span>
  <a href="${tack.link}"><img alt="${tack.title}" class="img-circle img-responsive resize" src="${tack.link}"></a>
  <span class="text-info text-center">
  <h4>${tack.description}</h4>
  </span>
  </div>
  </div>
  </div>
    
</c:forEach>
	</div>
	</div>

      <hr>

      <footer>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; TackIt 2013 &middot; Facebook &middot; Twitter &middot; Google+</p>
          </div>
        </div>
      </footer>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
   
  </body>
</html>