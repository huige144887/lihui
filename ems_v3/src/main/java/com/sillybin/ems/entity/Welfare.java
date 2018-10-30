package com.sillybin.ems.entity;

import java.io.Serializable;
import java.util.List;

public class Welfare implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long welfareId;
	private String welfareName;
	private List<Emp> empList;
	
	public Long getWelfareId() {
		return welfareId;
	}
	public void setWelfareId(Long welfareId) {
		this.welfareId = welfareId;
	}
	public String getWelfareName() {
		return welfareName;
	}
	public void setWelfareName(String welfareName) {
		this.welfareName = welfareName;
	}
	public List<Emp> getEmpList() {
		return empList;
	}
	public void setEmpList(List<Emp> empList) {
		this.empList = empList;
	}
}
