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

        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontawesome.css" rel="stylesheet" type="text/css"/>

        <!--        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js"></script>-->
        <script src="resources/angular.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontawesome.min.css">

        <style>
            .modal-dialog{
                position: relative;
                overflow-y: auto;
                max-width: 900px;
                padding: 15px;
            }
        </style>
    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">

        {{7 * 5}}
        
    <center>
        <div class="row">
            <div class="col-md-4">
                <span class="text-primary">TOTAL PRODUCT</span> <sapn class="btn btn-danger">{{simples.length}}</sapn>
            </div>
            <div class="col-md-4">
                <span class="text-primary">BUCKET LIST</span> <a href="#" data-target="#mymodal" data-toggle="modal"><i class="fa fa-shopping-cart fa-3x text-danger"></i></a>
                <i class="fa fa-circle fa-1x text-danger m-2" style="margin-top: 25px;">&nbsp {{orderList.length}}</i>
            </div>
            <div class="col-md-4">
                <a href="login.jsp">
                    <span class="text-primary">LOG OUT</span> <i class="fa fa-plus fa-3x text-danger"></i>
                </a>
            </div>
        </div>
    </center>
    <hr/>
    <!----------------------------------------------------------->
    <center>
        <div class="alert alert-warning" role="alert">
            <h2>{{msg}}</h2>
        </div>

    </center>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <span class="text-primary">SEARCH PRODUCT</span>
                </div>
                <div class="col-md-4">
                    <input type="text" name="" ng-model="searchText" placeholder="Search" class="form-control">
                </div>
            </div>


            <table class="table table-light text-center">
                <thead>
                    <tr>
                        <th scope="col" style="border-bottom: 1px solid red;">#</th>
                        <th scope="col" style="border-bottom: 1px solid red;">Product</th>
                        <th scope="col" style="border-bottom: 1px solid red;">Price</th>
                        <th scope="col" style="border-bottom: 1px solid red;">Options</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="pro in simples| filter: searchText" class="text-dark" style="border-bottom: 1px solid black;">
                        <td scope="row" style="border-bottom: 1px solid black;" >{{pro.pid}}</td>
                        <td style="border-bottom: 1px solid black;">{{pro.pname}}</td>
                        <td style="border-bottom: 1px solid black;">{{pro.price}}</td>
                        <td style="border-bottom: 1px solid black;">
                            <a href="#form1" ng-click="placeOrder(pro)" class="btn btn-warning">ORDER NOW
                                <i class="fa fa-plus fa-1x text-light m-1"></i>
                            </a>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
        <div class="col-md-1">

        </div>
    </div>
    <!----------------------------------------------------------->
    <!----------    CARD VIEW   ------------------------>
    <div class="container">
    <div class="row">
        <div class="col-md-4" ng-repeat="pro in simples| filter: searchText">
            <div class="card mb-2" style="width: 18rem;">
                <img src="" class="card-img-top" alt="">
                <div class="card-body">
                    <h5 class="card-title">Product title   <span class="text-danger">{{pro.pname}}</span> </h5>
                    <p class="card-text">Price  <i class="fa fa-dollar fa-1x text-danger m-2"></i> {{pro.price}}</p>
                    <a href="#form1" ng-click="placeOrder(pro)" class="btn btn-warning ml-5">ORDER NOW
                                <i class="fa fa-plus fa-1x text-light m-1"></i>
                            </a>
                </div>
            </div>
        </div>
    </div>
    </div>



    <!----------------------------------------------------------->

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-7">
            <form ng-submit="submitOrder()" ng-show="isVisible" id="form1">
                <input type="number" ng-model="submitForm.id" class="form-control" placeholder="Product Id"><br/>
                <input type="text" ng-model="submitForm.name" class="form-control" placeholder="Product Name" readonly><br/>
                <input type="number" ng-model="submitForm.price" class="form-control" placeholder="Product Price" readonly=""><br/>
                <input type="number" ng-model="submitForm.qty" class="form-control" placeholder="Product Quantity" required><br/>
                <input type="hidden" ng-model="submitForm.total" class="form-control"><br/>
                <input type="submit" value="SUBMIT" class="btn btn-danger"><br/>
            </form>
        </div>
        <div class="col-md-3">
            <div class="alert alert-warning" role="alert">
                <h2 class="text-danger">TOTAL PRICE {{submitForm.qty * submitForm.price}}<h2>
                        </div>

                        </div>
                        <div class="col-md-1"></div>
                        </div>

                        <!-- **************************MODAL STARTS*************************-->
                        <div class="modal" id="mymodal">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="text-primary text-center"><i class="fa fa-cart-plus fa-2x text-danger mr-2"></i>SHOPPING CART</h3>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <table class="table table-light">
                                            <thead>
                                                <tr>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT ID</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT NAME</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">PRODUCT PRICE</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">UNIT QUANTITY</td>
                                                    <td scope="col" class="text-primary" style="border-bottom: 1px solid red;">OPTIONS</td>
                                                    <td scope="col" class="text-primary"></td>
                                                </tr>
                                            </thead>
                                            <tr ng-repeat="p in orderList track by $index" scope="row" class="text-dark">

                                                <td>{{p.id}}</td>
                                                <td>{{p.name}}</td>
                                                <td>{{p.price}}</td>
                                                <td>{{p.qty}}</td>
                                                <td> 
                                                    <a href="#" data-target="#mymodal2" data-toggle="modal"  class="btn btn-primary" data-dismiss="modal" ng-click="purchaseData(p)">

                                                        <i class="fa fa-dollar fa-1x text-light m-1">PAYMENT</i>
                                                    </a>

                                                </td>
                                                <td> 
                                                    <a href=""  class="btn btn-danger" ng-click="removeProduct(p)">
                                                        <i class="fa fa-close fa-1x text-light m-1"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <!-- **************************MODAL STARTS*************************-->
                        <div class="modal" id="mymodal2">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="text-danger" style="margin-left: 180px;">
                                            <i class="fa fa-money-bill fa-3x text-danger mr-2"></i>
                                            PAYMENT FORM</h3>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <center>
                                        <div class="alert alert-warning" role="alert">
                                            <h2>{{msg}}</h2>
                                        </div>

                                    </center>
                                    <div class="modal-body">
                                        <form ng-submit="submitPaymentFun()">
                                            <input type="hidden" ng-model="submitPayment.id" class="form-control" placeholder="Id"><br/>
                                            Product Id  <input readonly="" type="text" ng-model="submitPayment.pid" value="{{submitPayment.pid}}" class="form-control" placeholder="Product Id"><br/>
                                            <span class="text-danger"> Contacts Number </span> <input type="text" ng-model="submitPayment.pname" class="form-control" placeholder="CONTACTS" required="" ><br/>
                                            Unit Price      <input readonly type="text" ng-model="submitPayment.unitprice" value="{{submitPayment.unitprice}}" class="form-control" placeholder="Product Price" ><br/>
                                            Quantity       <input readonly type="text" ng-model="submitPayment.status" value="{{submitPayment.status}}" class="form-control" placeholder="Product Quantity" ><br/>
                                            Total Price        <input readonly type="text" ng-model="submitPayment.totalprice" value="{{submitPayment.totalprice}}" class="form-control"><br/>
                                            <input readonly type="submit" value="RELEASE PAYMENT" class="btn btn-danger btn-block"><br/>
                                        </form>
                                    </div>

                                </div>

                            </div>
                        </div>


                        <!----------------------------------------------------------->
                        <script>
                                    var app = angular.module("simpleApp", []);
                                    app.controller("simpleCtrl", function ($scope, $http) {

                                        $scope.msg = "Chose Product From The List";

                                        $scope.submitForm = {
                                            id: 1,
                                            name: "",
                                            price: "",
                                            qty: "",
                                            total: ""
                                        };

                                        $scope.submitPayment = {
                                            id: "",
                                            pid: "",
                                            pname: "",
                                            unitprice: "",
                                            totalprice: "",
                                            status: ""
                                        };

                                        $scope.purchaseData = function (payData) {
                                            $scope.submitPayment.pid = payData.id;
                                            $scope.submitPayment.pname = payData.name;
                                            $scope.submitPayment.unitprice = payData.price;
                                            $scope.submitPayment.status = payData.qty;
                                            $scope.submitPayment.totalprice = $scope.submitPayment.unitprice * $scope.submitPayment.status;
                                        }
                                        $scope.submitOrder = function () {

                                            //-------------------------------------------------------
                                            var method = "";
                                            var url = "";

                                            method = "POST";
                                            url = 'service/simpleOrder';

                                            $http({
                                                method: method,
                                                url: url,
                                                data: angular.toJson($scope.submitForm),
                                                headers: {
                                                    'Content-Type': 'application/json'
                                                }
                                            }).then(success, error);

                                        }
                                        //-------------------------------------------------------
                                        // SUBMIT PAYMENT
                                        $scope.submitPaymentFun = function () {

                                            //-------------------------------------------------------
                                            var method = "";
                                            var url = "";

                                            method = "POST";
                                            url = 'service/simplePurchase';

                                            $http({
                                                method: method,
                                                url: url,
                                                data: angular.toJson($scope.submitPayment),
                                                headers: {
                                                    'Content-Type': 'application/json'
                                                }
                                            }).then(success, error);

                                        }
                                        //--------------------------------------------------------

                                        $scope.placeOrder = function (selectedOrder) {
                                            $scope.isVisible = true;
                                            $scope.submitForm.name = selectedOrder.pname;
                                            $scope.submitForm.price = selectedOrder.price;
                                            console.log($scope.submitForm.price);
                                            console.log($scope.submitForm.qty);
                                            $scope.submitForm.total = $scope.submitForm.price * $scope.submitForm.qty;
                                        }

                                        //------------------------------------------------------

                                        $scope.pro = {
                                            id: -1,
                                            name: "",
                                            price: 0,
                                            qty: 0,
                                            total: 0
                                        };

                                        $scope.isVisible = false;
                                        $scope.simples = [];
                                        refreshSimpleData();
                                        function refreshSimpleData() {
                                            $http({
                                                method: 'GET',
                                                url: 'http://localhost:8080/Spring38c/service/simple'
                                            }).then(function successCallback(response) {
                                                $scope.simples = response.data;
                                                console.log($scope.simples);
                                            });
                                        }
                                        //-------------------------------------------------------------

                                        $scope.orderList = [];
                                        refreshSimpleOrderData();
                                        function refreshSimpleOrderData() {
                                            $http({
                                                method: 'GET',
                                                url: 'http://localhost:8080/Spring38c/service/simpleOrder'
                                            }).then(function successCallback(response) {
                                                $scope.orderList = response.data;
                                                console.log($scope.simples);
                                            });
                                        }

                                        //----------------------------------------------------------

                                        $scope.removeProduct = function (simple) {
                                            $http({
                                                method: 'DELETE',
                                                url: 'service/simpleOrder/delete/' + simple.id
                                            }).then(success, error);
                                            ;
                                        };
                                        //-----------------------------------------------------------
                                        function success(response) {
                                            refreshSimpleData();
                                            $scope.isVisible = false;
                                            refreshSimpleOrderData();
                                            $scope.msg = "Successfull"
                                            //clearFormData()
                                        }
                                        function error(response) {
                                            console.log(response.statusText);
                                            $scope.msg = "Failed, Try Again"
                                        }
                                    });
                        </script>
                        </body>
                        </html>
