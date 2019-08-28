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
public class Servicios {
    int id;
    String descripcion;
    boolean disp;
    
    public Servicios() {
        
    }

    public Servicios(int id, String descripcion, boolean disp) {
        this.id = id;
        this.descripcion = descripcion;
        this.disp = disp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isDisp() {
        return disp;
    }

    public void setDisp(boolean disp) {
        this.disp = disp;
    }
    
}
