package com.qf.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @ClassName: User
 * @Description: 用户实体类
 * @author 赵凯琦
 * @date 2017-6-24 上午12:36:06
 */
public class User {
	private int userId;// 用户ID
	private String userName;// 用户名
	private String userMail;// 用户邮箱
	private String userYzm;// 用户验证码
	private String userPwd;// 用户密码
	private String userGender;// 用户性别
	private int userBarAge;// 吧龄
	private String userHeadImage;// 用户头像
	private String userAddr;// 用户地址
	private Date landingTime;// 注册时间
	private int userRoot;// 管理员权限
	private int userGrade;// 会员等级
	private int userPoints;// 会员积分
	Set<AttentionAndFans> attentionAndFans = new HashSet<AttentionAndFans>();
	Set<Replay> replays = new HashSet<Replay>();

	public int getUserId() {
		return userId;
	}

	public String getUserHeadImage() {
		return userHeadImage;
	}

	public void setUserHeadImage(String userHeadImage) {
		this.userHeadImage = userHeadImage;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserYzm() {
		return userYzm;
	}

	public void setUserYzm(String userYzm) {
		this.userYzm = userYzm;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public int getUserBarAge() {
		return userBarAge;
	}

	public void setUserBarAge(int userBarAge) {
		this.userBarAge = userBarAge;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public Date getLandingTime() {
		return landingTime;
	}

	public void setLandingTime(Date landingTime) {
		this.landingTime = landingTime;
	}

	public int getUserRoot() {
		return userRoot;
	}

	public void setUserRoot(int userRoot) {
		this.userRoot = userRoot;
	}

	public int getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}

	public int getUserPoints() {
		return userPoints;
	}

	public void setUserPoints(int userPoints) {
		this.userPoints = userPoints;
	}

	public Set<AttentionAndFans> getAttentionAndFans() {
		return attentionAndFans;
	}

	public void setAttentionAndFans(Set<AttentionAndFans> attentionAndFans) {
		this.attentionAndFans = attentionAndFans;
	}

	public Set<Replay> getReplays() {
		return replays;
	}

	public void setReplays(Set<Replay> replays) {
		this.replays = replays;
	}

	public User(int userId, String userName, String userMail, String userYzm,
			String userPwd, String userGender, int userBarAge,
			String userHeadImage, String userAddr, Date landingTime,
			int userRoot, int userGrade, int userPoints,
			Set<AttentionAndFans> attentionAndFans, Set<Replay> replays) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userMail = userMail;
		this.userYzm = userYzm;
		this.userPwd = userPwd;
		this.userGender = userGender;
		this.userBarAge = userBarAge;
		this.userHeadImage = userHeadImage;
		this.userAddr = userAddr;
		this.landingTime = landingTime;
		this.userRoot = userRoot;
		this.userGrade = userGrade;
		this.userPoints = userPoints;
		this.attentionAndFans = attentionAndFans;
		this.replays = replays;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", userMail=" + userMail + ", userYzm=" + userYzm
				+ ", userPwd=" + userPwd + ", userGender=" + userGender
				+ ", userBarAge=" + userBarAge + ", userHeadImage="
				+ userHeadImage + ", userAddr=" + userAddr + ", landingTime="
				+ landingTime + ", userRoot=" + userRoot + ", userGrade="
				+ userGrade + ", userPoints=" + userPoints
				+ ", attentionAndFans=" + attentionAndFans + ", replays="
				+ replays + "]";
	}

}
