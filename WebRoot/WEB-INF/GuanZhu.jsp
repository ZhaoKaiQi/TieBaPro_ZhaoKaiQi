<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link style="text/css" rel="stylesheet" href="css/GuanZhu.css">
<link style="text/css" rel="stylesheet" href="css/1.css">
<script type="text/javascript" src="jquery/jquery-1.7.js" language="javascript"></script>
<title>关注</title>
<script type="text/javascript">
function click1(){
	var r = confirm("你确定要取消关注吗？");
	if(r == true){
		var fansname = $("#fansname").val();
		var myname = $("#myname").val();
		$.ajax({
			url:"Delguanzhu",
			type:"POST",
			async:false,
			data:{fansname:fansname, myname:myname},				
			dataType:"text",
			success:function(data){
				//转换成jquery对象
				eval("var result="+data);
				if(result=="1"){
					location.href="GuanZhu";
				}
			}	
		}); 
	}	
}
function onOver(obj)
{
	obj.style.backgroundColor = "#1E55A9";
	
	}
function onOut(obj)
{
	obj.style.backgroundColor = "#216AD7";
	
}
function mOver(obj){
	var gkk = document.getElementById(obj);
	gkk.style.display="block";
}
function mOut(obj){
	var gkk = document.getElementById(obj);
	gkk.style.display="none";
}

/* 给DIV动态设置背景颜色*/
function mOver_div(obj){
	obj.style.backgroundColor = "#E9F2FC";
}
function mOut_div(obj){
	obj.style.backgroundColor = "#FFFFFF";
}
</script>
<style type="text/css">
ul li {
	display: inline;
	 margin:20px; 
}
</style>
</head>
<body>
	<div id="com_userbar" class="userbar">
		<ul>
			<li style="font-weight:bold;">
				<div style="width:55px">
					<a href="#" onmouseover="mOver('div_gkk')" onmouseout="mOut('div_gkk')">
						${user.name }
					</a>
				</div>
				<div id="div_gkk" style="width: 55px;display: none;font-weight:normal;"
				 onmouseover="mOver('div_gkk')" onmouseout="mOut('div_gkk')">					
		
							<ul style="display: inline;">
								<li><a href="#">帐号设置 </a></li>
								<li><a href="#"> 贴吧设置 </a></li>
								<li><a href="#"> 退出 </a></li>
							</ul>
																
				</div>
			</li>
			<li>|</li>
			<li>
				<div style="width:55px">
					<span onmouseover="mOver('personnal')" onmouseout="mOut('personnal')"> 
						<a href="#"> 个人中心 </a>
					</span>
				</div>
				<div id="personnal" style="width: 55px; display: none;"
					onmouseover="mOver('personnal')" onmouseout="mOut('personnal')">
									
				
							<ul style="display: inline;">
								<li>
									<div>
										<a href="#"> 我的贴吧 </a>
									</div>
								</li>
								<li>
									<a href="">我的收藏 </a>
								</li>
								<li>
									<a target="_blank" href="#"> 我的相册 </a>
								</li>
								<li>
									<a target="_blank" href="#"> 我的网盘 </a>
								</li>
								<li>
									<a target="_blank" href="#">我的游戏 </a>
								</li>
							</ul>
										
				</div>
			</li>
			<li>|</li>
			<li>
				<div style="width:30px">
					<span onmouseover="mOver('xiaoxi')" onmouseout="mOut('xiaoxi')"> 
					<a href="#"> 消息 </a>
					</span>
				</div>
				<div id="xiaoxi" style="width: 30px;display: none;"
				 onmouseover="mOver('xiaoxi')" onmouseout="mOut('xiaoxi')">
				
							<ul style="display: inline;">
								<li><a target="_blank"
									href="#"> 私信 </a></li>
								<li><a target="_blank"
									href="#"> 通知 </a></li>
							</ul>
			
				</div>
			</li>
		</ul>
	</div>
		<div class="main_header_logo" style="margin-top:70px">
		<ul class="nav_bar">
			<li class="nav_item" style="margin-top:0px;margin-left:-40px;width:100px;"><a href="#">贴吧首页</a></li>
			<li class="nav_item nav_item_hot" style="margin-top:0px;margin-left:-20px;"><a href="#">图片广场 
			</a> <span class="nav_item_hot_flag"></span></li>
			<li class="nav_item" style="margin-top:0px;margin-left:-20px;width:100px;"><a href="#">我的i贴吧</a></li>
		</ul>
	</div>

	<!-- 显示我关注的人  之 大模块  -->
	<div class="ibody w978 clearfix" >
		<!-- 大模块之左模块 -->
		<div class="w750 fleft">
			<!-- 左模块之包含所有关注的人的模块 -->
			<div id="follow">

				<div id="search_list" class="list">
					<!-- 所有人模块之具体个人之模块 -->
					
				</div>
			</div>
		</div>
		<!-- 大模块之右模块 -->
		<div  id="main_aside" class="inav w228 fright"
			style="width: 228px;float:right;">
			
			<div id="aside_person_info">
				<!-- 模块头 -->
				<div class="aside_p_info_head">
					<span style="float: right;"> <a target="_blank"
						href="#" style="text-decoration: none;">
							[设置] </a>
					</span> <span style="font-weight: bold;"> 个人信息 </span>
				</div>
				<!-- 模块尾 -->
				<div class="aside_person_info_wraper">

					<div class="aside_userface_wraper">
						<p class="aside_userface_border" style="word-break: break-all;">
							<a target="_blank" href="#"
								style="color: rgb(4, 73, 190);">
							</a>
						</p>
					</div>

					<div class="aside_user_profile">
						<p style="font-weight: bold;">${user.name }</p>
						<p style="margin-top: -5px;">
							粉丝： <a
								style="text-decoration: none;
								 font-weight: bold; padding: 0px 4px 0px 0px;
								  font-family: 'arial'; color: rgb(4, 73, 190);"
								target="_blank" href="/i/391701436/fans">88</a>
						</p>
						<p style="margin-top: -5px;">
							关注： <a
								style="text-decoration: none;
								 font-weight: bold; padding: 0px 4px 0px 0px; 
								 font-family: 'arial'; color: rgb(4, 73, 190);"
								target="_blank" href="/i/391701436/concern"> 100</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="width:500px;height:50px; margin:5px auto auto 300px;">
		<div style="margin:10px auto auto 30px;">
			<span >
				<a style="font-weight: bold;text-decoration: none;" href="GuanZhu.jsp?pageNum=2">上一页 </a>
			</span>
			<span style="margin:50px;">

			</span>
			<span>
				<a style="font-weight: bold;text-decoration: none;" href="#">下一页</a>
			</span>
		</div>
	</div>
</body>
</html>