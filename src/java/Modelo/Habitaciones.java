/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Desarrollo Web
 */
public class Habitaciones {
    int id;
    String tipo_hab;
    int cant;
    int piso;
    int numero;
    double precio;
    
    public Habitaciones() {
        
    }

    public Habitaciones(int id,String tipo_hab, int cant, int piso, int numero, double precio) {
        this.id = id;
        this.tipo_hab = tipo_hab;
        this.cant = cant;
        this.piso = piso;
        this.numero = numero;
    }

    public String getTipo_hab() {
        return tipo_hab;
    }

    public void setTipo_hab(String tipo_hab) {
        this.tipo_hab = tipo_hab;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}
