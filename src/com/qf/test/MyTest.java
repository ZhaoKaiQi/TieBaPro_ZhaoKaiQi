package com.qf.test;

import org.junit.Test;

import com.qf.untils.EmailUtils;

public class MyTest {

	@Test
	public void test1(){
		EmailUtils.sendEmail("1447354054@qq.com", 1234);
	}
}
