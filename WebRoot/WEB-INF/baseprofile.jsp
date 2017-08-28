<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=GBK">

<title>编辑资料</title>
<link rel="stylesheet" type="text/css" href="css/ChangeInfo.css">
<script type="text/javascript" src="js/city_function.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/calendar.js"></script>
<script type="text/javascript" src="js/aa.js"></script>
<link rel="stylesheet" href="csss/a_002.css">
<link rel="stylesheet" href="csss/a.css">
</head>
<body bgcolor="#A1D6AC" onload ="init();">

	<div style="z-index: 10005;" id="com_userbar" class="userbar">
		<ul>
			<li id="j_u_username" class="u_username">
				<div>
					<a href="index.action?method=accoutset" class="u_arrow u_username_show">${user.userMail}</a>
				</div>
			</li>
			<li class="split">|</li>
			<li class="u_ucenter">
				<div>
					<span class="u_arrow u_menu_title"><a href="index.action?method=alterper">个人中心</a></span>
				</div>
			</li>
			<li class="split">|</li>
			<li class="u_news">
				<div>
					<span class="u_arrow u_menu_title j_news"><a href="index.action?method=replyme">消息</a></span>
				</div>
		</ul>
	</div>
<br>

	<div id="local_flash_cnt">
	</div>
	<div class="wrap1">
		<div class="wrap2">
			<div id="head" class="search search_theme_3 clearfix" style=""></div>
			<div id="main_wrapper" class="main_wrapper">
				<div id="main_back_img">
					<div id="main_back_bottom">
						<div id="main_header_logo" class="main_header">
							<ul class="nav_bar">
								<li class="nav_item"><a href="/TieBaPro_ZhaoKaiQi/index.action"
									onMouseDown="$.stats.hive('tb_index')" target="_self">贴吧首页</a></li>
								<li class="nav_cur"><a href="index.action?method=MyBar"
									onMouseDown="$.stats.hive('tb_itb')" target="_self">我的贴吧</a></li>
							</ul>
						</div>
						<div id="container" class="ibody clearfix" style="background-color: #CEE8CD;border: ">
							<div class="w750 fleft">
								<div id="content">
									<div id="user_sub_tab" class="sub_nav clearfix">
										<ul>
											<li class=""><a href="index.action?method=uploadimage" target="_self">头像修改</a></li>
                            				 <li class="current"><a href="index.action?method=baseprofile" target="_self">基本资料</a></li>
										</ul>
									</div>
									<div id="user">
										<div style="padding: 30px;">
											<form action="${pageContext.request.contextPath}/user.action=saveUser" method="post">
												<table width="100%">
													<tbody>
														<tr>
															<td class="info_cols">性别：</td>
															<td > <input type="radio" checked="checked" id="man" name="basicInfoSex" value="男" >男
																  <input type="radio" id="female" name="basicInfoSex" value="女" >女
															</td>
														</tr>
														<tr>
															<td class="info_cols">邮箱：</td>
															<td> <input name="myemail" id="myemail"  readonly value="${user.userMail}">
															</td>
														</tr>
														<tr>
															<td class="info_cols">年龄：</td>
															<td> <input  type="text" name="myTime" id="userage" onfocus="calendar();" onblur="check_age();" value="${users.userBarAge}">
															<span id="myage"> <label
																	style="display: none; margin-top: 3px;"> </label>
															</span></td>
														</tr>
														<tr>
															<td class="info_cols">生日：</td>
															<td> <input  type="text" id="userbirthday" name="mybirthday" onfocus="calendar();" value="${users.userBirthday.subSequence(0, 10)}" onblur="check_birthday();">
															<span id="mybirthday"> <label
																	style="display: none; margin-top: 3px;"> </label>
															</span></td>
														</tr>
														<tr>
															<td class="info_cols">地址：</td>
															<td> <input  type="text" id="userhome" name="myhome" onfocus="calendar();" value="${user.userAddr}" onblur="check_home();">
															<span id="myhome"> <label
																	style="display: none; margin-top: 3px;"> </label>
															</span></td>
														</tr>
														<tr>
															<td class="info_cols">姓名：</td>
															<td><input type="text" name="myname" id="username"
																value="${user.userName}"
																onblur="check_uname();"> <span id="aa"> <label
																	style="display: none; margin-top: 3px;"> </label>
															</span></td>
														</tr>
														<tr></tr>
														<tr>
															<td></td>
															<td>
																<input type="submit" value="保存">&nbsp;&nbsp;&nbsp;&nbsp;
																<input type="reset" value="取消">
														</td>
														</tr>
													</tbody>
												</table>
											</form>
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
										<div class="aside_userface_wraper">
											<p class="aside_userface_border">
												<a target="_blank"><img src="${users.userImg}" id="img_aside_head" style="max-width: 64px; max-height: 64px; width: 64px; height: 64px; visibility: visible; margin-top: 0px;"></a>
											</p>
										</div>
										<div class="aside_user_profile">
											<p class="aside_user_name">${user.userName}</p>
											<p class="aside_user_info">
												<span>${user.userGender}，等级：</span><span>${user.userGrade}</span><br>
											</p>
											<p class="aside_user_fans">
												<a class="aside_interact_num number_font" href="#" target="_blank">1</a>
											</p>
											<p class="aside_user_concern">
												<a class="aside_interact_num number_font" href="#" target="_blank">2</a>
											</p>
										</div>
									</div>
								</div>
								<div id="aside_menu" class="aside_menu">
									<ul>
										<li class="aside_home_li"><a id="aside_home" href="mainview.jsp">首页</a></li>
										<li class="aside_mytie_li"><a id="aside_mytie" href="#">我的帖子</a></li>
										<li class="aside_forum_li"><a id="aside_notice" href="replyme.jsp">我的提醒</a> 
										<span id="new_reply_num_tip"class="new_reply_num_tip"></span>
										</li>
										<li class="aside_storethread_li"><a id="aside_storethread" href="store.jsp">我的收藏</a> 
										<span id="new_storethread_num_tip" class="new_storethread_num_tip"></span>
										</li>
										<li class="aside_myalbum_li"><a id="aside_myalbum" href="#">我的相册</a></li>
										<li class="aside_mypan_li"><a id="aside_mypan" href="#" target="_blank">我的网盘</a></li>
										</ul>
								</div>
							</div>
						</div>
						<div id="footer" class="footer">
							<span>&#169;2017 Baidu</span><a target="_blank">贴吧协议</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>