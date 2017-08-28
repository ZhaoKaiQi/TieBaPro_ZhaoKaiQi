<%@ page contentType="text/html; charset=GBK"%>
<html>
<head>
<title>个人中心</title>
<style>
body {
	background-color: #ffffff;
	background-attachment: fixed;
}
</style>
<link rel="shortcut icon" href="img/title.ico" />
<link href="css/layout1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.1.js"></script>
<style type="">
.divMain {
	position: absolute;
	margin-left: 3000px;
}

.divNum1 {
	position: absolute;
	margin-left: 10px;
	margin-top: 10px;
}

.divNum2 {
	position: absolute;
	margin-left: 10px;
	margin-top: 10px;
}

.div02 {
	position: absolute;
	margin-top: -3000px;
}

.div03 {
	position: absolute;
	margin-top: -3000px;
}

.pro_tab {
	list-style: none;
	text-align: left;
}

.color {
	background-color: #FFFFFF;
}
</style>
<script type="text/javascript" charset="GBK">
	$(function() {
		$("#btn2").click(function() {
			$("#btn1,#btn3").removeClass();
			$(this).addClass("color");
			$("#div1").addClass("divMain");
			$("#div3").addClass("div03");
			$("#div2").removeClass();
			$("#div2").addClass("divNum1");
		});
	});
	$(function() {
		$("#btn3").click(function() {
			$("#btn1,#btn2").removeClass();

			$(this).addClass("color");
			$("#div1").addClass("divMain");
			$("#div2").addClass("div02");
			$("#div3").removeClass();
			$("#div3").addClass("divNum2");
		});
	});
	$(function() {
		$("#btn1").click(function() {
			$("#btn3,#btn2").removeClass();
			$(this).addClass("color");
			$("#div2").addClass("div02");
			$("#div3").addClass("div03");
			$("#div1").removeClass();
		});
	});
	$(function() {
		$("#Savebtn").click(function() {
			var biy = $("#Password").val();
			var old = $("#OldPsw").val();
			var oldt = $("#Oldt").val();
			var myid = $("#myid").val();
			var psw1 = $("#myadminpwd").val();
			var psw2 = $("#NewPsw2").val();
			var isValid = true;
			$("#pswInfo").hide(0);
			$("#pswInfo2").hide(0);
			if (old != oldt) {
				$("#oldpsw").show(0);
				isValid = false;
			}
			if (psw1 == null || psw1 == "") {
				$("#pswInfo").show(0);
				isValid = false;
			}
			if (psw1 != psw2) {
				$("#pswInfo2").show(0);
				isValid = false;
			}
			if (isValid) {
				$.ajax({
					type : "post",
					url : "UpdatePasswdServlet",
					data : {
						myadminpwd : psw1,
						myid : myid
					},
					dataType : "html",
					success : function(returnData) {
						//$("#MessageDiv2").html(returnData);//修改id为showMsg标签的html
						alert("密码修改成功！");
					},
					error : function() {
						alert("密码修改失败！");
					}
				});
			}
		});
	});
</script>
<style type="text/css">
<!--
.STYLE2 {
	font-size: 16
}
-->
</style>
<script type="text/javascript">
	function docheck() {
		alert("恭喜，修改成功!");
	}
