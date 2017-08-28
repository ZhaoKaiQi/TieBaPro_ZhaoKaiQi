<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自在吧</title>
<link rel="stylesheet" href="css/wang.css">
<link rel="stylesheet" href="css/wang_003.css">
<link rel="stylesheet" href="css/wang_004.css">
<link rel="stylesheet" href="css/wang_002.css">
<link rel="stylesheet" href="css/wang_005.css">
<link rel="stylesheet" href="css/postcontent_004.css">
<link rel="stylesheet" href="css/a1.css">

<script type="text/javascript" src="jquery/jquery-1.7.js"></script>
<script src=js/js1.js></script>
<script type="text/javascript">




    //这里可以写个分页


	//设置默认的当前页
	var currentPage = 1;
	var pageSize = 10; 

	//判断浏览器是否支持AJAX
	function getAjax() {
		var ajax = null;
		try {
			//这里是为了兼容IE的低版本
			var ajax = new ActiveXObject("microsoft.xmlhttp");
		} catch (e) {
			try {
				//现代的浏览器支持的对象	
				ajax = new XMLHttpRequest();
			} catch (e) {
				alert('浏览器的版本太老，请更新！');
			}
		}
		return ajax;
	}

	 window.onload = function() {
		//加载一个页面的数据
		initData();
		//给按钮添加点击事件
		document.getElementByClass('next').onclick = function() {
			currentPage--;
			if (currentPage <= 0) {
				currentPage = 1;
			}
			initData();
		}
		document.getElementByClass('last').onclick = function() {
			//自增
			currentPage++;
			if (currentPage > 5) {
				currentPage = 5;
			}
			initData();
		}
	}
	/**
	 * 获取数据的方法
	 */
	/* function initData() {
		getPageContent(currentPage, pageSize);
	} */
	/**
	 * 这个方法主要用来解析这个json格式的字符串
	 */
	/* function parseJson(jsonArray) {
		if (jsonArray.length > 0) {
			$("table  tr:not(:first)").html("");
		}
		//解析jsonArray
		for ( var i = 0; i < jsonArray.length; i++) {
			//获取数组里面的每一个对象
			var jsonObj = jsonArray[i]; 
			 //获取值
			var msgTitle = jsonObj.msgTitle;
			var userName = jsonObj.userName;
			var pubDate = jsonObj.pubDate;
			//动态添加
			addElmentToContainer(msgTitle, userName, pubDate);
		}
	}  */
	/**
	 * 添加节点到内容
	 */
	/* function addElmentToContainer(msgTitle, userName, pubDate) {
		//创建一个tr节点
		var tr = document.createElement('tr');
		//下面创建三个td(创建标题这个节点)
		var tdMsgTitle = document.createElement('td');
		tdMsgTitle.innerHTML = msgTitle;
		//创建用户名这个节点
		var tdUserName = document.createElement('td');
		tdUserName.innerHTML = userName;
		//创建日期这个节点
		var tdPubDate = document.createElement('td');
		tdPubDate.innerHTML = pubDate;
		//下面将三个节点添加到tr中
		tr.appendChild(tdMsgTitle);
		tr.appendChild(tdUserName);
		tr.appendChild(tdPubDate);
		//找到这个table添加节点
		var tableContainer = document.getElementsByTagName('table')[0];
		//将这个tr添加进这个table中
		tableContainer.appendChild(tr);
	} */

	/**
	 * 根据页面的索引和每个页面显示的数据的大小来获取服务器端返回的数据
	 * @param {Object} currentPage
	 * @param {Object} pageSize
	 */
	function getPageContent(currentPage, pageSize) {
		//获取ajax对象
		var ajax = getAjax();
		//准备发送数据
		var url = "${pageContext.request.contextPath}/FyServlet";
		ajax.open("POST", url);
		//下一步:发送数据
		  	ajax.setRequestHeader('content-type','application/x-www-form-urlencoded');
		  	//这里需要构建这个发送的键值对
		  	var sendData="currentPage="+currentPage+"&pageSize="+pageSize;
		  	ajax.send(sendData);
		  	//是不是需要进行监听
		  	ajax.onreadystatechange=function(){
		  		//下面获取ajax的状态
		  		if(ajax.readyState==4){
		  			if(ajax.status==200){
		  			    jsonArrayNew=null;
		  				//下面就应该获取数据了
		  				var value=ajax.responseText;
		  				var list = eval('('+value+')'); 
		  				for ( var i = 0; i < list.length; i++) {
			//获取数组里面的每一个对象
			var jsonObj = list[i]; 
			//alert(jsonObj);
			 //获取值
			var msgTitle = jsonObj.msgTitle;
			var userName = jsonObj.userName;
			var pubDate = jsonObj.pubDate;
		}
				}
			}
		}
	}
