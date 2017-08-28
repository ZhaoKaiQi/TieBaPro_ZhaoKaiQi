package com.qf.untils;

import java.util.Date;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * ���ߣ����� ʱ�䣺2017��5��26�� �汾��v1.0 ˵����
 */
public class EmailUtils {

	public static void sendEmail(String email, int code) {
		String myAccount = "lx_teach@163.com";
		String myPass = "cd1688";// ��Ȩ�룬������cd1702
		// ����163����� SMTP ��������ַΪ: smtp.163.com
		String SMTPHost = "smtp.163.com";
		// 1. ������������, ���������ʼ��������Ĳ�������
		Properties props = new Properties(); // ��������
		props.setProperty("mail.transport.protocol", "smtp"); // ʹ�õ�Э�飨JavaMail�淶Ҫ��
		props.setProperty("mail.smtp.host", SMTPHost); // �����˵������ SMTP ��������ַ
		props.setProperty("mail.smtp.auth", "true"); // ��Ҫ������֤
		// 2. �������ô����Ự����, ���ں��ʼ�����������
		Session session = Session.getDefaultInstance(props);
		session.setDebug(true); // ����Ϊdebugģʽ, ���Բ鿴��ϸ�ķ��� log
		try {
			// 3. ����һ���ʼ�
			MimeMessage message = createMsg(session, myAccount, email, code);
			// 4. ���� Session ��ȡ�ʼ��������
			Transport transport = session.getTransport();
			// 5. �������������
			transport.connect(myAccount, myPass);// ��ס�����������Ȩ��
			// 6. �����ʼ�, �������е��ռ���ַ, message.getAllRecipients()
			// ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���,
			// ������, ������
			transport.sendMessage(message, message.getAllRecipients());
			// 7. �ر�����
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * ����һ�⼤����Ϣ���ʼ�
	 * 
	 * @param session
	 *            �ͷ����������ĻỰ
	 * @param sendMail
	 *            ����������
	 * @param user
	 *            �û�����
	 */
	private static MimeMessage createMsg(Session session, String sendMail,
			String email, int code) throws Exception {
		// 1. ����һ���ʼ�
		MimeMessage message = new MimeMessage(session);
		// 2. From: ������
		message.setFrom(new InternetAddress(sendMail, "���ڰ�", "UTF-8"));
		// 3. To: �ռ��ˣ��������Ӷ���ռ��ˡ����͡����ͣ�
		message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(
				email, "���𾴵��û�", "UTF-8"));
		// 4. Subject: �ʼ�����
		message.setSubject("���ڰ�����ע����֤��", "UTF-8");
		// String ip = InetAddress.getLocalHost().getHostAddress();
		// String url="http://" + ip
		// + ":8080/DDW_Shopping/activate?e=" +user.getUserMail() + "&c="+code;
		// System.out.println(url);
		// 5. Content: �ʼ����ģ�����ʹ��html��ǩ��
		message.setContent("�𾴵����ڰ���פ�û�������:����������ע����֤�룬������ʱ���ע�ᣬ����й¶��֤��Ϣ��<br/> ���ɵ���֤�룺" + code+"<br/>ף��������죡", "text/html;charset=UTF-8");
		// 6. ���÷���ʱ��
		message.setSentDate(new Date());
		// 7. ��������
		message.saveChanges();
		return message;
	}
}
