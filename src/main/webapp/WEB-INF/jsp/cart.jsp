<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的购物车</title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/style.css">
</head>
<body>

<!-- start banner_x -->
<div class="banner_x center">

    <div class="wdgwc fl ml40">我的购物车</div>
    <div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
    <div class="dlzc fr">
        <ul>
            <li><a href="../../login.jsp" target="_blank">登录</a></li>
            <li>|</li>
            <li><a href="../../register.jsp" target="_blank">注册</a></li>
        </ul>

    </div>
    <div class="clear"></div>
</div>
<div class="xiantiao"></div>
<div class="gwcxqbj">
    <div class="gwcxd center">
        <ul class="top2 center">
            <li class="sub_top fl">商品图片</li>
            <li class="sub_top fl">商品名称</li>
            <li class="sub_top fl">单价</li>
            <li class="sub_top fl">数量</li>
            <li class="sub_top fl">小计</li>
            <li class="sub_top fr">操作</li>
            <li class="clear"></li>
        </ul>
        <%--        <c:forEach items="${cartList}" var="cart" varStatus="sta">
                <input type="hidden" value="${cart.pid}" name="pid">
                <div class="content2 center">
                    <div class="sub_content fl"><img src="${cart.imgurl}"></div>
                    <div class="sub_content fl">${cart.pname}</div>>
                    <div class="sub_content fl">¥<input type="text" name="price" value="${cart.price}"></div>
                    <div class="sub_content fl"><input type="button" name="minus" value="-" onclick="minus(${sta.index});"><input type="text" name="amount" value="${cart.count}"><input type="button" name="plus" value="+" onclick="plus(${sta.index});"></div>
                    <li id="price${sta.index}" class="sub_content fl">${(cart.price)*(cart.count)}</li>
                    <div class="sub_content fl"><p>删除</p></div>
                </div>
                </c:forEach>--%>
        <c:forEach items="${cartList}" var="cart" varStatus="sta">
            <c:if test="${cart.uid == sessionScope.uid}">
                <input type="hidden" value="${cart.pid}" name="pid">
                <ul class="content2 center">
                    <li class="sub_content fl "></li>
                    <li class="sub_content fl"><img src="${cart.imgurl}" height="80px" width="80px"></li>
                    <li class="sub_content fl ft20">${cart.pname}</li>
                    <li class="sub_content fl" name="price" value="${cart.price}">${cart.price}</li>
                    <li class="sub_content fl">
                        <input type="button" name="minus" value="-" onclick="minus(${sta.index});"><input type="text" name="amount" value="${cart.count}" style="width: 20px"><input type="button" name="plus" value="+" onclick="plus(${sta.index});">
                    </li>
                    <li class="sub_content fl prione" id="price${sta.index}">${(cart.price)*(cart.count)}</li>
                    <li class="sub_content fl"><a href="">×</a></li>
                    <li class="clear"></li>
                </ul>
            </c:if>
        </c:forEach>
    </div>
    <div class="jiesuandan mt20 center">
        <ul class="jiesuan fr">
            <li class="jiesuanjiage fl" id="totalPrice">合计（不含运费）：<span id="ttprice"></span></li>
            <li class="jsanniu fr"><a href="pay.do?uid=${uid}"><input class="jsan" type="submit" name="jiesuan"  value="去结算" /></a></li>
            <li class="clear"></li>
        </ul>
        <div class="clear"></div>
    </div>

</div>



<script src="../../resource/js/jquery_2.1.4_baidu_min.js"></script>
<script>
    //根据素材 编写minus()函数
    //减
    function minus(num){
        //1.根据name属性找到表示数量的标签( name='amount')
        var amountes=document.getElementsByName("amount");
        var pids=document.getElementsByName("pid");

        //当参数num为0 时表示是第一个商品的数量需要更改
        //数量不能为负数
        var count=amountes[num].value;
        if(count<1){
            amountes[num].value=0;
        }else{
            amountes[num].value-=1;
        }
        //计算单个总价
        oneCount(num);
        //计算所有总价
        computeAll();
        //更新购物车.
        ajaxUpdateCar(amountes[num].value,pids[num].value)

    }
    //加
    function plus(num){
        //1.根据name属性找到表示数量的标签( name='amount')
        var amountes=document.getElementsByName("amount");
        var pids=document.getElementsByName("pid");
        //当参数num为0 时表示是第一个商品的数量需要更改
        var count=amountes[num].value;
        //转换的作用是防止+号进行字符串拼接
        amountes[num].value=parseInt(count)+1;
        //计算单个总价
        oneCount(num);
        //计算所有总价
        computeAll();
        //更新购物车.
        ajaxUpdateCar(amountes[num].value,pids[num].value)
    }

    //编写计算单个商品总价的方法
    function  oneCount(num){
        //根据name获取商品的单价
        var prices=document.getElementsByName("price");
        var price=prices[num].value;
        //获取单个商品的数量
        var amountes=document.getElementsByName("amount");
        //当参数num为0 时表示是第一个商品的数量需要更改
        var count=amountes[num].value;
        //计算单个商品的总价
        var sum=price*count;
        //总价格小数点很长
        sum=sum.toFixed(2);
        //根据id 获取单个总价的元素
        var id="price"+num;
        document.getElementById(id).innerHTML=sum;
    }

    //编写计算所有商品的总及格的方法
    function  computeAll(){
        var pris = document.getElementsByClassName("prione");
        var sum=0;
        for (var i =0;i<pris.length;i++){
            sum+=parseFloat(pris[i].innerHTML);
        }
        document.getElementById("ttprice").innerHTML=sum;
    }
    function ajaxUpdateCar(count,pid){
        $.ajax({
            url: "productCart.do",
            type: "post",
            dataType:"json",
            data: {
                key:2,
                count: count,
                pid:pid
            },
            success:function (data) {
            }
        });
    }
    computeAll();
</script>
</body>
</html>
