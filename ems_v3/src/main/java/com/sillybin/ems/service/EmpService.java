package com.sillybin.ems.service;

import java.util.List;

import com.sillybin.ems.entity.Emp;

public interface EmpService {

	public Emp getEmpByLogin(String loginName, String password) throws Exception;

	public List<Emp> getEmpList() throws Exception;
	
}
