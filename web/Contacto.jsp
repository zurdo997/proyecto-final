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
    </head>
    <body style="font-family: 'Nunito', sans-serif">
        <div class="contacto">
            <div class="container">
                <h1>Formulario de Contacto</h1>
                <form method="POST" action="/contacto-alvear-palace-hotel/">
                    <input type="hidden" id="frmSubmitHidden" name="frmSubmitHidden" value="1">
                    <div class="formulario">
                        <div class="row">
                            <div class="col-sm-3">
                                <span>Nombre*</span>
                                <input type="text" id="frmName" name="frmName" value="">
                            </div>
                            <div class="col-sm-3">
                                <span>Apellido*</span>
                                <input type="text" id="frmLName" name="frmLName" value="">
                            </div>
                            <div class="col-sm-3">
                                <span>Teléfono*</span>
                                <input type="text" id="frmPhone" name="frmPhone" value="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <span>Consulta*</span>
                                <select id="frmRemitente" name="frmRemitente">
                                    <option value="">Seleccionar</option>
                                    <option value="Consultas Generales" >Consultas Generales</option>
                                    <option value="Reservas" >Reservas</option>
                                    <option value="Administración" >Administración</option>
                                    <option value="Otros" >Otros</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <span>Asunto*</span>
                                <input type="text" id="frmAsunto" name="frmAsunto" value="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <span>Mensaje</span>
                                <textarea class="form-control" rows="4" id="frmComentarios" name="frmComentarios"></textarea>
                            </div>
                            <div class="col-sm-6">
                                <button type="submit">Enviar</button>
                            </div>
                        </div>
                    </div>

                    <hr>

                    <h2>Información de Contacto</h2>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Gerente General</h3>
                                <p><strong>Olga Petroni</strong><br>
                                    <a href="mailto:gerencia@alvear.com.ar">gerencia@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2179</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Marketing &amp; Ventas</h3>
                                <p>
                                    <a href="mailto:marketing@alvear.com.ar">marketing@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2170 </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Reservas</h3>
                                <p><a href="mailto:reservas@alvear.com.ar">reservas@alvear.com.ar</a><br>
                                    Tel: 54.11.4804.7777</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Gerente de Banquetes & Convenciones</h3>
                                <p><strong>Alfredo Rodriguez</strong><br>
                                    <a href="mailto:banquetes@alvear.com.ar">banquetes@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2187</p>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Restaurant</h3>
                                <p><a href="mailto:restaurantes.aph@alvear.com.ar">restaurantes.aph@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2187</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Conserjería</h3>
                                <p><a href="mailto:concierge.aph@alvear.com.ar">concierge.aph@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2927 </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Spa & Fitness Center</h3>
                                <p><a href="mailto:spa.aph@alvear.com.ar">spa.aph@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2145</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-3">
                            <div class="item">
                                <h3>BRASIL</h3>
                                <p><strong>Manuel Carlos Soares</strong><br>
                                    <a href="mailto:msoares@alvear-llaollao.com">msoares@alvear-llaollao.com</a><br>
                                    Tel: +55 11 99439-5511</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>EUROPA</h3>
                                <p><strong>Jean Franken</strong><br>
                                    <a href="mailto:jean.franken@alvear.com.ar">jean.franken@alvear.com.ar</a><br>

                                    Tel: +352 621 258 908</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="item">
                                <h3>Business Center</h3>
                                <p><a href="mailto:businesscenter.aph@alvear.com.ar">businesscenter.aph@alvear.com.ar</a><br>
                                    Tel: 54.11.4808.2160 </p>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </body>
</html>
