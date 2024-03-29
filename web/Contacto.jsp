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
                color: #4938ff;
            }
            .card {
                border: none;
            }
            .col-sm-4 {
                height: 225px;
            }
            a {
                color: #4938ff;
            }
        </style>
        <script src="https://kit.fontawesome.com/265037a891.js"></script>
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="d-flex">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Contacto" method="POST">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" style="border: 1px solid #20c997;" name="txtNombre" placeholder="Nombre">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" class="form-control" style="border: 1px solid #20c997;" name="txtApellido" placeholder="Apellido">
                            </div>
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="text" class="form-control" style="border: 1px solid #20c997;" name="txtTel" placeholder="Teléfono">
                            </div>
                            <div class="form-group">
                                <label>Asunto</label>
                                <input type="text" class="form-control" style="border: 1px solid #20c997;" name="txtAsunto" placeholder="Asunto">
                            </div>
                            <div class="form-group">
                                <label>Mensaje</label>
                                <textarea class="form-control" style="border: 1px solid #20c997;" rows="4" name="txtMens"></textarea>
                            </div>
                            <div>
                                <button type="submit" name="accion" value="Enviar" class="btn btn-primary" title="Enviar"><i class="fas fa-paper-plane"></i></button>
                                <label style="color: #4938ff"><strong>   ${mensaje}</strong></label>
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
                <div class="col-sm-4">
                    <div class="item">
                        <h3>Business Center</h3>
                        <p><strong>Carlos Alberto</strong><br>
                            <a href="mailto:businesscenter@hotel.com.ar">businesscenter@hotel.com.ar</a><br>
                            Tel: 54.11.4808.2160 </p>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
