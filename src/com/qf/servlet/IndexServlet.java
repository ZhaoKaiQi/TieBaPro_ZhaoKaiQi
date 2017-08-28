package com.qf.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		try {
			if ("register".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/register.jsp").forward(
						request, response);
				System.out.println("执行到了这里");
			} else if ("login".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(
						request, response);
			} else if ("baseprofile".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/baseprofile.jsp").forward(
						request, response);
			}else if ("Agreement".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/Agreement.jsp").forward(
						request, response);
			} else if ("main".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/main.jsp").forward(
						request, response);
			} else if ("alterper".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/alterper.jsp").forward(
						request, response);
			}else if ("accoutset".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/accoutset.jsp").forward(
						request, response);
			} else if ("replyme".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/replyme.jsp").forward(
						request, response);
			}else if ("MyBar".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/MyBar.jsp").forward(
						request, response);
			}else if ("{uploadimage".equals(method)) {
				request.getRequestDispatcher("/WEB-INF/uploadimage.jsp").forward(
						request, response);
			}else
				request.getRequestDispatcher("/WEB-INF/mainview.jsp").forward(
						request, response);
		} catch (Exception e) {
			System.out.println("处理请求出现了问题");
		}
	}
}