</script>
</head>
<body
	style="background-image: url(images/bobackground.jpg); background-repeat: no-repeat; background-attachment: fixed;">

	<div class="content">
		<!--forum_header标题栏-->
		<div class="forum_header">
			<div class="card_top">
				<div class="card_title ">
					<a class="card_title_fname" href="MainView">自在吧</a> <span
						class="card_num"> <span class="card_numLabel">会员：</span> <span
						class="card_menNum">${allUsers}</span> <span class="card_numLabel">贴子：</span>
						<span class="card_infoNum">${page.totalrecord}</span></span>
				</div>
				<p class="card_slogan">技术交流，资源共享！</p>
				<div class="card_head">
					<a href="MainView"><img class="card_head_img" src="img/qflogos.png"></a>
				</div>
				<div class="card_info ">
					<ul class="forum_dir_info bottom_list clearfix">
						<c:if test="${user!=null }">
							<li>欢迎：${user.userMail}</li>
							<li><a href="login.action?method=out">注销</a></li>
						</c:if>
						<c:if test="${user==null }">
							<li><a href="${pageContext.request.contextPath}/index.action?method=login">登录</a></li>
							&nbsp;<li><a href="${pageContext.request.contextPath}/index.action?method=register">注册</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<div class="nav_wrap" id="tb_nav">
				<ul class="nav_list j_nav_list">
					<li class=" focus j_tbnav_tab ">
						<div class="tbnav_tab_inner">
							<p class="space">
								<a href="" class="nav_icon icon_tie  j_tbnav_tab_a"
									id="tab_forumname">贴子</a>
							</p>
						</div>
					</li>
					<li class=" j_tbnav_tab ">
						<div class="tbnav_tab_inner">
							<p class="space">
								<a href="#addpost"
									class="nav_icon icon_picture  j_tbnav_tab_a" id="tab_picture">发帖</a>
							</p>
						</div>
					</li>
					<li class=" j_tbnav_tab ">
						<div class="tbnav_tab_inner">
							<p class="space">
								<a href="${pageContext.request.contextPath}/index.action?method=main" class="nav_icon icon_jingpin  j_tbnav_tab_a">我的</a>
							</p>
						</div>
					</li>
				</ul>
				<div class="search_internal_wrap j_search_internal">
					<!--搜索  -->
					<form class="j_search_internal_form">
						<input name="search"
							class="search_internal_input j_search_internal_input" type="text">
						<div
							class="search_internal_placeholder j_search_internal_placeholder">吧内搜索</div>
						<input class="search_internal_btn" type="submit">
					</form>
				</div>
			</div>
		</div>
		
		
		
		<div class="forum_content clearfix">
		<!-- 下面这一段是每条帖子的模块就是要做分页那个地方 -->
			<div class="main" id="contet_wrap">
				<div id="content_leftList" class="content_leftList clearfix">
					<ul id="thread_list" class="threadlist_bright ">

						<!--帖子①  -->
						<!-- items 用于接收集合对象，var 定义对象接收从集合里遍历出的每一个元素。同时其会自动转型 -->
						<c:forEach var="x" items="${messages}">
							<li class="j_thread_list clearfix">
								<div class="t_con clearfix">
									<div class="threadlist_li_left j_threadlist_li_left">
										<div class="threadlist_rep_num" title="回复">${x.getmsgId()}</div>
									</div>
									<div class="threadlist_li_right j_threadlist_li_right">
										<div class="threadlist_lz clearfix">
											<div
												class="threadlist_text threadlist_title j_th_tit  notStarList ">
												<!-- 传递参数的链接 -->
												<a href="msgContent?StrId=${x.getPostsId()}"
													title=${x.getMsgTitle() } target="_blank"
													class="j_th_tit">${x.getMsgTitle()}</a><span></span>
											</div>
											<div class="threadlist_author">
												<span class="tb_icon_author" title="主题作者:"
													${x.getUserEmail()}> <a class="j_user_card"
													href="LoginServlet?loginemail=${x.getUserEmail()}"
													target="_blank">${x.getMsgTitle()}</a></span>
											</div>
										</div>
										<div class=" threadlist_detail clearfix">
											<div class="threadlist_text">
												<div class="threadlist_abs threadlist_abs_onlyline">
													<div class="threadlist_abs threadlist_abs_onlyline">
														${x.getMsgContent()}</div>
												</div>
												<div class="small_wrap j_small_wrap">
													<a href="#" onClick="return false;"
														class="small_btn_pre j_small_pic_pre"
														style="display: none"></a><a href="#"
														onClick="return false;"
														class="small_btn_next j_small_pic_next"
														style="display: none"></a>
													<div class="small_list j_small_list">
														<div class="small_list_gallery">
															<ul style="float: left;"
																class="threadlist_media j_threadlist_media"
																id="fm2714034055">
																<li>
																	<div class="vpic_wrap">
																		<img style="width: 200px; height: 71px;"
																			src='${x.getPicUrl()}'>
																	</div>
																	<div class="threadlist_pic_highlight j_m_pic_light"></div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="threadlist_author">
												<!--最后回复人 -->
												<span class="tb_icon_author_rely j_replyer" title="最后回复人:"
													${x.getPLRAccount()}><a class="j_user_card" href=""
													target="_blank">${x.getmsgId()}</a></span><span
													class="threadlist_reply_date j_reply_data"
													style="margin-left: -50px; width: 65px" title="最后回复时间">${x.getMsgTime().subSequence(5, 17)}</span>
											</div>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</li>
						</c:forEach>
					</ul>
					<div class="thread_list_bottom clearfix">
						<div id="frs_list_pager" class="pager clearfix">

							
							
							
						//这里是上一页下一页分页的地方	
							
							
							
							
							<c:forEach var="y" begin="1" end="${page.totalpage}" step="1">
								<a href="MainView?num=${y}">${y}</a>
							</c:forEach>
							<!--pageNow  -->
							<c:if test="${pageNow<page.totalpage}">
								<a href="MainView?num=${pageNow+1}" class="next">下一页&gt;</a>
							</c:if>
							<a href="MainView?num=${page.totalpage}" class="last">尾页</a>
						</div>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			
			<div id="aside" class="side">
				<c:if test="${user!=null}">
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
									<a href="LoginServlet?loginemail=${user.userMail }"
										target="_blank"><img id="userlike_info_head_img"
										src="${user.userHeadImage}" height="64" width="64"> </a>
								</div>
								<div class="userlike_info_name">
									<a href="LoginServlet?loginemail=${user.userMail}"
										target="_blank">${user.userName} </a>
								</div>
								<div class="userlike_info_badge">
									<div title="等级" class="userlike_badge badge_lv1">
										<div class="userlike_member_title" id="liked_member_title">等级</div>
										<div class="userlike_member_lv">${user.userGrade}</div>
									</div>
								</div>
								<div class="userlike_info_explbl">
									<a href="/Three/LoginHistoryServlet" target="_blank"
										title="账号设置"> 帐号设置</a>&nbsp;&nbsp; <a
										href="LoginServlet?loginemail=${user.userMail}"
										target="_blank" title="个人中心"> 个人中心</a>
								</div>
								<div id="userlike_info_tip" class="userlike_info_tip_notlikes"></div>
							</div>
						</div>
						<div class="region_footer"></div>
					</div>
				</c:if>
				<div id="forumInfoPanel" class="region_bright forum_info_bright"></div>
				<div class="region_header">
					<div class="region_op j_op"></div>
					<div class="wang_right_font">自在吧信息</div>
				</div>
				<br>
				<div class="region_cnt">
					
				</div>
			</div>
			<c:if test="${user.userMail==null }">
				<div id="div1" class="container1">
					<!-- 创建内层容器用来装一行一行的内容 -->
					<div class="container2">
						<!-- 创建第一行容器并加入内容 -->
						<div class="context_line1">
							<!-- 创建第一行左边容器 -->
							<div class="context_line1_left">
								发表新帖 <span class="split_text">:</span>
								<!-- <a class="add_vote" href="/newvote/createvote?kw=%BA%D3%C4%CF%B9%A4%D2%B5%B4%F3%D1%A7">发起投票</a>
          <span class="split_text">|</span>
          <a class="add_vote" href="#">发起妹纸认证</a> -->
							</div>
							<!-- 创建第一行右边的容器 -->
							<div class="context_line1_right">
								发帖请遵守 <a class="bar_agreement" href="Agreement.jsp">贴吧协议"七条底线"</a>
							</div>
							<br>
						</div>
						<!-- 创建第二行容器 -->
						<div class="context_line2">
							<input id="title_text" class="write_title" type="text"
								maxlength="50" disabled="disabled">
						</div>
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
							<div id="faces" class="chose_face">
								<a href="#" onclick="show_face()"><img
									src="images/face.jpg" /></a> <a href="#" onclick="show_file()"><img
									src="images/picture.jpg" /></a>
							</div>
							<div id="context" class="context_line3" onclick="change_context_border()"></div>
						</div>
					</div>
					<!-- 创建提示登录框 -->
					<div id="tip_login" class="tip_login">
						本吧发帖,请先 <a id="login" class="login"
							onmouseover="change_login_color()"
							onmouseout="change_login_color2()" onclick="login()">登录</a> <span
							class="split_text2">|</span> <a id="register" class="register"
							href="${pageContext.request.contextPath}/index.action?method=register" onmouseover="change_register_color()"
							onmouseout="change_register_color2()">注册</a>
					</div>
					<!-- 创建隐藏登录框 -->
					<form action="login.action?method=login" method="post"
						onsubmit="return check()">
						<div id="publish_frame2" class="publish2">
							<div id="login_" class="login_frame">
								<!-- 创建登录栏 -->
								<div class="login_frame_top">
									登录 <img src="images/cancel.jpg" style="float: right;"
										onclick="cancle_login()" />
								</div>
								<!-- 创建账号输入行 -->
								<div class="login_frame_line1">
									<div style="float: left">
										账号: <input type="text" name="userMail"
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
										密码: <input id="pass" name="userPwd" class="login_line2_text"
											type="password" maxlength="30"
											onmouseover="change_pass_color()"
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
			</c:if>
			<c:if test="${user.userMail!=null }">
				<!-- 创建最外层容器 -->
				<div id="div2" class="container1">
					<form action="${pageContext.request.contextPath}/message.action?method=newMessage" method="post" enctype="multipart/form-data"
						onsubmit="return check2()">
						<!-- 创建内层容器用来装一行一行的内容 -->
						<div class="container2">
							<!-- 创建第一行容器并加入内容 -->
							<div class="context_line1">
								<!-- 创建第一行左边容器 -->
								<div class="context_line1_left">
									发表新帖 <span class="split_text">:</span>
								</div>
								<!-- 创建第一行右边的容器 -->
								<div class="context_line1_right">
									发帖请遵守 <a class="bar_agreement" href="${pageContext.request.contextPath}/index.action?method=Agreement">贴吧协议"七条底线"</a>
								</div>
								<br>
							</div>
							<!-- 创建第二行容器 -->
							<div class="context_line2">
								<input id="my_title" name="msgTitle" class="my_write_title"
									type="text" maxlength="50">
							</div>
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
								<div id="all_files" class="file_container"
									onclick="close_file()">
									<div>
										<img src="images/show_file.jpg">
									</div>
									<div class="file_button_container">
										<input id="btn1" style="display: none;" type="file" name="picName"/> <input
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
								</div>
								<div id="context" class="context_line3"
									onclick="change_context_border()">
									<textarea id="text2" name="msgContent" class="text2_class"></textarea>
								</div>
							</div>
							<!-- 创建发表按钮 -->
							<div class="publish">
								<input id="publish" type="submit" class="publish_button"
									value="发表" onmouseover="change_submit_color()"
									onmouseout="change_submit_back()" />
								<div
									style="display: inline; color: #7CBEE9; font-size: 13px; float: right;">[200字以内]</div>
							</div>
							<!-- 创建提示字数框 -->
							<div id="tip_length" class="tip_length_class">文章长度超出范围!</div>
							<div id="tip_empty" class="tip_length_class">标题或内容不能为空!</div>
							<div id="tip_success" class="tip_success_class">
								<img src="images/publish_success.jpg" />
							</div>
						</div>
					</form>
				</div>
			</c:if>
		</div>
	</div>
	<a name="addpost"></a>
	<!-- 定义锚点 -->
</body>
</html>