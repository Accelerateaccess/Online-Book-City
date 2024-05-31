<%--
  Created by IntelliJ IDEA.
  User: 联想电脑
  Date: 2020/8/5
  Time: 7:20
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>支付界面</title>
    <style>
        div{
            font-size: 40px;
            position: absolute;
            left: 390px;
            top: 100px;
        }
        body{
            background: url("../../resource/imges/9.jpg");
            background-size: cover;
        }

        .imge8{
            width: 25%;
            height: 300px;
            position: absolute;
            top: 200px;
            left: 480px;
        }
    </style>
</head>
<body>
<form action="" style="width: 25%; margin: 0px auto;text-align: center; background: azure;">
    <fieldset style="border: 0px">
        <table style="align: center">
            <tr>
                用户ID号</br><input type="text" size="30" value="${uid}" style="text-align: center"></br>
            </tr>
            <tr>
                总价格</br><input type="text" size="30" value="${total}" style="text-align: center"></br></br>
            </tr>
            <tr>请扫描下方二维码进行支付</tr>
            <tr><img src="../../resource/imges/8.jpg" class="imge8"></tr>
        </table>
    </fieldset>
</form>
</body>
</html>





