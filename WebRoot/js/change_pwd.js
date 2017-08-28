function change_pwd() {
	var a=document.getElementById("HiddenDiv");
	a.style.display="block";
}
function shut_pwd() {
	var b=document.getElementById("HiddenDiv");
	b.style.display="none";
}


function newpwd_1() {
	var msg_line1 = document.getElementById("msg_line1");
	msg_line1.innerHTML="密码必须由6-14个字符组成";
}
function newpwd_2() {
	var msg_line2 = document.getElementById("msg_line2");
	msg_line2.innerHTML="请确认密码，密码必须一致";
}

function resetpwd_1() {
	var newpwd = document.getElementById("newpwd").value;
	var msg_line1 = document.getElementById("msg_line1");
	var rule_pwd=/^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,14}$/;
	if (rule_pwd.test(newpwd) == false) {
		msg_line1.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>密码必须由6-14个字符组成";
	} else {
		msg_line1.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
	}
}

function resetpwd_2() {
	var newpwd = document.getElementById("newpwd").value;
	var verifypwd = document.getElementById("verifypwd").value;
//	var msg_line1 = document.getElementById("msg_line1");
	var msg_line2 = document.getElementById("msg_line2");
	if(newpwd!=verifypwd||newpwd.length==0){
		msg_line2.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>密码必须一致";
	}else {
		msg_line2.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
	}
}


function update_pwd(){
	var newpwd = document.getElementById("newpwd").value;
	var verifypwd = document.getElementById("verifypwd").value;
//	var reset_success = document.getElementById("reset_success");
	var msg_line2 = document.getElementById("msg_line2");
	if(newpwd!=verifypwd||newpwd.length==0){
		msg_line2.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>密码必须一致";
	}else {

		//alert(newpwd);
		alert("密码修改成功，请重新登录");
		document.form-resetpwd.submit();
//		reset_success.innerHTML = "密码修改成功，请重新登录";
		
	}
}

function find_update_pwd(){
	var newpwd = document.getElementById("newpwd").value;
	var verifypwd = document.getElementById("verifypwd").value;
//	var reset_success = document.getElementById("reset_success");
	var msg_line2 = document.getElementById("msg_line2");
	if(newpwd!=verifypwd||newpwd.length==0){
		msg_line2.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>密码必须一致";
	}else {

		//alert(newpwd);
		alert("密码修改成功，请重新登录");
		document.form-findresetpwd.submit();
//		reset_success.innerHTML = "密码修改成功，请重新登录";
		
	}
}




function lost_code_span() {
	var emailCode = document.getElementById("emailCode").value;
	var code_span = document.getElementById("code_span");
	var rule_key=/^\d{6}$/;
	if (rule_key.test(emailCode) == false) {
		code_span.innerHTML = "激活码格式错误！！！";
		return;
	}else {
//		alert("判读验证码");
//		 var emailCode=$("#emailCode").val();
		 $.ajax({
				url:"/Three/CodeReWriteServlet",
				type:"POST",
				data:{emailCode:emailCode},
				
				//返回
				dataType:"json",
				success:function(data){
					if(data.flag=="flase")
					{
						code_span.innerHTML = "激活码不正确";
						return;
					}else if(data.flag=="true")
						{
						code_span.innerHTML = "正确！";
						location.href="/Three/ResetPwd.jsp";
					}
				}
		});
	}
}


function clickreCode()
{	 
	alert("请登录您的邮箱，找到验证码。");
	 var MyEmail=$("#MyEmail").val();
	 $.ajax({
			url:"/Three/CodeReServlet",
			type:"POST",
			data:{MyEmail:MyEmail},
			
			//返回
			dataType:"json",
			success:function(data){
				if(data.flag=="0")
				{
					//alert(data.info);
					$("#result").text(data.info);
//					$("#code_span").text(data.info);
				}else if(data.flag=="1")
					{
					$("#result").text(data.info);
				}
			}
	});
}

function FindCode()
{	 
	alert("请登录查收您的邮箱，找到验证码。");
	 var MyEmail=$("#MyEmail").val();
	 $.ajax({
			url:"/Three/FindPwdServlet",
			type:"POST",
			data:{MyEmail:MyEmail},
			
			//返回
			dataType:"json",
			success:function(data){
				if(data.flag=="0")
				{
					//alert(data.info);
					$("#result").text(data.info);
//					$("#code_span").text(data.info);
				}else if(data.flag=="1")
					{
					$("#result").text(data.info);
				}
			}
	});
}

function Find_code_span() {
	var emailCode = document.getElementById("emailCode").value;
	var code_span = document.getElementById("code_span");
	var rule_key=/^\d{6}$/;
	if (rule_key.test(emailCode) == false) {
		code_span.innerHTML = "激活码格式错误！！！";
		return;
	}else {
//		alert("判读验证码");
//		 var emailCode=$("#emailCode").val();
		 $.ajax({
				url:"/Three/FindPwdWriteServlet",
				type:"POST",
				data:{emailCode:emailCode},
				
				//返回
				dataType:"json",
				success:function(data){
					if(data.flag=="flase")
					{
						code_span.innerHTML = "激活码不正确";
						return;
					}else if(data.flag=="true")
						{
						code_span.innerHTML = "正确！";
						location.href="/Three/FindResetPwd.jsp";
					}
				}
		});
	}
}
