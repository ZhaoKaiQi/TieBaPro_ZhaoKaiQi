package com.qf.entity;

import java.util.Date;

public class Replay {
	private int repId;// 回复Id主键
	private String repContent;// 回复内容
	private Date repTime;// 回复时间
	private String picUrl;
	private Message message;
	private User user;

	public int getRepId() {
		return repId;
	}

	public void setRepId(int repId) {
		this.repId = repId;
	}

	public String getRepContent() {
		return repContent;
	}

	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}

	public Date getRepTime() {
		return repTime;
	}

	public void setRepTime(Date repTime) {
		this.repTime = repTime;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Replay(int repId, String repContent, Date repTime, String picUrl,
			Message message, User user) {
		super();
		this.repId = repId;
		this.repContent = repContent;
		this.repTime = repTime;
		this.picUrl = picUrl;
		this.message = message;
		this.user = user;
	}

	public Replay() {
		super();
	}

	@Override
	public String toString() {
		return "Replay [repId=" + repId + ", repContent=" + repContent
				+ ", repTime=" + repTime + ", picUrl=" + picUrl + ", message="
				+ message + ", user=" + user + "]";
	}

}
