<%-- 
    Document   : register
    Created on : 15 oct. 2018, 09:07:12
    Author     : seydina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Obaju : e-commerce template
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">



</head>

<body>
    <!-- *** TOPBAR ***
 _________________________________________________________ -->
     <jsp:include page="../webPages/entete.jsp"/>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>
        <div class="col-md-12">
           <div class="text-center">
                              <h1>  Création de compte</h1>
                            </div>
        </div>
        
        <form action="inscriptionServlet" method="POST">
                <div class="col-md-6">
                    <div class="box">
                        <h3>Information connexion</h3>
                        <hr>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email" name="emailUser">
                            </div>
                            <div class="form-group">
                                <label for="password">Mot de passe</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <div class="form-group">
                                <label for="confirmePassword">Confirmer le mot de passe</label>
                                <input type="password" class="form-control" id="confirmePassword" name="confirmePassword">
                            </div>
                    </div>
                    
                     <div class="box">
                        <h3>Informations paiements</h3>
                        <hr>

                        
                            <div class="form-group">
                                <label for="numeroCarte">Numéro carte de crédit</label>
                                <input type="text" class="form-control" id="numeroCarte" name="numeroCarte">
                            </div>
                            <div class="form-group">
                                <label for="numeroCarteSpecial">Numéro spécial</label>
                                <input type="text" class="form-control" id="numeroCarteSpecial" name="numeroCarteSpecial">
                            </div>
                            <div class="form-group">
                                <label for="dateExpiration">Date Expiration</label>
                                <input type="date" class="form-control" id="dateExpiration" name="dateExpiration">
                            </div>
                   
                    </div>
                    
                    
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h3>Données personnelles</h3>

                        <hr>
                            <div class="form-group">
                                <label for="prenom">Prenom</label>
                                <input type="text" class="form-control" id="prenom" name="prenom">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="nom">Nom</label>
                                <input type="text" class="form-control" id="nom" name="nom">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="adresse">Adresse</label>
                                <input type="text" class="form-control" id="adresse" name="adresse">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="telephone">Téléphone</label>
                                <input type="text" class="form-control" id="telephone" name="telephone">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="villeUser">Ville</label>
                                <input type="text" class="form-control" id="villeUser" name="villeUser">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="pays">Pays</label>
                                <input type="text" class="form-control" id="pays" name="pays">
                            </div>
                            <br>
                        
                    </div>
                </div>
                <div class="col-md-12">
                   <div class="text-center">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> S'inscrire</button>
                                    </div>
                </div>
        </form>
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

        <jsp:include page="../webPages/piedPage.jsp"/>
        <!-- *** FOOTER ***
 _________________________________________________________ -->
 
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->




</body>

</html>

