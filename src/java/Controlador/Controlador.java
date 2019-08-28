/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Habitaciones;
import Modelo.HabitacionesDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
    int idh;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("PantallaPrincipal")) {
            request.getRequestDispatcher("PantallaPrincipal.jsp").forward(request, response);
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
                    idh = Integer.parseInt(request.getParameter("id"));
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
                    idh = Integer.parseInt(request.getParameter("id"));
                    habdao.eliminar(idh);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Habitaciones.jsp").forward(request, response);
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
