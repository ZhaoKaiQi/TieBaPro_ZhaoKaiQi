package com.qf.service;

import java.sql.SQLException;
import java.util.List;

import com.qf.entity.Message;

public interface IMessageService {
	/**
	 * @Title: getFyMessageData
	 * @Description: ��ҳ
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
	 * @Description: ����Ǳ���message�ķ���
	 * @param @param message
	 * @return void
	 * @throws
	 */
	public void saveMessage(Message message);

}
