<%-- 
    Document   : AddShow
    Created on : Mar 22, 2019, 2:24:45 AM
    Author     : shaarif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
       <title>IMAGE UPLOAD</title>
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
    <body>
       
     
            <!-- **************************MODAL 1 STARTS*************************-->

            <!--FORMS*******************-->
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h1>Insert Image</h1>
                    <form action="fileUpload.htm" method="POST" enctype="multipart/form-data">

                <input type="file" name="files">
             
              
              <input type="submit" value="Submit" class="btn btn-primary btn-block"/>
                </form>
                </div>
                <div class="col-md-4"></div>
            </div>
            
           
    </body>
</html>