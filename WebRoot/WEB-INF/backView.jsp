<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/archenav.css" rel="stylesheet" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/archenav.js"></script>
</head>
<body>
    <div class="header">
        <div class="topNav" id="topNav">
            <div class="topNav2">
                <div class="navBox">
                    <div class="navIndexBg">
                        <div class="navIL"></div>
                        <div class="navIL navIR"></div>
                        <div class="navIM"></div>
                    </div>
                    <div class="navMain" id="navMain">
                        <!-- 主导航放这里 -->
                        <div class="navIndex" id="navIndex">
                            <ul>
                                <li class=""><a href="" title="官网首页" class="nav4">官网首页</a></li>
                                <li class=""><a href="" title="用户管理">用户管理</a></li>
                                <li class="nav1"><a href="" title="帖子管理">帖子管理</a></li>
                                <li class=""><a href="" title="个人设置">个人设置</a></li>
                                <li class=""><a href="" title="吧主管理">吧主管理</a></li>
                                <li class=""><a href="" title="广告模块">广告模块</a></li>
                            </ul>
                        </div>
                        <div class="navSub" id="navSub">
                            <dl class="nav2">
                                <dt>用户管理</dt>
                                <dd><a href="http://www.lanrentuku.com/" title="">所有用户</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="" target="_blank">被封用户</a></dd>
                                
                            </dl>
                            <dl class="nav1">
                                <dt>帖子管理</dt>
                                <dd><a href="http://www.lanrentuku.com/" title="">全部帖子</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="">顶置帖子</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="">加精帖子</a></dd>
                                
                            </dl>
                            <dl>
                                <dt>个人设置</dt>
                                <dd><a href="alterInfo.jsp" title="">修改资料</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="">修改头像</a></dd>
                                <dd><a href="alterPasswd.jsp" title="">修改密码</a></dd>
                            </dl>
                            <dl>
                                <dt>吧主管理</dt>
                                <dd><a href="http://www.lanrentuku.com/" title="">查看管理员</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="">添加管理员</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="">转让吧主</a></dd>
                            </dl>
                            <dl>
                                <dt>广告模块</dt>
                                <dd><a href="http://www.lanrentuku.com/" title="" target="_blank" onclick="pgvSendClick({hottag:'nav.sub.navE1'});">添加广告</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" title="" target="_blank" onclick="pgvSendClick({hottag:'nav.sub.navE2'});">官方互动</a></dd>
                                <dd><a href="http://www.lanrentuku.com/" target="_blank" title="" onclick="pgvSendClick({hottag:'nav.sub.navE3'});">官方论坛</a></dd>
                            </dl>
                        </div>
                        <!-- 二级放这里 end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

