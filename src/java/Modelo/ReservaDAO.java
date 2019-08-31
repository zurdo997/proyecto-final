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
public class ReservaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int a;
    
    //*****Operaciones CRUD*****//
    public List listar() {
        String sql = "select * from reservas";
        List <Reserva> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reserva res = new Reserva();
                res.setId(rs.getInt(1));
                res.setFecha(rs.getString(2));
                res.setFecha2(rs.getString(3));
                res.setCantHab(rs.getInt(4));
                res.setAdultos(rs.getInt(5));
                res.setNinios(rs.getInt(6));
                lista.add(res);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public Reserva listarId(int id) {
        Reserva res = new Reserva();
        String sql = "select * from reservas where id_reservas=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                res.setId(rs.getInt(1));
                res.setFecha(rs.getString(2));
                res.setFecha2(rs.getString(3));
                res.setCantHab(rs.getInt(4));
                res.setAdultos(rs.getInt(5));
                res.setNinios(rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return res;
    }
    
    public int agregar(Reserva r) {
        String sql = "insert into reservas(entrada, salida, cant_hab, adultos, niños)values(?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, r.getFecha());
            ps.setString(2, r.getFecha2());
            ps.setInt(3, r.getCantHab());
            ps.setInt(4, r.getAdultos());
            ps.setInt(5, r.getNinios());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return a;
    }
    
    public int actualizar(Reserva rsv) {
        String sql = "update reservas set entrada=?, salida=?, cant_hab=?, adultos=?, niños=? where id_reservas=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, rsv.getFecha());
            ps.setString(2, rsv.getFecha2());
            ps.setInt(3, rsv.getCantHab());
            ps.setInt(4, rsv.getAdultos());
            ps.setInt(5, rsv.getNinios());
            ps.setInt(6, rsv.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return a;
    }
    
    public void eliminar(int id) {
        String sql = "delete from reservas where id_reservas=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
