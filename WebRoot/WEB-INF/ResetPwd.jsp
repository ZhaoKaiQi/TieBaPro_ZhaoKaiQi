<%@ page language="java" contentType="text/html; charset=utf-8"
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
<script type="text/javascript" src="jquery/jquery-1.7.js" language="javascript"></script>
</head>
<body>
	<div id="wrapper" class="">
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
	</div>
	<div id="content">
		<div class="mod-bread-nav">
			<a class="nav-bread nav-bread-sub " href="ChangePwd.jsp">密码管理</a> 
			<em class="nav-gt">&gt;</em>
			<a class="nav-bread nav-bread-sub nav-bread-nolink">修改密码</a>
		</div>
		<div class="mod-reset">
			<div class="mod-step-detail">
				<form action="ResetPwdServlet" method="post" id="form-resetpwd">
					<div class="pass-input-container clearfix">
						<label class="pass-input-title" for="password">新密码</label> 
						<input class="pass-input left pass-input-error" name="password" onclick="newpwd_1();"
							onblur="resetpwd_1();" id="newpwd" value="" type="password"> 
						<span class="input-msg" id="msg_line1">请输入新密码</span>
					</div>
					<div class="pass-input-container clearfix">
						<label class="pass-input-title" for="repassword">确认新密码</label> 
						<input class="pass-input left pass-input-error" name="resetpwd"  onclick="newpwd_2();"
							onblur="resetpwd_2();" id="verifypwd" value="" type="password"> 
						<span class="input-msg" id="msg_line2">请您输入确认新密码</span>
					</div>
					<div class="m_l80">
					    <input type="image" src="img/confirm1.jpg" onclick="update_pwd();">
					    <span id="reset_success"></span>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
