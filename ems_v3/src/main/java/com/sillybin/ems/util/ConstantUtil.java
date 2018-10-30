package com.sillybin.ems.util;

import java.util.Properties;

public class ConstantUtil {
	private static Properties props = new Properties();
	
	static {
		try {
			props.load(ConstantUtil.class.getClassLoader()
					.getResourceAsStream("ems.properties"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static final String GENDER_MALE = props.getProperty("system.gender.male");
	
	public static final String GENDER_FELMALE = props.getProperty("system.gender.female");
	
	public static final String STATUS_YES = props.getProperty("system.status.yes");
	
	public static final String STATUS_NO = props.getProperty("system.status.no");
	
	public static final Integer PAGE_NUM = Integer.parseInt(props.getProperty("system.page.num"));

	public static final Integer PAGE_SIZE = Integer.parseInt(props.getProperty("system.page.size"));
}
