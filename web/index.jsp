<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
       <title>首页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


</head>
<body >
<div class="container" style="text-align: center">
    <div class="row">
        <div class="span12">
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/bus/login">
                        <div class="control-group">

                            <div class="controls">
                                <label class="control-label" for="inputEmail">用户</label>
                                <input id="inputEmail" type="text" name="id"/>

                            </div>
                        </div>
                        <br>
                        <div class="control-group">

                            <div class="controls">
                                <label class="control-label" for="inputPassword">密码</label>
                                <input id="inputPassword" type="password" name="password" />
                            </div>
                        </div>

                        <br>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-default" >登陆</button>
                                <a class="btn btn-default" href="${pageContext.request.contextPath}/bus/toAddUser"
                                   role="button">注册</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
        </div>
    </div>
</div>

     
</h3>
</body>
</html>