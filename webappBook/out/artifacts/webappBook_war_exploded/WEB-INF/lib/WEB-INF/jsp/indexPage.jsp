<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page  import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		background:blue;
		float:left;
		margin-left:200px;
	}
</style>
	
	<div class="time" >
		当前登录的是:${user.userName} 登录时间是<p> 当前登录时间是<%=new Date() %>></p>
		欢迎使用本系统
	</div>
	
	<div class="main">
		<div class="left">
			<p><a href="http://www.baidu.com">个人中心</a></p>
			<p><a href="http://www.baidu.com">完善个人中心</a></p>
			<p><a href="http://www.baidu.com">查看商品列表</a></p>
			<p><a href="http://www.baidu.com">我的临时购物车</a></p>
			
		</div>
		<div class="right">
			
		</div>
	</div>
	
	
</body>
</html>