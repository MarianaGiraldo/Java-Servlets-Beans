<%-- 
    Document   : list_parking
    Created on : 7/02/2022, 09:09:03 AM
    Author     : Mariana
--%>

<%@page import="Models.Parking"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList listParking = new ArrayList();
    listParking = (ArrayList)request.getAttribute("list");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../components/bootstrap.jsp" %>
        <title>Lista Parqueaderos</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav_controllers.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Lista parqueaderos</h1>
                
                <table class="table">
                    <tr>
                        <th>#</th>
                        <th>Lugar</th>
                        <th>¿Ocupado?</th>
                        <th>Correo dueno</th>
                <%
                    for(int i=0; i < listParking.size() ; i++){
                        Parking p = (Parking)listParking.get(i);
                %>
                    <tr>
                        <td>
                            <%= p.getNumber()%>
                        </td>
                        <td>
                            <%= p.getPlace()%>
                        </td>
                        <td>
                            <% 
                            String occupied;
                            if(p.getOccupied()){
                                occupied = "Si";
                            }else{
                                occupied = "No";
                            }
                            %>
                            <%= occupied%>
                        </td>
                        <td>
                            <%= p.getOwnersEmail()%>
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

