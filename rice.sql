-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2017-12-27 14:24:27
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
  `reseller_id` int(11) NOT NULL COMMENT '分销商id',
  `contacter` varchar(22) NOT NULL COMMENT '联系人',
  `contact_number` int(11) NOT NULL COMMENT '联系人地址',
  `address` varchar(45) NOT NULL COMMENT '地址',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `reseller_id` (`reseller_id`),
  KEY `reseller_id_2` (`reseller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- 表的结构 `reseller`
--

DROP TABLE IF EXISTS `reseller`;
CREATE TABLE IF NOT EXISTS `reseller` (
  `id` int(11) NOT NULL COMMENT '分销商id',
  `name` varchar(25) NOT NULL COMMENT '名称',
  `area` varchar(25) NOT NULL COMMENT '区域',
  `director` varchar(25) NOT NULL COMMENT '负责人',
  `company_number` int(11) NOT NULL COMMENT '公司电话',
  `director_number` int(11) NOT NULL COMMENT '负责人电话',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `modified_time` timestamp NOT NULL COMMENT '修改时间',
  `address_id` int(11) NOT NULL COMMENT '分销商地址id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
