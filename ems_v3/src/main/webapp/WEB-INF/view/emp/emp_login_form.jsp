<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
		<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>
 <h1>员工管理系统登录</h1>
<div class="login-form">
		<div class="head-info">
		</div>
	<div class="clear"> </div>
	<div class="avtar">
		<img src="<%=request.getContextPath() %>/static/images/avtar.png" />
	</div>
			<form action="<%=request.getContextPath() %>/emp/login" method="post">
					<input type="text" class="text" name="loginName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请填写登录名';}" >
						<div class="key">
					<input type="password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请填写密码';}">
						</div>
	<div class="signin">
		<input type="submit" value="登录" >
	</div>
			</form>

</div>
 <div class="copy-rights">
					<p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="员工管理系统">员工管理系统</a> - Collect from <a href="http://www.cssmoban.com/" title="福利系统" target="_blank">福利系统</a></p>
			</div>

</body>
	</body>
</html>