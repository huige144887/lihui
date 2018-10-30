package com.sillybin.ems.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Emp implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long empId;
	private String empName;
	private String loginName;
	private String password;
	private String gender;
	private Dept dept;
	private Role role;
	private String idCard;
	private Date birthday;
	private String cellphone;
	private String status;
	private List<Welfare> welfareList;
	
	public Long getEmpId() {
		return empId;
	}
	public void setEmpId(Long empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<Welfare> getWelfareList() {
		return welfareList;
	}
	public void setWelfareList(List<Welfare> welfareList) {
		this.welfareList = welfareList;
	}
}
