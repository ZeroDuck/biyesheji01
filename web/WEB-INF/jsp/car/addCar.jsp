
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
       <title>新增车辆</title>
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
                       <small>新增车辆</small>
                   </h1>
               </div>
           </div>
       </div>
<%--    这里必须添加完毕，不会出现默认值--%>


       <form action="${pageContext.request.contextPath}/bus/addCar" method="post">
           车牌号：<input type="text" name="name" required><br><br><br>
           车辆司机：<input type="text" name="driverId" required><br><br><br>
           车辆位置：<input type="text" name="location" required><br><br><br>
           <input type="submit" value="添加">
       </form>
</div>