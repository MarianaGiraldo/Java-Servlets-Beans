<%-- 
    Document   : index
    Created on : 31/01/2022, 08:51:50 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE httml>
    <head>
        <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
        <%@include file="components/bootstrap.jsp" %>
        <title>Java WEB</title>
    </head>
    <body class="bg-light">
        <nav class="navbar navbar-expand-lg navbar-light bg-warning bg-opacity-50">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Java WEB</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="Views/tipo_usuario.jsp">Usuario</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Views/form_parking.jsp">Parqueadero</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Views/form_direccion.jsp">Direccion</a>
                  </li>
                </ul>
                <span class="navbar-text">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                          <a class="nav-link" href="Views/login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="Views/logout.jsp">Logout</a>
                        </li>
                    </ul>
                </span>
              </div>
            </div>
        </nav>
        
        <div class="container">
            <div class="mx-auto w-75 my-4 p-4 bg-success bg-opacity-25 rounded" >
                <div class="row my-2 mx-auto col-md-10">
                    <div class="col-md-6">
                        <img class="w-100 mx-auto" src="images/student.png" alt="Student">
                        <a type="button" class="btn btn-success w-100 mt-2" href="Views/form_estudiante.jsp">Estudiante</a> 
                    </div>
                    <div class="col-md-6">
                        <img class="w-100 mx-auto" src="images/professor.png" alt="Professor">
                        <a type="button" class="btn btn-success w-100 mt-2" href="Views/form_profesor.jsp">Profesor</a> 
                    </div>
                </div>
                <div class="row m-2">
                    <div class="col-6 mx-auto my-5">
                       <a type="button" class="btn btn-primary w-100" href="Views/form_direccion.jsp">Administrar Dirección</a> 
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
