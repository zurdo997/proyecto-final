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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link rel="icon" href="imagenes/faviconhotel1.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>Pantalla Principal</title>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <h1>Bienvenido <%= request.getParameter("nombre") %></h1>
        
        <h2>el numero es: <%= request.getParameter("numero") %></h2>
        
        <h2>la cantidad de intentos es= <%= request.getParameter("intento") %></h2>
        
    </body>
</html>
