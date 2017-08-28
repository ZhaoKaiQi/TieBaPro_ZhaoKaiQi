$(function(){

	//������ҳ���жϣ����С��5ҳ������ʾ����ҳ�����������5ҳ������ʾ5ҳ�����ݵ�ǰ�����ҳ������

	//ÿҳ��ʾ����Ŀ
	var show_per_page = 8;

	//��ȡcontent�������棬���ݵ�����
	var number_of_items = $('.threadlist_bright').children().size();
	//����ҳ����ʾ����ҳ��
	var pageCount = Math.ceil(number_of_items/show_per_page);

	//���ظö��������������Ԫ��
	$('.threadlist_bright').children().css('display', 'none');

	//��ʾ��n��show_per_page��Ԫ��
	$('.threadlist_bright').children().slice(0, show_per_page).css('display', 'block');

	//������Ĭ��ֵ
	$('#start_page').val(0);
	$('#current_page').val(0);
	$('#show_per_page').val(show_per_page);
	$('#end_page').val(pageCount);

	//���ɷ�ҳ��ť
	if(pageCount>5){
		page_icon(1,5,0);
	}else{
		page_icon(1,pageCount,0);
	}

	//�����ҳ��ť����
	$("#pageGro li").live("click",function(){
			var pageNum = parseInt($(this).html())-1;//��ȡ��ǰҳ��

			var page = pageNum +1;//��תҳ����
			var show_per_page = parseInt($('#show_per_page').val());

			//��ʼ
			 start_from = pageNum * show_per_page;

			//����
			end_on = start_from + show_per_page;

			//��������ul��������Ԫ�أ���ȡ�ض���Ŀ����ʾ����
			$('.threadlist_bright').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
		if(pageCount > 5){
			//��ʾҳ��
			pageGroup(page,pageCount);
		}else{

			$(this).addClass("on");
			$(this).siblings("li").removeClass("on");
		}
	});

	//�����һҳ����
	$("#pageGro .pageUp").click(function(){
			var pageNum = parseInt($("#pageGro li.on").html());//��ȡ��ǰҳ
			if (pageNum <= 1) {
				var page = pageNum;
			}else{
				var page = pageNum-1;
			}
			var show_per_page = parseInt($('#show_per_page').val());

			//��ʼ
			 start_from = page * show_per_page - show_per_page;

			//����
			end_on = start_from + show_per_page;

			//��������ul��������Ԫ�أ���ȡ�ض���Ŀ����ʾ����
			$('.threadlist_bright').children().css('display', 'none').slice(start_from,end_on).css('display', 'block');
		if(pageCount > 5){
			pageUp(pageNum,pageCount);
		}else{
			var index = $("#pageGro ul li.on").index();//��ȡ��ǰҳ
			if(index > 0){
				$("#pageGro li").removeClass("on");//�������ѡ��
				$("#pageGro ul li").eq(index-1).addClass("on");//ѡ����һҳ
			}
		}
	});
	
	//�����һҳ����
	$("#pageGro .pageDown").click(function(){

			var pageNum = parseInt($("#pageGro li.on").html());//��ȡ��ǰҳ
			var page = pageNum;
			if (pageNum===pageCount) {
				page = pageNum-1;
			}
			var show_per_page = parseInt($('#show_per_page').val());
			//��ʼ
			 start_from = page * show_per_page;

			//����
			end_on = start_from + show_per_page;

			//��������ul��������Ԫ�أ���ȡ�ض���Ŀ����ʾ����
			$('.threadlist_bright').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
		if(pageCount > 5){
			pageDown(pageNum,pageCount);
		}else{
			var index = $("#pageGro ul li.on").index();//��ȡ��ǰҳ

			if(index+1 < pageCount){
				$("#pageGro li").removeClass("on");//�������ѡ��
				$("#pageGro ul li").eq(index+1).addClass("on");//ѡ����һҳ
			}
		}
	});

	//�����ҳ
	$("#pageGro .pagestart").live("click",function(){
			var pageNum = $('#start_page').val();

			//��ʼ
			 start_from = pageNum * show_per_page;

			//����
			end_on = start_from + show_per_page;

			//��������ul��������Ԫ�أ���ȡ�ض���Ŀ����ʾ����
			$('.threadlist_bright').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');
		if (pageCount > 5) {

			//��ʾҳ��
			pageGroup(1,pageCount);
		}else{

			var index = $("#pageGro ul li.on").index();//��ȡ��ǰҳ

			if(index < pageCount){
				$("#pageGro li").removeClass("on");//�������ѡ��
				$("#pageGro ul li:first").addClass("on");
			}
		}
	});

	//���βҳ
	$("#pageGro .pageend").live("click",function(){
		var pageNum1 = $('#end_page').val();
			var pagenum = pageNum1-2
				var page = pageNum1-1;

			//��ʼ
			 start_from = page * show_per_page;

			//����
			end_on = start_from + show_per_page;

			//��������ul��������Ԫ�أ���ȡ�ض���Ŀ����ʾ����
			$('.threadlist_bright').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');

		if (pageCount > 5) {

			//��ʾҳ��
			pageGroup(pagenum,pageNum1);
			$("#pageGro ul li:last-child").addClass("on").siblings().removeClass("on");
		}else{

			var index = $("#pageGro ul li.on").index();//��ȡ��ǰҳ

			if(index < pageCount){
				$("#pageGro li").removeClass("on");//�������ѡ��
				$("#pageGro ul li:last-child").addClass("on");
			}
		}

	});
});

//�����תҳ��
function pageGroup(pageNum,pageCount){
	switch(pageNum){
		case 1:
			page_icon(1,5,0);
		break;
		case 2:
			page_icon(1,5,1);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,3);
		break;
		case pageCount:
			page_icon(pageCount-4,pageCount,4);
		break;
		default:
			page_icon(pageNum-2,pageNum+2,2);
		break;
	}
}

//���ݵ�ǰѡ��ҳ����ҳ������ť
function page_icon(page,count,eq){
	var ul_html = "";
	for(var i=page; i<=count; i++){
		ul_html += "<li>"+i+"</li>";
	}
	$("#pageGro ul").html(ul_html);
	$("#pageGro ul li").eq(eq).addClass("on");
}

//��һҳ
function pageUp(pageNum,pageCount){
	switch(pageNum){
		case 1:
		break;
		case 2:
			page_icon(1,5,0);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,2);
		break;
		case pageCount:
			page_icon(pageCount-4,pageCount,3);
		break;
		default:
			page_icon(pageNum-2,pageNum+2,1);
		break;
	}
}

//��һҳ
function pageDown(pageNum,pageCount){
	switch(pageNum){
		case 1:
			page_icon(1,5,1);
		break;
		case 2:
			page_icon(1,5,2);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,4);
		break;
		case pageCount:
		break;
		default:
			page_icon(pageNum-2,pageNum+2,3);
		break;
	}
}
