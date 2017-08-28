<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人资料</title>
<style>
body {
	background: url(images/hback.jpg) no-repeat;
	background-attachment: fixed;
}
</style>
<script type="text/javascript">
function docheck()
{
       alert("恭喜，修改成功!");
}
</script>
</head>
<body>
	<h1 align="center">修改个人资料</h1>
	<div id="div1" class="div01" align="center">
		<form action="/Three/UpdateInfoServlet" method="post" id="from1"
			style="width: 100%;">
			<table width="86%" height="365" style="width: 100%">
				<tr>
					<td align="right">id:<input type="hidden" name="myid"
						value="${admin.adminId}" /></td>
					<td align="left">${admin.adminId}<span style="color: red;">(此信息不允许修改)</span></td>
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
							name="sex" id="sex1" value="男" type="radio" value="男" />男 <input
							name="sex" id="sex1" value="女" type="radio" value="女" />女
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
</body>
</html>