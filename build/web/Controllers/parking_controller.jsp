<%-- 
    Document   : parking_controller
    Created on : 5/02/2022, 05:58:16 PM
    Author     : Mariana
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Models.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.CarPark"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    String dato;
    CarPark p = new CarPark();
    ArrayList listParking = new ArrayList();
%>
<% 
    String btnCrear = request.getParameter("btnCrear");
    String btnModificar = request.getParameter("btnModificar");
    String btnConsultar = request.getParameter("btnConsultar");
    String btnListar = request.getParameter("btnListar");
    
    if(btnCrear != null && btnCrear.equals("Crear")){
        int user_id = 0;
        try{
            ResultSet user = (ResultSet)p.getUserbyEmail(request.getParameter("txtCorreo"));
                
                while(user.next()){
                    user_id = user.getInt("id");
                }
            p = new CarPark(
            request.getParameter("txtNumero"), 
            request.getParameter("txtLugar"), 
            Boolean.parseBoolean(request.getParameter("txtOcupado")), 
            user_id
            );
            dato = p.insertParking(); 
        }catch(SQLException e){
            dato = "Usuario con ese email, no encontrado";
        }
       
    }
    if(btnConsultar != null && btnConsultar.equals("Consultar")){
        dato = p.consultParking();
        dato += "<br/>" + p.getData();
      
        
    }
    if(btnModificar != null && btnModificar.equals("Modificar") ){
        dato = p.editParking();
        
    }
    if(btnListar != null && btnListar.equals("Listar") ){
        listParking = p.listParking();
        
        request.setAttribute("list", listParking);
        request.getRequestDispatcher("../Views/list_parking.jsp").forward(request, response);
    }
    
    request.setAttribute("datos", dato);
    request.getRequestDispatcher("../Views/view_parking.jsp").forward(request, response);
%>

