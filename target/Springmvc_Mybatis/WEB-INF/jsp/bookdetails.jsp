<%--
  Created by IntelliJ IDEA.
  User: 联想电脑
  Date: 2020/8/3
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><%--使用标签库--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>书籍详情</title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/style.css">
</head>
<body>
<!-- start header -->
<header>
    <div class="top center">

        <div class="right fr">
            <div class="gouwuche fr"><a href="./cart.jsp">购物车</a></div>
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
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <form action="bookdetails.dd" method="get">
            <li><button >首页</button></li>
        </form>
        <ul>

            <li><a href="">小说</a></li>
            <li><a href="">文学</a></li>
            <li><a href="">传记</a></li>
            <li><a href="">科幻</a></li>
            <li><a href="">玄幻</a></li>
            <li><a href="">悬疑</a></li>
            <li><a href="">其他</a></li>
        </ul>
    </div>

</div>
<!-- end banner_x -->


<!-- xiangqing -->
<form>
    <div class="xiangqing">
        <div class="neirong w">
            <div class="xiaomi6 fl">${product.pname}</div>
            <nav class="fr">
                <li><a href="">概述</a></li>
                <li>|</li>
                <li><a href="">相关推荐</a></li>
                <li>|</li>
                <li><a href="">用户评价</a></li>
                <div class="clear"></div>
            </nav>
            <div class="clear"></div>
        </div>
    </div>

    <div class="jieshao mt20 w">
        <div class="left fl"><img src="${productimgurl}" width="560" height="560"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20">${productname}</div>
            <div class="jianjie mr40 ml20 mt10">${productdesc}</div>
            <div class="xqxq mt20 ml20">
                <div class="top1 mt10">
                    <div class="left1 fl">${productname}</div>
                    <div class="right1 fr">${productprice}元</div>
                    <div class="clear"></div>
                </div>
                <div class="bot mt20 ft20 ftbc">总计：${productprice}元</div>
            </div>
            <div class="xiadan ml20 mt20">

                    <a href="cart.do?pid=${productpid}&uid=${uid}">
                    <input class="jrgwc" type="button" name="jrgwc" value="加入购物车" />
                    </a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
<footer class="mt20 center">
    <div class="mt20">三峡大学|软件工程</div>
</footer>

</body>
</html>
