/**************************************************************************/
/****** 员工福利系统(EWMS: Employee Welfare Management System)数据库初始化脚本 ******/
/******Database Version: MySQL 5.7								     ******/
/**************************************************************************/

-- =========================================================================
-- 部门信息表：sys_dept
drop table if exists sys_dept;
create table sys_dept(
	dept_id int(10) not null auto_increment comment '部门主键',
	dept_name varchar(200) comment '部门名称',
	location varchar(200) comment '所在城市',
	telephone varchar(100) comment '联系电话',
	primary key(dept_id)
)Engine=InnoDB charset=utf8mb4 comment='部门信息表';

insert into sys_dept(dept_name, location, telephone) values('研发部', '西安', '029-66666666');
insert into sys_dept(dept_name, location, telephone) values('测试部', '西安', '029-88888888');
insert into sys_dept(dept_name, location, telephone) values('产品部', '上海', '021-86868886');
insert into sys_dept(dept_name, location, telephone) values('设计部', '上海', '021-12345678');
insert into sys_dept(dept_name, location, telephone) values('实施部', '北京', '010-87654321');
insert into sys_dept(dept_name, location, telephone) values('售后部', '北京', '010-13467925');
-- =========================================================================

-- =========================================================================
-- 角色信息表：sys_role
drop table if exists sys_role;
create table sys_role(
	role_id int(10) not null auto_increment comment '角色主键',
	role_name varchar(200) comment '角色名称',
	primary key(role_id)
)Engine=InnoDB charset=utf8mb4 comment='角色信息表';

insert into sys_role(role_name) values('经理');
insert into sys_role(role_name) values('员工');
-- =========================================================================

-- =========================================================================
-- 员工信息表：sys_emp
drop table if exists sys_emp;
create table sys_emp(
	emp_id int(10) not null auto_increment comment '员工主键',
	emp_name varchar(200) comment '员工姓名',
	login_name varchar(200) comment '登录名',
	password varchar(200) comment '登录密码，MD5加密',
	gender varchar(10) comment '员工性别：M-男，F-女',
	dept_id int(10) comment '所在部门',
	role_id int(10) comment '员工身份',
	id_card varchar(100) comment '身份证号码',
	cellphone varchar(100) comment '联系电话',
	birthday date comment '出生日期',
	status varchar(10) comment '状态：Y-启用，N-禁用',
	primary key(emp_id)
)Engine=InnoDB charset=utf8mb4 comment='员工信息表';

insert into sys_emp(emp_name, login_name, password, gender, dept_id, role_id, status) values('王富贵', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'M', 1, 1, 'Y');
-- =========================================================================

-- =========================================================================
-- 福利信息表：sys_welfare
drop table if exists sys_welfare;
create table sys_welfare(
	welfare_id int(10) not null auto_increment comment '福利主键',
	welfare_name varchar(200) comment '福利名称',
	primary key(welfare_id)
)Engine=InnoDB charset=utf8mb4 comment='福利信息表';

insert into sys_welfare(welfare_name) values('养老保险');
insert into sys_welfare(welfare_name) values('工伤保险');
insert into sys_welfare(welfare_name) values('生育保险');
insert into sys_welfare(welfare_name) values('医疗保险');
insert into sys_welfare(welfare_name) values('失业保险');
insert into sys_welfare(welfare_name) values('住房公积金');
-- =========================================================================

-- =========================================================================
-- 员工福利中间表：sys_emp_welfare
drop table if exists sys_role_welfare;
create table sys_emp_welfare(
	emp_id int(10) comment '员工主键',
	welfare_id int(10) comment '福利主键'
)Engine=InnoDB charset=utf8mb4 comment='福利信息表';