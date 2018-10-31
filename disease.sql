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

 Date: 03/11/2018 16:29:12 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `disease`
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '疾病ID',
  `disease_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '疾病ID',
  `disease_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '疾病名称',
  `icd10_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ICD10编号',
  `additional_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ICD10 附加编码',
  `description` text COLLATE utf8_unicode_ci COMMENT '疾病描述',
  `people_group_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '人群',
  `deparment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科室',
  `morbidity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '普遍性',
  `infection` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传染性',
  `disease_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发病部位',
  `english_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transmission_route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传播途径',
  `cause` text COLLATE utf8_unicode_ci,
  `insurance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医保',
  `precaution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预防措施',
  `vaccine_prevention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '疫苗预防',
  `season` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '季节分布',
  `etiology` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病原学',
  `incubation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '潜伏期',
  `clinical_manifestation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '临床表现',
  `complication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '并发症',
  `susceptible_population` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '易感人群，多发群体',
  `fee` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infect_ratio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患病比例',
  `infect_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传染方式',
  `cure_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '治疗方式',
  `cure_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '治疗周期',
  `ware_issues` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注意事项',
  `cure_ratio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '治愈率',
  `could_eat_food_txt` text COLLATE utf8_unicode_ci COMMENT '宜吃食物（文本）',
  `could_not_eat_food_txt` text COLLATE utf8_unicode_ci COMMENT '忌吃食物（文本）',
  `could_eat_dish_txt` text COLLATE utf8_unicode_ci COMMENT '推荐菜谱（文本）',
  `food_txt` text COLLATE utf8_unicode_ci,
  `disease_txt` text COLLATE utf8_unicode_ci,
  `lab_test_txt` text COLLATE utf8_unicode_ci,
  `drug_txt` text COLLATE utf8_unicode_ci,
  `symptom_txt` text COLLATE utf8_unicode_ci,
  `tag` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`disease_name`) USING HASH,
  KEY `id` (`disease_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=34634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
