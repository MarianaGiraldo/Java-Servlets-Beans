<%-- 
    Document   : view_parking
    Created on : 6/02/2022, 07:23:13 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dato = (String)request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Datos guardados</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Acción guardada</h1>
                <div class="p-3">
                    <%= dato %>
                </div>
            </div>
        </div>
    </body>
</html>
