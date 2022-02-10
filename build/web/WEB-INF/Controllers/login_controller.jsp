<%-- 
    Document   : login_controller
    Created on : 6/02/2022, 07:46:31 AM
    Author     : Mariana
--%>

<%@page import="Models.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Login log = new Login();
%>
<%
    String btnLogin = request.getParameter("btnLogin");
    if(btnLogin != null && btnLogin.equals("Login")){
        log = new Login("mgiraldo594@misena.edu.co", "123456", 
                "tdtdtdtd123", "Admin");
    }
    
    
    String email = request.getParameter("txtEmail");
    String password = request.getParameter("txtPassword");
    
    if(log.validateLogin(email, password)){
        /*
        request.setAttribute("txtEmail", log.getEmail());
        request.setAttribute("txtPassword", log.getPassword());
        request.setAttribute("txtRole", log.getRole());
        request.setAttribute("txtToken", log.getToken()); 
                */
        request.setAttribute("LoginData", log);
        request.setAttribute("autoriza", log.allowAccess());
        
        request.getRequestDispatcher("../Views/view_login.jsp")
                .forward(request, response);
    }else{
        log.setEmail(null);
        log.setPassword(null);
        log.setRole(null);
        log.setToken("null");
        request.setAttribute("autoriza", log.denyAccess());
        
        request.getRequestDispatcher("../Views/view_login.jsp")
                .forward(request, response);
    }

%>
