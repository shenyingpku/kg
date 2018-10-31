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

 Date: 03/11/2018 16:29:30 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `medicine`
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '药品ID',
  `medicine_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '药品ID',
  `brand_factory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药品产地，品牌',
  `medicine_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药品名称',
  `otc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否OTC',
  `medicine_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药品类型',
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '厂商',
  `function` text COLLATE utf8_unicode_ci COMMENT '药品功能',
  `usage` text COLLATE utf8_unicode_ci COMMENT '药品使用',
  `isbn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药品编号',
  `risk` text COLLATE utf8_unicode_ci COMMENT '药品风险',
  `announcement` text COLLATE utf8_unicode_ci COMMENT '注意事项',
  `ingredient` text COLLATE utf8_unicode_ci COMMENT '成分或处方',
  `sideaffect` text COLLATE utf8_unicode_ci COMMENT '副作用，不良反应',
  `storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '贮存方式',
  `contraindication` text COLLATE utf8_unicode_ci COMMENT '禁忌症',
  `interaction` text COLLATE utf8_unicode_ci COMMENT '药物相互作用',
  `info` text COLLATE utf8_unicode_ci COMMENT '简介',
  `is_local` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否国产',
  `is_cm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否中药 (Chinese Medicine)',
  `is_insurance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否属于医保',
  `child` text COLLATE utf8_unicode_ci COMMENT '儿童用药',
  `pregnant` blob COMMENT '孕妇用药',
  `elder` text COLLATE utf8_unicode_ci COMMENT '老人用药',
  `character` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性状',
  `pharmacokinetics` text COLLATE utf8_unicode_ci COMMENT '药代动力学',
  `pharmacological_action` text COLLATE utf8_unicode_ci COMMENT '药理作用',
  `valid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药物有效期',
  `overdose` text COLLATE utf8_unicode_ci COMMENT '药物过量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `combine_name` (`brand_factory`,`medicine_name`),
  KEY `id` (`medicine_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=17256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
