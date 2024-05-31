
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--使用标签库--%>
<html>
<head>
    <title>主页</title>
    <style>
/*        #div1{
            display: flex;
            justify-content: space-around;
            align-items: center;
            background-color: plum;
            flex-wrap: wrap;
            margin: 0px 50px;
        }
        #div1>div{
            width: 20%;
            background-color: blue;
            margin:10px 0px;
        }*/
        .shuiguo{
            width: 95%;
            height: 200px;
            margin: 5px auto;
        }
        .nameandprice{
            text-align: center;
        }
        .mai{
            text-align: center;
            margin-bottom: 10px;
            font-size: 10px;
            height: 30px;
        }
    </style>
</head>
<body>
欢迎${productdesc}登录成功！你可以开始购物了，

<div id="div1">
<%--    <c:forEach items="${productsList}" var="pro">
        <div>
            <a href="ProductServlet.do?proid=${pro.pid}&key=2">
                <div class="shuiguo" style="background: url('${pro.imgurl}');background-size: 100% 100%;"></div>
            </a>
            <div class="nameandprice">${pro.pname},${pro.price}</div>
            <div class="mai">${pro.pdesc}</div>
        </div>
    </c:forEach>--%>
    <input type="button" name="Submit" onmouseup="product[{$rs[aid]}].value++;" value="加">
    <input type="button" name="Submit" onmouseup="product[{$rs[aid]}].value--;" value="减">
    <%--  <div>2</div>
      <div>3</div>
      <div>4</div>
      <div>5</div>
      <div>6</div>
      <div>7</div>
      <div>8</div>
      <div>9</div>
      <div>10</div>--%>
</div>
<%--<script>
    var i = $("#num").val();

    $("#add").click(function () {
        i++;
        $("#num").attr("value", i);
    }),
        $("#reduce").click(function (){
            i--;
            $("#num").attr("value", i);
            if (i < 0) {
                $("#num").attr("value", 0);
                i = 0;
            };
        })
</script>--%>
</body>
</html>
