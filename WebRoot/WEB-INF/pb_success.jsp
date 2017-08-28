<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发帖成功</title>
<link rel="stylesheet" href="css/a1.css">
</head>
<body background="images/succ_back.jpg">
 
  <div class="Tip_Reply">
    <br>
    <div class="tip_re_font">　　<img src="images/re_succe.gif" />恭喜您,发布成功！　　　　　</div>
    
   <br><br><br><br> 
   
  <div class="re_div2">
    <form style="display:none" action="return_the_posts" method="post">
      <input class="tip_btn_class" type="submit"  value="浏览此帖"/>
    </form>
  </div>  
  <div class="re_div3">
    <form style="display:inline" action="MainView" method="post">
      <input class="tip_btn_class" type="submit"  value="看看别的帖子"/>
    </form>
  </div>
  
  </div>
</body>
</html>