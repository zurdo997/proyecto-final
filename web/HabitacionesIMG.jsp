<%-- 
    Document   : HabitacionesIMG
    Created on : 07/09/2019, 14:43:46
    Author     : Alan97
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Habitaciones con imagenes</title>
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style type="text/css">
            body {
                font-family: 'Nunito', sans-serif;
            }
            
            .img-box {
                height: 160px;
                width: 100%;
                position: relative;
                margin-top: 10px;
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
            
            .item h4 {
                font-size: 18px;
                margin: 10px 0;
            }
            
            h4 {
                color: #282ba7;
            }
            
            .btn {
                color: #333;
                border-radius: 0;
                font-size: 11px;
                background: #00f7c0;
                text-transform: uppercase;
                font-weight: bold;
                border: 1px solid #ccc;
                padding: 5px 10px;
                margin-top: 5px;
                line-height: 16px;
            }
            
            .btn:hover, .btn:focus {
                color: #fff;
                background: #000;
                border-color: #000;
                box-shadow: none;
            }
            
            .btn i {
                font-size: 14px;
                font-weight: bold;
            }
            
            .thumb-wrapper {
                text-align: center;
            }
            
            .thumb-content {
                padding: 15px;
            }
            
            .item-price {
                font-size: 13px;
                padding: 2px 0;
                color: #00f7c0;
            }
        </style>
        <script src="https://kit.fontawesome.com/265037a891.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <c:forEach var="h" items="${habitaciones2}">
                    <div class="col-sm-3">
                        <div class="thumb-wrapper">
                            <div class="img-box">
                                <img src="ControladorIMG?id=${h.getId()}" class="img-responsive img-fluid" alt="">
                            </div>
                            <div class="thumb-content">
                                <h4>${h.getTipo_hab()}</h4>
                                <p class="item-price"><span>$${h.getPrecio()}</span></p>
                                <p>${h.getEstado()}</p>
                                <a class="btn btn-warning" href="Controlador?menu=NuevaReserva&accion=default">Ir a Reservas</a>
                            </div>				
                        </div>
                    </div>
                </c:forEach>  
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
