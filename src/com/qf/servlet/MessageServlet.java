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
		// ��ȡ�ύ��file��ǩ������
		Collection<Part> list = request.getParts();
		System.out.println(list.size());
		for (Part p : list) {
			if (p.getName().startsWith("picName")) {
				// ����Ҫ�����File����
				File file = new File(createDir(getServletContext()),
						createName(getNameByHeader(p
								.getHeader("content-disposition"))));
				String picName = getNameByHeader(p
						.getHeader("content-disposition"));
				String url = file.getAbsolutePath();
				// �����ļ�
				request.getSession().setAttribute("picName", picName);
				request.getSession().setAttribute("url", url);
				p.write(file.getAbsolutePath());
			}
		}
		try {
			Message message = ObjUtils.getParametes(request, Message.class);
			// ����ע��
			String methodName = request.getParameter("method");
			System.out.println("�������ƣ�" + methodName);
			// ������д���
			if ("newMessage".equals(methodName)) {// ����������֤���ݿ��Ƿ��и�����
				System.out.println("newMessage��������ִ��,���ӱ���Ϊ��"
						+ request.getParameter("msgTitle") + ",���ݣ�"
						+ request.getParameter("msgContent") + ",ͼƬ����Ϊ��"
						+ request.getSession().getAttribute("picName"));
				saveMessageAndPicture(request, response, message);
				// System.out.println("����Ǵ�������email:" + Email);
				// response.getWriter().print(checkEmailInOrNot(user, request,
				// response));
			} else if ("checkPwd".equals(methodName)) {// ������¼��
				// System.out.println("checkPwd��������ִ��");
				// checkPwd(request, response);
			} else if ("savePwdAndEmail".equals(methodName)) {// ����������յ�ע�ᣬ�������û������ݿ�
				// System.out.println("savePwdAndEmail��������ִ��");
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
	 * @Description: ����Ǳ������ӵķ���
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
		System.out.println("ͼƬ���浽�ˣ�" + picture);
		/*
		 * Collection<Part> cls=request.getParts(); for(Part p:cls){
		 * if(p.getName().startsWith("fn")) { System.out.println(p.); } picName
		 * }
		 */
		message.setPicUrl(url);
		System.out.println("���Ӱ����������У�" + message);
		pictureService.savePicture(picture);
		messageService.saveMessage(message);
		//������ת����ҳ��ʾ���ӵĵط�
		request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(request, response);
	}

	// ����Ϣͷ�л�ȡ�ϴ����ļ�����
	private String getNameByHeader(String msg) {
		// ��ȡ���ĵ�������Ϣ
		// String msg=request.getHeader("content-disposition");
		System.out.println(msg);
		String[] arr1 = msg.split(";");
		String filename = "";
		if (arr1.length == 3) {
			filename = arr1[2].split("=")[1].replaceAll("\"", "");
		}
		return filename;
	}

	// ����Ŀ¼---�����ڣ�һ��һ���ļ���
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

	// �����ļ���--����ͬ���ļ�,���ļ���ǰ���ϵ�ǰ��ʱ��
	private String createName(String name) {
		return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar
				.getInstance().getTime()) + "_" + name;
	}
}