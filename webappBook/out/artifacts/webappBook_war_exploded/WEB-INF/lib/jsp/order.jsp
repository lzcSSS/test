<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 李志成
  Date: 2019/5/25
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    <!--

    -->
    .time{
        border:red solid 1px;
        text-align: center;
    }
    .main{
        width:100%;
        height:100%;
        border:green solid 1px;
    }

    .left{
        background:red;
        width:300px;
        height:600px;
        float:left;
        margin-left:10px;
    }
    .right{
        width:900px;
        height:1200px;

        float:left;
        margin-left:50px;
    }
    td{
        border:black solid 2px;
    }
    th{
        border:black solid 2px;
    }
</style>

<div class="time" >
    当前登录的是:${user.userName} 登录时间是<p> 当前登录时间是<%=new Date() %>></p>
    欢迎使用本系统
</div>

<div class="main">
    <div class="left">
        <p><a href="/jsp/Info.jsp">个人中心</a></p>
        <p><a href="/itemList">查看商品列表</a></p>
        <p><a href="/jsp/Cart.jsp">我的临时购物车</a></p>
        <p><a href="/orderList">我的订单</a></p>
        <p><a href="/ItemListAdm">管理</a></p>
        <p><a href="/logout">退出</a></p>
    </div>
    <div class="right">
        <form action="/itemList" method="post">
            <input name="itemName" type="text">
            <input type="submit" value="搜索">
        </form>
        <table class="table" >
            <tr>
                <th >商品名字</th>
                <th >类型</th>
                <th >描述</th>
                <th >价格</th>
                <th >数量</th>
                <th >操作</th>

            </tr>
            <c:forEach var="items" items="${itemsList}" varStatus="st">
                <tr>
                    <td>${items.item.itemName}</td>
                    <td>${items.item.type}</td>
                    <td>${items.item.description}</td>
                    <td>${items.item.price}</td>
                    <td>${items.num}</td>
                    <td>
                        <a href="/ItemDetail?iid=${items.item.iid}">详情</a>

                        <a href="/orderDelete?itid=${items.itid}">确认收货</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


</body>
</html>

