/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户角色id',
  `account_id` int(11) NOT NULL COMMENT '账号id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO urp.account_role (id, account_id, role_id) VALUES (1, 1, 1);
INSERT INTO urp.account_role (id, account_id, role_id) VALUES (2, 2, 2);
INSERT INTO urp.account_role (id, account_id, role_id) VALUES (3, 1, 2);
