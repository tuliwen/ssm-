/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2020-08-21 17:01:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(16) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creator` varchar(255) default NULL,
  `createTime` varchar(255) default NULL,
  `detail` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('104', '1341', '1341', '2020-08-21 16:33', '1324');
INSERT INTO `news` VALUES ('103', '23412', '1341', '2020-08-21 16:33', '1341');
INSERT INTO `news` VALUES ('102', '13412', '13412', '2020-08-21 16:33', '134124');
INSERT INTO `news` VALUES ('100', '341', '12341', '2020-08-21 16:32', '124314');
INSERT INTO `news` VALUES ('92', '武汉开学!', '腾讯新闻', '2020-08-21 14:57', '123');
INSERT INTO `news` VALUES ('97', '124312', '123412', '2020-08-21 16:28', '1324123');
INSERT INTO `news` VALUES ('98', '123412', '132412', '2020-08-21 16:28', '134124');
INSERT INTO `news` VALUES ('101', '1341', '1341', '2020-08-21 16:32', '134124');
