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

	public void setSessionFactory(SessionFactory sessionFactory) { // 这里是可以通过set的方法进行注入的
		this.sessionFactory = sessionFactory;
	}

	/**
	 * @Title: savePicture
	 * @Description: 这个是保存Picture的方法
	 * @param @param Picture
	 * @return void
	 * @throws
	 */
	public void savePicture(final Picture picture) {
		System.out.println("我执行到保存picture信息的Dao层了，这里传来的值是：" + picture);
		// 首先要判断要保存的图片是否存在
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
			System.out.println("图片已经保存过,不需重新保存");
		} else {
			System.out.println("图片未保存过，可以正常保存");
			sessionFactory.openSession().save(picture);
			//getHibernateTemplate().save(picture);
		}
	}
}