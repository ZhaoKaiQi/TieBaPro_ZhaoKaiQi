package com.qf.service.impl;

import com.qf.dao.impl.PictureDao;
import com.qf.entity.Picture;
import com.qf.service.IPictureService;

public class PictureService implements IPictureService {
	private PictureDao pictureDao;

	public void setPictureDao(PictureDao pictureDao) {
		this.pictureDao = pictureDao;
	}
	/**
	 * @Title: savePicture
	 * @Description: ����Ǳ���Picture�ķ���
	 * @param @param Picture
	 * @return void
	 * @throws
	 */
	@Override
	public void savePicture(Picture picture) {
		if (null == picture.getPicUrl() || "".equals(picture.getPicUrl())) {
			throw new RuntimeException("��������쳣���޷�ִ�л����洢...");
		} else {
			System.out.println("ִ�е�picture��ҵ���߼����ˣ�"+picture);
			pictureDao.savePicture(picture);
		}
	}
}
