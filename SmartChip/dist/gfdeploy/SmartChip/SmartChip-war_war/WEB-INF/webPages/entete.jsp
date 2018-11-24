<%-- 
    Document   : entete.jsp
    Created on : 15 oct. 2018, 08:10:52
    Author     : seydina
--%>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">

    <!-- theme stylesheet -->
    <link href="css/style.blue.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="img/logolink.png">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="isSessionActive" value="${sessionScope.isSessionActive}"/>
   <!-- *** TOPBAR ***
 _________________________________________________________ -->
    <div id="top">
    	<div class="top-image">
            <div class="container">
                <div class="col-md-6 offer" data-animate="fadeInDown">
                    <a href="#" class="btn btn-info btn-sm" data-animate-hover="pulse">Promotion printemps 2018</a>  <a href="#">Obtenez un rabais de 15% sur les commandes de plus  $1000!</a>
                </div>
                <div class="fontsize col-md-6" data-animate="fadeInDown">
                    <ul class="menu ">
                        <c:choose>
                            <c:when test="${isSessionActive}">
                        <li class="dropdown yamm-fw">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200" >Mon compte<b class="caret"></b></a>
                            <ul class="dropdown-menu" style="position: relative;z-index: 0">
                                
                                            <li><a href="#">Modifier Compte</a></li>                                        
                                            <li><a href="FrontController?action=deconnexion">Déconnexion</a></li>               
                            </ul>
                        </li>        
                            </c:when>
                            <c:otherwise>
                        <li><a href="#" data-toggle="modal" data-target="#login-modal">S'identifier</a>
                        </li>
                        <li><a href="<c:url value='FrontController?action=register' />">Registre</a>
                        </li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="<c:url value='FrontController?action=contacte' />">Contacte</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="Login">Connexion</h4>
                        </div>
                        <div class="modal-body">
                            <form action="connexionServlet" method="POST" name='form_loging' onsubmit='return verif_champ(document.form_loging.password_loging.value && document.form_loging.email_loging.value);' >
                                <div class="form-group"> 
                                    <input type="text" class="form-control" id="email-modal" placeholder="Votre Email" name="email_loging"  >
                                </div>
                                                 
                                <div class="form-group">
                                        <input type="password" class="form-control" id="password-modal" placeholder="password" name="password_loging" >  
                                </div>
                                <p class="text-center">
                                    <button class="btn btn-primary"><i class="fa fa-sign-in"></i>Se connecter</button> 
                                  </p>  
                                  <div class="etc-login-form">
    													<p>Mot de passe oublié? <a href="#">cliquer ici</a></p>
    				
    							 </div>     
                            </form>
                            <div class="text-center" >
                            	<p class="text-center text-muted">Pas encore inscrit?</p>
                                <p class="text-center text-muted"><a href="<c:url value='FrontController?action=register' />"><strong>Inscrivez-vous maintenant</strong></a>! C'est facile et fait en 1&nbsp;minute.Bénéficiez de ces avantages exceptionnels et bien plus encore!</p>
    						</div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.jsp" data-animate-hover="bounce">
                    <img src="img/logo.PNG" alt="logo" class="hidden-xs">
                    <img src="img/logo-small.PNG" alt="logo" class="visible-xs"><span class="sr-only">allé à la page principale</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <a class="btn btn-default navbar-toggle" href="basket.jsp">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                    </a>
                </div>
            </div>
            <!--/.navbar-header -->
            <div class="navbar-collapse collapse" id="navigation">
				<ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="index.jsp">Accueil</a>
                    </li>
                    

                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Index alphabétique <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">

                                       <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">A</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">B</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">C</span> </a>
                                        </div> 
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">D</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">E</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">F</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">G</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">H</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">I</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">J</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">K</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">L</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">M</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">N</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">O</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">P</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">Q</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">R</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">S</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">T</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">U</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">V</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">W</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">X</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">Y</span> </a>
                                        </div>
                                        <div class="col-sm-2 col-xs-3 ">
                                          <a href="#"> <span class="gras">Z</span> </a>
                                        </div>

                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>      
                </ul>
            </div>
            <div class="navbar-buttons">
                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="<c:url value='FrontController?action=panier' />" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">3 articles dans le panier</span></a>
                </div>
                <!--/.nav-collapse -->
                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>
				<div class="collapse clearfix" id="search">
                	<form class="navbar-form" role="search">
                    	<div class="input-group">
                        	<input type="text" class="form-control" placeholder="Recherche">
                        	<span class="input-group-btn">
								<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
				    		</span>
		                </div>
		            </form>

            	</div>
            <!--/.nav-collapse -->
            </div> <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
        </div>
    </div>
