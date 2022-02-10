<%-- 
    Document   : crear_direccion
    Created on : 31/01/2022, 12:15:36 PM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
        <!--Bootstrap -->
        <%@include file="../components/bootstrap.jsp" %>
        <title>Admin Direccion</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Admin Direccion</h1>

                <form name="form_direccion" action="../Controllers/address_controller.jsp" method="GET" class="row p-3">
                    <div class="col-md-12">
                        <label for="txtCalle" class="form-label">Calle</label>
                        <input type="text" class="form-control" name="txtCalle" id="txtCalle" 
                           value=""/> <br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtCiudad" class="form-label">Ciudad</label>
                        <input type="text" class="form-control" name="txtCiudad" id="txtCiudad" 
                           value=""/> <br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtEstado" class="form-label">Estado/Departamento</label>
                        <input type="text" class="form-control" name="txtEstado" id="txtEstado" 
                           value=""/> <br/>
                    </div>

                    <div class="col-md-6">
                        <label for="txtCodigoPostal" class="form-label">Código Postal</label>
                        <input type="text" class="form-control" name="txtCodigoPostal" id="txtCodigoPostal" 
                           value=""/> <br/>
                    </div>
                    
                    <div class="col-md-6">
                        <label for="txtPais" class="form-label">País</label>
                        <input type="text" class="form-control" name="txtPais" id="txtPais" 
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