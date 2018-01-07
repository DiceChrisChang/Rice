
-- 创建 dept table 
-- DROP TABLE IF EXISTS `dept`;
-- CREATE TABLE IF NOT EXISTS `dept` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
--   `num` int(11) DEFAULT NULL COMMENT '排序',
--   `pid` int(11) DEFAULT NULL COMMENT '父部门id',
--   `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
--   `simplename` varchar(255) DEFAULT NULL COMMENT '简称',
--   `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
--   `tips` varchar(255) DEFAULT NULL COMMENT '提示',
--   `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
--   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '部门创建时间',
--   `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '部门修改时间',
--   PRIMARY KEY (`id`)
--   )    ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='部门表';

-- 向 dept table 插入数据
-- INSERT INTO `dept` ( `num`, `pid`, `pids`, `simplename`, `fullname`, `tips`, `version`) VALUES
-- ( 1, 0, '[0],', '总公司', '总公司', '', NULL),
-- ( 2, 1, '[0],[1]', '订单部', '订单部', '', NULL),
-- ( 3, 1, '[0],[1]', '仓储部', '仓储部', '', NULL),
-- ( 4, 1, '[0],[1]', '管理部', '管理部', '', NULL);

-- 创建 role table 
-- DROP TABLE IF EXISTS `role`;
-- CREATE TABLE IF NOT EXISTS `role` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
--   `num` int(11) DEFAULT NULL COMMENT '序号',
--   `pid` int(11) DEFAULT NULL COMMENT '父角色id',
--   `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
--   `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
--   `tips` varchar(255) DEFAULT NULL COMMENT '提示',
--   `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
--   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '角色创建时间',
--   `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '角色修改时间',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

 -- 向 role table 插入数据
 -- INSERT INTO `role` (`id`, `num`, `pid`, `name`, `deptid`, `tips`, `version`) VALUES
 -- ( 1, 1, 0, '超级管理员', 1, '全局超级管理员', NULL),
 -- ( 2, 2, 1, '订单部管理员', 2, '订单管理', NULL),
 -- ( 3, 3, 2, '订单部操作员', 2, '订单管理', NULL),
 -- ( 4, 4, 1, '仓储部管理员', 3, '仓储管理', NULL),
 -- ( 5, 5, 4, '仓储部操作员', 3, '仓储管理', NULL),
 -- ( 6, 6, 1, '管理部管理员', 4, '统计监察管理', NULL);


 -- 创建 user table
 -- DROP TABLE IF EXISTS `user`;
 -- CREATE TABLE IF NOT EXISTS `user` (
 --   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
 --   `name` varchar(45) DEFAULT NULL COMMENT '名字',
 --   `account` varchar(45) DEFAULT NULL COMMENT '账号',
 --   `password` varchar(45) DEFAULT NULL COMMENT '密码',
 --   `salt` varchar(255) DEFAULT NULL COMMENT 'md5密码盐',
 --   `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
 --   `phone` varchar(45) DEFAULT NULL COMMENT '电话',
 --   `roleid` int(11) DEFAULT NULL COMMENT '角色id',
 --   `deptid` int(11) DEFAULT NULL COMMENT '部门id',
 --   `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结 ）',
 --   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
 --   `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户修改时间',
 --   `version` int(11) DEFAULT NULL COMMENT '保留字段',
 --   PRIMARY KEY (`id`)
 -- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';


 -- 向 user 插入数据
 -- INSERT INTO `user` (`name`, `account`, `password`, `email`, `phone`, `roleid`, `deptid`, `status`) VALUES
 -- ('李方彦','admin','admin','lifangyan@qq.com','18011001100',1,1,1 ),
 -- ('赵静仲','adminfake','adminfake','zhaojingzhong@qq.com','18011001101',1,1,2 ),
 -- ('金宇晟','orderadmin','orderadmin','jinyusheng@qq.com','18011001102',2,2,1 ),
 -- ('宁珑','inventoryadmin','inventoryadmin','ninglong@qq.com','18011001103',4,3,1 ),
 -- ('王彭凯','manageradmin','manageradmin','wangpengkai@qq.com','18011001104',6,4,1 );



-- 创建 login-in table
-- DROP TABLE IF EXISTS `login_log`;
-- CREATE TABLE IF NOT EXISTS `login_log` (
--   `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
--   `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
--   `userid` int(65) DEFAULT NULL COMMENT '管理员id',
--   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
--   `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
--   `message` text COMMENT '具体消息',
--   `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- 向 login-in table 插入数据 
-- INSERT INTO `login_log` (`logname`, `userid`, `succeed`, `message`, `ip`) VALUES
-- ('退出日志', 1, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 1, '成功', NULL, '127.0.0.1'),
-- ('退出日志', 3, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 3, '成功', NULL, '127.0.0.1'),
-- ('退出日志', 4, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 4, '成功', NULL, '127.0.0.1'),
-- ('退出日志', 5, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 5, '成功', NULL, '127.0.0.1'),
-- ('退出日志', 1, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 1, '成功', NULL, '127.0.0.1'),
-- ('退出日志', 4, '成功', NULL, '127.0.0.1'),
-- ('登录日志', 4, '成功', NULL, '127.0.0.1');


-- 创建 dict table 
-- DROP TABLE IF EXISTS `dict`;
-- CREATE TABLE IF NOT EXISTS `dict` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
--   `pid` int(11) DEFAULT NULL COMMENT '父级字典',
--   `name` varchar(255) DEFAULT NULL COMMENT '名称',
--   `tips` varchar(255) DEFAULT NULL COMMENT '提示',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- 向 table
-- INSERT INTO `dict` ( `pid`, `name`, `tips`) VALUES
-- (0, '账号状态', NULL),
-- (1, '启用', NULL),
-- (1, '冻结', NULL),
-- (0, '菜单状态', NULL),
-- (3, '启用', NULL),
-- (3, '不启用', NULL);



-- 创建 menu table 
-- DROP TABLE IF EXISTS `menu`;
-- CREATE TABLE IF NOT EXISTS `menu` (
--   `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键id',
--   `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
--   `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
--   `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
--   `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
--   `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
--   `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
--   `tips` varchar(255) DEFAULT NULL COMMENT '备注',
--   `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='菜单表';

INSERT INTO `menu`(`code`,`pcode`,`pcodes`,`name`,`url`,`levels`,`tips`,`status`) VALUES
('system','0','[0],','系统管理','',1,NULL,1),
('mgr','system','[0],[system],','用户管理','',2,NULL,1),
('mgr_add',' mgr','[0],[system],[mgr],','添加用户','',3,NULL,1),
('mgr_setRole',' mgr','[0],[system],[mgr],','分配角色给用户','',3,NULL,1),
('mgr_edit',' mgr','[0],[system],[mgr],','修改用户','',3,NULL,1),
('mgr_delete',' mgr','[0],[system],[mgr],','删除用户','',3,NULL,1),
('mgr_freeze',' mgr','[0],[system],[mgr],','冻结用户','',3,NULL,1),
('mgr_unfreeze',' mgr','[0],[system],[mgr],','解除用户冻结','',3,NULL,1),
('mgr_add',' mgr','[0],[system],[mgr],','添加用户','',3,NULL,1),
('role', 'system', '[0],[system],', '角色管理','',2,NULL,1),
('role_add', 'role', '[0],[system],[role],', '添加角色','',3,NULL,1),
('role_edit', 'role', '[0],[system],[role],', '修改角色','',3,NULL,1),
('role_delete', 'role', '[0],[system],[role],', '删除角色','',3,NULL,1),
('role_setAuthority', 'role', '[0],[system],[role],', '配置权限','',3,NULL,1),
('menu', 'system', '[0],[system],', '菜单管理','',2,NULL,1),
('menu_add', 'menu', '[0],[system],[menu],', '添加菜单','',3,NULL,1),
('menu_edit', 'menu', '[0],[system],[menu],', '修改菜单','',3,NULL,1),
('menu_delete', 'menu', '[0],[system],[menu],', '删除菜单','',3,NULL,1),
('log', 'system', '[0],[system],', '业务日志','', 2, NULL, 1),
('log_clean', 'log', '[0],[system],[log],', '清空日志','', 3, NULL, 1),
('dept', 'system', '[0],[system],', '部门管理','',2, NULL,1),
('dept_add', 'dept', '[0],[system],[dept],', '添加部门','',3, NULL, 1),
('dept_update', 'dept', '[0],[system],[dept],', '修改部门','',3, NULL, 1),
('dept_delete', 'dept', '[0],[system],[dept],', '删除部门', '', 3,NULL, 1);

