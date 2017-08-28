<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="css/showAll_post.css" />
	<script type="text/javascript" src="jquery/jquery-1.7.js" ></script>
	<script type="text/javascript">
		function bottomForm(){
			
			var title = document.getElementById("titlesearch").value;
			var name = document.getElementById("namesearch").value;
			if(title=="" && name==""){
				return false;
			}else{
				return true;
			}
		}
	
	</script>
	<style type="text/css" >
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
	
</head>
<body>
	<div style="margin:0px 5px" style="background:#FFFFFF">
	<!-- 搜索功能 -->
		<div class="searchdiv" style="width:100%;">
				<form method="post" onsubmit="return bottomForm()" name="formsearch" action="SearchAdmin?postState=${postState}&code=1">
					<div style="float:right;margin-right:20px;">
						<lable class="font_style1" >按标题</lable><input type="text" name="mytitle" id="titlesearch" value="" class="searchtext" /><input type="image" src="images/search.jpg" class="searchimg" >
					</div>
					<div style="float:right;margin-right:20px;position:relative;top:13px;">
						<lable class="font_style1">按姓名</lable><input type="text" name="myname" id="namesearch" value="" class="searchtext" />
					</div>
				</form>
		
		</div>
		<!-- 存放标题 -->
		<div id="tabdiv" style="margin:0px 5px">
			<table id="tab" border="1" style="margin:0 auto;">
				<tr>
					<th style="width:126px">发帖人</th><th style="width:380px">帖子标题</th><th style="width:120px;">帖子回复数量</th><th style="width:170px">发帖时间</th><th style="width:190px">基本功能</th>
				</tr>
					<tr class ="oad">
						<td>${post.postsAccount}</td><td>${post.postsTitle}</td><td>${post.postsReplyNum}</td><td>${post.postPublishTime}</td>
						<td><div class="mylink">
						
						<span><a href="AdminPostsCl?type=delete&postState=${postState}&id=${post.postsId}">封贴</a></span>
							<span><a href="AdminPostsCl?type=top&id=${post.postsId}&postState=${postState}&istop=${post.postsListTop}">置顶</a></span>
						</div></td>
					</tr>
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
	</div>
</body>
</html>