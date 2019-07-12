<%--
  Created by IntelliJ IDEA.
  User: 李志成
  Date: 2019/4/26
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/testMyCart" method="post">
        BasketBall: <input type="checkbox" name="items" value="basketball"><br>
        FootBall: <input type="checkbox" name="items" value="football"><br>
        ValleyBall: <input type="checkbox" name="items" value="Valleyball"><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
