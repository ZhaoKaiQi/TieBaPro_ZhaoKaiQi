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
	//id��Ϊ��
	if(id.value == ""){
		flag = false;
		idDiv.style.display="block";
	}
	//�����Ϊ���ж�
	if(pwd.value == ""){
		passdDiv.style.display = "block";
		flag = false;
	}
	//��֤���Ϊ���ж�
	if(code.value == ""){
		codeDiv.style.display = "block";
		codeDiv.innerText = "��������֤��";
		flag = false;
	}
	var rule =/^[0-9]*$/;
	if(rule.test(id.value)==false){
		idDiv.style.display = "block";
		flag=false;
	}
	//�ж���֤�������Ƿ���ȷ
	
	if(flag==true){
		checkCode();
//alert(codeDiv1.style['display'] == "none");
		if(codeDiv1.style['display'] == "none"){
			flag1 = true;
		}else{
			flag1 = false;
		}

	}
	//�ж�������û�ʱ����ȷ
	if(flag==true&&flag1==true){
		jquaryCheck();
		if(userPass1.style['display'] == "none"){
			flag2 = true;
		}else{
			flag2 = false;
		}
	
	}
//�ж��Ƿ��ύ����
	if(flag==true&&flag1==true&&flag2==true){
		return true;
	}else{
		return false;
	}
}

//У����֤��ķ���
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
//�����ݿ�У������
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
