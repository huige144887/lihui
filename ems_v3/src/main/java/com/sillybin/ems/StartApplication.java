package com.sillybin.ems;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
	
@ComponentScan				// 扫描位置起点
@EnableAutoConfiguration     //自动配置
@MapperScan(basePackages = {"com.sillybin.ems.dao"})
public class StartApplication {
	public static void main(String[] args) {
		// 通过以下代码可以启动spring boot框架
		SpringApplication.run(StartApplication.class, args);

	}
}
