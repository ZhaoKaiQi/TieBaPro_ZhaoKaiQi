<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/a1.css">
</head>
<body background="images/succ_back.jpg">
  <br><br>
  <div class="Tip_Reply">
    <br>
    <div class="tip_re_font">　　<img src="images/re_succe.gif" />您已成功回复帖子！　　　　　</div>
    
   <br><br><br><br> 
   
  <div class="re_div2" style="display:inline">

    <form  action="PostContent?StrId=${tiezi_id}" method="post">
      <input class="tip_btn_class" type="submit"  value="继续看此帖"/>
    </form>
  </div>  
  <div class="re_div3" style="display:inline">
    <form  action="MainView" method="post">
      <input class="tip_btn_class" type="submit"  value="看看别的"/>
    </form>
  </div>
  
  </div>
</body>
</html>