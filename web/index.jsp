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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link rel="icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>Reservas para hotel</title>
        <style>
            .img-box {
                height: 80px;
                width: 100%;
                position: relative;
                margin-bottom: 10px;
            }

            img {	
                max-width: 100%;
                max-height: 100%;
                display: inline-block;
                position: absolute;
                bottom: 0;
                margin: 0 auto;
                left: 0;
                right: 0;
            }
        </style>
    </head>
    <body style="font-family:'Nunito', sans-serif;">
        <div class="login-form" style="background: rgba(0, 0, 0, 0.4117647058823529);border-radius: 10px;">
            <form action="ValidarInicio" method="POST">
                <h2 class="text-center">Inicie Sesión</h2>
                <div class="img-box">
                    <img src="imagenes/imgindex.png" class="img-responsive img-fluid" alt="">
                </div>
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
                <p class="text-center"><a href="PantallaRegistro.jsp">Crea una Cuenta</a></p>
            </form>

        </div>
        <div class="text-center" style="height: 60px; margin-top: 10px">
            <label style="color: #e21d1d; background: #ffc107; border-radius: .10em"><strong>${incorrecto}</strong></label>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
