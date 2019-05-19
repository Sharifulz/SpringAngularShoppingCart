package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>SPRING</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link href=\"css/all.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/fontawesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <!--        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js\"></script>-->\n");
      out.write("        <script src=\"resources/angular.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fontawesome.min.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .modal-dialog{\n");
      out.write("                position: relative;\n");
      out.write("                overflow-y: auto;\n");
      out.write("                max-width: 700px;\n");
      out.write("                padding: 15px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body ng-app=\"simpleApp\" ng-controller=\"simpleCtrl\">\n");
      out.write("\n");
      out.write("        {{7 * 5}}\n");
      out.write("    <center>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <span class=\"text-dark\">Total Product</span> <sapn class=\"btn btn-danger\">{{simples.length}}</sapn>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <span class=\"text-primary\">CART</span> <a href=\"#\" data-target=\"#mymodal\" data-toggle=\"modal\"><i class=\"fa fa-shopping-cart fa-3x text-danger\"></i></a>\n");
      out.write("                <i class=\"fa fa-circle fa-1x text-danger m-2\" style=\"margin-top: 25px;\">&nbsp {{cart.length}}</i>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <span class=\"text-warning\">ORDER NOW</span> <i class=\"fa fa-plus fa-3x text-danger\"></i>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    <hr/>\n");
      out.write("    <!----------------------------------------------------------->\n");
      out.write("    <table>\n");
      out.write("        <tr ng-repeat=\"pro in simples\">\n");
      out.write("            <td>{{pro.pid}}</td>\n");
      out.write("            <td>{{pro.pname}}</td>\n");
      out.write("            <td>{{pro.price}}</td>\n");
      out.write("            <td>\n");
      out.write("                <a href=\"#\" ng-click=\"selectOrder(pro)\">ORDER</a>\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!----------------------------------------------------------->\n");
      out.write("    <center>\n");
      out.write("        <form ng-submit=\"submitOrder()\">\n");
      out.write("            <input type=\"text\" ng-model=\"submitForm.id\" class=\"form-control\">\n");
      out.write("            <input type=\"text\" ng-model=\"submitForm.name\" class=\"form-control\">\n");
      out.write("            <input type=\"text\" ng-model=\"submitForm.price\" class=\"form-control\">\n");
      out.write("            <input type=\"text\" ng-model=\"submitForm.qty\" class=\"form-control\">\n");
      out.write("            <input type=\"text\" ng-model=\"submitForm.total\" class=\"form-control\">\n");
      out.write("            <input type=\"submit\" value=\"SUBMIT\" class=\"btn btn-danger\">\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("     <!----------------------------------------------------------->\n");
      out.write("    <script>\n");
      out.write("        var app = angular.module(\"simpleApp\", []);\n");
      out.write("        app.controller(\"simpleCtrl\", function ($scope, $http) {\n");
      out.write("\n");
      out.write("        $scope.submitForm= {\n");
      out.write("            id:1,\n");
      out.write("            name:\"\",\n");
      out.write("            price:\"\",\n");
      out.write("            qty:\"\",\n");
      out.write("            total:\"\"\n");
      out.write("        };\n");
      out.write("         $scope.submitOrder = function () {\n");
      out.write("\n");
      out.write("                //-------------------------------------------------------\n");
      out.write("                 var method = \"\";\n");
      out.write("                var url = \"\";\n");
      out.write("\n");
      out.write("                method = \"POST\";\n");
      out.write("                url = 'service/simpleOrder';\n");
      out.write("\n");
      out.write("                $http({\n");
      out.write("                    method: method,\n");
      out.write("                    url: url,\n");
      out.write("                    data: angular.toJson($scope.submitForm),\n");
      out.write("                    headers: {\n");
      out.write("                        'Content-Type': 'application/json'\n");
      out.write("                    }\n");
      out.write("                }).then(success, error);\n");
      out.write("                //-------------------------------------------------------\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        //-------------------------------------------------------\n");
      out.write("        \n");
      out.write("        $scope.selectOrder = function (selectedOrder){\n");
      out.write("            $scope.submitForm.id= selectOrder.pid;\n");
      out.write("            $scope.submitForm.name= selectOrder.pname;\n");
      out.write("            $scope.submitForm.price= selectOrder.price;\n");
      out.write("            $scope.submitForm.total= $scope.submitForm.price* $scope.submitForm.qty;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        //------------------------------------------------------\n");
      out.write("\n");
      out.write("            $scope.pro = {\n");
      out.write("                id:-1,\n");
      out.write("                name:\"\",\n");
      out.write("                price:\"\",\n");
      out.write("                qty:\"\",\n");
      out.write("                total:\"\"\n");
      out.write("            };\n");
      out.write("            \n");
      out.write("            $scope.isVisible = false;\n");
      out.write("\n");
      out.write("            $scope.changeState = function (p) {\n");
      out.write("                $scope.isVisible = true;\n");
      out.write("                $scope.pro.name = p.pname;\n");
      out.write("                $scope.pro.price = p.price;\n");
      out.write("                console.log(p.pname);\n");
      out.write("                console.log(p.price);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            $scope.orderData = function (product) {\n");
      out.write("\n");
      out.write("                $scope.pro.name = product.name;\n");
      out.write("                $scope.pro.price = product.price;\n");
      out.write("                $scope.pro.qty = product.qty;\n");
      out.write("                $scope.pro.total = $scope.pro.price * $scope.pro.qty;\n");
      out.write("               \n");
      out.write("                console.log($scope.pro);\n");
      out.write("                \n");
      out.write("                //-------------------------------------------------------\n");
      out.write("                 var method = \"\";\n");
      out.write("                var url = \"\";\n");
      out.write("\n");
      out.write("                method = \"POST\";\n");
      out.write("                url = 'service/simple';\n");
      out.write("\n");
      out.write("                $http({\n");
      out.write("                    method: method,\n");
      out.write("                    url: url,\n");
      out.write("                    data: angular.toJson($scope.pro),\n");
      out.write("                    headers: {\n");
      out.write("                        'Content-Type': 'application/json'\n");
      out.write("                    }\n");
      out.write("                }).then(success, error);\n");
      out.write("                //-------------------------------------------------------\n");
      out.write("                \n");
      out.write("                $scope.abc = [];\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            $scope.simples = [];\n");
      out.write("\n");
      out.write("     \n");
      out.write("            refreshSimpleData();\n");
      out.write("            function refreshSimpleData() {\n");
      out.write("                $http({\n");
      out.write("                    method: 'GET',\n");
      out.write("                    url: 'http://localhost:8080/Spring38c/service/simple'\n");
      out.write("                }).then(function successCallback(response) {\n");
      out.write("                    $scope.simples = response.data;\n");
      out.write("                    console.log($scope.simples);\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            //-------------------------------------------------------------\n");
      out.write("\n");
      out.write("            function success(response) {\n");
      out.write("               // refreshSimpleData();\n");
      out.write("                //clearFormData()\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function error(response) {\n");
      out.write("                console.log(response.statusText);\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
