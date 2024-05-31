<%--
  Created by IntelliJ IDEA.
  User: 联想电脑
  Date: 2020/7/31
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="resource/css/dengLu.css">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" charset="utf-8"></script>

</head>
<body>

<!--<img class="image1" src="imges/1.jpg">-->
<form action="login.do" class="login-form" method="post">
    <h1>登录界面</h1>

    <div class="txtb">
        <input type="text" name="username">
        <span data-placeholder="Username"></span>
    </div>

    <div class="txtb">
        <input type="password" name="password">
        <span data-placeholder="Password"></span>
    </div>

    <input type="submit" class="logbtn" value="登录">
    <div class="bottom-text">
        没有账户？ <a href="register.jsp" >点击注册</a>
    </div>
    <div class="bottom-text">
            <a href="adminlogin.jsp">后台登录</a>
    </div>
</form>
</body>
</html>
