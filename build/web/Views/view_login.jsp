<%-- 
    Document   : view_login
    Created on : 6/02/2022, 08:10:16 AM
    Author     : maria
--%>

<%@page import="Models.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String auth = (String)request.getAttribute("autoriza");
    Login dato = (Login)request.getAttribute("LoginData");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Login</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Login</h1>
                <div class="p-3">
                    <%= auth %>
                </div>
            </div>
        </div>
    </body>
</html>

