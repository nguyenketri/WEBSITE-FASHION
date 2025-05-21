<%-- 
    Document   : Order
    Created on : Mar 13, 2025, 7:35:58 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Order Page</title>
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="./css/order.css"/>
    </head>
    <body>
             <jsp:include page="Menu.jsp"></jsp:include>
             <h1 style="color: palevioletred ;text-align: center">Manager Order of Customer</h1>
             
        <div class="order">
            <table border="1px solid" >
                <tr style="background-color: cornsilk" class="tr">
                <th style="width: 8%"> OrderId</th>
                <th style="width: 14%"> UserName</th>
                <th style="width: 30%"> TotalMoney</th>
                <th style="width: 40%"> OrderDate</th>
                <th style="width: 8%"> Status</th>
            </tr>
            <c:forEach items="${listO}" var="c">
               <tr>
                 <td>${c.orderId}</td>
                 <td>${c.userName}</td>
                 <td>${c.totalMoney} $</td>
                 <td>${c.date}    ${c.time}</td>
                 <td>${c.status}</td>
            </tr> 
            </c:forEach>
            
        </table>    
        </div>
       <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
