<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自在吧_个人设置</title>
<link href="./css/baseone.css" type="text/css" rel="stylesheet">
<link href="./css/ui.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/realUserTag.css">
<link href="./css/ucenter_index.css" type="text/css" rel="stylesheet">
<link href="./css/Register.css" type="text/css" rel="stylesheet">
<script src=js/Register.js></script>
<script type="text/javascript" src="jquery/jquery-1.7.js"
	language="javascript"></script>
<script type="text/javascript">
	$.ajax({
		url : "Userservlet",
		type : "POST",
		data : {
			loginemail : loginemail,
			loginpwd : loginpwd
		},
		//返回
		dataType : "json",
		success : function(data) {
			if (data.flag == "0") {
				$("#result").text(data.info);
			} else if (data.flag == "1") {
				$("#result").text(data.info);
				location.href = "MainView";
			} else if (data.flag == "2") {
				$("#result").text(data.info);
			}
		}
	});
</script>
</head>
<body>
	<div id="wrapper" >
		<div id="head">
			<div class="mod-header">
				<a href="#"><img src="./img/index.jpg" alt="自在吧"></a>
			</div>
		</div>
	</div>
	<!-- 登录窗口 -->
	<div class="login_window">
		<div style="background-color: #D4D0C8;">
			<span class="login_line1">登录</span>
			<hr style="color: red;">
		</div>
		<div>
			<p class="login_line2_5">
				<input class="login_line2_3" id="user_one" onclick="email_login()"
					value="邮箱登录" type="button" onfocus="account_one()"> <input
					class="login_line2_4" id="user_two" onclick="account_login()"
					value="用户名登录" type="button" onfocus="account_two()">
			</p>
			<form action="/MainView" method="post">
				<p class="login_line3">
					<span class="login_line3_1" id="email_login">邮箱</span> <input
						class="login_line3_2" name="loginemail" type="text">
				</p>
				<p class="login_line4">
					<span class="login_line4_1">密码</span> <input class="login_line4_2"
						type="password" id="loginpwd">
				</p>
				<p class="login_line6">
					<a href="FindPwd.jsp">找回密码</a>
				</p>
				<p class="login_line5">
					<input type="image" src="img/login1.jpg" style="float: left;"
						onclick="check();" /> <a href="Register.jsp"><img
						src="img/commit.jpg" style="float: right;"></a>
				</p>
				<p
					style="display: block; color: red; text-align: center; font-size: 13px; line-height: 16px;">
					<label id="result"></label>
				</p>
			</form>
		</div>
	</div>
</body>
</html>