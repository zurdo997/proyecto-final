/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Modelo.ClienteDAO;
import Modelo.Contacto;
import Modelo.ContactoDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Habitaciones;
import Modelo.HabitacionesDAO;
import Modelo.Reserva;
import Modelo.ReservaDAO;
import Modelo.Servicios;
import Modelo.ServiciosDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import org.joda.time.*;

/**
 *
 * @author Desarrollo Web
 */
@MultipartConfig
public class Controlador extends HttpServlet {

    int contadorError = 0;
    Habitaciones hab = new Habitaciones();
    HabitacionesDAO habdao = new HabitacionesDAO();
    List<Habitaciones> habitaciones = new ArrayList<>();
    Empleado em = new Empleado();
    EmpleadoDAO emdao = new EmpleadoDAO();
    Cliente cl = new Cliente();
    ClienteDAO cldao = new ClienteDAO();
    Servicios ser = new Servicios();
    ServiciosDAO serdao = new ServiciosDAO();
    Contacto cont = new Contacto();
    ContactoDAO contdao = new ContactoDAO();
    DateTime inicio = new DateTime();
    DateTime fin = new DateTime();
    int idh;
    int ide;
    int idc;
    int ids;
    int idr;

    Reserva res = new Reserva();
    ReservaDAO resdao = new ReservaDAO();
    List<Reserva> lista = new ArrayList<>();
    int item;
    int cod;
    double precio;
    int cant;
    String descripcion;
    String estado;
    String fecha;
    Date date1 = null;
    Date date2 = null;
    String fecha2;
    double subtotal;
    double totalPagar;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        habitaciones = habdao.listar();

        if (menu.equals("PantallaPrincipal")) {
            request.getRequestDispatcher("PantallaPrincipal.jsp").forward(request, response);
        }

        if (menu.equals("HabitacionesIMG")) {
            switch (accion) {
                default:
                    request.setAttribute("habitaciones2", habitaciones);
                    request.getRequestDispatcher("HabitacionesIMG.jsp").forward(request, response);
            }
            request.getRequestDispatcher("HabitacionesIMG.jsp").forward(request, response);
        }

        if (menu.equals("Registrar")) {
            switch (accion) {
                case "AgregarE":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombre");
                    String ape = request.getParameter("txtApellido");
                    String tel = request.getParameter("txtTel");
                    String user = request.getParameter("txtUser");
                    em.setDni(dni);
                    em.setNom(nom);
                    em.setApe(ape);
                    em.setTel(tel);
                    em.setUser(user);
                    emdao.agregar(em);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
            }
        }

