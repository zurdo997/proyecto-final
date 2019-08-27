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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("PantallaPrincipal.jsp").forward(request, response);
        } else {
            contadorError++;
            request.setAttribute("cantidadIncorrectos", contadorError);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (menu.equals("Habitaciones")) {
            switch (accion) {
                case "Listar":
                    List lista = habdao.listar();
                    request.setAttribute("productos", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    double pre = Double.parseDouble(request.getParameter("txtNombres"));
                    int st = Integer.parseInt(request.getParameter("txtTel"));
                    String est = request.getParameter("txtEstado");
                    p.setNom(dni);
                    p.setPre(pre);
                    p.setStock(st);
                    p.setEstado(est);
                    pdao.agregar(p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
            }
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
