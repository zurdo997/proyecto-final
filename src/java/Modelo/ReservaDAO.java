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
    
    public String IdReservas(){
        String idreservas="";
        String sql="select max(id_reservas) from reservas";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                idreservas=rs.getString(1);
            }
        } catch (Exception e) {
        }
        return idreservas;
    }
    
    public int guardarReserva(Reserva r) {
        String sql = "insert into reservas(id_cliente, id_empleado, entrada, salida, cant_hab, monto)values(?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, r.getIdcliente());
            ps.setInt(2, r.getIdempleado());
            ps.setDate(3, r.getFecha());
            ps.setDate(4, r.getFecha2());
            ps.setInt(5, r.getCantHab());
            ps.setDouble(6, r.getMonto());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return a;
    }
    
    public int guardarDetalleReservas(Reserva res){
        String sql="insert into detalle_reservas(id_reservas,id_hab,cant_hab,precio_res)values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, res.getId());
            ps.setInt(2, res.getIdhabitacion());
            ps.setInt(3, res.getCantHab());
            ps.setDouble(4, res.getPrecio());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return a;
    }
}
