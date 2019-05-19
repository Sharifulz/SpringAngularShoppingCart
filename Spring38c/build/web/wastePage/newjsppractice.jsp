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
        
        <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="css/style.css">
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontawesome.min.css">

       

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">

        {{7 * 5}}
        <p>Hellow <span id="dd"></span></p>

       
         <!-- **************************Log In And Sign Up Card And Button*************************-->
 

    <script>
                var app = angular.module("simpleApp", []);
                app.controller("simpleCtrl", function ($scope, $http) {
                  var qq = [];
                  qq = localStorage.getItem("array1");
                   document.getElementById("dd").innerHTML = qq[0];
                  console.log(qq.toString());       
                });
    </script>
</body>
</html>
