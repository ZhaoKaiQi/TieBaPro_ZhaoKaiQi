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
	// 注入message
	Message message = null;

	public void setMessage(Message message) {
		this.message = message;
	}

	// set注入工厂的方法
	private SessionFactory sessionFactory = null;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: getFyMessageData
	 * @Description: 查询留言表中全部数据的数据访问层实现类
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
		// 下面就获取那个操作数据库的对象
		QueryRunner runner = JDBCUtils.getQueryRunner();
		// 计算这个位置
		int startPosition = (currentPage - 1) * pageSize;
		List<Message> allMessages = runner.query(sql,
				new BeanListHandler<Message>(Message.class), startPosition,
				pageSize);
		System.out.println("messageDao层的信息访问到了");
		return allMessages;
	}

	/**
	 * @Title: saveMessage
	 * @Description: 这个是保存message的方法
	 * @param @param message
	 * @return void
	 * @throws
	 */
	@Override
	public void saveMessage(Message message) {
		System.out.println("我执行到保存Message信息的Dao层了，这里传来的值是：" + message);
		sessionFactory.openSession().save(message);
		/*getHibernateTemplate().save(message);*/
	}

}
