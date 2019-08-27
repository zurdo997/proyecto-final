<%-- 
    Document   : PantallaPrincipal
    Created on : 15-ago-2019, 14:47:24
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link rel="icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <style>
            .nav-bk{
                background: #00F260;  
                background: -webkit-linear-gradient(to right, #0575E6, #00F260);  
                background: linear-gradient(to right, #0575E6, #00F260); 

            }
            .carousel-item {
                height: 100vh;
                min-height: 350px;
                background: no-repeat center center scroll;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            footer{
                background-color: #292c2f;
                box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
                width: 100%;
                text-align: left;
                font: normal 16px sans-serif;

                padding: 45px 50px;
            }

            footer .footer-limiter {
                max-width: 880px;
                margin: 0 auto;
            }

            footer .footer-left p{
                color:  #8f9296;
                font-size: 14px;
                margin: 0;
            }

            /* Footer links */

            footer p.footer-links{
                font-size:18px;
                font-weight: bold;
                color:  #ffffff;
                margin: 0 0 10px;
                padding: 0;
            }

            footer p.footer-links a{
                display:inline-block;
                line-height: 1.8;
                text-decoration: none;
                color:  inherit;
            }

            footer .footer-right{
                float: right;
                margin-top: 6px;
                max-width: 180px;
            }

            footer .footer-right a{
                display: inline-block;
                width: 35px;
                height: 35px;
                background-color:  #33383b;
                border-radius: 2px;

                font-size: 20px;
                color: #ffffff;
                text-align: center;
                line-height: 35px;

                margin-left: 3px;
            }
        </style>
        <title>Pantalla Principal</title>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <%--<h1>Bienvenido <%= request.getParameter("nombre") %></h1>--%>
        <nav class="navbar nav-bk navbar-default navbar-expand-xl navbar-light">
            <!-- Collection of nav links, forms, and other content for toggling -->
            <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Reservas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contacto</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right ml-auto">
                    <li class="nav-item dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">Usuario HOLA</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><img src="imagenes/user-logo.jpg" alt="75" width="75"/></a>
                            </li>
                            <li><a class="dropdown-item" href="#">Usuario</a></li>
                            <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                            <li class="divider dropdown-divider"></li>
                            <li><form action="Validar" method="POST">
                                    <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <header>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active" style="background-image: url(imagenes/suite-de-lujo.jpg)">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4" style="color:#00f0e8">SUITE DE LUJO</h2>
                        </div>
                    </div>
                    <div class="carousel-item" style="background-image: url(imagenes/suite-gobernador.jpg)">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4" style="color:#00f0e8">SUITE GOBERNADOR</h2>
                        </div>
                    </div>
                    <div class="carousel-item" style="background-image: url(imagenes/suite-junior.jpg)">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4" style="color:#00f0e8">SUITE JUNIOR</h2>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>
        <footer>
            <div class="footer-limiter">
                <div class="footer-right">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>
                <div class="footer-left">
                    <p class="footer-links">This is your sticky footer</p>
                    <p>Company Name © 2016</p>
                </div>
            </div>
        </footer>
    </body>
</html>
