function replayPost(){
	$.ajax({
		url: "/HaijiaoCommunity/RegisterAjaxServlet", //注意映射的地址
		type: "POST",
		data: {userName: userName},
		dataType: "json", //接收json格式的数据
		success: function(data){
			//判断data(用户名)是不是重复
			if (data.length > 0) { //重复
				result = "<img src='/HaijiaoCommunity/images/images_regiest/check_user1.png'/>";
				all_username_flag = false;
			}
			else { //不重复
				result = "<img src='/HaijiaoCommunity/images/images_regiest/true.png'/>";
				all_username_flag = true;
			}
			
			var userNameMsg = document.getElementById("userNameMsg");
			userNameMsg.style["display"] = "block";
			userNameMsg.innerHTML = result;
		}
	});	
}

//点入到文本框是文本框变色的方法
function changeColor(input){
	input.style["borderColor"] = "green";
}
function backColor(back){
	back.style["borderColor"] = "#CCCCCC";
}
//关闭错误信息提示的div
function closeDiv(id){
	var tempDiv = document.getElementById(id);
	tempDiv.style.display = "none";
}



//改变验证码
function reloadImage() {  
  	 document.getElementById("img1").src = '/code.jsp?ts='+new Date().getTime();
}


