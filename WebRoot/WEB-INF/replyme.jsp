<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�ظ��ҵ�</title>
<link rel="stylesheet" href="csss/a_002.css">
<link rel="stylesheet" href="csss/a.css">

<script type='text/javascript' language='javascript'>
	function gotopageNow() {
		var pageNow = document.getElementById('pageNow');
		window.open('/Three/replyme.jsp?pageNow=' + pageNow.value, '_self');
	}
</script>
</head>


<body bgcolor="#A1D6AC">
	<div style="z-index: 10005;" id="com_userbar" class="userbar">
		<ul>
			<li id="j_u_username" class="u_username">
				<div>
					<a href="LoginServlet?loginemail=${ui.userEmail}"
						class="u_arrow u_username_show">${ui.userAccount}</a>
				</div>
				<div style="width: 108px;" class="u_ddl">
					<div style="width: 108px;" class="u_ddl_tit">
						<a href="LoginServlet?loginemail=${ui.userEmail}"
							class="u_arrow u_username_show">${ui.userAccount}</a>
					</div>
				</div>
			</li>
			<li class="split">|</li>
			<li class="u_ucenter">
				<div>
					<span class="u_arrow u_menu_title"><a
						href="LoginServlet?loginemail=${ui.userEmail}">��������</a></span>
				</div>

			</li>
			<li class="split">|</li>
			<li class="u_news">
				<div>
					<span class="u_arrow u_menu_title j_news"><a
						href="replyme.jsp">��Ϣ</a></span>
				</div>
			</li>
			<li class="split">|</li>
			<li class="split">|</li>
			<li class="u_bdsearch"></li>
		</ul>
	</div>
	<div id="local_flash_cnt"></div>
	<br>
	<br>
	<div class="wrap1">
		<div class="wrap2">
			<div id="main_wrapper" class="main_wrapper">
				<div id="main_back_img">
					<div id="main_back_bottom">

						<!-- ͼ����һ�� -->
						<div id="main_header_logo" class="main_header">
							<ul class="nav_bar">

								<!-- <li class="nav_item"></li> -->
								<li class="nav_item"><a href="mainview.jsp"
									onMouseDown="$.stats.hive('tb_index')" target="_self">������ҳ</a>
								</li>
								<li class="nav_cur"><a
									href="LoginServlet?loginemail=${ui.userEmail}" target="_self">�ҵ�����</a>
								</li>
							</ul>
						</div>
						<div id="container" class="ibody clearfix">
							<div class="w750 fleft">
								<div id="content">
									<div id="pc2client" class="pc2client" style="">
										<a target="_blank"><img src="images/timg.jpeg" title=""
											alt=""></a>
									</div>
									<ul id="tab" class="tab_content">
										<li class="tab tab_cur"><a href="replyme.jsp"
											target="_self">�ظ��ҵ�</a></li>
										<!-- <li class="tab ">
										<a href="atme.jsp"  target="_self">@�ᵽ�ҵ�</a>
										</li> -->
										<li class="tab "><a href="store.jsp" target="_self">�ղص�����</a>
										</li>
									</ul>
									<ul id="sub_tab" class="sub_tab_content">
										<li class="sub_tab sub_tab_cur"><a href="#"
											target="_self">ȫ��</a></li>
									</ul>
									<div id="feed" class="feed">
										<div class="feed_head"></div>
										<div class="feed_foot"></div>
									</div>
									<div id="pager" class="itb_pager"></div>
								</div>
							</div>
							<div id="main_aside" class="content_aside"
								style="background-color: #CEE8CD">
								<div id="aside_person_info" class="aside_person_info">
									<div class="aside_person_info_wraper">
										<!-- ͼƬ����ʾ -->
										<div class="aside_userface_wraper">
											<p class="aside_userface_border">
												<a href="profile2.jsp" target="_blank"> <img
													src="${ui.userImg}" id="img_aside_head"
													style="max-width: 64px; max-height: 64px; width: 64px; height: 64px; visibility: visible; margin-top: 0px;">
												</a>

											</p>
										</div>
										<div class="aside_user_profile">
											<p class="aside_user_name">${ui.userAccount}</p>
											<p class="aside_user_info">
												<span>${ui.userSex}���ȼ���</span><span>${ui.userLevel}</span><br>
											</p>
											<p class="aside_user_fans">
												<a class="aside_interact_num number_font" href="#"
													target="_blank"></a>
											</p>
											<p class="aside_user_concern">
												<a class="aside_interact_num number_font" href="#"
													target="_blank"></a>
											</p>
										</div>
									</div>
									<div class="my_tb_pmclink"></div>
								</div>

								<div id="aside_menu" class="aside_menu">
									<ul>
										<li class="aside_home_li"><a id="aside_home"
											href="mainview.jsp">��ҳ</a></li>
										<li class="aside_mytie_li"><a id="aside_mytie" href="#">�ҵ�����</a>
										</li>
										<li class="aside_notice_li ">
										<li class="aside_storethreadaside_storethread_li sel">�ҵ�����</li>
										<li class="aside_notice_li"><a id="aside_notice"
											href="store.jsp">�ҵ��ղ�</a> <span id="new_reply_num_tip"
											class="new_reply_num_tip"></span></li>

										<li class="aside_myalbum_li"><a id="aside_myalbum"
											href="#">�ҵ����</a></li>
										<li class="aside_mypan_li"><a id="aside_mypan" href="#"
											target="_blank">�ҵ�����</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div id="footer" class="footer">
							<span>&#169;2017 Baidu</span><a target="_blank">����Э��</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