</script>
</head>
<body>
	<div id="container">
		<div id="content" style="background-image: url(images/24414_pc.jpg)">
			<div></div>
			<br />
			<div>
				<br />
				<form style="margin-bottom: 0px;">
					<input id="btn1" class="btn01" type="button"
						style="height: 30px; width: 80px;" value="个人资料" /> <input
						id="btn2" class="btn02" type="button"
						style="height: 30px; width: 80px; margin-left: 10px" value="我的头像" />
					<input id="btn3" class="btn03" type="button"
						style="height: 30px; width: 80px; margin-left: 10px" value="帐户安全" />
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 用户名：&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				</form>
				<hr/>
			</div>
			<div id="div1" class="div01">
				<form action="UpdateInfoServlet" method="post" id="from1"
					style="width: 100%;">
					<table width="86%" height="365" style="width: 100%">
						<tr>
							<td align="right">id:
							<input type="hidden" name="myid" value="${admin.adminId}" /></td>
							<td align="left">${admin.adminId}<span
								style="color: red;">(此信息不允许修改)</span></td>
						</tr>
						<tr>
							<td align="right">姓名：</td>
							<td align="left"><input type="text" name="myname"
								id="adminRealname" style="width: 120px; height: 20px;"
								value="${admin.adminRealname}" /></td>
						</tr>
						<tr>
							<td align="right">年龄：</td>
							<td align="left"><input type="text" name="myage"
								value="${admin.adminAge}" id="adminAge"
								style="width: 120px; height: 20px;" /></td>
						</tr>
						<tr>
							<td align="right">性别：</td>
							<td align="left"><span class="STYLE2"> <input
									name="sex" id="sex1" value="男" type="radio" value="男"/> 男
									<input name="sex" id="sex1" value="女" type="radio" value="女" /> 女
							</span></td>
						</tr>
						<tr>
							<td align="right">电话：</td>
							<td align="left"><input type="text" name="mytel"
								id="telephone" style="width: 120px; height: 20px;"
								value="${admin.adminTel}" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" id="btn" value="保存修改"
								style="width: 80px; height: 30px;" onclick="docheck()" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div id="div2" class="div02">
				<iframe id="submitiframe" style="display: none;"
					src="files/crossdomain_002.xml"></iframe>
				<div class="op-pic-edit">
					<div id="op-imageEditPanel" style="width: 640px; margin: 5px auto;">
						<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
							codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"
							id="tbFlash" width="640" align="middle" height="400">
							<param name="allowscriptaccess" value="always">
							<param name="bgcolor" value="#FFFFFF">
							<param name="wmode" value="opaque">
							<param name="movie"
								value="http://static.tieba.baidu.com/tb/static-itieba3/swf/imageEditPanelUser.swf?v=1.1">
							<param name="flashvars"
								value="curPhoto=http%3A%2F%2Fhimg.baidu.com%2Fsys%2Fportrait%2Fitem%2Fcf3b63686572697368343137313233317a1f.jpg%3Ft%3D0.8753972238497025&amp;ars=http%3A%2F%2Fpassport.baidu.com&amp;
																					uid=cf3b63686572697368343137313233317a1f">
							<embed src="files/imageEditPanelUser.swf" width="640"
								align="middle" height="400">
						</object>
					</div>
				</div>
			</div>
			<div id="div3" class="div03">
				<form action="" style="width: 100%; height: 500px;">
					<table width="727" height="392">
						<tr>
							<td width="180" height="85" align="right"><span
								class="STYLE16">旧密码：</span></td>
							<td width="489"><label> <input name="OldPsw"
									type="password" id="OldPsw" style="height: 25px; width: 180px" />
									<span id="oldpsw" style="color: red; display: none">旧密码输入错误请重新输入</span>
							</label></td>
						</tr>
						<tr>
							<td height="95" align="right"><span class="STYLE16">新密码：</span></td>
							<td><label> <input type="password" name="myadminpwd"
									id="myadminpwd" style="height: 25px; width: 180px" /> <span
									id="pswInfo" style="color: red; display: none">请输入新密码</span>
							</label></td>
						</tr>
						<tr>
							<td height="100" align="right"><span class="STYLE16"
								style="height: 25px; width: 180px">再次输入新密码：</span></td>
							<td><label> <input type="password" name="NewPsw2"
									id="NewPsw2" style="height: 25px; width: 180px" /> <span
									id="pswInfo2" style="color: red; display: none">两次密码输入不一致！</span>
							</label></td>
						</tr>
						<tr>
							<td height="100" align="right">&nbsp;</td>
							<td><label> <input name="Savebtn" type="button"
									id="Savebtn" value="保存密码" style="height: 37px; width: 100px" />
							</label></td>
						</tr>
						<tr>
							<td></td>
							<td><div id="MessageDiv2"></div></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
</body>
</html>
