<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>吧后台登陆界面</title>
	<link type="text/css" rel="stylesheet" href="css/adminLogin.css" />
	<script type="text/javascript" src="jquery/jquery-1.7.js" ></script>
	<script type="text/javascript" src="js/adminLogin.js" ></script>
</head>
<body>
	<div class="top">
		<div id="logo" style="margin-top:20px">
			<img src="images/mylogo.jpg" /> <img src="images/wel.jpg">
			<font style="font-size:30px;font-family:华文行楷;color:red;position:relative;top:-13px;">吧后台</font>
		</div>
	</div>
	<div class="blankpram"></div>
		<input type="hidden"/>
		<!-- 中间外层界面 -->
		<form action="main_admin.jsp" method="post" name="form1">
		<div
			style="background-color: #E8E8E8; width:904px; height:305px; margin:0px auto;padding-top:5px">
			<div class="middle" id="" style="margin:auto;">
				<!-- 中规则部分界面  -->
				<div id="leftpic" style="float: left;">
					<img src="images/leftpic.jpg">
				</div>
				<div class="rightfrm">
					<div id="idlogin" style="margin-bottom: 0px;">
						<!-- 用于验证用户登陆id -->
						<span>ID登录</span><br> <input type="text" id="loginid"
							name="loginname" class="text" tabindex="1" onfocus="changeColor(this),closeDiv('userid');" onblur="backColor(this);" />
					</div>
					<div id="userid" style="display: none;">请输入正确的登陆ID</div>

					<div id="capslock" style="display: none">
						<i></i><s></s>键盘大写锁定已打开，请注意大小写
					</div>
					<div id="pwdlogin" style="margin-top: 16px">
						<!-- 用户登陆密码 -->
						<span>密码</span> <br> <input type="password" id="mypwd"
							name="pwd" class="text" tabindex="2" onfocus="changeColor(this),closeDiv('userPass'),closeDiv('userPass1');" onblur="backColor(this);"/> 
						<div id="userPass" style="display: none;">密码不能为空</div>
						<div id="userPass1" style="display: none;">您输入的账户名和密码不匹配，请重新输入</div>
					</div>
					<!-- 验证码 部分 -->
					<div class="testcode">
						<span style="display: block; margin-bottom: 0px;">验证码</span>
						<div>
							<div
								style="float: left; position: relative; top: -1px; margin-right: 5px">
								<input type="text" id="checkcode" class="text" name="mycode"
									style="ime-mode: disabled; width: 120px;" onfocus="changeColor(this),closeDiv('codemess'),closeDiv('codemess1');" onblur="backColor(this)"/>
							</div>
							<div style="float: left;margin-right:6px;">
								<img title="点击换下一张" id="img"
									style="position: relative; top:7px" src="code.jsp">
							</div>
							<div style="margin-right: 35px;">
								<span>看不清？</span><br> <a href="javascript:void(0)" style="color:red;text-decoration:none;" onclick="reloadImage();">换一张</a>
							</div>
						</div>
					</div>
					<div id="codemess" style="display: none; margin-top: 5px">请输入验证码</div>
					<div id="codemess1" style="display: none; margin-top: 5px">输入验证码有误或已过期</div>
					<div style="height:28px;">
					</div>
					<div class="">
						<input type="image" src="images/adminsubmit.jpg" onclick="return clientCheck();"/>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>