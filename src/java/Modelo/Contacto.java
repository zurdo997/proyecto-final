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
public class Contacto {
    String nom;
    String ape;
    String tel;
    String asunto;
    String msj;
    
    public Contacto() {
        
    }

    public Contacto(String nom, String ape, String tel, String asunto, String msj) {
        this.nom = nom;
        this.ape = ape;
        this.tel = tel;
        this.asunto = asunto;
        this.msj = msj;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApe() {
        return ape;
    }

    public void setApe(String ape) {
        this.ape = ape;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getMsj() {
        return msj;
    }

    public void setMsj(String msj) {
        this.msj = msj;
    }
    
}
