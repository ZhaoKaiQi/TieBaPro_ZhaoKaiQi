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
  	 document.getElementById("img").src = 'code.jsp?ts='+new Date().getTime();
}

function clientCheck(){
	var flag = true;
	var flag1 = false;
	var flag2 = false;
	var id=document.getElementById("loginid");
	//var id = $("loginname");
	var pwd =document.getElementById("mypwd");
	var code = document.getElementById("checkcode");
	var idDiv = document.getElementById("userid");
	var passdDiv = document.getElementById("userPass");
	var userPass1=document.getElementById("userPass1");
	var codeDiv = document.getElementById("codemess");
	var codeDiv1 = document.getElementById("codemess1");
	//id框不为空
	if(id.value == ""){
		flag = false;
		idDiv.style.display="block";
	}
	//密码框不为空判断
	if(pwd.value == ""){
		passdDiv.style.display = "block";
		flag = false;
	}
	//验证码框不为空判断
	if(code.value == ""){
		codeDiv.style.display = "block";
		codeDiv.innerText = "请输入验证码";
		flag = false;
	}
	var rule =/^[0-9]*$/;
	if(rule.test(id.value)==false){
		idDiv.style.display = "block";
		flag=false;
	}
	//判断验证码输入是否正确
	
	if(flag==true){
		checkCode();
//alert(codeDiv1.style['display'] == "none");
		if(codeDiv1.style['display'] == "none"){
			flag1 = true;
		}else{
			flag1 = false;
		}

	}
	//判断密码和用户时候正确
	if(flag==true&&flag1==true){
		jquaryCheck();
		if(userPass1.style['display'] == "none"){
			flag2 = true;
		}else{
			flag2 = false;
		}
	
	}
//判断是否提交数据
	if(flag==true&&flag1==true&&flag2==true){
		return true;
	}else{
		return false;
	}
}

//校验验证码的方法
function checkCode(){
	
		var checkcode=$("#checkcode").val();
		$.ajax({
	
			url:"/Three/AdminLogin",
			type:"POST",
			async:false,
			data:{type:"code", checkcode:checkcode},
			
			
			dataType:"text",
			success:function(data){
				//alert(111111111111111);
				eval("var result="+data);
				if(result=="0"){
					document.getElementById("codemess1").style.display="block";			
					flag1 = false;
				}else{
					flag1 = true;
				} 
				
			}	
		}); 
	}
//进数据库校验数据
function jquaryCheck(){
		
		var loginid=$("#loginid").val();
		var mypwd=$("#mypwd").val();
		var userPass1=document.getElementById("userPass1");
		
		$.ajax({
			url:"/Three/AdminLogin",
			type:"POST",
			async:false,
			data:{loginid:loginid, mypwd:mypwd, type:"admin"},
			dataType:"text",
			success:function(data){
				
				eval("var result="+data);
				
				if(result=="0"){
					userPass1.style.display = "block";			
					
				}
				/* if(data.length > 0){
					flag2= true;
				}else{
					alert(123);
					userPass1.style.display = "block";
					flag2 = false;
				}	 */	
			}	
		});
		
}
