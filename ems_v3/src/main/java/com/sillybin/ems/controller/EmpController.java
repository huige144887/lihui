package com.sillybin.ems.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.sillybin.ems.controller.base.BaseController;
import com.sillybin.ems.entity.Emp;
import com.sillybin.ems.service.EmpService;
import com.sillybin.ems.util.ConstantUtil;
import com.sillybin.ems.util.EncryptionUtil;

@Controller("empController")
@RequestMapping("/emp")
public class EmpController extends BaseController{
	@Resource(name="empService")
	private EmpService empService;
	// 登录请求
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String getEmpLoginForm() throws Exception {
		
		return "emp/emp_login_form";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginEmp(String loginName, String password) throws Exception {
		// 设定重定向视图，默认是登录失败的情况,是登录界面  
		RedirectView view = new RedirectView(request.getContextPath()+"/emp/login");
			// 判断登录名和密码是否填写
		if (loginName != null&& !"".equals(loginName.trim())
				&&password != null && !"".equals(password.trim())){
				// 对密码加密
			password = EncryptionUtil.encrypt(password);
			// 调用业务层来查找登录
			Emp emp = empService.getEmpByLogin(loginName,password);
		if (emp != null&&ConstantUtil.STATUS_YES.equals(emp.getStatus())) {
			// 状态启用且emp对象不为空时才算登录成功，绑定session对象
			session.setAttribute("emp", emp);
			// 将重定向视图更改为列表页面，此时才算登录成功
			view.setUrl(request.getContextPath()+"/emp/index");
		 }
		}
		return new ModelAndView(view);
	}
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String getEmpIndex() throws Exception{
		
		return "emp/emp_index";
	}
	@RequestMapping(value="/list", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getEmoList() throws Exception{
		Map<String, Object> resultMap = new
					HashMap<String, Object>();
		List<Emp> empList = empService.getEmpList();
		resultMap.put("data", empList);
		
		return resultMap;
	}
}















