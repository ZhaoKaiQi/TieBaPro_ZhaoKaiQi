function change_login_color(){
	var login=document.getElementById("login");
	login.style.color="red";
}
function change_login_color2(){
	var login=document.getElementById("login");
	login.style.color="#2D64B3";
}
function change_register_color(){
	var login=document.getElementById("register");
	login.style.color="red";
}

function change_register_color2(){
	var login=document.getElementById("register");
	login.style.color="#2D64B3";
}
function change_submit_color(){
	var submit=document.getElementById("publish");
	submit.style.color="#909090";
	submit.style.border="1px #6B7885 solid";
}
function change_submit_back(){
	var submit=document.getElementById("publish");
	submit.style.color="#2D64B3";
	submit.style.border="1px #D4D0C8 solid";
}
function login(){
	var login=document.getElementById("login_");
	var publish=document.getElementById("publish_frame2");
	login.style.display="block";
	publish.style.display="block";
}
function change_myemail_color(){
	var email=document.getElementById("myemail");
	email.style.border="1px green solid";
}
function change_myemail_back(){
	var email=document.getElementById("myemail");
	email.style.border="1px #AEAEAE solid";
}
function change_pass_color(){
	var email=document.getElementById("pass");
	email.style.border="1px green solid";
}
function change_pass_back(){
	var email=document.getElementById("pass");
	email.style.border="1px #AEAEAE solid";
}
function checkup(){
	var mytext=document.getElementById("myemail").value;
	var rule=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.+com|cn$/;
	var email1=document.getElementById("email_info1");
	var email2=document.getElementById("email_info2");
	if(rule.test(mytext)==false){
		email1.style.display="inline";
		email2.style.display="none";
	}
	if(rule.test(mytext)==true){
		email1.style.display="none";
		email2.style.display="inline";
	}
}
function show_face(){
	var showface=document.getElementById("all_face");
	showface.style.display="block";
}
function close_face(){
	var showface=document.getElementById("all_face");
	showface.style.display="none";
}
function change_face1_border(){
	var face=document.getElementById("faces1");
	face.style.border="1px green solid";
}
function change_face2_border(){
	var face=document.getElementById("faces2");
	face.style.border="1px green solid";
}
function change_face3_border(){
	var face=document.getElementById("faces3");
	face.style.border="1px green solid";
}
function change_face1_back(){
	var face=document.getElementById("faces1");
	face.style.border="1px #E3E3E3 solid";
}
function change_face2_back(){
	var face=document.getElementById("faces2");
	face.style.border="1px #E3E3E3 solid";
}
function change_face3_back(){
	var face=document.getElementById("faces3");
	face.style.border="1px #E3E3E3 solid";
}
function chose_face1(){
	var img_element=document.createElement("img");
	img_element.src="images/face1.jpg";
	document.getElementById("text2").value+="[smile]";
	document.getElementById("text2").appendChild(img_element);
}
function chose_face2(){
	document.getElementById("text2").value+="[angry]";
}
function chose_face3(){
	document.getElementById("text2").value+="[what]";
}
function change_context_border(){
	var ss=document.getElementById("context");
	ss.style.border="2px #8BADD9 solid";
}
function click_real_button(){
	var btn=document.getElementById("btn1");
	var btn2=document.getElementById("all_files");
	btn.click();
	btn2.style.display="none"; 
}
function show_file(){
	var cter=document.getElementById("all_files");
	cter.style.display="block";
}
function cancel_file(){
	var btn2=document.getElementById("all_files");
	btn2.style.display="none";
}
/*提交的方法*/
function check(){
	checkup();
	var flag = true;
	var email_info1Img = document.getElementById("email_info1");
	if(email_info1Img.style.display == "block"){
		flag = false;
	}
	
	if(flag == true){
		var email=$("#myemail").val();
		var pass =$("#pass").val();
		$.ajax({
			url:"/Three/UserCheckService",
			type:"POST",
			async:false,
			data:{email:email, pass:pass},
			dataType:"text",
			success:function(data){
				//转换成jquery对象
				eval("var result="+data);
				if(result=="0"){
					flag = false;
					$("#mypass").css("display", "inline");
				}else{
					flag = true;
					$("#mypass").css("display", "none");
				} 
			}
		}); 
	}
	
	return flag;
}
function check2(){
	var title= document.getElementById("my_title").value;
	var content =document.getElementById("text2").value;
	var tip1=document.getElementById("tip_length");
	var tip2=document.getElementById("tip_empty");
//	var tip3=document.getElementById("tip_success");
	var flag=true;
	if (length>200) {
		tip1.style.display="block";
		setTimeout(function(){tip1.style.display="none";}, 2000);
		flag=false;
	}else if(title.replace(/(^\s*)|(\s*$)/g,'') == ""||content.replace(/(^\s*)|(\s*$)/g,'') == ""){
		tip2.style.display="block";
		setTimeout(function(){tip2.style.display="none";}, 2000);
		flag=false;
	}else{
		/*tip3.style.display="block";
		setTimeout(function(){tip3.style.display="none";}, 2000);*/
		flag= true;
	}
	return flag;
	
}
function check3(){
	var content =document.getElementById("Ideatext").value;
	var tip2=document.getElementById("tip_empty");
	var tip1=document.getElementById("tip_length");
	var flag=true;
	if (content.replace(/(^\s*)|(\s*$)/g,'')=="") {
		tip2.style.display="block";
		setTimeout(function(){tip2.style.display="none";}, 2000);
		flag=false;
	}else if(content.length>200){
		tip1.style.display="block";
		setTimeout(function(){tip1.style.display="none";}, 2000);
		flag=false;
	}else{
		flag=true;
	}
	return flag;
}
function cancle_login(){
	document.getElementById("publish_frame2").style.display="none";
}