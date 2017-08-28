package com.qf.dao;

import com.qf.entity.User;

public interface IUserDao {
	/**
	 * @Title: findUserByUserMail 
	 * @Description: 通过传过来的邮件名查找用户
	 * @param  
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user);
	/**
	 * @Title: savePwdAndEmail
	 * @Description: 这是将用户密码和用于登录的邮箱放入数据库的方法
	 * @param @param userMail
	 * @param @param userPwd
	 * @return void
	 * @throws
	 */
	public void savePwdAndEmail(User user);
	/**
	 * @Title: checkUserPwd
	 * @Description: 这个方法是用来校验用户密码是否正确的
	 * @param @param user
	 * @param @return
	 * @return boolean
	 * @throws
	 */
	public boolean checkUserPwd(User user);
}
