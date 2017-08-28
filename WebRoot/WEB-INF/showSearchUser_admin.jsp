<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<html>
<head>
	
	<link type="text/css" rel="stylesheet" href="css/showAll_post.css" />
	<script type="text/javascript" src="jquery/jquery-1.7.js" ></script>
	<style type="text/css">
		.font_style1{
			font-size:16px;
			font-family:楷体;
			margin-right:4px;
		}
		/*显示数据的表格*/
		#tab {
			border:1px solid green;
			border-collapse: collapse;
			text-algin:center;
		}
		/*对超链接*/
		tr, td{
			text-align:center;
		}
		a:link{
			text-decoration:none;
			color:#333333;
			
		}
		a:hover{
			text-decoration:underline;
			color:red;
		}
		/*对功能列表的功能项设置间距*/
		.mylink span{
			margin-left:3px;
			margin-right:3px;
			background-color:green;
		}
		.odd{

			background:#FFFFFFs;
		}
		.even{
			background:#F1FEDD;	
		}
	
	</style>
	<link type="text/css" rel="stylesheet" href="css/allUser_admin.css" />
</head>
<body class="font_style1">
	<div >
		<form action="" method="post" onsubmit="return bottomForm();" name="formsearch">

			<div id="x1" class="sa" >
				<span id="s0" style="position:relative;top:5px;margin-left:5px;">姓名</span> 
			</div>
			<input id="typeid" type="hidden" value="1" name="typeid"></input> 
			<input id="q" class="sb" value="请输入关键词" onfocus="if(this.value=='请输入关键词'){this.value='';}else{this.select();}this.style.color='black';"
				name="keyword" style="height:26px;"></input>
				<input class="sc" type="image" src="images/soso.jpg" />

		</form>
		<!--显示所有管理员实现简单的查询 添加和删除  -->
		<div id="tabdiv" style="">
			<table id="tab" class="" border="1px" style="width:100%">
				<tr>
					<th style="width:130px">登录邮箱</th><th style="width:180px">用户名</th><th style="width:100px;">性别</th><th style="width:100px">会员等级</th><th style="width:170px">注册时间</th><th style="width:100px">基本功能</th>
				</tr>
				<tr class="even"><td>${ui.userEmail}</td><td>${ui.userAccount}</td><td>${ui.userSex}</td><td>${ui.userLevel}</td><td>2013-01-02:18:16:00</td><td><div class="mylink"><span><a href="AdminPostsCl?type=delete&id=">封号</a></span>	
				</div></td></tr>
			</table>
			<!-- 分页 -->
			<div id="page" style="background-color:#EDEEF2;height:30px; ">
				<div id="letfpage" style="padding-top:5px;">
					<span>共有<font style="color:red;margin:0px 5px;">${page.pageNo}</font>/<font style="color:red;margin:0px 5px;">${page.totalPage}</font>页</span><span>共<font style="color:red;margin:0px 5px;">${page.allCount }</font>个帖子</span>
				</div>
				<div id="rightpage" style="text-align:center;">
					<span ><a href="ShowAdminInfoCL?fenye=jump&pageNo=1">首页</a>
					<a href="ShowAdminInfoCL?fenye=jump&pageNo=${page.pageNo==1?1:page.pageNo-1}">上一页</a>
					<a href="ShowAdminInfoCL?fenye=jump&pageNo=${page.pageNo==page.totalPage?page.pageNo:page.pageNo-1}">下一页</a>
					<a href="ShowAdminInfoCL?fenye=jump&pageNo=${page.totalPage}">尾页</a>
					</span>				
				</div>
			</div>
	</div>
</body>
</html>