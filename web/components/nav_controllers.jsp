<%-- 
    Document   : nav
    Created on : 2/02/2022, 06:13:59 PM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-warning bg-opacity-50">
    <div class="container-fluid">
      <a class="navbar-brand" href="../">Java WEB</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="../">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../Views/tipo_usuario.jsp">Usuario</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../Views/form_parking.jsp">Parqueadero</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../Views/form_direccion.jsp">Direccion</a>
          </li>
        </ul>
        <span class="navbar-text">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link" href="../Views/login.jsp">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../Views/logout.jsp">Logout</a>
                </li>
            </ul>
        </span>
      </div>
    </div>
</nav>