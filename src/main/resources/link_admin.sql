/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50725
Source Host           : 47.103.154.36:3306
Source Database       : link_admin

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-10-23 10:07:00
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_dept
-- ----------------------------
INSERT INTO `t_web_dept` VALUES ('1', 'Link公司', '0', '0', '0', '1', '0');
INSERT INTO `t_web_dept` VALUES ('2', '上海集团', '0', '0', null, '0', '1');
INSERT INTO `t_web_dept` VALUES ('3', '徐汇分公司1', '0', '1', null, '1', '11');
INSERT INTO `t_web_dept` VALUES ('4', '青浦分公司', '2', '1', null, '0', '12');
INSERT INTO `t_web_dept` VALUES ('5', '徐汇分公司', '2', '1', null, '1', '13');
INSERT INTO `t_web_dept` VALUES ('6', '人事部', '4', '2', null, '0', '11');
INSERT INTO `t_web_dept` VALUES ('7', '财务部', '4', '2', null, '1', '12');
INSERT INTO `t_web_dept` VALUES ('8', '信息中心', '4', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('9', '运维部', '4', '2', null, '1', '14');
INSERT INTO `t_web_dept` VALUES ('10', '安全部', '4', '2', null, '1', '15');
INSERT INTO `t_web_dept` VALUES ('11', 'IT与流程', '5', '2', null, '1', '21');
INSERT INTO `t_web_dept` VALUES ('12', '快递系统研发部', '11', '2', null, '0', '12');
INSERT INTO `t_web_dept` VALUES ('13', '渠道系统研发部', '11', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('14', '整车业务研发部', '11', '2', null, '0', '13');
INSERT INTO `t_web_dept` VALUES ('15', '物流系统研发部', '11', '2', null, '0', '14');
INSERT INTO `t_web_dept` VALUES ('16', '徐汇分公司', '2', '1', null, '0', '2');
INSERT INTO `t_web_dept` VALUES ('17', '研发部', '16', null, null, '0', '21');
INSERT INTO `t_web_dept` VALUES ('18', '快递系统研发部', '4', null, null, '0', null);
INSERT INTO `t_web_dept` VALUES ('19', '快递系统研发部', '18', null, null, '1', null);
INSERT INTO `t_web_dept` VALUES ('20', '流程中心', '4', null, null, '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=1249 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_right
-- ----------------------------
INSERT INTO `t_web_right` VALUES ('1', '首页', '0', '0', null, '/', null, null, '1', null, null);
INSERT INTO `t_web_right` VALUES ('2', '文档', '0', '0', null, '/documentation', null, null, '200', null, null);
INSERT INTO `t_web_right` VALUES ('4', '外链', '0', '0', null, 'https://github.com/252956/vue-link-admin', null, null, '202', null, null);
INSERT INTO `t_web_right` VALUES ('5', '错误页面', '0', '0', null, '/error', null, null, '102', null, null);
INSERT INTO `t_web_right` VALUES ('6', '401', '5', '0', null, '/error/401', null, null, '30', null, null);
INSERT INTO `t_web_right` VALUES ('7', '404', '5', '0', null, '/error/404', null, null, '31', null, null);
INSERT INTO `t_web_right` VALUES ('8', '系统权限', '0', '0', null, '/permission', null, null, '100', null, null);
INSERT INTO `t_web_right` VALUES ('9', '用户管理', '8', '0', null, '/permission/user', null, null, '20', null, null);
INSERT INTO `t_web_right` VALUES ('10', '角色管理', '8', '0', null, '/permission/role', null, null, '21', null, null);
INSERT INTO `t_web_right` VALUES ('11', '权限管理', '8', '0', null, '/permission/permission', null, null, '22', null, null);
INSERT INTO `t_web_right` VALUES ('13', '部门管理', '8', '0', null, '/permission/dept', null, null, '24', null, null);
INSERT INTO `t_web_right` VALUES ('14', '图标', '0', '0', null, '/icon', null, null, '201', null, null);
INSERT INTO `t_web_right` VALUES ('16', '查询用户', '9', '1', null, '/rest/user/list', null, null, '200', null, null);
INSERT INTO `t_web_right` VALUES ('17', '新增用户', '9', '1', null, '/rest/user/add', null, null, '201', null, null);
INSERT INTO `t_web_right` VALUES ('18', '修改用户', '9', '1', null, '/rest/user/update', null, null, '202', null, null);
INSERT INTO `t_web_right` VALUES ('19', '删除用户', '9', '1', null, '/rest/user/delete', null, null, '203', null, null);
INSERT INTO `t_web_right` VALUES ('20', '查询列表', '10', '1', null, '/rest/role/list', null, null, '210', null, null);
INSERT INTO `t_web_right` VALUES ('21', '新增角色', '10', '1', null, '/rest/role/add', null, null, '211', null, null);
INSERT INTO `t_web_right` VALUES ('22', '修改角色', '10', '1', null, '/rest/role/update', null, null, '212', null, null);
INSERT INTO `t_web_right` VALUES ('23', '删除角色', '10', '1', null, '/rest/role/delete', null, null, '213', null, null);
INSERT INTO `t_web_right` VALUES ('24', '查询', '11', '1', null, '/rest/permission/all', null, null, '220', null, null);
INSERT INTO `t_web_right` VALUES ('25', '新增权限', '11', '1', null, '/rest/permission/add', null, null, '221', null, null);
INSERT INTO `t_web_right` VALUES ('26', '修改权限', '11', '1', null, '/rest/permission/update', null, null, '222', null, null);
INSERT INTO `t_web_right` VALUES ('27', '删除权限', '11', '1', null, '/rest/permission/delete', null, null, '223', null, null);
INSERT INTO `t_web_right` VALUES ('28', '查询', '13', '1', null, '/rest/department/all', null, null, '240', null, null);
INSERT INTO `t_web_right` VALUES ('29', '新增部门', '13', '1', null, '/rest/department/add', null, null, '241', null, null);
INSERT INTO `t_web_right` VALUES ('30', '修改部门', '13', '1', null, '/rest/department/update', null, null, '242', null, null);
INSERT INTO `t_web_right` VALUES ('31', '删除部门', '13', '1', null, '/rest/department/delete', null, null, '243', null, null);
INSERT INTO `t_web_right` VALUES ('32', '业务日志', '0', '0', null, '/logs', null, null, '101', null, null);
INSERT INTO `t_web_right` VALUES ('33', '错误日志', '32', '0', null, '/logs/error-log', null, null, '40', null, null);
INSERT INTO `t_web_right` VALUES ('34', '业务日志', '32', '0', null, '/logs/blog', null, null, '41', null, null);
INSERT INTO `t_web_right` VALUES ('35', '查询', '34', '1', null, '/rest/logs/blog/list', null, null, null, null, null);
INSERT INTO `t_web_right` VALUES ('36', '视频+', '0', '0', null, '/video', null, null, '2', null, null);
INSERT INTO `t_web_right` VALUES ('37', 'TikTok', '36', '0', null, '/video/tiktok', null, null, '10', null, null);
INSERT INTO `t_web_right` VALUES ('38', 'werwer', '2', '0', null, 'werewr', null, null, null, null, null);
INSERT INTO `t_web_right` VALUES ('39', 'qwe', '2', '1', null, 'qwe', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_web_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role`;
CREATE TABLE `t_web_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_role
-- ----------------------------
INSERT INTO `t_web_role` VALUES ('1', 'admin', '超级管理员');
INSERT INTO `t_web_role` VALUES ('2', 'editor', '系统演示角色');

-- ----------------------------
-- Table structure for `t_web_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role_right`;
CREATE TABLE `t_web_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_role_right
-- ----------------------------
INSERT INTO `t_web_role_right` VALUES ('478', '1', '1');
INSERT INTO `t_web_role_right` VALUES ('479', '1', '36');
INSERT INTO `t_web_role_right` VALUES ('480', '1', '37');
INSERT INTO `t_web_role_right` VALUES ('481', '1', '8');
INSERT INTO `t_web_role_right` VALUES ('482', '1', '9');
INSERT INTO `t_web_role_right` VALUES ('483', '1', '16');
INSERT INTO `t_web_role_right` VALUES ('484', '1', '17');
INSERT INTO `t_web_role_right` VALUES ('485', '1', '18');
INSERT INTO `t_web_role_right` VALUES ('486', '1', '19');
INSERT INTO `t_web_role_right` VALUES ('487', '1', '10');
INSERT INTO `t_web_role_right` VALUES ('488', '1', '20');
INSERT INTO `t_web_role_right` VALUES ('489', '1', '21');
INSERT INTO `t_web_role_right` VALUES ('490', '1', '22');
INSERT INTO `t_web_role_right` VALUES ('491', '1', '23');
INSERT INTO `t_web_role_right` VALUES ('492', '1', '11');
INSERT INTO `t_web_role_right` VALUES ('493', '1', '24');
INSERT INTO `t_web_role_right` VALUES ('494', '1', '25');
INSERT INTO `t_web_role_right` VALUES ('495', '1', '26');
INSERT INTO `t_web_role_right` VALUES ('496', '1', '27');
INSERT INTO `t_web_role_right` VALUES ('497', '1', '13');
INSERT INTO `t_web_role_right` VALUES ('498', '1', '28');
INSERT INTO `t_web_role_right` VALUES ('499', '1', '29');
INSERT INTO `t_web_role_right` VALUES ('500', '1', '30');
INSERT INTO `t_web_role_right` VALUES ('501', '1', '31');
INSERT INTO `t_web_role_right` VALUES ('502', '1', '32');
INSERT INTO `t_web_role_right` VALUES ('503', '1', '33');
INSERT INTO `t_web_role_right` VALUES ('504', '1', '34');
INSERT INTO `t_web_role_right` VALUES ('505', '1', '35');
INSERT INTO `t_web_role_right` VALUES ('506', '1', '5');
INSERT INTO `t_web_role_right` VALUES ('507', '1', '6');
INSERT INTO `t_web_role_right` VALUES ('508', '1', '7');
INSERT INTO `t_web_role_right` VALUES ('509', '1', '2');
INSERT INTO `t_web_role_right` VALUES ('510', '1', '14');
INSERT INTO `t_web_role_right` VALUES ('511', '1', '4');
INSERT INTO `t_web_role_right` VALUES ('1033', '2', '1');
INSERT INTO `t_web_role_right` VALUES ('1034', '2', '36');
INSERT INTO `t_web_role_right` VALUES ('1035', '2', '37');
INSERT INTO `t_web_role_right` VALUES ('1036', '2', '8');
INSERT INTO `t_web_role_right` VALUES ('1037', '2', '9');
INSERT INTO `t_web_role_right` VALUES ('1038', '2', '16');
INSERT INTO `t_web_role_right` VALUES ('1039', '2', '17');
INSERT INTO `t_web_role_right` VALUES ('1040', '2', '18');
INSERT INTO `t_web_role_right` VALUES ('1041', '2', '19');
INSERT INTO `t_web_role_right` VALUES ('1042', '2', '10');
INSERT INTO `t_web_role_right` VALUES ('1043', '2', '20');
INSERT INTO `t_web_role_right` VALUES ('1044', '2', '21');
INSERT INTO `t_web_role_right` VALUES ('1045', '2', '22');
INSERT INTO `t_web_role_right` VALUES ('1046', '2', '23');
INSERT INTO `t_web_role_right` VALUES ('1047', '2', '11');
INSERT INTO `t_web_role_right` VALUES ('1048', '2', '24');
INSERT INTO `t_web_role_right` VALUES ('1049', '2', '25');
INSERT INTO `t_web_role_right` VALUES ('1050', '2', '26');
INSERT INTO `t_web_role_right` VALUES ('1051', '2', '27');
INSERT INTO `t_web_role_right` VALUES ('1052', '2', '13');
INSERT INTO `t_web_role_right` VALUES ('1053', '2', '28');
INSERT INTO `t_web_role_right` VALUES ('1054', '2', '29');
INSERT INTO `t_web_role_right` VALUES ('1055', '2', '30');
INSERT INTO `t_web_role_right` VALUES ('1056', '2', '31');
INSERT INTO `t_web_role_right` VALUES ('1057', '2', '32');
INSERT INTO `t_web_role_right` VALUES ('1058', '2', '33');
INSERT INTO `t_web_role_right` VALUES ('1059', '2', '34');
INSERT INTO `t_web_role_right` VALUES ('1060', '2', '35');
INSERT INTO `t_web_role_right` VALUES ('1061', '2', '5');
INSERT INTO `t_web_role_right` VALUES ('1062', '2', '6');
INSERT INTO `t_web_role_right` VALUES ('1063', '2', '7');
INSERT INTO `t_web_role_right` VALUES ('1064', '2', '2');
INSERT INTO `t_web_role_right` VALUES ('1065', '2', '14');
INSERT INTO `t_web_role_right` VALUES ('1066', '2', '4');

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
INSERT INTO `t_web_user` VALUES ('2a1d17d2f4184e238816fd8b96195a3e', '111', 'C4CA4238A0B923820DCC509A6F75849B', '1', '', '2019-09-17 15:57:10', '0', '2', '', null);
INSERT INTO `t_web_user` VALUES ('4b452255b3be4fc6829e6db2922257e1', 'gaoyueb@dcits.com', '96E79218965EB72C92A549DD5A330112', 'dogao', '13920502585', '2019-10-17 09:41:32', '0', null, '23@qq.com', null);
INSERT INTO `t_web_user` VALUES ('5029d7aa882546839b6dac1f5b5c1ef7', '1', 'C4CA4238A0B923820DCC509A6F75849B', '1', '', '2019-09-18 10:21:42', '0', '2', '', null);
INSERT INTO `t_web_user` VALUES ('54136c2416984fa196f970d715e807e1', 'gaoyueb@dcits.com', '96E79218965EB72C92A549DD5A330112', 'dogao', '13920502585', '2019-10-17 09:41:23', '0', null, '23@qq.com', null);
INSERT INTO `t_web_user` VALUES ('594f179c609945689def728c01ddf8f1', '3', 'ECCBC87E4B5CE2FE28308FD9F2A7BAF3', '3', '123456', '2019-09-17 16:00:10', '0', '11', null, null);
INSERT INTO `t_web_user` VALUES ('6535f71edf3d4e5f9891426bda3de1a1', 'gaoyueb@dcits.com', '96E79218965EB72C92A549DD5A330112', 'dogao', '13920502585', '2019-10-17 09:41:16', '0', null, '23@qq.com', null);
INSERT INTO `t_web_user` VALUES ('696413831f394ac7b502e828e9ccda3e', 'gaoyueb@dcits.com', '96E79218965EB72C92A549DD5A330112', 'dogao', '13920502585', '2019-10-17 09:41:11', '0', null, '23@qq.com', null);
INSERT INTO `t_web_user` VALUES ('6b6f0cbdda8d464c90ac58e68a37694e', 'gaoyueb@dcits.com', '96E79218965EB72C92A549DD5A330112', 'dogao', '13920502585', '2019-10-17 09:41:28', '0', null, '23@qq.com', null);
INSERT INTO `t_web_user` VALUES ('8dc0a90caeed4310a9c499ef3f1d3c1d', 'gaoyueb', '96E79218965EB72C92A549DD5A330112', '高越', '1', '2019-10-17 10:07:11', '0', null, '1', null);
INSERT INTO `t_web_user` VALUES ('93bad36e94ab48ab977f9718147c573f', '6', '1679091C5A880FAF6FB5E6087EB1B2DC', '6', '', '2019-09-18 15:16:45', '0', '5', '', null);
INSERT INTO `t_web_user` VALUES ('ab334041dc2c4786a7bddb49bf8b7816', '7', '8F14E45FCEEA167A5A36DEDD4BEA2543', '7', '', '2019-09-19 09:32:48', '0', '7', '', null);
INSERT INTO `t_web_user` VALUES ('ad904a794a10434b8dec1de8ce23a288', '辉桑', 'E10ADC3949BA59ABBE56E057F20F883E', '辉桑', '1111111', '2019-09-18 13:47:51', '0', '12', null, null);
INSERT INTO `t_web_user` VALUES ('b730512de92c4689a87ed0fdd1e2bffc', '666', 'E10ADC3949BA59ABBE56E057F20F883E', '66', '', '2019-10-22 11:22:45', '0', '0', '', null);
INSERT INTO `t_web_user` VALUES ('b88bb916dc054870ae124d92710ac3d3', '云哥1', 'E10ADC3949BA59ABBE56E057F20F883E', '云哥', '1760126', '2019-09-18 11:11:39', '0', '0', '', null);
INSERT INTO `t_web_user` VALUES ('c2bd6773d48643a9ac4540a551ba6ffb', '用嗓', 'E10ADC3949BA59ABBE56E057F20F883E', '用嗓', '', '2019-09-18 15:16:13', '0', '13', '', null);
INSERT INTO `t_web_user` VALUES ('dde9b279949e4e76ac3fff531d712227', '2', 'C81E728D9D4C2F636F067F89CC14862C', '2', '', '2019-09-17 15:57:33', '0', '6', '', null);
INSERT INTO `t_web_user` VALUES ('fa350415ebcc43c2a86cc0cbad98a0a2', '5', 'E4DA3B7FBBCE2345D7772B0674A318D5', '5', '1111111', '2019-09-18 15:16:34', '0', '8', '', null);

-- ----------------------------
-- Table structure for `t_web_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_user_role`;
CREATE TABLE `t_web_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_user_role
-- ----------------------------
INSERT INTO `t_web_user_role` VALUES ('18', 'ad904a794a10434b8dec1de8ce23a288', '2');
INSERT INTO `t_web_user_role` VALUES ('19', 'ad904a794a10434b8dec1de8ce23a288', '17');
INSERT INTO `t_web_user_role` VALUES ('20', 'c2bd6773d48643a9ac4540a551ba6ffb', '2');
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
INSERT INTO `t_web_user_role` VALUES ('64', '2a1d17d2f4184e238816fd8b96195a3e', '2');
INSERT INTO `t_web_user_role` VALUES ('71', 'fa350415ebcc43c2a86cc0cbad98a0a2', '2');
INSERT INTO `t_web_user_role` VALUES ('76', 'b88bb916dc054870ae124d92710ac3d3', '2');
INSERT INTO `t_web_user_role` VALUES ('77', 'b88bb916dc054870ae124d92710ac3d3', '1');
INSERT INTO `t_web_user_role` VALUES ('78', 'b730512de92c4689a87ed0fdd1e2bffc', '2');
INSERT INTO `t_web_user_role` VALUES ('79', '2', '2');
