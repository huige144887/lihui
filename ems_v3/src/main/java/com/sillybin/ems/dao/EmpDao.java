package com.sillybin.ems.dao;

import java.util.List;
import java.util.Map;

import com.sillybin.ems.entity.Emp;
public interface EmpDao {

	public List<Emp> findEmpListByQuery(Map<String, Object> paramMap) throws Exception;
	public List<Emp> findEmpList() throws Exception;

}
