<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
       <title>首页</title>
       

    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h3 style="text-align: center; margin: 50px auto ">
                公交车管理系统
            </h3>
            <ul class="nav nav-list">
                <li class="nav-header">
                    导航栏
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/bus/home">首页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bus/allDriver">司机</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bus/allCar">汽车</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bus/allUser">用户</a>
                </li>


            </ul>
        </div>
    </div>
</div>

</body>
</html>