/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : urp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-09-02 14:23:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(255) NOT NULL COMMENT '权限名字',
  `key` varchar(255) NOT NULL COMMENT '权限key',
  `parent_id` int(10) DEFAULT NULL COMMENT '上级权限',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '权限排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (1, '权限', '*', null, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (2, '系统设置', 'system:setting', 1, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (6, '查看权限', 'permission:check', 25, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (7, '删除权限', 'permission:delete', 25, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (8, '添加权限', 'permission:add', 25, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (9, '编辑权限', 'permission:edit', 25, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (11, '编辑菜单', 'menu:edit', 39, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (12, '删除菜单', 'menu:delete', 39, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (13, '添加菜单', 'menu:add', 39, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (16, '查看菜单', 'menu:check', 39, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (17, '菜单授权', 'menu:grant', 39, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (18, '用户部门', 'userdep:setting', 1, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (19, '创建部门', 'dep:add', 30, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (20, '删除部门', 'dep:delete', 30, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (21, '编辑部门', 'dep:edit', 30, 2);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (22, '添加角色', 'role:add', 28, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (23, '删除角色', 'role:delete', 28, 2);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (24, '编辑角色', 'role:edit', 28, 3);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (25, '权限管理(页面)', 'permission:manage', 2, 2);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (26, '查看角色', 'role:check', 28, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (27, '角色授权', 'role:grant', 28, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (28, '角色管理(页面)', 'role:manage', 2, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (29, '查看部门', 'dep:check', 30, 3);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (30, '部门管理(页面)', 'dep:manage', 18, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (31, '添加用户', 'user:add', 35, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (32, '删除用户', 'user:delete', 35, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (33, '编辑用户', 'user:edit', 35, 2);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (34, '查看用户', 'user:check', 35, 3);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (35, '用户管理(页面)', 'user:manage', 18, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (36, '查看角色权限', 'rolepermission:check', 28, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (37, '查询权限，不包括自己以及子级权限', 'permission:check:notselfchildren', 25, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (38, '查询菜单权限', 'menupermisson:check', 39, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (39, '菜单管理（页面）', 'menu:manage', 2, 0);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (40, '查看菜单，不包括自己以及子级菜单', 'menu:check:notselfchildren', 39, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (41, '日志记录', 'logs:record', 1, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (42, '登录日志（页面）', 'loginlog:manage', 41, 1);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (43, '登录日志查看', 'loginlog:check', 42, 2);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (44, '用户分布(页面)', 'loginlog:userlocations', 41, 3);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (45, '获取用户坐标', 'loginlog:getuserlocations', 44, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (46, '分配角色', 'distribute:role', 35, 4);
INSERT INTO urp.permission (id, name, `key`, parent_id, `order`) VALUES (47, '修改部门', 'edituser:dep', 35, 5);
