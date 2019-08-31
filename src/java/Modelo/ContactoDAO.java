/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alan97
 */
public class ContactoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public void agregar(Contacto c) {
        String sql = "insert into contacto(nombre, apellido, telefono, asunto, mensaje)values(?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getNom());
            ps.setString(2, c.getApe());
            ps.setString(3, c.getTel());
            ps.setString(4, c.getAsunto());
            ps.setString(5, c.getMsj());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
