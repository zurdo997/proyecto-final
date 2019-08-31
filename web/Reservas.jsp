<%-- 
    Document   : Reservas
    Created on : 28/08/2019, 12:32:50
    Author     : Alan97
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Reservas" method="POST">
                        <div class="form-header">
                            <h1>Haz la reservación</h1>
                        </div>
                        <div class="form-group">
                            <span class="form-label">Check In</span>
                            <input class="form-control" name="fechaE" value="${reserva.getFecha()}" style="border: 1px solid #20c997;" type="date" min="2019-09-01" max="2025-01-01" required>
                        </div>
                        <div class="form-group">
                            <span class="form-label">Check out</span>
                            <input class="form-control" name="fechaS" value="${reserva.getFecha2()}" style="border: 1px solid #20c997;" type="date" min="2019-09-01" max="2025-01-01" required>
                        </div>
                        <div class="form-group">
                            <span class="form-label">Cantidad de Habitaciones</span>
                            <input type="text" value="${reserva.getCantHab()}" style="border: 1px solid #20c997;" name="cantH" class="form-control">
                        </div>
                        <div class="form-group">
                            <span class="form-label">Cantidad de adultos</span>
                            <input type="text" value="${reserva.getAdultos()}" style="border: 1px solid #20c997;" name="adultos" class="form-control">
                        </div>
                        <div class="form-group">
                            <span class="form-label">Cantidad de niños</span>
                            <input type="text" value="${reserva.getNinios()}" style="border: 1px solid #20c997;" name="ninios" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover text-center">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>ENTRADA</th>
                                    <th>SALIDA</th>
                                    <th>CANT.HAB.</th>
                                    <th>ADULTOS</th>
                                    <th>NIÑOS</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="res" items="${reservas}">
                                <tr>
                                    <td>${res.getId()}</td>
                                    <td>${res.getFecha()}</td>
                                    <td>${res.getFecha2()}</td>
                                    <td>${res.getCantHab()}</td>
                                    <td>${res.getAdultos()}</td>
                                    <td>${res.getNinios()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Reservas&accion=Editar&id_reservas=${res.getId()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Reservas&accion=Eliminar&id_reservas=${res.getId()}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
