package com.qf.servlet;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qf.entity.Message;
import com.qf.entity.Picture;
import com.qf.service.IMessageService;
import com.qf.service.IPictureService;
import com.qf.untils.ObjUtils;

@WebServlet("/MessageServlet")
@MultipartConfig
public class MessageServlet extends HttpServlet {
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

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MessageServlet() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// 获取提交的file标签的内容
		Collection<Part> list = request.getParts();
		System.out.println(list.size());
		for (Part p : list) {
			if (p.getName().startsWith("picName")) {
				// 创建要保存的File对象
				File file = new File(createDir(getServletContext()),
						createName(getNameByHeader(p
								.getHeader("content-disposition"))));
				String picName = getNameByHeader(p
						.getHeader("content-disposition"));
				String url = file.getAbsolutePath();
				// 保存文件
				request.getSession().setAttribute("picName", picName);
				request.getSession().setAttribute("url", url);
				p.write(file.getAbsolutePath());
			}
		}
		try {
			Message message = ObjUtils.getParametes(request, Message.class);
			// 进行注册
			String methodName = request.getParameter("method");
			System.out.println("方法名称：" + methodName);
			// 下面进行处理
			if ("newMessage".equals(methodName)) {// 这里用来验证数据库是否有该邮箱
				System.out.println("newMessage方法可以执行,帖子标题为："
						+ request.getParameter("msgTitle") + ",内容："
						+ request.getParameter("msgContent") + ",图片名字为："
						+ request.getSession().getAttribute("picName"));
				saveMessageAndPicture(request, response, message);
				// System.out.println("这个是传进来的email:" + Email);
				// response.getWriter().print(checkEmailInOrNot(user, request,
				// response));
			} else if ("checkPwd".equals(methodName)) {// 用来登录的
				// System.out.println("checkPwd方法可以执行");
				// checkPwd(request, response);
			} else if ("savePwdAndEmail".equals(methodName)) {// 用来完成最终的注册，并保存用户到数据库
				// System.out.println("savePwdAndEmail方法可以执行");
				// response.getWriter().print(savePwdAndEmail(user, request,
				// response));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @Title: saveMessage
	 * @Description: 这个是保存帖子的方法
	 * @param @param request
	 * @param @param response
	 * @param @param message
	 * @return void
	 * @throws
	 */
	private void saveMessageAndPicture(HttpServletRequest request,
			HttpServletResponse response, Message message) throws ServletException, IOException {
		/*
		 * PictureService pictureService1 = (PictureService)
		 * WebApplicationContextUtils
		 * .getWebApplicationContext(getServletContext()).getBean(
		 * "pictureService"); MessageService messageService1 = (MessageService)
		 * WebApplicationContextUtils
		 * .getWebApplicationContext(getServletContext()).getBean(
		 * "messageService");
		 */
		message.setMsgTime(new Date());
		Picture picture = new Picture();
		String picName = (String) request.getSession().getAttribute("picName");
		picture.setPicName(picName);
		String url = (String) request.getSession().getAttribute("url");
		picture.setPicUrl(url);
		System.out.println("图片保存到了：" + picture);
		/*
		 * Collection<Part> cls=request.getParts(); for(Part p:cls){
		 * if(p.getName().startsWith("fn")) { System.out.println(p.); } picName
		 * }
		 */
		message.setPicUrl(url);
		System.out.println("帖子包含的内容有：" + message);
		pictureService.savePicture(picture);
		messageService.saveMessage(message);
		//下面跳转到首页显示帖子的地方
		request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(request, response);
	}

	// 从消息头中获取上传的文件名称
	private String getNameByHeader(String msg) {
		// 获取正文的描述信息
		// String msg=request.getHeader("content-disposition");
		System.out.println(msg);
		String[] arr1 = msg.split(";");
		String filename = "";
		if (arr1.length == 3) {
			filename = arr1[2].split("=")[1].replaceAll("\"", "");
		}
		return filename;
	}

	// 创建目录---以日期，一天一个文件夹
	private File createDir(ServletContext context) {
		String p1 = context.getRealPath("/files");
		File file = new File(p1,
				new SimpleDateFormat("yyyy-MM-dd").format(Calendar
						.getInstance().getTime()));
		if (!file.exists()) {
			file.mkdirs();
		}
		return file;
	}

	// 创建文件名--区分同名文件,在文件名前加上当前的时间
	private String createName(String name) {
		return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar
				.getInstance().getTime()) + "_" + name;
	}
}