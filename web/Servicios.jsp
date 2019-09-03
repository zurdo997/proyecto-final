<%-- 
    Document   : Servicios
    Created on : 28/08/2019, 12:33:09
    Author     : Alan97
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <title>Servicios</title>
        <style>
            .card {
                border: none;
            }
            .table td, .table th {
                border: none;
            }
        </style>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Servicios" method="POST">
                            <div class="form-group">
                                <label>Descripción</label>
                                <input type="text" value="${servicio.getDescripcion()}" style="border: 1px solid #20c997;" name="txtDesc" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Disponibilidad</label>
                                <input type="text" value="${servicio.getDisp()}" style="border: 1px solid #20c997;" name="txtDisp" class="form-control">
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>                     
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover table-responsive text-center" style="margin-left: 150px">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>DESCRIPCION</th>
                                    <th>DISPONIBLE</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="ser" items="${servicios}">
                                    <tr>
                                        <td>${ser.getId()}</td>
                                        <td>${ser.getDescripcion()}</td>
                                        <td>${ser.getDisp()}</td>                           
                                        <td>
                                            <a class="btn btn-warning" href="Controlador?menu=Servicios&accion=Editar&id_serv=${ser.getId()}">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Servicios&accion=Eliminar&id_serv=${ser.getId()}">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
