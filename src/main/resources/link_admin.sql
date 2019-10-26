/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50725
Source Host           : 47.103.154.36:3306
Source Database       : link_admin

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-10-26 09:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_video`
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('11', '2019-10-04_37aaadf19afbfbdc4e3053380cf071d5.mp4', '/opt/store/linkadmin/tiktok/2019-10-04_37aaadf19afbfbdc4e3053380cf071d5.mp4', '2019-10-04 17:33:06', null);
INSERT INTO `t_video` VALUES ('15', '2019-10-21_2.mp4', '/opt/store/linkadmin/tiktok/2019-10-21_2.mp4', '2019-10-21 20:14:05', null);

-- ----------------------------
-- Table structure for `t_web_datascope`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_datascope`;
CREATE TABLE `t_web_datascope` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `targetCategory` varchar(30) DEFAULT NULL,
  `targetId` varchar(32) DEFAULT NULL,
  `targetName` varchar(30) DEFAULT NULL,
  `targetUrl` varchar(150) NOT NULL,
  `permissionId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_datascope
-- ----------------------------

-- ----------------------------
-- Table structure for `t_web_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_dept`;
CREATE TABLE `t_web_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `for_service` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_dept
-- ----------------------------
INSERT INTO `t_web_dept` VALUES ('2', '上海集团', '0', '0', null, '0', '1');
INSERT INTO `t_web_dept` VALUES ('4', '青浦分公司', '2', '1', null, '0', '12');
INSERT INTO `t_web_dept` VALUES ('6', '人事部', '4', '2', null, '0', '11');
INSERT INTO `t_web_dept` VALUES ('8', '信息中心', '4', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('9', '运维部', '4', '2', null, '0', '14');
INSERT INTO `t_web_dept` VALUES ('10', '安全部', '4', '2', null, '0', '15');
INSERT INTO `t_web_dept` VALUES ('11', 'IT与流程', '5', '2', null, '0', '21');
INSERT INTO `t_web_dept` VALUES ('12', '快递系统研发部', '11', '2', null, '0', '12');
INSERT INTO `t_web_dept` VALUES ('13', '渠道系统研发部', '11', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('14', '整车业务研发部', '11', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('15', '物流系统研发部', '11', '2', null, '0', '14');
INSERT INTO `t_web_dept` VALUES ('16', '徐汇分公司', '2', '1', null, '0', '2');
INSERT INTO `t_web_dept` VALUES ('17', '研发部', '16', null, null, '0', '21');
INSERT INTO `t_web_dept` VALUES ('18', '快递系统研发部', '4', null, null, '0', '1');
INSERT INTO `t_web_dept` VALUES ('20', '流程中心', '4', null, null, '0', null);
INSERT INTO `t_web_dept` VALUES ('21', '渠道系统研发部', '22', null, null, '0', '1');
INSERT INTO `t_web_dept` VALUES ('22', '西安分公司', '2', null, null, '0', null);
INSERT INTO `t_web_dept` VALUES ('25', '程序员鼓励师', '16', null, null, '0', null);

-- ----------------------------
-- Table structure for `t_web_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_dict`;
CREATE TABLE `t_web_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_type` varchar(50) NOT NULL DEFAULT '0' COMMENT ' 父ID ',
  `data_key` varchar(50) NOT NULL COMMENT ' 数据编码 ',
  `data_value` varchar(200) NOT NULL COMMENT ' 数据名称/值 ',
  `sorts` int(11) unsigned DEFAULT '1' COMMENT ' 顺序 ',
  `description` varchar(400) DEFAULT NULL COMMENT '数据描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_web_dict
-- ----------------------------
INSERT INTO `t_web_dict` VALUES ('2', 'data_scope', '1', '自定义数据权限', '1', '12');
INSERT INTO `t_web_dict` VALUES ('3', 'data_scope', '2', '全部数据权限', '2', '');
INSERT INTO `t_web_dict` VALUES ('4', 'data_scope', '3', '本部门数据权限', '3', '');
INSERT INTO `t_web_dict` VALUES ('5', 'data_scope', '4', '本部门及以下数据权限', '4', '');
INSERT INTO `t_web_dict` VALUES ('6', 'data_scope', '5', '仅本人数据权限', '5', '');
INSERT INTO `t_web_dict` VALUES ('9', 'sex', '1', '男', '1', '');
INSERT INTO `t_web_dict` VALUES ('10', 'sex', '2', '女', '2', '');

-- ----------------------------
-- Table structure for `t_web_logs`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_logs`;
CREATE TABLE `t_web_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginuser` varchar(30) DEFAULT NULL,
  `vsername` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `request_method` varchar(30) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `request_params` varchar(2000) DEFAULT NULL,
  `response_result` varchar(2000) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1480 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_logs
-- ----------------------------
INSERT INTO `t_web_logs` VALUES ('1181', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 13:15:25', '93', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"上海集团\",\"deptid\":2,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"111\",\"page\":0,\"password\":\"C4CA4238A0B923820DCC509A6F75849B\",\"roleIds\":[2],\"state\":0,\"uid\":\"2a1d17d2f4184e238816fd8b96195a3e\",\"vserName\":\"1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1182', 'admin', '管理员', '添加用户', 'http://localhost:8888/rest/user/add', '0:0:0:0:0:0:0:1', '2019-10-21 15:18:05', '103', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"\",\"page\":0,\"password\":\"\",\"roleIds\":[],\"state\":0,\"uid\":\"\",\"vserName\":\"\"}', '{\"code\":50000,\"msg\":\"真实姓名不能为空\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1183', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:18:47', '73', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"青浦分公司\",\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1184', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:18:57', '64', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"青浦分公司\",\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1185', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:19:07', '77', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"青浦分公司\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1186', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:19:14', '84', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"信息中心\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1187', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:19:22', '101', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"信息中心\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2,1],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1188', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:19:27', '62', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"信息中心\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"5\",\"page\":0,\"password\":\"E4DA3B7FBBCE2345D7772B0674A318D5\",\"roleIds\":[2],\"state\":0,\"uid\":\"fa350415ebcc43c2a86cc0cbad98a0a2\",\"vserName\":\"5\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1189', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:22:44', '276', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1190', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:22:52', '285', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1191', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:25:21', '355', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1192', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:25:31', '286', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1193', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:25:48', '271', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1194', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:26:07', '286', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1195', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:30:17', '264', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1196', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:30:41', '263', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1197', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:32:35', '250', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1198', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:32:42', '266', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1199', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:38:07', '416', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1200', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:38:17', '391', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1201', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:38:30', '673', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1202', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:40:05', '691', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1203', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:40:16', '377', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,33,5,6,7,2,14,4,32\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1204', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-21 15:55:56', '265', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1205', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:03:05', '2', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1206', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:19:42', '116', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"1qyd/Hk8ZFwchFRcRb+Psg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1207', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:19:48', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1208', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:20:06', '14', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"CEmutr2YUbDS4IAy9G/6cg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1209', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:22:21', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1210', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:30:42', '15', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"gtE9VkeELVK7w4iCa2RYtQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1211', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:32:43', '1', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1212', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:32:49', '25', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"1234567\",\"username\":\"editor\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1213', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:32:52', '18', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"/jQXrMRCDKwdKFzW794VXg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1214', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:37:01', '8', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1215', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:37:04', '32', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"1234567\",\"username\":\"editor\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1216', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:37:06', '21', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"blS8zHMJrhDFyJUSR0jVKw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1217', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-21 16:44:24', '1', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1218', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-21 16:44:32', '17', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"sQQ6uyk8FkCH5tu0hNMgWg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1219', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 09:50:53', '11088', 'POST', 'application/json;charset=UTF-8', '{}', '{\"code\":50000,\"msg\":\"必填项不能为空\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1220', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 09:51:57', '11998', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1221', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 09:52:59', '14', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1222', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 09:59:05', '2916', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1223', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 09:59:24', '17', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"594f179c609945689def728c01ddf8f1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1224', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:03:13', '16', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"594f179c609945689def728c01ddf8f1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1225', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:03:18', '18', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1226', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:03:25', '17', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1227', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:03:33', '19', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"dde9b279949e4e76ac3fff531d712227\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1228', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:17:50', '21', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"ad904a794a10434b8dec1de8ce23a288\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1229', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:17:52', '19', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"c2bd6773d48643a9ac4540a551ba6ffb\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1230', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:19:47', '23', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"c2bd6773d48643a9ac4540a551ba6ffb\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1231', 'editor', '测试员1', '更新用户状态', 'http://localhost:8888/rest/user/updateState', '0:0:0:0:0:0:0:1', '2019-10-22 10:19:49', '37', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"ad904a794a10434b8dec1de8ce23a288\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1232', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-22 11:20:35', '12', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1233', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-22 11:20:47', '154', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"PUkFMUcHSg+pcOO0H8qFaw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1234', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-22 11:20:52', '131', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云哥1\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2,1],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云哥\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1235', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-22 11:21:28', '563', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云哥1\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2,1],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云哥\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1236', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-22 11:21:42', '8822', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云哥1\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2,1],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云哥\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1237', 'admin', '管理员', '添加用户', 'http://localhost:8888/rest/user/add', '0:0:0:0:0:0:0:1', '2019-10-22 11:22:28', '100', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"\",\"roleIds\":[],\"state\":0,\"uid\":\"\",\"vserName\":\"\"}', '{\"code\":50000,\"msg\":\"真实姓名不能为空\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1238', 'admin', '管理员', '添加用户', 'http://localhost:8888/rest/user/add', '0:0:0:0:0:0:0:1', '2019-10-22 11:22:36', '31', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"123456\",\"roleIds\":[],\"state\":0,\"uid\":\"\",\"vserName\":\"66\"}', '{\"code\":50000,\"msg\":\"请分配角色\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1239', 'admin', '管理员', '添加用户', 'http://localhost:8888/rest/user/add', '0:0:0:0:0:0:0:1', '2019-10-22 11:22:45', '101', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"\",\"deptid\":0,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"123456\",\"roleIds\":[2],\"state\":0,\"uid\":\"\",\"vserName\":\"66\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1240', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-22 13:18:23', '70', 'POST', 'application/json;charset=utf-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"cuR5dP1wj6OBWIZNoH9LuA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1241', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-22 14:19:01', '20', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"levels\":1,\"name\":\"徐汇分公司\",\"parentId\":2,\"parentName\":\"上海集团\",\"root\":false,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1242', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-22 14:19:15', '18', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"研发部\",\"parentId\":16,\"parentName\":\"徐汇分公司\",\"root\":false,\"sorts\":21}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1243', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-22 14:19:31', '18', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"IT与流程中心\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1244', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-22 14:19:45', '17', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"快递系统研发部\",\"parentId\":18,\"parentName\":\"IT与流程中心\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1245', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-22 15:39:02', '33', 'GET', null, 'id=19', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1246', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-22 15:39:10', '28', 'POST', 'application/json;charset=UTF-8', '{\"id\":18,\"name\":\"快递系统研发部\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1247', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-22 15:48:11', '68', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"徐汇分公司\",\"deptid\":16,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"121212121212\",\"name\":\"editor\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":1,\"uid\":\"2\",\"vserName\":\"测试员1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1248', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-22 15:50:28', '16', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"流程中心\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1249', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-10-23 10:11:01', '2', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1250', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-23 10:11:16', '96', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"BU8E82D1OSKpVljC2E3m6w==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1251', 'admin', '管理员', '删除权限', 'http://localhost:8888/rest/permission/delete', '0:0:0:0:0:0:0:1', '2019-10-23 10:27:40', '139', 'GET', null, 'id=39', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1252', 'admin', '管理员', '删除权限', 'http://localhost:8888/rest/permission/delete', '0:0:0:0:0:0:0:1', '2019-10-23 10:27:43', '60', 'GET', null, 'id=38', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1253', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '110.249.168.202', '2019-10-23 10:26:52', '4', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"4t/JaFby695wK17tbHeV8g==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1254', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-23 10:32:19', '36', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"渠道系统研发部\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1255', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-23 10:32:43', '27', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"西安分公司\",\"parentId\":2,\"parentName\":\"上海集团\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1256', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-23 10:32:56', '66', 'POST', 'application/json;charset=UTF-8', '{\"id\":18,\"name\":\"快递系统研发部\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1257', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-23 10:33:04', '35', 'POST', 'application/json;charset=UTF-8', '{\"id\":21,\"name\":\"渠道系统研发部\",\"parentId\":4,\"parentName\":\"青浦分公司\",\"root\":false,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1258', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-23 10:33:22', '66', 'POST', 'application/json;charset=UTF-8', '{\"id\":21,\"name\":\"渠道系统研发部\",\"parentId\":22,\"parentName\":\"青浦分公司\",\"root\":false,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1259', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-23 10:34:04', '36', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"4545\",\"parentId\":0,\"parentName\":\"西安分公司\",\"root\":true}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1260', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-23 10:34:18', '49', 'GET', null, 'id=23', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1261', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-23 10:35:31', '20', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"7878\",\"parentId\":0,\"parentName\":\"西安分公司\",\"root\":true}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1262', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-23 10:55:09', '55', 'GET', null, 'id=24', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1263', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-23 13:47:35', '51', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"程序员鼓励师\",\"parentId\":22,\"parentName\":\"\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1264', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-23 13:47:48', '28', 'POST', 'application/json;charset=UTF-8', '{\"id\":25,\"name\":\"程序员鼓励师\",\"parentId\":16,\"parentName\":\"西安分公司\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1265', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-23 13:49:57', '163', 'POST', 'application/json;charset=UTF-8', '{\"id\":28,\"menu\":false,\"name\":\"部门查询\",\"parentId\":13,\"permission\":true,\"root\":false,\"sorts\":240,\"types\":1,\"url\":\"/rest/department/all\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1266', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-23 13:50:10', '65', 'POST', 'application/json;charset=UTF-8', '{\"id\":24,\"menu\":false,\"name\":\"权限查询\",\"parentId\":11,\"permission\":true,\"root\":false,\"sorts\":220,\"types\":1,\"url\":\"/rest/permission/all\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1267', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-23 14:29:21', '778', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"fT56zSMiOczxYr/KXAcjnQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1268', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '121.69.79.94', '2019-10-23 14:56:18', '5', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"jjU+0ZIQYcBU9qaCBXpaUw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1269', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '121.69.79.94', '2019-10-23 14:56:44', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1270', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '121.69.79.94', '2019-10-23 15:06:19', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"gaoyueb@dcits.com\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1271', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '121.69.79.94', '2019-10-23 15:06:24', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"gaoyueb@dcits.com\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1272', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '121.69.79.94', '2019-10-23 15:06:31', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"gaoyueb@dcits.com\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1273', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '112.64.68.241', '2019-10-23 16:45:59', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"5RJ8dFIqBnW+/qO3U2tzKQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1274', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 08:54:25', '1626', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"k7yXWLc6vXN+OTb5+0qMqw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1275', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 08:57:57', '151', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1276', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 08:58:07', '27', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"CQ7K0eGrZgoPKtAx5ZODwA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1277', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:14:52', '53', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":33,\"menu\":true,\"name\":\"错误日志\",\"parentId\":32,\"permission\":false,\"root\":false,\"sorts\":40,\"types\":0,\"url\":\"/logs/error-log\"},{\"childrens\":[{\"id\":35,\"menu\":false,\"name\":\"查询\",\"parentId\":34,\"permission\":true,\"root\":false,\"types\":1,\"url\":\"/rest/logs/blog/list\"}],\"id\":34,\"menu\":true,\"name\":\"业务日志\",\"parentId\":32,\"permission\":false,\"root\":false,\"sorts\":41,\"types\":0,\"url\":\"/logs/blog\"}],\"id\":32,\"menu\":true,\"name\":\"系统监控\",\"parentId\":0,\"permission\":false,\"root\":true,\"sorts\":101,\"types\":0,\"url\":\"/monitor\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1278', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:15:03', '52', 'POST', 'application/json;charset=UTF-8', '{\"id\":33,\"menu\":true,\"name\":\"错误日志\",\"parentId\":32,\"permission\":false,\"root\":false,\"sorts\":40,\"types\":0,\"url\":\"/monitor/error-log\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1279', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:15:10', '104', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":35,\"menu\":false,\"name\":\"查询\",\"parentId\":34,\"permission\":true,\"root\":false,\"types\":1,\"url\":\"/rest/logs/blog/list\"}],\"id\":34,\"menu\":true,\"name\":\"业务日志\",\"parentId\":32,\"permission\":false,\"root\":false,\"sorts\":41,\"types\":0,\"url\":\"/monitor/blog\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1280', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 09:15:31', '1', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1281', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 09:15:32', '21', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"dIdqXhvvDL4SPdO1zpVyzw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1282', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 09:15:44', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1283', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 09:16:02', '21', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"MqoQAeblftTRSD/QUA1OqQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1284', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 09:16:23', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1285', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 09:16:29', '27', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"TG8attMiVk5LcgBIiDY1rg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1286', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:33:30', '35', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":6,\"menu\":true,\"name\":\"401\",\"parentId\":5,\"permission\":false,\"root\":false,\"sorts\":30,\"types\":0,\"url\":\"/error/401\"},{\"id\":7,\"menu\":true,\"name\":\"404\",\"parentId\":5,\"permission\":false,\"root\":false,\"sorts\":31,\"types\":0,\"url\":\"/error/404\"}],\"id\":5,\"menu\":true,\"name\":\"错误页面\",\"parentId\":0,\"permission\":false,\"root\":true,\"sorts\":199,\"types\":0,\"url\":\"/error\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1287', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 09:35:24', '42', 'POST', 'application/json;charset=UTF-8', '{\"menu\":true,\"name\":\"系统管理\",\"parentId\":0,\"permission\":false,\"root\":true,\"types\":0,\"url\":\"/system\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1288', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:35:39', '40', 'POST', 'application/json;charset=UTF-8', '{\"id\":40,\"menu\":true,\"name\":\"系统管理\",\"parentId\":0,\"permission\":false,\"root\":true,\"sorts\":102,\"types\":0,\"url\":\"/system\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1289', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 09:36:14', '20', 'POST', 'application/json;charset=UTF-8', '{\"menu\":true,\"name\":\"数据字典\",\"parentId\":40,\"permission\":false,\"root\":false,\"sorts\":1020,\"types\":0,\"url\":\"/system/dict\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1290', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:36:36', '342', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"超级管理员\",\"id\":1,\"limit\":0,\"name\":\"admin\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,40,41,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1291', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 09:38:53', '24', 'POST', 'application/json;charset=UTF-8', '{\"menu\":true,\"name\":\"通知公告\",\"parentId\":40,\"permission\":false,\"root\":false,\"sorts\":1021,\"types\":0,\"url\":\"/system/notice\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1292', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:39:02', '373', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"超级管理员\",\"id\":1,\"limit\":0,\"name\":\"admin\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,20,21,22,23,11,24,25,26,27,13,28,29,30,31,32,33,34,35,40,41,42,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1293', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:43:39', '44', 'POST', 'application/json;charset=UTF-8', '{\"id\":41,\"menu\":true,\"name\":\"数据字典\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":1020,\"types\":0,\"url\":\"/system/dict\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1294', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:44:56', '50', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":16,\"menu\":false,\"name\":\"查询用户\",\"parentId\":9,\"permission\":true,\"root\":false,\"sorts\":200,\"types\":1,\"url\":\"/rest/user/list\"},{\"id\":17,\"menu\":false,\"name\":\"新增用户\",\"parentId\":9,\"permission\":true,\"root\":false,\"sorts\":201,\"types\":1,\"url\":\"/rest/user/add\"},{\"id\":18,\"menu\":false,\"name\":\"修改用户\",\"parentId\":9,\"permission\":true,\"root\":false,\"sorts\":202,\"types\":1,\"url\":\"/rest/user/update\"},{\"id\":19,\"menu\":false,\"name\":\"删除用户\",\"parentId\":9,\"permission\":true,\"root\":false,\"sorts\":203,\"types\":1,\"url\":\"/rest/user/delete\"}],\"id\":9,\"menu\":true,\"name\":\"用户管理\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":1,\"types\":0,\"url\":\"/permission/user\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1295', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:45:00', '35', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":20,\"menu\":false,\"name\":\"查询列表\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":210,\"types\":1,\"url\":\"/rest/role/list\"},{\"id\":21,\"menu\":false,\"name\":\"新增角色\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":211,\"types\":1,\"url\":\"/rest/role/add\"},{\"id\":22,\"menu\":false,\"name\":\"修改角色\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":212,\"types\":1,\"url\":\"/rest/role/update\"},{\"id\":23,\"menu\":false,\"name\":\"删除角色\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":213,\"types\":1,\"url\":\"/rest/role/delete\"}],\"id\":10,\"menu\":true,\"name\":\"角色管理\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":2,\"types\":0,\"url\":\"/permission/role\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1296', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:45:04', '29', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":24,\"menu\":false,\"name\":\"权限查询\",\"parentId\":11,\"permission\":true,\"root\":false,\"sorts\":220,\"types\":1,\"url\":\"/rest/permission/all\"},{\"id\":25,\"menu\":false,\"name\":\"新增权限\",\"parentId\":11,\"permission\":true,\"root\":false,\"sorts\":221,\"types\":1,\"url\":\"/rest/permission/add\"},{\"id\":26,\"menu\":false,\"name\":\"修改权限\",\"parentId\":11,\"permission\":true,\"root\":false,\"sorts\":222,\"types\":1,\"url\":\"/rest/permission/update\"},{\"id\":27,\"menu\":false,\"name\":\"删除权限\",\"parentId\":11,\"permission\":true,\"root\":false,\"sorts\":223,\"types\":1,\"url\":\"/rest/permission/delete\"}],\"id\":11,\"menu\":true,\"name\":\"权限管理\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":3,\"types\":0,\"url\":\"/permission/permission\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1297', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:45:09', '61', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":28,\"menu\":false,\"name\":\"部门查询\",\"parentId\":13,\"permission\":true,\"root\":false,\"sorts\":240,\"types\":1,\"url\":\"/rest/department/all\"},{\"id\":29,\"menu\":false,\"name\":\"新增部门\",\"parentId\":13,\"permission\":true,\"root\":false,\"sorts\":241,\"types\":1,\"url\":\"/rest/department/add\"},{\"id\":30,\"menu\":false,\"name\":\"修改部门\",\"parentId\":13,\"permission\":true,\"root\":false,\"sorts\":242,\"types\":1,\"url\":\"/rest/department/update\"},{\"id\":31,\"menu\":false,\"name\":\"删除部门\",\"parentId\":13,\"permission\":true,\"root\":false,\"sorts\":243,\"types\":1,\"url\":\"/rest/department/delete\"}],\"id\":13,\"menu\":true,\"name\":\"部门管理\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":4,\"types\":0,\"url\":\"/permission/dept\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1298', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 09:45:23', '26', 'POST', 'application/json;charset=UTF-8', '{\"id\":41,\"menu\":true,\"name\":\"数据字典\",\"parentId\":8,\"permission\":false,\"root\":false,\"sorts\":5,\"types\":0,\"url\":\"/permission/dict\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1299', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 10:42:01', '13', 'POST', 'application/json;charset=UTF-8', '{\"desc\":\"\",\"key\":\"1\",\"limit\":0,\"page\":0,\"sorts\":1,\"value\":\"管理员\"}', '{\"code\":50000,\"msg\":\"Type不能为空\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1300', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 10:42:46', '273', 'POST', 'application/json;charset=UTF-8', '{\"desc\":\"\",\"key\":\"1\",\"limit\":0,\"page\":0,\"type\":\"roel_leavls\",\"value\":\"管理员\"}', '{\"code\":50000,\"msg\":\"执行失败\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1301', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 10:43:38', '26', 'POST', 'application/json;charset=UTF-8', '{\"desc\":\"\",\"key\":\"1\",\"limit\":0,\"page\":0,\"type\":\"roel_leavls\",\"value\":\"管理员\"}', '{\"code\":50000,\"msg\":\"执行失败\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1302', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 10:45:13', '442', 'POST', 'application/json;charset=UTF-8', '{\"desc\":\"\",\"key\":\"1\",\"limit\":0,\"page\":0,\"type\":\"roel_leavls\",\"value\":\"管理员\"}', '{\"code\":50000,\"msg\":\"执行失败\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1303', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '119.129.187.193', '2019-10-24 10:51:05', '116', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"hL/7Xaprbcn80kN0887EAA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1304', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '119.129.186.109', '2019-10-24 10:51:10', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"sOv57zJgm7KjUmVQuw7WdA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1305', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '119.129.186.109', '2019-10-24 10:51:55', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1306', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '119.129.186.109', '2019-10-24 10:52:08', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123\",\"username\":\"admin\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1307', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 10:55:35', '406', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"re\",\"data_value\":\"2\",\"description\":\"31\",\"limit\":0,\"page\":0}', '{\"code\":50000,\"msg\":\"执行失败\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1308', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:00:07', '27', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"re\",\"data_value\":\"2\",\"description\":\"31\",\"limit\":0,\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1309', 'admin', '管理员', '删除字典', 'http://localhost:8888/rest/dict/delete', '0:0:0:0:0:0:0:1', '2019-10-24 11:01:58', '25', 'GET', null, 'id=1', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1310', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '123.126.70.234', '2019-10-24 11:05:21', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"5PJ9OB94ixlvLmuqsFl4kQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1311', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '123.126.70.234', '2019-10-24 11:05:25', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"QLnhUlf1cxdv7LUuYFTp8A==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1312', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '123.126.70.234', '2019-10-24 11:05:26', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"/csF+Cm1Ie43c3XwbiD7yQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1313', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '123.126.70.234', '2019-10-24 11:05:26', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"QHxAH2z9wMyvhLp5TE5ngw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1314', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '123.126.70.234', '2019-10-24 11:05:26', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"V+ZYla4haQPYysLPucnxsw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1315', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:09:01', '23', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"全部数据权限\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1316', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:09:45', '18', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"data_scope\",\"data_value\":\"本部门数据权限\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1317', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 11:10:28', '69', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定数据权限\",\"description\":\"\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1318', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 11:10:40', '33', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"data_scope\",\"data_value\":\"全部数据权限\",\"description\":\"\",\"id\":3,\"limit\":0,\"page\":0,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1319', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:10:59', '16', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"3\",\"data_type\":\"data_scope\",\"data_value\":\"本部门数据权限\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":3}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1320', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:11:24', '38', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"4\",\"data_type\":\"data_scope\",\"data_value\":\"本部门及以下数据权限\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":4}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1321', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:11:44', '17', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"5\",\"data_type\":\"data_scope\",\"data_value\":\"仅本人数据权限\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":5}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1322', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 11:19:55', '25', 'POST', 'application/json;charset=UTF-8', '{\"menu\":false,\"name\":\"数据权限\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":1,\"types\":1,\"url\":\"/rest/role/dataScope\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1323', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-24 11:20:28', '644', 'POST', 'application/json;charset=UTF-8', '{\"description\":\"超级管理员\",\"id\":1,\"limit\":0,\"name\":\"admin\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,43,20,21,22,23,11,24,25,26,27,13,28,29,30,31,41,32,33,34,35,40,42,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1324', 'admin', '管理员', '修改权限', 'http://localhost:8888/rest/permission/update', '0:0:0:0:0:0:0:1', '2019-10-24 11:22:37', '67', 'POST', 'application/json;charset=UTF-8', '{\"id\":43,\"menu\":false,\"name\":\"数据权限\",\"parentId\":10,\"permission\":true,\"root\":false,\"sorts\":1,\"types\":1,\"url\":\"/rest/role/saveDataScope\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1325', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 13:23:37', '63105', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定数据权限\",\"description\":\"1111\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1326', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 13:24:45', '415', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定数据权限\",\"description\":\"1111\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1327', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 13:24:52', '29', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定数据权限\",\"description\":\"\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1328', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '110.184.152.101', '2019-10-24 13:26:49', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"qPRoznyYQtXGTO0egGmn7A==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1329', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '110.184.152.101', '2019-10-24 13:27:15', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"n4rOx6p76s8ZPYCze1UrlQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1330', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:20:33', '4', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":2,\"deptIds\":[],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1331', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:21:28', '1', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":2,\"deptIds\":[],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1332', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:22:16', '18054', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":2,\"deptIds\":[],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1333', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.49.85.19', '2019-10-24 14:32:11', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"admin\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1334', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.49.85.19', '2019-10-24 14:32:17', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"LZLPNOptwvN6JYX9TaVm5Q==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1335', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:38:34', '5609', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":2,\"deptIds\":[],\"description\":\"超级管理员\",\"id\":1,\"limit\":0,\"name\":\"admin\",\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1336', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:38:59', '61', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":5,\"deptIds\":[],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1337', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 14:42:44', '123', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":1,\"deptIds\":[17,2,16],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1338', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 15:14:03', '119', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"FotdCCtlgqYsGaKnL3+XDA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1339', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 15:14:54', '404', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"gAKrZKxYYQDCXq0gfZnHuw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1340', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 15:58:22', '88', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"1\",\"deptIds\":[17,2,16],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1341', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 15:58:49', '89', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"1\",\"deptIds\":[17],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1342', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 15:59:20', '81', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"1\",\"deptIds\":[17,6],\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1343', 'admin', '管理员', '新增角色', 'http://localhost:8888/rest/role/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:02:52', '119', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"\",\"deptIds\":[],\"description\":\"test1\",\"limit\":0,\"name\":\"test\",\"page\":0,\"permIds\":\"1,5,6,14\"}', '{\"code\":50000,\"msg\":\"执行失败\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1344', 'admin', '管理员', '新增角色', 'http://localhost:8888/rest/role/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:09:18', '67', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"\",\"deptIds\":[],\"description\":\"test1\",\"id\":11,\"limit\":0,\"name\":\"test\",\"page\":0,\"permIds\":\"1,5,6,14\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1345', 'admin', '管理员', '角色分配数据权限', 'http://localhost:8888/rest/role/saveDataScope', '0:0:0:0:0:0:0:1', '2019-10-24 16:09:32', '51', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"5\",\"deptIds\":[],\"description\":\"test1\",\"id\":11,\"limit\":0,\"name\":\"test\",\"page\":0,\"permIds\":\"1,5,6,14\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1346', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:12:03', '77', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"人事部\",\"deptid\":6,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"2\",\"page\":0,\"password\":\"C81E728D9D4C2F636F067F89CC14862C\",\"roleIds\":[11],\"uid\":\"dde9b279949e4e76ac3fff531d712227\",\"vserName\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1347', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:18:59', '2', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"上海集团\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"1\",\"page\":0,\"password\":\"C4CA4238A0B923820DCC509A6F75849B\",\"roleIds\":[],\"uid\":\"5029d7aa882546839b6dac1f5b5c1ef7\",\"vserName\":\"1\"}', '{\"code\":50000,\"msg\":\"请分配角色\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1348', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:19:18', '82', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"上海集团\",\"deptid\":20,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"111\",\"page\":0,\"password\":\"C4CA4238A0B923820DCC509A6F75849B\",\"roleIds\":[2],\"uid\":\"2a1d17d2f4184e238816fd8b96195a3e\",\"vserName\":\"1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1349', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:19:27', '59', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"流程中心\",\"deptid\":8,\"email\":\"\",\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"111\",\"page\":0,\"password\":\"C4CA4238A0B923820DCC509A6F75849B\",\"roleIds\":[2],\"uid\":\"2a1d17d2f4184e238816fd8b96195a3e\",\"vserName\":\"1\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1350', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:36:02', '73', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptid\":4,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[1,2],\"state\":0,\"uid\":\"b730512de92c4689a87ed0fdd1e2bffc\",\"vserName\":\"66666\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1351', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:36:12', '67', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"青浦分公司\",\"deptid\":4,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b730512de92c4689a87ed0fdd1e2bffc\",\"vserName\":\"66666\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1352', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:36:19', '74', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"青浦分公司\",\"deptid\":0,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b730512de92c4689a87ed0fdd1e2bffc\",\"vserName\":\"66666\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1353', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:36:26', '67', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptid\":18,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"666\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b730512de92c4689a87ed0fdd1e2bffc\",\"vserName\":\"66666\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1354', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:37:33', '290', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"1\",\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,43,20,21,22,23,11,24,25,26,27,13,28,29,30,31,41,32,33,34,35,40,42,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1355', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:38:40', '65', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"sex\",\"data_value\":\"男\",\"description\":\"\",\"limit\":0,\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1356', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:38:52', '15', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"sex\",\"data_value\":\"女\",\"description\":\"\",\"limit\":0,\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1357', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 16:39:23', '68', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1358', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 16:39:25', '65', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"4G6oGDzXRTwfn7rtODUkYQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1359', 'editor', '测试员1', '删除字典', 'http://localhost:8888/rest/dict/delete', '0:0:0:0:0:0:0:1', '2019-10-24 16:39:31', '20', 'GET', null, 'id=8', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1360', 'editor', '测试员1', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-24 16:39:44', '33', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定数据权限\",\"description\":\"12\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1361', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 16:40:25', '13', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1362', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 16:40:31', '18', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"4/FfazNmlQvvm9cJy9cuKg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1363', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:40:49', '25', 'POST', 'application/json;charset=UTF-8', '{\"menu\":false,\"name\":\"新增\",\"parentId\":41,\"permission\":true,\"root\":false,\"sorts\":1,\"types\":1,\"url\":\"/rest/dict/add\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1364', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:41:11', '18', 'POST', 'application/json;charset=UTF-8', '{\"menu\":false,\"name\":\"修改\",\"parentId\":41,\"permission\":true,\"root\":false,\"sorts\":2,\"types\":1,\"url\":\"/rest/dict/update\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1365', 'admin', '管理员', '新增权限', 'http://localhost:8888/rest/permission/add', '0:0:0:0:0:0:0:1', '2019-10-24 16:41:31', '15', 'POST', 'application/json;charset=UTF-8', '{\"menu\":false,\"name\":\"删除\",\"parentId\":41,\"permission\":true,\"root\":false,\"sorts\":3,\"types\":1,\"url\":\"/rest/dict/delete\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1366', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-24 16:41:37', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1367', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-24 16:41:38', '17', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"Q62/0KgAfW/MW176ZqCYUg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1368', 'editor', '测试员1', '删除字典', 'http://localhost:8888/rest/dict/delete', '0:0:0:0:0:0:0:1', '2019-10-24 16:41:43', '16', 'GET', null, 'id=7', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1369', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '121.69.79.94', '2019-10-24 16:52:04', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"tMfHif09PPYpSnRyIPk5lA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1370', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-24 16:58:46', '13', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1371', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-24 16:59:05', '4', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1372', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-24 16:59:12', '4', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1373', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-24 16:59:17', '4', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1374', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '111.207.4.42', '2019-10-24 17:18:09', '121', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"k6aPS5EEss4Sehb2HyjaWA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1375', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '111.207.4.42', '2019-10-24 17:18:13', '4', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"Wb8Jgnn9vZe4mH3I5OYjiw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1376', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '111.207.4.42', '2019-10-24 17:18:15', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"15TDaqKvyq/8a73hoMTEaQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1377', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.24.98.254', '2019-10-24 17:48:57', '5', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"5UKatH+A0VmxCCNYv5VNng==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1378', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '36.112.26.128', '2019-10-24 18:07:27', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"XJFnGHSZYw1wBnkwv6zoaw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1379', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-24 19:54:23', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"g3wdgWpzGrHBthjoHHmmug==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1380', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '112.64.119.2', '2019-10-24 20:30:48', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"MVbMcMW7ckyC+m2X9rkLMA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1381', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '223.70.0.165', '2019-10-24 21:58:18', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"j9lQEhTCAefefE76Wo9Rog==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1382', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-25 08:32:01', '4', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1383', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '116.228.112.130', '2019-10-25 08:32:05', '3', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1384', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 10:29:21', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"cvqWdQWvDOMWNWNE+8S0OQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1385', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 10:30:45', '3', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"urUPxEUWuCdlh5MjHPpzmA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1386', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '111.200.40.14', '2019-10-25 10:40:19', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"cf7L/cCGu0Qpuj3qMXFFsQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1387', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-25 10:48:46', '15', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1388', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 10:48:52', '95', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"m/z2scic8FRbxlhtcyStrA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1389', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-25 10:48:57', '48', 'GET', null, 'id=23', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1390', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-25 10:48:59', '55', 'GET', null, 'id=24', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1391', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-25 10:49:15', '33', 'GET', null, 'id=19', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1392', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-25 10:56:45', '138', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptid\":18,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云哥1\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云哥\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1393', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-25 10:57:05', '70', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"快递系统研发部\",\"deptid\":20,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1111111\",\"name\":\"辉桑\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"ad904a794a10434b8dec1de8ce23a288\",\"vserName\":\"辉桑\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1394', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-25 10:57:11', '60', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"渠道系统研发部\",\"deptid\":8,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"\",\"name\":\"用嗓\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"c2bd6773d48643a9ac4540a551ba6ffb\",\"vserName\":\"用嗓\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1395', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 11:13:23', '5', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"FUd35ghewy4uYCromHKvMA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1396', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 11:13:27', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"XD7M6+rI6kLSxtFGGdXXxQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1397', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '220.202.224.33', '2019-10-25 11:30:25', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"qOQMae8yKbmXdc4tsDU9LA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1398', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '220.202.224.33', '2019-10-25 11:30:29', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"GAYUlecKOd8QOnnYnx0ztA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1399', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '220.202.224.33', '2019-10-25 11:30:30', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"tfzCqt+4c1+pLWoBro4eEA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1400', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-25 13:48:34', '149', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"信息中心\",\"deptid\":8,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"22222\",\"name\":\"用嗓\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"c2bd6773d48643a9ac4540a551ba6ffb\",\"vserName\":\"用嗓\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1401', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-25 13:51:33', '155', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"5\",\"description\":\"测试角色\",\"id\":11,\"limit\":0,\"name\":\"test\",\"page\":0,\"permIds\":\"1,5,6,14\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1402', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-25 13:52:52', '34', 'POST', 'application/json;charset=UTF-8', '{\"id\":21,\"name\":\"渠道系统研发部\",\"parentId\":22,\"parentName\":\"西安分公司\",\"root\":false,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1403', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-25 13:53:35', '382', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"2\",\"description\":\"超级管理员\",\"id\":1,\"limit\":0,\"name\":\"admin\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,43,20,21,22,23,11,24,25,26,27,13,28,29,30,31,41,44,45,46,32,33,34,35,40,42,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1404', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-25 13:53:58', '45', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"sex\",\"data_value\":\"男\",\"description\":\"\",\"limit\":0,\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1405', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-25 13:54:06', '17', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"sex\",\"data_value\":\"女\",\"description\":\"\",\"limit\":0,\"page\":0}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1406', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-25 14:04:08', '312', 'POST', 'application/json;charset=UTF-8', '{\"data_scope\":\"1\",\"description\":\"系统演示角色\",\"id\":2,\"limit\":0,\"name\":\"editor\",\"page\":0,\"permIds\":\"1,36,37,8,9,16,17,18,19,10,43,20,21,22,23,11,24,25,26,27,13,28,29,30,31,41,32,33,40,42,5,6,7,2,14,4\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1407', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-25 14:13:38', '49', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"sex\",\"data_value\":\"男\",\"description\":\"\",\"id\":9,\"limit\":0,\"page\":0,\"sorts\":6}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1408', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-25 14:13:42', '30', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"sex\",\"data_value\":\"女\",\"description\":\"\",\"id\":10,\"limit\":0,\"page\":0,\"sorts\":7}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1409', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-25 14:14:01', '16', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"roel_level\",\"data_value\":\"超级管理员\",\"description\":\"\",\"limit\":0,\"page\":0,\"sorts\":8}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1410', 'admin', '管理员', '新增字典', 'http://localhost:8888/rest/dict/add', '0:0:0:0:0:0:0:1', '2019-10-25 14:16:00', '16', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"roel_level\",\"data_value\":\"系统管理员\",\"description\":\"系统管理员级别为2，使用该角色新增用户时只能赋予比系统管理员级别低的角色\",\"limit\":0,\"page\":0,\"sorts\":9}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1411', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-25 14:16:23', '32', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"roel_level\",\"data_value\":\"超级管理员\",\"description\":\"key越小级别越大\",\"id\":11,\"limit\":0,\"page\":0,\"sorts\":8}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1412', 'admin', '管理员', '删除字典', 'http://localhost:8888/rest/dict/delete', '0:0:0:0:0:0:0:1', '2019-10-25 14:19:38', '17', 'GET', null, 'id=12', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1413', 'admin', '管理员', '删除字典', 'http://localhost:8888/rest/dict/delete', '0:0:0:0:0:0:0:1', '2019-10-25 14:19:41', '17', 'GET', null, 'id=11', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1414', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-10-25 14:32:58', '2', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1415', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 14:33:04', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"3PlTFGXX/NHyNg9L7FCITQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1416', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-10-25 14:33:06', '1', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1417', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-25 14:34:46', '31', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1418', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:34:52', '47', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"+hH5v7Kwtm76XxY9dQv8fA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1419', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:36:10', '489', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"AeDEjg+EwhCO3XVyOPLvIQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1420', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:39:33', '409', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"QFQyG+3/0/b+rWmc3sDL+A==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1421', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '123.112.154.224', '2019-10-25 14:54:47', '4', 'POST', 'application/json;charset=utf-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"n+6fClgHON+AOrytQvM8sA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1422', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '123.112.154.224', '2019-10-25 14:54:52', '2', 'POST', 'application/json;charset=utf-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"NtCy/tj6fsvaaHlh8CZ3Tg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1423', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:57:28', '42', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"iANvpaXYiFOsqSaSzesTJw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1424', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:57:39', '17', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"DPsYbj2M2Kuy7cdvicrQRg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1425', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 14:58:38', '6374', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"VVDwoDntFjuZBmqFi5xatg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1426', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:52', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"SAcAWTs6N21HjBq6k70RNQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1427', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:55', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"JbkLtI2ZE6P6qQZvSB0xBg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1428', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:55', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"2Qb4FWfHYEKrMRsLR5xgbw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1429', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:55', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"plGFi2yzb8yG6lvTjSoxtQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1430', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:55', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"lqfPokZbJAZBtb4zumMNMA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1431', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:56', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"UHn5uLV9L6zLpY70J8DHyA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1432', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:56', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"4/8wYYGqz9BBE9U5z78BlA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1433', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '115.206.122.25', '2019-10-25 15:00:57', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"fKYE9/8ZWyCwMFNup8nMsg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1434', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:03:35', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"MFlj2u8zeH8jRK0yXN7sVQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1435', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:21', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"ek77lFEb4rju5x8oL4G7Ow==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1436', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:25', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"uv4O5NqpcvIGNbudlbuh7g==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1437', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:25', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"EO1JSPTh5d75sOZZ1zX+1Q==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1438', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:25', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"cpYSiSJb/FPnneURbNGFIA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1439', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:26', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"u8b53W6cBEgtPLGtsYpi7A==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1440', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:26', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"qU3vA4V6jyRMN8b9ErphyQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1441', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:26', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"TtGjr69z5oSR2Obv3782rw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1442', 'editor', '测试员1', '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 15:06:26', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"iK61NoO81+H+m9sNVLmmDg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1443', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 16:09:56', '39', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"8vHZ0jbIwFbFwvHjLYm0aA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1444', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-25 16:10:01', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1445', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 16:10:09', '25', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"mQ31/4aU+JnGztjSZPGSeA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1446', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '124.90.43.86', '2019-10-25 16:09:04', '4', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"5qlZQev/cGQSx32neZrYqQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1447', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 16:10:50', '15', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"PzdPauBpUb/81M1ebtqYgw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1448', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 16:44:53', '1', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"admin\"}', '{\"code\":50000,\"msg\":\"无效的用户名或密码\"}', '0');
INSERT INTO `t_web_logs` VALUES ('1449', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 16:44:59', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"Wvt8zZBPcl0kVHgvMXzZkg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1450', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-10-25 16:55:16', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1451', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-10-25 16:55:21', '2', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"on0wlg/5WF4pHcT0ztu7XQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1452', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 17:07:38', '1207', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"JmLfpvm4R7E19x9PLMkNGQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1453', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-25 17:07:57', '2', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1454', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 17:08:07', '15', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"vYcEsTVMka3cn1jjjDQGrw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1455', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-25 17:08:31', '16', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"Pi5EOS/UOrH45Sdd1+kzjw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1456', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '183.95.184.75', '2019-10-25 18:19:04', '896', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":0,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1457', 'editor', '测试员1', '更新用户状态', 'http://47.103.154.36:8888/rest/user/updateState', '183.95.184.75', '2019-10-25 18:19:06', '5', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"introduction\":\"hello word\",\"limit\":0,\"page\":0,\"state\":1,\"uid\":\"2\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1458', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '183.95.184.75', '2019-10-25 20:35:17', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1459', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '183.95.184.75', '2019-10-25 20:35:25', '6', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"QsAEhDvoKHk9P5TdBuxIXA==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1460', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '123.123.222.236', '2019-10-25 22:50:13', '6', 'POST', 'application/json;charset=utf-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"ReQE9B3OV+o8PgrSvpgn4A==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1461', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-26 08:38:01', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1462', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-26 08:38:02', '60482', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"0Z4e/+YNdDJiojFmIdypww==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1463', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-26 08:39:08', '19', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"KK58zwW0Tii89IcReMOfCw==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1464', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-26 08:41:47', '19', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"123456\",\"username\":\"editor\"}', '{\"code\":20000,\"result\":\"+WGDvnGt1c7HS8T0emvCXQ==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1465', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-26 08:42:01', '0', 'GET', null, 'null', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1466', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-26 08:42:08', '20', 'POST', 'application/json;charset=UTF-8', '{\"password\":\"admin123456\",\"username\":\"admin\"}', '{\"code\":20000,\"result\":\"gkm94/EpfXRnRzJN+6thFg==\"}', '1');
INSERT INTO `t_web_logs` VALUES ('1467', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:42:52', '109', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"快递系统研发部\",\"deptid\":18,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云哥\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云哥\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1468', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:43:01', '62', 'POST', 'application/json;charset=UTF-8', '{\"avatar\":\"pic\",\"deptName\":\"快递系统研发部\",\"deptid\":18,\"introduction\":\"hello word\",\"limit\":0,\"mobile\":\"1760126\",\"name\":\"云桑\",\"page\":0,\"password\":\"E10ADC3949BA59ABBE56E057F20F883E\",\"roleIds\":[2],\"state\":0,\"uid\":\"b88bb916dc054870ae124d92710ac3d3\",\"vserName\":\"云桑\"}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1469', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:43:34', '63', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"data_scope\",\"data_value\":\"自定义数据权限\",\"description\":\"12\",\"id\":2,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1470', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:44:59', '39', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"1\",\"data_type\":\"sex\",\"data_value\":\"男\",\"description\":\"\",\"id\":9,\"limit\":0,\"page\":0,\"sorts\":1}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1471', 'admin', '管理员', '修改字典', 'http://localhost:8888/rest/dict/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:45:04', '30', 'POST', 'application/json;charset=UTF-8', '{\"data_key\":\"2\",\"data_type\":\"sex\",\"data_value\":\"女\",\"description\":\"\",\"id\":10,\"limit\":0,\"page\":0,\"sorts\":2}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1472', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-26 08:49:56', '23', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"开发1\",\"parentId\":18,\"parentName\":\"快递系统研发部\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1473', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:50:14', '31', 'POST', 'application/json;charset=UTF-8', '{\"id\":26,\"name\":\"开发部门1\",\"parentId\":18,\"parentName\":\"快递系统研发部\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1474', 'admin', '管理员', '新增部门', 'http://localhost:8888/rest/department/add', '0:0:0:0:0:0:0:1', '2019-10-26 08:50:27', '17', 'POST', 'application/json;charset=UTF-8', '{\"deleted\":0,\"name\":\"小组1\",\"parentId\":26,\"parentName\":\"开发部门1\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1475', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:50:31', '40', 'POST', 'application/json;charset=UTF-8', '{\"id\":27,\"name\":\"小组111111\",\"parentId\":26,\"parentName\":\"开发部门1\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1476', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:50:45', '30', 'POST', 'application/json;charset=UTF-8', '{\"id\":27,\"name\":\"小组是对方是否都是发\",\"parentId\":26,\"parentName\":\"开发部门1\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1477', 'admin', '管理员', '修改部门', 'http://localhost:8888/rest/department/update', '0:0:0:0:0:0:0:1', '2019-10-26 08:50:50', '33', 'POST', 'application/json;charset=UTF-8', '{\"childrens\":[{\"id\":27,\"name\":\"小组是对方是否都是发\",\"parentId\":26,\"root\":false}],\"id\":26,\"name\":\"开发部门大师法是否\",\"parentId\":18,\"parentName\":\"快递系统研发部\",\"root\":false}', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1478', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-26 08:52:18', '33', 'GET', null, 'id=27', '{\"code\":20000}', '1');
INSERT INTO `t_web_logs` VALUES ('1479', 'admin', '管理员', '删除部门', 'http://localhost:8888/rest/department/delete', '0:0:0:0:0:0:0:1', '2019-10-26 08:52:20', '44', 'GET', null, 'id=26', '{\"code\":20000}', '1');

-- ----------------------------
-- Table structure for `t_web_right`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_right`;
CREATE TABLE `t_web_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `types` int(11) DEFAULT NULL,
  `css` varchar(50) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `dataScope` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_right
-- ----------------------------
INSERT INTO `t_web_right` VALUES ('1', '首页', '0', '0', null, '/', null, null, '1', null, null);
INSERT INTO `t_web_right` VALUES ('2', '文档', '0', '0', null, '/documentation', null, null, '200', null, null);
INSERT INTO `t_web_right` VALUES ('4', '外链', '0', '0', null, 'https://github.com/252956/vue-link-admin', null, null, '202', null, null);
INSERT INTO `t_web_right` VALUES ('5', '错误页面', '0', '0', null, '/error', null, null, '199', null, null);
INSERT INTO `t_web_right` VALUES ('6', '401', '5', '0', null, '/error/401', null, null, '30', null, null);
INSERT INTO `t_web_right` VALUES ('7', '404', '5', '0', null, '/error/404', null, null, '31', null, null);
INSERT INTO `t_web_right` VALUES ('8', '系统权限', '0', '0', null, '/permission', null, null, '100', null, null);
INSERT INTO `t_web_right` VALUES ('9', '用户管理', '8', '0', null, '/permission/user', null, null, '1', null, null);
INSERT INTO `t_web_right` VALUES ('10', '角色管理', '8', '0', null, '/permission/role', null, null, '2', null, null);
INSERT INTO `t_web_right` VALUES ('11', '权限管理', '8', '0', null, '/permission/permission', null, null, '3', null, null);
INSERT INTO `t_web_right` VALUES ('13', '部门管理', '8', '0', null, '/permission/dept', null, null, '4', null, null);
INSERT INTO `t_web_right` VALUES ('14', '图标', '0', '0', null, '/icon', null, null, '201', null, null);
INSERT INTO `t_web_right` VALUES ('16', '查询用户', '9', '1', null, '/rest/user/list', null, null, '200', null, null);
INSERT INTO `t_web_right` VALUES ('17', '新增用户', '9', '1', null, '/rest/user/add', null, null, '201', null, null);
INSERT INTO `t_web_right` VALUES ('18', '修改用户', '9', '1', null, '/rest/user/update', null, null, '202', null, null);
INSERT INTO `t_web_right` VALUES ('19', '删除用户', '9', '1', null, '/rest/user/delete', null, null, '203', null, null);
INSERT INTO `t_web_right` VALUES ('20', '查询列表', '10', '1', null, '/rest/role/list', null, null, '210', null, null);
INSERT INTO `t_web_right` VALUES ('21', '新增角色', '10', '1', null, '/rest/role/add', null, null, '211', null, null);
INSERT INTO `t_web_right` VALUES ('22', '修改角色', '10', '1', null, '/rest/role/update', null, null, '212', null, null);
INSERT INTO `t_web_right` VALUES ('23', '删除角色', '10', '1', null, '/rest/role/delete', null, null, '213', null, null);
INSERT INTO `t_web_right` VALUES ('24', '权限查询', '11', '1', null, '/rest/permission/all', null, null, '220', null, null);
INSERT INTO `t_web_right` VALUES ('25', '新增权限', '11', '1', null, '/rest/permission/add', null, null, '221', null, null);
INSERT INTO `t_web_right` VALUES ('26', '修改权限', '11', '1', null, '/rest/permission/update', null, null, '222', null, null);
INSERT INTO `t_web_right` VALUES ('27', '删除权限', '11', '1', null, '/rest/permission/delete', null, null, '223', null, null);
INSERT INTO `t_web_right` VALUES ('28', '部门查询', '13', '1', null, '/rest/department/all', null, null, '240', null, null);
INSERT INTO `t_web_right` VALUES ('29', '新增部门', '13', '1', null, '/rest/department/add', null, null, '241', null, null);
INSERT INTO `t_web_right` VALUES ('30', '修改部门', '13', '1', null, '/rest/department/update', null, null, '242', null, null);
INSERT INTO `t_web_right` VALUES ('31', '删除部门', '13', '1', null, '/rest/department/delete', null, null, '243', null, null);
INSERT INTO `t_web_right` VALUES ('32', '系统监控', '0', '0', null, '/monitor', null, null, '101', null, null);
INSERT INTO `t_web_right` VALUES ('33', '错误日志', '32', '0', null, '/monitor/error-log', null, null, '40', null, null);
INSERT INTO `t_web_right` VALUES ('34', '业务日志', '32', '0', null, '/monitor/blog', null, null, '41', null, null);
INSERT INTO `t_web_right` VALUES ('35', '查询', '34', '1', null, '/rest/logs/blog/list', null, null, null, null, null);
INSERT INTO `t_web_right` VALUES ('36', '视频+', '0', '0', null, '/video', null, null, '2', null, null);
INSERT INTO `t_web_right` VALUES ('37', 'TikTok', '36', '0', null, '/video/tiktok', null, null, '10', null, null);
INSERT INTO `t_web_right` VALUES ('40', '系统管理', '0', '0', null, '/system', null, null, '102', null, null);
INSERT INTO `t_web_right` VALUES ('41', '数据字典', '8', '0', null, '/permission/dict', null, null, '5', null, null);
INSERT INTO `t_web_right` VALUES ('42', '通知公告', '40', '0', null, '/system/notice', null, null, '1021', null, null);
INSERT INTO `t_web_right` VALUES ('43', '数据权限', '10', '1', null, '/rest/role/saveDataScope', null, null, '1', null, null);
INSERT INTO `t_web_right` VALUES ('44', '新增', '41', '1', null, '/rest/dict/add', null, null, '1', null, null);
INSERT INTO `t_web_right` VALUES ('45', '修改', '41', '1', null, '/rest/dict/update', null, null, '2', null, null);
INSERT INTO `t_web_right` VALUES ('46', '删除', '41', '1', null, '/rest/dict/delete', null, null, '3', null, null);

-- ----------------------------
-- Table structure for `t_web_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role`;
CREATE TABLE `t_web_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `levels` int(11) DEFAULT NULL COMMENT '新增用户时只能赋予比自己级别低的角色',
  `data_scope` varchar(11) DEFAULT NULL COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_role
-- ----------------------------
INSERT INTO `t_web_role` VALUES ('1', 'admin', null, '2', '超级管理员');
INSERT INTO `t_web_role` VALUES ('2', 'editor', null, '1', '系统演示角色');
INSERT INTO `t_web_role` VALUES ('11', 'test', null, '5', '测试角色');

-- ----------------------------
-- Table structure for `t_web_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role_dept`;
CREATE TABLE `t_web_role_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_web_role_dept
-- ----------------------------
INSERT INTO `t_web_role_dept` VALUES ('8', '2', '17');
INSERT INTO `t_web_role_dept` VALUES ('9', '2', '6');

-- ----------------------------
-- Table structure for `t_web_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role_right`;
CREATE TABLE `t_web_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_role_right
-- ----------------------------
INSERT INTO `t_web_role_right` VALUES ('1220', '11', '1');
INSERT INTO `t_web_role_right` VALUES ('1221', '11', '5');
INSERT INTO `t_web_role_right` VALUES ('1222', '11', '6');
INSERT INTO `t_web_role_right` VALUES ('1223', '11', '14');
INSERT INTO `t_web_role_right` VALUES ('1224', '1', '1');
INSERT INTO `t_web_role_right` VALUES ('1225', '1', '36');
INSERT INTO `t_web_role_right` VALUES ('1226', '1', '37');
INSERT INTO `t_web_role_right` VALUES ('1227', '1', '8');
INSERT INTO `t_web_role_right` VALUES ('1228', '1', '9');
INSERT INTO `t_web_role_right` VALUES ('1229', '1', '16');
INSERT INTO `t_web_role_right` VALUES ('1230', '1', '17');
INSERT INTO `t_web_role_right` VALUES ('1231', '1', '18');
INSERT INTO `t_web_role_right` VALUES ('1232', '1', '19');
INSERT INTO `t_web_role_right` VALUES ('1233', '1', '10');
INSERT INTO `t_web_role_right` VALUES ('1234', '1', '43');
INSERT INTO `t_web_role_right` VALUES ('1235', '1', '20');
INSERT INTO `t_web_role_right` VALUES ('1236', '1', '21');
INSERT INTO `t_web_role_right` VALUES ('1237', '1', '22');
INSERT INTO `t_web_role_right` VALUES ('1238', '1', '23');
INSERT INTO `t_web_role_right` VALUES ('1239', '1', '11');
INSERT INTO `t_web_role_right` VALUES ('1240', '1', '24');
INSERT INTO `t_web_role_right` VALUES ('1241', '1', '25');
INSERT INTO `t_web_role_right` VALUES ('1242', '1', '26');
INSERT INTO `t_web_role_right` VALUES ('1243', '1', '27');
INSERT INTO `t_web_role_right` VALUES ('1244', '1', '13');
INSERT INTO `t_web_role_right` VALUES ('1245', '1', '28');
INSERT INTO `t_web_role_right` VALUES ('1246', '1', '29');
INSERT INTO `t_web_role_right` VALUES ('1247', '1', '30');
INSERT INTO `t_web_role_right` VALUES ('1248', '1', '31');
INSERT INTO `t_web_role_right` VALUES ('1249', '1', '41');
INSERT INTO `t_web_role_right` VALUES ('1250', '1', '44');
INSERT INTO `t_web_role_right` VALUES ('1251', '1', '45');
INSERT INTO `t_web_role_right` VALUES ('1252', '1', '46');
INSERT INTO `t_web_role_right` VALUES ('1253', '1', '32');
INSERT INTO `t_web_role_right` VALUES ('1254', '1', '33');
INSERT INTO `t_web_role_right` VALUES ('1255', '1', '34');
INSERT INTO `t_web_role_right` VALUES ('1256', '1', '35');
INSERT INTO `t_web_role_right` VALUES ('1257', '1', '40');
INSERT INTO `t_web_role_right` VALUES ('1258', '1', '42');
INSERT INTO `t_web_role_right` VALUES ('1259', '1', '5');
INSERT INTO `t_web_role_right` VALUES ('1260', '1', '6');
INSERT INTO `t_web_role_right` VALUES ('1261', '1', '7');
INSERT INTO `t_web_role_right` VALUES ('1262', '1', '2');
INSERT INTO `t_web_role_right` VALUES ('1263', '1', '14');
INSERT INTO `t_web_role_right` VALUES ('1264', '1', '4');
INSERT INTO `t_web_role_right` VALUES ('1265', '2', '1');
INSERT INTO `t_web_role_right` VALUES ('1266', '2', '36');
INSERT INTO `t_web_role_right` VALUES ('1267', '2', '37');
INSERT INTO `t_web_role_right` VALUES ('1268', '2', '8');
INSERT INTO `t_web_role_right` VALUES ('1269', '2', '9');
INSERT INTO `t_web_role_right` VALUES ('1270', '2', '16');
INSERT INTO `t_web_role_right` VALUES ('1271', '2', '17');
INSERT INTO `t_web_role_right` VALUES ('1272', '2', '18');
INSERT INTO `t_web_role_right` VALUES ('1273', '2', '19');
INSERT INTO `t_web_role_right` VALUES ('1274', '2', '10');
INSERT INTO `t_web_role_right` VALUES ('1275', '2', '43');
INSERT INTO `t_web_role_right` VALUES ('1276', '2', '20');
INSERT INTO `t_web_role_right` VALUES ('1277', '2', '21');
INSERT INTO `t_web_role_right` VALUES ('1278', '2', '22');
INSERT INTO `t_web_role_right` VALUES ('1279', '2', '23');
INSERT INTO `t_web_role_right` VALUES ('1280', '2', '11');
INSERT INTO `t_web_role_right` VALUES ('1281', '2', '24');
INSERT INTO `t_web_role_right` VALUES ('1282', '2', '25');
INSERT INTO `t_web_role_right` VALUES ('1283', '2', '26');
INSERT INTO `t_web_role_right` VALUES ('1284', '2', '27');
INSERT INTO `t_web_role_right` VALUES ('1285', '2', '13');
INSERT INTO `t_web_role_right` VALUES ('1286', '2', '28');
INSERT INTO `t_web_role_right` VALUES ('1287', '2', '29');
INSERT INTO `t_web_role_right` VALUES ('1288', '2', '30');
INSERT INTO `t_web_role_right` VALUES ('1289', '2', '31');
INSERT INTO `t_web_role_right` VALUES ('1290', '2', '41');
INSERT INTO `t_web_role_right` VALUES ('1291', '2', '32');
INSERT INTO `t_web_role_right` VALUES ('1292', '2', '33');
INSERT INTO `t_web_role_right` VALUES ('1293', '2', '40');
INSERT INTO `t_web_role_right` VALUES ('1294', '2', '42');
INSERT INTO `t_web_role_right` VALUES ('1295', '2', '5');
INSERT INTO `t_web_role_right` VALUES ('1296', '2', '6');
INSERT INTO `t_web_role_right` VALUES ('1297', '2', '7');
INSERT INTO `t_web_role_right` VALUES ('1298', '2', '2');
INSERT INTO `t_web_role_right` VALUES ('1299', '2', '14');
INSERT INTO `t_web_role_right` VALUES ('1300', '2', '4');

-- ----------------------------
-- Table structure for `t_web_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_user`;
CREATE TABLE `t_web_user` (
  `uid` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `vsername` varchar(30) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `deptid` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_user
-- ----------------------------
INSERT INTO `t_web_user` VALUES ('1', 'admin', 'A66ABB5684C45962D887564F08346E8D', '管理员', '17601269', '2019-09-07 10:08:25', '1', '4', null, null);
INSERT INTO `t_web_user` VALUES ('2', 'editor', 'E10ADC3949BA59ABBE56E057F20F883E', '测试员1', '121212121212', '2019-09-09 16:40:43', '1', '16', '', null);
INSERT INTO `t_web_user` VALUES ('ad904a794a10434b8dec1de8ce23a288', '辉桑', 'E10ADC3949BA59ABBE56E057F20F883E', '辉桑', '1111111', '2019-09-18 13:47:51', '0', '20', null, null);
INSERT INTO `t_web_user` VALUES ('b88bb916dc054870ae124d92710ac3d3', '云桑', 'E10ADC3949BA59ABBE56E057F20F883E', '云桑', '1760126', '2019-09-18 11:11:39', '0', '18', null, null);
INSERT INTO `t_web_user` VALUES ('c2bd6773d48643a9ac4540a551ba6ffb', '用嗓', 'E10ADC3949BA59ABBE56E057F20F883E', '用嗓', '22222', '2019-09-18 15:16:13', '0', '8', null, null);

-- ----------------------------
-- Table structure for `t_web_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_user_role`;
CREATE TABLE `t_web_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_user_role
-- ----------------------------
INSERT INTO `t_web_user_role` VALUES ('22', '93bad36e94ab48ab977f9718147c573f', '2');
INSERT INTO `t_web_user_role` VALUES ('39', 'ab334041dc2c4786a7bddb49bf8b7816', '2');
INSERT INTO `t_web_user_role` VALUES ('40', 'ab334041dc2c4786a7bddb49bf8b7816', '8');
INSERT INTO `t_web_user_role` VALUES ('41', 'ab334041dc2c4786a7bddb49bf8b7816', '10');
INSERT INTO `t_web_user_role` VALUES ('42', 'ab334041dc2c4786a7bddb49bf8b7816', '9');
INSERT INTO `t_web_user_role` VALUES ('54', '696413831f394ac7b502e828e9ccda3e', '1');
INSERT INTO `t_web_user_role` VALUES ('55', '6535f71edf3d4e5f9891426bda3de1a1', '1');
INSERT INTO `t_web_user_role` VALUES ('56', '54136c2416984fa196f970d715e807e1', '1');
INSERT INTO `t_web_user_role` VALUES ('57', '6b6f0cbdda8d464c90ac58e68a37694e', '2');
INSERT INTO `t_web_user_role` VALUES ('58', '4b452255b3be4fc6829e6db2922257e1', '2');
INSERT INTO `t_web_user_role` VALUES ('59', '8dc0a90caeed4310a9c499ef3f1d3c1d', '1');
INSERT INTO `t_web_user_role` VALUES ('60', '1', '1');
INSERT INTO `t_web_user_role` VALUES ('61', '1', '2');
INSERT INTO `t_web_user_role` VALUES ('71', 'fa350415ebcc43c2a86cc0cbad98a0a2', '2');
INSERT INTO `t_web_user_role` VALUES ('79', '2', '2');
INSERT INTO `t_web_user_role` VALUES ('80', 'dde9b279949e4e76ac3fff531d712227', '11');
INSERT INTO `t_web_user_role` VALUES ('82', '2a1d17d2f4184e238816fd8b96195a3e', '2');
INSERT INTO `t_web_user_role` VALUES ('87', 'b730512de92c4689a87ed0fdd1e2bffc', '2');
INSERT INTO `t_web_user_role` VALUES ('89', 'ad904a794a10434b8dec1de8ce23a288', '2');
INSERT INTO `t_web_user_role` VALUES ('91', 'c2bd6773d48643a9ac4540a551ba6ffb', '2');
INSERT INTO `t_web_user_role` VALUES ('93', 'b88bb916dc054870ae124d92710ac3d3', '2');
