<%-- 
    Document   : form_login
    Created on : 6/02/2022, 07:48:18 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="ml; charset=UTF-8">
        <!--Bootstrap -->
        <%@include file="../components/bootstrap.jsp" %>
        <title>Login</title>
    </head>
    <body class="bg-light">
        <%@include file="../components/nav.jsp" %>
        <div class="container mt-4">
            <div class="m-auto w-75 p-3 bg-success bg-opacity-25 rounded">
                <h1>Login</h1>
                <%
                    
                %>
                <form name="form_login" action="../Controllers/login_controller.jsp" method="GET" class="row p-3">
                      <div class="mb-3 row">
                        <label for="txtEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtEmail" id="txtEmail" value="">
                        </div>
                      </div>
                      <div class="mb-3 row">
                          
                        <label for="txtPassword" class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtPassword" id="txtPassword">
                        </div>
                      </div>
                        <input type="submit" value="Login" class="btn btn-success m-2 w-75 " name="btnLogin" /> 

                </form>
                <a type="button" class="btn btn-light mx-3 mt-3" href="../" >Regresar</a>

            </div>
        </div>
        
    </body>
</html>
