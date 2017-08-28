<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" %>
<html>
<head>
<title>个人中心</title>
<link rel="stylesheet" href="csss/a_003.css">
<link rel="stylesheet" href="csss/a_002.css">
<link rel="stylesheet" href="css/thickbox.css">
<link rel="stylesheet" href="css/detail.css">

<link href="csss/skin_1001.css" rel="stylesheet">
<link rel="stylesheet" href="csss/b.css">
<script type="text/javascript" src="js/aa.js"> </script>
<script type="text/javascript" src="js/jquery-1.3.1.js"> </script>
<script type="text/javascript" src="js/jquery.jqzoom.js"> </script>
<script type="text/javascript" src="js/jquery.thickbox.js"> </script>
<script type="text/javascript" src="js/use_jqzoom.js"> </script>
</head>
<body class="skin_1001" bgcolor=#A1D6AC>
	<div style="z-index: 10005;" id="com_userbar" class="userbar">
		<ul>
			<li id="j_u_username" class="u_username"><a href="LoginServlet?loginemail=${ui.userEmail}"
				class="u_arrow u_username_show" onmouseout="hide();"
				onmouseover="show();"> ${ui.userAccount}</a>
				<div id="context" style="display: none;">
					<ul>
						<li><a href="atme.jsp" style="color: #537CC4">账号设置</a></li>
						<li><a href="#">贴吧设置</a></li>
						<li><a href="#">退出</a></li>
					</ul>
				</div></li>
			<li class="u_username"><a href="LoginServlet?loginemail=${ui.userEmail}" onmouseout="hide1();"
				onmouseover="show1();">个人中心</a>
				<div>
					<ul id="context1" style="display: none">
						<li><a href="atme.jsp" style="color: #537CC4">我的收藏</a></li>
						<li><a href="#">我的相册</a></li>
						<li><a href="#">我的网盘</a></li>
					</ul>
				</div></li>
			<li class="u_username"><a href="replyme.jsp"
				onmouseout="hide2();" onmouseover="show2();">消息</a>
				<div>
					<ul id="context2" style="display: none">
						<li><a href="atme.jsp" style="color: #537CC4">私信</a></li>
						<li><a href="#">通知</a></li>
					</ul>
				</div></li>
		</ul>
	</div>
	<br>
	<!-- 图片背景所在 ，怎么给div设置背景-->
	<div id="headinfo_wrap" class="headinfo_wrap">

		<!--//编辑资料  -->
		<div class="btn_grounps">
			<a class="btn_setting" target="_blank" href="profile2.jsp"></a>
		</div>
	</div>
	<div class="userinfo_wrap clearfix">
		<!-- 头像 -->
		<div class="userinfo_left">
			<div class="userinfo_head">
				<img src="${ui.userImg}"> 
			</div>
		</div>
		<div class="userinfo_middle">
			<div class="userinfo_title">
				<span class="userinfo_username">${ui.userAccount}</span>
			</div>
			<div class="userinfo_num">
				<span class="userinfo_sex userinfo_sex_female"></span><span></span><span
					class="userinfo_split"></span><span></span>
			</div>
			<div class="userinfo_honor"></div>
		</div>
		<div class="userinfo_right">
			<ul class="userinfo_member">
				<li><a target="_blank" href="GuanZhu" class="userinfo_num"> <span
					class="userinfo_txt">关注</span></a></li>
				<li class="userinfo_member_split"><span
					class="userinfo_split userinfo_right_split"></span></li>
				<li><a target="_blank" href="FansServlet" class="userinfo_num"> <span
					class="userinfo_txt">粉丝</span></a></li>
			</ul>
		</div>
	</div>
	<div id="container" class="container_wrap clearfix ihome_body">
		<div class="left_aside ihome_left_aside">
			<div class="content_wrap">
				<div id="ihome_nav_wrap" class="ihome_nav_wrap">
					<ul class="ihome_nav_list">
						<li class="focus">
							<div class="tbnav_tab_inner">
								<p class="space">
									<a class="nav_icon nav_main" href="/Three/main.jsp">我的主页</a>
								</p>
							</div>
						</li>
						<li>
							<div class="tbnav_tab_inner">
								<p class="space">
									<a class="nav_icon nav_msg" href="replyme.jsp" target="_blank">消息</a>
								</p>
								<span></span>
							</div>
						</li>
						<li>
							<div class="tbnav_tab_inner">
								<p class="space">
									<a class="nav_icon nav_collect" href="store.jsp"
										target="_blank">收藏</a>
								</p>
								<span></span>
							</div>
						</li>
					</ul>
				</div>
				<div class="ihome_hot_feed ihome_section">
					<h1 class="threadList_title">
						<span class="cut_line"></span> 热门动态
					</h1>
				</div>
			</div>
		</div>
		<div>
		</div>
		<div class="right_aside">
			<div class="ihome_aside_section ihome_visitor ihome_aside_first">
				<h1 class="ihome_aside_title"></h1>
				<div class="card_wrap"></div>
			</div><div class="right_aside" style="border:1px solid #DCDCDC;">
		<div class="right_aside_woguanzhu"
			style="height: 200px;">
			<h1 class="ihome_aside_title"><font size="3px" color="#5C6573">
				我关注的人 </font>
			</h1>

		</div>
		<hr style="border:1px solid #DCDCDC;">
		<div class="right_aside_guanzhuwo" style="height: 200px;">
			<h1 class="ihome_aside_title"><font size="3px" color="#5C6573">
				关注我的人</font>
			</h1>
		</div>
	</div>
	<ul class="tbui_aside_float_bar">
		<li style="visibility: visible;"
			class="tbui_aside_fbar_button tbui_fbar_top"><a href="#"></a></li>
	</ul>
</body>
</html>