        if (menu.equals("Empleados")) {
            switch (accion) {
                case "Listar":
                    List lista = emdao.listar();
                    request.setAttribute("empleados", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombre");
                    String ape = request.getParameter("txtApellido");
                    String tel = request.getParameter("txtTel");
                    String user = request.getParameter("txtUser");
                    em.setDni(dni);
                    em.setNom(nom);
                    em.setApe(ape);
                    em.setTel(tel);
                    em.setUser(user);
                    emdao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id_empleado"));
                    Empleado e = emdao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni2 = request.getParameter("txtDni");
                    String nom2 = request.getParameter("txtNombre");
                    String ape2 = request.getParameter("txtApellido");
                    String tel2 = request.getParameter("txtTel");
                    String user2 = request.getParameter("txtUser");
                    em.setDni(dni2);
                    em.setNom(nom2);
                    em.setApe(ape2);
                    em.setTel(tel2);
                    em.setUser(user2);
                    em.setId(ide);
                    emdao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ide = Integer.parseInt(request.getParameter("id_empleado"));
                    emdao.eliminar(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Empleados.jsp").forward(request, response);
        }

        if (menu.equals("Servicios")) {
            switch (accion) {
                case "Listar":
                    List lista = serdao.listar();
                    request.setAttribute("servicios", lista);
                    break;
                case "Agregar":
                    String desc = request.getParameter("txtDesc");
                    String disp = request.getParameter("txtDisp");
                    ser.setDescripcion(desc);
                    ser.setDisp(disp);
                    serdao.agregar(ser);
                    request.getRequestDispatcher("Controlador?menu=Servicios&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ids = Integer.parseInt(request.getParameter("id_serv"));
                    Servicios s = serdao.listarId(ids);
                    request.setAttribute("servicio", s);
                    request.getRequestDispatcher("Controlador?menu=Servicios&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String desc2 = request.getParameter("txtDesc");
                    String disp2 = request.getParameter("txtDisp");
                    ser.setDescripcion(desc2);
                    ser.setDisp(disp2);
                    ser.setId(ids);
                    serdao.actualizar(ser);
                    request.getRequestDispatcher("Controlador?menu=Servicios&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ids = Integer.parseInt(request.getParameter("id_serv"));
                    serdao.eliminar(ids);
                    request.getRequestDispatcher("Controlador?menu=Servicios&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Servicios.jsp").forward(request, response);
        }

        if (menu.equals("Habitaciones")) {
            switch (accion) {
                case "Listar":
                    List lista = habdao.listar();
                    request.setAttribute("habitaciones", lista);
                    break;
                case "Agregar":
                    String tipoHab = request.getParameter("txtTipo");
                    int cant = Integer.parseInt(request.getParameter("txtCant"));
                    int piso = Integer.parseInt(request.getParameter("txtPiso"));
                    int num = Integer.parseInt(request.getParameter("txtNum"));
                    double precio = Double.parseDouble(request.getParameter("txtPre"));
                    String est = request.getParameter("txtEstado");
                    Part part = request.getPart("txtFoto");
                    InputStream inputStream = part.getInputStream();
                    hab.setTipo_hab(tipoHab);
                    hab.setCant(cant);
                    hab.setPiso(piso);
                    hab.setNumero(num);
                    hab.setPrecio(precio);
                    hab.setEstado(est);
                    hab.setFoto(inputStream);
                    habdao.agregar(hab);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idh = Integer.parseInt(request.getParameter("id_hab"));
                    Habitaciones h = habdao.listarId(idh);
                    request.setAttribute("habitacion", h);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String tipoHab2 = request.getParameter("txtTipo");
                    int cant2 = Integer.parseInt(request.getParameter("txtCant"));
                    int piso2 = Integer.parseInt(request.getParameter("txtPiso"));
                    int num2 = Integer.parseInt(request.getParameter("txtNum"));
                    double precio2 = Double.parseDouble(request.getParameter("txtPre"));
                    String est2 = request.getParameter("txtEstado");
                    Part part1 = request.getPart("txtFoto");
                    InputStream inputStream1 = part1.getInputStream();
                    hab.setTipo_hab(tipoHab2);
                    hab.setCant(cant2);
                    hab.setPiso(piso2);
                    hab.setNumero(num2);
                    hab.setPrecio(precio2);
                    hab.setEstado(est2);
                    hab.setFoto(inputStream1);
                    hab.setId(idh);
                    habdao.actualizar(hab);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idh = Integer.parseInt(request.getParameter("id_hab"));
                    habdao.eliminar(idh);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Habitaciones.jsp").forward(request, response);
        }

        if (menu.equals("Clientes")) {
            switch (accion) {
                case "Listar":
                    List lista = cldao.listar();
                    request.setAttribute("clientes", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombres");
                    String ape = request.getParameter("txtApellido");
                    String tel = request.getParameter("txtTel");
                    cl.setDni(dni);
                    cl.setNom(nom);
                    cl.setApe(ape);
                    cl.setTel(tel);
                    cldao.agregar(cl);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id_cliente"));
                    Cliente c = cldao.listarId(idc);
                    request.setAttribute("cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni1 = request.getParameter("txtDni");
                    String nom1 = request.getParameter("txtNombres");
                    String ape1 = request.getParameter("txtApellido");
                    String tel1 = request.getParameter("txtTel");
                    cl.setDni(dni1);
                    cl.setNom(nom1);
                    cl.setApe(ape1);
                    cl.setTel(tel1);
                    cl.setId(idc);
                    cldao.actualizar(cl);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id_cliente"));
                    cldao.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }

        if (menu.equals("Contacto")) {
            switch (accion) {
                case "Enviar":
                    String nom = request.getParameter("txtNombre");
                    String ape = request.getParameter("txtApellido");
                    String tel = request.getParameter("txtTel");
                    String asun = request.getParameter("txtAsunto");
                    String msj = request.getParameter("txtMens");
                    cont.setNom(nom);
                    cont.setApe(ape);
                    cont.setTel(tel);
                    cont.setAsunto(asun);
                    cont.setMsj(msj);
                    contdao.agregar(cont);
                    request.setAttribute("mensaje", "Mensaje enviado correctamente");
                    request.getRequestDispatcher("Contacto.jsp").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Contacto.jsp").forward(request, response);
        }

        if (menu.equals("NuevaReserva")) {
            switch (accion) {
                case "BuscarCliente":
                    String dni = request.getParameter("dniCliente");
                    cl.setDni(dni);
                    cl = cldao.buscar(dni);
                    request.setAttribute("cl", cl);
                    break;
                case "BuscarHabitacion":
                    int id = Integer.parseInt(request.getParameter("idTipoHab"));
                    hab = habdao.listarId(id);
                    request.setAttribute("cl", cl);
                    request.setAttribute("habitacion", hab);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalpagar", totalPagar);
                    break;
                case "Agregar":
                    request.setAttribute("cl", cl);
                    totalPagar = 0.0;
                    item = item + 1;
                    cod = hab.getId();
                    descripcion = request.getParameter("tipoHab");
                    estado = request.getParameter("estado");
                    precio = Double.parseDouble(request.getParameter("precio"));
                    cant = Integer.parseInt(request.getParameter("cant"));
                    fecha = request.getParameter("fechaE");
                    date1 = java.sql.Date.valueOf(fecha);
                    inicio = DateTime.parse(fecha);
                    fecha2 = request.getParameter("fechaS");
                    date2 = java.sql.Date.valueOf(fecha2);
                    fin = DateTime.parse(fecha2);
                    int dias = Days.daysBetween(inicio.toLocalDate(),fin.toLocalDate()).getDays();
                    dias += 1;
                    subtotal = precio * cant;
                    subtotal = precio * dias;
                    res = new Reserva();
                    res.setItem(item);
                    res.setIdhabitacion(cod);
                    res.setDescripcionH(descripcion);
                    res.setFecha(date1);
                    res.setFecha2(date2);
                    res.setPrecio(precio);
                    res.setCantHab(cant);
                    res.setSubtotal(subtotal);
                    lista.add(res);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;
                case "Eliminar":
                    if (true) {
                        
                    }
                    int id2 = Integer.parseInt(request.getParameter("idh"));
                    for (int i = 0; i < lista.size(); i++) {
                        if (lista.get(i).getIdhabitacion() == id2) {
                            lista.remove(i);
                        }
                    }
                    break;
                case "GenerarReserva":
                    for (int i = 0; i < lista.size(); i++) {
                        Habitaciones h = new Habitaciones();
                        int cantidad = lista.get(i).getCantHab();
                        int idhab = lista.get(i).getIdhabitacion();
                        HabitacionesDAO hdao = new HabitacionesDAO();
                        h = hdao.buscar(idhab);
                        String estAct = "No disponible";
                        hdao.actualizarEstado(idhab, estAct);
                    }
                    //Guardar Reserva
                    res.setIdcliente(cl.getId());
                    res.setIdempleado(em.getId());//Revisar: envía id_empleado = 0
                    res.setFecha(date1);
                    res.setFecha2(date2);
                    res.setCantHab(cant);
                    res.setMonto(totalPagar);
                    resdao.guardarReserva(res);

                    //Detalle Reserva
                    int idr = Integer.parseInt(resdao.IdReservas());
                    for (int i = 0; i < lista.size(); i++) {
                        res = new Reserva();
                        res.setId(idr);
                        res.setIdhabitacion(lista.get(i).getIdhabitacion());
                        res.setCantHab(lista.get(i).getCantHab());
                        res.setPrecio(lista.get(i).getPrecio());
                        resdao.guardarDetalleReservas(res);
                    }
                    lista = new ArrayList<>();
                    break;
                default:
                    hab = new Habitaciones();
                    lista = new ArrayList<>();
                    item = 0;
                    totalPagar = 0.0;
                    request.getRequestDispatcher("Reservas.jsp").forward(request, response);
            }
            request.getRequestDispatcher("Reservas.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
