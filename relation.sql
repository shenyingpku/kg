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

 Date: 03/11/2018 16:29:42 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `relation`
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系ID',
  `relation_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '关系ID',
  `relation_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关系名称',
  `relation_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关系类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`relation_name`) USING HASH,
  KEY `id` (`relation_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
