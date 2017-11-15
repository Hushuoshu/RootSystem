/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0' COMMENT '菜单上级id',
  `name` varchar(255) NOT NULL COMMENT '菜单名字',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单链接地址',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '菜单排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (8, 0, '系统设置', '', 2);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (9, 8, '菜单设置', '/main/menu/manage.html', 0);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (10, 8, '角色设置', '/main/role/manage.html', 0);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (11, 8, '权限设置', '/main/permission/manage.html', 0);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (12, null, '用户部门', '', 1);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (13, 12, '部门管理', '/main/department/manage.html', 0);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (14, 12, '用户管理', '/user/manage.html', 1);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (15, null, '日志记录', '', 3);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (16, 15, '登录日志', '/main/log/login.html', 1);
INSERT INTO urp.menu (id, parent_id, name, url, `order`) VALUES (17, 15, '用户分布', '/main/log/user-locations.html', 2);
