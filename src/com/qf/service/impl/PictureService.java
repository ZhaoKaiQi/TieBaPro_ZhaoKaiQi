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
	 * @Description: 这个是保存Picture的方法
	 * @param @param Picture
	 * @return void
	 * @throws
	 */
	@Override
	public void savePicture(Picture picture) {
		if (null == picture.getPicUrl() || "".equals(picture.getPicUrl())) {
			throw new RuntimeException("输入参数异常，无法执行基本存储...");
		} else {
			System.out.println("执行到picture的业务逻辑层了："+picture);
			pictureDao.savePicture(picture);
		}
	}
}
