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


 创建 user table
 DROP TABLE IF EXISTS `user`;
 CREATE TABLE IF NOT EXISTS `user` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
   `name` varchar(45) DEFAULT NULL COMMENT '名字',
   `account` varchar(45) DEFAULT NULL COMMENT '账号',
   `password` varchar(45) DEFAULT NULL COMMENT '密码',
   `salt` varchar(255) DEFAULT NULL COMMENT 'md5密码盐',
   `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
   `phone` varchar(45) DEFAULT NULL COMMENT '电话',
   `roleid` int(11) DEFAULT NULL COMMENT '角色id',
   `deptid` int(11) DEFAULT NULL COMMENT '部门id',
   `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结 ）',
   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
   `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户修改时间',
   `version` int(11) DEFAULT NULL COMMENT '保留字段',
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';



INSERT INTO `user` (`name`, `account`, `password`, `salt`, `email`, `phone`, `roleid`, `deptid`, `status`, `create_time`,`changed_time`) VALUES
('李方彦'，'admin',)

(1, 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', 2, 'sn93@qq.com', '18200000000', '1', 27, 1, '2016-01-29 08:49:53', 25),
(44, NULL, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', 1, 'abc@123.com', '', '5', 26, 1, '2017-05-16 20:33:37', NULL);
