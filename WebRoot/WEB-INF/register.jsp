<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���ڰ�_�û�ע��</title>
<link type="text/css" rel="stylesheet" href="css/global.css">
<link href="css/v3_page.css" rel="stylesheet">
<link href="css/v3_form.css" rel="stylesheet">
<link href="css/Register.css" type="text/css" rel="stylesheet">
<script src=js/Register.js></script>
<script type="text/javascript" src="jquery/jquery-1.7.js"></script>
<style>
.pass-item-placeholder {
	color: #ABABAB;
	cursor: text;
	display: block;
	font-size: 12px;
	height: 20px;
	left: 163px;
	line-height: 20px;
	position: absolute;
	top: 5px;
	width: 160px;
}

.pass-item-placeholder-inactive {
	color: #ccc;
}

.STYLE1 {
	font-size: 20px;
	font-family: "������";
}
</style>


</head>



<body>
	<div class="mod-header grid-96">
		<div class="logo">
			<p>&nbsp;</p>
			<p>
				<a href="${pageContext.request.contextPath}/index.action"><img
					src="" alt="���ڰ�" width="313" height="46" border="0"> </a>
			</p>
		</div>
	</div>
	<div class="mod-bread clearfix">
		<div class="grid-96 mod-navbar">
			<blockquote>&nbsp;</blockquote>
			<div class="bread-left clearfix">
				<a class="mail_reg_tab STYLE1" id="mailRegTab">����ע��</a>
			</div>
			<div class="bread-right">
				�����ʺţ�<a id="floatLogin"
					href="${pageContext.request.contextPath}/index.action?method=login">���ϵ�¼</a>
			</div>
		</div>
	</div>
	<div style="display: block;" class="grid-96 phone_reg tang-pass-reg"
		id="phone_reg">
		<p class="pass-generalErrorWrapper">
			<span class="pass-generalError"></span>
		</p>
		<p class="pass-form-item pass-form-item-email">
			<label class="pass-label pass-label-email">����</label> <input
				type="text" id="email_re1" name="my_email"
				class="pass-text-input pass-text-input-email" maxlength="50"
				onBlur="lost_email();" onclick="email_line1()"> <span
				id="emailinfo" class="span_one"></span>
		</p>
		<a class="pass-form-item pass-form-item-verifyCodeSend"> <input
			type="button" value="��ȡ���伤����" id="clickcdkey" onclick="clickcode();">
		</a>
		<p class="pass-form-item pass-form-item-smsCode"
			style="display: block">
			<label class="pass-label pass-label-smsCode">���伤����</label> <input
				id="email_re2" class="pass-text-input pass-text-input-smsCode"
				type="text" onclick="email_line2()" onBlur="lost_cdkey();">
			<span id="cdkey" class="span_one">�����뼤����</span>
		</p>
		<p class="pass-form-item pass-form-item-password"
			style="display: block">
			<label class="pass-label pass-label-password">����</label> <input
				id="email_re3" onFocus="clearUp(this.id);" name="my_pwd"
				class="pass-text-input pass-text-input-password"
				onBlur="lost_pwd();" type="password" onclick="email_line3()">
			<span id="email_pwd" class="span_one"></span>
		</p>
		<p class="pass-form-item pass-form-item-isAgree">
			<input checked="checked"
				class="pass-checkbox-input pass-checkbox-isAgree" type="checkbox">
			<label>�����Ķ������ܡ����ڰ�Э�顷</label>
		</p>
		<div>
			<input type="image"
				style="margin-top:25px;margin-left: 150px;display:inline;"
				src="img/commit.jpg" onclick="check();" /> <a
				onclick="login_account();" id="result" href="#"
				style="color:red;margin-left: 400px;font-size:14px;display:none;">
			</a>
		</div>
		<!-- ���ص������û���div -->
		<div class="Register_account" id="userAccount">
			<div>
				<h3
					style="margin-left: 10px; width: auto; height: 35px; display: inline; line-height: 35px; font-size: 14px;">��д�û���</h3>
				<a href="#"> <input style="float: right;" type="image"
					src="img/shut1.jpg" onclick="shut_account()"> </a>
			</div>
			<hr style="color: blue" />
			<div>
				<p style="display: block; margin-top: 20px;">
					<label style="font-size: 16px; margin: 20px 0px 20px 20px">
						�û��� </label> <input type="text"
						style="width: 146px; height: 19px; line-height: 19px; margin-left: 10px; display: inline-block;"
						onclick="login_name()"></input> <span id="user_name"
						style="color: red; margin-left: 5px">������д�û���</span> <span
						style="display: block; padding: 10px 0px 0px 46px;">������7�����֣���14���ֽڣ��Ҳ����Ǵ�����</span>
				</p>
				<p style="margin: 10px 130px">
					<input
						style="width: 80px; height: 30px; vertical-align: middle; font: 14px bold; color: white; border-radius: 5px; background-color: #438AF5;"
						type="submit" value="ע��">
				</p>
			</div>
		</div>
	</div>
</body>
</html>
