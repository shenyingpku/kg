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

 Date: 03/11/2018 16:29:25 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `laboratory_test`
-- ----------------------------
DROP TABLE IF EXISTS `laboratory_test`;
CREATE TABLE `laboratory_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '检查ID',
  `laboratory_test_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `laboratory_test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `laboratory_test_description` text COLLATE utf8_unicode_ci,
  `laboratory_test_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `risk` text COLLATE utf8_unicode_ci COMMENT '风险',
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专科分类',
  `category2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '检查分类',
  `positive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '阳性（猜测的）',
  `negative` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '阴性（猜测的）',
  `normal` longtext COLLATE utf8_unicode_ci COMMENT '正常值（猜测的）',
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '适用性别',
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考价格',
  `empty_stomach` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否空腹',
  `higher_than_normal` longtext COLLATE utf8_unicode_ci COMMENT '增高（临床意义）',
  `lower_than_normal` longtext COLLATE utf8_unicode_ci COMMENT '减低（临床意义）',
  `basic_intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '简介',
  `raw_data` text COLLATE utf8_unicode_ci,
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`laboratory_test_name`) USING HASH,
  UNIQUE KEY `laboratory_test_name` (`laboratory_test_name`),
  KEY `id` (`laboratory_test_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3749 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
