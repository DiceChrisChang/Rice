-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-01-08 06:17:11
-- 服务器版本： 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rice`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL COMMENT '分销商地址id',
  `contacter` varchar(255) NOT NULL COMMENT '联系人',
  `contact_number` int(11) NOT NULL COMMENT '联系人地址',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销商地址表';

-- --------------------------------------------------------

--
-- 表的结构 `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(255) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '部门创建时间',
  `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '部门修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='部门表';

--
-- 转存表中的数据 `dept`
--

INSERT INTO `dept` (`id`, `num`, `pid`, `pids`, `simplename`, `fullname`, `tips`, `version`, `create_time`, `changed_time`) VALUES
(1, 1, 0, '[0],', '总公司', '总公司', '', NULL, '2018-01-06 04:48:11', '2018-01-06 04:48:11'),
(2, 2, 1, '[0],[1]', '订单部', '订单部', '', NULL, '2018-01-06 04:48:11', '2018-01-06 04:48:11'),
(3, 3, 1, '[0],[1]', '仓储部', '仓储部', '', NULL, '2018-01-06 04:48:11', '2018-01-06 04:48:11'),
(4, 4, 1, '[0],[1]', '管理部', '管理部', '', NULL, '2018-01-06 04:48:11', '2018-01-06 04:48:11');

-- --------------------------------------------------------

--
-- 表的结构 `dict`
--

DROP TABLE IF EXISTS `dict`;
CREATE TABLE IF NOT EXISTS `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

--
-- 转存表中的数据 `dict`
--

INSERT INTO `dict` (`id`, `pid`, `name`, `tips`) VALUES
(1, 0, '账号状态', NULL),
(2, 1, '启用', NULL),
(3, 1, '冻结', NULL),
(4, 0, '菜单状态', NULL),
(5, 3, '启用', NULL),
(6, 3, '不启用', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `login_log`
--

DROP TABLE IF EXISTS `login_log`;
CREATE TABLE IF NOT EXISTS `login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='登录记录';

--
-- 转存表中的数据 `login_log`
--

INSERT INTO `login_log` (`id`, `logname`, `userid`, `create_time`, `succeed`, `message`, `ip`) VALUES
(1, '退出日志', 1, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(2, '登录日志', 1, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(3, '退出日志', 3, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(4, '登录日志', 3, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(5, '退出日志', 4, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(6, '登录日志', 4, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(7, '退出日志', 5, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(8, '登录日志', 5, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(9, '退出日志', 1, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(10, '登录日志', 1, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(11, '退出日志', 4, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1'),
(12, '登录日志', 4, '2018-01-06 09:29:11', '成功', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `code`, `pcode`, `pcodes`, `name`, `url`, `levels`, `tips`, `status`) VALUES
(1, 'system', '0', '[0],', '系统管理', '', 1, NULL, 1),
(2, 'mgr', 'system', '[0],[system],', '用户管理', '', 2, NULL, 1),
(3, 'mgr_add', ' mgr', '[0],[system],[mgr],', '添加用户', '', 3, NULL, 1),
(4, 'mgr_setRole', ' mgr', '[0],[system],[mgr],', '分配角色给用户', '', 3, NULL, 1),
(5, 'mgr_edit', ' mgr', '[0],[system],[mgr],', '修改用户', '', 3, NULL, 1),
(6, 'mgr_delete', ' mgr', '[0],[system],[mgr],', '删除用户', '', 3, NULL, 1),
(7, 'mgr_freeze', ' mgr', '[0],[system],[mgr],', '冻结用户', '', 3, NULL, 1),
(8, 'mgr_unfreeze', ' mgr', '[0],[system],[mgr],', '解除用户冻结', '', 3, NULL, 1),
(9, 'mgr_add', ' mgr', '[0],[system],[mgr],', '添加用户', '', 3, NULL, 1),
(10, 'role', 'system', '[0],[system],', '角色管理', '', 2, NULL, 1),
(11, 'role_add', 'role', '[0],[system],[role],', '添加角色', '', 3, NULL, 1),
(12, 'role_edit', 'role', '[0],[system],[role],', '修改角色', '', 3, NULL, 1),
(13, 'role_delete', 'role', '[0],[system],[role],', '删除角色', '', 3, NULL, 1),
(14, 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', '', 3, NULL, 1),
(15, 'menu', 'system', '[0],[system],', '菜单管理', '', 2, NULL, 1),
(16, 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', '', 3, NULL, 1),
(17, 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', '', 3, NULL, 1),
(18, 'menu_delete', 'menu', '[0],[system],[menu],', '删除菜单', '', 3, NULL, 1),
(19, 'log', 'system', '[0],[system],', '业务日志', '', 2, NULL, 1),
(20, 'log_clean', 'log', '[0],[system],[log],', '清空日志', '', 3, NULL, 1),
(21, 'dept', 'system', '[0],[system],', '部门管理', '', 2, NULL, 1),
(22, 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', '', 3, NULL, 1),
(23, 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', '', 3, NULL, 1),
(24, 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', '', 3, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL COMMENT '订单id',
  `product_id` int(11) NOT NULL COMMENT '产品编号',
  `price` int(11) NOT NULL COMMENT '单价',
  `count` int(20) NOT NULL COMMENT '数量',
  `reseller_id` int(11) NOT NULL COMMENT '分销商ID',
  `address_id` int(11) NOT NULL COMMENT '分销商地址ID',
  `delivery_time` datetime NOT NULL COMMENT '出货时间',
  `order_status` int(11) NOT NULL COMMENT '订单状态',
  `delivery_number` int(11) NOT NULL COMMENT '物流单号',
  `delivery_company` int(11) NOT NULL COMMENT '物流公司名称',
  `delivery_cost` int(11) NOT NULL COMMENT '运费',
  `order_option` int(11) NOT NULL COMMENT '订单类型',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  `pay_status` int(11) NOT NULL COMMENT '付款状态',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `reseller_id` (`reseller_id`),
  KEY `address_id` (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `package`
--

DROP TABLE IF EXISTS `package`;
CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL COMMENT 'id',
  `type` varchar(30) NOT NULL COMMENT '包装类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(25) NOT NULL COMMENT '名称',
  `product_code` varchar(25) NOT NULL COMMENT '产品编码',
  `min_inventory` int(11) NOT NULL COMMENT '库存预警阀值',
  `cost_price` int(11) NOT NULL COMMENT '成本价格',
  `first_price` int(11) NOT NULL COMMENT '一级分销商价格',
  `second_price` int(11) NOT NULL COMMENT '二级分销商价格',
  `size` int(11) NOT NULL COMMENT '规格',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modify_time` timestamp NOT NULL COMMENT '修改时间',
  `package_id` int(11) NOT NULL COMMENT '包装id',
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE IF NOT EXISTS `product_inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `in_out_quantity` int(11) NOT NULL COMMENT '产品出入库量',
  `in_time` timestamp NOT NULL COMMENT '产品入库时间',
  `in_out_flag` int(11) NOT NULL COMMENT '出入库区分标识',
  `user_id` int(11) NOT NULL COMMENT '管理员',
  `in_out_transaction_code` varchar(45) NOT NULL COMMENT '交易码',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `relation`
--

DROP TABLE IF EXISTS `relation`;
CREATE TABLE IF NOT EXISTS `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` int(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

--
-- 转存表中的数据 `relation`
--

INSERT INTO `relation` (`id`, `menuid`, `roleid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 1, 6),
(26, 10, 6),
(27, 11, 6),
(28, 12, 6),
(29, 13, 6),
(30, 14, 6),
(31, 15, 6),
(32, 16, 6),
(33, 17, 6),
(34, 18, 6),
(35, 19, 6),
(36, 20, 6);

