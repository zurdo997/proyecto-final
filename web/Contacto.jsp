<%-- 
    Document   : Contacto
    Created on : 28/08/2019, 12:31:09
    Author     : Alan97
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            .item {
                border-bottom: 60px solid transparent;
                height: 120px;
                padding-top: 20px;
                margin-bottom: 40px;
                color: #bd0042;
            }
            .card {
                border: none;
            }
        </style>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="d-flex">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="txtNombre" value="" placeholder="Nombre">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" class="form-control" name="txtApellido" value="" placeholder="Apellido">
                            </div>
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="text" class="form-control" name="txtTel" value="" placeholder="Teléfono">
                            </div>
                            <div class="form-group">
                                <label>Consulta</label>
                                <select class="form-control" name="frmRemitente">
                                    <option value="">Seleccionar</option>
                                    <option value="ConsultasGenerales">Consultas Generales</option>
                                    <option value="Reservas">Reservas</option>
                                    <option value="Administración">Administración</option>
                                    <option value="Otros">Otros</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Mensaje</label>
                                <textarea class="form-control" rows="4" name="txtMens"></textarea>
                            </div>
                            <div>
                                <button type="submit" name="Enviar" class="btn btn-info">ENVIAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row col-sm-6 text-center">
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Gerente General</h3>
                        <p><strong>Olga Petroni</strong><br>
                            <a href="mailto:gerencia@hotel.com.ar">gerencia@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2179</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Marketing &amp; Ventas</h3>
                        <p><strong>Alvaro Cáceres</strong><br>
                            <a href="mailto:marketing@alvear.com.ar">marketing@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2170 </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Gerente de Banquetes & Convenciones</h3>
                        <p><strong>Alfredo Rodriguez</strong><br>
                        <a href="mailto:banquetes@hotel.com.ar">banquetes@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2187</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Restaurant</h3>
                        <p><strong>Santiago Perez</strong><br>
                        <a href="mailto:restaurantes@hotel.com.ar">restaurantes@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2187</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Conserjería</h3>
                        <p><strong>Ricardo Lopez</strong><br>
                        <a href="mailto:concerjeria@hotel.com.ar">concerjeria@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2927 </p>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
