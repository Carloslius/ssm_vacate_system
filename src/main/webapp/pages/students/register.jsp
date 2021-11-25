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
<title>学生信息注册界面</title>
	<%@include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function () {
			$("#username").blur(function (){
				var usernameText = $("#username").val();
				var usernamePatter =  /^\w{6,14}$/;
				if (!usernamePatter.test(usernameText)){
					$("span.errorMsg").text("用户名不合法！");
					return false;
				}else {
					$("span.errorMsg").text("");
				}
			});

			$("#spassword").blur(function () {
				var passwordText = $("#spassword").val();
				var passwordPatter = /^\w{6,14}$/
				if (!passwordPatter.test(passwordText)){
					$("span.errorMsg").text("密码不合法！");
					return false;
				}else {
					$("span.errorMsg").text("");
				}
			});

			$("#sphone").blur(function (){
				var phoneText = $("#sphone").val();
				var phonePatter = /^1\d{10}$/;
				if (!phonePatter.test(phoneText)){
					$("span.errorMsg").text("手机号格式不合法！");
					return false;
				}else {
					$("span.errorMsg").text("");
				}
			});

			$("#sub_btn").click(function () {
				var flag = $("span.errorMsg").text();

				// 有bug，点击合法输入栏再点出就可以注册
				if (flag.indexOf("不合法") != -1){
					return false;
				}
			});

			$("#code_img").click(function (){
				this.src = "${basePath}kaptcha.jpg?d=" + new Date();
			})
		});
	</script>
	<style type="text/css">
	.login_form{
		height:445px;
		width:406px;
		float: right;
		margin-right:50px;
		margin-top: 17px;
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
					<span class="login_word">欢迎注册学生信息</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h3>注册学生信息</h3>
								<span class="errorMsg" style="height: 10px">${msg}</span>
							</div>
							<div class="form" style="font-size: 10px">
								<form action="studentsController/register" method="post">
									<label>账户学号：</label>
									<input class="itxtRegister" type="text" placeholder="请输入学号" autocomplete="off" tabindex="1" name="sno" id="sno"
											value="${sno}"/>
									<br />
									<br />
									<label>账户姓名：</label>
									<input class="itxtRegister" type="text" placeholder="请输入姓名" autocomplete="off" tabindex="1" name="sname" id="sname"
										   value="${sname}"/>
									<br />
									<br />
									<label>账户密码：</label>
									<input class="itxtRegister" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="spassword" id="spassword" />
									<br />
									<br />
									<label>账户生日：</label>
									<input class="itxtRegister" type="date" placeholder="请输入生日" autocomplete="off" tabindex="1" name="sbirthday" id="sbirthday"
											value="${sbirthday}"/>
									<br />
									<br />
									<label>账户性别：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio"  autocomplete="off" tabindex="1" name="ssex" value="男" checked/>男
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio"  autocomplete="off" tabindex="1" name="ssex" value="女"/>女
									<br />
									<br />
									<label>账户年级：</label>
									<select style="font-family:宋体;font-size:4px;float:none;height: 20px; line-height: 9px;  width: 220px; border: 1px #e3e3e3 solid;" name="sgrade" id="sgrade">
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019" selected>2019</option>
										<option value="2020">2020</option>
									</select>
									<br />
									<br />
									<label>联系方式：</label>
									<input class="itxtRegister" type="text" placeholder="请输入联系方式" autocomplete="off" tabindex="1" name="sphone" id="sphone"
											value="${sphone}"/>
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxtRegister" type="text" style="width: 120px;" name="code" id="code"/>
									<img id="code_img" alt="" src="kaptcha.jpg" style="float: right; margin-right: 40px; width: 120px; height: 30px">
									<br />
									<br />
									<input style="height: 30px;" type="submit" value="注册" id="sub_btn"/>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
        <%@include file="/pages/common/foot.jsp"%>
</body>
</html>