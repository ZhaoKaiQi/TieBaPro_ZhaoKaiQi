package com.qf.entity;

import java.util.Date;

import java.util.HashSet;
import java.util.Set;

public class Message {
	private int msgId;// 帖子ID主键
	private Date msgTime;// 发帖时间
	private String msgTitle;// 标题
	private String msgContent;// 内容
	private String picUrl;// 图片路径
	Set<Replay> replays = new HashSet<Replay>();

	public int getMsgId() {
		return msgId;
	}

	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}

	public Date getMsgTime() {
		return msgTime;
	}

	public void setMsgTime(Date msgTime) {
		this.msgTime = msgTime;
	}

	public String getMsgTitle() {
		return msgTitle;
	}

	public void setMsgTitle(String msgTitle) {
		this.msgTitle = msgTitle;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public Set<Replay> getReplays() {
		return replays;
	}

	public void setReplays(Set<Replay> replays) {
		this.replays = replays;
	}

	public Message(int msgId, Date msgTime, String msgTitle, String msgContent,
			String picUrl, Set<Replay> replays) {
		super();
		this.msgId = msgId;
		this.msgTime = msgTime;
		this.msgTitle = msgTitle;
		this.msgContent = msgContent;
		this.picUrl = picUrl;
		this.replays = replays;
	}

	public Message() {
		super();
	}

	@Override
	public String toString() {
		return "Message [msgId=" + msgId + ", msgTime=" + msgTime
				+ ", msgTitle=" + msgTitle + ", msgContent=" + msgContent
				+ ", picUrl=" + picUrl + ", replays=" + replays + "]";
	}

}
