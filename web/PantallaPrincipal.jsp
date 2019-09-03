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
        <link href="estilosPPrincipal.css" rel="stylesheet" type="text/css"/>
        <title>Pantalla Principal</title>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <nav class="navbar nav-bk navbar-default navbar-expand-xl navbar-light">
            <!-- Collection of nav links, forms, and other content for toggling -->
            <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow1' href="Controlador?menu=Servicios&accion=Listar" target="myFrame">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow2' href="Controlador?menu=Empleados&accion=Listar" target="myFrame">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow3' href="Controlador?menu=Habitaciones&accion=Listar" target="myFrame">Habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow4' href="Controlador?menu=Clientes&accion=Listar" target="myFrame">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow5' href="Controlador?menu=NuevaReserva&accion=default" target="myFrame">Reservas</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none" class="btn btn-outline-light" id='hideshow6' href="Controlador?menu=Contacto&accion=default" target="myFrame">Contacto</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right ml-auto">
                    <li class="nav-item dropdown">
                        <a style="color: #ffffff" href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">${usuario.getNom()} ${usuario.getApe()}</a>
                        <ul class="dropdown-menu dropdown-menu-right text-center">
                            <li><a class="dropdown-item"><img src="imagenes/user-logo.jpg" alt="75" width="75"/></a>
                            </li>
                            <li><a class="dropdown-item">${usuario.getUser()}</a></li>
                            <li class="divider dropdown-divider"></li>
                            <li>
                                <form action="ValidarInicio" method="POST">
                                    <button name="accion" value="Salir" class="dropdown-item btn" href="#">Salir</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <header>
            <div class="panel">
                <iframe name="myFrame" class="content" style="height: 600px;width: 100%; border: none;display: none"></iframe>
            </div>
            <div class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
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
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
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
                    <p>Alan Franco © 2019</p>
                </div>
            </div>
        </footer>
        <script id="rendered-js">
            $(document).ready(function () {
                $('#hideshow1').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
            $(document).ready(function () {
                $('#hideshow2').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
            $(document).ready(function () {
                $('#hideshow3').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
            $(document).ready(function () {
                $('#hideshow4').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
            $(document).ready(function () {
                $('#hideshow5').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
            $(document).ready(function () {
                $('#hideshow6').on('click', function (event) {
                    $('.content').toggle('show');
                });
            });
        </script>
    </body>
</html>
