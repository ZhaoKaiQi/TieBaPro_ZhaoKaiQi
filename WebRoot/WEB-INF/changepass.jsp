<%@ page language="java" contentType="text/html; charset=utf-8" import="com.qf.entity.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--STATUS OK-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自在吧_修改密码</title>
<script>
	window.wpo = {
		start : new Date * 1,
		pid : 109,
		page : 'passport'
	};
	var _hmt = _hmt || [];
</script>
<link href="css/baseone.css" type="text/css" rel="stylesheet">
<link href="css/ui.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/realUserTag.css">
<link href="css/reset_password.css" type="text/css" rel="stylesheet">
<link href="css/uni_force.css" type="text/css" rel="stylesheet">
<link href="css/pwd1.css" type="text/css" rel="stylesheet">
<script src=js/change_pwd.js></script>
<script type="text/javascript" src="jquery/jquery-1.7.js"
	language="javascript"></script>
</head>
<body>
	<div id="wrapper" >
		<div id="head">
			<div class="mod-header">
				<a href="MainView"><img src="./img/index.jpg" alt="自在吧"></a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-1">
				<div class="mod-nav reset clearfix animate-enter">
					<ul class="nav-list clearfix">
						<li class="list-item list-item-ucenter"><a class="page-tab"
							href="AccoutSet.jsp"><span>帐号设置</span></a></li>
						<li class="list-item list-item-reset"><a class="page-tab"
							href="ChangePwd.jsp"><span>密码管理</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="mod-changepwd">
				<div class="mod-changepwd-title">
					<p class="title-text">修改密码关系到您的帐号安全，请用密保工具验证您的邮箱改密：</p>
				</div>
				<div class="mod-changepwd-choice clearfix">
					<a class="change-choice normal-change clearfix" id="normal_change_pwd" onclick="change_pwd()"> 
						<em class="change-choice-img"><img src="./img/unlock.jpg"></em> 
						<span class="change-choice-msg" >密保工具改密</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="line1" id="HiddenDiv">
		<div >
			<h3 style="margin: 0px 200px 0px 20px; width: auto; height: 35px;display:inline;line-height: 35px; font-size: 16px;">修改密码</h3>
			<a onclick="shut_pwd()"><input style="float:right;" type="image" src="img/shut1.jpg"></a>
		</div>
		<div >
			<form action="" method="post" >
				<div class="line2">为了保证您的帐号安全，修改密码前请先进行安全验证。</div>
				<br/><br/>
				<div class="line3">
					<label style="font-size: 14px;">请输入您的邮箱:</label>
					<input class="password_input1" id="MyEmail" type="text" disabled  value="${user.userEmail}"/>
				</div>
				<div class="line4">
					<a onclick="clickreCode();"><img src="img/send1.jpg"></a>
				</div>
				<div class="line5">
					<span >请输入邮箱验证码:</span>
					<input class="password_input2" id="emailCode" type="text" >
					<span id="code_span" style="color:red;line-height: 35px;font-size: 12px;">请输入验证码</span>
				</div>
				<div class="line6">
					<img src="img/confirm1.jpg" onclick="lost_code_span();">					
				</div>
			</form>
		</div>
	</div>
</body>
</html>
