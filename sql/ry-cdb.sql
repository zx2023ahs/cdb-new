/*
 Navicat Premium Data Transfer

 Source Server         : 公司新16g服务器
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : 8.217.112.6:3306
 Source Schema         : ry-cdb

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 27/11/2024 15:45:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dianzan_like_task
-- ----------------------------
DROP TABLE IF EXISTS `t_dianzan_like_task`;
CREATE TABLE `t_dianzan_like_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务名称',
  `order_requirements` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '接单要求vip',
  `sort` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT NULL COMMENT '任务状态',
  `task_num` int DEFAULT NULL COMMENT '任务数量',
  `task_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务类型   ',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '描述',
  `img_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `publisher` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '出版商',
  `score` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '评分',
  `video_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '视频',
  `index_status` int DEFAULT '1' COMMENT '首页显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `task_type` (`task_type`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `order_requirements` (`order_requirements`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='点赞任务';

-- ----------------------------
-- Table structure for t_dianzan_like_task_order
-- ----------------------------
DROP TABLE IF EXISTS `t_dianzan_like_task_order`;
CREATE TABLE `t_dianzan_like_task_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `auditing_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审核人姓名',
  `auditing_time` datetime DEFAULT NULL COMMENT '审核时间',
  `auditing_uid` bigint DEFAULT NULL COMMENT '审核人主键id',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `status` int DEFAULT NULL COMMENT '当前订单状态',
  `task_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务唯一id',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `vip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '此订单vip等级',
  `source_invitation_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户账号',
  `task_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务标题',
  `task_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务类型',
  `daily_amount` decimal(10,3) DEFAULT NULL COMMENT '当时任务的VIP对应的钱-固定(点赞收益)',
  `daily_auditing_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审核图片(点赞)',
  `forward_amount` decimal(10,3) DEFAULT NULL COMMENT '当时任务的VIP对应的钱-固定(转发收益)',
  `forward_auditing_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审核图片(转发)',
  `review_amount` decimal(10,3) DEFAULT NULL COMMENT '当时任务的VIP对应的钱-固定(评论收益)',
  `review_auditing_pic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审核图片(评论)',
  `video_amount` decimal(10,3) DEFAULT NULL COMMENT '视频对应的钱-固定',
  `video_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '视频',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户点赞任务订单表';

-- ----------------------------
-- Table structure for t_dianzan_like_task_type
-- ----------------------------
DROP TABLE IF EXISTS `t_dianzan_like_task_type`;
CREATE TABLE `t_dianzan_like_task_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '描述',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `img_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `sort` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT NULL COMMENT '任务状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='点赞任务类型';

-- ----------------------------
-- Table structure for t_dzcredit_creditconfig
-- ----------------------------
DROP TABLE IF EXISTS `t_dzcredit_creditconfig`;
CREATE TABLE `t_dzcredit_creditconfig` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `credit_max` int DEFAULT NULL COMMENT '信誉分高值',
  `credit_min` int DEFAULT NULL COMMENT '信誉分低值',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `yield` decimal(30,6) DEFAULT NULL COMMENT '收益率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='信誉分配置';

-- ----------------------------
-- Table structure for t_dzcredit_creditrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzcredit_creditrecord`;
CREATE TABLE `t_dzcredit_creditrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `after_credit` int DEFAULT NULL COMMENT '变更后信誉分',
  `befort_credit` int DEFAULT NULL COMMENT '变更前信誉分',
  `charge_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '变更状态',
  `credit_change` int DEFAULT NULL COMMENT '信誉分变更值',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `source_invitation_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `from_account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源账号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `acc_idx` (`account`) USING BTREE,
  KEY `code_idx` (`source_invitation_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='信誉分变动记录';

-- ----------------------------
-- Table structure for t_dzcredit_usercredit
-- ----------------------------
DROP TABLE IF EXISTS `t_dzcredit_usercredit`;
CREATE TABLE `t_dzcredit_usercredit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `credit` int DEFAULT NULL COMMENT '信誉分',
  `final_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备最后一次运营时间',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `source_invitation_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信誉分状态',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `vip_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'vip类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  UNIQUE KEY `acc` (`account`) USING BTREE,
  KEY `code` (`source_invitation_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信誉分';

-- ----------------------------
-- Table structure for t_dzdianzan_recordpb
-- ----------------------------
DROP TABLE IF EXISTS `t_dzdianzan_recordpb`;
CREATE TABLE `t_dzdianzan_recordpb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  `former_credit_score` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `post_credit_score` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `rebate_time` datetime DEFAULT NULL COMMENT '返佣时间',
  `relevels` int DEFAULT NULL COMMENT '相对层级',
  `source_invitation_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `source_user_account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源用户账号',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `acc` (`account`) USING BTREE,
  KEY `code` (`source_invitation_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='任务订单返佣记录';

-- ----------------------------
-- Table structure for t_dzgoods_powerbanktask
-- ----------------------------
DROP TABLE IF EXISTS `t_dzgoods_powerbanktask`;
CREATE TABLE `t_dzgoods_powerbanktask` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `expire_time` datetime DEFAULT NULL COMMENT '到期时间',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `pbidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '产品编号',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `vip_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP类型',
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备状态',
  PRIMARY KEY (`id`,`idw`) USING BTREE,
  KEY `expire_time` (`expire_time`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=58528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='充电宝运行设备';

-- ----------------------------
-- Table structure for t_dzgoods_recordpb
-- ----------------------------
DROP TABLE IF EXISTS `t_dzgoods_recordpb`;
CREATE TABLE `t_dzgoods_recordpb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `former_credit_score` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `post_credit_score` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `source_invitation_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `source_user_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源用户账号',
  `rebate_time` datetime DEFAULT NULL COMMENT '返佣时间',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `source_invitation_code` (`source_invitation_code`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=235113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='充电宝返佣记录';

-- ----------------------------
-- Table structure for t_dzgoods_rowerreceiverecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzgoods_rowerreceiverecord`;
CREATE TABLE `t_dzgoods_rowerreceiverecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `credit` int DEFAULT NULL COMMENT '当前信誉分',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `income_hour` bigint DEFAULT NULL COMMENT '投放小时',
  `money` decimal(30,6) DEFAULT NULL COMMENT '预计收益',
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `pay_price` decimal(30,6) DEFAULT NULL COMMENT '小时价',
  `pb_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充电宝id',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `status` int DEFAULT NULL COMMENT '领取状态',
  `taskidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充电宝任务编号',
  `tota_quantity` int DEFAULT NULL COMMENT '购买数量',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `vip_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP类型',
  `yield` decimal(30,6) DEFAULT NULL COMMENT '收益率',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82399 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='充电宝设备收益记录';

-- ----------------------------
-- Table structure for t_dzprize_expectwinninguser
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_expectwinninguser`;
CREATE TABLE `t_dzprize_expectwinninguser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `is_prize` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否中奖 yes/no',
  `prize_idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '预期中奖ID',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `acc` (`account`) USING BTREE,
  KEY `type` (`prize_type`) USING BTREE,
  KEY `prize_id` (`prize_idw`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='预期中奖用户表';

-- ----------------------------
-- Table structure for t_dzprize_huntingrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_huntingrecord`;
CREATE TABLE `t_dzprize_huntingrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `hunt_idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '夺宝奖品idw',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `is_fabricate` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '是否造假数据 0真 1假',
  `prize_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品名称',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `acc` (`account`) USING BTREE,
  KEY `idw` (`hunt_idw`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='夺宝参与记录';

-- ----------------------------
-- Table structure for t_dzprize_luckydraw
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_luckydraw`;
CREATE TABLE `t_dzprize_luckydraw` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '抽奖活动名称',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动是否开启',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型   1 转盘活动 2 投注活动 3 盲盒活动',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '活动说明',
  `start_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='抽奖活动表';

-- ----------------------------
-- Table structure for t_dzprize_monopoly_record
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_monopoly_record`;
CREATE TABLE `t_dzprize_monopoly_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modify_time` datetime DEFAULT NULL COMMENT '最近更新时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最近更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `prize_id` bigint DEFAULT NULL COMMENT '奖品id',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品idw',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `prize_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品名称',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品类型',
  `dice_points` int DEFAULT NULL COMMENT '骰子点数/前进步数',
  `surplus_number` int DEFAULT NULL COMMENT '剩余次数',
  `now_position` int DEFAULT NULL COMMENT '当前位置',
  `last_position` int DEFAULT NULL COMMENT '操作前位置',
  `prize_idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品idw',
  `last_prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作前奖品',
  `prize_pic_url` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品图片',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `acc` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='大富翁记录';

-- ----------------------------
-- Table structure for t_dzprize_monopoly_user
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_monopoly_user`;
CREATE TABLE `t_dzprize_monopoly_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `activity_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `position` int DEFAULT NULL COMMENT '当前位置',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `acc` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='大富翁用户当前位置记录表';

-- ----------------------------
-- Table structure for t_dzprize_prize
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_prize`;
CREATE TABLE `t_dzprize_prize` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `amount` decimal(30,6) DEFAULT NULL COMMENT '虚拟货币金额 实物为0',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `prize_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品名称',
  `types` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品类型   1 余额  2 实物  3积分增加   4积分减少   5抽奖次数增加    6抽奖次数减少    7前进步数   8后退步数',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品图片',
  `winning_chance` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '中奖几率千分比',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型   1 转盘活动 2 投注活动 3 盲盒活动',
  `prize_nice` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品备注',
  `is_end` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '是否夺宝结束 0正常 1结束',
  `participate_number` int unsigned DEFAULT NULL COMMENT '已经参加人数',
  `total_number` int unsigned DEFAULT NULL COMMENT '参加总需人数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`prize_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='抽奖奖品表';

-- ----------------------------
-- Table structure for t_dzprize_prizenum
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_prizenum`;
CREATE TABLE `t_dzprize_prizenum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `prize_num` int DEFAULT NULL COMMENT '抽奖次数',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型   1 转盘活动 2 投注活动 3 盲盒活动',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `acc` (`account`) USING BTREE,
  KEY `type` (`prize_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='抽奖次数表';

-- ----------------------------
-- Table structure for t_dzprize_winningrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzprize_winningrecord`;
CREATE TABLE `t_dzprize_winningrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `prize_idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品ID',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `prize_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '奖品名称',
  `amount` decimal(30,6) DEFAULT NULL COMMENT '中奖金额',
  `prize_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型   1 转盘活动 2 投注活动 3 盲盒活动',
  `surplus_number` int DEFAULT NULL COMMENT '剩余抽奖次数',
  `hunt_record_idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户参与夺宝ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `prize_type` (`prize_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='中奖记录表';

-- ----------------------------
-- Table structure for t_dzsys_country
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_country`;
CREATE TABLE `t_dzsys_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `country_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家码',
  `country_code_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家代号',
  `country_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家名称',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `logo` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'logo',
  `queue_number` int DEFAULT NULL COMMENT '排序号',
  `country_name_english` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家英文名称',
  `visible` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示状态（0显示 1隐藏）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='国家区号';

-- ----------------------------
-- Table structure for t_dzsys_dzbanner
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_dzbanner`;
CREATE TABLE `t_dzsys_dzbanner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `banner_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `jump_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '跳转链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图';

-- ----------------------------
-- Table structure for t_dzsys_homepagetotal
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_homepagetotal`;
CREATE TABLE `t_dzsys_homepagetotal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `c_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值金额',
  `c_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值数量',
  `day` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日期',
  `dc_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '注册奖励',
  `l1pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L1任务返佣',
  `l1vip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L1VIP返佣',
  `l2pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L2任务返佣',
  `l2vip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L2VIP返佣',
  `l3pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L3任务返佣',
  `l3vip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L3VIP返佣',
  `money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '平台盈利',
  `pb_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '完成任务数量',
  `registration_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '注册人数',
  `source_invitation_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码',
  `t_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '提现金额',
  `t_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '提现数量',
  `total_pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发放总佣金',
  `vip_first_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '首充人数',
  `vip_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'VIP新增人数',
  `start_pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '总启用设备',
  `tystart_pb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '体验会员启用设备',
  `l4vip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L4VIP返佣',
  `l5vip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'L5VIP返佣',
  `task_order_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务订单金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ucode&day_UK` (`day`,`source_invitation_code`) USING BTREE COMMENT '每日相同来源码唯一'
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='首页统计';

-- ----------------------------
-- Table structure for t_dzsys_officialnews
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_officialnews`;
CREATE TABLE `t_dzsys_officialnews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `dzcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '内容',
  `jump_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '跳转链接',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '融合后的各种公告类型',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '标题',
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '语言',
  `image` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `video_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '视频url',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `language` (`language`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='公告信息';

-- ----------------------------
-- Table structure for t_dzsys_onlineserve
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_onlineserve`;
CREATE TABLE `t_dzsys_onlineserve` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `customer_service_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客服链接',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `onlines_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客服类型',
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客服logo',
  `onlines_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客服状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`onlines_type`) USING BTREE,
  KEY `status` (`onlines_flag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='在线客服';

-- ----------------------------
-- Table structure for t_dzsys_paymentchannel
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_paymentchannel`;
CREATE TABLE `t_dzsys_paymentchannel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前台展示名称',
  `logo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'logo图片',
  `channel_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道名称',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '币种',
  `merchant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商户号',
  `merchant_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商户交易链接',
  `private_key` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '私钥',
  `public_key` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '平台公钥',
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道编码',
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '银行编码-当通道编码是网银支付时 必填',
  `is_payment` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '开启支付(0开启/1关闭)',
  `is_withdrawal` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '开启提现(0开启/1关闭)',
  `is_input_bank_name` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前台绑定是否输入银行名称（0开启/1关闭）',
  `is_binding` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '前台是否开启绑定通道（0开启/1关闭）',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `maximum_withdrawal_amount` double DEFAULT NULL COMMENT '最高提现金额',
  `minimum_withdrawal_amount` double DEFAULT NULL COMMENT '最低提现金额',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`channel_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='支付通道';

-- ----------------------------
-- Table structure for t_dzsys_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_sms`;
CREATE TABLE `t_dzsys_sms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `appid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'appid',
  `appkey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'appkey',
  `appse` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'appse',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `platform_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '平台名称',
  `dzstatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态',
  `api_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'base_url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='短信信息';

-- ----------------------------
-- Table structure for t_dzsys_smsnumrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_smsnumrecord`;
CREATE TABLE `t_dzsys_smsnumrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `count` int DEFAULT NULL COMMENT '次数',
  `country_code_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家代号',
  `day` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日期',
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='日发送短信次数记录';

-- ----------------------------
-- Table structure for t_dzsys_syslog
-- ----------------------------
DROP TABLE IF EXISTS `t_dzsys_syslog`;
CREATE TABLE `t_dzsys_syslog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `obj_id` bigint DEFAULT NULL COMMENT '操作实体主键ID',
  `operation` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '具体操作',
  `operator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人',
  `operator_system` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作端  APP/PC',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `operation_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统日志';

-- ----------------------------
-- Table structure for t_dzuser_balance
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_balance`;
CREATE TABLE `t_dzuser_balance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `dzversion` int DEFAULT NULL COMMENT 'version',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `user_balance` decimal(30,6) DEFAULT NULL COMMENT '用户余额',
  `total_amount_of_gifts` decimal(30,6) DEFAULT NULL COMMENT '赠送彩金总金额',
  `total_amount_of_recharge_bonus` decimal(30,6) DEFAULT NULL COMMENT '充值彩金总金额',
  `total_amount_of_recharge` decimal(30,6) DEFAULT NULL COMMENT '充值总金额',
  `total_amount_of_withdrawal` decimal(30,6) DEFAULT NULL COMMENT '提现总金额',
  `total_amount_of_vip_purchase` decimal(30,6) DEFAULT NULL COMMENT '购买vip总金额',
  `total_amount_of_power_bank_commission` decimal(30,6) DEFAULT NULL COMMENT '充电宝返佣总金额\n\n',
  `total_amount_of_task_commission` decimal(30,6) DEFAULT NULL COMMENT '任务返佣总金额\n\n',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_uid` (`uid`) USING BTREE,
  UNIQUE KEY `acc` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户余额';

-- ----------------------------
-- Table structure for t_dzuser_compensation
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_compensation`;
CREATE TABLE `t_dzuser_compensation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `addition_and_subtraction` int DEFAULT NULL COMMENT '加减',
  `former_credit_score` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作员',
  `post_credit_score` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `addition_and_subtraction` (`addition_and_subtraction`) USING BTREE,
  KEY `acc` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='补分记录';

-- ----------------------------
-- Table structure for t_dzuser_falsedata
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_falsedata`;
CREATE TABLE `t_dzuser_falsedata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `false_date` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '造假数据',
  `false_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假方式 1.提现记录 2.交易记录(CDB返佣) 3.用户下级',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `is_del` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否删除',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='造假记录';

-- ----------------------------
-- Table structure for t_dzuser_falsetotal
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_falsetotal`;
CREATE TABLE `t_dzuser_falsetotal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `balance` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '收入明细',
  `profit_of_the_day` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '当日收益',
  `team_report` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '团队报告',
  `team_size` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '团队规模',
  `total_revenue` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '总收入',
  `total_withdrawal_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '可用金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='造假统计';

-- ----------------------------
-- Table structure for t_dzuser_rechargehistory
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_rechargehistory`;
CREATE TABLE `t_dzuser_rechargehistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `previous_balance` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `after_balance` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `channel_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道名称',
  `coin_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '支付币种',
  `order_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单编号',
  `recharge_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值状态',
  `merchant_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值交易地址',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  `first_charge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否首充（0是1否）',
  `rate` decimal(30,6) DEFAULT NULL COMMENT '费率',
  `rate_money` decimal(30,6) DEFAULT NULL COMMENT '换算后金额',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='充值记录';

-- ----------------------------
-- Table structure for t_dzuser_transaction
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_transaction`;
CREATE TABLE `t_dzuser_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `addition_and_subtraction` int DEFAULT NULL COMMENT '加减',
  `after_balance` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `order_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单编号',
  `previous_balance` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `transaction_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '交易类型',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `addition_and_subtraction` (`addition_and_subtraction`) USING BTREE,
  KEY `transaction_type` (`transaction_type`) USING BTREE,
  KEY `idx_account_transactiontype` (`account`,`transaction_type`) USING BTREE COMMENT 'create by DAS-bddc5b01-d8fe-4717-8b95-78c55f03bd6d'
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='交易记录';

-- ----------------------------
-- Table structure for t_dzuser_user
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_user`;
CREATE TABLE `t_dzuser_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `country_code_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家代号',
  `dzstatus` int DEFAULT NULL COMMENT '状态',
  `invitation_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邀请码',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `payment_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '支付密码',
  `register_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '注册ip',
  `registration_time` datetime DEFAULT NULL COMMENT '注册时间',
  `source_account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '来源邀请码，计划改成来源账号',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户类型',
  `vip_expire_date` datetime DEFAULT NULL COMMENT 'ViP到期时间',
  `vip_expire_times` int DEFAULT NULL COMMENT 'vip到期次数',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `vip_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名',
  `head_portrait_key` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  `last_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '最后一次登录地址',
  `last_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `limit_buy_cdb` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '限制购买CDB（0是/1否）',
  `limit_drawing` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '限制提款（0是/1否）',
  `limit_profit` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '限制收益（0是/1否）',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `last_ip_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '最后一次登录ip区域',
  `register_ip_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '注册ip',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  `limit_code` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '限制邀请码（0是/1否）',
  `real_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '真实姓名',
  `superior_id` bigint DEFAULT NULL COMMENT '上级账户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_boh4eue2ksvxxfm4bvqb4q166` (`invitation_code`) USING BTREE,
  UNIQUE KEY `UK_jsujdxrrbirjhubx0qxn7qmv3` (`account`) USING BTREE,
  KEY `country_code_number` (`country_code_number`) USING BTREE,
  KEY `dzstatus` (`dzstatus`) USING BTREE,
  KEY `vip_type` (`vip_type`) USING BTREE,
  KEY `idx_usertype` (`user_type`) USING BTREE COMMENT 'create by DAS-2ff18db1-b451-4500-a136-68bc6bd11219'
) ENGINE=InnoDB AUTO_INCREMENT=713 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息';

-- ----------------------------
-- Table structure for t_dzuser_wallet_address
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_wallet_address`;
CREATE TABLE `t_dzuser_wallet_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `wallet_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '钱包地址',
  `platform_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '平台名称',
  `wallet_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '姓名',
  `channel_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道类型',
  `bank_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_uiid&plat` (`uid`,`platform_name`) USING BTREE,
  KEY `UK_6sarsqj06miqemtr3ruat4v09` (`uid`) USING BTREE,
  KEY `account_idx` (`account`) USING BTREE,
  KEY `pla_idx` (`platform_name`) USING BTREE,
  KEY `channel_idx` (`channel_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户钱包地址';

-- ----------------------------
-- Table structure for t_dzuser_withdrawals
-- ----------------------------
DROP TABLE IF EXISTS `t_dzuser_withdrawals`;
CREATE TABLE `t_dzuser_withdrawals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `after_balance` decimal(30,6) DEFAULT NULL COMMENT '后余额',
  `channel_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道名称',
  `coin_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '币种',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `order_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '订单编号',
  `previous_balance` decimal(30,6) DEFAULT NULL COMMENT '前余额',
  `recharge_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '审核状态',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `transaction_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '交易编号',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `amount_received` decimal(30,6) DEFAULT NULL COMMENT '到账金额',
  `handling_fee` decimal(30,6) DEFAULT NULL COMMENT '提现手续费',
  `withdrawal_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '提现地址',
  `up_withdrawal_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上次提现地址',
  `operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作员',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  `user_real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `modify_time` (`modify_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `recharge_status` (`recharge_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='提现记录';

-- ----------------------------
-- Table structure for t_dzvip_red_envelope_message
-- ----------------------------
DROP TABLE IF EXISTS `t_dzvip_red_envelope_message`;
CREATE TABLE `t_dzvip_red_envelope_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `red_envelope_money_max` decimal(30,6) DEFAULT NULL COMMENT '红包领取金额最大值',
  `red_envelope_money_min` decimal(30,6) DEFAULT NULL COMMENT '红包领取金额最小值',
  `red_envelope_total` int DEFAULT NULL COMMENT '红包领取次数',
  `vip_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'ViP类型(多选)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Vip红包信息';

-- ----------------------------
-- Table structure for t_dzvip_vipmessage
-- ----------------------------
DROP TABLE IF EXISTS `t_dzvip_vipmessage`;
CREATE TABLE `t_dzvip_vipmessage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '名称',
  `dzstatus` int DEFAULT NULL COMMENT '状态',
  `selling_price` decimal(30,6) DEFAULT NULL COMMENT '售价',
  `vip_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP类型',
  `l1_task_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L1任务返佣',
  `l2_task_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L2任务返佣',
  `l3_task_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L3任务返佣',
  `maximum_withdrawal` decimal(30,6) DEFAULT NULL COMMENT '最高提现',
  `minimum_withdrawal` decimal(30,6) DEFAULT NULL COMMENT '最低提现',
  `number_of_tasks` int DEFAULT NULL COMMENT '任务数量',
  `valid_date` int DEFAULT NULL COMMENT '有效天数',
  `withdrawal_fee` decimal(30,6) DEFAULT NULL COMMENT '提现手续费',
  `vip_img` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP图片',
  `daily_income` decimal(30,6) DEFAULT NULL COMMENT '任务收入',
  `forward_income` decimal(30,6) DEFAULT NULL COMMENT '转发收入',
  `review_income` decimal(30,6) DEFAULT NULL COMMENT '评论收入',
  `l1_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L1开通VIP返佣',
  `l2_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L2开通VIP返佣',
  `l3_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L3开通VIP返佣',
  `l4_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L4开通VIP返佣',
  `l5_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L5开通VIP返佣',
  `l6_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L6开通VIP返佣',
  `l7_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L7开通VIP返佣',
  `l8_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L8开通VIP返佣',
  `l9_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L9开通VIP返佣',
  `l10_openvip_rebate` decimal(30,6) DEFAULT NULL COMMENT 'L10开通VIP返佣',
  `nick` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '别名/昵称',
  `vip_back_ground` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ViP背景',
  `limit_num` int NOT NULL COMMENT '限制提现次数',
  `gear_code` int DEFAULT NULL COMMENT '小时档次',
  `operate_num` int DEFAULT NULL COMMENT '最大运行次数',
  `fee_mode` int NOT NULL COMMENT '手续费模式 0固定1变动',
  `fee_range` json DEFAULT NULL COMMENT '手续费设定',
  `order_limit` json DEFAULT NULL COMMENT '限制执行任务設置',
  `order_limit_mode` int DEFAULT NULL COMMENT '限制执行任务时间 （0限制/1不限制）',
  `withdraw_limit` json DEFAULT NULL COMMENT '限制提現設置',
  `withdraw_limit_mode` int DEFAULT NULL COMMENT '限制提现时间 （0限制/1不限制）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_oenv1wd71tmfl3kw0nby5nutv` (`vip_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Vip信息';

-- ----------------------------
-- Table structure for t_dzvip_vippurchase
-- ----------------------------
DROP TABLE IF EXISTS `t_dzvip_vippurchase`;
CREATE TABLE `t_dzvip_vippurchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `after_vip_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '之后ViP类型',
  `idw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一值',
  `number_of_tasks` int DEFAULT NULL COMMENT '任务数量',
  `payment_amount` decimal(30,6) DEFAULT NULL COMMENT '支付金额',
  `payment_method` int DEFAULT NULL COMMENT '支付方式',
  `previous_vip_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '之前ViP类型',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `valid_date` int DEFAULT NULL COMMENT '有效天数',
  `whether_to_pay` int DEFAULT NULL COMMENT '是否支付',
  `daily_income` int DEFAULT NULL COMMENT '每日收入',
  `deposit_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '充值地址',
  `channel_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通道名称',
  `currency` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '币种',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_qnglapis2cfxq3k648ws3hnje` (`idw`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `whether_to_pay` (`whether_to_pay`) USING BTREE,
  KEY `payment_amount` (`payment_amount`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Vip购买记录';

-- ----------------------------
-- Table structure for t_dzvip_viprebaterecord
-- ----------------------------
DROP TABLE IF EXISTS `t_dzvip_viprebaterecord`;
CREATE TABLE `t_dzvip_viprebaterecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间/注册时间',
  `modify_by` bigint DEFAULT NULL COMMENT '最后更新人',
  `modify_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `uid` bigint DEFAULT NULL COMMENT '用户id',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账号',
  `previous_amount` decimal(30,6) DEFAULT NULL COMMENT '前金额',
  `money` decimal(30,6) DEFAULT NULL COMMENT '金额',
  `amount_after` decimal(30,6) DEFAULT NULL COMMENT '后金额',
  `source_user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '返佣用户账号',
  `relevels` int DEFAULT NULL COMMENT '相对层级',
  `new_vip_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '购买ViP类型',
  `old_vip_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '原来ViP类型',
  `fidw` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '造假数据唯一值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `money` (`money`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `acc` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='vip返佣记录';

SET FOREIGN_KEY_CHECKS = 1;
