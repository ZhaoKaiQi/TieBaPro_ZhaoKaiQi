var flag1 = true;// 邮箱可用
var flag2 = true;// 验证码正确
var flag3 = true;// 密码正确

function clearUp(a) {
	document.getElementById(a).value = "";
}
// 这个是最终注册的方法
function check() {
	var email_re1 = $("#email_re1").val();
	var email_re3 = $("#email_re3").val();
	// get请求：参数说明：1、要请求的后台地址2、请求的参数3、回调函数(接受服务器的响应数据)
	// $.get(url,data,callback)
	// $.post(url,data,callback)
	// $.ajax
	// XMLHttpRequest xpp=new XmlHttpRequest();
	// xpp.readyStateCallBack=function(){
	//		
	//		
	// }
	// xpp.open(url,isAsync);
	// xpp.send(data);
	$.ajax({
		    url : "user.action",
			type : "POST",
			async : false,
			data : {
			method : 'savePwdAndEmail',
			email_re1 : email_re1,// 邮箱 email_re2是输入的激活码四位
			email_re3 : email_re3
			// 密码
		    },
			// 返回
		    dataType : "json",
			success : function(data) {
				if (data == "0") {
					alert("对不起，注册失败，请检验注册信息是否正确！");
				} else if (data == "1") {
					alert("恭喜您：注册成功，请尽快我完善个人信息！");
					location.href = "index.action?method=baseprofile";
				} 
			}
		});
}
// 这个是校验邮箱是否被注册过以及邮箱格式是否合法的方法
function lost_email() {
	var email_re1 = document.getElementById("email_re1").value;
	var emailinfo = document.getElementById("emailinfo");
	var rule_email = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@qq|163|souhu|139|tom|126|21cn|51|yeah|sina+\.+net|com|cn$ /;
	if (rule_email.test(email_re1) == false) {
		emailinfo.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>邮箱格式不正确";
		return;
	} else {
		var loginemail = $("#email_re1").val();
		var emailinfo = document.getElementById("emailinfo");
		$.ajax({
				// 这个地方是后台校验邮箱是否被注册
				url : "user.action",
				type : "POST",
				async : false,
				data : {
					method : 'checkEmailInOrNot',
					userMail : loginemail
				},
				// 返回
				dataType : "html",
				success : function(data) {
					// alert("传进来的数据为："+data),
					eval("var result=" + data);
					if (result == "0") {
						emailinfo.innerHTML = "该邮箱已被注册，请直接登录";
						flag1 = false;
					} else if (result == "1") {
						flag1 = true;
						emailinfo.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
					}
				}
			});
	}
}
// 这个方法是用来验证密码格式是否合法的
function lost_pwd() {
	var email_re3 = document.getElementById("email_re3").value;
	var email_pwd = document.getElementById("email_pwd");
	var rule_pwd = /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,14}$/;
	if (rule_pwd.test(email_re3) == false) {
		email_pwd.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>密码必须由6-14个字符组成";
		$.ajax({
			// 这个地方是后台校验邮箱是否被注册
			url : "user.action",
			type : "POST",
			async : false,
			data : {
				method : 'checkPwd',
				d : false
			}
		});
	} else {
		email_pwd.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
		$.ajax({
			// 这个地方是后台校验邮箱是否被注册
			url : "user.action",
			type : "POST",
			async : false,
			data : {
				method : 'checkPwd',
				d : true
			}
		});
	}
}

function email_line1() {
	var emailinfo = document.getElementById("emailinfo");
	emailinfo.innerHTML = "请输入常用邮箱,通过验证后可通过登录和找回密码";
}

function email_line3() {
	var email_pwd = document.getElementById("email_pwd");
	email_pwd.innerHTML = "请输入密码,必须由6-14个字符组成";
}

function login_name() {
	var user_name = document.getElementById("user_name");
	user_name.innerHTML = "用户名填写后不能更改";
}

function login_account() {
	var c = document.getElementById("userAccount");
	c.style.display = "block";
}
function shut_account() {
	var b = document.getElementById("userAccount");
	b.style.display = "none";
}

function email_login() {
	var email = document.getElementById("email_login");
	email.innerHTML = "邮箱";
}

function account_login() {
	var email = document.getElementById("email_login");
	email.innerHTML = "用户名";
}

function account_one() {
	var one = document.getElementById("user_one");
	var two = document.getElementById("user_two");
	one.style.background = "#DFCC7F";
	two.style.background = "#FFFFFF";
}

function account_two() {
	var one = document.getElementById("user_one");
	var two = document.getElementById("user_two");
	one.style.background = "#FFFFFF";
	two.style.background = "#DFCC7F";
}

function email_line2() {
	var cdkey = document.getElementById("cdkey");
	cdkey.innerHTML = "请输入邮箱中4位数字的激活码";
}
// 这个地方就是用来进行邮箱验证的，即对比邮箱中和输入的验证码是否一致
function lost_cdkey() {
	var email_re2 = document.getElementById("email_re2").value;
	var cdkey = document.getElementById("cdkey");
	var rule_key = /^\d{4}$/;
	if (rule_key.test(email_re2) == false) {
		cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>激活码格式错误";
		return;
	} else {
		var email_re2 = $("#email_re2").val();
		$.ajax({
				url : "user.action",
				type : "POST",
				data : {
					method : 'checkCode',
					email_re2 : email_re2
				},
				success : function(data) {
					if (data == "flase") {
						cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>激活码不正确";
					} else if (data == "true") {
						cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
					}// 为什么这个地方传入的值是true的话就会执行里面的方法，如果是false就不执行呢？！！！
				}
			});
	}
}
// 这个是获取并将验证码发送到邮箱的方法
function clickcode() {
	var email_re1 = $("#email_re1").val();
	alert("请您登录要注册的邮箱，找到邮箱激活码");
	$.ajax({
		url : "user.action",
		type : "POST",
		data : {
			method : 'getCheckCode',
			email_re1 : email_re1
		},
		// 返回
		dataType : "json",
		success : function(data) {
			if (data == "0") {
				$("#result").text(data.info);
				$("#cdkey").text(data.info);
			} else if (data == "1") {
				$("#result").text(data.info);
			}
		}
	});
}