DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  'createtime' timestamp DEFAULT CURRENT_TIMESTAMP COMMENT '部门创建时间',
  'changedtime' timestamp DEFAULT ON UPDATE CURRENT_TIMESTAMP COMMENT '部门修改时间',
  PRIMARY KEY (`id`)
)   



INSERT INTO `dept` ( `num`, `pid`, `pids`, `simplename`, `fullname`, `tips`, `version`) VALUES
( 1, 0, '[0],', '总公司', '总公司', '', NULL),
( 2, 1, '[0],[1]', '订单部', '订单部', '', NULL),
( 3, 1, '[0],[1]', '仓储部', '仓储部', '', NULL),
( 4, 1, '[0],[1]', '管理部', '管理部', '', NULL),




-- (25, 2, 24, '[0],[24],', '开发部', '开发部', '', NULL),
-- (26, 3, 24, '[0],[24],', '运营部', '运营部', '', NULL),
-- (27, 4, 24, '[0],[24],', '战略部', '战略部', '', NULL);
-- ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门表';
-- ENGINE=MyISAM DEFAULT CHARSET=latin1;