<%--
  Created by IntelliJ IDEA.
  User: 刘浩松
  Date: 2021/11/6
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生请假系统登录页面</title>
	<%@include file="/pages/common/head.jsp"%>
	<style type="text/css">
		.login_form{
			height:280px;
			width:406px;
			float: right;
			margin-right:50px;
			margin-top: 88px;
			background-color: #fff;
		}
	</style>
</head>
<body>
		<div id="login_header">
			<img style="float:left; height: 77px;" src="resources/img/logo.gif"/>
			<span class="wel_word" style="font-size: 50px">&nbsp;&nbsp;我的课程设计作品</span>
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎管理员登录</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>管理员登陆系统</h1>
								<a href="pages/managers/register.jsp">注册管理员信息</a>
								<a href="pages/students/login.jsp">学生登陆</a>
							</div>
							<div class="msg_cont">
								<b></b>
								<span class="errorMsg">${empty msg ? "请输入账号和密码" : msg}</span>
							</div>
							<div class="form">
								<form action="managersController/login" method="post">
									<label>管理员账号：</label>
									<input class="itxt" type="text" placeholder="请输入账号" autocomplete="off" tabindex="1" name="mno"
											value="${cookie.mno.value}"/>
									<br />
									<br />
									<label>管理员密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="mpassword" />
									<br />
									<br />
									<input type="submit" value="登录" id="sub_btn" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		<%@include file="/pages/common/foot.jsp"%>
</body>
</html>