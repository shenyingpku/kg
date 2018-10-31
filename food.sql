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

 Date: 03/11/2018 16:29:21 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `food`
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食物ID',
  `food_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '食物ID',
  `food_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '食物名称',
  `food_description` text COLLATE utf8_unicode_ci COMMENT '食物描述',
  `food_instruction` text COLLATE utf8_unicode_ci COMMENT '食物指导',
  `nutrition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '适应人群',
  `food_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '食物分类',
  `food_notice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '食用提示',
  `material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '食材',
  `fit_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '适应人群',
  `forbid_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '禁忌人群',
  `raw_data` text COLLATE utf8_unicode_ci,
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`food_name`) USING HASH,
  KEY `id` (`food_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=5483 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
