<%@ page import="com.lzc.test.entity.Cart" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 李志成
  Date: 2019/4/26
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <% Cart cart = (Cart) request.getSession().getAttribute("cart");
        Map<String,Integer> items = cart.getItems();

        for(Map.Entry<String ,Integer> item : items.entrySet()){


    %>
            <%=item.getKey()%>=<%= item.getValue()%><br>
    <%}%>
    <a href="/testJsp/items.jsp">return</a>
</body>
</html>
