package com.qf.entity;

public class AttentionAndFans {
	private int afNum;// 主键
	private int afState;// 状态，当为0时是关注，为1时是粉丝
	private User user;// 这个是被关注的人
	private User user2;// 这个是关注的

	public int getAfNum() {
		return afNum;
	}

	public void setAfNum(int afNum) {
		this.afNum = afNum;
	}

	public int getAfState() {
		return afState;
	}

	public void setAfState(int afState) {
		this.afState = afState;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser2() {
		return user2;
	}

	public void setUser2(User user2) {
		this.user2 = user2;
	}

	public AttentionAndFans(int afNum, int afState, User user, User user2) {
		super();
		this.afNum = afNum;
		this.afState = afState;
		this.user = user;
		this.user2 = user2;
	}

	public AttentionAndFans() {
		super();
	}

	@Override
	public String toString() {
		return "AttentionAndFans [afNum=" + afNum + ", afState=" + afState
				+ ", user=" + user + ", user2=" + user2 + "]";
	}

}
