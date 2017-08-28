package com.qf.untils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

/**
 * 
 * @ClassName: ObjUtils
 * @Description: �������Ҫ���ڷ�װ���������
 * @author �Կ���
 * @date 2017-5-20 ����1:11:28
 * 
 */

public class ObjUtils {
	public static <T> T getParametes(HttpServletRequest request, Class clazz)
			throws InstantiationException, IllegalAccessException,
			InvocationTargetException {
		// �����������
		T t = (T) clazz.newInstance();
		// �����ݷ�װ��ȥ
		BeanUtils.populate(t, request.getParameterMap());

		return t;
	}
}
