<%-- 
    Document   : view_user
    Created on : 4/02/2022, 8:12:44 PM
    Author     : Mariana
--%>

<%@page import="Models.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Student" %>
<%@page import="Models.Professor" %>
<%!  %>
<%
    String dato = (String)request.getAttribute("datos");
    
    UserBean u = new UserBean();
    u = (UserBean)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Accion guardados</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Acción guardada</h1>
                <div class="p-3">
                    <%= dato %>
                    <br/>
                    <%--
                        <%= u.getName() %> --%>
                    <p>
                        <jsp:useBean id="user" scope="request" class="Models.UserBean" />
                        <b> Nombre: </b> <jsp:getProperty name="user" property="name" /> <br/>
                        <b> Email: </b> <jsp:getProperty name="user" property="email" /> <br/>
                        <b> Telefono: </b> <jsp:getProperty name="user" property="phoneNumber" /> <br/>
                        <b> Tipo de usuario: </b> <jsp:getProperty name="user" property="userType" /> <br/>
                    </p>
                    
                </div>
            </div>
        </div>
    </body>
</html>

