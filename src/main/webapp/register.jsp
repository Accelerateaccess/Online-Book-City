<%--
  Created by IntelliJ IDEA.
  User: 联想电脑
  Date: 2020/7/31
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resource/css/zhuCe.css">
    <title>注册页面</title>
</head>
<body>
<div class="rg_layout">
    <div class = "rg_left">
        <p >新用户注册</p>
    </div>
    <div class = "rg_center">
        <div class="rg_form">
            <!-- 定义表单 form-->
            <form action="register.do" method="post">
                <table >
                    <tr>
                        <td class="td_left"><label for="username"></label> 用户名</td>
                        <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入用户名"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password"></label> 密码</td>
                        <td class="td_right"><input type="password" name="password" id="password" placeholder="请输入密码"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="email"></label> email</td>
                        <td class="td_right"><input type="email" name="email" id="email" placeholder="请输入email"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="name"></label> 姓名</td>
                        <td class="td_right"><input type="text" name="name" id="name" placeholder="请输入姓名"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="tel"></label> 手机号</td>
                        <td class="td_right"><input type="text" name="phone" id="phone" placeholder="请输入手机号"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" id = "btn_sub" value="注册"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class = "rg_right">
        <p>已有账号?&nbsp;  <a href="login.jsp">&nbsp;立即登录&nbsp;</a></p>
    </div>
</div>
</body>
</html>
