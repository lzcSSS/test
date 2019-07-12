<%--
  Created by IntelliJ IDEA.
  User: 李志成
  Date: 2019/5/21
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Regist</title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
</head>
<body>
<div id="login">
    <h1>Login</h1>
    <form  action="/RegistServlet" method="post">
        <input type="text" required="required" placeholder="用户名" name="userName"></input>
        <input type="password" required="required" placeholder="密码" name="password"></input>
        <button class="but" type="submit" >确认</button>
        <br>
        <button class="but" type="submit" >重置</button>
    </form>
</div>
</body>
</html>
