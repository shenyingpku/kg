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

 Date: 03/11/2018 16:29:34 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `physical_examination`
-- ----------------------------
DROP TABLE IF EXISTS `physical_examination`;
CREATE TABLE `physical_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '查体ID',
  `examination_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '查体ID',
  `examination_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '查体名称',
  `examination_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '查体类型',
  `examination_description` text COLLATE utf8_unicode_ci NOT NULL COMMENT '查体描述',
  `considerations` text COLLATE utf8_unicode_ci NOT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`examination_name`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
