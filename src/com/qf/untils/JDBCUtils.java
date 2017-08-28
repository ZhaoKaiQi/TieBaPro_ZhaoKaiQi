package com.qf.untils;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCUtils {
	static ComboPooledDataSource dataSource = null;
	static {
		dataSource = new ComboPooledDataSource();
	}

	/**
	 * 
	 * @Title: getQueryRunner
	 * @Description: ��ȡ�������ݿ�Ķ���
	 * @param @return
	 * @return QueryRunner
	 * @throws
	 */
	public static QueryRunner getQueryRunner() {
		return new QueryRunner(dataSource);
	}
}
