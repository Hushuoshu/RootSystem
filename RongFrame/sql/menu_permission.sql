/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `menu_permission`;
CREATE TABLE `menu_permission` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_permission
-- ----------------------------
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (1, 11, 25);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (2, 10, 28);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (3, 9, 39);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (4, 16, 42);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (5, 13, 30);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (6, 14, 35);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (7, 17, 44);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (89, 12, 18);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (90, 8, 2);
INSERT INTO urp.menu_permission (id, menu_id, permission_id) VALUES (91, 15, 41);
