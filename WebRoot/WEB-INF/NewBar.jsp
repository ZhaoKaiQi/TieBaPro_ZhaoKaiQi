<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>publish new words</title>

<link rel="stylesheet" href="css/a1.css">
<script type="text/javascript" src="jquery/jquery-1.7.js" ></script>
<script src=js/js1.js></script>
</head>
<body>
<!-- 创建最外层容器 -->
  <div id="div1" class="container1">
    
  <!-- 创建内层容器用来装一行一行的内容 -->
    <div class="container2">
    <!-- 创建第一行容器并加入内容 -->
      <div class="context_line1">
        <!-- 创建第一行左边容器 -->
        <div class="context_line1_left">
                           发表新帖
          <span class="split_text">:</span>
        </div>
        <!-- 创建第一行右边的容器 -->
        <div class="context_line1_right">
                             发帖请遵守
          <a class="bar_agreement" href="Agreement.jsp">贴吧协议"七条底线"</a>
        </div>
        <br>
      </div>
      <!-- 创建第二行容器 -->
      <div class="context_line2">
        <input id="title_text" class="write_title" type="text" maxlength="50" disabled="disabled">
      </div>
      <!-- 创建第三行容器 -->
      <div class="context_line3_border">
      <!-- 创建隐藏表情框 -->
        <div id="all_face" class="face_container" onclick="close_face()">
        <div><img src="images/show_face.jpg"></div>
          <img src="images/cancel.jpg" style="position:absolute; right:5px; top:7px;" />
          <div id="faces1" class="face1" onmouseover="change_face1_border()" onmouseout="change_face1_back()" onclick="chose_face1()"><img src="images/face1.jpg"></div>
          <div id="faces2" class="face2" onmouseover="change_face2_border()" onmouseout="change_face2_back()" onclick="chose_face2()"><img src="images/face2.jpg"></div>
          <div id="faces3" class="face3" onmouseover="change_face3_border()" onmouseout="change_face3_back()" onclick="chose_face3()"><img src="images/face3.jpg"></div>
          
        </div>
        <!-- 创建隐藏文件上传框 -->
        <div id="all_files" class="file_container" onclick="close_file()">
          <div><img src="images/show_file.jpg"></div>
          <div class="file_button_container">
            <input id="btn1" style="display:none;" type="file" />
            <input type="button" value="点击上传" class="browser" onclick="click_real_button()" />
            <img class="file_picture" src="images/tag_file.jpg" />
          </div>
            <img src="images/cancel.jpg" style="position:absolute; right:8px; top:10px;" onclick="cancel_file()" />
        </div>
        <!-- 创建表情图片选项容器 -->
        <div id="faces" class="chose_face">
        <a href="#" onclick="show_face()" ><img src="images/face.jpg" /></a>
        <a href="#" onclick="show_file()"><img src="images/picture.jpg" /></a>
       <!--  <a href="#"><img src="images/file.jpg" /></a> -->
        </div>
        <div id="context" class="context_line3" contentEditable="false" onclick="change_context_border()">
        </div>
      </div>
    </div>
    <!-- 创建提示登录框 -->
     <div id="tip_login" class="tip_login">
                          本吧发帖,请先
      <a id="login" class="login" href="#" onmouseover="change_login_color()" onmouseout="change_login_color2()" onclick="login()">登录</a>
      <span class="split_text2">|</span>
      <a id="register" class="register" href="#" onmouseover="change_register_color()" onmouseout="change_register_color2()">注册</a>
     </div>
  </div>
  <!-- 创建隐藏登录框 -->
  <form action="GoToMyBar" method="post" onsubmit="return check()" >
  
  <div id="publish_frame2" class="publish2">
  <div id="login_" class="login_frame">
    <!-- 创建登录栏 -->
    <div class="login_frame_top">
             登录
    </div>
    <!-- 创建账号输入行 -->
    <div class="login_frame_line1">
   	<div style="float:left">      
            邮箱:
      <input type="text" id="myemail" name="username" maxlength="30" class="login_line1_text"  onmouseover="change_myemail_color()" onmouseout="change_myemail_back()" onblur="checkup()" />
     </div>　
      <img id="email_info1" class="email_tip1" src="images/email_error.jpg" />
      <img id="email_info2" class="email_tip2" src="images/email_right.jpg" />
    </div>
    <div class="login_frame_line2">
    <div style="float:left">
            密码:
      <input id="pass" name="passwd" class="login_line2_text" type="password" maxlength="30" onmouseover="change_pass_color()" onmouseout="change_pass_back()" />
      <div id="mypass" class="passErr_class" >用户名或密码错误</div>
    </div>
    </div>
    <div class="login_line3">
      <input class="login_submit" type="submit" value="登录">
    </div>
  </div>
  </div>
  </form>
</body>
</html>