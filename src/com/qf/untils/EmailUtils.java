package com.qf.untils;

import java.util.Date;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * 作者：老邢 时间：2017年5月26日 版本：v1.0 说明：
 */
public class EmailUtils {

	public static void sendEmail(String email, int code) {
		String myAccount = "lx_teach@163.com";
		String myPass = "cd1688";// 授权码，密码是cd1702
		// 网易163邮箱的 SMTP 服务器地址为: smtp.163.com
		String SMTPHost = "smtp.163.com";
		// 1. 创建参数配置, 用于连接邮件服务器的参数配置
		Properties props = new Properties(); // 参数配置
		props.setProperty("mail.transport.protocol", "smtp"); // 使用的协议（JavaMail规范要求）
		props.setProperty("mail.smtp.host", SMTPHost); // 发件人的邮箱的 SMTP 服务器地址
		props.setProperty("mail.smtp.auth", "true"); // 需要请求认证
		// 2. 根据配置创建会话对象, 用于和邮件服务器交互
		Session session = Session.getDefaultInstance(props);
		session.setDebug(true); // 设置为debug模式, 可以查看详细的发送 log
		try {
			// 3. 创建一封邮件
			MimeMessage message = createMsg(session, myAccount, email, code);
			// 4. 根据 Session 获取邮件传输对象
			Transport transport = session.getTransport();
			// 5. 连接邮箱服务器
			transport.connect(myAccount, myPass);// 记住这个密码是授权码
			// 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients()
			// 获取到的是在创建邮件对象时添加的所有收件人,
			// 抄送人, 密送人
			transport.sendMessage(message, message.getAllRecipients());
			// 7. 关闭连接
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 创建一封激活信息的邮件
	 * 
	 * @param session
	 *            和服务器交互的会话
	 * @param sendMail
	 *            发件人邮箱
	 * @param user
	 *            用户对象
	 */
	private static MimeMessage createMsg(Session session, String sendMail,
			String email, int code) throws Exception {
		// 1. 创建一封邮件
		MimeMessage message = new MimeMessage(session);
		// 2. From: 发件人
		message.setFrom(new InternetAddress(sendMail, "自在吧", "UTF-8"));
		// 3. To: 收件人（可以增加多个收件人、抄送、密送）
		message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(
				email, "致尊敬的用户", "UTF-8"));
		// 4. Subject: 邮件主题
		message.setSubject("自在吧贴吧注册验证码", "UTF-8");
		// String ip = InetAddress.getLocalHost().getHostAddress();
		// String url="http://" + ip
		// + ":8080/DDW_Shopping/activate?e=" +user.getUserMail() + "&c="+code;
		// System.out.println(url);
		// 5. Content: 邮件正文（可以使用html标签）
		message.setContent("尊敬的自在吧新驻用户，您好:下面是您的注册验证码，请您及时完成注册，切勿泄露验证信息！<br/> 贴吧的验证码：" + code+"<br/>祝您体验愉快！", "text/html;charset=UTF-8");
		// 6. 设置发件时间
		message.setSentDate(new Date());
		// 7. 保存设置
		message.saveChanges();
		return message;
	}
}
