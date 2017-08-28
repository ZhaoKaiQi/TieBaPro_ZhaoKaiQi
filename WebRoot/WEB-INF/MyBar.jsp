<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>publish new words</title>

<link rel="stylesheet" href="css/a1.css">
<script src=js/js1.js></script>
</head>
<body>

<!-- 创建最外层容器 -->
  <form action="/Three/PublishCL" method="post" onsubmit="return check2()">
  <div id="div1" class="container1">
    <input name="user_nc" type="text" value="${ui.userAccount}" style="display:none;" />
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
        <input id="my_title" name="titleName" class="my_write_title" type="text" maxlength="50">
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
        <div id="faces" class="my_chose_face">
         <img src="images/face.jpg" onclick="show_face()" />
         <img src="images/picture.jpg" onclick="show_file()" />
       <!--  <a href="#"><img src="images/file.jpg" /></a> -->
        </div>
        <div id="context" class="context_line3" onclick="change_context_border()">
          <textarea id="text2" name="contentName" class="text2_class" ></textarea>
        </div>
      </div>
      <!-- 创建发表按钮 -->
      <div  class="publish">
        <input id="publish" type="submit" class="publish_button" value="发表" onmouseover="change_submit_color()" onmouseout="change_submit_back()" />
        <div style="display:inline; color:#7CBEE9; font-size:13px; float:right;">[200字以内]</div>
      </div>
      <!-- 创建提示字数框 -->
     <div id="tip_length" class="tip_length_class">
                  文章长度超出范围!
     </div>
      <div id="tip_empty" class="tip_length_class">
                  标题或内容不能为空!
     </div>
     <div id="tip_success" class="tip_success_class">
        <img src="images/publish_success.jpg" />
     </div>
    </div>
  </div>
  </form>
</body>
</html>