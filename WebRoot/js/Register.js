var flag1 = true;// �������
var flag2 = true;// ��֤����ȷ
var flag3 = true;// ������ȷ

function clearUp(a) {
	document.getElementById(a).value = "";
}
// ���������ע��ķ���
function check() {
	var email_re1 = $("#email_re1").val();
	var email_re3 = $("#email_re3").val();
	// get���󣺲���˵����1��Ҫ����ĺ�̨��ַ2������Ĳ���3���ص�����(���ܷ���������Ӧ����)
	// $.get(url,data,callback)
	// $.post(url,data,callback)
	// $.ajax
	// XMLHttpRequest xpp=new XmlHttpRequest();
	// xpp.readyStateCallBack=function(){
	//		
	//		
	// }
	// xpp.open(url,isAsync);
	// xpp.send(data);
	$.ajax({
		    url : "user.action",
			type : "POST",
			async : false,
			data : {
			method : 'savePwdAndEmail',
			email_re1 : email_re1,// ���� email_re2������ļ�������λ
			email_re3 : email_re3
			// ����
		    },
			// ����
		    dataType : "json",
			success : function(data) {
				if (data == "0") {
					alert("�Բ���ע��ʧ�ܣ������ע����Ϣ�Ƿ���ȷ��");
				} else if (data == "1") {
					alert("��ϲ����ע��ɹ����뾡�������Ƹ�����Ϣ��");
					location.href = "index.action?method=baseprofile";
				} 
			}
		});
}
// �����У�������Ƿ�ע����Լ������ʽ�Ƿ�Ϸ��ķ���
function lost_email() {
	var email_re1 = document.getElementById("email_re1").value;
	var emailinfo = document.getElementById("emailinfo");
	var rule_email = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@qq|163|souhu|139|tom|126|21cn|51|yeah|sina+\.+net|com|cn$ /;
	if (rule_email.test(email_re1) == false) {
		emailinfo.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>�����ʽ����ȷ";
		return;
	} else {
		var loginemail = $("#email_re1").val();
		var emailinfo = document.getElementById("emailinfo");
		$.ajax({
				// ����ط��Ǻ�̨У�������Ƿ�ע��
				url : "user.action",
				type : "POST",
				async : false,
				data : {
					method : 'checkEmailInOrNot',
					userMail : loginemail
				},
				// ����
				dataType : "html",
				success : function(data) {
					// alert("������������Ϊ��"+data),
					eval("var result=" + data);
					if (result == "0") {
						emailinfo.innerHTML = "�������ѱ�ע�ᣬ��ֱ�ӵ�¼";
						flag1 = false;
					} else if (result == "1") {
						flag1 = true;
						emailinfo.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
					}
				}
			});
	}
}
// ���������������֤�����ʽ�Ƿ�Ϸ���
function lost_pwd() {
	var email_re3 = document.getElementById("email_re3").value;
	var email_pwd = document.getElementById("email_pwd");
	var rule_pwd = /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,14}$/;
	if (rule_pwd.test(email_re3) == false) {
		email_pwd.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>���������6-14���ַ����";
		$.ajax({
			// ����ط��Ǻ�̨У�������Ƿ�ע��
			url : "user.action",
			type : "POST",
			async : false,
			data : {
				method : 'checkPwd',
				d : false
			}
		});
	} else {
		email_pwd.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
		$.ajax({
			// ����ط��Ǻ�̨У�������Ƿ�ע��
			url : "user.action",
			type : "POST",
			async : false,
			data : {
				method : 'checkPwd',
				d : true
			}
		});
	}
}

function email_line1() {
	var emailinfo = document.getElementById("emailinfo");
	emailinfo.innerHTML = "�����볣������,ͨ����֤���ͨ����¼���һ�����";
}

function email_line3() {
	var email_pwd = document.getElementById("email_pwd");
	email_pwd.innerHTML = "����������,������6-14���ַ����";
}

function login_name() {
	var user_name = document.getElementById("user_name");
	user_name.innerHTML = "�û�����д���ܸ���";
}

function login_account() {
	var c = document.getElementById("userAccount");
	c.style.display = "block";
}
function shut_account() {
	var b = document.getElementById("userAccount");
	b.style.display = "none";
}

function email_login() {
	var email = document.getElementById("email_login");
	email.innerHTML = "����";
}

function account_login() {
	var email = document.getElementById("email_login");
	email.innerHTML = "�û���";
}

function account_one() {
	var one = document.getElementById("user_one");
	var two = document.getElementById("user_two");
	one.style.background = "#DFCC7F";
	two.style.background = "#FFFFFF";
}

function account_two() {
	var one = document.getElementById("user_one");
	var two = document.getElementById("user_two");
	one.style.background = "#FFFFFF";
	two.style.background = "#DFCC7F";
}

function email_line2() {
	var cdkey = document.getElementById("cdkey");
	cdkey.innerHTML = "������������4λ���ֵļ�����";
}
// ����ط�������������������֤�ģ����Ա������к��������֤���Ƿ�һ��
function lost_cdkey() {
	var email_re2 = document.getElementById("email_re2").value;
	var cdkey = document.getElementById("cdkey");
	var rule_key = /^\d{4}$/;
	if (rule_key.test(email_re2) == false) {
		cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>�������ʽ����";
		return;
	} else {
		var email_re2 = $("#email_re2").val();
		$.ajax({
				url : "user.action",
				type : "POST",
				data : {
					method : 'checkCode',
					email_re2 : email_re2
				},
				success : function(data) {
					if (data == "flase") {
						cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/error2.jpg'>�����벻��ȷ";
					} else if (data == "true") {
						cdkey.innerHTML = "<img style='vertical-align:middle;float:left;' src='img/right2.jpg'>";
					}// Ϊʲô����ط������ֵ��true�Ļ��ͻ�ִ������ķ����������false�Ͳ�ִ���أ�������
				}
			});
	}
}
// ����ǻ�ȡ������֤�뷢�͵�����ķ���
function clickcode() {
	var email_re1 = $("#email_re1").val();
	alert("������¼Ҫע������䣬�ҵ����伤����");
	$.ajax({
		url : "user.action",
		type : "POST",
		data : {
			method : 'getCheckCode',
			email_re1 : email_re1
		},
		// ����
		dataType : "json",
		success : function(data) {
			if (data == "0") {
				$("#result").text(data.info);
				$("#cdkey").text(data.info);
			} else if (data == "1") {
				$("#result").text(data.info);
			}
		}
	});
}