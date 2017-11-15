/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department_account
-- ----------------------------
DROP TABLE IF EXISTS `department_account`;
CREATE TABLE `department_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_id` int(11) NOT NULL COMMENT '部门id',
  `account_id` int(11) NOT NULL COMMENT '账号id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_account
-- ----------------------------
INSERT INTO urp.department_account (id, dep_id, account_id) VALUES (1, 1, 1);
INSERT INTO urp.department_account (id, dep_id, account_id) VALUES (2, 2, 2);
