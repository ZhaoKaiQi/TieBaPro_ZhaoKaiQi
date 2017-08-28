<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript">
			function changeCity(){
				var sf=document.getElementById("sf").value;
				var city=document.getElementById("city");
				city.length=0;
				var sd=['菏泽','济南','青岛'];
				if(sf==1){
					var op1=new Option("无锡",1);
					var op2=new Option("南京",2);
					var op3=new Option("苏州",3);
					city.add(op1);
					city.add(op2);
					city.add(op3);
				}

				if(sf==2){
					var op1=new Option("郑州",1);
					var op2=new Option("新乡",2);
					var op3=new Option("新郑",3);
					city.add(op1);
					city.add(op2);
					city.add(op3);
				}

				if(sf==3){
					var op1=new Option("石家庄",1);
					var op2=new Option("唐山",2);
					city.add(op1);
					city.add(op2);
				}
				if(sf==4){
					for(var i=0;i<sd.length;i++){
						city.add(new Option(sd[i],i));
					}
				}
			}
			//获取数据
			function getData(){
				//获取表单对象
				var regFrm=document.regFrm;
				//获取用户名
				var uname=regFrm.uname.value;
				//获取密码
				var pwd=regFrm.pwd.value;
				//获取性别
				var usex=regFrm.sex;
				for(var i=0;i<usex.length;i++){
					if(usex[i].checked){
						usex=usex[i].value;
					}
				}

				//获取城市
				var city=regFrm.ccc.options[regFrm.ccc.selectedIndex].text;
				//获取爱好
				var fa=regFrm.favorite;
				var favorite="";
				for(var i=0;i<fa.length;i++){
					if(fa[i].checked){
						favorite=fa[i].value+" ";
					}
				}
				$("td1").innerHTML="";
				$("td2").innerHTML="";
				$("td3").innerHTML="";
				$("td4").innerHTML="";
				var flag=true;
				if(uname.trim()==""){
					$("td1").innerHTML="&times用户名不能为空";
					flag=false;
				}
				if(pwd.trim()==""){
					$("td2").innerHTML="&times密码不能为空";
					flag=false;
				}
				if(city.trim()==""){
					$("td3").innerHTML="&times城市不能为空";
					flag=false;
				}
				if(favorite.trim()==""){
					$("td4").innerHTML="&times爱好不能为空";
					flag=false;
				}
				return flag;
			}

			function $(uid){
				return document.getElementById(uid);
			}
		</script>

</head>
<body onload="document.regFrm.uname.focus();">
<form action="main.html?uname&pwd&usex&city&favorite" onsubmit="return getData();">
		<table  >
			<tr>
				<td>性别:</td>
				<td colspan="2"><input type="radio" name="sex" value="男"
					checked />男 <input type="radio" name="sex" value="女" />女</td>
			</tr>
			<tr>
					<td>省市:</td>
					<td>
						<select id="sf" style="width:100" onchange="changeCity();" >
							<option value="0">请选择</option>
							<option value="1">江苏</option>
							<option value="2">河南</option>
							<option value="3">河北</option>
							<option value="4">山东</option>
						</select>

						<select id="city" name="ccc" style="width:100"  onchange="changeText();">
						
						</select>
					</td>
					<td id="td3"></td>
				</tr>
		</table>
	</form>
</body>
</html>