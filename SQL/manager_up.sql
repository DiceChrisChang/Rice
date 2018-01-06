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

