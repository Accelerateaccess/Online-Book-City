<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title>后台管理</title>
        <link rel="stylesheet" type="text/css" href="../../resource/css/style.css">
    </head>
</head>
<body>
<!-- start header -->
<div class="text" style="text-align: center;background: #3498db">
    <h2>后台管理界面</h2>
</div>
<header style="background: white">
    <form action="insert.do" method="post">
        <div class="d" style="display: flex;justify-content: center;">
            <div style="margin-top: 10px">
            书名<input type="text" name="pname">作者<input >价格<input type="text" name="price">
                <button style="width: 50px;height: 20px;margin-top: 5px">添加</button>
                <button style="width: 50px;height: 20px">删除</button>
                <button style="width: 50px;height: 20px">查询</button>
            </div>
        </div>
    </form>

</header>
<div class="danpin center">
    <div class="main center">
        <c:forEach items="${productsList}" var="pro">
            <%--                <c:if test="${pro.pid == 1}">--%>
            <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
                    <%--                    <a href="productDetails.do?pid=${pro.pid}">--%>
                <div class="sub_mingxing"><a href="productDetails.do?pid=${pro.pid}" target="_blank"><img src="${pro.imgurl}" alt=""></a></div>
                <div class="pinpai"><a href="" target="_blank">${pro.pname}</a></div>
                <div class="youhui" style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${pro.pdesc}</div>
                <div class="jiage">${pro.price}元</div>
            </div>
            <%--                </c:if>--%>
        </c:forEach>
        <div class="clear"></div>
    </div>
</div>

</body>
</html>