<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
<title>我的收藏</title>
<link rel="stylesheet" href="csss/a_002.css">
<link rel="stylesheet" href="csss/a.css">

<script type='text/javascript' >

	function gotopageNow() {
		var pageNow = document.getElementById('pageNow');
		window.open('/Three/store.jsp?pageNow=' + pageNow.value, '_self');
	}
	
	function confirmOper() {
		return window.confirm('真的要移除吗？');
	}
</script>

</head>

<body bgcolor="#A1D6AC">
	<div style="z-index: 10005;" id="com_userbar" class="userbar">
		<ul>
			<li id="j_u_username" class="u_username">
				<div>
					<a href="LoginServlet?loginemail=${ui.userEmail}" class="u_arrow u_username_show">${ui.userAccount}</a>
				</div>
			</li>

			<li class="split">|</li>
			<li class="u_ucenter">
				<div>
					<span class="u_arrow u_menu_title">
					<a href="LoginServlet?loginemail=${ui.userEmail}">个人中心</a>
					</span>
				</div>
			</li>
			<li class="split">|</li>
			<li class="u_news">
				<div>
					<span class="u_arrow u_menu_title j_news"><a href="replyme.jsp">消息</a></span>
				</div>
			</li>
		</ul>
	</div>

	<br>
	<br>

	<div class="wrap1">
		<div class="wrap2">
			<div id="main_wrapper" class="main_wrapper">
				<div id="main_back_img">
					<div id="main_back_bottom">
						<div id="main_header_logo" class="main_header">
							<ul class="nav_bar">
								<li class="nav_item"></li>
								<li class="nav_item">
								<a href="mainview.jsp" onMouseDown="$.stats.hive('tb_index')" target="_self">贴吧首页</a>
								</li>
								<li class="nav_cur"><a href="LoginServlet?loginemail=${ui.userEmail}" onMouseDown="$.stats.hive('tb_itb')" target="_self">我的贴吧</a>
								</li>
							</ul>
						</div>
						<div id="container" class="ibody clearfix">
							<div class="w750 fleft">
								<div id="content">
									<div id="pc2client" class="pc2client" style="">
										<a target="_blank"><img src="images/timg.jpeg" title="" alt=""></a>
									</div>
									<ul id="tab" class="tab_content">
										<li class="tab ">
										<a href="replyme.jsp" target="_self">回复我的</a>
										</li>
										<li class="tab tab_cur">
										<a href="store.jsp" target="_self">收藏的帖子</a></li>
									</ul>
									
									<div id="feed" class="feed">
										<div class="feed_head">
											<!---->
											<h3 class="favth_title">收藏的帖子</h3>
											<div class="favth_thead">
												<div class="favth_col1">标题</div>
												<div class="favth_col2">作者</div>
												<div class="favth_col4">最后更新时间</div>
												<div class="favth_col3">查看</div>
											</div>
						
										</div>
									</div>
								</div>
							</div>
							<div id="main_aside" class="content_aside"  style="background-color: #CEE8CD">
								<div id="aside_person_info" class="aside_person_info">
									<div class="aside_p_info_head">
										<span class="a_p_title">个人信息</span>
									</div>
									<div class="aside_person_info_wraper">
									
										<!-- 图片的显示 -->
										<div class="aside_userface_wraper">
											<p class="aside_userface_border">
												<a href="profile2.jsp" target="_blank">
												<img src="${ui.userImg}"  id="img_aside_head" style="max-width: 64px; max-height: 64px; width: 64px; height: 64px; visibility: visible; margin-top: 0px;">
												</a>
											</p>
										</div>
										<div class="aside_user_profile">
											<p class="aside_user_name">${ui.userAccount}</p>
											<p class="aside_user_info">
												<span>${ui.userSex}，等级：</span><span>${ui.userLevel}</span><br>
											</p>
											<p class="aside_user_fans">
												<a class="aside_interact_num number_font" href="#" target="_blank"></a>
											</p>
											<p class="aside_user_concern">
												<a class="aside_interact_num number_font" href="#" target="_blank"></a>
											</p>
										</div>
									</div>
									<div class="my_tb_pmclink"></div>
								</div>
								<div id="aside_menu" class="aside_menu">
									<ul>
										<li class="aside_home_li">
										<a id="aside_home" href="mainview.jsp">首页</a>
										</li>
										<li class="aside_mytie_li">
										<a id="aside_mytie" href="#">我的帖子</a>
										</li>
										<li class="aside_notice_li">
										<a id="aside_notice" href="replyme.jsp">我的提醒</a> 
										<span id="new_reply_num_tip" class="new_reply_num_tip"></span>
										</li>
										
										<li class="aside_storethreadaside_storethread_li sel">我的收藏</li>
										<li class="aside_myalbum_li">
										<a id="aside_myalbum" href="#">我的相册</a>
										</li>
										<li class="aside_mypan_li">
										<a id="aside_mypan" href="#" target="_blank">我的网盘</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="footer" class="footer">  <span>&#169;2017 Baidu</span><a target="_blank">贴吧协议</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
