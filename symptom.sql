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

 Date: 03/11/2018 16:29:52 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `symptom`
-- ----------------------------
DROP TABLE IF EXISTS `symptom`;
CREATE TABLE `symptom` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '症状ID',
  `symptom_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `symptom_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '症状名称',
  `description` text COLLATE utf8_unicode_ci COMMENT '症状描述',
  `pathogeny` text COLLATE utf8_unicode_ci COMMENT '病因',
  `prevention` text COLLATE utf8_unicode_ci COMMENT '预防',
  `examine` text COLLATE utf8_unicode_ci COMMENT '检查',
  `antidiastole` text COLLATE utf8_unicode_ci COMMENT '鉴别诊断',
  `could_not_eat_food_txt` text COLLATE utf8_unicode_ci COMMENT '忌吃食物',
  `could_not_eat_food_items` text COLLATE utf8_unicode_ci COMMENT '忌吃食物列表（后期可能没用）',
  `could_eat_food_txt` text COLLATE utf8_unicode_ci COMMENT '宜吃食物',
  `could_eat_food_items` text COLLATE utf8_unicode_ci COMMENT '宜吃食物列表（后期可能没用）',
  `raw_data` text COLLATE utf8_unicode_ci,
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`symptom_name`) USING HASH,
  KEY `id` (`symptom_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=13989 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
