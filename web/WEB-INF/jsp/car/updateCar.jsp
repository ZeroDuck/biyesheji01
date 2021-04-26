
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
       <title>修改信息</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <!-- 引入 Bootstrap -->
       <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
       <div class="row clearfix">
           <div class="col-md-12 column">
               <div class="page-header">
                   <h1>
                       <small>修改信息</small>
                   </h1>
               </div>
           </div>
       </div>
       <form action="${pageContext.request.contextPath}/bus/updateCar" method="post">
           <input type="hidden" name="id" value="${car.getId()}"/>
           车牌号：<input type="text" name="name" value="${car.getName()}"/>
           车辆司机：<input type="text" name="DriverId" value="${car.getDriverId()}"/>
           车辆位置：<input type="text" name="location" value="${car.getLocation() }"/>
           <input type="submit" value="提交"/>
       </form>
</div>