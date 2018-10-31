/*
 Navicat MySQL Data Transfer

 Source Server         : baidukg
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost
 Source Database       : baidukg03222

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 03/11/2018 16:29:16 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `edge`
-- ----------------------------
DROP TABLE IF EXISTS `edge`;
CREATE TABLE `edge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '边ID',
  `edge_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '边ID',
  `source_id` int(11) DEFAULT NULL COMMENT '源节点',
  `source` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '源节点',
  `source_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '源节点类型',
  `target_id` int(11) DEFAULT NULL COMMENT '目标节点',
  `target` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '目标节点',
  `target_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '目标节点类型',
  `relation_int_id` int(11) DEFAULT NULL COMMENT '关系',
  `relation_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '关系',
  `strength` double DEFAULT NULL COMMENT '关系强度',
  `condition_ids` varchar(500) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '存在条件集',
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `edge_id` (`edge_id`),
  KEY `strength` (`strength`),
  KEY `uuid` (`edge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=619387 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
