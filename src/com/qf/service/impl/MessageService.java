package com.qf.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.qf.dao.impl.MessageDao;
import com.qf.entity.Message;
import com.qf.service.IMessageService;

public class MessageService implements IMessageService {
	// 注入messageDao
	private MessageDao messageDao;
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public List<Message> getFyMessageData(int currentPage, int pageSize)
			throws SQLException {
		if (currentPage < 0 || pageSize < 0 || "".equals(currentPage)
				|| "".equals(pageSize)) {
			throw new RuntimeException("分页参数输入异常...");
		}
		return messageDao.getFyMessageData(currentPage, pageSize);
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
		if (null == message.getMsgTitle() || "".equals(message.getMsgTitle())) {
			throw new RuntimeException("输入参数异常，无法执行基本存储...");
		} else {
			messageDao.saveMessage(message);
		}
	}
}
