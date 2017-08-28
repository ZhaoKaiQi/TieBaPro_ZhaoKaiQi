package com.qf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qf.dao.IUserDao;
import com.qf.entity.User;

public class UserDao implements IUserDao {
	// 注入user的方法
	User user = null;

	public void setUser(User user) {
		this.user = user;
	}

	// set注入工厂的方法
	private SessionFactory sessionFactory = null;

	public void setSessionFactory(SessionFactory sessionFactory) { // 这里是可以通过set的方法进行注入的
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: findUserByUserMail
	 * @Description: 通过传过来的邮件名查找用户
	 * @param
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user) {
		System.out.println("我是通过邮箱查用户的方法，我执行了" + user.getUserMail());
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where userMail=?");
		query.setParameter(0, user.getUserMail());
		List<User> users = query.list();
		if (users.size() > 0) {
			System.out.println("返回值为true");
			return true;
		} else {
			System.out.println("返回值为false");
			return false;
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
		// 这是个存储密码和邮箱的办法
		System.out.println("存储密码和邮箱:" + user.getUserMail() + "----"
				+ user.getUserPwd());
		/*
		 * Session session = sessionFactory.openSession(); Query query = session
		 * .createSQLQuery("INSERT INTO USER (userMail,userPwd) VALUES(?,?);");
		 * query.setParameter(0, user.getUserMail()); query.setParameter(1,
		 * user.getUserPwd());
		 */
		sessionFactory.openSession().save(user);
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
		System.out.println("我是校核密码的方法，我执行了" + user.getUserMail());
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where userMail=?");
		query.setParameter(0, user.getUserMail());
		List<User> users=query.list();
		String userPwd=users.get(0).getUserPwd();
		if (userPwd.equals(user.getUserPwd())) {
			System.out.println("返回值为true");
			return true;//表示用户名和密码能对应
		} else {
			System.out.println("返回值为false");
			return false;
		}
	}
}
