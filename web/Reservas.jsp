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
        <title>Reserva</title>
        <style>
            @media print{
                .parte01,img, .btn, .accion{
                    display: none;
                }
            }
        </style>
        <script src="https://kit.fontawesome.com/265037a891.js"></script>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="d-flex">
            <div class="card col-sm-4 parte01">
                <div class="card-body">
                    <form action="Controlador?menu=NuevaReserva" method="POST">
                        <div class="form-header">
                            <h1 class="text-center" style="color: #28a745">Haz la reservación</h1>
                        </div>
                        <div class="form-group">
                            <span class="form-label">DNI del cliente</span>
                            <div class="d-flex">
                                <input type="text" value="${cl.getDni()}" style="border: 1px solid #20c997;" name="dniCliente" class="form-control">
                                <button type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">Buscar</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" name="nombrescliente" value="${cl.getNom()} ${cl.getApe()}" placeholder="Datos Cliente" class="form-control">
                        </div>
                        <div class="form-group">
                            <span class="form-label">ID de la Habitación</span>
                            <div class="d-flex">
                                <input type="text" value="${habitacion.getId()}" style="border: 1px solid #20c997;" name="idTipoHab" class="form-control">
                                <button type="submit" name="accion" value="BuscarHabitacion" class="btn btn-outline-info">Buscar</button>
                            </div>
                        </div>
                        <div class="form-group d-flex">
                            <input type="text" name="tipoHab" value="${habitacion.getTipo_hab()}" placeholder="Datos Habitacion" class="form-control">
                            <input type="text" name="estado" value="${habitacion.getEstado()}" placeholder="Estado" class="form-control">
                        </div>
                        <div class="form-group d-flex">
                            <input type="text" name="precio" value="${habitacion.getPrecio()}" class="form-control" placeholder="S/.0.00">    
                            <input type="number" value="1" name="cant" class="form-control col-sm-3"> 
                        </div>           
                        <div class="form-group">
                            <span class="form-label">Check In</span>
                            <input class="form-control" name="fechaE" value="" style="border: 1px solid #20c997;" type="date" min="2019-09-01" max="2025-01-01">
                        </div>
                        <div class="form-group">
                            <span class="form-label">Check out</span>
                            <input class="form-control" name="fechaS" value="" style="border: 1px solid #20c997;" type="date" min="2019-09-01" max="2025-01-01">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="card">                    
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr class="text-center">
                                    <th>N°</th>
                                    <th>ID</th>
                                    <th>HABITACION</th>
                                    <th>CHECK IN</th>
                                    <th>CHECK OUT</th>
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUBTOTAL</th>                                    
                                    <th class="accion">ACCION</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr class="text-center">
                                        <td>${list.getItem()}</td>
                                        <td>${list.getIdhabitacion()}</td>
                                        <td>${list.getDescripcionH()}</td>
                                        <td>${list.getFecha()}</td>
                                        <td>${list.getFecha2()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantHab()}</td>
                                        <td>${list.getSubtotal()}</td>
                                        <td class="d-flex">
                                            <a href="#" class="btn btn-danger" style="margin-left: 5px" title="Eliminar"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer" >
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="Controlador?menu=NuevaReserva&accion=GenerarReserva" onclick="print()" class="btn btn-success">Generar Reserva</a>
                                <a href="#" class="btn btn-danger" style="margin-left: 5px">Cancelar</a>
                            </div>
                            <div class="col-sm-6 ml-auto d-flex">                                
                                <label class=" col-sm-6 text-right mt-2">Total a Pagar</label>                                                       
                                <input type="text" name="txtTotal" value="$/.${totalpagar}0" class="form-control text-center font-weight-bold" style="font-size: 18px;">
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
