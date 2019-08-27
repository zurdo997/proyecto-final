<%-- 
    Document   : index
    Created on : 13/08/2019, 18:24:58
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="Alan Franco" name="author"/>
        <meta content="Sistema web de reservas para hotel" name="description"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link rel="icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>Reservas para hotel</title>
    </head>
    <body style="font-family:'Nunito', sans-serif;">
        <div class="login-form">
            <form action="ValidarInicio" method="POST">
                <h2 class="text-center">Inicie Sesión</h2>       
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Nombre de usuario" name="txtuser" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Contraseña" name="txtpass" required="required">
                </div>
                <div class="form-group">
                    <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                </div>
                <div class="clearfix">
                    <label class="pull-left checkbox-inline" style="color: #d51a56"><input type="checkbox"> Recuérdame</label>
                    <a href="#" class="pull-right">Olvidó su contraseña</a>
                </div>        
            </form>
            <p class="text-center"><a href="PantallaRegistro.jsp">Crea una Cuenta</a></p>
            <div>
                <% if(request.getAttribute("cantidadIncorrectos")!=null) { 
                %>
                <p class="text-center" style="color:#ffc107">Contraseña Incorrecta</p>
                <p class="text-center" style="color:#ffc107">Cantidad de intentos:
                <%= request.getAttribute("cantidadIncorrectos") %></p>
                <% }
                %>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
