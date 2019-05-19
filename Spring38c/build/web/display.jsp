<%-- 
    Document   : display
    Created on : May 8, 2019, 10:44:18 AM
    Author     : l2pc208m
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <center>
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h3 class="text-primary text-center">DATA ADMIN!</h3>
                    <table class="bg-light text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-danger">
                            <th>ID</th>
                            <th>NAME</th>
                            <th>EMAIL</th>
                            <th>PASSWORD</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                            <hr class="text-priamry bg-primary" style="height: 5px;">
                        </td>
                        </tr>
                        <c:forEach items="${data}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.id}</td>
                                <td>${d.name}</td>
                                <td>${d.email}</td>
                                <td>${d.password}</td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        
        <hr/>
        
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h3 class="text-primary text-center">DATA MEMBER!</h3>
                    <table class="bg-light text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-danger">
                            <th>ID</th>
                            <th>NAME</th>
                            <th>EMAIL</th>
                            <th>PASSWORD</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                            <hr class="text-primary bg-primary" style="height: 5px;">
                        </td>
                        </tr>
                        <c:forEach items="${dataMember}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.id}</td>
                                <td>${d.name}</td>
                                <td>${d.email}</td>
                                <td>${d.password}</td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        
        <hr/>
        
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h3 class="text-primary text-center">DATA PRODUCT!</h3>
                    <table class="bg-light text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-danger">
                            <th>PRODUCT ID</th>
                            <th>PRODUCT NAME</th>
                            <th>PRODUCT PRICE</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                            <hr class="text-primary bg-primary" style="height: 5px;">
                        </td>
                        </tr>
                        <c:forEach items="${dataProduct}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.pid}</td>
                                <td>${d.pname}</td>
                                <td>${d.price}</td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        
        <div class="row mt-3">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form action="back.htm">
                    <input type="submit" value="BACK" class="btn btn-success btn-block">
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>

        
    </center>

</body>
</html>
