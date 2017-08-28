function gotopageNow() {
		var pageNow = document.getElementById('pageNow');
		window.open('/Three/main.jsp?pageNow=' + pageNow.value, '_self');
	}


	
function hide(){
var context = document.getElementById("context");

if(context.style.display == "none"){
context.style.display = "block";
} else{
context.style.display = "none";
}
	
};
function show(){
	var context = document.getElementById("context");
	if(context.style.display == "block"){
		context.style.display = "none";
		} else{
		context.style.display = "block";
		}
	
	
};


function hide1(){
	var context = document.getElementById("context1");
	if(context.style.display == "none"){
	context.style.display = "block";
	} else{
	context.style.display = "none";
	}
	};
	function show1(){
		var context = document.getElementById("context1");
		if(context.style.display == "block"){
			context.style.display = "none";
			} else{
			context.style.display = "block";
			}
	};
	
	function hide2(){
		var context = document.getElementById("context2");
		if(context.style.display == "none"){
		context.style.display = "block";
		} else{
		context.style.display = "none";
		}
		};
		function show2(){
			var context = document.getElementById("context2");
			if(context.style.display == "block"){
				context.style.display = "none";
				} else{
				context.style.display = "block";
				}
		};
		
		//匹配姓名的正则表达式
		function check_uname(){		   
			username = document.getElementById("username").value.trim();
			  var re = /^[a-zA-z0-9\u4e00-\u9fa5_-]{2,20}$/;
			   if(username.length == 0){
			     document.getElementById("aa").innerHTML = "&nbsp;&nbsp;<font size=2 >姓名可以为空！</font>";
			   }else if(username.length>=9){
				   document.getElementById("aa").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>姓名长度不能大于8！</font>";
			   }else if(re.test(username)&&username.length<=10){
			     document.getElementById("aa").innerHTML = "&nbsp;&nbsp;<font size=2>正确！</font>";
			   }else{
			     document.getElementById("aa").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>姓名长度不能小于1！</font>";
			   }
			}
		
		//匹配年纪的正则表达式
		function check_age(){		   
			userage = document.getElementById("userage").value.trim();
			 var re = /^([0-9]|[0-9]{2}|100)$/;
			   if(userage.length == 0){
			     document.getElementById("myage").innerHTML = "&nbsp;&nbsp;<font size=2 >年龄可以为空！</font>";
			   }else if(re.test(userage)){
			     document.getElementById("myage").innerHTML = "&nbsp;&nbsp;<font size=2>正确！</font>";
			   }else{
			     document.getElementById("myage").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>年龄只能是0-100之间的数字</font>";
			   }
			}
		//匹配生日的正则表达式
		function check_birthday(){		   
			userbirthday = document.getElementById("userbirthday").value.trim();
			 var re = /^(?:(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(\/|-|\.)(?:0?2\1(?:29))$)|(?:(?:1[6-9]|[2-9]\d)?\d{2})(\/|-|\.)(?:(?:(?:0?[13578]|1[02])\2(?:31))|(?:(?:0?[1,3-9]|1[0-2])\2(29|30))|(?:(?:0?[1-9])|(?:1[0-2]))\2(?:0?[1-9]|1\d|2[0-8]))$/;
			//var re = /^\\d{4}-([1-9]|1[0-2])-([1-9]|[1-2][0-9]|3[0-1])$/;
			if(userbirthday.length == 0){
			     document.getElementById("mybirthday").innerHTML = "&nbsp;&nbsp;<font size=2 >生日可以为空！</font>";
			   }else if(re.test(userbirthday)){
			     document.getElementById("mybirthday").innerHTML = "&nbsp;&nbsp;<font size=2>正确！</font>";
			   }else{
			     document.getElementById("mybirthday").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>生日格式只能是:1991-05-21的正确日期</font>";
			   }
		}
			
		//匹配家乡的正则表达式
		function check_home(){		   
			userhome = document.getElementById("userhome").value.trim();
			 var re = /^[\u4e00-\u9fa5]+$/;
			   if(userhome.length == 0){
			     document.getElementById("myhome").innerHTML = "&nbsp;&nbsp;<font size=2 >家乡可以为空！</font>";
			   }else if(userhome.length>=11){
				   document.getElementById("myhome").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>长度不能超过10</font>";
			   }else if(re.test(userhome)){
			     document.getElementById("myhome").innerHTML = "&nbsp;&nbsp;<font size=2>正确！</font>";
			   }else{
			     document.getElementById("myhome").innerHTML = "&nbsp;&nbsp;<font size=2 color=red>家乡只能是汉字！</font>";
			   }
			}
		
		
		//放大镜效果
		
		/*使用jqzoom*/
		$(function(){
			$(".n_txt").jqueryzoom({
							xzoom: 300, //放大图的宽度(默认是 200)
							yzoom: 300, //放大图的高度(默认是 200)
							offset: 10, //离原图的距离(默认是 10)
							position: "right", //放大图的定位(默认是 "right")
							preload:1   
			});
		});
