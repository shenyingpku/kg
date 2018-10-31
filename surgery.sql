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

 Date: 03/11/2018 16:29:47 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `surgery`
-- ----------------------------
DROP TABLE IF EXISTS `surgery`;
CREATE TABLE `surgery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '手术ID',
  `surgery_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `surgery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '手术名称',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身体部位',
  `method` text COLLATE utf8_unicode_ci COMMENT '手术方法',
  `description` text COLLATE utf8_unicode_ci COMMENT '手术描述',
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科室',
  `inarcosis` text COLLATE utf8_unicode_ci,
  `pain_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '疼痛程度',
  `infection_risk` text COLLATE utf8_unicode_ci COMMENT '感染风险',
  `time_length` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '时间长度',
  `best_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最佳时间',
  `care` text COLLATE utf8_unicode_ci COMMENT '护理',
  `surgery_notice` text COLLATE utf8_unicode_ci COMMENT '术前注意',
  `diet` text COLLATE utf8_unicode_ci COMMENT '饮食',
  `icd9_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'icd9手术编码',
  `surgery_after_treat` text COLLATE utf8_unicode_ci COMMENT '术后护理',
  `fit_symptoms` text COLLATE utf8_unicode_ci COMMENT '适应症',
  `sequela` text COLLATE utf8_unicode_ci COMMENT '后遗症',
  `surgery_notice_items` text COLLATE utf8_unicode_ci COMMENT '注意事项',
  `surgery_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手术次数',
  `preparation` text COLLATE utf8_unicode_ci COMMENT '准备',
  `recover_issues` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '术后恢复',
  `contraindication` text COLLATE utf8_unicode_ci COMMENT '禁忌症',
  `in_hospital` tinyint(4) DEFAULT NULL COMMENT '是否需要住院治疗',
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '价格',
  `infection` tinyint(4) DEFAULT NULL COMMENT '是否传染',
  `recover_length` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '恢复时间',
  `surgery_steps` text COLLATE utf8_unicode_ci COMMENT '手术步骤',
  `surgery_influence` text COLLATE utf8_unicode_ci COMMENT '手术影响',
  `surgery_diet` text COLLATE utf8_unicode_ci COMMENT '术后饮食',
  `complication` text COLLATE utf8_unicode_ci COMMENT '并发症',
  `raw_data` text COLLATE utf8_unicode_ci,
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`surgery_name`) USING HASH,
  KEY `id` (`surgery_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=17297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
