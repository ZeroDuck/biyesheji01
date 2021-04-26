
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
       <title>注册用户</title>
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
                       <small>注册用户</small>
                   </h1>
               </div>
           </div>
       </div>
<%--    这里必须添加完毕，不会出现默认值--%>


       <form action="${pageContext.request.contextPath}/bus/addUser" method="post">
           用户姓名：<input type="text" name="name" required><br><br><br>
           用户密码：<input type="text" name="password" required><br><br><br>
         
           <input type="submit" value="注册">
       </form>
</div>