package com.qf.untils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

/**
 * 
 * @ClassName: ObjUtils
 * @Description: 这个类主要用于封装请求的数据
 * @author 赵凯琦
 * @date 2017-5-20 上午1:11:28
 * 
 */

public class ObjUtils {
	public static <T> T getParametes(HttpServletRequest request, Class clazz)
			throws InstantiationException, IllegalAccessException,
			InvocationTargetException {
		// 创建请求对象
		T t = (T) clazz.newInstance();
		// 将数据封装进去
		BeanUtils.populate(t, request.getParameterMap());

		return t;
	}
}
