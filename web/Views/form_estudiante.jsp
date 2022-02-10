<%-- 
    Document   : crear_estudiante
    Created on : 2/02/2022, 07:43:04 PM
    Author     : Mariana
--%>


<%@page import="java.sql.Connection"%>
<%@page import="Models.Dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
    <!--Bootstrap -->
    <%@include file="../components/bootstrap.jsp" %>
    <title>Admin Estudiante</title>
</head>
<body class="bg-light">
    <%@include file="../components/nav.jsp" %>
    <div class="container mt-4">
        <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
            <h1>Admin Estudiante</h1>

            <%
                try {
                    if (Dao.conecta() != null) {
                        Connection con = Dao.conecta();
                        out.print("Conexion a Base de datos exitosa.");
                    }
                } catch (Exception ex) {
                    out.print("Conexion a Base de datos fallida: " + ex.getMessage());
                }
            %>
            <form name="crear_estudiante" action="../user" method="POST" class="row p-3">
                <%@include file="../components/form_persona.jsp" %>
                <div class="col-md-6">
                    <label for="txtCodEstudiante" class="form-label">Codigo de Estudiante</label>
                    <input type="text" class="form-control" name="txtCodEstudiante" id="txtCodEstudiante" 
                           value=""/> <br/>
                </div>
                <div class="col-md-6">
                    <label for="txtNotaPromedio" class="form-label">Nota Promedio</label>
                    <input type="text" class="form-control" name="txtNotaPromedio" id="txtNotaPromedio" 
                           value=""/> <br/>
                </div>
                <div class="row p-1">
                    <div class="col-md-3 my-1">
                        <input type="submit" value="Crear" class="btn btn-success w-100" name="btnCrear" /> 
                    </div>
                    <div class="col-md-3 my-1">
                        <input type="submit" value="Consultar" class="btn btn-primary w-100" name="btnConsultar"/>
                    </div>
                    <div class="col-md-3 my-1">
                        <input type="submit" value="Modificar" class="btn btn-warning w-100" name="btnModificar"/>
                    </div>
                    <div class="col-md-3 my-1">
                        <input type="submit" value="Listar" class="btn btn-dark w-100" name="btnListar"/>
                    </div>
                </div>
            </form>
            <a type="button" class="btn btn-light mx-3 mt-3" href="../" >Regresar</a>
        </div>
    </div>

</body>
</html>
