package com.qf.dao.impl;

import java.sql.SQLException;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hibernate.SessionFactory;

import com.qf.dao.IMessageDao;
import com.qf.entity.Message;
import com.qf.untils.JDBCUtils;

public class MessageDao implements IMessageDao {
	// ע��message
	Message message = null;

	public void setMessage(Message message) {
		this.message = message;
	}

	// setע�빤���ķ���
	private SessionFactory sessionFactory = null;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: getFyMessageData
	 * @Description: ��ѯ���Ա���ȫ�����ݵ����ݷ��ʲ�ʵ����
	 * @param @param currentPage
	 * @param @param pageSize
	 * @param @return
	 * @param @throws SQLException
	 * @return List<Message>
	 * @throws
	 */
	public List<Message> getFyMessageData(int currentPage, int pageSize)
			throws SQLException {
		String sql = "(SELECT * FROM message ORDER BY msgTime DESC) LIMIT ?,? ";
		// ����ͻ�ȡ�Ǹ��������ݿ�Ķ���
		QueryRunner runner = JDBCUtils.getQueryRunner();
		// �������λ��
		int startPosition = (currentPage - 1) * pageSize;
		List<Message> allMessages = runner.query(sql,
				new BeanListHandler<Message>(Message.class), startPosition,
				pageSize);
		System.out.println("messageDao�����Ϣ���ʵ���");
		return allMessages;
	}

	/**
	 * @Title: saveMessage
	 * @Description: ����Ǳ���message�ķ���
	 * @param @param message
	 * @return void
	 * @throws
	 */
	@Override
	public void saveMessage(Message message) {
		System.out.println("��ִ�е�����Message��Ϣ��Dao���ˣ����ﴫ����ֵ�ǣ�" + message);
		sessionFactory.openSession().save(message);
		/*getHibernateTemplate().save(message);*/
	}

}
