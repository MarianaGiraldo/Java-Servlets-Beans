<%-- 
    Document   : list_address
    Created on : 7/02/2022, 08:26:27 AM
    Author     : SENA
--%>

<%@page import="Models.Address"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList listAddress = new ArrayList();
    listAddress = (ArrayList)request.getAttribute("list");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Lista Direcciones</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Lista direcciones</h1>
                
                <table class="table">
                    <tr>
                        <th>Calle</th>
                        <th>Ciudad</th>
                        <th>Departamento</th>
                        <th>Codigo Postal</th>
                        <th>Pais</th>
                <%
                    for(int i=0; i < listAddress.size() ; i++){
                        Address a = (Address)listAddress.get(i);
                %>
                    <tr>
                        <td>
                            <%= a.getStreet() %>
                        </td>
                        <td>
                            <%= a.getCity()%>
                        </td>
                        <td>
                            <%= a.getState()%>
                        </td>
                        <td>
                            <%= a.getPostalCode()%>
                        </td>
                        <td>
                            <%= a.getCountry()%>
                        </td>
                    </tr>    
                        
                <%    
                        }
                %>
                </table>
            </div>
        </div>
    </body>
</html>

