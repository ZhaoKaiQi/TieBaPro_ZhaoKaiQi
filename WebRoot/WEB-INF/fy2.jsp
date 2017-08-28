<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>jQuery根据总页数进行分页操作代码</title>



<!--主要样式-->
<link rel="stylesheet" type="text/css" href="pageGroup.css"/>

<script src="http://www.jq22.com/jquery/jquery-1.7.1.js"></script>
<!--
	如果您要调用的高版本jQuery，请引用下面jQuery版本迁移辅助插件
	<script src="http://www.jq22.com/jquery/jquery-migrate-1.2.1.min.js"></script>
-->


<script type="text/javascript" src="pageGroup.js"></script>

</head>

<body>
<div class="content">
    <ul class="news">
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>
        <li>111222</li>

        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>
        <li>222111</li>

        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>
        <li>33222</li>

        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>
        <li>44222</li>

        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>
        <li>5222</li>

        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>
        <li>6222</li>

        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>
        <li>77222</li>

        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>
        <li>8222</li>

        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>
        <li>9222</li>

    </ul>
</div>
        <input type="hidden" id="start_page">
        <input type="hidden" id="current_page" />
        <input type="hidden" id="show_per_page" />
        <input type="hidden" id="end_page">
<!-------------------------------------------分页----------------------------------------------------------------->
<div id="pageGro" class="cb">
    <div class="pagestart">首页</div>
	<div class="pageUp">上一页</div>
    <div class="pageList">
        <ul>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
        </ul>
    </div>
    <div class="pageDown">下一页</div>
    <div class="pageend">尾页</div>
</div>
<!-------------------------------------------END 分页----------------------------------------------------------------->

</body>
</html>
