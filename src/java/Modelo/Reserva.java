/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Alan97
 */
public class Reserva {
    int id;
    String fecha;
    String fecha2;
    int cantHab;
    int adultos;
    int ninios;
    
    public Reserva() {
        
    }

    public Reserva(int id, String fecha, String fecha2, int cantHab, int adultos, int ninios) {
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFecha2() {
        return fecha2;
    }

    public void setFecha2(String fecha2) {
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
