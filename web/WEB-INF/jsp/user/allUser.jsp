<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
       <title>用户管理</title>
       
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <!-- 引入 Bootstrap -->
     
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
        <div class="col-xs-12">
            <h2 style="text-align: center">用户管理</h2>
            <div class="row-fluid">
                <div class="col-xs-2">
                    <br><br><br>
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
                <div class="col-xs-8">
                    <br><br><br><br><br>
                    <form class="form-search">
                        <input class="input-medium search-query" type="text" /> <button type="submit" class="btn">查找</button>
                    </form>
                    <table class="table" style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all;">
                        <thead>
                        <tr>
                            <th>
                                id
                            </th>
                            <th>
                                名称
                            </th>
                            <th>
                                用户密码
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                                       <c:forEach var="user" items="${requestScope.get('userList')}">
                                               <tr>
                                                   <td>${user.getId()}</td>
                                                   <td>${user.getName()}</td>
                            <%--                           <td>${car.getDriverId()}</td>--%>
                                                   <td>${user.getPassword()}</td>
                                                   <td>
                                                       <a href="${pageContext.request.contextPath}/bus/toUpdateUser?id=${user.getId()}">更改
                            </a>| <a href="${pageContext.request.contextPath}/bus/deleteUser/${user.getId()}">删除</a>
                                                   </td>
                                               </tr>
                                           </c:forEach>
                        <form action=""></form>
                        <td></td>
                        <td><input type="text" name="name" placeholder="addUser"></td>
                        <td><input type="text"></td>
                        <td></td>
                                       
                        </tbody>


                    </table>
                </div>
                <div class="col-xs-2">
                </div>
            </div>
        </div>

</div>
