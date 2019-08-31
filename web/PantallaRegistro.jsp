<%-- 
    Document   : PantallaRegistro
    Created on : 18/08/2019, 21:14:09
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link rel="icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>Registrate</title>
    </head>
    <body>
        <style type="text/css">
            body{
                color: #d51a56;
                background:url(imagenes/lobby.jpg);
                font-family: 'Nunito', sans-serif;
            }
            .form-control{
                height: 40px;
                box-shadow: none;
                color: #969fa4;
            }

            .form-control, .btn{        
                border-radius: 3px;
            }
            .signup-form{
                width: 400px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .signup-form h2{
                color: #d51a56;
                margin: 0 0 15px;
                position: relative;
                text-align: center;
            }
            .signup-form form{
                color: #999;
                border-radius: 3px;
                padding: 30px;
                padding-bottom: 0px;
            }
            .signup-form .form-group{
                margin-bottom: 20px;
            }

            .signup-form .btn{        
                font-size: 16px;
                font-weight: bold;		
                min-width: 140px;
                outline: none !important;
            }	
            .signup-form a{
                color: #007bff;
                text-decoration: underline;
            }
            .signup-form a:hover{
                color: white;
            }

            .signup-form a:active{
                color: red;
            }
        </style>
    </head>
<body>
    <div class="signup-form">
        <form action="Controlador?menu=Registrar" method="POST">
            <h2>Registrate</h2>
            <div class="form-group">
                <input type="text" class="form-control" name="txtDni" placeholder="Dni" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="txtNombre" placeholder="Nombre" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="txtApellido" placeholder="Apellido" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="txtTel" placeholder="Teléfono" required="required">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="txtUser" placeholder="Nombre de usuario" required="required">
            </div>
            <div class="form-group">
                <button type="submit" name="accion" value="AgregarE" class="btn btn-primary btn-block">Registrate ahora</button>
            </div>
        </form>
        <div class="text-center">¿Ya tienes cuenta? <a href="index.jsp">Iniciar Sesión</a></div>
    </div>
</body>
</html>
