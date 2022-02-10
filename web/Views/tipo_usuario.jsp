<%-- 
    Document   : tipo_usuario
    Created on : 4/02/2022, 08:11:27 PM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
        <!--Bootstrap -->
        <%@include file="../components/bootstrap.jsp" %>
        <title>Tipo Usuario</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav.jsp" %>
        <div class="container">
            <div class="mx-auto w-75 my-4 p-4 bg-success bg-opacity-25 rounded" >
                <h3 class="text-center mb-4">Tipo de Usuario</h3>
                <div class="row my-2 mx-auto col-md-10">
                    <div class="col-md-6">
                        <img class="w-100 mx-auto" src="../images/student.png" alt="Student">
                        <a type="button" class="btn btn-success w-100 mt-2" href="form_estudiante.jsp">Estudiante</a> 
                    </div>
                    <div class="col-md-6">
                        <img class="w-100 mx-auto" src="../images/professor.png" alt="Professor">
                        <a type="button" class="btn btn-success w-100 mt-2" href="form_profesor.jsp">Profesor</a> 
                    </div>
                </div>
                <div class="row m-2">
                    <div class="col-6 mx-auto my-5">
                       <a type="button" class="btn btn-primary w-100" href="form_direccion.jsp">Administrar Dirección</a> 
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>

