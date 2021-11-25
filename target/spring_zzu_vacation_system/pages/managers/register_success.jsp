<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/6
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员信息注册页面</title>
	<%@include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body>
		<div id="header">
			<img style="float:left; height: 77px;" src="resources/img/logo.gif"/>
			<span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;欢迎管理员注册</span>
			<%@include file="/pages/common/manage_menu.jsp"%>
		</div>
		
		<div id="main">
			<h1>管理员信息注册成功! 欢迎使用学生请假管理系统</h1>
		</div>

		<%@include file="/pages/common/foot.jsp"%>
</body>
</html>