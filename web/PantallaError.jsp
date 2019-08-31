<%-- 
    Document   : PantallaError
    Created on : 15-ago-2019, 14:47:49
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
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>ERROR!!!</title>
    </head>
    <style>
        body {
            background:url(imagenes/hotel_login.jpg);
            font-family:'Nunito', sans-serif;
        }
        .btn {
            border: none;
            margin:20px auto;
        }
        p {
            margin-left: 42%;
            margin-right: 42%;
        }
        .text-center h2 {
            margin-top: 100px;
            color: #d51a56;
        }
    </style>
    <body class="bg-primary">
        <div class="text-center">
            <h2 class="text-center">El nombre de usuario o la contraseña no son correctos.</h2> 
        </div>
        <div>
            <p class="text-center"><a href="index.jsp" class="btn btn-danger btn-block">Regresar a Iniciar Sesión</a></p>
        </div>
    </body>
</html>
