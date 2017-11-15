/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (1, 1, 1);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (217, 2, 2);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (218, 2, 6);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (219, 2, 8);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (220, 2, 13);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (221, 2, 16);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (222, 2, 18);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (223, 2, 19);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (224, 2, 22);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (225, 2, 25);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (226, 2, 26);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (227, 2, 28);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (228, 2, 29);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (229, 2, 30);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (230, 2, 31);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (231, 2, 34);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (232, 2, 35);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (233, 2, 36);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (234, 2, 37);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (235, 2, 38);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (236, 2, 39);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (237, 2, 40);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (238, 2, 41);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (239, 2, 42);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (240, 2, 43);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (241, 2, 44);
INSERT INTO urp.role_permission (id, role_id, permission_id) VALUES (242, 2, 45);
