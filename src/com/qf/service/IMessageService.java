package com.qf.service;

import java.sql.SQLException;
import java.util.List;

import com.qf.entity.Message;

public interface IMessageService {
	/**
	 * @Title: getFyMessageData
	 * @Description: 分页
	 * @param @param currentPage
	 * @param @param pageSize
	 * @param @return
	 * @param @throws SQLException
	 * @return List<Message>
	 * @throws
	 */
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
