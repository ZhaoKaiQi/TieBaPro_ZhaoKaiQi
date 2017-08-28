<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${image.getPostsTitle()}</title>

<link rel="stylesheet" href="css/kantu.css">
<link rel="stylesheet" href="css/kantu_002.css">
<script type="text/javascript" src="jquery/jquery-1.7.js"
	language="javascript"></script>
<script type="text/javascript">
		var flag=1;
	function changeimage(temp) {
		
		var first=$("#first").val();	
		var firstContext=$("#con").val();	
		if(temp>0){
			flag=flag+1;
			
			var result="#"+flag;
			var resultcontent="#wang"+flag;
			var image=$(result).val();	
			var imagecontent=$(resultcontent).val();
			
		
		
			if(image!=null){
			document.getElementById("pic").src =image;
			document.getElementById("imagecontext").innerHTML =imagecontent;
			}else{
				flag=flag-1;
				document.getElementById("pic").src =first;

			document.getElementById("imagecontext").innerHTML =firstContext;
			}
		
		}
		if(temp<0){
			flag=flag-1;
			var result="#"+flag;
			var image=$(result).val();	
			var resultcontent="#wang"+flag;
			var imagecontent=$(resultcontent).val();

			if(image!=null){
			document.getElementById("pic").src =image;
			document.getElementById("imagecontext").innerHTML =imagecontent;
			
			}else{
				flag=flag+1;
				document.getElementById("pic").src =first;
			document.getElementById("imagecontext").innerHTML =firstContext;
			}
		}
	}
</script>
</head>
<body>
	<c:forEach var="x" items="${postsReply}">
		<input type="hidden" id="${x.getGrade()}"
			value="${x.getPostsReplyImg()}" />
		<input type="hidden" id="wang${x.getGrade()}"
			value="${x.getPostsReplyContent()}" />
	</c:forEach>

	<div style="width: 1024px; height: 617px; top: 0px; left: -60px;"
		class="af_container">
		<div style="width: 810px;" class="af_left">
			<div class="af_head">
				<div class="af_head_left">
					<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<a title="畅所欲言吧" href="MainView" target="_blank"
						class="link_return">畅所欲言吧</a> <span class="af_head_arw">&gt;</span><a
						href="PostContent?StrId=${image.getPostsId()}" class="link_thread"
						target="_blank">贴子原文</a> <span class="af_head_arw">|</span><a
						href="PostsImages" class="link_next" target="_blank">返回图片</a>
				</div>
			</div>
			<div style="top: 30px; bottom: 30px;" class="af_original">
				<div class="image_original_container">
					<div class="image_original_imagewrap mouseleft">
						<img id="pic" src="${image.getPostsImg()}"
							class="image_original_original"
							style="z-index: 2; width: 560px; height: 420px; top: 67.5px; left: 145px;">
					</div>
					<!-- 存储第一张图片的地址 -->
					<input type="hidden" id="first" value="${image.getPostsImg()}" />
					<input type="hidden" id="con" value="${image.getPostsContent()}" />
					<!-- 控制图片切换的 -->
					<a style="display: block;" class="image_original_prev"
						href="javascript:changeimage(-1)"> <img id="left"
						style="width: 100px; height: 100px;" src="images/leftarrow.jpg" /></a>
					<a style="display: block;" class="image_original_next"
						href="javascript:changeimage(1)"> <img id="right"
						style="width: 100px; height: 100px;" src="images/rightarrow.jpg" />
					</a> <a style="display: block; right: 275.5px; bottom: 72.5px;"
						class="image_original_mode mode_original" href="#">&nbsp;</a>
					<div class="af_ppt_contorl" style="display: block;">
						<a href="#" class="image_original_autoplay autoplay_stop"><span>&nbsp;</span></a>
						<a href="#" class="image_original_cancel_ppt"><span>&nbsp;</span></a>
					</div>
					<div class="loading">&nbsp;</div>
					<div class="af_photo_desc_wrapper" style="display: block;">
						<p id="imagecontext" class="af_photo_desc">${image.getPostsContent()}</p>
						<p class="af_photo_src">
							<span></span><a href="#"></a>
						</p>
					</div>
					<div style="display: none;" class="af_thumbnail">
						<div class="af_thumbnail_imgwrap" style="display: none">
							<img>
							<div class="af_display_mask"></div>
						</div>
					</div>
				</div>
				<div style="padding-right: 275px; width: 1091px;" class="af_nav">

					<div class="carousel_wrapper">
						<div style="visibility: hidden;" class="carousel_arrow_prev">&nbsp;</div>
					</div>
					<div style="visibility: inherit;" class="carousel_arrow_next">&nbsp;</div>
				</div>
			</div>
		</div>
		<div class="af_right">
			<div class="af_reply_container">
				<div class="af_thread_head">
					<h3 class="af_thread_title">
						<a href="" target="_blank">${image.getPostsTitle()}</a>
					</h3>
					<div class="af_thread_desc">
						<a href="" class="creator" target="_blank">${image.getPostsAccount()}
						</a>&nbsp;&nbsp;上传<span class="af_thread_create_time">
							${image.getPostPublishTime().subSequence(5,10)}</span>
					</div>
				</div>
				<div class="af_reply_amount">共${image.getPostsReplyNum()}回复</div>
				<div class="af_reply_list">
					<div class="scroll_pannel">
						<div class="pannel_wrap" style="overflow: hidden; height: 213px;">
							<ul>
								<li class="af_reply_li">
									<div class="af_reply_li_main_misc">
										<a href="" class="af_reply_li_main_misc_user">${image.getPostsAccount()}</a>&nbsp;<span
											class="af_reply_li_main_content">
											${image.getPostsContent()} </span>
									</div>
									<div class="af_reply_li_main_misc_time">${image.getPLRTime().subSequence(0,16)}</div>
								</li>
							</ul>
						</div>
						<div class="pannel_scroll"
							style="position: absolute; display: block; height: 213px;">
							<div class="pannel_scroll_bar ui-draggable"
								style="position: absolute; left: 0px; top: 0px; height: 44.6545px;">&nbsp;</div>
						</div>
					</div>
				</div>
				<div class="af_reply_pager"></div>
			</div>
		</div>
</body>
</html>