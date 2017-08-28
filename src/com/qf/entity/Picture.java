package com.qf.entity;

import java.util.Set;

import javax.jms.Message;

public class Picture {
	private int picId;// Í¼Æ¬±àºÅ
	private String picName;
	private String picUrl;// Í¼Æ¬Â·¾¶

	public int getPicId() {
		return picId;
	}

	public void setPicId(int picId) {
		this.picId = picId;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public Picture(int picId, String picName, String picUrl) {
		super();
		this.picId = picId;
		this.picName = picName;
		this.picUrl = picUrl;
	}

	public Picture() {
		super();
	}

	@Override
	public String toString() {
		return "Picture [picId=" + picId + ", picName=" + picName + ", picUrl="
				+ picUrl + "]";
	}

}
