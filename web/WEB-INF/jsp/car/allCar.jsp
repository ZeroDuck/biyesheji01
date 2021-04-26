<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
       <title>车辆管理</title>
       
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
                                   <small>车辆列表 —— 显示所有车辆信息</small>
                               </h1>
                           
            </div>
                   
        </div>
           
    </div>
       
    <div class="row">
               
        <div class="col-md-4 column">
                       <a class="btn btn-primary" href="${pageContext.request.contextPath}/bus/toAddCar">新增汽车</a>
                   
        </div>
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/bus/home">首页</a>
                   
        </div>
           
    </div>
       
    <div class="row clearfix">
               
        <div class="col-md-12 column">
                       
            <table class="table table-hover table-striped">
                               
                <thead>
                               
                <tr>
                                       
                    <th>车辆编号</th>
                                       
                    <th>车牌号</th>
                                       
                    <th>司机编号</th>
                                       
                    <th>车辆位置</th>
                                       
                    <th>操作</th>
                                   
                </tr>
                               
                </thead>
                               
                <tbody>
                               <c:forEach var="car" items="${requestScope.get('carList')}">
                                       <tr>
                                           <td>${car.getId()}</td>
                                           <td>${car.getName()}</td>
                                           <td>${car.getDriverId()}</td>
                                           <td>${car.getLocation()}</td>
                                           <td>
                                               <a href="${pageContext.request.contextPath}/bus/toUpdateCar?id=${car.getId()}">更改
                    </a> |
                                               <a href="${pageContext.request.contextPath}/bus/deleteCar/${car.getId()}">删除</a>
                                           </td>
                                       </tr>
                                   </c:forEach>
                               
                </tbody>
                           
            </table>
                   
        </div>
           
    </div>
</div>