<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/left.gif);
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
	function tupian(idt) {
		var nametu = "xiaotu" + idt;
		var tp = document.getElementById(nametu);
		tp.src = "images/ico05.gif";//图片ico04为白色的正方形

		for (var i = 1; i < 30; i++) {

			var nametu2 = "xiaotu" + i;
			if (i != idt * 1) {
				var tp2 = document.getElementById('xiaotu' + i);
				if (tp2 != undefined) {
					tp2.src = "images/ico06.gif";
				}//图片ico06为蓝色的正方形
			}
		}
	}

	function list(idstr) {
		var name1 = "subtree" + idstr;
		var name2 = "img" + idstr;
		var objectobj = document.all(name1);
		var imgobj = document.all(name2);
		if (objectobj.style.display == "none") {
			for (i = 1; i < 10; i++) {
				var name3 = "img" + i;
				var name = "subtree" + i;
				var o = document.all(name);
				if (o != undefined) {
					o.style.display = "none";
					var image = document.all(name3);
					image.src = "images/ico04.gif";
				}
			}
			objectobj.style.display = "";
			imgobj.src = "images/ico03.gif";
		} else {
			objectobj.style.display = "none";
			imgobj.src = "images/ico04.gif";
		}
	}
</script>

<body>
	<table width="198px" class="left-table01">
		<tr>
			<TD>
				<table width="100%">
					<tr>
						<td width="207" height="55" background="images/nav01.gif">
							<table width="90%" align="center">
								<tr>
									<td width="25%" rowspan="2"><img src="${admin.adminImg}"
										width="35" height="35" /></td>
									<td width="75%" height="22" class="left-font01">您好,<span
										class="left-font02">${admin.adminRealname}</span>&nbsp;<span
										class="left-font02" style="color: red;">吧主</span></td>
								</tr>
								<tr>
									<td height="22" class="left-font01">[&nbsp;<a
										href="AdminExitServlet" target="_top" class="left-font01">退出</a>&nbsp;]
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!--  任务系统开始    -->
				<TABLE width="100%" class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img8" id="img8"
										src="images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('8');">帖子模块</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu20"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a
							href="/Three/AdminPostsCl?type=all&fenye=login&postState=1"
							target="mainFrame" class="left-font03" onClick="tupian('20');">查看正常帖子</a></td>
					</tr>
					<tr>
						<td width="9%" height="21"><img id="xiaotu21"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a
							href="/Three/FindLockPosts_servlet?type=all&fenye=login&postState=0"
							target="mainFrame" class="left-font03" onClick="tupian('21');">查看被封帖</a></td>
					</tr>
				</table> <!--  任务系统结束    --> <!--  消息系统开始    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img7" id="img7"
										src="images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('7');">贴吧会员管理模块</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree7" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu17"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="ShowUserInfoCL" target="mainFrame"
							class="left-font03" onClick="tupian('17');">查看会员</a></td>
					</tr>

				</table> <!--  消息系统结束    -->



				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img1" id="img1"
										src="images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('1');">管理员模块</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree1" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu1"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="ShowAdminInfoCL?type=login"
							target="mainFrame" class="left-font03" onClick="tupian('1');">管理员查看</a></td>
					</tr>


				</table> <!--  项目系统结束    --> <!--  客户系统开始    -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img2" id="img2"
										src="images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('2');">个人信息管理模块</a></td>
								</tr>
							</table></td>
					</tr>
				</table>

				<table id="subtree2" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">

					<tr>
						<td width="9%" height="20"><img id="xiaotu7"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="alterPer.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('7');">个人资料</a></td>

					</tr>

					<tr>
						<td width="9%" height="20"><img id="xiaotu7"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="alterPer.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('7');">修改密码</a></td>

					</tr>
				</table> <!--  客户系统结束    --> <!--  人员系统开始    -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img3" id="img3"
										src="images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('3');">吧主权限</a></td>
								</tr>
							</table></td>
					</tr>
				</table>

				<table id="subtree3" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu8"
							src="images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="addAdmin.jsp" target="mainFrame"
							class="left-font03" onClick="tupian('8');">添加管理员</a></td>
					</tr>
				</table> <!--  人员系统结束    -->
		</tr>
	</table>
</body>
</html>
