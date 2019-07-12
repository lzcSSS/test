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
       <form method="post" action="/ItemUpdate">
           <input type="hidden" name="iid" value="${item.iid}">

           商品名称：<input type="text" name="itemName"  value="${item.itemName}">
           <br>
           价格：<input  type="text" name="price" value="${item.price}"><br>
           内容：<input  type="text" name="description" value="${item.description}"><br>
           类型：<input  type="text" name="type" value="${item.type}"><br>
           <input type="submit" value="提交">
       </form>

    </div>
</div>


</body>
</html>