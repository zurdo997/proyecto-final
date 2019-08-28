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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alan97
 */
public class ServiciosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    //*****Operaciones CRUD*****//
    public List listar() {
        String sql = "select * from servicios";
        List<Servicios> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Servicios ser = new Servicios();
                ser.setId(rs.getInt(1));
                ser.setDescripcion(rs.getString(2));
                ser.setDisp(rs.getBoolean(3));
                lista.add(ser);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public Servicios listarId(int id) {
        Servicios ser = new Servicios();
        String sql = "select * from servicios where id=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ser.setId(rs.getInt(1));
                ser.setDescripcion(rs.getString(2));
                ser.setDisp(rs.getBoolean(3));
            }
        } catch (Exception e) {
        }
        return ser;
    }
    
    public int agregar(Servicios s) {
        String sql = "insert into servicios(descripcion,disponible)values(?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, s.getDescripcion());
            ps.setBoolean(2, s.isDisp());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public int actualizar(Servicios se) {
        String sql = "update servicios set descripcion=?, disponible=? where id=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, se.getDescripcion());
            ps.setBoolean(2, se.isDisp());
            ps.setInt(3, se.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id) {
        String sql = "delete from servicios where id=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
