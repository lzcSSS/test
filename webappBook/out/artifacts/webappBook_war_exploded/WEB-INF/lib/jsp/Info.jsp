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

        <form action="/InfoServlet" method="post">
            <input type="hidden" value="${user.uid}">
            姓名：<input type="text"  value="${user.userName}" name="userName"><br>
            密码：<input type="text"  value="${user.password}" name="password"><br>
            年龄：<input type="text"  value="${user.age}" name="age"><br>
            性别：<select name="sex">
            <option value="1" <c:if test="${user.sex=='1'}">selected</c:if> >女</option>
            <option value="2" <c:if test="${user.sex=='2'}">selected</c:if> >男</option>
            </select><br>
            地址：<input type="text"  value="${user.address}" name="address">
            <br>
            手机：<input  type="text" value="${user.phone}" name="phone"><br>
            余额：<input  type="text" value="${user.money}" name="money"><br>
            邮箱：<input  type="text" value="${user.email}" name="email"><br>
            <input type="submit" value="保存">
        </form>
    </div>
</div>


</body>
</html>