-- --------------------------------------------------------

--
-- 表的结构 `reseller`
--

DROP TABLE IF EXISTS `reseller`;
CREATE TABLE IF NOT EXISTS `reseller` (
  `id` int(11) NOT NULL COMMENT '分销商id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `area` varchar(255) NOT NULL COMMENT '区域',
  `director` varchar(255) NOT NULL COMMENT '负责人',
  `company_number` int(11) NOT NULL COMMENT '公司电话',
  `director_number` int(11) NOT NULL COMMENT '负责人电话',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  `address_id` int(11) NOT NULL COMMENT '分销商地址id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销商表';

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '角色创建时间',
  `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '角色修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `num`, `pid`, `name`, `deptid`, `tips`, `version`, `create_time`, `changed_time`) VALUES
(1, 1, 0, '超级管理员', 1, '全局超级管理员', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20'),
(2, 2, 1, '订单部管理员', 2, '订单管理', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20'),
(3, 3, 2, '订单部操作员', 2, '订单管理', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20'),
(4, 4, 1, '仓储部管理员', 3, '仓储管理', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20'),
(5, 5, 4, '仓储部操作员', 3, '仓储管理', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20'),
(6, 6, 1, '管理部管理员', 4, '统计监察管理', NULL, '2018-01-06 06:15:20', '2018-01-06 06:15:20');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `account`, `password`, `salt`, `email`, `phone`, `roleid`, `deptid`, `status`, `create_time`, `changed_time`, `version`) VALUES
(1, '李方彦', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'lifangyan@qq.com', '18011001100', 1, 1, 1, '2018-01-06 08:33:46', '2018-01-06 08:34:42', NULL),
(2, '赵静仲', 'adminfake', 'adminfake', '8207e91ea926054f7ef503d558a7673f', 'zhaojingzhong@qq.com', '18011001101', 1, 1, 2, '2018-01-06 08:33:46', '2018-01-06 08:34:42', NULL),
(3, '金宇晟', 'orderadmin', 'orderadmin', 'e7d9f1c1d4ad5926da88b77e69969ba8', 'jinyusheng@qq.com', '18011001102', 2, 2, 1, '2018-01-06 08:33:46', '2018-01-06 08:34:42', NULL),
(4, '宁珑', 'inventoryadmin', 'inventoryadmin', '649b941802284af1bb593f0c46b8e76a', 'ninglong@qq.com', '18011001103', 4, 3, 1, '2018-01-06 08:33:46', '2018-01-06 08:34:42', NULL),
(5, '王彭凯', 'manageradmin', 'manageradmin', 'f973988be6cba09855f84c34d10e8a62', 'wangpengkai@qq.com', '18011001104', 6, 4, 1, '2018-01-06 08:33:46', '2018-01-06 08:34:42', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
