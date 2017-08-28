package com.qf.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.qf.dao.IPictureDao;
import com.qf.entity.Picture;

public class PictureDao implements IPictureDao {
	Picture picture=null;

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	private SessionFactory sessionFactory = null;

	public void setSessionFactory(SessionFactory sessionFactory) { // �����ǿ���ͨ��set�ķ�������ע���
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: savePicture
	 * @Description: ����Ǳ���Picture�ķ���
	 * @param @param Picture
	 * @return void
	 * @throws
	 */
	public void savePicture(final Picture picture) {
		System.out.println("��ִ�е�����picture��Ϣ��Dao���ˣ����ﴫ����ֵ�ǣ�" + picture);
		// ����Ҫ�ж�Ҫ�����ͼƬ�Ƿ����
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Picture where picUrl=?");
		query.setParameter(0, picture.getPicUrl());
		List<Picture> pictures = query.list();
		//List<?> pictures =getHibernateTemplate().find("from Picture where picUrl=?", picture.getPicUrl());
		/*List<Picture> execute = getHibernateTemplate().execute(new HibernateCallback<List<Picture>>() {
			@Override
			public List<Picture> doInHibernate(Session session)
					throws HibernateException {
				String hql="from Picture where picUrl=?";
				 Query query = session.createQuery(hql);
				 query.setParameter(0, picture.getPicUrl());
				 List<Picture> pictures=query.list();
				 return pictures;
		}});*/
		if (pictures.size() > 0) {
			System.out.println("ͼƬ�Ѿ������,�������±���");
		} else {
			System.out.println("ͼƬδ�������������������");
			sessionFactory.openSession().save(picture);
			//getHibernateTemplate().save(picture);
		}
	}
}