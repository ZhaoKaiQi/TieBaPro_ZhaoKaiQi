<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>��ӹ���Ա</title>
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
			<font face="��Բ" color="#799FD9">��ӹ���Ա</font>
		</h1>
		<form action="" method="post">
			<table width="86%" height="365" style="width: 100%">

				<tr>
					<td align="right"><font face="��Բ" color="#799FD9">��ʵ������</font></td>
					<td align="left"><input type="text" name="myname"
						id="adminRealname" style="width: 120px; height: 20px;" value="" /></td>
				</tr>
				<tr>
					<td align="right"><font face="��Բ" color="#799FD9">���䣺</font></td>
					<td align="left"><input type="text" name="myage" value=""
						id="adminAge" style="width: 120px; height: 20px;" /></td>
				</tr>
				<tr>
					<td align="right"><font face="��Բ" color="#799FD9">�Ա�</font></td>
					<td align="left"><span class="STYLE2"> <input
							name="sex" id="sex1" value="��" type="radio" value="��" /> <font
							face="��Բ" color="#799FD9">�� </font> <input name="sex" id="sex1"
							value="Ů" type="radio" value="Ů" /> <font face="��Բ"
							color="#799FD9">Ů</font>
					</span></td>
				</tr>
				<tr>
					<td align="right"><font face="��Բ" color="#799FD9">�绰��</font></td>
					<td align="left"><input type="text" name="mytel"
						id="telephone" style="width: 120px; height: 20px;" value="" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" id="btn" value="��ӹ���Ա"
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
				$.each(data, function(index, element) {/*���е�element��ʾ[{},{},{}]�е�ÿһ��{}�е�����*/
					var res = "��ע��ϵͳ�Զ�Ϊ���������Ϣ" + "\n" + " ��½ID��"
							+ element.adminId + "\n" + " Ĭ�����룺"
							+ element.adminPwd;
					alert(res);
				});
			}
		});
	}
</script>
