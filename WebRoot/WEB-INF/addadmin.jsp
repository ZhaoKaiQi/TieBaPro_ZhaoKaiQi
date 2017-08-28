<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加管理员</title>
<style type="text/css">
.div01 {
	position: absolute;
	margin-top: 0px;
	margin-left: 0px;
	width: 100%;
	height: 570px;
	background-color: #E6F5FF;
}
</style>
<script type="text/javascript" src="jquery/jquery-1.7.js"></script>

</head>
<body>
	<div id="result"></div>

	<div id="div1" class="div01" align="center">
		<br>
		<br>
		<h1>
			<font face="幼圆" color="#799FD9">添加管理员</font>
		</h1>
		<form action="" method="post">
			<table width="86%" height="365" style="width: 100%">

				<tr>
					<td align="right"><font face="幼圆" color="#799FD9">真实姓名：</font></td>
					<td align="left"><input type="text" name="myname"
						id="adminRealname" style="width: 120px; height: 20px;" value="" /></td>
				</tr>
				<tr>
					<td align="right"><font face="幼圆" color="#799FD9">年龄：</font></td>
					<td align="left"><input type="text" name="myage" value=""
						id="adminAge" style="width: 120px; height: 20px;" /></td>
				</tr>
				<tr>
					<td align="right"><font face="幼圆" color="#799FD9">性别：</font></td>
					<td align="left"><span class="STYLE2"> <input
							name="sex" id="sex1" value="男" type="radio" value="男" /> <font
							face="幼圆" color="#799FD9">男 </font> <input name="sex" id="sex1"
							value="女" type="radio" value="女" /> <font face="幼圆"
							color="#799FD9">女</font>
					</span></td>
				</tr>
				<tr>
					<td align="right"><font face="幼圆" color="#799FD9">电话：</font></td>
					<td align="left"><input type="text" name="mytel"
						id="telephone" style="width: 120px; height: 20px;" value="" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" id="btn" value="添加管理员"
						style="width: 80px; height: 30px;" onclick="add();" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
<script type="text/javascript">
	function add() {
		var dataid = "";
		var datapwd = "";
		var realname = $("#adminRealname").val();
		var age = $("#adminAge").val();
		var e = document.getElementsByName("sex");
		var sex = "";
		for (var i = 0; i < e.length; i++) {
			if (e[i].checked)
				sex = e[i].value;
		}

		var tel = $("#telephone").val();

		$.ajax({
			url : "AddAdminServlet",
			type : "POST",
			data : {
				name : realname,
				age : age,
				sex : sex,
				tel : tel
			},
			dataType : "json",
			success : function(data) {
				$.each(data, function(index, element) {/*其中的element表示[{},{},{}]中的每一个{}中的内容*/
					var res = "请注意系统自动为您分配的信息" + "\n" + " 登陆ID："
							+ element.adminId + "\n" + " 默认密码："
							+ element.adminPwd;
					alert(res);
				});
			}
		});
	}
</script>
