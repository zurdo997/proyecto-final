<%-- 
    Document   : Habitaciones
    Created on : 27-ago-2019, 16:54:42
    Author     : Desarrollo Web
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Habitaciones</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-3">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Habitaciones" method="POST">
                            <div class="form-group">
                                <label>Tipo de habitación</label>
                                <input type="text" value="${habitacion.getTipo_hab()}" name="txtTipo" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Cant. de camas</label>
                                <input type="text" value="${habitacion.getCant()}" name="txtCant" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Piso</label>
                                <input type="text" value="${habitacion.getPiso()}" name="txtPiso" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Número</label>
                                <input type="text" value="${habitacion.getNumero()}" name="txtNum" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Precio</label>
                                <input type="text" value="${habitacion.getPrecio()}" name="txtPre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <input type="text" value="${habitacion.getEstado()}" name="txtEstado" class="form-control">
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover text-center">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>TIPO HAB.</th>
                                    <th>CANT. CAMAS</th>
                                    <th>PISO</th>                                    
                                    <th>NUMERO</th>
                                    <th>PRECIO</th>
                                    <th>ESTADO</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="hab" items="${habitaciones}">
                                    <tr>
                                        <td>${hab.getId()}</td>                                      
                                        <td>${hab.getTipo_hab()}</td>
                                        <td>${hab.getCant()}</td>
                                        <td>${hab.getPiso()}</td>
                                        <td>${hab.getNumero()}</td>  
                                        <td>${hab.getPrecio()}</td>
                                        <td>${hab.getEstado()}</td>
                                        <td>
                                            <a class="btn btn-warning" href="Controlador?menu=Habitaciones&accion=Editar&id=${hab.getId()}">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Habitaciones&accion=Eliminar&id=${hab.getId()}">Eliminar</a>
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
