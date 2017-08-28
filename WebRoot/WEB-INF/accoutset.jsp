<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>���ڰ�_�ʺ�����</title>
<link href="./css/baseone.css" type="text/css" rel="stylesheet">
<link href="./css/ui.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/realUserTag.css">
<link href="./css/ucenter_index.css" type="text/css" rel="stylesheet">
</head>
<body>

	<div id="wrapper" class="">
		<div id="head">
			<div class="mod-header">
				<a href="MainView"><img src="./img/index.jpg" alt="���ڰ�"></a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-1">
				<div class="mod-nav ucenter clearfix animate-enter">
					<ul class="nav-list clearfix">
						<li class="list-item list-item-ucenter"><a class="page-tab"
							href="AccoutSet.jsp"><span>�ʺ�����</span></a></li>
						<li class="list-item list-item-reset"><a class="page-tab"
							href="ChangePwd.jsp"><span>�������</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="mod-ucenter clearfix">
				<div class="mod-ucenter-content clearfix">
					<div class="mod-ucenter-cleft">
						<dl class="mod-account clearfix">
							<dd class="mod-account-avatar">
								<a class="account-avatar-panel" href="profile.jsp"> <img class="account-avatar-show"
									src="${userinfo.userImg}" width="80" height="80"> <span
									class="account-avatar-edit">�޸�ͷ��</span>
								</a>
							</dd>
							<dd class="mod-account-info">
								<div class="mod-personal-name" title="${userinfo.userAccount}">${userinfo.userAccount}</div>
								<p class="m-t10">
								</p>
							</dd>
							<dt>&nbsp;</dt>
							<dd class="mod-account-info">
								<p class="m-t10">&nbsp;</p>
							</dd>
						</dl>
						<dl class="mod-ucenter-dl">
							<dt>����ͨ��</dt>
							<dd>
								<ul class="clearfix">
									<li class="changepwd"><a href="ChangePwd.jsp">�޸�����
									<em class="ucenter-dl-em rebind-email">�޸�</em></a></li>
								</ul>
							</dd>
						</dl>
					</div>
					<div class="mod-ucenter-cright">
						<dl class="mod-ucenter-loginhistory">
							<dt class="loginhistory-title clearfix">
								<span class="ucenter-cright-title">��¼��ʷ</span> <span
									class="ucenter-cright-titleinfo">����Ϊ����� 10 �ε�¼��¼���������쳣��������ں�ʵ�󾡿�
									<a href="ChangePwd.jsp">�޸�����</a>
								</span>
							</dt>
						</dl>
						<dl class="mod-ucenter-loginhistory">
							<dd class="login-histroy">
								<table id="login-histroy-data">
									<tr class="login-histroy-title">
										<th width="120">ʱ��</th>
										<th width="120">IP</th>
										<th width="150">�豸</th>
									</tr>
									
									<c:forEach items="${list}" var="list" end="9">
										<tr class="login-histroy-abnormal login-histroy-highlight">
										<td>${list.loginTime}</td>
										<td>${list.loginIP}</td>
										<td>${list.loginType}</td>
										</tr>
									</c:forEach>		
								</table>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>