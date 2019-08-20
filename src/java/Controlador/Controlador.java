/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Desarrollo Web
 */
public class Controlador extends HttpServlet {

    String usuarioDefecto = "alan";
    String contrasenaDefecto = "alan97";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

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

        String nombre, contra;
        nombre = request.getParameter("nombreUsuario");
        contra = request.getParameter("contra");
        int intento = 3;
        /*if (nombre.equals(usuarioDefecto) && contra.equals(contrasenaDefecto)) {
            response.sendRedirect("PantallaPrincipal.jsp?nombre=" + nombre + "&numero=3&intento=7");
        } else {
            request.setAttribute("errorMessage", "El nombre de usuario o la contraseña no es correcto.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            intento++;*/
        if (intento != 0) {
            if (nombre.equals(usuarioDefecto) && contra.equals(contrasenaDefecto)) {
                response.sendRedirect("PantallaPrincipal.jsp?nombre=" + nombre + "&numero=3&intento=7");
            } else {
                request.setAttribute("errorMessage", "El nombre de usuario o la contraseña no es correcto.");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                intento--;
            }
            //request.setAttribute("max", "Ha alcanzado el maximo de intentos");
            //request.getRequestDispatcher("/index.jsp").forward(request, response);
            //out.print("<p style=\"color:#ffc107;text-align:center;margin-bottom:0px\">Ha alcanzado el maximo de intentos</p>");
            //else 
            //request.setAttribute("intentos", "Cantidad de intentos: " + intento);
            //request.getRequestDispatcher("/index.jsp").forward(request, response);
            //out.print("<p style=\"color:#ffc107;text-align:center;margin-bottom:0px\">Cantidad de intentos: "+intento+"</p>");
        } else {
            out.print("<p style=\"color:#ffc107;text-align:center;margin-bottom:0px\">Ha alcanzado el maximo de intentos</p>");
        }
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
