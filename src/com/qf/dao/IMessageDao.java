package com.qf.dao;

import java.sql.SQLException;
import java.util.List;

import com.qf.entity.Message;

public interface IMessageDao {
	public List<Message> getFyMessageData(int currentPage, int pageSize)
			throws SQLException;
	/**
	 * @Title: saveMessage
	 * @Description: 这个是保存message的方法
	 * @param @param message
	 * @return void
	 * @throws
	 */
	public void saveMessage(Message message);
}
