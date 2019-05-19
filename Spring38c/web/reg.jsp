<%-- 
    Document   : insert
    Created on : May 7, 2019, 11:28:46 AM
    Author     : l2pc208m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Spring Project</title>
        <link rel="shortcut icon" type="image/png" href="img/check.png">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootbox.min.js"></script>
        <script type="text/javascript" src="js/myform.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-8">
                    <h3 class="text-danger text-center">BECOME A MEMBER</h3>
                    <form action="insert.java">
                        <input type="text" name="name" class="form-control" placeholder="User Name"><br>
                        <input type="text" name="email" class="form-control" placeholder="User Email"><br>
                        <input type="password" name="password" class="form-control" placeholder="User Password"><br>
                        <input type="submit" value="INSERT" class="form-control btn btn-info"><br>
                        <a href="login.jsp" style="margin-left: 650px; margin-top: 25px" class="btn btn-warning text-light text-center">HOME</a>
                    </form>
                </div>
                <div class="col-md-4">
                     <i class="fa fa-user-plus fa-5x text-danger m-1"></i>
                </div>
            </div>
        </div>






        <hr>
       

    </body>
</html>
