package com.qf.service.impl;

import com.qf.dao.IUserDao;

import com.qf.entity.User;
import com.qf.service.IUserService;

public class UserService implements IUserService {
	// ע��Iuserdao
	IUserDao userDao = null;

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * @Title: checkEmailInOrNot
	 * @Description:�ж����ݿ����Ƿ�����������
	 * @param @param user
	 * @param @param request
	 * @param @param response
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())) {
			throw new RuntimeException("�����ʼ�Ϊ��...");
		} else {
			return userDao.findUserByUserMail(user);
		}
	}

	/**
	 * @Title: savePwdAndEmail
	 * @Description: ���ǽ��û���������ڵ�¼������������ݿ�ķ���
	 * @param @param userMail
	 * @param @param userPwd
	 * @return void
	 * @throws
	 */
	@Override
	public void savePwdAndEmail(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())
				|| null == user.getUserPwd() || "".equals(user.getUserPwd())) {
			throw new RuntimeException("��������쳣���޷�ִ�л���ע��洢...");
		} else {
			userDao.savePwdAndEmail(user);
		}
	}

	/**
	 * @Title: checkUserPwd
	 * @Description: �������������У���û������Ƿ���ȷ��
	 * @param @param user
	 * @param @return
	 * @return boolean
	 * @throws
	 */
	@Override
	public boolean checkUserPwd(User user) {
		if (null == user.getUserMail() || "".equals(user.getUserMail())
				|| null == user.getUserPwd() || "".equals(user.getUserPwd())) {
			throw new RuntimeException("��������쳣���޷�ִ�л���ע��洢...");
		} else {
			return userDao.checkUserPwd(user);
		}
	}

}
