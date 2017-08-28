package com.qf.service.impl;

import com.qf.dao.IUserDao;

import com.qf.entity.User;
import com.qf.service.IUserService;

public class UserService implements IUserService {
	// 注入Iuserdao
	IUserDao userDao = null;

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * @Title: checkEmailInOrNot
	 * @Description:判断数据库中是否包含这个邮箱
	 * @param @param user
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())) {
			throw new RuntimeException("输入邮件为空...");
		} else {
			return userDao.findUserByUserMail(user);
		}
	}

	/**
	 * @Title: savePwdAndEmail
	 * @Description: 这是将用户密码和用于登录的邮箱放入数据库的方法
	 * @param @param userMail
	 * @param @param userPwd
	 * @return void
	 * @throws
	 */
	@Override
	public void savePwdAndEmail(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())
				|| null == user.getUserPwd() || "".equals(user.getUserPwd())) {
			throw new RuntimeException("输入参数异常，无法执行基本注册存储...");
		} else {
			userDao.savePwdAndEmail(user);
		}
	}

	/**
	 * @Title: checkUserPwd
	 * @Description: 这个方法是用来校验用户密码是否正确的
	 * @param @param user
	 * @param @return
	 * @return boolean
	 * @throws
	 */
	@Override
	public boolean checkUserPwd(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())
				|| null == user.getUserPwd() || "".equals(user.getUserPwd())) {
			throw new RuntimeException("输入参数异常，无法执行基本注册存储...");
		} else {
			return userDao.checkUserPwd(user);
		}
	}

}
