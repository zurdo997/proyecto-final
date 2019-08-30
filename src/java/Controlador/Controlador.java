/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Modelo.ClienteDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Habitaciones;
import Modelo.HabitacionesDAO;
import Modelo.Reserva;
import Modelo.ReservaDAO;
import Modelo.Servicios;
import Modelo.ServiciosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Desarrollo Web
 */
public class Controlador extends HttpServlet {

    int contadorError = 0;
    Habitaciones hab = new Habitaciones();
    HabitacionesDAO habdao = new HabitacionesDAO();
    Empleado em = new Empleado();
    EmpleadoDAO emdao = new EmpleadoDAO();
    Cliente cl = new Cliente();
    ClienteDAO cldao = new ClienteDAO();
    Servicios ser = new Servicios();
    ServiciosDAO serdao = new ServiciosDAO();
    Reserva res = new Reserva();
    ReservaDAO resdao = new ReservaDAO();
    int idh;
    int ide;
    int idc;
    int ids;
    int idr;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("PantallaPrincipal")) {
            request.getRequestDispatcher("PantallaPrincipal.jsp").forward(request, response);
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
                default:
                    throw new AssertionError();
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
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleados.jsp").forward(request, response);
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
                    hab.setTipo_hab(tipoHab);
                    hab.setCant(cant);
                    hab.setPiso(piso);
                    hab.setNumero(num);
                    hab.setPrecio(precio);
                    hab.setEstado(est);
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
                    hab.setTipo_hab(tipoHab2);
                    hab.setCant(cant2);
                    hab.setPiso(piso2);
                    hab.setNumero(num2);
                    hab.setPrecio(precio2);
                    hab.setEstado(est2);
                    hab.setId(idh);
                    habdao.actualizar(hab);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idh = Integer.parseInt(request.getParameter("id_hab"));
                    habdao.eliminar(idh);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
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
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        
        if (menu.equals("Contacto")) {
            request.getRequestDispatcher("Contacto.jsp").forward(request, response);
        }
        
        if (menu.equals("Reservas")) {
            switch (accion) {
                case "Listar":
                    List lista = resdao.listar();
                    request.setAttribute("reservas", lista);
                    break;
                case "Agregar":
                    Date fecha = java.util.Date.parse(request.getParameter(""));
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
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
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
                    request.getRequestDispatcher("Controlador?menu=Serivicios&accion=Listar").forward(request, response);
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
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Servicios.jsp").forward(request, response);
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
