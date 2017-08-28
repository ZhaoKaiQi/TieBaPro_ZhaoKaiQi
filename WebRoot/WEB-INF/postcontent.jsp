<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${post.getPostsTitle()}</title>
<link rel="stylesheet" href="css/a1.css">
<link rel="stylesheet" href="css/postcontent.css">
<link rel="stylesheet" href="css/postcontent_004.css">
<link rel="stylesheet" href="css/postcontent_003.css">
<link rel="stylesheet" href="css/postcontent_005.css">
<link rel="stylesheet" href="css/postcontent_002.css">
<script type="text/javascript" src="jquery/jquery-1.7.js"
	language="javascript"></script>

<script src=js/js1.js></script>
<script type="text/javascript">
	 
	function chageState(grade) 
	{ 
		var userEmail=$("#userEmail").val();
		
		if(userEmail!=""){
		document.getElementById(grade).style.display="block";
		}
	} 
</script>
</head>
<body class="skin_2000">

	<input type="hidden" id="userEmail" value="${ui.userEmail}" />
	<iframe style="display: none;"></iframe>
	<div style="display: block;" id="bdshare_s">
		<iframe id="bdsIfr"
			style="position: absolute; display: none; z-index: 9999;"></iframe>
	</div>
	<div style="z-index: 10005;" id="com_userbar" class="userbar"></div>
	<iframe style="display: none;"></iframe>
	<div id="bdshare_tb_s">
		<iframe id="bdsTbIfr"
			style="position: absolute; display: none; z-index: 9999;"></iframe>
	</div>
	<div id="local_flash_cnt">
		<object id="jswf_1385091653871" type="application/x-shockwave-flash"
			data="images/CrossPageSWF.swf" align="middle" height="1" width="1">
			<param name="allowScriptAccess" value="always">
			<param name="wmode" value="window">
			<param name="flashVars" value="userName=TBMSG_e3n=true&amp;">
		</object>
	</div>
	<!--上面的空白-->
	<div class="wrap2">
		<div id="pb_adbanner" class="l_banner banner_wangmeng_theme_2">
		</div>
	</div>
	<div id="container" class="l_container clearfix ">
		<div id="frs_nav" class="frs_nav_3">
			<div id="frs_nav_wrap" class="nav_wrap">
				<ul style="width: auto;" class="nav_left">
					<li class="v2_tab first v2_tab_tab v2_tab_tab_normal"
						style="border-right: 1px solid #2C7CF5;">
						<p class="v2_tab_tab_text"
							style="float: left; border-right: 1px solid #216EE2;">
							<a class="tab_forumname" href="MainView" title="自在"
								id="tab_forumname">自在吧</a>
						</p>
					</li>
					<li class="divide"></li>
					<li class="v2_tab  v2_tab_tab v2_tab_tab_normal">
						<p class="v2_tab_tab_text">
							<a class="tab_picture" href="PostsImages" id="tab_picture">图片</a>
						</p>
						<p class="v2_tab"></p>
					</li>
					<li class="divide"></li>
					<li class="v2_tab v2_tab_tab v2_tab_tab_normal">
						<p class="v2_tab_tab_text">
							<a href="">精品</a>
						</p>
						<p class="v2_tab"></p>
					</li>
				</ul>
			</div>
		</div>
		<div class="left_section">
			<!--一楼-->
			<div class="core">
				<div style="display: block;" class="core_title_wrap"
					id="j_core_title_wrap">
					<div class="core_title core_title_theme_2">
						<h1 class="core_title_txt"
							title="<c:out value='${post.getPostsTitle()}'/>">
							<c:out value='${post.getPostsTitle()}' />
						</h1>
						<ul class="core_title_btns">
							<li><a id="lzonly_cntn"
								href="http://tieba.baidu.com/p/2717315290?see_lz=1"
								class="l_lzonly"><span id="lzonly" class="d_lzonly_bdaside">只看楼主</span></a></li>
							<li id="j_favthread" class="p_favthread">
								<div class="p_favthr_tip"></div>
								<div class="p_favthr_main">
									<p>收藏</p>
								</div>
								<div class="p_favthr_listshadow">&nbsp;</div>
							</li>
							<li class="quick_reply"><a href="#add" id="quick_reply"
								class="j_quick_reply">回复</a></li>
						</ul>
					</div>
				</div>
				<div class="p_postlist" id="j_p_postlist">
					<!--一楼-->
					<c:if test="${page.pagenum==1}">
						<div class="l_post noborder">
							<div class="user-hide-post-position"></div>
							<a class="l_post_anchor"></a>
							<div class="d_author">
								<div class="louzhubiaoshi_wrap">
									<div class="louzhubiaoshi j_louzhubiaoshi">
										<a href=""></a>
									</div>
								</div>
								<ul class="p_author post_icon">
									<li class="icon">
										<div class="icon_relative"
											style="padding: 4px; margin-top: 2px;">
											<a class=" j_user_card p_author_face"
												href="LoginServlet?loginemail=${post.getUserEmail()}"
												target="_blank"><img class="icon"
												src="${post.getUserImg()}" style="width: 80px; height: 80px"></a>
										</div>
									</li>
									<li class="d_name"><a class="p_author_name j_user_card"
										href="LoginServlet?loginemail=${post.getUserEmail()}"
										target="_blank"><c:out value='${post.getPostsAccount()}' /></a></li>
									<li style="display: block;" class="l_badge">
										<div class="p_badge">
											<div class="d_badge d_badge_icon2_2"
												title="本吧头衔9级，经验值1085，点击进入等级头衔说明页">
												<div class="d_badge_title ">淼淼淼</div>
												<div class="d_badge_lv">${post.getUserLevel()}</div>
											</div>
										</div>
									</li>
									<li class="l_client" style="margin-top: 5px;"></li>
								</ul>
							</div>
							<div class="d_post_content_main d_post_content_firstfloor ">
								<div class="p_content">
									<div id="post_content_41977423734"
										class="d_post_content j_d_post_content">
										<c:out value='${post.getPostsContent()}' />
										<img class="BDE_Image" width="500" height="340" pic_type="2"
											src='${post.getPostsImg()}'></img>
									</div>
									<br />
								</div>
								<div class="share_btn_wrapper">
									<div class="share_thread share_thread_wrapper">
										<div id="bdshare_tb"
											class="bdshare_t bds_tools get-codes-bdshare">
											<span id="bds_share_more" class="bds_more dis_share_num"><span
												class="repost_num"> </span></span>
										</div>
										<span class="share_btn_big_right"></span>
									</div>
								</div>
								<div class="core_reply j_lzl_wrapper">
									<a class="l_post_anchor" name="41977423734l"></a>
									<div class="core_reply_tail">
										<ul class="p_reply">

											<li><a href="#add" class="p_reply_first">回复</a></li>
										</ul>
										<ul class="p_tail">
											<li><span class="">1楼</span></li>
											<li><span><c:out
														value='${post.getPLRTime().subSequence(0, 16)}' /></span></li>
										</ul>
										<ul class="p_mtail">
											<li class="j_jb_ele"></li>
											<li><span class="p_tail_txt">来自</span><span
												class="tip_bubble_con"> <!--控制右端的会员信息-->
													<div class="ui_bubble_wrap j_wrap"
														style="display: none; width: 250px; top: 0px; left: -40px; z-index: 99; line-height: 16px;">
														<div style="width: 250px;"
															class="j_content ui_bubble_content ui_bubble_down">
															<div class="ui_bubble_body j_body">超过千万人在使用贴吧手机客户端，快来下载吧</div>
															<div class="ui_bubble_closed j_close"></div>
														</div>
														<div style="left: 76px; display: none;"
															class="j_ui_triangle ui_triangle ui_triangle_down">
															<div class="ui_triangle_outter ui_arrow_o_down">
																<em>◆</em>
															</div>
															<div class="ui_triangle_inner ui_arrow_i_down">
																<em>◆</em>
															</div>
														</div>
													</div>
											</span><a class="p_tail_wap" target="_blank">电脑</a></li>
										</ul>
									</div>
									<div class="j_lzl_container core_reply_wrapper"
										style="display: none">
										<div class="core_reply_border_top"></div>
										<div class="j_lzl_c_b_a core_reply_content">
											<ul class="j_lzl_m_w" style="display: none">
											</ul>
											<div
												class="lzl_editor_container j_lzl_e_c lzl_editor_container_s"
												style="display: none;"></div>
											<input class="j_lzl_e_f_h" style="display: none;" type="text">
										</div>
										<div class="core_reply_border_bottom"></div>
									</div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</c:if>
					<!--二楼-->
					<c:forEach var="x" items="${page.list}">
						<div class="l_post">
							<div class="user-hide-post-position"></div>
							<a class="l_post_anchor"></a>
							<div class="d_author">
								<ul class="p_author post_icon">
									<!--用户头像  -->
									<li class="icon">
										<div class="icon_relative"
											style="padding: 4px; margin-top: 2px;">
											<!--头像链接  -->
											<a class=" j_user_card p_author_face"
												href="LoginServlet?loginemail=${x.getUserEmail()}"
												target="_blank"> <img class="icon"
												src="${x.getUserImg()}" style="width: 80px; height: 80px"></a>
										</div>
									</li>
									<!--  用户名-->
									<li class="d_name"><a class="p_author_name j_user_card"
										href="LoginServlet?loginemail=${x.getUserEmail()}"
										target="_blank">${x.getPostsReplyAccount()}</a></li>
									<li style="display: block;" class="l_badge">
										<div class="p_badge">
											<div class="d_badge d_badge_icon3" title="本吧等级">
												<div class="d_badge_title ">淼淼淼沝</div>
												<div class="d_badge_lv">${x.getUserLevel()}</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!--帖子信息楼层-->
							<div class="d_post_content_main  ">
								<div class="p_content p_content_icon_row1">

									<div id="post_content_41977545308"
										class="d_post_content j_d_post_content">
										<img class="BDE_Image" pic_type="2"
											src='${x.getPostsReplyImg()}'></img><br>
										${x.getPostsReplyContent()}
									</div>
									<br>
								</div>
								<div class="core_reply j_lzl_wrapper">
									<a class="l_post_anchor"></a>
									<div class="core_reply_tail">
										<div class="j_lzl_r p_reply">
											<span class="lzl_link_fold"
												onclick="chageState(${x.getGrade()})">回复</span>
										</div>
										<ul class="p_tail">
											<li><span class=""> <c:if
														test="${page.pagenum==1 }">
											${x.getGrade()}楼
											</c:if> <c:if test="${page.pagenum==2 }">
											${x.getGrade()+10}楼
											</c:if>
											</span></li>
											<!-- 回复时间 -->
											<li><span>${x.getPostsReplyTime().subSequence(0,
													16)}</span></li>
										</ul>
										<ul class="p_mtail">
											<li class="j_jb_ele"><a href="#"></a>&nbsp;|</li>
										</ul>
									</div>
									<!--回复的回复  -->
									<div class="j_lzl_container core_reply_wrapper"
										style="display:">
										<div class="core_reply_border_top"></div>
										<div class="j_lzl_c_b_a core_reply_content">
											<ul class="j_lzl_m_w" style="display:">
												<!--第一层  -->
												<c:forEach var="k" items="${replyAgain}">
													<c:if var="flag"
														test="${k.getPostsId()==x.getPostsReplyId()}">
														<input type="hidden" id="${x.getGrade()}" value="${flag}" />

														<c:set var="temp" value="${k.getPostsReplyAccount()}" />

														<li class="lzl_single_post j_lzl_s_p first_no_border"><a
															class="l_post_anchor"></a> <a class="j_user_card lzl_p_p"
															href="" target="_blank" username=""> <img
																src="${k.userImg}" style="width: 32px; height: 32px"></a>
															<div class="lzl_cnt">
																<a class="at j_user_card" target="_blank" href="">${k.getPostsReplyAccount()}</a>:
																<span class="lzl_content_main">
																	<!-- <img
																	class="BDE_Smiley" src="images/i_f25.png" height="30"
																	width="30"> -->${k.getPostsReplyContent()}
																</span>
																<div class="lzl_content_reply">
																	<span style="display: none;" class="lzl_jb"><a
																		href="#" class="lzl_jb_in">举报</a>&nbsp;|&nbsp;</span> <span
																		class="lzl_op_list j_lzl_o_l" style="display: none;"></span><span
																		class="lzl_time">${k.getPostsReplyTime().subSequence(0,
																		16)}</span><a
																		class="lzl_s_r" onclick="chageState(${x.getGrade()})">回复</a>
																</div>

															</div></li>
													</c:if>
												</c:forEach>

												<div class="huifu" id=${x.getGrade()}style= "display:none;">
													<form name="frg" action="GetReplay" method="post">
														<table>
															<tr>
																<td><textarea name="context"
																		class="tb-editor-editarea"
																		style="height: 40px; width: 530px; border: 1px solid #D6DFFA;">回复 ${x.getPostsReplyAccount()}:</textarea>
																	<input type="hidden" name="replyAccount"
																	id="replyAccount" value="${ui.userAccount}" /> <input
																	type="hidden" name="postsId" id="postsId"
																	value=${x.getPostsReplyId() } /> <input type="hidden"
																	name="id" id="id" value=${post.getPostsId() } /></td>
															</tr>
															<tr>
																<td style="width: 75%;">
																	<p style="color: #666;">
																		我不是水桶，不要给我灌水 <input
																			class="lzl_panel_submit j_lzl_p_sb" type="submit"
																			value="发表" />

																	</p>
																</td>
															</tr>

														</table>
													</form>

												</div>




											</ul>


											<!-- 控制着右侧图片的div -->
											<div
												class="lzl_editor_container j_lzl_e_c lzl_editor_container_s"
												style="display: none;"></div>
											<input class="j_lzl_e_f_h" style="display: none;" type="text">
										</div>
										<div class="core_reply_border_bottom"></div>
									</div>
								</div>

							</div>

							<div class="clear"></div>
						</div>
					</c:forEach>
					<!--二楼的终结  -->


					<div class="l_post">
						<div class="user-hide-post-position"></div>
						<div class="d_post_content_main  "></div>
						<div class="clear"></div>
					</div>
				</div>

				<div style="background: transparent; border: none;"
					class="p_thread thread_theme_4" id="thread_theme_4">
					<div class="l_thread_info">


						<div style="background: transparent; border: none;"
							class="thread_list_bottom clearfix">
							<div style="background: transparent; border: none;"
								id="frs_list_pager" class="pager clearfix">
								<c:if test="${page.totalrecord!=0}">
									<span style="color: #5B6F6E">当前第[${page.pagenum }]页
										&nbsp; &nbsp;</span>
									<c:forEach var="pagenum" begin="${page.foreachbegin}"
										end="${page.foreachend}">
										<a href="PostContent?pagenum=${pagenum}&StrId=${StrId}">${pagenum}</a>
									</c:forEach>
									<!--pageNow  -->
									<c:if test="${page.pagenum<page.totalpage}">
										<a href="PostContent?pagenum=${page.pagenum+1}&StrId=${StrId}"
											class="next">下一页&gt;</a>
									</c:if>

									<c:if test="${page.pagenum!=page.totalpage}">
										<a href="PostContent?pagenum=${page.totalpage}&StrId=${StrId}"
											class="last">尾页</a>
									</c:if>
									<span style="color: #5B6F6E; float: right;">总共[${page.totalpage }]页，回复贴:${page.totalrecord }</span>
								</c:if>
							</div>
						</div>
					</div>
				</div>


			</div>


		</div>



		<div class="right_section">
			<div class="sign_mod_bright sign_mod_bright_pb" id="sign_mod">



				<c:if test="${ui!=null}">

					<div id="balv_mod" class="region_bright balv_mod balv_mod_bright">
						<div class="region_header">
							<div class="region_op j_op">
								<a class="p_balv_btnmanager" href="" target="_blank"
									style="display: none;">[管理]</a>
							</div>
							<div class="region_title region_icon j_title">我的本吧头衔</div>
						</div>
						<div class="region_cnt" style="text-align: center;">
							<div class="userlike_info userlike_info_bright"
								id="userlike_info">
								<div class="userlike_info_manager">
									<a href="" target="_blank">[管理]</a>
								</div>
								<div class="userlike_info_head">
									<a href="LoginServlet?loginemail=${ui.userEmail }"
										target="_blank"><img id="userlike_info_head_img"
										src="${ui.userImg}" height="64" width="64"> </a>
								</div>

								<div class="userlike_info_name">


									<a href="LoginServlet?loginemail=${ui.userEmail }"
										target="_blank">${ui.userAccount} </a>



								</div>
								<div class="userlike_info_badge">
									<div title="等级" class="userlike_badge badge_lv1">
										<div class="userlike_member_title" id="liked_member_title">等级</div>
										<div class="userlike_member_lv">${ui.userLevel}</div>
									</div>
								</div>


								<div class="userlike_info_explbl">
									<a href="LoginHistoryServlet" target="_blank" title="账号设置">
										账号设置</a>&nbsp;&nbsp; <a
										href="UpdateServlet?loginemail=${ui.userEmail}"
										target="_blank" title="个人中心"> 个人中心</a>
								</div>
								<div id="userlike_info_tip" class="userlike_info_tip_notlikes"></div>
							</div>
						</div>
						<div class="region_footer"></div>
					</div>
				</c:if>
			</div>
		</div>
		<!-- 创建最外层容器 -->
		<div id="div1" class="container1">
			<form action="MyIdeaCL" method="post" onsubmit="return check3()">

				<input type="hidden" name="user_nc"
					value="${post.getPostsAccount()}" /> <input type="hidden"
					name="tiezi_id" value="${post.getPostsId()}" />





				<!-- 创建内层容器用来装一行一行的内容 -->
				<div class="container2">
					<!-- 创建第一行容器并加入内容 -->
					<div class="context_line1">
						<!-- 创建第一行左边容器 -->
						<div class="context_line1_left">
							回复楼主 <span class="split_text">:</span>
							<!-- <a class="add_vote" href="">发起投票</a>
          <span class="split_text">|</span>
          <a class="add_vote" href="#">发起妹纸认证</a> -->
						</div>
						<!-- 创建第一行右边的容器 -->
						<div class="context_line1_right">
							回复请遵守 <a class="bar_agreement" href="Agreement.jsp">贴吧协议"七条底线"</a>
						</div>
						<br>
					</div>
					<!-- 创建第二行容器 -->
					<!-- <div class="context_line2">
        <input id="my_title" name="titleName" class="my_write_title" type="text" maxlength="50">
      </div> -->
					<!-- 创建第三行容器 -->
					<div class="context_line3_border">
						<!-- 创建隐藏表情框 -->
						<div id="all_face" class="face_container" onclick="close_face()">
							<div>
								<img src="images/show_face.jpg">
							</div>
							<img src="images/cancel.jpg"
								style="position: absolute; right: 5px; top: 7px;" />
							<div id="faces1" class="face1"
								onmouseover="change_face1_border()"
								onmouseout="change_face1_back()" onclick="chose_face1()">
								<img src="images/face1.jpg">
							</div>
							<div id="faces2" class="face2"
								onmouseover="change_face2_border()"
								onmouseout="change_face2_back()" onclick="chose_face2()">
								<img src="images/face2.jpg">
							</div>
							<div id="faces3" class="face3"
								onmouseover="change_face3_border()"
								onmouseout="change_face3_back()" onclick="chose_face3()">
								<img src="images/face3.jpg">
							</div>

						</div>
						<!-- 创建隐藏文件上传框 -->
						<div id="all_files" class="file_container" onclick="close_file()">
							<div>
								<img src="images/show_file.jpg">
							</div>
							<div class="file_button_container">
								<input id="btn1" style="display: none;" type="file" /> <input
									type="button" value="点击上传" class="browser"
									onclick="click_real_button()" /> <img class="file_picture"
									src="images/tag_file.jpg" />
							</div>
							<img src="images/cancel.jpg"
								style="position: absolute; right: 8px; top: 10px;"
								onclick="cancel_file()" />
						</div>
						<!-- 创建表情图片选项容器 -->
						<div id="faces" class="my_chose_face">
							<img src="images/face.jpg" onclick="show_face()" /> <img
								src="images/picture.jpg" onclick="show_file()" />
							<!--  <a href="#"><img src="images/file.jpg" /></a> -->
						</div>
						<div id="context" class="context_line3"
							onclick="change_context_border()">
							<textarea id="text2" name="IdeaContentName" class="text2_class"></textarea>
						</div>
					</div>
					<!-- 创建发表按钮 -->
					<div class="publish">
						<input id="publish" type="submit" class="publish_button"
							value="发布回复" onmouseover="change_submit_color()"
							onmouseout="change_submit_back()" />
						<div
							style="display: inline; color: #7CBEE9; font-size: 13px; float: right;">[200字以内]</div>
					</div>
					<!-- 创建提示字数框 -->
					<div id="tip_length" class="tip_length_class">回复长度超出范围!</div>
					<div id="tip_empty" class="tip_length_class">您未回复任何内容!</div>
					<div id="tip_success" class="tip_success_class">
						<img src="images/publish_success.jpg" />
					</div>
				</div>
			</form>
		</div>

		<!-- 创建隐藏登录框 -->

		<form action="GoToMyBar" method="post" onsubmit="return check()">

			<div id="publish_frame2" class="publish2">
				<div id="login_" class="login_frame">
					<!-- 创建登录栏 -->
					<div class="login_frame_top">登录</div>
					<!-- 创建账号输入行 -->
					<div class="login_frame_line1">
						<div style="float: left">
							邮箱: <input type="text" id="myemail" name="username"
								maxlength="30" class="login_line1_text"
								onmouseover="change_myemail_color()"
								onmouseout="change_myemail_back()" onblur="checkup()" />
						</div>
						<img id="email_info1" class="email_tip1"
							src="images/email_error.jpg" /> <img id="email_info2"
							class="email_tip2" src="images/email_right.jpg" />
					</div>

					<div class="login_frame_line2">
						<div style="float: left">
							密码: <input id="pass" name="passwd" class="login_line2_text"
								type="password" maxlength="30" onmouseover="change_pass_color()"
								onmouseout="change_pass_back()" />
							<div id="mypass" class="passErr_class">用户名或密码错误</div>
						</div>
					</div>
					<div class="login_line3">
						<input class="login_submit" type="submit" value="登录">
					</div>
				</div>
			</div>
		</form>
	</div>
	<a name="add"></a>
	<!-- 定义锚点 -->
</body>
</html>