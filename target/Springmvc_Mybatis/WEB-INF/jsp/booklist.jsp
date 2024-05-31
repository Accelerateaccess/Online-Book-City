
<%--
  Created by IntelliJ IDEA.
  User: 联想电脑
  Date: 2020/7/30
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <title>网上书店</title>
        <link rel="stylesheet" type="text/css" href="../../resource/css/style.css">
    </head>
</head>
<body>

<!-- start header -->
<header>
    <div class="top center">

        <div class="right fr">

            <div class="gouwuche fr">
                <a href="./cart.jsp">购物车</a>

            </div>

            <div class="fr">
                <ul>
                    欢迎${sessionScope.username}登陆
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<%--<!--end header -->--%>

<!-- start banner_x -->
<div class="banner_x center">
    <div class="nav fl">
        <ul>
            <li><a href="">首页</a></li>
            <li><a href="">小说</a></li>
            <li><a href="">文学</a></li>
            <li><a href="">传记</a></li>
            <li><a href="">科幻</a></li>
            <li><a href="">玄幻</a></li>
            <li><a href="">悬疑</a></li>
            <li><a href="">其他</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="&nbsp&nbsp&nbsp&nbsp网上书店">
            </div>
            <form action="search.do" method="post">
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            </form>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<!-- end banner_x -->

<!-- start banner_y -->
<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">网上书店</div>
    <div class="main center">
        <c:forEach items="${productsList}" var="pro">
            <%--                <c:if test="${pro.pid == 1}">--%>
            <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
                    <%--                    <a href="productDetails.do?pid=${pro.pid}">--%>
                <div class="sub_mingxing"><a href="bookdetails.do?pid=${pro.pid}" target="_blank"><img src="${pro.imgurl}" alt=""></a></div>
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