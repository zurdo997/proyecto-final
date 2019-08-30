<%-- 
    Document   : Reservas
    Created on : 28/08/2019, 12:32:50
    Author     : Alan97
--%>

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
        <style>
            .section {
                position: relative;
                height: 100vh;
            }

            .section .section-center {
                position: absolute;
                top: 44%;
                left: 0;
                right: 0;
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
            }

            #booking {
                font-family: 'Nunito', sans-serif;
            }

            #booking::before {
                content: '';
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                top: 0;
            }

            #booking form {
                border-color: #000000; 
                border-style: solid;
            }
            .booking-form {
                max-width: 586px;
                width: 100%;
                margin: auto;
            }

            .booking-form .form-header {
                text-align: center;
                margin-bottom: 25px;
            }

            .booking-form .form-header h1 {
                font-size: 42px;
                color: #1e1e1e;
                margin-top: 0;
                margin-bottom: 0px;
                font-weight: 700;
            }

            .booking-form>form {
                background-color: #00b884;
                padding: 40px;
                -webkit-box-shadow: 0px 5px 15px -5px rgba(0, 0, 0, 0.8);
                box-shadow: 0px 5px 15px -5px rgba(0, 0, 0, 0.8);
            }

            .booking-form .form-group {
                position: relative;
                margin-bottom: 30px;
            }

            .booking-form .form-control {
                background-color: #0090b8;
                height: 50px;
                padding: 0px 20px;
                border: none;
                -webkit-box-shadow: none;
                box-shadow: none;
                border-radius: 0px;
                color: #fff;
            }

            .booking-form .form-control::-webkit-input-placeholder {
                color: rgba(255, 255, 255, 0.3);
            }

            .booking-form .form-control:-ms-input-placeholder {
                color: rgba(255, 255, 255, 0.3);
            }

            .booking-form .form-control::placeholder {
                color: rgba(255, 255, 255, 0.3);
            }

            .booking-form input[type="date"].form-control:invalid {
                color: #fff;
            }

            .booking-form select.form-control {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }

            .booking-form .form-label {
                color: #fff;
                font-size: 14px;
                font-weight: 400;
                margin-bottom: 5px;
                display: inline-block;
                letter-spacing: 0.4px;
            }

            .booking-form .submit-btn {
                color: #fff;
                background-color: #0090b8;
                font-weight: 400;
                height: 50px;
                border: none;
                width: 100%;
                display: block;
                letter-spacing: 0.4px;
            }
            
            .selectdiv {
                position: relative;
                float: left;
            }

            .selectdiv:after {
                content: '\f078';
                font: normal normal normal 17px/1 FontAwesome;
                color: #0ebeff;
                right: 11px;
                top: 6px;
                height: 34px;
                padding: 15px 0px 0px 8px;
                border-left: 1px solid #0ebeff;
                position: absolute;
                pointer-events: none;
            }

            select::-ms-expand {
                display: none;
            }

            .selectdiv select {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                /* Add some styling */

                display: block;
                width: 100%;
                max-width: 320px;
                height: 50px;
                float: right;
                margin: 5px 0px;
                padding: 0px 24px;
                font-size: 16px;
                line-height: 1.75;
                color: #fff;
                background-color: #0090b8;
                background-image: none;
                border: 1px solid #0ebeff;
                -ms-word-break: normal;
                word-break: normal;
            }
        </style>
    </head>
    <body>
        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">
                        <div class="booking-form">
                            <div class="form-header">
                                <h1>Haz la reservación</h1>
                            </div>
                            <form>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Check In</span>
                                            <input class="form-control" type="date" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Check out</span>
                                            <input class="form-control" type="date" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">Cant. de habitaciones</span>
                                            <div class="selectdiv">
                                                <label>
                                                    <select>
                                                        <option selected>Selecciona</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">Adultos</span>
                                            <div class="selectdiv">
                                                <label>
                                                    <select>
                                                        <option selected>Selecciona</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">Niños</span>
                                            <div class="selectdiv">
                                                <label>
                                                    <select>
                                                        <option selected>Selecciona</option>
                                                        <option>0</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-btn">
                                    <button class="submit-btn">Ver disponibilidad</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
