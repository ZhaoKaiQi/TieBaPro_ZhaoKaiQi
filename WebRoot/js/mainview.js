function replayPost(){
	$.ajax({
		url: "/HaijiaoCommunity/RegisterAjaxServlet", //ע��ӳ��ĵ�ַ
		type: "POST",
		data: {userName: userName},
		dataType: "json", //����json��ʽ������
		success: function(data){
			//�ж�data(�û���)�ǲ����ظ�
			if (data.length > 0) { //�ظ�
				result = "<img src='/HaijiaoCommunity/images/images_regiest/check_user1.png'/>";
				all_username_flag = false;
			}
			else { //���ظ�
				result = "<img src='/HaijiaoCommunity/images/images_regiest/true.png'/>";
				all_username_flag = true;
			}
			
			var userNameMsg = document.getElementById("userNameMsg");
			userNameMsg.style["display"] = "block";
			userNameMsg.innerHTML = result;
		}
	});	
}

//���뵽�ı������ı����ɫ�ķ���
function changeColor(input){
	input.style["borderColor"] = "green";
}
function backColor(back){
	back.style["borderColor"] = "#CCCCCC";
}
//�رմ�����Ϣ��ʾ��div
function closeDiv(id){
	var tempDiv = document.getElementById(id);
	tempDiv.style.display = "none";
}



//�ı���֤��
function reloadImage() {  
  	 document.getElementById("img1").src = '/code.jsp?ts='+new Date().getTime();
}


