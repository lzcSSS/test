<%--
  Created by IntelliJ IDEA.
  User: 李志成
  Date: 2019/4/25
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
  </head>
  <body>
  <div id="login">
    <h1>Login</h1>
      <c:if test="${!empty msg}">
        <p style="color: red">${msg}</p>
      </c:if>
    <form  action="/LoginServlet" method="post">
      <input type="text"  placeholder="用户名" name="userName"></input>
      <input type="password"  placeholder="密码" name="password"></input>
      <button class="but" type="submit" >登录</button>
      <br>

      <a class="but" href="regist.jsp" >注册</a>
    </form>
  </div>
  </body>
</html>
