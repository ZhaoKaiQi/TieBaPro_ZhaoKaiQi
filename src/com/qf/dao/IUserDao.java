package com.qf.dao;

import com.qf.entity.User;

public interface IUserDao {
	/**
	 * @Title: findUserByUserMail 
	 * @Description: ͨ�����������ʼ��������û�
	 * @param  
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user);
	/**
	 * @Title: savePwdAndEmail
	 * @Description: ���ǽ��û���������ڵ�¼������������ݿ�ķ���
	 * @param @param userMail
	 * @param @param userPwd
	 * @return void
	 * @throws
	 */
	public void savePwdAndEmail(User user);
	/**
	 * @Title: checkUserPwd
	 * @Description: �������������У���û������Ƿ���ȷ��
	 * @param @param user
	 * @param @return
	 * @return boolean
	 * @throws
	 */
	public boolean checkUserPwd(User user);
}
