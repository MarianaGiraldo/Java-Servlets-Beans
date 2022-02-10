<%-- 
    Document   : form_parking
    Created on : 6/02/2022, 07:02:41 AM
    Author     : maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
        <!--Bootstrap -->
        <%@include file="../components/bootstrap.jsp" %>
        <title>Admin Parqueadero</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Admin Parqueadero</h1>

                <form name="form_parking" action="../Controllers/parking_controller.jsp" method="GET" class="row p-3">
                    <div class="col-md-6">
                        <label for="txtNumero" class="form-label">Número de Parqueadero</label>
                        <input type="text" class="form-control" name="txtNumero" id="txtNumero" 
                           value=""/> <br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtLugar" class="form-label">Lugar</label>
                        <input type="text" class="form-control" name="txtLugar" id="txtLugar" 
                           value=""/> <br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtOcupado" class="form-label">¿Está ocupado?</label>
                        <select class="form-select" aria-label="Default select example" 
                                name="txtOcupado" id="txtOcupado">
                          <option selected>Seleccione</option>
                          <option value="true">Si</option>
                          <option value="false">No</option>
                        </select><br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtCorreo" class="form-label">Correo del dueno actual</label>
                        <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" 
                           value=""/> <br/>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <input type="submit" value="Crear" class="btn btn-success w-75" name="btnCrear" /> 
                        </div>
                        <div class="col-md-3">
                            <input type="submit" value="Consultar" class="btn btn-primary w-75" name="btnConsultar"/>
                        </div>
                        <div class="col-md-3">
                            <input type="submit" value="Modificar" class="btn btn-warning w-75" name="btnModificar"/>
                        </div>
                        <div class="col-md-3">
                            <input type="submit" value="Listar" class="btn btn-dark w-75" name="btnListar"/>
                        </div>
                    </div>
                </form>
                <a type="button" class="btn btn-light mx-3 mt-3" href="../" >Regresar</a>

            </div>
        </div>
        
    </body>
</html>