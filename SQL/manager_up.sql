
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
 INSERT INTO `user` (`name`, `account`, `password`, `email`, `phone`, `roleid`, `deptid`, `status`) VALUES
 ('李方彦','admin','admin','lifangyan@qq.com','18011001100',1,1,1 ),
 ('赵静仲','adminfake','adminfake','zhaojingzhong@qq.com','18011001101',1,1,2 ),
 ('金宇晟','orderadmin','orderadmin','jinyusheng@qq.com','18011001102',2,2,1 ),
 ('宁珑','inventoryadmin','inventoryadmin','ninglong@qq.com','18011001103',4,3,1 ),
 ('王彭凯','manageradmin','manageradmin','wangpengkai@qq.com','18011001104',6,4,1 );



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

-- 向 menu table 插入数据
-- INSERT INTO `menu`(`code`,`pcode`,`pcodes`,`name`,`url`,`levels`,`tips`,`status`) VALUES
-- ('system','0','[0],','系统管理','',1,NULL,1),
-- ('mgr','system','[0],[system],','用户管理','',2,NULL,1),
-- ('mgr_add',' mgr','[0],[system],[mgr],','添加用户','',3,NULL,1),
-- ('mgr_setRole',' mgr','[0],[system],[mgr],','分配角色给用户','',3,NULL,1),
-- ('mgr_edit',' mgr','[0],[system],[mgr],','修改用户','',3,NULL,1),
-- ('mgr_delete',' mgr','[0],[system],[mgr],','删除用户','',3,NULL,1),
-- ('mgr_freeze',' mgr','[0],[system],[mgr],','冻结用户','',3,NULL,1),
-- ('mgr_unfreeze',' mgr','[0],[system],[mgr],','解除用户冻结','',3,NULL,1),
-- ('mgr_add',' mgr','[0],[system],[mgr],','添加用户','',3,NULL,1),
-- ('role', 'system', '[0],[system],', '角色管理','',2,NULL,1),
-- ('role_add', 'role', '[0],[system],[role],', '添加角色','',3,NULL,1),
-- ('role_edit', 'role', '[0],[system],[role],', '修改角色','',3,NULL,1),
-- ('role_delete', 'role', '[0],[system],[role],', '删除角色','',3,NULL,1),
-- ('role_setAuthority', 'role', '[0],[system],[role],', '配置权限','',3,NULL,1),
-- ('menu', 'system', '[0],[system],', '菜单管理','',2,NULL,1),
-- ('menu_add', 'menu', '[0],[system],[menu],', '添加菜单','',3,NULL,1),
-- ('menu_edit', 'menu', '[0],[system],[menu],', '修改菜单','',3,NULL,1),
-- ('menu_delete', 'menu', '[0],[system],[menu],', '删除菜单','',3,NULL,1),
-- ('log', 'system', '[0],[system],', '业务日志','', 2, NULL, 1),
-- ('log_clean', 'log', '[0],[system],[log],', '清空日志','', 3, NULL, 1),
-- ('dept', 'system', '[0],[system],', '部门管理','',2, NULL,1),
-- ('dept_add', 'dept', '[0],[system],[dept],', '添加部门','',3, NULL, 1),
-- ('dept_update', 'dept', '[0],[system],[dept],', '修改部门','',3, NULL, 1),
-- ('dept_delete', 'dept', '[0],[system],[dept],', '删除部门', '', 3,NULL, 1);


-- 创建 relation table
-- DROP TABLE IF EXISTS `relation`;
-- CREATE TABLE IF NOT EXISTS `relation` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
--   `menuid` int(11) DEFAULT NULL COMMENT '菜单id',
--   `roleid` int(11) DEFAULT NULL COMMENT '角色id',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';


-- -- 订单部管理员的联系
-- -- 订单部操作员的联系
-- -- 仓储部管理员的联系
-- -- 仓储部操作员的联系
-- 超级管理员的权限
-- 管理部管理员的联系

-- INSERT INTO `relation`(`menuid`,`roleid`)VALUES
-- (1,1),
-- (2,1),
-- (3,1),
-- (4,1),
-- (5,1),
-- (6,1),
-- (7,1),
-- (8,1),
-- (9,1),
-- (10,1),
-- (11,1),
-- (12,1),
-- (13,1),
-- (14,1),
-- (15,1),
-- (16,1),
-- (17,1),
-- (18,1),
-- (19,1),
-- (20,1),
-- (21,1),
-- (22,1),
-- (23,1),
-- (24,1),
-- (1,6),
-- (10,6),
-- (11,6),
-- (12,6),
-- (13,6),
-- (14,6),
-- (15,6),
-- (16,6),
-- (17,6),
-- (18,6),
-- (19,6),
-- (20,6);

