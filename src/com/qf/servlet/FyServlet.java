package com.qf.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qf.entity.Message;
import com.qf.service.IMessageService;
import com.qf.service.IPictureService;
import com.qf.service.impl.MessageService;

/**
 * @ClassName: FyServlet
 * @Description: ��ҳ�Ŀ��Ʋ�
 * @author �Կ���
 * @date 2017-6-7 ����1:42:17
 */
public class FyServlet extends HttpServlet {
	// ��������
		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"ApplicationContext.xml");
		IPictureService pictureService = (IPictureService) applicationContext
				.getBean("pictureService");
		IMessageService messageService = (IMessageService) applicationContext
				.getBean("messageService");

		public void setPictureService(IPictureService pictureService) {
			this.pictureService = pictureService;
		}

		public void setMessageService(IMessageService messageService) {
			this.messageService = messageService;
		}
//doset����
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	// dopost����
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// ��һ��:��ȡ������ݹ�����ֵ
		String currentPage = request.getParameter("currentPage");
		String pageSize = request.getParameter("pageSize");
		// ��ȡ�������
		try {
			List<Message> messages = messageService.getFyMessageData(
					Integer.parseInt(currentPage), Integer.parseInt(pageSize));
			HttpSession session = request.getSession();
			session.setAttribute("messages", messages);
			System.out.println("���������");
			System.out.println("�������ݳɹ���"
					+ request.getSession().getAttribute(
							messages.get(1).toString()));
			// �������ǾͿ��Խ���װ��json����
			JSONArray array = new JSONArray();
			for (int i = 0; i < messages.size(); i++) {
				JSONObject object = new JSONObject();
				object.put("msgTitle", messages.get(i).getMsgTitle());
				// ���������ŵ���������ȥ
				array.put(object);
			}
			// ������д��ȥ
			PrintWriter writer = response.getWriter();
			// д������
			writer.write(array.toString());
			System.out.println("��ҳ������Ϊ��" + array.toString());
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("���ݳ���������...." + e.getMessage());
		}
	}
}
