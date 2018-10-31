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

 Date: 03/11/2018 16:29:56 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `treatment`
-- ----------------------------
DROP TABLE IF EXISTS `treatment`;
CREATE TABLE `treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '治疗ID',
  `treatment_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '治疗ID',
  `treatment_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '治疗名称',
  `treatment_description` text COLLATE utf8_unicode_ci COMMENT '治疗描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`treatment_name`) USING HASH,
  KEY `id` (`treatment_id`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
