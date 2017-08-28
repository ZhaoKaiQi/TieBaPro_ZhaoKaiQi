package com.qf.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.qf.dao.impl.MessageDao;
import com.qf.entity.Message;
import com.qf.service.IMessageService;

public class MessageService implements IMessageService {
	// ע��messageDao
	private MessageDao messageDao;
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public List<Message> getFyMessageData(int currentPage, int pageSize)
			throws SQLException {
		if (currentPage < 0 || pageSize < 0 || "".equals(currentPage)
				|| "".equals(pageSize)) {
			throw new RuntimeException("��ҳ���������쳣...");
		}
		return messageDao.getFyMessageData(currentPage, pageSize);
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
		if (null == message.getMsgTitle() || "".equals(message.getMsgTitle())) {
			throw new RuntimeException("��������쳣���޷�ִ�л����洢...");
		} else {
			messageDao.saveMessage(message);
		}
	}
}
