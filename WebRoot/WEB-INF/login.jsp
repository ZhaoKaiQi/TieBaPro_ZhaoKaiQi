<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���ڰ�_��������</title>
<link href="./css/baseone.css" type="text/css" rel="stylesheet">
<link href="./css/ui.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/realUserTag.css">
<link href="./css/ucenter_index.css" type="text/css" rel="stylesheet">
<link href="./css/Register.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="jquery/jquery-1.7.js"
	language="javascript"></script>
<script>
	function check() {
		var loginemail = $("#loginemail").val();
		var loginpwd = $("#loginpwd").val();
		$.ajax({
			url : "login.action",
			async : false,
			type : "POST",
			data : {
				method : 'landing',
				userMail : loginemail,
				userPwd : loginpwd
			},
			dataType : "json",
			success : function(data) {
				if (data == "0") {
					//alert(0);
					$("#result").text("�������");
				} else if (data == "1") {
					//alert(1);
					$("#result").text("��֤�ɹ�");
					location.href = "index.action";
				} else if (data== "2") {
					//alert(2);
					$("#result").text("���û�������");
				}
			}
		});
	}
</script>
</head>
<body>
	<div id="wrapper" class="">
		<div id="head">
			<div class="mod-header">
				<a href="${pageContext.request.contextPath}/index.action"><img
					src="" alt="���ڰ�">
				</a>
			</div>
		</div>
	</div>
	<!-- ��¼���� -->
	<div class="login_window">
		<div style="background-color: #D4D0C8;">
			<span class="login_line1">��¼</span>
			<hr style="color:red;">
		</div>
		<div>

			<p class="login_line2_5">
				<input class="login_line2_3" id="user_one" onclick="email_login()"
					value="�����¼" type="button" onfocus="account_one()"> <input
					class="login_line2_4" id="user_two" onclick="account_login()"
					value="�û�����¼" type="button" onfocus="account_two()">
			</p>
			<p class="login_line3">
				<span class="login_line3_1" id="email_login">����</span> <input
					class="login_line3_2" id="loginemail" type="text">
			</p>
			<p class="login_line4">
				<span class="login_line4_1">����</span> <input class="login_line4_2"
					type="password" id="loginpwd">
			</p>
			<p class="login_line6">
				<a
					href="${pageContext.request.contextPath}/login.action?method=FindPwd">�һ�����</a>
			</p>
			<p class="login_line5">
				<input type="image"
					src="${pageContext.request.contextPath}/img/login1.jpg"
					style="float: left;" onclick="check();" /> <a
					href="${pageContext.request.contextPath}/index.action?method=register"><img
					src="img/commit.jpg" style="float: right;">
				</a>
			</p>
			<p
				style="display: block;color: red;text-align: center;font-size: 13px;line-height: 16px;">
				<label id="result"></label>
			</p>
		</div>
	</div>
</body>
</html>