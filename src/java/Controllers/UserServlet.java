/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Models.Professor;
import Models.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mariana
 */
public class UserServlet extends HttpServlet {
    String dato;
    Student s = new Student();
    Professor p = new Professor();
    ResultSet listUser;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
        }catch(Exception e){
            e.getMessage();
        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet user</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet user at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //Hacer lo que esta EN EL RESTO DEL CONTROLDOR PARA VALIDAR QUÉ TIPO DE BOTÓN ES
        try{
            String btnCrear = request.getParameter("btnCrear");
            String btnModificar = request.getParameter("btnModificar");
            String btnConsultar = request.getParameter("btnConsultar");
            String btnListar = request.getParameter("btnListar");
            
            String txtCodEst = request.getParameter("txtCodEstudiante");
            String txtNombre = request.getParameter("txtNombre");
            String txtTel = request.getParameter("txtTelefono");
            String txtCorr = request.getParameter("txtCorreo");
            

            if(btnCrear != null && btnCrear.equals("Crear")){
                if(txtCodEst != null){
                    Float flNota = Float.parseFloat(request.getParameter("txtNotaPromedio"));
                    s = new Student(
                            txtCodEst, 
                            flNota, 
                            txtNombre, 
                            txtTel,  
                            txtCorr,
                            "Estudiante"
                     );
                    dato = s.insertStudent(); 
                    request.setAttribute("user", s);
                }else{
                    int salary = Integer.parseInt(request.getParameter("txtSalario"));
                    p = new Professor(
                            salary, 
                            txtNombre, 
                            txtTel,  
                            txtCorr,
                            "Profesor"
                    );
                    dato = p.insertProfessor();
                    request.setAttribute("user", p);
                }

            }
            if(btnConsultar != null && btnConsultar.equals("Consultar") ){
                if(txtCodEst != null){
                    dato = s.consultStudent();
                    request.setAttribute("user", s);
                }else{
                    dato = p.consultProfessor();
                    request.setAttribute("user", p);
                }

            }
            if(btnModificar != null && btnModificar.equals("Modificar") ){
                if(txtCodEst != null){
                    dato = s.editStudent();
                    request.setAttribute("user", s);
                }else{
                    dato = p.editProfessor();
                    request.setAttribute("user", p);
                }

            }
            if(btnListar != null && btnListar.equals("Listar") ){
                if(txtCodEst != null){
                    listUser = s.listUsers();
                }else{
                    listUser = p.listUsers();
                }

                request.setAttribute("list", listUser);
                request.getRequestDispatcher("Views/list_users.jsp").forward(request, response);
            }

            request.setAttribute("datos", dato);
            request.getRequestDispatcher("Views/view_user.jsp").forward(request, response);
            
        }catch(SQLException e){
            System.err.println("Error: " + e.getMessage());
        }
        
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<p> Este es el método POST </p>");
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
