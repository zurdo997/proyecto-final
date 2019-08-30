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
public class ClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    //*******Operaciones CRUD***************//
    public List listar(){
        String sql = "select * from clientes";
        List<Cliente>lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cl = new Cliente();
                cl.setId(rs.getInt(1));
                cl.setDni(rs.getString(2));
                cl.setNom(rs.getString(3));
                cl.setApe(rs.getString(4));
                cl.setTel(rs.getString(5));               
                lista.add(cl);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public int agregar(Cliente cl){ 
        String sql = "insert into clientes(dni,nombres,apellido,telefono)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getDni());
            ps.setString(2, cl.getNom());
            ps.setString(3, cl.getApe());
            ps.setString(4, cl.getTel());           
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    
    public Cliente listarId(int id){
        Cliente cli = new Cliente();
        String sql = "select * from clientes where id_cliente="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cli.setDni(rs.getString(2));
                cli.setNom(rs.getString(3));
                cli.setApe(rs.getString(4));
                cli.setTel(rs.getString(5));              
            }
        } catch (Exception e) {
        }
        return cli;
    }
    
    public int actualizar(Cliente em){
        String sql = "update clientes set dni=?, nombres=?, apellido=?,telefono=? where id_cliente=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getApe());
            ps.setString(4, em.getTel());           
            ps.setInt(5, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql = "delete from clientes where id_cliente="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
