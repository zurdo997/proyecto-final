/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author Alan97
 */
public class Reserva {

    int id;
    int item;
    int idcliente;
    int idempleado;
    int idhabitacion;
    String descripcionH;
    Date fecha;
    Date fecha2;
    int cantHab;
    double precio;
    double subtotal;
    double monto;

    public Reserva() {

    }

    public Reserva(int id, int item, int idcliente, int idempleado, int idhabitacion, String descripcionH, Date fecha, Date fecha2, int cantHab, double precio, double subtotal, double monto) {
        this.id = id;
        this.item = item;
        this.idcliente = idcliente;
        this.idempleado = idempleado;
        this.idhabitacion = idhabitacion;
        this.descripcionH = descripcionH;
        this.fecha = fecha;
        this.fecha2 = fecha2;
        this.cantHab = cantHab;
        this.precio = precio;
        this.subtotal = subtotal;
        this.monto = monto;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public String getDescripcionH() {
        return descripcionH;
    }

    public void setDescripcionH(String descripcionH) {
        this.descripcionH = descripcionH;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }


    public Date getFecha2() {
        return fecha2;
    }

    public void setFecha2(Date fecha2) {
        this.fecha2 = fecha2;
    }

    public int getCantHab() {
        return cantHab;
    }

    public void setCantHab(int cantHab) {
        this.cantHab = cantHab;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdhabitacion() {
        return idhabitacion;
    }

    public void setIdhabitacion(int idhabitacion) {
        this.idhabitacion = idhabitacion;
    }

    public double getMonto() {
        return monto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public int getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(int idempleado) {
        this.idempleado = idempleado;
    }

}