-- 创建 address reseller table
-- DROP TABLE IF EXISTS `address`;
-- CREATE TABLE IF NOT EXISTS `address` (
--   `id` int(11) NOT NULL COMMENT '分销商地址id',
--   `contacter` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '联系人',
--   `contact_number` varchar(45) NOT NULL COMMENT '联系人电话',
--   `address` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '地址',
--    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '分销商创建时间',
--    `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '分销商修改时间',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销商地址表'  AUTO_INCREMENT=1 ;
-- DROP TABLE IF EXISTS `reseller`;
-- CREATE TABLE IF NOT EXISTS `reseller` (
--   `id` int(11) NOT NULL COMMENT '分销商id',
--   `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '名称',
--   `area` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '区域',
--   `director` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '负责人',
--   `company_number` varchar(45) NOT NULL COMMENT '公司电话',
--   `director_number` varchar(45) NOT NULL COMMENT '负责人电话',
--   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址创建时间',
--   `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '地址修改时间',
--   `address_id` int(11) NOT NULL COMMENT '分销商地址id',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销商表' AUTO_INCREMENT=1;

-- INSERT INTO `reseller`(`id`,`name`,`area`,`director`,`company_number`,`director_number`,`address_id`)VALUES
-- ('1','一级分销商A','大庆','张强',NULL,'13410011001',1 ),
-- ('2','一级分销商A','大庆','张强',NULL,'13410011001',2 ),
-- ('3','一级分销商A','大庆','张强',NULL,'13410011001',3 ),
-- ('4','一级分销商B','武汉','李毅',NULL,'13410011002',4 ),
-- ('5','一级分销商B','武汉','李毅',NULL,'13410011002',5 ),
-- ('6','一级分销商C','合肥','张伦',NULL,'13410011003',6 ),
-- ('7','一级分销商C','合肥','张伦',NULL,'13410011003',7 ),
-- ('8','一级分销商D','菏泽','李文',NULL,'13410011004',8 ),
-- ('9','一级分销商D','菏泽','李文',NULL,'13410011004',9 ),
-- ('10','一级分销商E','青岛','李青',NULL,'13410011005',10 ),
-- ('11','一级分销商F','长沙','李文新',NULL,'13410011006',11 ),
-- ('12','一级分销商G','沈阳','张文理',NULL,'13410011007',12 ),
-- ('13','二级分销商A','哈尔滨','魏理',NULL,'13410011008',13 ),
-- ('14','二级分销商B','唐山','何文欣',NULL,'13410011009',14 ),
-- ('15','二级分销商C','秦皇岛','萧景琰',NULL,'13410011010',15 ),
-- ('16','二级分销商D','石家庄','萧庭生',NULL,'13410011011',16 ),
-- ('17','二级分销商E','金华','萧警亭',NULL,'13410011012',17 ),
-- ('18','二级分销商F','保定','萧靖宇',NULL,'13410011013',18 ),
-- ('19','三级分销商A','郑州','萧景桓',NULL,'13410011014',19 ),
-- ('20','三级分销商B','宜昌','萧平静',NULL,'13410011015',20 ),
-- ('21','三级分销商C','天津','萧平掌',NULL,'13410011016',21 ),
-- ('22','三级分销商D','厦门','林殊',NULL,'13410011017',22 );

-- INSERT INTO `address`(`id`,`contacter`,`contact_number`,`address`)VALUES
-- (1,'张一','024-88889000','萨尔图区东风新村纬二路39号'),
-- (2,'张二','024-88889001','黑龙江省大庆市龙凤区秀水路6号'),
-- (3,'张强','024-88889002','黑龙江省大庆市龙凤区热源街昌升建材城7区4栋22门'),
-- (4,'李毅','024-88889003','湖北省武汉市汉阳区陶馨路陶馨园12栋门面'),
-- (5,'李一','024-88889004','湖北省武汉市黄陂区金堂街21号'),
-- (6,'张伦','024-88889005','安徽省合肥市长丰县瑞龙花园(蒙城北路西)'),
-- (7,'张三','024-88889006','高新技术产业开发区习友路景尚名郡小区5栋楼'),
-- (8,'李文','024-88889007','山东省菏泽市单县湖西南路'),
-- (9,'李二','024-88889008','山东省菏泽市曹县安蔡楼中心卫生院'),
-- (10,'李青','024-88889009','宁夏路街道台湛路41号宝清路'),
-- (11,'李文新','024-888890010','湖南省长沙市长沙县经济技术开发区长丰星城(特立西路北)'),
-- (12,'张文理','024-888890011','辽宁省沈阳市沈河区惠工西一街9号'),
-- (13,'魏理','024-888890012','黑龙江省哈尔滨市平房区新疆大街51-7号'),
-- (14,'何文欣','024-888890013','河北省唐山市古冶区卑家店一街北外环路南250米'),
-- (15,'萧景琰','024-888890014','秦皇岛市海港区燕海东里19-1号'),
-- (16,'萧庭生','024-888890015','赵陵铺镇泰华街550号都市阳光小区底商'),
-- (17,'萧警亭','024-888890016','金华市婺城区南市街126-128'),
-- (18,'萧靖宇','024-888890017','河北省保定市莲池区北二环'),
-- (19,'萧景桓','024-888890018','河南省郑州市金水区石桥街8附近'),
-- (20,'萧平静','024-888890019','湖北省宜昌市宜都市长江大道219号'),
-- (21,'萧平掌','024-888890020','南营门街道宝鸡西道10号'),
-- (22,'林殊','024-888890021','曾厝垵北二路西50米');

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
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  `pay_status` int(11) NOT NULL COMMENT '付款状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';
DROP TABLE IF EXISTS `package`;
CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL COMMENT 'id',
  `type` varchar(30) NOT NULL COMMENT '包装类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='包装表';
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
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '产品创建时间',
  `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '产品修改时间',
  `package_id` int(11) NOT NULL COMMENT '包装id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表';
DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE IF NOT EXISTS `product_inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `in_out_quantity` int(11) NOT NULL COMMENT '产品出入库量',
  `in_time` timestamp NOT NULL COMMENT '产品入库时间',
  `in_out_flag` int(11) NOT NULL COMMENT '出入库区分标识',
  `user_id` int(11) NOT NULL COMMENT '管理员',
  `in_out_transaction_code` varchar(45) NOT NULL COMMENT '交易码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入库创建时间',
  `changed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '库存修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存表';

