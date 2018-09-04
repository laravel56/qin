/*
Navicat MySQL Data Transfer

Source Server         : 203.195.203.76
Source Server Version : 50641
Source Host           : 203.195.203.76:3306
Source Database       : jifen

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-08-30 16:00:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `per` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每份数量',
  `number` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放份数',
  `integral` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放总积分',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态  1上架',
  `limit` int(11) NOT NULL DEFAULT '1' COMMENT '每人限制份数',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='二维码活动表';

-- ----------------------------
-- Table structure for tb_activity_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_copy`;
CREATE TABLE `tb_activity_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `per` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每份数量',
  `number` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放份数',
  `integral` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放总积分',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态  1上架',
  `limit` int(11) NOT NULL DEFAULT '1' COMMENT '每人限制份数',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='二维码活动表';

-- ----------------------------
-- Table structure for tb_activity_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_log`;
CREATE TABLE `tb_activity_log` (
  `tbid` int(11) NOT NULL AUTO_INCREMENT,
  `ac_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `mem_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `cre_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_activity_log_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_log_copy`;
CREATE TABLE `tb_activity_log_copy` (
  `tbid` int(11) NOT NULL AUTO_INCREMENT,
  `ac_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `mem_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `cre_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '电话',
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '省份',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '区域',
  `address` text CHARACTER SET utf8 NOT NULL COMMENT '地址',
  `isdefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `member_id` bigint(11) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `mobile` (`mobile`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `isdefault` (`isdefault`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=964 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='收货地址';

-- ----------------------------
-- Table structure for tb_address_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_address_copy`;
CREATE TABLE `tb_address_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '电话',
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '省份',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '区域',
  `address` text CHARACTER SET utf8 NOT NULL COMMENT '地址',
  `isdefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `member_id` bigint(11) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `mobile` (`mobile`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `isdefault` (`isdefault`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='收货地址';

-- ----------------------------
-- Table structure for tb_admin_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_department`;
CREATE TABLE `tb_admin_department` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `authorizelist` text COMMENT '权限',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 平台 2系统隐藏',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户admin_id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='后台部门';

-- ----------------------------
-- Table structure for tb_admin_department_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_department_copy`;
CREATE TABLE `tb_admin_department_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `authorizelist` text COMMENT '权限',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 平台 2系统隐藏',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户admin_id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='后台部门';

-- ----------------------------
-- Table structure for tb_admin_integral_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_integral_detail`;
CREATE TABLE `tb_admin_integral_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(50) DEFAULT NULL,
  `before` int(11) DEFAULT NULL COMMENT '变动前',
  `after` int(11) NOT NULL COMMENT '变动后',
  `integral` int(11) NOT NULL COMMENT '积分',
  `type` varchar(255) NOT NULL COMMENT '2积分卡充值  4商户给会员充值  5平台给商户充值 6平台回收商户',
  `admin_id` bigint(20) NOT NULL COMMENT '商户管理员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `member_id` (`admin_id`),
  KEY `integral` (`integral`) USING BTREE,
  KEY `before` (`before`) USING BTREE,
  KEY `after` (`after`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=3628 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Table structure for tb_admin_integral_detail_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_integral_detail_copy`;
CREATE TABLE `tb_admin_integral_detail_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(50) DEFAULT NULL,
  `before` int(11) DEFAULT NULL COMMENT '变动前',
  `after` int(11) NOT NULL COMMENT '变动后',
  `integral` int(11) NOT NULL COMMENT '积分',
  `type` varchar(255) NOT NULL COMMENT '2积分卡充值  4商户给会员充值  5平台给商户充值 6平台回收商户',
  `admin_id` bigint(20) NOT NULL COMMENT '商户管理员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `member_id` (`admin_id`),
  KEY `integral` (`integral`) USING BTREE,
  KEY `before` (`before`) USING BTREE,
  KEY `after` (`after`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=1777 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Table structure for tb_admin_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member`;
CREATE TABLE `tb_admin_member` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT 'qq',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `headimg` text COMMENT '头像地址',
  `department_id` bigint(20) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1--平台   2商户   3商户下的员工',
  `landline` varchar(50) DEFAULT NULL COMMENT '座机',
  `join_time` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '加入时间',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1',
  `integral_limit` bigint(255) NOT NULL DEFAULT '9999' COMMENT '单次发放积分最大值',
  PRIMARY KEY (`tbid`),
  UNIQUE KEY `username` (`username`),
  KEY `department_id` (`department_id`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Table structure for tb_admin_member_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_copy`;
CREATE TABLE `tb_admin_member_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT 'qq',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `headimg` text COMMENT '头像地址',
  `department_id` bigint(20) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1--平台   2商户   3商户下的员工',
  `landline` varchar(50) DEFAULT NULL COMMENT '座机',
  `join_time` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '加入时间',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1',
  `integral_limit` bigint(255) NOT NULL DEFAULT '9999' COMMENT '单次发放积分最大值',
  PRIMARY KEY (`tbid`),
  UNIQUE KEY `username` (`username`),
  KEY `department_id` (`department_id`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Table structure for tb_admin_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_login_log`;
CREATE TABLE `tb_admin_member_login_log` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_id` bigint(20) NOT NULL COMMENT '管理员id',
  `ip` int(11) NOT NULL COMMENT 'IP',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `ipnm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录地点',
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '城市',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `ip` (`ip`),
  KEY `admin_member_id` (`admin_member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5046 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='管理员登录记录';

-- ----------------------------
-- Table structure for tb_admin_member_login_log_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_login_log_copy`;
CREATE TABLE `tb_admin_member_login_log_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_id` bigint(20) NOT NULL COMMENT '管理员id',
  `ip` int(11) NOT NULL COMMENT 'IP',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `ipnm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录地点',
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '城市',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `ip` (`ip`),
  KEY `admin_member_id` (`admin_member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1404 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='管理员登录记录';

-- ----------------------------
-- Table structure for tb_admin_member_operating_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_operating_detail`;
CREATE TABLE `tb_admin_member_operating_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_operating_log_id` bigint(20) NOT NULL COMMENT '管理员id',
  `table` varchar(255) NOT NULL COMMENT '表名',
  `type` tinyint(20) NOT NULL COMMENT '1 编辑 2删除',
  `olddata` text COMMENT '操作前数据',
  `newdata` text COMMENT '操作后数据',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `admin_member_operating_log_id` (`admin_member_operating_log_id`) USING BTREE,
  KEY `type` (`type`),
  KEY `table` (`table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员操作记录详情';

-- ----------------------------
-- Table structure for tb_admin_member_operating_detail_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_operating_detail_copy`;
CREATE TABLE `tb_admin_member_operating_detail_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_operating_log_id` bigint(20) NOT NULL COMMENT '管理员id',
  `table` varchar(255) NOT NULL COMMENT '表名',
  `type` tinyint(20) NOT NULL COMMENT '1 编辑 2删除',
  `olddata` text COMMENT '操作前数据',
  `newdata` text COMMENT '操作后数据',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `admin_member_operating_log_id` (`admin_member_operating_log_id`) USING BTREE,
  KEY `type` (`type`),
  KEY `table` (`table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员操作记录详情';

-- ----------------------------
-- Table structure for tb_admin_member_operating_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_operating_log`;
CREATE TABLE `tb_admin_member_operating_log` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_id` bigint(20) NOT NULL COMMENT '管理员id',
  `intro` varchar(255) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `admin_member_id` (`admin_member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员操作记录';

-- ----------------------------
-- Table structure for tb_admin_member_operating_log_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_member_operating_log_copy`;
CREATE TABLE `tb_admin_member_operating_log_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_member_id` bigint(20) NOT NULL COMMENT '管理员id',
  `intro` varchar(255) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `admin_member_id` (`admin_member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员操作记录';

-- ----------------------------
-- Table structure for tb_admin_memberinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_memberinfo`;
CREATE TABLE `tb_admin_memberinfo` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `freeze_inte` int(11) NOT NULL DEFAULT '0' COMMENT '冻结积分',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入驻状态  1--等待审核   2--审核失败  3--审核通过',
  `contact_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `contact_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人手机',
  `wechat` varchar(255) NOT NULL DEFAULT '' COMMENT '微信号',
  `c_province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `c_city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `c_area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `c_addr` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `com_name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `com_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公司网址',
  `wechat_pub` varchar(255) NOT NULL DEFAULT '' COMMENT '微信公众号',
  `legal_rep` varchar(255) NOT NULL DEFAULT '' COMMENT '法人代表',
  `business_scope` varchar(255) NOT NULL DEFAULT '' COMMENT '经营范围',
  `business_license` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
  `brand_auth` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌授权书',
  `cre_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `isfreezed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否冻结',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--现金商户   2--积分商户 ',
  `deal_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人id',
  `notice_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 默认开启   0 --关闭',
  `order_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '查看订单权限',
  `message_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '发送消息权限',
  `integral_warning` bigint(20) NOT NULL DEFAULT '1000' COMMENT '积分预警设置',
  `operate_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '运营状态  1--开启   0--关闭',
  `ratio` decimal(10,2) unsigned NOT NULL DEFAULT '5.00' COMMENT '充值比例',
  `shops_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可开设店铺数',
  `refuse_reason` text COMMENT '审核拒绝理由',
  `mobile` varchar(20) DEFAULT '',
  `integral_min` bigint(255) NOT NULL DEFAULT '0' COMMENT '积分发放通知的数量',
  `offline_shop` int(2) NOT NULL DEFAULT '0' COMMENT '线下店铺 1开启 0关闭',
  `gasstation_token` varchar(100) DEFAULT NULL COMMENT '线下店铺token',
  `project_integration` int(2) NOT NULL DEFAULT '0' COMMENT '项目积分0未开启 1开启',
  `proportion` int(255) NOT NULL DEFAULT '0' COMMENT '外来积分转化为名天积分的比例',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='商户管理员信息';

-- ----------------------------
-- Table structure for tb_admin_memberinfo_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_memberinfo_copy`;
CREATE TABLE `tb_admin_memberinfo_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `freeze_inte` int(11) NOT NULL DEFAULT '0' COMMENT '冻结积分',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入驻状态  1--等待审核   2--审核失败  3--审核通过',
  `contact_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `contact_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人手机',
  `wechat` varchar(255) NOT NULL DEFAULT '' COMMENT '微信号',
  `c_province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `c_city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `c_area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `c_addr` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `com_name` varchar(255) NOT NULL DEFAULT '' COMMENT '公司名称',
  `com_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公司网址',
  `wechat_pub` varchar(255) NOT NULL DEFAULT '' COMMENT '微信公众号',
  `legal_rep` varchar(255) NOT NULL DEFAULT '' COMMENT '法人代表',
  `business_scope` varchar(255) NOT NULL DEFAULT '' COMMENT '经营范围',
  `business_license` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
  `brand_auth` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌授权书',
  `cre_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `isfreezed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否冻结',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--现金商户   2--积分商户 ',
  `deal_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人id',
  `notice_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 默认开启   0 --关闭',
  `order_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '查看订单权限',
  `message_power` tinyint(1) NOT NULL DEFAULT '1' COMMENT '发送消息权限',
  `integral_warning` bigint(20) NOT NULL DEFAULT '1000' COMMENT '积分预警设置',
  `operate_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '运营状态  1--开启   0--关闭',
  `ratio` decimal(10,2) unsigned NOT NULL DEFAULT '5.00' COMMENT '充值比例',
  `shops_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可开设店铺数',
  `refuse_reason` text COMMENT '审核拒绝理由',
  `mobile` varchar(20) DEFAULT '',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='商户管理员信息';

-- ----------------------------
-- Table structure for tb_adv
-- ----------------------------
DROP TABLE IF EXISTS `tb_adv`;
CREATE TABLE `tb_adv` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adv_id` int(10) NOT NULL DEFAULT '0' COMMENT '广告位ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '广告标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图片',
  `content` text COMMENT '广告描述',
  `adv_url` varchar(255) NOT NULL DEFAULT '' COMMENT '广告链接地址',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Table structure for tb_advpos
-- ----------------------------
DROP TABLE IF EXISTS `tb_advpos`;
CREATE TABLE `tb_advpos` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `width` int(10) NOT NULL DEFAULT '0' COMMENT '广告位宽带',
  `height` int(10) NOT NULL DEFAULT '0' COMMENT '高度',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='广告位表';

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `tbid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text COMMENT '图片',
  `level` tinyint(4) NOT NULL COMMENT '级别 1省份 2城市 3区域',
  `baiducode` varchar(255) NOT NULL,
  `tmcode` varchar(255) NOT NULL DEFAULT '0' COMMENT '天迈地区id',
  `code` varchar(255) NOT NULL COMMENT '编码',
  `parentcode` varchar(255) NOT NULL COMMENT '父级编码',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `parentcode` (`parentcode`),
  KEY `level` (`level`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `baiducode` (`baiducode`)
) ENGINE=InnoDB AUTO_INCREMENT=3937 DEFAULT CHARSET=utf8 COMMENT='地区';

-- ----------------------------
-- Table structure for tb_area_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_area_copy`;
CREATE TABLE `tb_area_copy` (
  `tbid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text COMMENT '图片',
  `level` tinyint(4) NOT NULL COMMENT '级别 1省份 2城市 3区域',
  `baiducode` varchar(255) NOT NULL,
  `tmcode` varchar(255) NOT NULL DEFAULT '0' COMMENT '天迈地区id',
  `code` varchar(255) NOT NULL COMMENT '编码',
  `parentcode` varchar(255) NOT NULL COMMENT '父级编码',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `parentcode` (`parentcode`),
  KEY `level` (`level`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `baiducode` (`baiducode`)
) ENGINE=InnoDB AUTO_INCREMENT=3937 DEFAULT CHARSET=utf8 COMMENT='地区';

-- ----------------------------
-- Table structure for tb_area_wantgo
-- ----------------------------
DROP TABLE IF EXISTS `tb_area_wantgo`;
CREATE TABLE `tb_area_wantgo` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `city` (`city`),
  KEY `province` (`province`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区想去';

-- ----------------------------
-- Table structure for tb_area_wantgo_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_area_wantgo_copy`;
CREATE TABLE `tb_area_wantgo_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `city` (`city`),
  KEY `province` (`province`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区想去';

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `image` text COMMENT '图片地址',
  `url` varchar(255) DEFAULT '' COMMENT '链接地址',
  `banner_category_id` bigint(20) DEFAULT NULL COMMENT 'banner分类id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `type` tinyint(4) DEFAULT '0' COMMENT '类型 0url,1民宿,2酒店,3涉车,4景点,5行程,6玩乐,7路线,8动态,9行程,10问答,11评论,12店铺,13商品',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NULL DEFAULT NULL COMMENT '编辑时间',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `sort_num` int(10) unsigned DEFAULT '100' COMMENT '排序值',
  `is_close` tinyint(1) DEFAULT '0' COMMENT '1--关闭',
  `launch_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`),
  KEY `banner_category_id` (`banner_category_id`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='banner';

-- ----------------------------
-- Table structure for tb_banner_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner_category`;
CREATE TABLE `tb_banner_category` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `width` int(11) NOT NULL COMMENT '宽',
  `height` int(11) NOT NULL COMMENT '高',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='banner分类表';

-- ----------------------------
-- Table structure for tb_banner_category_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner_category_copy`;
CREATE TABLE `tb_banner_category_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `width` int(11) NOT NULL COMMENT '宽',
  `height` int(11) NOT NULL COMMENT '高',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='banner分类表';

-- ----------------------------
-- Table structure for tb_banner_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner_copy`;
CREATE TABLE `tb_banner_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `image` text COMMENT '图片地址',
  `url` varchar(255) DEFAULT '' COMMENT '链接地址',
  `banner_category_id` bigint(20) DEFAULT NULL COMMENT 'banner分类id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `type` tinyint(4) DEFAULT '0' COMMENT '类型 0url,1民宿,2酒店,3涉车,4景点,5行程,6玩乐,7路线,8动态,9行程,10问答,11评论,12店铺,13商品',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NULL DEFAULT NULL COMMENT '编辑时间',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `sort_num` int(10) unsigned DEFAULT '100' COMMENT '排序值',
  `is_close` tinyint(1) DEFAULT '0' COMMENT '1--关闭',
  `launch_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`),
  KEY `banner_category_id` (`banner_category_id`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='banner';

-- ----------------------------
-- Table structure for tb_bindbank
-- ----------------------------
DROP TABLE IF EXISTS `tb_bindbank`;
CREATE TABLE `tb_bindbank` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '支付类型： 1支付宝 2微信 3银联',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `account` varchar(255) NOT NULL COMMENT '账户号',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机',
  `bank` varchar(255) NOT NULL DEFAULT '' COMMENT '银行',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `creattime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `paytype` (`type`) USING BTREE,
  KEY `account` (`account`),
  KEY `name` (`name`),
  KEY `member_id` (`member_id`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绑定银行账户';

-- ----------------------------
-- Table structure for tb_bindbank_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_bindbank_copy`;
CREATE TABLE `tb_bindbank_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '支付类型： 1支付宝 2微信 3银联',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `account` varchar(255) NOT NULL COMMENT '账户号',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机',
  `bank` varchar(255) NOT NULL DEFAULT '' COMMENT '银行',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `creattime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `paytype` (`type`) USING BTREE,
  KEY `account` (`account`),
  KEY `name` (`name`),
  KEY `member_id` (`member_id`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绑定银行账户';

-- ----------------------------
-- Table structure for tb_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `name` varchar(255) NOT NULL COMMENT '品牌名称',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Table structure for tb_brand_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand_copy`;
CREATE TABLE `tb_brand_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `name` varchar(255) NOT NULL COMMENT '品牌名称',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Table structure for tb_captcha
-- ----------------------------
DROP TABLE IF EXISTS `tb_captcha`;
CREATE TABLE `tb_captcha` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '手机号',
  `captcha` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '验证码',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已使用 1是 0否',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`tbid`),
  KEY `mobile` (`mobile`),
  KEY `captcha` (`captcha`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `endtime` (`endtime`)
) ENGINE=InnoDB AUTO_INCREMENT=5188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='验证码';

-- ----------------------------
-- Table structure for tb_captcha_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_captcha_copy`;
CREATE TABLE `tb_captcha_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '手机号',
  `captcha` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '验证码',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已使用 1是 0否',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`tbid`),
  KEY `mobile` (`mobile`),
  KEY `captcha` (`captcha`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `endtime` (`endtime`)
) ENGINE=InnoDB AUTO_INCREMENT=2452 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='验证码';

-- ----------------------------
-- Table structure for tb_card
-- ----------------------------
DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE `tb_card` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tbid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `number` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1--待审核   2--审核失败   3--成功  4--停用',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '编辑时间',
  `verify_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '审核人',
  `verify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_admin_id` bigint(11) unsigned NOT NULL COMMENT '创建人ID',
  `remark` text COMMENT '说明',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='充值卡表';

-- ----------------------------
-- Table structure for tb_card_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_copy`;
CREATE TABLE `tb_card_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tbid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `number` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1--待审核   2--审核失败   3--成功  4--停用',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '编辑时间',
  `verify_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '审核人',
  `verify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_admin_id` bigint(11) unsigned NOT NULL COMMENT '创建人ID',
  `remark` text COMMENT '说明',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='充值卡表';

-- ----------------------------
-- Table structure for tb_card_integral
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_integral`;
CREATE TABLE `tb_card_integral` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tbid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `shop_id` int(10) NOT NULL COMMENT '商户id',
  `number` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '4' COMMENT '3--成功  4--停用',
  `createtime` int(15) NOT NULL,
  `edittime` int(15) DEFAULT NULL COMMENT '编辑时间',
  `verify_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '审核人',
  `verify_time` int(20) DEFAULT NULL,
  `create_admin_id` bigint(11) unsigned NOT NULL COMMENT '创建人ID',
  `remark` text COMMENT '说明',
  `receive` text,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='充值卡表';

-- ----------------------------
-- Table structure for tb_card_integral_number
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_integral_number`;
CREATE TABLE `tb_card_integral_number` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) unsigned NOT NULL COMMENT '充值卡ID',
  `activation` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '0  激活  -1未激活',
  `card_number` varchar(50) NOT NULL COMMENT '卡号',
  `card_password` varchar(50) NOT NULL COMMENT '卡密',
  `createtime` int(50) NOT NULL,
  `integral` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `edittime` int(50) DEFAULT NULL,
  `used_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0  未使用     1 --已使用',
  `used_member_id` bigint(20) unsigned DEFAULT '0' COMMENT '使用者iD',
  `shop_id` int(20) NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `money` int(50) DEFAULT NULL,
  `receive_stats` int(20) DEFAULT NULL,
  `localhost_url` text COMMENT '跳转位置',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=28997 DEFAULT CHARSET=utf8 COMMENT='充值卡卡号表';

-- ----------------------------
-- Table structure for tb_card_integral_number_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_integral_number_copy`;
CREATE TABLE `tb_card_integral_number_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) unsigned NOT NULL COMMENT '充值卡ID',
  `activation` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '0  激活  -1未激活',
  `card_number` varchar(50) NOT NULL COMMENT '卡号',
  `card_password` varchar(50) NOT NULL COMMENT '卡密',
  `createtime` int(50) NOT NULL,
  `integral` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `edittime` int(50) DEFAULT NULL,
  `used_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0  未使用     1 --已使用',
  `used_member_id` bigint(20) unsigned DEFAULT '0' COMMENT '使用者iD',
  `shop_id` int(20) NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `money` int(50) DEFAULT NULL,
  `receive_stats` int(20) DEFAULT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=28154 DEFAULT CHARSET=utf8 COMMENT='充值卡卡号表';

-- ----------------------------
-- Table structure for tb_card_number
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_number`;
CREATE TABLE `tb_card_number` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) unsigned NOT NULL COMMENT '充值卡ID',
  `card_number` varchar(50) NOT NULL COMMENT '卡号',
  `card_password` varchar(50) NOT NULL COMMENT '卡密',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `integral` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `used_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1  停用  0  未使用     1 --已使用',
  `used_member_id` bigint(20) unsigned DEFAULT '0' COMMENT '使用者iD',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8 COMMENT='充值卡卡号表';

-- ----------------------------
-- Table structure for tb_card_number_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_number_copy`;
CREATE TABLE `tb_card_number_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) unsigned NOT NULL COMMENT '充值卡ID',
  `card_number` varchar(50) NOT NULL COMMENT '卡号',
  `card_password` varchar(50) NOT NULL COMMENT '卡密',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `integral` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `edittime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `used_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1  停用  0  未使用     1 --已使用',
  `used_member_id` bigint(20) unsigned DEFAULT '0' COMMENT '使用者iD',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8 COMMENT='充值卡卡号表';

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text NOT NULL COMMENT '图片',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `goods_category_id` bigint(20) NOT NULL COMMENT '商品类目id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `count` int(11) NOT NULL COMMENT '数量',
  `skuimage` text COMMENT '图片',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1金钱商品   2积分商品',
  PRIMARY KEY (`tbid`),
  KEY `shop_id` (`shop_id`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `goods_id` (`goods_id`),
  KEY `member_id` (`member_id`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=7135 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Table structure for tb_cart_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart_copy`;
CREATE TABLE `tb_cart_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text NOT NULL COMMENT '图片',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `goods_category_id` bigint(20) NOT NULL COMMENT '商品类目id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `count` int(11) NOT NULL COMMENT '数量',
  `skuimage` text COMMENT '图片',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1金钱商品   2积分商品',
  PRIMARY KEY (`tbid`),
  KEY `shop_id` (`shop_id`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `goods_id` (`goods_id`),
  KEY `member_id` (`member_id`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=3213 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Table structure for tb_click_sum
-- ----------------------------
DROP TABLE IF EXISTS `tb_click_sum`;
CREATE TABLE `tb_click_sum` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '资源id',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `merch_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=58964 DEFAULT CHARSET=utf8 COMMENT='点击表';

-- ----------------------------
-- Table structure for tb_click_sum_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_click_sum_copy`;
CREATE TABLE `tb_click_sum_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '资源id',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `merch_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=21306 DEFAULT CHARSET=utf8 COMMENT='点击表';

-- ----------------------------
-- Table structure for tb_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '资源id',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `merch_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Table structure for tb_collection_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection_copy`;
CREATE TABLE `tb_collection_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '资源id',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `merch_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL COMMENT '资源id',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `image` text COMMENT '图片',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `comment_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '评论id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1民宿 2酒店 3涉车 4景点 5行程 6玩乐 7路线',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `isclose` tinyint(1) unsigned DEFAULT '0' COMMENT '是否关闭  1--关闭 ',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Table structure for tb_comment_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment_copy`;
CREATE TABLE `tb_comment_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL COMMENT '资源id',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `image` text COMMENT '图片',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `comment_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '评论id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1民宿 2酒店 3涉车 4景点 5行程 6玩乐 7路线',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `isclose` tinyint(1) unsigned DEFAULT '0' COMMENT '是否关闭  1--关闭 ',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Table structure for tb_complaints
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaints`;
CREATE TABLE `tb_complaints` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `image` text COMMENT '图片',
  `complaints_category_id` bigint(20) NOT NULL COMMENT '投诉类目id',
  `result` varchar(255) NOT NULL DEFAULT '' COMMENT '处理结果',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1未处理 2已处理',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员id',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `edittime` (`edittime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉表';

-- ----------------------------
-- Table structure for tb_complaints_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaints_category`;
CREATE TABLE `tb_complaints_category` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉类型表';

-- ----------------------------
-- Table structure for tb_complaints_category_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaints_category_copy`;
CREATE TABLE `tb_complaints_category_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉类型表';

-- ----------------------------
-- Table structure for tb_complaints_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaints_copy`;
CREATE TABLE `tb_complaints_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `image` text COMMENT '图片',
  `complaints_category_id` bigint(20) NOT NULL COMMENT '投诉类目id',
  `result` varchar(255) NOT NULL DEFAULT '' COMMENT '处理结果',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1未处理 2已处理',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员id',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `edittime` (`edittime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉表';

-- ----------------------------
-- Table structure for tb_coupon
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupon`;
CREATE TABLE `tb_coupon` (
  `tbid` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` tinyint(4) NOT NULL COMMENT '类型 1满减 2折扣',
  `rule` text NOT NULL COMMENT '规则',
  `stock` int(11) NOT NULL COMMENT '库存',
  `validity` int(11) NOT NULL DEFAULT '0' COMMENT '有效期',
  `allcount` tinyint(4) NOT NULL COMMENT '每人限额',
  `content` varchar(255) NOT NULL COMMENT '说明',
  `image` text COMMENT '列表页展示图',
  `status` tinyint(4) NOT NULL COMMENT '状态  1有效 2无效（作废或终止使用）',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `stock` (`stock`),
  KEY `validity` (`validity`),
  KEY `allcount` (`allcount`),
  KEY `status` (`status`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `starttime` (`starttime`),
  KEY `endtime` (`endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券';

-- ----------------------------
-- Table structure for tb_coupon_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupon_copy`;
CREATE TABLE `tb_coupon_copy` (
  `tbid` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` tinyint(4) NOT NULL COMMENT '类型 1满减 2折扣',
  `rule` text NOT NULL COMMENT '规则',
  `stock` int(11) NOT NULL COMMENT '库存',
  `validity` int(11) NOT NULL DEFAULT '0' COMMENT '有效期',
  `allcount` tinyint(4) NOT NULL COMMENT '每人限额',
  `content` varchar(255) NOT NULL COMMENT '说明',
  `image` text COMMENT '列表页展示图',
  `status` tinyint(4) NOT NULL COMMENT '状态  1有效 2无效（作废或终止使用）',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `stock` (`stock`),
  KEY `validity` (`validity`),
  KEY `allcount` (`allcount`),
  KEY `status` (`status`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `starttime` (`starttime`),
  KEY `endtime` (`endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券';

-- ----------------------------
-- Table structure for tb_coupon_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupon_goods`;
CREATE TABLE `tb_coupon_goods` (
  `tbid` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `coupon_id` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券关联商品';

-- ----------------------------
-- Table structure for tb_coupon_goods_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupon_goods_copy`;
CREATE TABLE `tb_coupon_goods_copy` (
  `tbid` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `coupon_id` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券关联商品';

-- ----------------------------
-- Table structure for tb_customer_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer_service`;
CREATE TABLE `tb_customer_service` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `status` tinyint(4) NOT NULL COMMENT '状态 0等待卖家审核 1等待买家退回商品 2等待买家修改申请 3等待买家确认收货 4售后已撤销 5退款成功 6卖家发货撤销申请',
  `refundtype` tinyint(4) NOT NULL COMMENT '退款类型 1 退款  2 退款退货 ',
  `isreceive` tinyint(4) NOT NULL COMMENT '是否收到货 0未收到 1已收到',
  `sendcost` int(11) NOT NULL DEFAULT '0' COMMENT '邮费',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `order_goods_id` bigint(20) NOT NULL COMMENT '商品快照id',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `confirm_money` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '已打款金额',
  `confirm_admin_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '确认人ID',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `admin_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`tbid`),
  KEY `member_id` (`member_id`),
  KEY `state` (`status`),
  KEY `ordernumber` (`ordernumber`),
  KEY `good_id` (`goods_id`),
  KEY `refundtype` (`refundtype`),
  KEY `isreceive` (`isreceive`),
  KEY `name` (`name`) USING BTREE,
  KEY `order_goods_id` (`order_goods_id`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8 COMMENT='商品售后申请表';

-- ----------------------------
-- Table structure for tb_customer_service_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer_service_copy`;
CREATE TABLE `tb_customer_service_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `status` tinyint(4) NOT NULL COMMENT '状态 0等待卖家审核 1等待买家退回商品 2等待买家修改申请 3等待买家确认收货 4售后已撤销 5退款成功 6卖家发货撤销申请',
  `refundtype` tinyint(4) NOT NULL COMMENT '退款类型 1 退款  2 退款退货 ',
  `isreceive` tinyint(4) NOT NULL COMMENT '是否收到货 0未收到 1已收到',
  `sendcost` int(11) NOT NULL DEFAULT '0' COMMENT '邮费',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `order_goods_id` bigint(20) NOT NULL COMMENT '商品快照id',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `confirm_money` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '已打款金额',
  `confirm_admin_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '确认人ID',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `admin_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '操作人ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `member_id` (`member_id`),
  KEY `state` (`status`),
  KEY `ordernumber` (`ordernumber`),
  KEY `good_id` (`goods_id`),
  KEY `refundtype` (`refundtype`),
  KEY `isreceive` (`isreceive`),
  KEY `name` (`name`) USING BTREE,
  KEY `order_goods_id` (`order_goods_id`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='商品售后申请表';

-- ----------------------------
-- Table structure for tb_customer_service_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer_service_detail`;
CREATE TABLE `tb_customer_service_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '售后内容',
  `image` text COMMENT '图片',
  `log` text COMMENT '日志',
  `type` tinyint(4) NOT NULL COMMENT '售后日志类型 1 买家申请资料 2 卖家拒绝退换货资料 3 卖家同意退货地址 4 买家发货信息 5卖家拒绝收货资料 6买家撤销申请 7完成退换货申请  8 其他',
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型 1 买家 2卖家 3平台',
  `customer_service_id` bigint(20) NOT NULL COMMENT '售后记录id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `usertype` (`usertype`),
  KEY `customer_service_id` (`customer_service_id`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8 COMMENT='售后详情表';

-- ----------------------------
-- Table structure for tb_customer_service_detail_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer_service_detail_copy`;
CREATE TABLE `tb_customer_service_detail_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '售后内容',
  `image` text COMMENT '图片',
  `log` text COMMENT '日志',
  `type` tinyint(4) NOT NULL COMMENT '售后日志类型 1 买家申请资料 2 卖家拒绝退换货资料 3 卖家同意退货地址 4 买家发货信息 5卖家拒绝收货资料 6买家撤销申请 7完成退换货申请  8 其他',
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型 1 买家 2卖家 3平台',
  `customer_service_id` bigint(20) NOT NULL COMMENT '售后记录id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `usertype` (`usertype`),
  KEY `customer_service_id` (`customer_service_id`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='售后详情表';

-- ----------------------------
-- Table structure for tb_data
-- ----------------------------
DROP TABLE IF EXISTS `tb_data`;
CREATE TABLE `tb_data` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `number` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 积分额 1兑换商品',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_data_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_data_area`;
CREATE TABLE `tb_data_area` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '地区',
  `types` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0国家1地区',
  `data_types` tinyint(1) NOT NULL DEFAULT '1',
  `value` int(10) NOT NULL DEFAULT '0' COMMENT '亮度',
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_data_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_data_member`;
CREATE TABLE `tb_data_member` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `times` date NOT NULL DEFAULT '0000-00-00' COMMENT '时间',
  `number` int(10) NOT NULL DEFAULT '1' COMMENT '加盟数量',
  `name` varchar(255) NOT NULL DEFAULT '0' COMMENT '商品种类名称',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品种类兑换量表';

-- ----------------------------
-- Table structure for tb_data_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_data_news`;
CREATE TABLE `tb_data_news` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '头条内容',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='名天头条内容管理表';

-- ----------------------------
-- Table structure for tb_delivery
-- ----------------------------
DROP TABLE IF EXISTS `tb_delivery`;
CREATE TABLE `tb_delivery` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `address` varchar(255) NOT NULL COMMENT '发货地址',
  `isfreeshipping` tinyint(4) NOT NULL COMMENT '是否包邮',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '计价方式 1按件数 2按重量',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 2隐藏',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `isfreeshipping` (`isfreeshipping`),
  KEY `type` (`type`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='快递';

-- ----------------------------
-- Table structure for tb_delivery_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_delivery_copy`;
CREATE TABLE `tb_delivery_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `address` varchar(255) NOT NULL COMMENT '发货地址',
  `isfreeshipping` tinyint(4) NOT NULL COMMENT '是否包邮',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '计价方式 1按件数 2按重量',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 2隐藏',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `isfreeshipping` (`isfreeshipping`),
  KEY `type` (`type`),
  KEY `shop_id` (`shop_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='快递';

-- ----------------------------
-- Table structure for tb_delivery_rule
-- ----------------------------
DROP TABLE IF EXISTS `tb_delivery_rule`;
CREATE TABLE `tb_delivery_rule` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_id` bigint(20) NOT NULL COMMENT '快递id',
  `area` text COMMENT '配送地区 默认为null 全国',
  `firststep` int(11) NOT NULL COMMENT '首件(重 单位g)',
  `firstprice` int(11) NOT NULL COMMENT '首件(重)价格',
  `addedstep` int(11) NOT NULL COMMENT '续件(重 单位g)',
  `addedprice` int(11) NOT NULL COMMENT '续件(重)价格',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `delivery_id` (`delivery_id`) USING BTREE,
  KEY `firststep` (`firststep`),
  KEY `firstprice` (`firstprice`),
  KEY `addedstep` (`addedstep`),
  KEY `addedprice` (`addedprice`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='邮费地区模板';

-- ----------------------------
-- Table structure for tb_delivery_rule_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_delivery_rule_copy`;
CREATE TABLE `tb_delivery_rule_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_id` bigint(20) NOT NULL COMMENT '快递id',
  `area` text COMMENT '配送地区 默认为null 全国',
  `firststep` int(11) NOT NULL COMMENT '首件(重 单位g)',
  `firstprice` int(11) NOT NULL COMMENT '首件(重)价格',
  `addedstep` int(11) NOT NULL COMMENT '续件(重 单位g)',
  `addedprice` int(11) NOT NULL COMMENT '续件(重)价格',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `delivery_id` (`delivery_id`) USING BTREE,
  KEY `firststep` (`firststep`),
  KEY `firstprice` (`firstprice`),
  KEY `addedstep` (`addedstep`),
  KEY `addedprice` (`addedprice`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='邮费地区模板';

-- ----------------------------
-- Table structure for tb_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `tb_dynamic`;
CREATE TABLE `tb_dynamic` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `image` text COMMENT '图片地址',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1动态 2行程',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态';

-- ----------------------------
-- Table structure for tb_dynamic_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_dynamic_copy`;
CREATE TABLE `tb_dynamic_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `image` text COMMENT '图片地址',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1动态 2行程',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态';

-- ----------------------------
-- Table structure for tb_fj_city
-- ----------------------------
DROP TABLE IF EXISTS `tb_fj_city`;
CREATE TABLE `tb_fj_city` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pk_guid` varchar(255) DEFAULT NULL COMMENT '泛嘉城市主键',
  `cityname` varchar(255) DEFAULT NULL COMMENT '城市名称',
  `pinying` varchar(255) DEFAULT NULL COMMENT '拼音',
  `simplename` varchar(255) DEFAULT NULL COMMENT '拼音简称',
  `updatetime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_fj_city_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_fj_city_copy`;
CREATE TABLE `tb_fj_city_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pk_guid` varchar(255) DEFAULT NULL COMMENT '泛嘉城市主键',
  `cityname` varchar(255) DEFAULT NULL COMMENT '城市名称',
  `pinying` varchar(255) DEFAULT NULL COMMENT '拼音',
  `simplename` varchar(255) DEFAULT NULL COMMENT '拼音简称',
  `updatetime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_footmark
-- ----------------------------
DROP TABLE IF EXISTS `tb_footmark`;
CREATE TABLE `tb_footmark` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL COMMENT '资源id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `type` tinyint(4) NOT NULL COMMENT '12店铺 13商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `resource_id` (`resource_id`) USING BTREE,
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=12565 DEFAULT CHARSET=utf8 COMMENT='足迹';

-- ----------------------------
-- Table structure for tb_footmark_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_footmark_copy`;
CREATE TABLE `tb_footmark_copy` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL COMMENT '资源id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `type` tinyint(4) NOT NULL COMMENT '12店铺 13商品',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `resource_id` (`resource_id`) USING BTREE,
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=9634 DEFAULT CHARSET=utf8 COMMENT='足迹';

-- ----------------------------
-- Table structure for tb_gas_station
-- ----------------------------
DROP TABLE IF EXISTS `tb_gas_station`;
CREATE TABLE `tb_gas_station` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL DEFAULT '0' COMMENT '总站id',
  `child_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '分站的id，多个以逗号分隔',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) NOT NULL DEFAULT '0' COMMENT '赠送积分',
  `starttime` int(10) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '活动状态 0未开始1进行中2已结束',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除0否1是',
  `admin_id` int(10) NOT NULL DEFAULT '0',
  `num` int(10) NOT NULL DEFAULT '0' COMMENT '领取数量',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='加油站活动列表';

-- ----------------------------
-- Table structure for tb_gasstation_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_gasstation_list`;
CREATE TABLE `tb_gasstation_list` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fuellingOrderId` int(50) NOT NULL COMMENT '订单ID',
  `HQId` int(20) NOT NULL COMMENT '总部ID',
  `HQName` varchar(255) NOT NULL COMMENT '总部名',
  `stationId` int(50) NOT NULL COMMENT '站点ID',
  `stationName` varchar(255) NOT NULL COMMENT '站点名',
  `PRName` varchar(255) NOT NULL COMMENT '油品名',
  `vol` varchar(255) NOT NULL COMMENT '升数',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `receivableAmount` varchar(255) NOT NULL COMMENT '应收金额',
  `realincomeAmount` varchar(255) NOT NULL COMMENT '实收金额',
  `discountAmount` varchar(255) NOT NULL COMMENT '优惠金额',
  `memberName` varchar(255) NOT NULL COMMENT '加油客户',
  `memberId` int(11) NOT NULL COMMENT '加油客户ID',
  `paidStatus` varchar(255) NOT NULL COMMENT '支付状态-1:无需支付,0:待确定,1:已支付',
  `paidTypeName` varchar(255) NOT NULL COMMENT '支付方式',
  `createdTime` datetime NOT NULL COMMENT '创建时间',
  `activity_integra` int(10) NOT NULL DEFAULT '0' COMMENT '赠送积分',
  `member_id` int(10) NOT NULL COMMENT '用户id',
  `gas_station_id` int(10) NOT NULL COMMENT '活动id',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态   0下架1上架',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `brand_id` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌ID',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `goods_pingtai_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台商品id',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1现金商品   2积分商品 3虚拟商品',
  `click_sum` int(4) NOT NULL DEFAULT '0' COMMENT '点击量',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `discount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--折扣',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-推荐商品',
  `purchasing` int(4) NOT NULL DEFAULT '0',
  `purchasing_num` int(10) DEFAULT NULL,
  `purchasing_time` int(15) DEFAULT NULL,
  `purchasing_time_end` int(15) DEFAULT NULL,
  `describe` int(4) DEFAULT '2',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=42836 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_attribute`;
CREATE TABLE `tb_goods_attribute` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '类目名',
  `attribute` longtext COMMENT '属性',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='商品属性';

-- ----------------------------
-- Table structure for tb_goods_attribute_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_attribute_copy`;
CREATE TABLE `tb_goods_attribute_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '类目名',
  `attribute` longtext COMMENT '属性',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品属性';

-- ----------------------------
-- Table structure for tb_goods_attributes
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_attributes`;
CREATE TABLE `tb_goods_attributes` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) NOT NULL COMMENT 'sku',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=utf8 COMMENT='商品关联属性';

-- ----------------------------
-- Table structure for tb_goods_attributes_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_attributes_copy`;
CREATE TABLE `tb_goods_attributes_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) NOT NULL COMMENT 'sku',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8 COMMENT='商品关联属性';

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '类目名',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类目等级',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父级id',
  `isparent` tinyint(4) NOT NULL DEFAULT '0' COMMENT '该类目是否有子集',
  `attribute` longtext COMMENT '属性',
  `sku` longtext COMMENT 'sku',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `sort_num` bigint(100) unsigned NOT NULL DEFAULT '100' COMMENT '排序值',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `level` (`level`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `isparent` (`isparent`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Table structure for tb_goods_category_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category_copy`;
CREATE TABLE `tb_goods_category_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '类目名',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类目等级',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父级id',
  `isparent` tinyint(4) NOT NULL DEFAULT '0' COMMENT '该类目是否有子集',
  `attribute` longtext COMMENT '属性',
  `sku` longtext COMMENT 'sku',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `sort_num` bigint(100) unsigned NOT NULL DEFAULT '100' COMMENT '排序值',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `level` (`level`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `isparent` (`isparent`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Table structure for tb_goods_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_copy`;
CREATE TABLE `tb_goods_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `brand_id` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌ID',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态   0下架1上架',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `goods_pingtai_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台商品id',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1现金商品   2积分商品',
  `click_sum` int(4) NOT NULL DEFAULT '0' COMMENT '点击量',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `discount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--折扣',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-推荐商品',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=31249 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_copy1`;
CREATE TABLE `tb_goods_copy1` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `brand_id` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌ID',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态   0下架1上架',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `goods_pingtai_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台商品id',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1现金商品   2积分商品',
  `click_sum` int(4) NOT NULL DEFAULT '0' COMMENT '点击量',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `discount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--折扣',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-推荐商品',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=11953 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_evaluate`;
CREATE TABLE `tb_goods_evaluate` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `describe_score` int(11) NOT NULL DEFAULT '500' COMMENT '描述评分 0-500分',
  `logistics_score` int(11) NOT NULL DEFAULT '500' COMMENT '物流评分 0-500分',
  `attitude_score` int(11) NOT NULL DEFAULT '500' COMMENT '态度评分 0-500分',
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `describescore` (`describe_score`),
  KEY `logisticsscore` (`logistics_score`),
  KEY `attitudescore` (`attitude_score`),
  KEY `ordernumber` (`ordernumber`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='订单评价';

-- ----------------------------
-- Table structure for tb_goods_evaluate_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_evaluate_copy`;
CREATE TABLE `tb_goods_evaluate_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `describe_score` int(11) NOT NULL DEFAULT '500' COMMENT '描述评分 0-500分',
  `logistics_score` int(11) NOT NULL DEFAULT '500' COMMENT '物流评分 0-500分',
  `attitude_score` int(11) NOT NULL DEFAULT '500' COMMENT '态度评分 0-500分',
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `describescore` (`describe_score`),
  KEY `logisticsscore` (`logistics_score`),
  KEY `attitudescore` (`attitude_score`),
  KEY `ordernumber` (`ordernumber`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='订单评价';

-- ----------------------------
-- Table structure for tb_goods_evaluate_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_evaluate_detail`;
CREATE TABLE `tb_goods_evaluate_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) NOT NULL COMMENT '评价等级 1好评 2中评 3差评',
  `images` text,
  `content` text COMMENT '内容',
  `ordernumber` varchar(255) NOT NULL COMMENT '订单编号',
  `isanonymous` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否匿名',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `order_goods_id` bigint(20) NOT NULL COMMENT '商品快照id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `isclose` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否关闭  1--显示',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `level` (`level`),
  KEY `ordernumber` (`ordernumber`),
  KEY `isanonymous` (`isanonymous`),
  KEY `member_id` (`member_id`),
  KEY `goods_id` (`goods_id`),
  KEY `order_goods_id` (`order_goods_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='商品评价';

-- ----------------------------
-- Table structure for tb_goods_evaluate_detail_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_evaluate_detail_copy`;
CREATE TABLE `tb_goods_evaluate_detail_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) NOT NULL COMMENT '评价等级 1好评 2中评 3差评',
  `images` text,
  `content` text COMMENT '内容',
  `ordernumber` varchar(255) NOT NULL COMMENT '订单编号',
  `isanonymous` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否匿名',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `order_goods_id` bigint(20) NOT NULL COMMENT '商品快照id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `isclose` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否关闭  1--显示',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `level` (`level`),
  KEY `ordernumber` (`ordernumber`),
  KEY `isanonymous` (`isanonymous`),
  KEY `member_id` (`member_id`),
  KEY `goods_id` (`goods_id`),
  KEY `order_goods_id` (`order_goods_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='商品评价';

-- ----------------------------
-- Table structure for tb_goods_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_order`;
CREATE TABLE `tb_goods_order` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `address` text NOT NULL,
  `expresscompany` varchar(255) NOT NULL DEFAULT '' COMMENT '快递公司',
  `expressnumber` varchar(255) NOT NULL DEFAULT '' COMMENT '快递单号',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量',
  `sendcost` int(11) NOT NULL DEFAULT '0' COMMENT '邮费',
  `offer` int(11) NOT NULL DEFAULT '0' COMMENT '优惠',
  `totalintegral` int(11) NOT NULL DEFAULT '0' COMMENT '总积分',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `send_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1快递 2自提',
  `fetch_code` varchar(255) NOT NULL DEFAULT '' COMMENT '提货码',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `send_admin_id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '发货人ID',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `expresscompany` (`expresscompany`),
  KEY `expressnumber` (`expressnumber`),
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3838 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for tb_goods_order_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_order_copy`;
CREATE TABLE `tb_goods_order_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `address` text NOT NULL,
  `expresscompany` varchar(255) NOT NULL DEFAULT '' COMMENT '快递公司',
  `expressnumber` varchar(255) NOT NULL DEFAULT '' COMMENT '快递单号',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量',
  `sendcost` int(11) NOT NULL DEFAULT '0' COMMENT '邮费',
  `offer` int(11) NOT NULL DEFAULT '0' COMMENT '优惠',
  `totalintegral` int(11) NOT NULL DEFAULT '0' COMMENT '总积分',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `send_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1快递 2自提',
  `fetch_code` varchar(255) NOT NULL DEFAULT '' COMMENT '提货码',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `send_admin_id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '发货人ID',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `expresscompany` (`expresscompany`),
  KEY `expressnumber` (`expressnumber`),
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1704 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for tb_goods_order_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_order_copy1`;
CREATE TABLE `tb_goods_order_copy1` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `address` text NOT NULL,
  `expresscompany` varchar(255) NOT NULL DEFAULT '' COMMENT '快递公司',
  `expressnumber` varchar(255) NOT NULL DEFAULT '' COMMENT '快递单号',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量',
  `sendcost` int(11) NOT NULL DEFAULT '0' COMMENT '邮费',
  `offer` int(11) NOT NULL DEFAULT '0' COMMENT '优惠',
  `totalintegral` int(11) NOT NULL DEFAULT '0' COMMENT '总积分',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `send_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1快递 2自提',
  `fetch_code` varchar(255) NOT NULL DEFAULT '' COMMENT '提货码',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `send_admin_id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '发货人ID',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `expresscompany` (`expresscompany`),
  KEY `expressnumber` (`expressnumber`),
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3046 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for tb_goods_pingtai
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai`;
CREATE TABLE `tb_goods_pingtai` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `brand_id` bigint(20) NOT NULL COMMENT '品牌',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态   -1待审核 0下架1上架 ',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isshoprecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否店铺推荐',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `g_type` tinyint(4) NOT NULL COMMENT '1现金商品   2积分商品',
  `verify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `verify_admin_id` bigint(20) DEFAULT NULL COMMENT '审核人ID',
  `verify_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态   1发布待审核  2发布审核失败  3发布审核通过   4下架待审核  5下架审核失败  6下架审核通过  7上架待审核  8上架审核失败  9上架审核通过  10编辑待审核  11编辑审核失败  12编辑审核通过',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `click_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `purchasing` int(4) NOT NULL DEFAULT '0' COMMENT '限购 1限购',
  `purchasing_time` int(15) DEFAULT NULL,
  `purchasing_time_end` int(15) DEFAULT NULL,
  `purchasing_num` int(10) DEFAULT NULL,
  `describe` int(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_pingtai_attributes
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_attributes`;
CREATE TABLE `tb_goods_pingtai_attributes` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) NOT NULL COMMENT 'sku',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='商品关联属性';

-- ----------------------------
-- Table structure for tb_goods_pingtai_attributes_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_attributes_copy`;
CREATE TABLE `tb_goods_pingtai_attributes_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) NOT NULL COMMENT 'sku',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品关联属性';

-- ----------------------------
-- Table structure for tb_goods_pingtai_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_copy`;
CREATE TABLE `tb_goods_pingtai_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `brand_id` bigint(20) NOT NULL COMMENT '品牌',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态   -1待审核 0下架1上架 ',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isshoprecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否店铺推荐',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `g_type` tinyint(4) NOT NULL COMMENT '1现金商品   2积分商品',
  `verify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `verify_admin_id` bigint(20) DEFAULT NULL COMMENT '审核人ID',
  `verify_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态   1发布待审核  2发布审核失败  3发布审核通过   4下架待审核  5下架审核失败  6下架审核通过  7上架待审核  8上架审核失败  9上架审核通过  10编辑待审核  11编辑审核失败  12编辑审核通过',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `click_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `purchasing` int(4) NOT NULL DEFAULT '0' COMMENT '限购 1限购',
  `purchasing_time` int(15) DEFAULT NULL,
  `purchasing_time_end` int(15) DEFAULT NULL,
  `purchasing_num` int(10) DEFAULT NULL,
  `describe` int(4) NOT NULL DEFAULT '2' COMMENT '现金描述',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_pingtai_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_sku`;
CREATE TABLE `tb_goods_pingtai_sku` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `image` text COMMENT '图片',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `itemcode` varchar(50) DEFAULT NULL,
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `stock_money` int(9) DEFAULT NULL COMMENT '进货价',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `price` (`price`),
  KEY `originalprice` (`originalprice`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=6752 DEFAULT CHARSET=utf8 COMMENT='商品sku';

-- ----------------------------
-- Table structure for tb_goods_pingtai_sku_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_sku_copy`;
CREATE TABLE `tb_goods_pingtai_sku_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `image` text COMMENT '图片',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `price` (`price`),
  KEY `originalprice` (`originalprice`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=1982 DEFAULT CHARSET=utf8 COMMENT='商品sku';

-- ----------------------------
-- Table structure for tb_goods_pingtai_sku1
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai_sku1`;
CREATE TABLE `tb_goods_pingtai_sku1` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `image` text COMMENT '图片',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `itemcode` varchar(50) DEFAULT NULL,
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `stock_money` int(10) DEFAULT NULL,
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `price` (`price`),
  KEY `originalprice` (`originalprice`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=3882 DEFAULT CHARSET=utf8 COMMENT='商品sku';

-- ----------------------------
-- Table structure for tb_goods_pingtai2
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_pingtai2`;
CREATE TABLE `tb_goods_pingtai2` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `brand_id` bigint(20) NOT NULL COMMENT '品牌',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态   -1待审核 0下架1上架 ',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isshoprecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否店铺推荐',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `g_type` tinyint(4) NOT NULL COMMENT '1现金商品   2积分商品',
  `verify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `verify_admin_id` bigint(20) DEFAULT NULL COMMENT '审核人ID',
  `verify_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核状态   1发布待审核  2发布审核失败  3发布审核通过   4下架待审核  5下架审核失败  6下架审核通过  7上架待审核  8上架审核失败  9上架审核通过  10编辑待审核  11编辑审核失败  12编辑审核通过',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `click_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `purchasing` int(4) NOT NULL DEFAULT '0' COMMENT '限购 1限购',
  `purchasing_time` int(15) DEFAULT NULL,
  `purchasing_time_end` int(15) DEFAULT NULL,
  `purchasing_num` int(10) DEFAULT NULL,
  `describe` int(4) NOT NULL DEFAULT '2' COMMENT '现金描述',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_goods_position
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_position`;
CREATE TABLE `tb_goods_position` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(10) NOT NULL,
  `warehouse_id` int(10) NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku`;
CREATE TABLE `tb_goods_sku` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `image` text COMMENT '图片',
  `itemcode` varchar(255) DEFAULT NULL COMMENT '商品编码',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `stock_money` int(10) DEFAULT NULL,
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `price` (`price`),
  KEY `originalprice` (`originalprice`),
  KEY `stock` (`stock`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=132243 DEFAULT CHARSET=utf8 COMMENT='商品sku';

-- ----------------------------
-- Table structure for tb_goods_sku_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku_copy`;
CREATE TABLE `tb_goods_sku_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `stock` int(11) NOT NULL COMMENT '库存',
  `image` text COMMENT '图片',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `price` (`price`),
  KEY `originalprice` (`originalprice`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=36402 DEFAULT CHARSET=utf8 COMMENT='商品sku';

-- ----------------------------
-- Table structure for tb_goods_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_warehouse`;
CREATE TABLE `tb_goods_warehouse` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '库名',
  `shelves` varchar(255) NOT NULL COMMENT '货架',
  `layer` varchar(255) NOT NULL COMMENT '层级',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edittime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_goods_warehouse1
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_warehouse1`;
CREATE TABLE `tb_goods_warehouse1` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '库名',
  `attribute` longtext COMMENT '位名',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='库位表';

-- ----------------------------
-- Table structure for tb_goods1
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods1`;
CREATE TABLE `tb_goods1` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `brand_id` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌ID',
  `image` text COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '快递模板id',
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态   0下架1上架',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销售量',
  `goods_category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品类目id',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `goods_pingtai_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台商品id',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1现金商品   2积分商品',
  `click_sum` int(4) NOT NULL DEFAULT '0' COMMENT '点击量',
  `give_sum` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送的积分',
  `discount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1--折扣',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-推荐商品',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `state` (`status`),
  KEY `sales` (`sales`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=31249 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for tb_integral
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral`;
CREATE TABLE `tb_integral` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 2积分卡充值 3积分支付 4商户充值用户 5平台充值商户 6平台回收商户 7积分赠送 8商品兑换 9线上充值商户 10商户冻结 11商户解冻   12线上用户充值积分 13购买商品赠送 14商户回收用户积分 15商户冻结用户积分  16.订单取消退还积分 ',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '交易状态 1等待 2失败 3成功',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `give_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '发放人amdin id',
  `deal_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人admin id',
  `reason` text COMMENT '审核拒绝原因',
  `remark` text COMMENT '备注',
  `why` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1注册赠送/ 2消费赠送/ 3充值赠送/ 4营销赠送 5积分领取',
  `payway` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1支付宝  2微信  3积分支付',
  `auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1审核中  2拒绝  3通过',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '消费金额(分)',
  `receipt_no` varchar(255) NOT NULL DEFAULT '' COMMENT '小票编号',
  `submit_time` int(12) DEFAULT NULL COMMENT '提交时间',
  `api_status` int(4) NOT NULL DEFAULT '0' COMMENT '减积分接口状态 码',
  `api_type` int(4) NOT NULL DEFAULT '0' COMMENT '减积分接口是否开启 1开启',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`) USING BTREE,
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `integral` (`integral`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6513 DEFAULT CHARSET=utf8 COMMENT='积分';

-- ----------------------------
-- Table structure for tb_integral_card
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_card`;
CREATE TABLE `tb_integral_card` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(255) NOT NULL DEFAULT '' COMMENT '卡号',
  `card_pwd` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未使用 1 已经使用',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '积分',
  `mem_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分卡';

-- ----------------------------
-- Table structure for tb_integral_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_copy`;
CREATE TABLE `tb_integral_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 2积分卡充值 3积分支付 4商户充值用户 5平台充值商户 6平台回收商户 7积分赠送 8商品兑换 9线上充值商户 10商户冻结 11商户解冻   12线上用户充值积分 13购买商品赠送 14商户回收用户积分 15商户冻结用户积分',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '交易状态 1等待 2失败 3成功',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `give_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '发放人amdin id',
  `deal_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人admin id',
  `reason` text COMMENT '审核拒绝原因',
  `remark` text COMMENT '备注',
  `why` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1注册赠送/ 2消费赠送/ 3充值赠送/ 4营销赠送 5积分领取',
  `payway` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1支付宝  2微信  3积分支付',
  `auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1审核中  2拒绝  3通过',
  `total` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '消费金额(分)',
  `receipt_no` varchar(255) NOT NULL DEFAULT '' COMMENT '小票编号',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`) USING BTREE,
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `integral` (`integral`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2712 DEFAULT CHARSET=utf8 COMMENT='积分';

-- ----------------------------
-- Table structure for tb_integral_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_detail`;
CREATE TABLE `tb_integral_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(50) DEFAULT NULL,
  `before` int(11) NOT NULL DEFAULT '0' COMMENT '变动前',
  `after` int(11) NOT NULL DEFAULT '0' COMMENT '变动后',
  `integral` int(11) NOT NULL COMMENT '积分',
  `type` varchar(255) NOT NULL COMMENT '类型 2积分卡充值 3积分支付 4商户充值 5平台充值 6平台回收 7积分赠送 8商品兑换 9 微信充值 10商户冻结 11商户解冻 12线上用户充值积分 13购买商品赠送  14商户回收用户积分 15商户冻结用户积分 16订单取消退还积分 20 扫码获得积分',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `member_id` (`member_id`),
  KEY `integral` (`integral`) USING BTREE,
  KEY `before` (`before`) USING BTREE,
  KEY `after` (`after`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=5389 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Table structure for tb_integral_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_qrcode`;
CREATE TABLE `tb_integral_qrcode` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 2积分卡充值 3积分支付 4商户充值用户 5平台充值商户 6平台回收商户 7积分赠送 8商品兑换 9线上充值商户 10商户冻结 11商户解冻   12线上用户充值积分 13购买商品赠送 14商户回收用户积分 15商户冻结用户积分',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '交易状态 1待领取  2取消  3.已领取 ',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `give_admin_id` int(11) DEFAULT '0' COMMENT '发放人amdin id',
  `quit_admin_id` int(11) unsigned DEFAULT NULL COMMENT '取消人',
  `reason` text COMMENT '审核拒绝原因',
  `remark` text COMMENT '备注',
  `why` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1注册赠送/ 2消费赠送/ 3充值赠送/ 4营销赠送 5积分领取',
  `payway` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1支付宝  2微信  3积分支付',
  `auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1审核中  2拒绝  3通过',
  `total` decimal(10,0) DEFAULT '0' COMMENT '消费金额(分)',
  `receipt_no` varchar(255) DEFAULT '' COMMENT '小票编号',
  `merchant_id` int(11) unsigned DEFAULT NULL COMMENT '商户ID',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`) USING BTREE,
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `integral` (`integral`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='二维码发送积分表';

-- ----------------------------
-- Table structure for tb_integral_trade
-- ----------------------------
DROP TABLE IF EXISTS `tb_integral_trade`;
CREATE TABLE `tb_integral_trade` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tradenumber` varchar(255) NOT NULL DEFAULT '' COMMENT '流水号',
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '积分订单号',
  `cre_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '0-关闭 1-等待付款 2-完成',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Table structure for tb_interface_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_interface_token`;
CREATE TABLE `tb_interface_token` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ip
-- ----------------------------
DROP TABLE IF EXISTS `tb_ip`;
CREATE TABLE `tb_ip` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` bigint(11) NOT NULL COMMENT 'IP',
  `country` varchar(255) NOT NULL COMMENT '国家',
  `province` varchar(255) NOT NULL COMMENT '省份',
  `city` varchar(255) NOT NULL COMMENT '城市',
  `creattime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`creattime`),
  KEY `edittime` (`edittime`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4160 DEFAULT CHARSET=utf8 COMMENT='IP库';

-- ----------------------------
-- Table structure for tb_itemcode_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_itemcode_list`;
CREATE TABLE `tb_itemcode_list` (
  `tbid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(100) NOT NULL COMMENT '商品编码',
  `number` int(20) NOT NULL DEFAULT '0' COMMENT '数量',
  `remark` text COMMENT '备注',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edit_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `warehouse_id` int(10) DEFAULT NULL,
  `position_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_job
-- ----------------------------
DROP TABLE IF EXISTS `tb_job`;
CREATE TABLE `tb_job` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '招聘标题',
  `content` longtext COMMENT '招聘内容',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='招聘管理';

-- ----------------------------
-- Table structure for tb_job_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_job_image`;
CREATE TABLE `tb_job_image` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `top_image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_image` varchar(255) NOT NULL COMMENT '招聘内容',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='招聘管理';

-- ----------------------------
-- Table structure for tb_job_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tb_job_tmp`;
CREATE TABLE `tb_job_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `tmp_name` varchar(255) NOT NULL,
  `tmp_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_league
-- ----------------------------
DROP TABLE IF EXISTS `tb_league`;
CREATE TABLE `tb_league` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '加盟标题',
  `content` text COMMENT '加盟条件',
  `images` varchar(255) NOT NULL DEFAULT '' COMMENT '加盟标题图片',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='加盟条件列表';

-- ----------------------------
-- Table structure for tb_league_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_league_info`;
CREATE TABLE `tb_league_info` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '加盟者姓名',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '加盟者手机号',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '市',
  `block` varchar(255) NOT NULL DEFAULT '' COMMENT '区',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '申请时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态 0未审核1已审核2拒绝审核',
  `check_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='加盟申请信息表';

-- ----------------------------
-- Table structure for tb_letter
-- ----------------------------
DROP TABLE IF EXISTS `tb_letter`;
CREATE TABLE `tb_letter` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `memberid` bigint(20) NOT NULL COMMENT '用户ID',
  `to_memberid` bigint(20) NOT NULL COMMENT '私信用户ID',
  `isread` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `memberid` (`memberid`),
  KEY `to_memberid` (`to_memberid`),
  KEY `isread` (`isread`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信';

-- ----------------------------
-- Table structure for tb_like
-- ----------------------------
DROP TABLE IF EXISTS `tb_like`;
CREATE TABLE `tb_like` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(11) NOT NULL COMMENT '资源id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `type` tinyint(4) NOT NULL COMMENT '类型 1民宿 2酒店 3涉车 4景点 5行程 6玩乐 7路线 8动态 9行程',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `album_id` (`resource_id`) USING BTREE,
  KEY `member_id` (`member_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='点赞';

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `paypassword` varchar(255) DEFAULT NULL COMMENT '支付密码',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '余额',
  `freeze` int(11) DEFAULT '0' COMMENT '冻结资金',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `headimg` text COMMENT '头像地址',
  `sex` tinyint(4) NOT NULL DEFAULT '3' COMMENT '性别 1男 2女 3迷',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `isverified` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否实名',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `lastcity` varchar(255) NOT NULL DEFAULT '' COMMENT '最近城市',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `birth` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '出生年月',
  `isfreezed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否冻结 1--冻结',
  `fre_integral` int(11) NOT NULL DEFAULT '0' COMMENT '冻结积分',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  PRIMARY KEY (`tbid`),
  KEY `password` (`password`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `nickname` (`nickname`),
  KEY `realname` (`realname`),
  KEY `sex` (`sex`),
  KEY `balance` (`balance`),
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3136 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Table structure for tb_member_attention
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_attention`;
CREATE TABLE `tb_member_attention` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint(11) NOT NULL COMMENT '用户id',
  `attention_member_id` bigint(11) NOT NULL COMMENT '关注用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `is_del` tinyint(1) DEFAULT '0',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `attention_member_id` (`attention_member_id`) USING BTREE,
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注会员';

-- ----------------------------
-- Table structure for tb_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_login_log`;
CREATE TABLE `tb_member_login_log` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `ip` bigint(11) NOT NULL COMMENT 'IP',
  `city` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1前台   2商户  3平台',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=9884 DEFAULT CHARSET=utf8 COMMENT='会员登录记录';

-- ----------------------------
-- Table structure for tb_member_shop_map
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_shop_map`;
CREATE TABLE `tb_member_shop_map` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `mem_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '客户会员id',
  `creattime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `invite_member_id` (`shop_id`),
  KEY `invitee_member_id` (`mem_id`),
  KEY `creattime` (`creattime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='店铺-会员关联(客户管理)';

-- ----------------------------
-- Table structure for tb_member_thirdparty_login
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_thirdparty_login`;
CREATE TABLE `tb_member_thirdparty_login` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '第三方平台类型  1qq 2微信 3微博 4淘宝',
  `account` varchar(255) NOT NULL COMMENT '第三方平台 关联账户id',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`),
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方平台登陆关联账号';

-- ----------------------------
-- Table structure for tb_member_token
-- ----------------------------
DROP TABLE IF EXISTS `tb_member_token`;
CREATE TABLE `tb_member_token` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `token` varchar(255) NOT NULL COMMENT 'token',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `failuretime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1生效 2失效',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1前台   2商户  3平台',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `member_id` (`member_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `failuretime` (`failuretime`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10097 DEFAULT CHARSET=utf8 COMMENT='会员token';

-- ----------------------------
-- Table structure for tb_merchant_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_merchant_admin`;
CREATE TABLE `tb_merchant_admin` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `admin_member_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '员工ID',
  `authorizelist` text,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='员工商户表';

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '说明',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1系统 3站内信 4短信',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `who` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 1商户-会员   2平台-会员',
  `mer_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`tbid`),
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=1398 DEFAULT CHARSET=utf8 COMMENT='消息';

-- ----------------------------
-- Table structure for tb_message_one
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_one`;
CREATE TABLE `tb_message_one` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '说明',
  `member_id` varchar(20) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1系统 3站内信 4短信',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `who` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 1商户-会员   2平台-会员',
  `mer_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商户id',
  `settle_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '结算人 ',
  `settle_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结算时间',
  `send_admin_id` int(11) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否结算 0--未结算',
  PRIMARY KEY (`tbid`),
  KEY `member_id` (`member_id`),
  KEY `type` (`type`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='后台消息';

-- ----------------------------
-- Table structure for tb_message_read
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_read`;
CREATE TABLE `tb_message_read` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) NOT NULL COMMENT '消息ID',
  `member_id` bigint(20) NOT NULL COMMENT '会员ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1已读 2删除',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`),
  KEY `message_id` (`message_id`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='消息阅读';

-- ----------------------------
-- Table structure for tb_my_coupon
-- ----------------------------
DROP TABLE IF EXISTS `tb_my_coupon`;
CREATE TABLE `tb_my_coupon` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` tinyint(4) NOT NULL COMMENT '类型 1满减 2折扣',
  `fullmoney` int(11) NOT NULL DEFAULT '0' COMMENT '满足金额',
  `reducemoney` int(11) NOT NULL DEFAULT '0' COMMENT '减少金额',
  `discount` int(11) NOT NULL DEFAULT '0' COMMENT '折扣',
  `content` text COMMENT '内容',
  `image` text COMMENT '图片',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态  1未使用 2已使用',
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `endtime` datetime NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`tbid`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `coupon_id` (`coupon_id`),
  KEY `goods_id` (`goods_id`),
  KEY `shop_id` (`shop_id`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `endtime` (`endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的优惠券';

-- ----------------------------
-- Table structure for tb_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `content` text COMMENT '详情',
  `image` text COMMENT '图片地址',
  `news_category_id` bigint(20) NOT NULL COMMENT '新闻分类id',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `isrecommend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `indexid` int(20) NOT NULL DEFAULT '1' COMMENT '排序',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `news_category_id` (`news_category_id`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻';

-- ----------------------------
-- Table structure for tb_news_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_news_category`;
CREATE TABLE `tb_news_category` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标题',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父级id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `parent_id` (`parent_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

-- ----------------------------
-- Table structure for tb_offline_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_offline_activity`;
CREATE TABLE `tb_offline_activity` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activename` varchar(255) NOT NULL DEFAULT '' COMMENT '线下活动名称',
  `amount` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '消耗金额',
  `giveintegral` int(10) NOT NULL DEFAULT '0' COMMENT '消耗赠送积分',
  `number` int(10) NOT NULL DEFAULT '0' COMMENT '发放的数量',
  `starttime` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '商户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '活动状态，0未开始1进行中2已结束',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0否1是',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='线下活动列表';

-- ----------------------------
-- Table structure for tb_offline_activity_giveintegral
-- ----------------------------
DROP TABLE IF EXISTS `tb_offline_activity_giveintegral`;
CREATE TABLE `tb_offline_activity_giveintegral` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) NOT NULL COMMENT '活动id',
  `admin_id` int(10) NOT NULL COMMENT '商户id',
  `shop_id` int(10) NOT NULL COMMENT '店铺id',
  `type` int(4) NOT NULL DEFAULT '0' COMMENT '0 未使用 1已使用',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0停用 1启用',
  `giveintegral` int(255) NOT NULL COMMENT '领取积分',
  `code` varchar(50) NOT NULL COMMENT '校验码',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edittime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rand` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_offline_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_offline_list`;
CREATE TABLE `tb_offline_list` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_offline_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_offline_shop`;
CREATE TABLE `tb_offline_shop` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) NOT NULL COMMENT '线下店铺名',
  `admin_id` int(10) NOT NULL COMMENT '商户id',
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '1 开启 0关闭',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edittime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单号码',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总金额',
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '订单状态 0订单关闭 1等待买家付款 2等待卖家发货 3已发货 4订单完成',
  `invoice` varchar(255) NOT NULL DEFAULT '' COMMENT '发票',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `payway` tinyint(4) NOT NULL DEFAULT '0' COMMENT '付款方式 1余额 2微信 3支付宝 4积分',
  `isevaluation` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否评价',
  `type` tinyint(4) NOT NULL DEFAULT '13' COMMENT '类型 0url,1民宿,2酒店,3涉车,4景点,5机票,6玩乐,7路线,8动态,9行程,10问答,11评论,12店铺,13商品',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '订单操作原因',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `desc` text COMMENT '商家备注',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`),
  KEY `total` (`total`),
  KEY `state` (`status`),
  KEY `paymenttype` (`payway`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=3920 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for tb_order_close
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_close`;
CREATE TABLE `tb_order_close` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NOT NULL COMMENT '后台操作人id',
  `reason` varchar(255) DEFAULT NULL COMMENT '操作人原因',
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='订单关闭表记录';

-- ----------------------------
-- Table structure for tb_order_datetime
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_datetime`;
CREATE TABLE `tb_order_datetime` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '操作类型:1 关闭订单 2付款 3发货 4确认收货',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `ordernumber` (`ordernumber`),
  KEY `type` (`type`),
  KEY `createtime` (`createtime`)
) ENGINE=InnoDB AUTO_INCREMENT=4364 DEFAULT CHARSET=utf8 COMMENT='订单操作记录';

-- ----------------------------
-- Table structure for tb_order_flight
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_flight`;
CREATE TABLE `tb_order_flight` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL COMMENT '订单编号',
  `orgcity` varchar(255) DEFAULT NULL COMMENT '出发城市名',
  `dstcity` varchar(255) DEFAULT NULL COMMENT '到达城市名',
  `depairportname` varchar(255) DEFAULT NULL COMMENT '起飞机场名称',
  `arrairportname` varchar(255) DEFAULT NULL COMMENT '到达机场名称',
  `flightnumber` varchar(255) DEFAULT NULL COMMENT '航班号',
  `cabincode` varchar(255) DEFAULT NULL COMMENT '舱位编码',
  `cabinname` varchar(255) DEFAULT NULL COMMENT '舱位类型',
  `depairportcode` varchar(255) DEFAULT NULL COMMENT '起飞机场三字码',
  `arrairportcode` varchar(255) DEFAULT NULL COMMENT '到达机场三字码',
  `deptimestr` varchar(255) DEFAULT NULL COMMENT '起飞时间',
  `arrtimestr` varchar(255) DEFAULT NULL COMMENT '到达时间',
  `depterm` varchar(255) DEFAULT NULL COMMENT '起飞航站楼',
  `arrterm` varchar(255) DEFAULT NULL COMMENT '到达航站楼',
  `aircraftname` varchar(255) DEFAULT NULL COMMENT '飞机型号',
  `taxfuel` int(11) DEFAULT NULL COMMENT '燃油附加费',
  `taxconstruct` int(11) DEFAULT NULL COMMENT '机场建设费',
  `normalprice` int(11) DEFAULT NULL COMMENT '票面价',
  `normaldiscount` int(11) DEFAULT NULL COMMENT '票面价折扣',
  `baseprice` int(11) DEFAULT NULL COMMENT '基础价',
  `ticketprice` int(11) DEFAULT NULL COMMENT '对公优惠后的机票价格',
  `ticketpricetype` varchar(255) DEFAULT NULL COMMENT '价格类型 可选值 1协议价 2大客户价 3官网价',
  `havemeal` tinyint(4) DEFAULT NULL COMMENT '是否含餐食',
  `ischeapairline` tinyint(4) DEFAULT NULL COMMENT '是否廉价航空',
  `baggageruleskey` varchar(255) DEFAULT NULL COMMENT '行李托运规则key',
  `companyname` varchar(255) DEFAULT NULL COMMENT '航空公司名称',
  `companycode` varchar(255) DEFAULT NULL COMMENT '航空公司缩写',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机票订单快照表';

-- ----------------------------
-- Table structure for tb_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_goods`;
CREATE TABLE `tb_order_goods` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `image` text NOT NULL COMMENT '图片',
  `origin` varchar(255) NOT NULL DEFAULT '' COMMENT '产地',
  `itemcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编码',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量（单位g）',
  `delivery_id` bigint(20) NOT NULL COMMENT '快递模板id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `skuattribute` longtext COMMENT 'sku属性',
  `attribute` longtext COMMENT '属性',
  `content` longtext COMMENT '详情',
  `goods_category_id` bigint(20) NOT NULL COMMENT '商品类目id',
  `ordernumber` varchar(255) NOT NULL COMMENT '订单编号',
  `sku` varchar(255) NOT NULL COMMENT 'sku',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `originalprice` int(11) NOT NULL COMMENT '原价',
  `count` int(11) NOT NULL COMMENT '数量',
  `skuimage` text COMMENT '图片',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `g_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1金钱商品   2积分商品',
  PRIMARY KEY (`tbid`),
  KEY `itemcode` (`itemcode`),
  KEY `shop_id` (`shop_id`),
  KEY `origin` (`origin`),
  KEY `goods_category_id` (`goods_category_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `intro` (`intro`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `ordernumber` (`ordernumber`),
  KEY `sku` (`sku`),
  KEY `price` (`price`),
  KEY `integral` (`integral`),
  KEY `originalprice` (`originalprice`),
  KEY `count` (`count`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7207 DEFAULT CHARSET=utf8 COMMENT='商品快照';

-- ----------------------------
-- Table structure for tb_project_integration
-- ----------------------------
DROP TABLE IF EXISTS `tb_project_integration`;
CREATE TABLE `tb_project_integration` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(50) NOT NULL COMMENT '单号',
  `admin_id` int(15) NOT NULL,
  `member_id` int(15) NOT NULL,
  `status` int(10) NOT NULL COMMENT '状态 0 开启 1关闭 ',
  `remark` text COMMENT '备注',
  `money` int(15) NOT NULL DEFAULT '0' COMMENT '总金额',
  `surplus_money` int(15) NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `withdraw` int(10) NOT NULL DEFAULT '0' COMMENT '收回积分',
  `give_admin_id` int(10) NOT NULL COMMENT '发放人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edittime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_search
-- ----------------------------
DROP TABLE IF EXISTS `tb_search`;
CREATE TABLE `tb_search` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `search` varchar(20) NOT NULL COMMENT '搜索',
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tbid`) USING BTREE,
  KEY `search` (`search`) USING BTREE,
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `edittime` (`edittime`) USING BTREE,
  KEY `isdel` (`isdel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7661 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='搜索记录';

-- ----------------------------
-- Table structure for tb_search_hot
-- ----------------------------
DROP TABLE IF EXISTS `tb_search_hot`;
CREATE TABLE `tb_search_hot` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `search` varchar(20) NOT NULL COMMENT '搜索',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`) USING BTREE,
  KEY `search` (`search`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `edittime` (`edittime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='热门搜索';

-- ----------------------------
-- Table structure for tb_set
-- ----------------------------
DROP TABLE IF EXISTS `tb_set`;
CREATE TABLE `tb_set` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_profile` text COMMENT '公司简介',
  `about` text COMMENT '关于我们',
  `serviceprotocol` text COMMENT '服务协议',
  `privacypolicy` text COMMENT '隐私政策',
  `followus` text COMMENT '关注我们',
  `copyright` text COMMENT '版权',
  `cooperation` text COMMENT '商业合作',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `postcode` varchar(255) NOT NULL COMMENT '邮编',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `phone` varchar(255) NOT NULL COMMENT '联系电话',
  `join_tel` varchar(255) NOT NULL COMMENT '加盟',
  `service_tel` varchar(255) NOT NULL COMMENT '客服电话',
  `site` varchar(255) NOT NULL COMMENT '地址',
  `wechat` varchar(255) NOT NULL COMMENT '微信',
  `wechat1` varchar(255) NOT NULL DEFAULT '' COMMENT '第二张微信图片',
  `sina` varchar(255) NOT NULL DEFAULT '' COMMENT '新浪二维码',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `map_y` varchar(255) DEFAULT NULL,
  `description` text COMMENT '网站描述',
  `map_x` varchar(255) DEFAULT NULL,
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `keywords` text COMMENT '关键词',
  `route` varchar(255) DEFAULT NULL COMMENT '安装路径',
  `title` varchar(255) DEFAULT NULL COMMENT '网站标题',
  `prohibitUsername` text COMMENT '禁止用户名',
  `http` varchar(255) DEFAULT NULL COMMENT 'http地址',
  `integral_num` int(11) NOT NULL DEFAULT '0' COMMENT '商户对用户积分发放短息通知界限值',
  `no_ex_fee_total` int(11) NOT NULL DEFAULT '0' COMMENT '满多少金额(分)包邮',
  `no_ex_fee_inte` int(11) NOT NULL DEFAULT '0' COMMENT '满多少积分包邮',
  `merchant_integral_num` int(11) NOT NULL COMMENT '平台对商户积分量界限设置',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '自提电话',
  `store_site` varchar(255) NOT NULL DEFAULT '' COMMENT '自提地址(  |||  隔开  )',
  `aboutus` text COMMENT '关于我们',
  `sku_token` varchar(255) DEFAULT NULL COMMENT '仓储令牌',
  PRIMARY KEY (`tbid`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='设置';

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text COMMENT '图片',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入驻状态  1--等待审核   2--审核失败  3--审核通过',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人姓名',
  `contact_address` varchar(255) NOT NULL COMMENT '联系人地址',
  `company` varchar(255) NOT NULL COMMENT '公司名称 ',
  `legal_representative` varchar(255) NOT NULL COMMENT '法人代表',
  `contact_mobile` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `business_license` varchar(255) NOT NULL COMMENT '营业执照',
  `opposite_idcode` varchar(255) NOT NULL COMMENT '法人省份证反面',
  `positive_idcode` varchar(255) NOT NULL COMMENT '法人身份证正面',
  `verify_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '审核人ID',
  `business_scope` varchar(255) NOT NULL DEFAULT '' COMMENT '经营范围',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `verify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  `template_id` bigint(20) unsigned DEFAULT NULL COMMENT '模版ID',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '二维码',
  `rec_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '推荐商品店铺模板 0关闭1开启',
  `dis_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '限时折扣店铺模板 0关闭 1开启',
  `mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '自提电话',
  `store_site` varchar(255) NOT NULL DEFAULT '' COMMENT '自提地址( 省,市,区,地址中间由|||隔开)',
  `token` varchar(255) DEFAULT NULL,
  `wx_logo` varchar(255) DEFAULT NULL,
  `subtraction` int(10) NOT NULL DEFAULT '0' COMMENT '是否允许减积分 api',
  `give` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '赠送积分',
  `is_app` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否嵌入APP 0否 1是',
  PRIMARY KEY (`tbid`),
  KEY `tbid` (`tbid`),
  KEY `name` (`name`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='店铺';

-- ----------------------------
-- Table structure for tb_shop_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_activity`;
CREATE TABLE `tb_shop_activity` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `shop_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '活动名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '活动类型：1转盘抽奖2其他',
  `integral` int(10) NOT NULL DEFAULT '0' COMMENT '参与一次消耗积分',
  `allow_num` int(10) NOT NULL DEFAULT '0' COMMENT '用户允许参加的次数',
  `activity` text COMMENT '活动规则',
  `probability_desc` text COMMENT '概率说明',
  `picture_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '图片类型:1、主题图2、缩略图3、图标4、banner',
  `picture_path` varchar(512) NOT NULL DEFAULT '' COMMENT '图片地址',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0未开始，1进行中，2已结束',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0否1是',
  `total_integral` int(10) NOT NULL DEFAULT '0' COMMENT '所有奖品消耗的总积分',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='店铺活动表';

-- ----------------------------
-- Table structure for tb_shop_activity_prize
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_activity_prize`;
CREATE TABLE `tb_shop_activity_prize` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `shop_activity_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺活动ID',
  `prize_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '奖品类型：1积分、2实物，3优惠券、4、再抽一次、5谢谢参与',
  `prize_name` varchar(30) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `integral` int(10) NOT NULL DEFAULT '0' COMMENT '奖励积分（prize_type=1,有奖励积分，其他时候均为0）',
  `prize_id` int(10) NOT NULL DEFAULT '0' COMMENT '奖励的商品ID（只有prize_type=2时有，其他均为0）',
  `prize_icon` varchar(512) NOT NULL DEFAULT '' COMMENT '奖品图标',
  `prize_desc` varchar(512) NOT NULL DEFAULT '' COMMENT '奖品描述',
  `probability` int(10) NOT NULL DEFAULT '0' COMMENT '中奖概率（注意：一个活动的所有奖品中奖概率应为100）',
  `surplus_prize_num` int(10) NOT NULL DEFAULT '-1' COMMENT '剩余奖品数（可抽奖商品总数，抽完以后中奖概率为0,-1为不限制奖品数量）',
  `max_prize_num` int(10) NOT NULL DEFAULT '0' COMMENT '中奖限制（每个用户最多能抽中此奖品的数量，0为不限制）',
  `min_people_num` int(10) NOT NULL DEFAULT '0' COMMENT '保底限制（多少人中奖以后才能抽中此奖品，0为不限制）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='活动奖品表';

-- ----------------------------
-- Table structure for tb_shop_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_admin`;
CREATE TABLE `tb_shop_admin` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `admin_member_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '员工ID',
  `authorizelist` text,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工店铺表';

-- ----------------------------
-- Table structure for tb_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_banner`;
CREATE TABLE `tb_shop_banner` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `image` text COMMENT '图片地址',
  `url` varchar(255) DEFAULT '' COMMENT '链接地址',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `type` tinyint(4) DEFAULT '0' COMMENT '类型 0url,1民宿,2酒店,3涉车,4景点,5行程,6玩乐,7路线,8动态,9行程,10问答,11评论,12店铺,13商品',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NULL DEFAULT NULL COMMENT '编辑时间',
  `end_time` timestamp NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `is_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1--关闭',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='banner';

-- ----------------------------
-- Table structure for tb_shop_banner_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_banner_category`;
CREATE TABLE `tb_shop_banner_category` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NULL DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `creattime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='banner';

-- ----------------------------
-- Table structure for tb_shop_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_copy`;
CREATE TABLE `tb_shop_copy` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` text COMMENT '图片',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区域',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入驻状态  1--等待审核   2--审核失败  3--审核通过',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人姓名',
  `contact_address` varchar(255) NOT NULL COMMENT '联系人地址',
  `company` varchar(255) NOT NULL COMMENT '公司名称 ',
  `legal_representative` varchar(255) NOT NULL COMMENT '法人代表',
  `contact_mobile` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `business_license` varchar(255) NOT NULL COMMENT '营业执照',
  `opposite_idcode` varchar(255) NOT NULL COMMENT '法人省份证反面',
  `positive_idcode` varchar(255) NOT NULL COMMENT '法人身份证正面',
  `verify_admin_id` bigint(20) unsigned DEFAULT NULL COMMENT '审核人ID',
  `business_scope` varchar(255) NOT NULL DEFAULT '' COMMENT '经营范围',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `verify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  `template_id` bigint(20) unsigned DEFAULT NULL COMMENT '模版ID',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '二维码',
  `rec_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '推荐商品店铺模板 0关闭1开启',
  `dis_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '限时折扣店铺模板 0关闭 1开启',
  `mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '自提电话',
  `store_site` varchar(255) NOT NULL DEFAULT '' COMMENT '自提地址( 省,市,区,地址中间由|||隔开)',
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tbid`),
  KEY `tbid` (`tbid`),
  KEY `name` (`name`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `area` (`area`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='店铺';

-- ----------------------------
-- Table structure for tb_shop_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_member`;
CREATE TABLE `tb_shop_member` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `member_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=2570 DEFAULT CHARSET=utf8 COMMENT='店铺买家关联表';

-- ----------------------------
-- Table structure for tb_shop_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_notice`;
CREATE TABLE `tb_shop_notice` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告',
  `shop_id` bigint(20) NOT NULL COMMENT '店铺id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑',
  `isclose` tinyint(4) DEFAULT '0' COMMENT '是否关闭 0否 1是',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='店铺公告';

-- ----------------------------
-- Table structure for tb_shop_prize_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_prize_log`;
CREATE TABLE `tb_shop_prize_log` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `member_id` int(10) NOT NULL DEFAULT '0' COMMENT '中奖用户ID',
  `shop_activity_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺活动ID',
  `prize_id` int(10) NOT NULL DEFAULT '0' COMMENT '奖品ID',
  `prize_name` varchar(255) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `prize_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '奖品类型：1积分、2实物，3优惠券、4、再抽一次、5谢谢参与',
  `prize_integral` int(10) NOT NULL DEFAULT '0' COMMENT '奖励积分，只有奖品为积分，其他均为0',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `is_once_more` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=838 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_surintegral
-- ----------------------------
DROP TABLE IF EXISTS `tb_surintegral`;
CREATE TABLE `tb_surintegral` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `shop_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `per` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每份数量',
  `number` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放份数',
  `integral` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发放总积分',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态  0禁用 1启用',
  `limit` int(11) NOT NULL DEFAULT '1' COMMENT '每人限制份数',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `edittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='二维码发放冻结积分列表';

-- ----------------------------
-- Table structure for tb_surintegral_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_surintegral_log`;
CREATE TABLE `tb_surintegral_log` (
  `tbid` int(11) NOT NULL AUTO_INCREMENT,
  `ac_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `mem_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `cre_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag` (
  `tbid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `subtitle` varchar(255) DEFAULT NULL COMMENT '标签副标题',
  `image` text COMMENT '图片',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签库管理';

-- ----------------------------
-- Table structure for tb_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_test`;
CREATE TABLE `tb_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='测试数据表';

-- ----------------------------
-- Table structure for tb_total_integral
-- ----------------------------
DROP TABLE IF EXISTS `tb_total_integral`;
CREATE TABLE `tb_total_integral` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `total` int(10) NOT NULL DEFAULT '0' COMMENT '发放积分总额',
  `proportion` decimal(10,0) NOT NULL DEFAULT '0',
  `nums` text COMMENT '电子订单量',
  `ordernum` text COMMENT '订单量',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_trade
-- ----------------------------
DROP TABLE IF EXISTS `tb_trade`;
CREATE TABLE `tb_trade` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tradenumber` varchar(255) NOT NULL COMMENT '流水号',
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `money` int(11) NOT NULL COMMENT '交易金额',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '交易类型 1充值 2下单 3退款 4提现',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '交易状态 1等待 2失败 3成功',
  `payway` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付方式 1余额 2支付宝 3微信 4积分',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `account` varchar(255) NOT NULL DEFAULT '' COMMENT '账户号',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机',
  `bank` varchar(255) NOT NULL DEFAULT '' COMMENT '银行',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `tradenumber` (`tradenumber`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `ordernumber` (`ordernumber`) USING BTREE,
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `payway` (`payway`),
  KEY `member_id` (`member_id`),
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `name` (`name`),
  KEY `account` (`account`),
  KEY `mobile` (`mobile`),
  KEY `mobile_2` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=1747 DEFAULT CHARSET=utf8 COMMENT='交易';

-- ----------------------------
-- Table structure for tb_trade_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_trade_detail`;
CREATE TABLE `tb_trade_detail` (
  `tbid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tradenumber` varchar(50) NOT NULL COMMENT '流水号',
  `before` int(11) NOT NULL COMMENT '变动前',
  `after` int(11) NOT NULL COMMENT '变动后',
  `money` int(11) NOT NULL COMMENT '积分',
  `type` varchar(255) NOT NULL COMMENT '交易类型 0下单 1充值 2退款 3提现 4商家收款 5取消提现',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '编辑时间',
  PRIMARY KEY (`tbid`),
  KEY `type` (`type`),
  KEY `member_id` (`member_id`),
  KEY `tradenumber` (`tradenumber`) USING BTREE,
  KEY `before` (`before`) USING BTREE,
  KEY `after` (`after`) USING BTREE,
  KEY `createtime` (`createtime`),
  KEY `edittime` (`edittime`),
  KEY `money` (`money`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8 COMMENT='交易流水';

-- ----------------------------
-- Table structure for tb_trade_paytrade
-- ----------------------------
DROP TABLE IF EXISTS `tb_trade_paytrade`;
CREATE TABLE `tb_trade_paytrade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `paynumber` varchar(255) DEFAULT NULL,
  `tradenumbers` text,
  `datetime` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1571 DEFAULT CHARSET=utf8 COMMENT='三方交易转码';

-- ----------------------------
-- Table structure for tb_warehouse_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_warehouse_list`;
CREATE TABLE `tb_warehouse_list` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(50) NOT NULL DEFAULT '' COMMENT '入库单号',
  `itemcode` varchar(50) NOT NULL DEFAULT '' COMMENT '商品编码',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '库存',
  `warehouse` varchar(50) NOT NULL DEFAULT '' COMMENT '仓库位',
  `edit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更改时间',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `status` int(10) NOT NULL DEFAULT '0' COMMENT '状态   0待审核 1审核通过 2修改待审核 3修改审核通过',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '0 采购 1客户退货 2 赠送 3 借还 4 广告',
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作者',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='入库单商品列表';

-- ----------------------------
-- Table structure for tb_warehouse_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_warehouse_order`;
CREATE TABLE `tb_warehouse_order` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号',
  `warehouse` varchar(255) NOT NULL DEFAULT '' COMMENT '入库名称',
  `desc` text COMMENT '订单备注',
  `createtime` date DEFAULT '0000-00-00' COMMENT '入库日期',
  `updatetime` date DEFAULT '0000-00-00' COMMENT '修改日期',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态 0未审核1已审核2拒绝',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '入库类型',
  `order_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单类型 1入库2出库',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '操作者ID',
  `check_id` int(10) NOT NULL DEFAULT '0' COMMENT '审核者ID',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='库存进出单表';

-- ----------------------------
-- Table structure for tb_warehouse_sku_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_warehouse_sku_list`;
CREATE TABLE `tb_warehouse_sku_list` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(50) NOT NULL COMMENT '商品编码',
  `number` int(10) NOT NULL DEFAULT '0' COMMENT '数量',
  `warehouse` varchar(50) NOT NULL COMMENT '仓库位',
  `edit_time` datetime DEFAULT NULL,
  `
create_time` datetime NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_wx_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_wx_shop`;
CREATE TABLE `tb_wx_shop` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `shop_txt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_xsyq_order_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_xsyq_order_log`;
CREATE TABLE `tb_xsyq_order_log` (
  `tbid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) NOT NULL DEFAULT '' COMMENT '参与活动订单的订单号',
  `money` varchar(255) NOT NULL DEFAULT '0' COMMENT '消费的金额',
  `mobile` varchar(255) NOT NULL DEFAULT '0' COMMENT '会员手机号',
  `shopId` int(11) NOT NULL DEFAULT '0' COMMENT '线下店铺id',
  `shopName` varchar(255) NOT NULL DEFAULT '' COMMENT '线下店铺名称',
  `memberid` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `gas_station_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `integral` int(10) NOT NULL DEFAULT '0' COMMENT '赠送的积分',
  `is_success` int(1) NOT NULL DEFAULT '0' COMMENT '积分是否发放成功 0否 1是',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '积分发放时间',
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8 COMMENT='鲜生友情活动积分发放记录表';

-- ----------------------------
-- Procedure structure for closeorder
-- ----------------------------
DROP PROCEDURE IF EXISTS `closeorder`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `closeorder`(_ordernumber varchar(255))
BEGIN
	update `tb_order` set status=0 where ordernumber=_ordernumber;
	insert tb_order_datetime set edittime=now(),type=1,ordernumber=_ordernumber;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for updatesearch
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatesearch`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatesearch`()
BEGIN
	#Routine body goes here...
	-- 搜索记录
	DECLARE done INT DEFAULT 0;
  DECLARE searchs varchar(255);
  -- 定义光标 
	DECLARE rs CURSOR FOR select search from tb_search where createtime>DATE_ADD(now(),INTERVAL -7 day) group by search order by count(*) desc limit 0,10;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
  delete from tb_search_hot;
  -- 打开光标 
	Open rs;
  -- 开始循环
  REPEAT 
	Fetch rs into searchs;
	IF NOT done THEN
		INSERT INTO tb_search_hot set search=searchs,createtime=now();
	END IF; 
	UNTIL done END REPEAT;
	-- 关闭光标 
	CLOSE rs;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for closeorder_OB824790440085917
-- ----------------------------
DROP EVENT IF EXISTS `closeorder_OB824790440085917`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `closeorder_OB824790440085917` ON SCHEDULE AT '2018-08-24 11:50:44' ON COMPLETION NOT PRESERVE ENABLE DO call closeorder("OB824790440085917")
;;
DELIMITER ;

-- ----------------------------
-- Event structure for updatesearch
-- ----------------------------
DROP EVENT IF EXISTS `updatesearch`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `updatesearch` ON SCHEDULE EVERY 1 DAY STARTS '2017-01-02 00:00:00' ON COMPLETION PRESERVE ENABLE DO call updatesearch()
;;
DELIMITER ;
