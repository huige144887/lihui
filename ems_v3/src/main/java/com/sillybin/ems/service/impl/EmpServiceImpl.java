package com.sillybin.ems.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sillybin.ems.dao.EmpDao;
import com.sillybin.ems.entity.Emp;
import com.sillybin.ems.service.EmpService;
@Service("empService")
@Transactional
public class EmpServiceImpl implements EmpService{
	@Resource(name="empDao")
	private EmpDao empDao;
	
	public Emp getEmpByLogin(String loginName, String password) throws Exception {
		// 通过empDao进行按照条件查询，获得list
		Map<String, Object> paramMap = 
				new HashMap<String ,Object>();
		paramMap.put("loginName", loginName);
		paramMap.put("password", password);
		// 获得emp列表
		List<Emp> empList = empDao.findEmpListByQuery(paramMap);
		// 根据返回的结果进行判断
		if (empList != null && empList.size() == 1 ) {
			// 下标为0,就是获得第一行的表
			return empList.get(0);
		}
		return null;
	}

	public List<Emp> getEmpList() throws Exception {
		
		return empDao.findEmpList();
	}

}












