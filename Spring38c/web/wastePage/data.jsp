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
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE!</h3>
                    <table class="bg-dark text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-danger">
                            <th>ID</th>
                            <th>NAME</th>
                            <th>EMAIL</th>
                            <th>PASSWORD</th>
                            <th>OPTIONS</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                            <hr class="text-danger" style="height: 5px; background-color: red;">
                        </td>
                        </tr>
                        <c:forEach items="${data2}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-light">
                                <td>${d.id}</td>
                                <td>${d.name}</td>
                                <td>${d.email}</td>
                                <td>${d.password}</td>
                                <td><a href="delete.htm?id=${d.id}" class="btn btn-danger">DELETE</a></td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        
        
         <c:forEach items="${data2}" var="d">
             <form action="update.htm">
                 <input type="text" value="${d.id}" name="id">
                 <input type="text" value="${d.name}" name="name">
                 <input type="text" value="${d.email}" name="email">
                 <input type="text" value="${d.password}" name="password">
             <input type="submit" value="UPDATE">
             </form>
                        </c:forEach>
             
             
             
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
