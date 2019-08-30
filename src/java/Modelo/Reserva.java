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
    //DateFormat format = new SimpleDateFormat("DD/MM/YYYY"); //Formato de fecha
    Date fecha;
    Date fecha2;
    int cantHab;
    int adultos;
    int ninios;
    
    public Reserva() {
        
    }

    public Reserva(int id, Date fecha, Date fecha2, int cantHab, int adultos, int ninios) {
        this.id = id;
        this.fecha = fecha;
        this.fecha2 = fecha2;
        this.cantHab = cantHab;
        this.adultos = adultos;
        this.ninios = ninios;
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

    public int getAdultos() {
        return adultos;
    }

    public void setAdultos(int adultos) {
        this.adultos = adultos;
    }

    public int getNinios() {
        return ninios;
    }

    public void setNinios(int ninios) {
        this.ninios = ninios;
    }
    
}
