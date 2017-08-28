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
 * @Description: 用于用户登录的控制层
 * @author 赵凯琦
 * @date 2017-6-28 上午2:41:01
 */
public class LoginServlet extends HttpServlet {
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
		try {
			User user = ObjUtils.getParametes(request, User.class);
			// 进行注册
			String methodName = request.getParameter("method");
			System.out.println("方法名称：" + methodName);
			HttpSession session = request.getSession();
			// 下面进行处理
			if ("FindPwd".equals(methodName)) {// 这里用来跳转到找回密码页面的
				request.getRequestDispatcher("/WEB-INF/FindPwd.jsp").forward(
						request, response);
			} else if ("landing".equals(methodName)) {// 用来校验登录的
				System.out.println("landing方法可以执行");
				String userMail = request.getParameter("userMail");
				String userPwd = request.getParameter("userPwd");
				System.out.println("客户端传来的用户邮箱和密码分别为：" + userMail + "=="
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
			System.out.println("处理异常：" + e.getMessage());
		}
	}

	/**
	 * @throws IOException
	 * @throws ServletException
	 * @return
	 * @return
	 * 
	 * @Title: zhuxiao
	 * @Description: 注销
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
		// 销毁session
		System.out.println("注销的方法中注销执行前的session为："
				+ session.getAttribute("user"));
		// session.invalidate();
		session.removeAttribute("user");
		System.out.println("这个注销的方法执行了，此时session中的user为：" + session);
		request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(request,
				response);
		// return "redirect:index.action";
	}
	/**
	 * @Title: landingHandler
	 * @Description: 这个方法是用来是否符合登录条件的
	 * @param @param request
	 * @param @param response
	 * @param @param user
	 * @param @return
	 * @return int
	 * @throws
	 */
	private int landingHandler(HttpServletRequest request,
			HttpServletResponse response, User user) {
		System.out.println("传到方法landingHandler中的用户密码和登录邮箱分别为："
				+ user.getUserMail() + "==" + user.getUserPwd());
		boolean a = userService.findUserByUserMail(user);
		if (a) {
			boolean b = userService.checkUserPwd(user);
			if (b) {
				request.getSession().setAttribute("user", user);
				System.out.println(request.getSession().getAttribute("user"));
				return 1;// 当返回1的时候，代表验证成功了
			} else {
				return 0;// 当返回0的时候，代表密码错误
			}
		} else {
			return 2;// 当返回2的时候，代表用户不存在
		}
	}
}
