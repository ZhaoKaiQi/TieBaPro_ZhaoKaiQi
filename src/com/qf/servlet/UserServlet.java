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
 * @Description: 用于用户注册的控制层
 * @author 赵凯琦
 * @date 2017-6-28 上午2:37:40
 */
public class UserServlet extends HttpServlet {
	// 加载驱动
	ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext(
			"ApplicationContext.xml");
	IUserService userService = (IUserService) applicationContext
			.getBean("userService");

	// 和注入userService的set方法
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// doget方法
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	// dopost的方法
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Email = request.getParameter("userMail");
		try {
			User user = ObjUtils.getParametes(request, User.class);
			// 进行注册
			String methodName = request.getParameter("method");
			System.out.println("方法名称：" + methodName);
			// 下面进行处理
			if ("checkEmailInOrNot".equals(methodName)) {// 这里用来验证数据库是否有该邮箱
				System.out.println("checkEmailInOrNot方法可以执行");
				System.out.println("这个是传进来的email:" + Email);
				response.getWriter().print(
						checkEmailInOrNot(user, request, response));
			} else if ("checkPwd".equals(methodName)) {// 用来登录的
				System.out.println("checkPwd方法可以执行");
				checkPwd(request, response);
			} else if ("savePwdAndEmail".equals(methodName)) {// 用来完成最终的注册，并保存用户到数据库
				System.out.println("savePwdAndEmail方法可以执行");
				response.getWriter().print(
						savePwdAndEmail(user, request, response));
			} else if ("getCheckCode".equalsIgnoreCase(methodName)) {// 用来获取验证码并发送到邮箱
				String Mail = request.getParameter("email_re1");
				getCheckCode(request, response, Mail);
				System.out.println("getCheckCode方法可以执行");
			} else if ("checkCode".equals(methodName)) {// 用来检验验证码是否通过
				String inPutCode = request.getParameter("email_re2");
				response.getWriter().print(
						checkCode(request, response, inPutCode));
			} else if ("saveUser".equals(methodName)) {// 用来检验验证码是否通过
				System.out.println("saveUser方法可以执行");
				saveUser(user, request, response);
			}
		} catch (Exception e) {
			System.out.println("邮件发送失败：" + e.getMessage());
		}
	}
/**
 * @Title: saveUser 
 * @Description: 这个是用来存放用户详细信息的
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
	 * @Description: 这个是用来后面验证密码格式是否正确的方法
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	private void checkPwd(HttpServletRequest request,
			HttpServletResponse response) {
		String d = request.getParameter("d");
		System.out.println("通过页面校验得到密码为：" + d);
		request.getSession().setAttribute("d", d);
	}

	/**
	 * @Title: savePwdAndEmail
	 * @Description: 这是最终校验注册以及保存注册信息的方法
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
			System.out.println("登录成功" + user);
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
	 * @Description: 校验验证码是否正确的方法
	 * @param @param request
	 * @param @param response
	 * @param @param inPutCode
	 * @return void
	 * @throws
	 */
	private boolean checkCode(HttpServletRequest request,
			HttpServletResponse response, String inPutCode) {
		String b = request.getSession().getAttribute("ecode").toString();
		System.out.println("域对象中的code为：" + b);
		System.out.println("传进来的code值为" + inPutCode);
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
	 * @Description:判断数据库中是否包含这个邮箱
	 * @param @param user
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	private int checkEmailInOrNot(User user, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println("判断数据库中是否包含这个邮箱这个方法执行了！");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		boolean b = userService.findUserByUserMail(user);
		if (b == true) {
			System.out.println("该邮箱已经注册过了");
			boolean a = false;
			request.getSession().setAttribute("a", a);
			return 0;
		} else {
			System.out.println("该邮箱没注册过，可以使用");
			boolean a = true;
			request.getSession().setAttribute("a", a);
			return 1;
		}
	}

	/**
	 * @param response
	 * @param request
	 * @Title: getCheckCode
	 * @Description: 获取验证码并发送至邮箱
	 * @param
	 * @return void
	 * @throws
	 */
	public void getCheckCode(HttpServletRequest request,
			HttpServletResponse response, String email) {
		System.out.println("应该发送邮件至这个邮箱：" + email);
		// 生成验证码
		String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
		Random random = new Random();// 生成随机数
		int code = random.nextInt(9000) + 1000;
		request.getSession().setAttribute("ecode", code);
		EmailUtils.sendEmail(email, code);
		// 生成一个随机数字
		// int index = random.nextInt(words.length()); // 生成随机数 0 到 length - 1
		// 获得字母数字
		// char c = words.charAt(index);
		System.out.println("发送出去的验证码为：" + code);
	}
}
