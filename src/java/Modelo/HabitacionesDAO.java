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
 * @author Desarrollo Web
 */
public class HabitacionesDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Habitaciones buscar(int id){
      Habitaciones h =new Habitaciones();
      String sql="select * from habitaciones where id_hab="+id;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              h.setId(rs.getInt(1));
              h.setTipo_hab(rs.getString(2));
              h.setCant(rs.getInt(3));
              h.setPiso(rs.getInt(4));
              h.setNumero(rs.getInt(5));
              h.setPrecio(rs.getDouble(6));
              h.setEstado(rs.getString(7));
          }
      } catch (Exception e) {
      }
     return h;
  }
    public int actualizarEstado(int id, String estado) {
        String sql = "update reservas set estado=? where id_reservas=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, estado);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    //*****Operaciones CRUD*****//
    public List listar() {
        String sql = "select * from habitaciones";
        List<Habitaciones> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Habitaciones hab = new Habitaciones();
                hab.setId(rs.getInt(1));
                hab.setTipo_hab(rs.getString(2));
                hab.setCant(rs.getInt(3));
                hab.setPiso(rs.getInt(4));
                hab.setNumero(rs.getInt(5));
                hab.setPrecio(rs.getDouble(6));
                hab.setEstado(rs.getString(7));
                lista.add(hab);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public Habitaciones listarId(int id) {
        Habitaciones hab = new Habitaciones();
        String sql = "select * from habitaciones where id_hab=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                hab.setId(rs.getInt(1));
                hab.setTipo_hab(rs.getString(2));
                hab.setCant(rs.getInt(3));
                hab.setPiso(rs.getInt(4));
                hab.setNumero(rs.getInt(5));
                hab.setPrecio(rs.getDouble(6));
                hab.setEstado(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return hab;
    }
    
    public int agregar(Habitaciones h) {
        String sql = "insert into habitaciones(tipo, cant_camas, piso, numero, precio, estado)values(?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, h.getTipo_hab());
            ps.setInt(2, h.getCant());
            ps.setInt(3, h.getPiso());
            ps.setInt(4, h.getNumero());
            ps.setDouble(5, h.getPrecio());
            ps.setString(6, h.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public int actualizar(Habitaciones hbt) {
        String sql = "update habitaciones set tipo=?, cant_camas=?, piso=?, numero=?, precio=?, estado=? where id_hab=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, hbt.getTipo_hab());
            ps.setInt(2, hbt.getCant());
            ps.setInt(3, hbt.getPiso());
            ps.setInt(4, hbt.getNumero());
            ps.setDouble(5, hbt.getPrecio());
            ps.setString(6, hbt.getEstado());
            ps.setInt(7, hbt.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id) {
        String sql = "delete from habitaciones where id_hab=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
