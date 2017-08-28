package com.qf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qf.dao.IUserDao;
import com.qf.entity.User;

public class UserDao implements IUserDao {
	// ע��user�ķ���
	User user = null;

	public void setUser(User user) {
		this.user = user;
	}

	// setע�빤���ķ���
	private SessionFactory sessionFactory = null;

	public void setSessionFactory(SessionFactory sessionFactory) { // �����ǿ���ͨ��set�ķ�������ע���
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: findUserByUserMail
	 * @Description: ͨ�����������ʼ��������û�
	 * @param
	 * @return void
	 * @throws
	 */
	public boolean findUserByUserMail(User user) {
		System.out.println("����ͨ��������û��ķ�������ִ����" + user.getUserMail());
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where userMail=?");
		query.setParameter(0, user.getUserMail());
		List<User> users = query.list();
		if (users.size() > 0) {
			System.out.println("����ֵΪtrue");
			return true;
		} else {
			System.out.println("����ֵΪfalse");
			return false;
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
		// ���Ǹ��洢���������İ취
		System.out.println("�洢���������:" + user.getUserMail() + "----"
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
	 * @Description: �������������У���û������Ƿ���ȷ��
	 * @param @param user
	 * @param @return
	 * @return boolean
	 * @throws
	 */
	@Override
	public boolean checkUserPwd(User user) {
		System.out.println("����У������ķ�������ִ����" + user.getUserMail());
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User where userMail=?");
		query.setParameter(0, user.getUserMail());
		List<User> users=query.list();
		String userPwd=users.get(0).getUserPwd();
		if (userPwd.equals(user.getUserPwd())) {
			System.out.println("����ֵΪtrue");
			return true;//��ʾ�û����������ܶ�Ӧ
		} else {
			System.out.println("����ֵΪfalse");
			return false;
		}
	}
}
