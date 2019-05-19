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

        <div class="row mt-5">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="alert alert-danger text-dark" role="alert">                                    
                    <c:out value="${msg}"></c:out>
                    </div>
                    <div class="">
                        <select ng-model="dept" class="form-control">
                            <option value="" class="dropdown-item text-dark">INSERT CATAGORY</option>
                            <option value="ADMIN" class="dropdown-item text-dark">ADMIN</option>
                            <option value="MEMBER" class="dropdown-item text-dark">MEMBER</option>
                            <option value="PRODUCT" class="dropdown-item text-dark">PRODUCT</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
                    
                    
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2">
                    <a href="login.jsp" class="btn btn-danger btn-lg">LOG OUT</a>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div ng-if="dept == 'ADMIN'">
                         <h3 class="text-danger text-center">
                             <i class="fa fa-user fa-3x text-danger m-2"></i>
                             ADD NEW ADMIN</h3>
                    <form action="insertAdmin.htm">
                        <input type="text" name="id" class="form-control" placeholder="User ID"><br>
                        <input type="text" name="name" class="form-control" placeholder="User Name"><br>
                        <input type="text" name="email" class="form-control" placeholder="User Email"><br>
                        <input type="password" name="password" class="form-control" placeholder="User Password"><br>
                        <input type="submit" value="INSERT/UPDATE" class="form-control btn btn-info"><br>
                        <br/>
                       
                    </form>
                    </div>
                    
                    <div ng-if="dept == 'MEMBER'">
                         <h3 class="text-danger text-center">ADD NEW MEMBER</h3>
                    <form action="insertMember.htm">
                        <input type="text" name="id" class="form-control" placeholder="User ID"><br>
                        <input type="text" name="name" class="form-control" placeholder="User Name"><br>
                        <input type="text" name="email" class="form-control" placeholder="User Email"><br>
                        <input type="password" name="password" class="form-control" placeholder="User Password"><br>
                        <input type="submit" value="INSERT/UPDATE" class="form-control btn btn-info"><br>
                        <br/>
                       
                    </form>
                    </div>
                    
                    <div ng-if="dept == 'PRODUCT'">
                         <h3 class="text-danger text-center">ADD NEW PRODUCT</h3>
                    <form action="insertProduct.htm">
                        <input type="text" name="pid" class="form-control" placeholder="Product ID"><br>
                        <input type="text" name="pname" class="form-control" placeholder="Product Name"><br>
                        <input type="text" name="price" class="form-control" placeholder="Product Price"><br>
                        <input type="submit" value="INSERT/UPDATE" class="form-control btn btn-info"><br>
                        <br/>
                       
                    </form>
                    </div>
                   
                     <a href="show.htm" class="btn btn-success ml-4">SHOW ADMIN DATA</a>
                        <a href="getAllMember.htm" class="btn btn-warning ml-4">SHOW MEMBERS DATA</a>
                        <a href="getAllProduct.htm" class="btn btn-primary ml-4">SHOW PRODUCT DATA</a>
                </div>
                <!-- *********** HIDEN FORM ****************-->
                <div class="col-md-4 mt-5">

                    <c:forEach items="${listRecordAdmin}" var="d">
                        <h2>MANIPULATE DATA <span class="text-danger">ADMIN!</span></h2>
                        <form action="updateAdmin.htm">
                            <input type="text" value="${d.id}" name="id" class="form-control"><br/>
                            <input type="text" value="${d.name}" name="name" class="form-control"><br/>
                            <input type="text" value="${d.email}" name="email" class="form-control"><br/>
                            <input type="text" value="${d.password}" name="password" class="form-control"><br/>
                            <input type="submit" value="UPDATE" class="form-control btn btn-info">
                        </form>
                    </c:forEach>

                    <!-- *********HIDEN FORM MEMBER *****************-->

                    <c:forEach items="${listRecordMember}" var="d">
                        <h2>MANIPULATE DATA <span class="text-danger">MEMBER!</span></h2>
                        <form action="updateMember.htm">
                            <input type="text" value="${d.id}" name="id" class="form-control"><br/>
                            <input type="text" value="${d.name}" name="name" class="form-control"><br/>
                            <input type="text" value="${d.email}" name="email" class="form-control"><br/>
                            <input type="text" value="${d.password}" name="password" class="form-control"><br/>
                            <input type="submit" value="UPDATE" class="form-control btn btn-info">
                        </form>
                    </c:forEach>

                    <c:forEach items="${listRecordProduct}" var="d">
                        <h2>MANIPULATE DATA <span class="text-danger">PRODUCT!</span></h2>
                        <form action="updateProduct.htm">
                            <input type="text" value="${d.pid}" name="pid" class="form-control"><br/>
                            <input type="text" value="${d.pname}" name="pname" class="form-control"><br/>
                            <input type="text" value="${d.price}" name="price" class="form-control"><br/>
                            <input type="submit" value="UPDATE" class="form-control btn btn-info">
                        </form>
                    </c:forEach>

                </div>
            </div>
        </div>

        <!-- *********** EDIT//DELETE ADMIN DATA TABLE *************-->
        <!-- *********** EDIT//DELETE ADMIN DATA TABLE*************-->
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <i class="fa fa-user fa-4x text-danger m-2"></i>
                </div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE <span class="text-primary">ADMIN!</span></h3>
                    <table class="bg-light text-dark" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-dark">
                            <th>ID</th>
                            <th>NAME</th>
                            <th>EMAIL</th>
                            <th>PASSWORD</th>
                            <th>OPTIONS</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr class="text-danger" style="height: 5px; background-color: green;">
                            </td>
                        </tr>
                        <c:forEach items="${listAllAdmin}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.id}</td>
                                <td>${d.name}</td>
                                <td>${d.email}</td>
                                <td>${d.password}</td>
                                <td>
                                    <a href="fetch.htm?id=${d.id}" class="btn btn-primary">
                                    <i class="fa fa-edit fa-1x text-light"></i>EDIT
                                    </a>
                                    
                                    <a href="deleteAdmin.htm?id=${d.id}" class="btn btn-danger">
                                        <i class="fa fa-close fa-1x text-light"></i>DELETE
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>

        <!-- *********** EDIT//DELETE MEMBER DATA *************-->
        <!-- *********** EDIT//DELETE MEMBER DATA *************-->
             <!-- *********** EDIT//DELETE ADMIN DATA TABLE *************-->
        <!-- *********** EDIT//DELETE ADMIN DATA TABLE*************-->
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                     <i class="fa fa-mouse-pointer fa-4x text-danger m-2"></i>
                </div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE <span class="text-primary">ORDERS!</span></h3>
                    <table class="bg-light text-dark" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-dark">
                            <th>ID</th>
                            <th>PRODUCT NAME</th>
                            <th>UNIT PRICE</th>
                            <th>QUANTITY</th>
