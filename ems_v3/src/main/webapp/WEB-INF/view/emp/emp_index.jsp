<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/jquery.dataTables.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/dataTables.bootstrap.min.css">
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$("#emptable").DataTable({
					"searching": false,  // 关闭搜索框
					"lengthChange": false,  // 关闭显示分页按钮
					"sort": false,       // 关闭排序
					"language": {
						"sProcessing":   "处理中...",
					    "sLengthMenu":   "显示 _MENU_ 项结果",
					    "sZeroRecords":  "没有匹配结果",
					    "sInfo":         "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
					    "sInfoEmpty":    "显示第 0 至 0 项结果，共 0 项",
					    "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
					    "sInfoPostFix":  "",
					    "sSearch":       "搜索:",
					    "sUrl":          "",
					    "sEmptyTable":     "表中数据为空",
					    "sLoadingRecords": "载入中...",
					    "sInfoThousands":  ",",
					    "oPaginate": {
					        "sFirst":    "首页",
					        "sPrevious": "上页",
					        "sNext":     "下页",
					        "sLast":     "末页"
					    },
					    "oAria": {
					        "sSortAscending":  ": 以升序排列此列",
					        "sSortDescending": ": 以降序排列此列"
					    }
					}
				});
			});
		</script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="background: aqua; height: 80px;"></div>
			</div>
			<div class="row">
				<div class="col-md-12" style="padding: 0px">				
					<nav class="navbar navbar-default" role="navigation" style="margin: 0px">
			    		<div class="container-fluid">
			    			<div class="navbar-header">
			        		<a class="navbar-brand" href="#">员工福利系统</a>
					        <ul class="nav navbar-nav-left">
					            <li class="active"><a href="#">员工信息管理</a></li>
					            <li><a href="#">部门信息管理</a></li>
			            		<li><a href="#">福利信息管理</a></li>
		                   	</ul>
			    			</div>
			   		 <div>
                     	<ul class="nav navbar-nav navbar-right">
                     		<li>
                     			<a href="#">
                     				<span class="glyphicon glyphicon-user"></span>
                     				<label>欢迎：${sessionScope.emp.empName }</label>
                     			</a>
                     		</li>
                     	</ul>
                     </div>
                     </div>
                   </nav>			
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" style="padding: 0px">
					<table id="emptable" class="table table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>员工姓名</th>
								<th>登录名</th>
								<th>性别</th>
								<th>所在部门</th>
								<th>职位</th>
								<th>身份证号码</th>
								<th>出生日期</th>
								<th>联系电话</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>唐凡</td>
								<td>tangfan</td>
								<td>男</td>
								<td>测试部</td>
								<td>员工</td>
								<td>61252119890725487X</td>
								<td>1994-01-05</td>
								<td>13999157887</td>
								<td>启用</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>