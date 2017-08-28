package com.qf.servlet;

import java.io.IOException;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qf.entity.User;
import com.qf.service.IUserService;
import com.qf.service.impl.UserService;
import com.qf.untils.EmailUtils;
import com.qf.untils.ObjUtils;

/**
 * @ClassName: UserServlet
 * @Description: �����û�ע��Ŀ��Ʋ�
 * @author �Կ���
 * @date 2017-6-28 ����2:37:40
 */
public class UserServlet extends HttpServlet {
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

		String Email = request.getParameter("userMail");
		try {
			User user = ObjUtils.getParametes(request, User.class);
			// ����ע��
			String methodName = request.getParameter("method");
			System.out.println("�������ƣ�" + methodName);
			// ������д���
			if ("checkEmailInOrNot".equals(methodName)) {// ����������֤���ݿ��Ƿ��и�����
				System.out.println("checkEmailInOrNot��������ִ��");
				System.out.println("����Ǵ�������email:" + Email);
				response.getWriter().print(
						checkEmailInOrNot(user, request, response));
			} else if ("checkPwd".equals(methodName)) {// ������¼��
				System.out.println("checkPwd��������ִ��");
				checkPwd(request, response);
			} else if ("savePwdAndEmail".equals(methodName)) {// ����������յ�ע�ᣬ�������û������ݿ�
				System.out.println("savePwdAndEmail��������ִ��");
				response.getWriter().print(
						savePwdAndEmail(user, request, response));
			} else if ("getCheckCode".equalsIgnoreCase(methodName)) {// ������ȡ��֤�벢���͵�����
				String Mail = request.getParameter("email_re1");
				getCheckCode(request, response, Mail);
				System.out.println("getCheckCode��������ִ��");
			} else if ("checkCode".equals(methodName)) {// ����������֤���Ƿ�ͨ��
				String inPutCode = request.getParameter("email_re2");
				response.getWriter().print(
						checkCode(request, response, inPutCode));
			} else if ("saveUser".equals(methodName)) {// ����������֤���Ƿ�ͨ��
				System.out.println("saveUser��������ִ��");
				saveUser(user, request, response);
			}
		} catch (Exception e) {
			System.out.println("�ʼ�����ʧ�ܣ�" + e.getMessage());
		}
	}
/**
 * @Title: saveUser 
 * @Description: �������������û���ϸ��Ϣ��
 * @param @param user
 * @param @param request
 * @param @param response 
 * @return void
 * @throws
 */
	private void saveUser(User user, HttpServletRequest request,
			HttpServletResponse response) {
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @Title: checkPwd
	 * @Description: ���������������֤�����ʽ�Ƿ���ȷ�ķ���
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	private void checkPwd(HttpServletRequest request,
			HttpServletResponse response) {
		String d = request.getParameter("d");
		System.out.println("ͨ��ҳ��У��õ�����Ϊ��" + d);
		request.getSession().setAttribute("d", d);
	}

	/**
	 * @Title: savePwdAndEmail
	 * @Description: ��������У��ע���Լ�����ע����Ϣ�ķ���
	 * @param @param user
	 * @param @param request
	 * @param @param response
	 * @param @return
	 * @param @throws IOException
	 * @param @throws ServletException
	 * @return int
	 * @throws
	 */
	private int savePwdAndEmail(User user, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String userMail = request.getParameter("email_re1");
		String userPwd = request.getParameter("email_re3");
		System.out.println(userMail);
		System.out.println(userPwd);
		String a = request.getSession().getAttribute("a").toString();
		String c = request.getSession().getAttribute("c").toString();
		String d = request.getSession().getAttribute("d").toString();
		System.out.println(a + c + d);
		user.setUserMail(userMail);
		user.setUserPwd(userPwd);
		if (a.equals("true") && c.equals("true") && d.equals("true")) {
			System.out.println("��¼�ɹ�" + user);
			user.setLandingTime(new Date());
			request.getSession().setAttribute("user", user);
			userService.savePwdAndEmail(user);
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * @Title: checkCode
	 * @Description: У����֤���Ƿ���ȷ�ķ���
	 * @param @param request
	 * @param @param response
	 * @param @param inPutCode
	 * @return void
	 * @throws
	 */
	private boolean checkCode(HttpServletRequest request,
			HttpServletResponse response, String inPutCode) {
		String b = request.getSession().getAttribute("ecode").toString();
		System.out.println("������е�codeΪ��" + b);
		System.out.println("��������codeֵΪ" + inPutCode);
		// String string="123";
		// String s1=new String("123");
		if (inPutCode.equals(b)) {
			boolean c = true;
			request.getSession().setAttribute("c", c);
			return true;
		} else {
			boolean c = false;
			request.getSession().setAttribute("c", c);
			return false;
		}
	}

	/**
	 * @throws UnsupportedEncodingException
	 * @return
	 * @Title: checkEmailInOrNot
	 * @Description:�ж����ݿ����Ƿ�����������
	 * @param @param user
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	private int checkEmailInOrNot(User user, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println("�ж����ݿ����Ƿ������������������ִ���ˣ�");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		boolean b = userService.findUserByUserMail(user);
		if (b == true) {
			System.out.println("�������Ѿ�ע�����");
			boolean a = false;
			request.getSession().setAttribute("a", a);
			return 0;
		} else {
			System.out.println("������ûע���������ʹ��");
			boolean a = true;
			request.getSession().setAttribute("a", a);
			return 1;
		}
	}

	/**
	 * @param response
	 * @param request
	 * @Title: getCheckCode
	 * @Description: ��ȡ��֤�벢����������
	 * @param
	 * @return void
	 * @throws
	 */
	public void getCheckCode(HttpServletRequest request,
			HttpServletResponse response, String email) {
		System.out.println("Ӧ�÷����ʼ���������䣺" + email);
		// ������֤��
		String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
		Random random = new Random();// ���������
		int code = random.nextInt(9000) + 1000;
		request.getSession().setAttribute("ecode", code);
		EmailUtils.sendEmail(email, code);
		// ����һ���������
		// int index = random.nextInt(words.length()); // ��������� 0 �� length - 1
		// �����ĸ����
		// char c = words.charAt(index);
		System.out.println("���ͳ�ȥ����֤��Ϊ��" + code);
	}
}
