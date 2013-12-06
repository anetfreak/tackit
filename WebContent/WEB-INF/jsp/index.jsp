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
    <script src="js/bootstrap/bootstrap-modal.js"></script>
    <script src="js/global.js"></script>

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
            <% if(session.getAttribute("user") == null) { %>
            <li><a href="login.htm">Login</a></li>
            <li><a href="signup.htm">Signup</a></li>
            </ul>
            <% } else { %>
            <li><a href="logout.htm">Logout</a></li>
            </ul>
            <ul class="nav navbar-nav pull-right">
            <li><a id="showModal" href="#addTackModal">+ Add Tack</a></li>
          	</ul>
            <% } %>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>
    
<div class="container" style="min-height: 100%;">
<div class="row">
<c:choose>
	<c:when test="${tacks ne null}">
		<c:forEach var="tack" items="${tacks}" varStatus="loop">
			  <div class="col-md-3">
				  <div class="thumbnail">
					  <div class="caption">
						  <span class="text-primary text-center"><h3>${tack.title}</h3></span>
						  <a href="${tack.link}"><img alt="${tack.title}" class="img-circle img-responsive resize" src="${tack.imageSrc}"></a>
						  <span class="text-info text-center">
						  <h4>${tack.description}</h4>
						  </span>
					  </div>
				  </div>
			  </div>
		  </c:forEach>
		</c:when>
		<c:otherwise>
			<div>
				<div class="hero-unit" style="padding-top: 500px; font-size: 35px; text-shadow: 0 1px 1px rgba(0,0,0,.4);">
					<div style="width: auto; line-height: 40px; top: 6em; left: 6em; position: absolute; z-index: 10; margin: 0px 0px 0px 0px;">
					<p style="font-size: 50px;">Welcome to TackIt!</p>
					<a href="tacks.htm" class="btn btn-primary">View Tacks</a>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>    
	</div>
	</div>

      <footer style="margin-top: 30px;">
      <hr>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; TackIt 2013</p>
          </div>
        </div>
      </footer>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <!-- Modal Code used for Login -->
		
	<div class="modal fade" id="addTackModal" tabindex="-1" role="dialog" aria-labelledby="addTackModalLabel" aria-hidden="true">
    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	          <h4 class="modal-title">Add Tack</h4>
	        </div>
	        <div class="modal-body">
	        	<div style="text-align: center;"><h5>Add a Tack here</h5></div>
	        	<div id="addTackAttributes" style="margin: 30px; text-align: center;">
	        	</div>
	        </div>
	      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

<!-- Modal Code used for Login -->
   
  </body>
</html>