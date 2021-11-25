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
<title>管理员信息注册界面</title>
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

			$("#mpassword").blur(function () {
				var passwordText = $("#mpassword").val();
				var passwordPatter = /^\w{6,14}$/
				if (!passwordPatter.test(passwordText)){
					$("span.errorMsg").text("密码不合法！");
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
		height:335px;
		width:406px;
		float: right;
		margin-right:50px;
		margin-top: 60px;
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
					<span class="login_word">欢迎注册管理员信息</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h3>注册管理员信息</h3>
								<span class="errorMsg" style="height: 10px">${msg}</span>
							</div>
							<div class="form" style="font-size: 10px">
								<form action="managersController/register" method="post">
									<label>账户账号：</label>
									<input class="itxtRegister" type="text" placeholder="请输入账号" autocomplete="off" tabindex="1" name="mno" id="mno"
											value="${mno}"/>
									<br />
									<br />
									<label>账户姓名：</label>
									<input class="itxtRegister" type="text" placeholder="请输入姓名" autocomplete="off" tabindex="1" name="mname" id="mname"
										   value="${mname}"/>
									<br />
									<br />
									<label>账户密码：</label>
									<input class="itxtRegister" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="mpassword" id="mpassword" />
									<br />
									<br />
									<label>账户部门：</label>
									<select style="font-family:宋体;font-size:4px;float:none;height: 20px; line-height: 9px;  width: 220px; border: 1px #e3e3e3 solid;" name="mdno" id="mdno">
										<option value="8400">数学与统计学院</option>
										<option value="8401">化学学院</option>
										<option value="8402">物理学院</option>
										<option value="8403">信息工程学院</option>
										<option value="8404">电气工程学院</option>
										<option value="8405">材料科学与工程学院</option>
										<option value="8406">机械与动力工程学院</option>
										<option value="8407">土木工程学院</option>
										<option value="8408">水利科学与工程学院</option>
										<option value="8409">化工学院</option>
										<option value="8410">建筑学院</option>
										<option value="8411">管理工程学院</option>
										<option value="8412">力学与安全工程学院</option>
										<option value="8413">生命科学学院</option>
										<option value="8414">农学院</option>
										<option value="8415">生态与环境学院</option>
										<option value="8416">地球科学与技术学院</option>
										<option value="8417">软件学院</option>
									</select>
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