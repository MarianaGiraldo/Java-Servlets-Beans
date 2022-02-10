<%-- 
    Document   : address_controller
    Created on : 5/02/2022, 04:42:08 PM
    Author     : Mariana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Address"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    String dato;
    Address a = new Address();
    ArrayList listAddress = new ArrayList();
%>
<% 
    String btnCrear = request.getParameter("btnCrear");
    String btnModificar = request.getParameter("btnModificar");
    String btnConsultar = request.getParameter("btnConsultar");
    String btnListar = request.getParameter("btnListar");
    
    if(btnCrear != null && btnCrear.equals("Crear")){
        dato = a.insertAddress(); 
        a = new Address(
                request.getParameter("txtCalle"), 
                request.getParameter("txtCiudad"), 
                request.getParameter("txtEstado"), 
                request.getParameter("txtCodigoPostal"),  
                request.getParameter("txtPais")
         );
       
    }
    if(btnConsultar != null && btnConsultar.equals("Consultar")){
        dato = a.consultAddress();
        dato += "<br/>" + a.OutputAsLabel();
      
        
    }
    if(btnModificar != null && btnModificar.equals("Modificar") ){
        dato = a.editAddress();
        
    }
    if(btnListar != null && btnListar.equals("Listar") ){
        listAddress = a.listAddress();
        
        request.setAttribute("list", listAddress);
        request.getRequestDispatcher("../Views/list_address.jsp").forward(request, response);
    }
    
    request.setAttribute("datos", dato);
    request.getRequestDispatcher("../Views/view_direccion.jsp").forward(request, response);
%>

