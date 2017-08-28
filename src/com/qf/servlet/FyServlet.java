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
 * @Description: 分页的控制层
 * @author 赵凯琦
 * @date 2017-6-7 下午1:42:17
 */
public class FyServlet extends HttpServlet {
	// 加载驱动
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
//doset方法
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	// dopost方法
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// 下一步:获取这个传递过来的值
		String currentPage = request.getParameter("currentPage");
		String pageSize = request.getParameter("pageSize");
		// 获取这个数据
		try {
			List<Message> messages = messageService.getFyMessageData(
					Integer.parseInt(currentPage), Integer.parseInt(pageSize));
			HttpSession session = request.getSession();
			session.setAttribute("messages", messages);
			System.out.println("域对象有了");
			System.out.println("传输数据成功："
					+ request.getSession().getAttribute(
							messages.get(1).toString()));
			// 下面我们就可以将封装成json对象
			JSONArray array = new JSONArray();
			for (int i = 0; i < messages.size(); i++) {
				JSONObject object = new JSONObject();
				object.put("msgTitle", messages.get(i).getMsgTitle());
				// 将这个对象放到数组里面去
				array.put(object);
			}
			// 将数据写出去
			PrintWriter writer = response.getWriter();
			// 写出数据
			writer.write(array.toString());
			System.out.println("该页面数据为：" + array.toString());
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("数据出现问题了...." + e.getMessage());
		}
	}
}
