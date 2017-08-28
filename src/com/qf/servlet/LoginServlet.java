package com.qf.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qf.entity.User;
import com.qf.service.IUserService;
import com.qf.service.impl.UserService;
import com.qf.untils.ObjUtils;

/**
 * @ClassName: LoginServlet
 * @Description: �����û���¼�Ŀ��Ʋ�
 * @author �Կ���
 * @date 2017-6-28 ����2:41:01
 */
public class LoginServlet extends HttpServlet {
	// ��������
	ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext(
			"ApplicationContext.xml");
	IUserService userService = (IUserService) applicationContext
			.getBean("userService");

	// ��ע��userService��set����
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// doget����
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	// dopost�ķ���
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = ObjUtils.getParametes(request, User.class);
			// ����ע��
			String methodName = request.getParameter("method");
			System.out.println("�������ƣ�" + methodName);
			HttpSession session = request.getSession();
			// ������д���
			if ("FindPwd".equals(methodName)) {// ����������ת���һ�����ҳ���
				request.getRequestDispatcher("/WEB-INF/FindPwd.jsp").forward(
						request, response);
			} else if ("landing".equals(methodName)) {// ����У���¼��
				System.out.println("landing��������ִ��");
				String userMail = request.getParameter("userMail");
				String userPwd = request.getParameter("userPwd");
				System.out.println("�ͻ��˴������û����������ֱ�Ϊ��" + userMail + "=="
						+ userPwd);
				response.getWriter().print(
						landingHandler(request, response, user));
			} else if ("out".equals(methodName)) {
				zhuxiao(request, response, session, user);
			}else if ("login".equals(methodName)) {
				String userMail = request.getParameter("userMail");
				String userPwd = request.getParameter("userPwd");
				landingHandler(request, response, user);
				request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
			System.out.println("�����쳣��" + e.getMessage());
		}
	}

	/**
	 * @throws IOException
	 * @throws ServletException
	 * @return
	 * @return
	 * 
	 * @Title: zhuxiao
	 * @Description: ע��
	 * @param @param request
	 * @param @param response
	 * @param @param user
	 * @param @throws ServletException
	 * @param @throws IOException
	 * @param @throws SQLException
	 * @return String
	 * @throws
	 */
	private void zhuxiao(HttpServletRequest request,
			HttpServletResponse response, HttpSession session, User user)
			throws ServletException, IOException {
		// ����session
		System.out.println("ע���ķ�����ע��ִ��ǰ��sessionΪ��"
				+ session.getAttribute("user"));
		// session.invalidate();
		session.removeAttribute("user");
		System.out.println("���ע���ķ���ִ���ˣ���ʱsession�е�userΪ��" + session);
		request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(request,
				response);
		// return "redirect:index.action";
	}
	/**
	 * @Title: landingHandler
	 * @Description: ��������������Ƿ���ϵ�¼������
	 * @param @param request
	 * @param @param response
	 * @param @param user
	 * @param @return
	 * @return int
	 * @throws
	 */
	private int landingHandler(HttpServletRequest request,
			HttpServletResponse response, User user) {
		System.out.println("��������landingHandler�е��û�����͵�¼����ֱ�Ϊ��"
				+ user.getUserMail() + "==" + user.getUserPwd());
		boolean a = userService.findUserByUserMail(user);
		if (a) {
			boolean b = userService.checkUserPwd(user);
			if (b) {
				request.getSession().setAttribute("user", user);
				System.out.println(request.getSession().getAttribute("user"));
				return 1;// ������1��ʱ�򣬴�����֤�ɹ���
			} else {
				return 0;// ������0��ʱ�򣬴����������
			}
		} else {
			return 2;// ������2��ʱ�򣬴����û�������
		}
	}
}