<!--                            <th>OPTIONS</th>-->
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr class="text-danger" style="height: 5px; background-color: yellow;">
                            </td>
                        </tr>
                        <c:forEach items="${listAllOrders}" var="ord">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${ord.id}</td>
                                <td>${ord.name}</td>
                                <td>${ord.price}</td>
                                <td>${ord.qty}</td>
                                <td>
<!--                                    <a href="deleteAdmin.htm?id=${d.id}" class="btn btn-danger">DELETE</a>
                                    <a href="fetch.htm?id=${d.id}" class="btn btn-primary">EDIT</a>-->
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>

        <!-- *********** EDIT//DELETE MEMBER DATA *************-->
        <!-- *********** EDIT//DELETE MEMBER DATA *************-->
            <!-- *********** EDIT//DELETE ADMIN DATA TABLE *************-->
        <!-- *********** EDIT//DELETE ADMIN DATA TABLE*************-->
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                     <i class="fa fa-btc fa-4x text-danger m-2"></i>
                </div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE <span class="text-primary">PURCHASE!</span></h3>
                    <table class="bg-light text-dark" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-dark">
                            <th>ID</th>
                            <th>PRODUCT ID</th>
                            <th>CONTACTS</th>
                            <th>UNIT PRICE</th>
                            <th>TOTAL PRICE</th>
                            <th>UNIT QUANTITY</th>
<!--                            <th>OPTIONS</th>-->
                        </tr>
                        <tr>
                            <td colspan="7">
                                <hr class="text-danger" style="height: 5px; background-color: yellow;">
                            </td>
                        </tr>
                        <c:forEach items="${listAllPurchase}" var="pur">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${pur.id}</td>
                                <td>${pur.pid}</td>
                                <td>${pur.pname}</td>
                                <td>${pur.unitprice}</td>
                                <td>${pur.totalprice}</td>
                                <td>${pur.status}</td>
                             <td>
                                   <a href="deletePurchase.htm?id=${pur.id}" class="btn btn-danger">
                                        <i class="fa fa-close fa-1x text-light">DELETE</i>
                                   </a>
<!--                                    <a href="fetch.htm?id=${d.id}" class="btn btn-primary">EDIT</a>-->
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>

        <!-- *********** EDIT//DELETE MEMBER DATA *************-->
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                     <i class="fa fa-user-plus fa-4x text-danger m-2"></i>
                </div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE <span class="text-primary">MEMBER!</span></h3>
                    <table class="bg-light text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-dark">
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
                        <c:forEach items="${listAllMember}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.id}</td>
                                <td>${d.name}</td>
                                <td>${d.email}</td>
                                <td>${d.password}</td>
                                <td>
                                    <a href="fetchMember.htm?id=${d.id}" class="btn btn-primary">
                                        <i class="fa fa-edit fa-1x text-light"></i>
                                        EDIT</a>
                                        <a href="deleteMember.htm?id=${d.id}" class="btn btn-danger">
                                     <i class="fa fa-close fa-1x text-light"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>

        <!-- *********** EDIT//DELETE PRODUCT DATA TABLE *************-->
        <!-- *********** EDIT//DELETE PRODUCT DATA TABLE*************-->
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                     <i class="fa fa-sitemap fa-4x text-danger m-2"></i>
                </div>
                <div class="col-md-8">
                    <h3 class="text-danger text-center">DATA TABLE <span class="text-primary">PRODUCT!</span></h3>

                    <table class="bg-light text-light" style="height: auto; width: 800px;">
                        <tr style="margin: 15px; text-align: center;" class="text-dark">
                            <th>PRODUCT ID</th>
                            <th>PRODUCT NAME</th>
                            <th>PRODUCT PRICE</th>
                            <th>OPTIONS</th>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr class="text-danger" style="height: 5px; background-color: red;">
                            </td>
                        </tr>
                        <c:forEach items="${listAllProduct}" var="d">
                            <tr style="margin: 15px; text-align: center;" class="text-dark">
                                <td>${d.pid}</td>
                                <td>${d.pname}</td>
                                <td>${d.price}</td>
                                <td>
                                    <a href="fetchProduct.htm?pid=${d.pid}" class="btn btn-primary">
                                        <i class="fa fa-edit fa-1x text-light"></i>
                                        EDIT</a>
                                        <a href="deleteProduct.htm?pid=${d.pid}" class="btn btn-danger">
                                    <i class="fa fa-close fa-1x text-light"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
        
        <script>
              var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {


                    });
        </script>
    </body>
</html>
