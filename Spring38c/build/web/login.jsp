<%-- 
    Document   : login
    Created on : May 7, 2019, 11:17:03 AM
    Author     : l2pc208m
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SPRING</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css">

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js"></script>
        <script src="js/bootstrap.min.js"></script>



        <script src="resources/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>


        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontawesome.min.css">

        <script src="js/jquery-3.3.1.min.js"></script>

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
        {{7 * 5}}
        <div class="container">
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-2">
                    <div class="spinner-grow text-primary" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                    <i class="fa fa-hand-paper fa-5x text-danger m-1"></i><br>

                </div>
                <div class="col-md-5"></div>
            </div>
        </div>
        <div class="container mb-5" style="margin-bottom: 150px;">
        <div class="row" style="margin-top: 100px;">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <div class="alert alert-danger text-dark" role="alert">                                    
                    <c:out value="${msg}"></c:out>
                </div>
                <div class="">
                    <select ng-model="dept" class="form-control">
                        <option value="" class="dropdown-item text-dark">LOGIN TYPE</option>
                        <option value="ADMIN" class="dropdown-item text-dark">ADMIN</option>
                        <option value="MEMBER" class="dropdown-item text-dark">MEMBER</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        </div>
        <!-- **************************************AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA-->
        <div ng-if="dept == 'ADMIN'">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-2 text-danger">
                        <i class="fa fa-user fa-5x text-danger m-2"></i><br>
                        <h2 class="text-danger">ADMIN</h2>
                    </div>
                    <div class="col-md-8">
                        <h3 class="text-danger text-center"></h3>
                        <form action="checkAdmin.htm">
                            <input type="text" name="name" class="form-control" placeholder="User Name"><br>
                            <input type="password" name="password" class="form-control" placeholder="Password" ><br>
                            <input type="submit" value="LOG IN" class="form-control btn btn-primary"><br>
                        </form>
                        <span class="text-danger" style="font-size: 18px; margin-left: 550px;">
                            <br/> 
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
            </div>
        </div>

        <div ng-if="dept == 'MEMBER'">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-2 text-danger">
                         <i class="fa fa-users fa-5x text-danger m-2"></i><br>
                        <h2 class="text-danger">MEMBER</h2>
                    </div>
                    <div class="col-md-8">
                        
                        <form action="checkMember.htm">
                            <input type="text" name="name" class="form-control" placeholder="User Name"><br>
                            <input type="password" name="password" class="form-control" placeholder="Password" ><br>
                            <input type="submit" value="LOG IN" class="form-control btn btn-primary"><br>
                        </form>
                        <span class="text-danger" style="font-size: 18px; margin-left: 550px;">                            
                            <br/> <a href="reg.jsp" class="mt-5" style="font-size: 20px; margin-left: 500px">Become A Member</a>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
            </div>
        </div>


        <!-- ----------------SPINNER ------------------------->
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
            </div>
        </div>

        <script>
                    var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {


                    });
        </script>
    </body>
</html>
