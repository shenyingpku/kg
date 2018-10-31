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

 Date: 03/11/2018 16:29:38 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `recipes`
-- ----------------------------
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食谱id',
  `recipes_id` char(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '食谱id',
  `recipes_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '食谱名称',
  `recipes_nutrition` text COLLATE utf8_unicode_ci COMMENT '营养',
  `recipes_description` text COLLATE utf8_unicode_ci COMMENT '描述',
  `function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '功效',
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜系',
  `cooking_analysis` text COLLATE utf8_unicode_ci COMMENT '营养解析',
  `taste` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '口味',
  `sub_materials` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '辅料',
  `seasoning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '调料',
  `food_restriction` longtext COLLATE utf8_unicode_ci COMMENT '食物相克',
  `cooking_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推荐食用时间',
  `main_materials` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主料',
  `cooking_tips` text COLLATE utf8_unicode_ci COMMENT '制作提示',
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工艺',
  `cooking_process` text COLLATE utf8_unicode_ci COMMENT '制作方法',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_index` (`recipes_name`) USING HASH,
  KEY `id` (`recipes_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=14884 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='食谱';

SET FOREIGN_KEY_CHECKS = 1;
