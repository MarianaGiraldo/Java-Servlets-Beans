<%-- 
    Document   : list_users
    Created on : 7/02/2022, 07:39:51 AM
    Author     : Mariana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //ArrayList users = new ArrayList();
    //users = (ArrayList)request.getAttribute("list");
    
    ResultSet users;
    users = (ResultSet)request.getAttribute("list");
    
    //while(users.next()){
      //  out.print("datos: " + users.getString("name"));
      //  out.print("datos: " + users.getString("email"));
      //  out.print("datos: " + users.getString("phonenumber"));
      //  out.print("datos: " + users.getString("userType"));
    //}
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Lista Usuarios</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Lista Usuarios</h1>
                
                <table class="table">
                    <tr>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Telefono</th>
                        <th>Tipo de Usuario</th>
                    </tr>
                    <% while(users.next()){
                    %>
                    <tr>
                        <td>
                            <%= users.getString("name")%>
                        </td>
                        <td>
                            <%= users.getString("email")%>
                        </td>
                        <td>
                            <%= users.getString("phonenumber")%>
                        </td>
                        <td>
                            <%= users.getString("userType")%>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </div>
    </body>
</html>
