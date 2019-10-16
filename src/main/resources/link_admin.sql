/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50725
Source Host           : 47.103.154.36:3306
Source Database       : link_admin

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-10-16 09:06:03
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('11', '2019-10-04_37aaadf19afbfbdc4e3053380cf071d5.mp4', '/opt/store/linkadmin/tiktok/2019-10-04_37aaadf19afbfbdc4e3053380cf071d5.mp4', '2019-10-04 17:33:06', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_dept
-- ----------------------------
INSERT INTO `t_web_dept` VALUES ('1', 'Link公司', '0', '0', '0', '1', '0');
INSERT INTO `t_web_dept` VALUES ('2', '上海集团', '0', '0', null, '0', '1');
INSERT INTO `t_web_dept` VALUES ('3', '徐汇分公司1', '0', '1', null, '1', '11');
INSERT INTO `t_web_dept` VALUES ('4', '青浦分公司', '2', '1', null, '0', '12');
INSERT INTO `t_web_dept` VALUES ('5', '徐汇分公司', '2', '1', null, '0', '13');
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

-- ----------------------------
-- Table structure for `t_web_logs`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_logs`;
CREATE TABLE `t_web_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginuser` varchar(30) DEFAULT NULL,
  `vsername` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `cratetime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `requestmethod` varchar(30) DEFAULT NULL,
  `contenttype` varchar(50) DEFAULT NULL,
  `requestparams` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=822 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_logs
-- ----------------------------
INSERT INTO `t_web_logs` VALUES ('258', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:16:25', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('259', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:16:26', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('260', 'admin', '管理员', '用户信息', 'http://linkadmin/rest/user/info', '127.0.0.1', '2019-09-29 15:23:46', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('261', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:23:46', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('262', 'admin', '管理员', '用户信息', 'http://linkadmin/rest/user/info', '127.0.0.1', '2019-09-29 15:26:34', '12', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('263', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:26:35', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('264', null, null, '登录', 'http://linkadmin/rest/user/login', '127.0.0.1', '2019-09-29 15:28:49', '49', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('265', 'admin', '管理员', '用户信息', 'http://linkadmin/rest/user/info', '127.0.0.1', '2019-09-29 15:28:49', '20', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('266', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:28:49', '12', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('267', 'admin', '管理员', '用户列表', 'http://linkadmin/rest/user/list', '127.0.0.1', '2019-09-29 15:28:53', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('268', null, null, '登录', 'http://linkadmin/rest/user/login', '127.0.0.1', '2019-09-29 15:30:50', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('269', 'admin', '管理员', '用户信息', 'http://linkadmin/rest/user/info', '127.0.0.1', '2019-09-29 15:30:50', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('270', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:46:02', '39847', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('271', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:46:23', '19391', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('272', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:46:12', '30221', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('273', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:47:12', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('274', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 15:47:12', '99', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('275', 'admin', '管理员', '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:47:16', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('276', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-09-29 15:47:28', '0', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('277', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:47:29', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('278', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 15:47:29', '18', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('279', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-29 15:47:29', '41', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('280', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-29 15:47:31', '14', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('281', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-09-29 15:50:20', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('282', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:50:22', '10551', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('283', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-29 15:50:49', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('284', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 15:50:49', '50', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('285', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-29 15:51:09', '25', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('286', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '116.228.112.130', '2019-09-29 15:51:13', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('287', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 15:53:05', '26', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('288', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 15:53:21', '7', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('289', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 16:20:09', '10', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('290', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 16:20:58', '7', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('291', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-29 16:27:49', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('292', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-29 16:50:59', '27', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('293', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-29 16:51:02', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('294', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '116.228.112.130', '2019-09-30 08:44:03', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('295', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '112.5.202.155', '2019-09-30 10:01:44', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('296', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '112.5.202.155', '2019-09-30 10:01:44', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('297', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '112.5.202.155', '2019-09-30 10:02:03', '14', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('298', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 10:20:02', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('299', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 11:19:35', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('300', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 11:31:24', '7', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('301', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-09-30 11:31:30', '0', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('302', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 11:34:18', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('303', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 11:34:22', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('304', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 11:34:39', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('305', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 13:26:11', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('306', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 13:26:11', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('307', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '116.228.112.130', '2019-09-30 13:26:25', '12', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('308', null, null, '退出', 'http://47.103.154.36:8888/rest/user/logout', '116.228.112.130', '2019-09-30 13:28:14', '0', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('309', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 13:28:36', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('310', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 13:28:36', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('311', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 13:34:30', '16', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('312', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 13:35:32', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('313', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '116.228.112.130', '2019-09-30 16:49:07', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('314', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '116.228.112.130', '2019-09-30 16:49:07', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('315', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '120.229.28.242', '2019-09-30 19:20:01', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('316', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '120.229.28.242', '2019-09-30 19:20:01', '6', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('317', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '120.229.28.242', '2019-09-30 19:20:29', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('318', 'admin', '管理员', '修改部门', 'http://47.103.154.36:8888/rest/department/update', '120.229.28.242', '2019-09-30 19:20:50', '206', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('319', 'admin', '管理员', '删除部门', 'http://47.103.154.36:8888/rest/department/delete', '120.229.28.242', '2019-09-30 19:20:53', '4', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('320', 'admin', '管理员', '删除部门', 'http://47.103.154.36:8888/rest/department/delete', '120.229.28.242', '2019-09-30 19:20:55', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('321', 'admin', '管理员', '删除部门', 'http://47.103.154.36:8888/rest/department/delete', '120.229.28.242', '2019-09-30 19:20:57', '4', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('322', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '120.229.28.242', '2019-09-30 19:21:22', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('323', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '112.232.23.40', '2019-10-02 09:18:04', '11', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('324', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '112.232.23.40', '2019-10-02 09:18:04', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('325', 'admin', '管理员', '登录', 'http://47.103.154.36:8888/rest/user/login', '112.232.23.40', '2019-10-02 09:18:08', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('326', 'admin', '管理员', '登录', 'http://47.103.154.36:8888/rest/user/login', '112.232.23.40', '2019-10-02 09:18:09', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('327', 'admin', '管理员', '登录', 'http://47.103.154.36:8888/rest/user/login', '112.232.23.40', '2019-10-02 09:18:09', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('328', 'admin', '管理员', '登录', 'http://47.103.154.36:8888/rest/user/login', '112.232.23.40', '2019-10-02 09:18:10', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('329', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '112.232.23.40', '2019-10-02 09:18:25', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('330', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '180.162.32.153', '2019-10-02 16:26:46', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('331', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '180.162.32.153', '2019-10-02 16:26:46', '4', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('332', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 16:28:01', '111', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('333', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 16:28:05', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('334', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 16:28:07', '12', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('335', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 16:28:10', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('336', 'admin', '管理员', '新增权限', 'http://47.103.154.36:8888/rest/permission/add', '180.162.32.153', '2019-10-02 16:29:14', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('337', 'admin', '管理员', '新增权限', 'http://47.103.154.36:8888/rest/permission/add', '180.162.32.153', '2019-10-02 16:31:32', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('338', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 16:54:02', '8', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('339', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 16:54:13', '6', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('340', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:03:27', '107', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('341', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:03:36', '11', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('342', 'admin', '管理员', '修改用户', 'http://47.103.154.36:8888/rest/user/update', '180.162.32.153', '2019-10-02 17:04:00', '103', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('343', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 17:04:01', '9', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('344', 'admin', '管理员', '修改用户', 'http://47.103.154.36:8888/rest/user/update', '180.162.32.153', '2019-10-02 17:04:20', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('345', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 17:04:20', '13', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('346', 'admin', '管理员', '删除角色', 'http://47.103.154.36:8888/rest/role/delete', '180.162.32.153', '2019-10-02 17:04:28', '26', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('347', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:04:28', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('348', 'admin', '管理员', '删除角色', 'http://47.103.154.36:8888/rest/role/delete', '180.162.32.153', '2019-10-02 17:04:32', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('349', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:04:32', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('350', 'admin', '管理员', '删除角色', 'http://47.103.154.36:8888/rest/role/delete', '180.162.32.153', '2019-10-02 17:04:35', '5', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('351', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:04:35', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('352', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:05:05', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('353', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:05:32', '5', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('354', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:05:55', '5', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('355', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:06:29', '6', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('356', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:06:43', '5', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('357', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:06:59', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('358', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:07:09', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('359', 'admin', '管理员', '修改权限', 'http://47.103.154.36:8888/rest/permission/update', '180.162.32.153', '2019-10-02 17:07:18', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('360', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:07:37', '5', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('361', 'admin', '管理员', '修改角色', 'http://47.103.154.36:8888/rest/role/update', '180.162.32.153', '2019-10-02 17:07:47', '10', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('362', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:07:47', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('363', 'admin', '管理员', '修改角色', 'http://47.103.154.36:8888/rest/role/update', '180.162.32.153', '2019-10-02 17:08:02', '16', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('364', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:08:02', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('365', 'admin', '管理员', '修改角色', 'http://47.103.154.36:8888/rest/role/update', '180.162.32.153', '2019-10-02 17:16:12', '8', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('366', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 17:16:13', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('367', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:25:23', '3708', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('368', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:25:42', '2057', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('369', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:25:50', '2052', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('370', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:26:10', '2204', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('371', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:26:38', '27931', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('372', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:39:00', '2102', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('373', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:39:12', '13', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('374', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:39:14', '4', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('375', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:43:17', '2136', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('376', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '180.162.32.153', '2019-10-02 19:43:33', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('377', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '180.162.32.153', '2019-10-02 19:43:33', '4', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('378', 'admin', '管理员', '角色列表', 'http://47.103.154.36:8888/rest/role/list', '180.162.32.153', '2019-10-02 19:43:34', '1', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('379', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:43:37', '12', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('380', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:43:40', '2057', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('381', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:46:21', '7', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('382', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:46:23', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('383', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:46:27', '2058', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('384', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:46:41', '17315', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('385', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:49:01', '2046', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('386', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:49:09', '17', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('387', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:49:12', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('388', null, null, '登录', 'http://47.103.154.36:8888/rest/user/login', '180.162.32.153', '2019-10-02 19:51:39', '2', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('389', 'admin', '管理员', '用户信息', 'http://47.103.154.36:8888/rest/user/info', '180.162.32.153', '2019-10-02 19:51:39', '4', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('390', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:51:39', '6', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('391', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:51:41', '3', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('392', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:51:45', '2061', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('393', 'admin', '管理员', '用户列表', 'http://47.103.154.36:8888/rest/user/list', '180.162.32.153', '2019-10-02 19:57:04', '7', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('394', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-02 19:58:54', '2050', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('395', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-02 19:58:56', '375', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('396', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-02 19:59:12', '158', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('397', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-03 10:34:31', '1763', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('398', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 10:34:33', '410', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('399', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:34:40', '215', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('400', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:35:32', '102', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('401', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:48:13', '100', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('402', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:50:54', '135', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('403', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:53:25', '213', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('404', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:54:03', '115', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('405', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 10:54:57', '226', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('406', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 11:04:48', '350', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('407', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 11:07:08', '239', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('408', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 11:08:09', '79', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('409', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 11:12:20', '2421', 'GET', null, null);
INSERT INTO `t_web_logs` VALUES ('410', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 11:12:25', '135', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('411', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 11:33:20', '142', 'POST', 'application/json;charset=UTF-8', null);
INSERT INTO `t_web_logs` VALUES ('412', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 12:05:15', '69', null, null, null);
INSERT INTO `t_web_logs` VALUES ('413', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 12:07:21', '41', null, null, null);
INSERT INTO `t_web_logs` VALUES ('414', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 12:08:25', '103', null, null, null);
INSERT INTO `t_web_logs` VALUES ('415', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 12:10:19', '115', null, null, null);
INSERT INTO `t_web_logs` VALUES ('416', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-03 22:24:21', '1815', null, null, null);
INSERT INTO `t_web_logs` VALUES ('417', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 22:24:24', '426', null, null, null);
INSERT INTO `t_web_logs` VALUES ('418', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 22:24:32', '233', null, null, null);
INSERT INTO `t_web_logs` VALUES ('419', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 22:38:08', '343', null, null, null);
INSERT INTO `t_web_logs` VALUES ('420', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 22:38:10', '107', null, null, null);
INSERT INTO `t_web_logs` VALUES ('421', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 22:38:14', '99', null, null, null);
INSERT INTO `t_web_logs` VALUES ('422', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 22:48:12', '29549', null, null, null);
INSERT INTO `t_web_logs` VALUES ('423', 'admin', '管理员', '上传TikTok', 'http://localhost:8888/rest/video/tiktok/upload', '0:0:0:0:0:0:0:1', '2019-10-03 22:50:15', '6723', null, null, null);
INSERT INTO `t_web_logs` VALUES ('424', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-03 22:52:52', '263', null, null, null);
INSERT INTO `t_web_logs` VALUES ('425', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 23:03:42', '1630', null, null, null);
INSERT INTO `t_web_logs` VALUES ('426', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 23:20:43', '868', null, null, null);
INSERT INTO `t_web_logs` VALUES ('427', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-03 23:21:33', '242', null, null, null);
INSERT INTO `t_web_logs` VALUES ('428', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 00:34:58', '706', null, null, null);
INSERT INTO `t_web_logs` VALUES ('429', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 00:34:59', '1226', null, null, null);
INSERT INTO `t_web_logs` VALUES ('430', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 11:31:00', '1418', null, null, null);
INSERT INTO `t_web_logs` VALUES ('431', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 12:30:28', '1001', null, null, null);
INSERT INTO `t_web_logs` VALUES ('432', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 12:30:50', '408', null, null, null);
INSERT INTO `t_web_logs` VALUES ('433', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 12:32:06', '261', null, null, null);
INSERT INTO `t_web_logs` VALUES ('434', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 12:51:08', '666', null, null, null);
INSERT INTO `t_web_logs` VALUES ('435', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:17:48', '345', null, null, null);
INSERT INTO `t_web_logs` VALUES ('436', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:18:20', '276', null, null, null);
INSERT INTO `t_web_logs` VALUES ('437', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:18:48', '220', null, null, null);
INSERT INTO `t_web_logs` VALUES ('438', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:22:08', '271', null, null, null);
INSERT INTO `t_web_logs` VALUES ('439', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:24:16', '416', null, null, null);
INSERT INTO `t_web_logs` VALUES ('440', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:27:46', '320', null, null, null);
INSERT INTO `t_web_logs` VALUES ('441', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:30:34', '298', null, null, null);
INSERT INTO `t_web_logs` VALUES ('442', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:31:45', '205', null, null, null);
INSERT INTO `t_web_logs` VALUES ('443', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-04 13:33:02', '85', null, null, null);
INSERT INTO `t_web_logs` VALUES ('444', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:33:10', '369', null, null, null);
INSERT INTO `t_web_logs` VALUES ('445', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:33:10', '51', null, null, null);
INSERT INTO `t_web_logs` VALUES ('446', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:33:28', '42', null, null, null);
INSERT INTO `t_web_logs` VALUES ('447', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:33:28', '20', null, null, null);
INSERT INTO `t_web_logs` VALUES ('448', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:34:08', '21248', null, null, null);
INSERT INTO `t_web_logs` VALUES ('449', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:34:34', '61', null, null, null);
INSERT INTO `t_web_logs` VALUES ('450', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:34:34', '15444', null, null, null);
INSERT INTO `t_web_logs` VALUES ('451', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:30', '69', null, null, null);
INSERT INTO `t_web_logs` VALUES ('452', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:30', '145', null, null, null);
INSERT INTO `t_web_logs` VALUES ('453', 'admin', '管理员', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:35', '424', null, null, null);
INSERT INTO `t_web_logs` VALUES ('454', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:47', '143', null, null, null);
INSERT INTO `t_web_logs` VALUES ('455', 'admin', '管理员', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:47', '327', null, null, null);
INSERT INTO `t_web_logs` VALUES ('456', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-04 13:35:57', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('457', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:36', '91', null, null, null);
INSERT INTO `t_web_logs` VALUES ('458', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:36', '121', null, null, null);
INSERT INTO `t_web_logs` VALUES ('459', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:37', '417', null, null, null);
INSERT INTO `t_web_logs` VALUES ('460', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:44', '124', null, null, null);
INSERT INTO `t_web_logs` VALUES ('461', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:46', '382', null, null, null);
INSERT INTO `t_web_logs` VALUES ('462', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:47', '133', null, null, null);
INSERT INTO `t_web_logs` VALUES ('463', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:49', '449', null, null, null);
INSERT INTO `t_web_logs` VALUES ('464', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:36:52', '73', null, null, null);
INSERT INTO `t_web_logs` VALUES ('465', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:01', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('466', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:07', '40', null, null, null);
INSERT INTO `t_web_logs` VALUES ('467', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:07', '112', null, null, null);
INSERT INTO `t_web_logs` VALUES ('468', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:13', '89', null, null, null);
INSERT INTO `t_web_logs` VALUES ('469', 'admin', '管理员', '修改角色', 'http://localhost:8888/rest/role/update', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:24', '514', null, null, null);
INSERT INTO `t_web_logs` VALUES ('470', 'admin', '管理员', '角色列表', 'http://localhost:8888/rest/role/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:25', '35', null, null, null);
INSERT INTO `t_web_logs` VALUES ('471', 'admin', '管理员', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-04 13:38:29', '346', null, null, null);
INSERT INTO `t_web_logs` VALUES ('472', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 16:56:20', '32316', null, null, null);
INSERT INTO `t_web_logs` VALUES ('473', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 16:56:32', '20562', null, null, null);
INSERT INTO `t_web_logs` VALUES ('474', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 16:57:16', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('475', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 16:57:16', '78', null, null, null);
INSERT INTO `t_web_logs` VALUES ('476', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:14:33', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('477', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-04 17:15:56', '17', null, null, null);
INSERT INTO `t_web_logs` VALUES ('478', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-04 17:33:59', '28', null, null, null);
INSERT INTO `t_web_logs` VALUES ('479', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 17:35:23', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('480', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:35:23', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('481', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:35:40', '14', null, null, null);
INSERT INTO `t_web_logs` VALUES ('482', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:35:48', '14', null, null, null);
INSERT INTO `t_web_logs` VALUES ('483', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 17:44:22', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('484', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:44:22', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('485', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-04 17:47:39', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('486', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:47:39', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('487', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:49:05', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('488', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:55:16', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('489', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 17:57:36', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('490', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 18:02:38', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('491', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-04 18:05:56', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('492', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-04 18:12:07', '14', null, null, null);
INSERT INTO `t_web_logs` VALUES ('493', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:21:57', '3896', null, null, null);
INSERT INTO `t_web_logs` VALUES ('494', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:22:20', '2080', null, null, null);
INSERT INTO `t_web_logs` VALUES ('495', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:22:32', '2047', null, null, null);
INSERT INTO `t_web_logs` VALUES ('496', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:22:50', '2068', null, null, null);
INSERT INTO `t_web_logs` VALUES ('497', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:39:31', '4015', null, null, null);
INSERT INTO `t_web_logs` VALUES ('498', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:40:01', '13487', null, null, null);
INSERT INTO `t_web_logs` VALUES ('499', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:40:47', '185', null, null, null);
INSERT INTO `t_web_logs` VALUES ('500', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:40:48', '357', null, null, null);
INSERT INTO `t_web_logs` VALUES ('501', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-04 18:41:13', '55', null, null, null);
INSERT INTO `t_web_logs` VALUES ('502', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:41:13', '195', null, null, null);
INSERT INTO `t_web_logs` VALUES ('503', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:41:31', '204', null, null, null);
INSERT INTO `t_web_logs` VALUES ('504', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:42:44', '377', null, null, null);
INSERT INTO `t_web_logs` VALUES ('505', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:43:06', '186', null, null, null);
INSERT INTO `t_web_logs` VALUES ('506', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:45:03', '314', null, null, null);
INSERT INTO `t_web_logs` VALUES ('507', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:47:45', '310', null, null, null);
INSERT INTO `t_web_logs` VALUES ('508', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:49:48', '592', null, null, null);
INSERT INTO `t_web_logs` VALUES ('509', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:51:34', '706', null, null, null);
INSERT INTO `t_web_logs` VALUES ('510', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:54:12', '263', null, null, null);
INSERT INTO `t_web_logs` VALUES ('511', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:55:51', '182', null, null, null);
INSERT INTO `t_web_logs` VALUES ('512', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:59:41', '160', null, null, null);
INSERT INTO `t_web_logs` VALUES ('513', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 18:59:57', '143', null, null, null);
INSERT INTO `t_web_logs` VALUES ('514', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 19:05:10', '511', null, null, null);
INSERT INTO `t_web_logs` VALUES ('515', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-04 19:09:58', '365', null, null, null);
INSERT INTO `t_web_logs` VALUES ('516', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 09:52:54', '11', null, null, null);
INSERT INTO `t_web_logs` VALUES ('517', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 09:52:54', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('518', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 09:55:24', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('519', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-05 11:08:26', '1530', null, null, null);
INSERT INTO `t_web_logs` VALUES ('520', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:08:29', '435', null, null, null);
INSERT INTO `t_web_logs` VALUES ('521', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:18:05', '413', null, null, null);
INSERT INTO `t_web_logs` VALUES ('522', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:20:00', '132', null, null, null);
INSERT INTO `t_web_logs` VALUES ('523', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:20:33', '112', null, null, null);
INSERT INTO `t_web_logs` VALUES ('524', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 11:36:36', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('525', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 11:36:36', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('526', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 11:36:39', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('527', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:51:35', '615', null, null, null);
INSERT INTO `t_web_logs` VALUES ('528', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-05 11:51:48', '390', null, null, null);
INSERT INTO `t_web_logs` VALUES ('529', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:10', '106', null, null, null);
INSERT INTO `t_web_logs` VALUES ('530', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:11', '278', null, null, null);
INSERT INTO `t_web_logs` VALUES ('531', null, null, '退出', 'http://localhost:8888/rest/user/logout', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:17', '23', null, null, null);
INSERT INTO `t_web_logs` VALUES ('532', null, null, '登录', 'http://localhost:8888/rest/user/login', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:23', '48', null, null, null);
INSERT INTO `t_web_logs` VALUES ('533', 'admin', '管理员', '用户信息', 'http://localhost:8888/rest/user/info', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:23', '237', null, null, null);
INSERT INTO `t_web_logs` VALUES ('534', 'admin', '管理员', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:23', '303', null, null, null);
INSERT INTO `t_web_logs` VALUES ('535', 'admin', '管理员', '修改用户', 'http://localhost:8888/rest/user/update', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:34', '159', null, null, null);
INSERT INTO `t_web_logs` VALUES ('536', 'admin', '管理员', '用户列表', 'http://localhost:8888/rest/user/list', '0:0:0:0:0:0:0:1', '2019-10-05 11:52:34', '307', null, null, null);
INSERT INTO `t_web_logs` VALUES ('537', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 12:03:25', '327', null, null, null);
INSERT INTO `t_web_logs` VALUES ('538', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 12:03:46', '14092', null, null, null);
INSERT INTO `t_web_logs` VALUES ('539', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 12:04:15', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('540', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 12:04:15', '16', null, null, null);
INSERT INTO `t_web_logs` VALUES ('541', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 12:08:51', '12', null, null, null);
INSERT INTO `t_web_logs` VALUES ('542', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 12:08:56', '12', null, null, null);
INSERT INTO `t_web_logs` VALUES ('543', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 13:13:51', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('544', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 16:25:08', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('545', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 16:25:09', '22', null, null, null);
INSERT INTO `t_web_logs` VALUES ('546', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 16:26:26', '12', null, null, null);
INSERT INTO `t_web_logs` VALUES ('547', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-05 22:52:55', '117', null, null, null);
INSERT INTO `t_web_logs` VALUES ('548', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-05 22:52:55', '538', null, null, null);
INSERT INTO `t_web_logs` VALUES ('549', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-05 22:53:05', '15', null, null, null);
INSERT INTO `t_web_logs` VALUES ('550', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-05 22:53:09', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('551', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-07 10:34:54', '493', null, null, null);
INSERT INTO `t_web_logs` VALUES ('552', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 10:34:55', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('553', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-07 11:25:53', '580', null, null, null);
INSERT INTO `t_web_logs` VALUES ('554', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 11:25:53', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('555', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-07 11:26:12', '18', null, null, null);
INSERT INTO `t_web_logs` VALUES ('556', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-07 16:22:55', '503', null, null, null);
INSERT INTO `t_web_logs` VALUES ('557', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:22:55', '105', null, null, null);
INSERT INTO `t_web_logs` VALUES ('558', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-07 16:23:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('559', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-07 16:23:52', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('560', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:24:55', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('561', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:24:58', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('562', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-07 16:25:01', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('563', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-07 16:25:01', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('564', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:31:55', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('565', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-07 16:31:59', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('566', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-07 16:31:59', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('567', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:32:27', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('568', null, null, '退出', 'http://localhost:8888/rest/user/logout', '127.0.0.1', '2019-10-07 16:32:33', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('569', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-07 16:32:36', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('570', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-07 16:32:36', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('571', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-07 16:32:39', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('572', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-07 16:32:42', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('573', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 08:56:36', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('574', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 08:56:36', '596', null, null, null);
INSERT INTO `t_web_logs` VALUES ('575', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 13:32:15', '503', null, null, null);
INSERT INTO `t_web_logs` VALUES ('576', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 13:32:16', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('577', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-08 13:32:30', '17', null, null, null);
INSERT INTO `t_web_logs` VALUES ('578', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-08 13:32:35', '305', null, null, null);
INSERT INTO `t_web_logs` VALUES ('579', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-08 13:32:39', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('580', null, null, '退出', 'http://localhost:8888/rest/user/logout', '127.0.0.1', '2019-10-08 13:33:46', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('581', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 13:33:53', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('582', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 16:39:59', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('583', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 16:39:58', '484', null, null, null);
INSERT INTO `t_web_logs` VALUES ('584', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 16:40:03', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('585', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-08 16:41:20', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('586', null, null, '退出', 'http://localhost:8888/rest/user/logout', '127.0.0.1', '2019-10-08 16:42:16', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('587', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-08 16:44:49', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('588', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 16:44:49', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('589', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 16:46:55', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('590', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-08 16:48:40', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('591', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-09 10:38:30', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('592', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-09 10:38:29', '600', null, null, null);
INSERT INTO `t_web_logs` VALUES ('593', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-09 15:03:55', '185', null, null, null);
INSERT INTO `t_web_logs` VALUES ('594', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-09 16:14:59', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('595', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-09 16:14:58', '299', null, null, null);
INSERT INTO `t_web_logs` VALUES ('596', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-09 16:15:04', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('597', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-09 17:33:18', '501', null, null, null);
INSERT INTO `t_web_logs` VALUES ('598', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-09 17:33:19', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('599', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-09 17:33:41', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('600', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-09 17:33:45', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('601', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-09 17:33:49', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('602', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 02:03:36', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('603', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 02:03:36', '608', null, null, null);
INSERT INTO `t_web_logs` VALUES ('604', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-10 02:03:50', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('605', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 10:38:09', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('606', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 10:38:09', '445', null, null, null);
INSERT INTO `t_web_logs` VALUES ('607', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 14:18:14', '421', null, null, null);
INSERT INTO `t_web_logs` VALUES ('608', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 14:18:14', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('609', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-10 14:18:25', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('610', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-10 14:18:29', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('611', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 16:14:39', '100', null, null, null);
INSERT INTO `t_web_logs` VALUES ('612', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:39', '750', null, null, null);
INSERT INTO `t_web_logs` VALUES ('613', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:41', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('614', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:42', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('615', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:43', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('616', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:43', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('617', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:14:43', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('618', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:34:29', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('619', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 16:34:30', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('620', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-10 16:36:14', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('621', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-10 16:36:17', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('622', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:38:57', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('623', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 16:38:57', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('624', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:39:00', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('625', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:39:01', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('626', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 16:39:02', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('627', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 19:57:56', '1302', null, null, null);
INSERT INTO `t_web_logs` VALUES ('628', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 19:57:58', '102', null, null, null);
INSERT INTO `t_web_logs` VALUES ('629', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 19:58:02', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('630', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-10 19:58:14', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('631', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-10 23:58:52', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('632', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-10 23:58:52', '656', null, null, null);
INSERT INTO `t_web_logs` VALUES ('633', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-11 11:14:33', '577', null, null, null);
INSERT INTO `t_web_logs` VALUES ('634', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-11 11:14:35', '102', null, null, null);
INSERT INTO `t_web_logs` VALUES ('635', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-11 11:14:57', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('636', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-11 12:02:23', '302', null, null, null);
INSERT INTO `t_web_logs` VALUES ('637', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-11 12:02:34', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('638', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-11 12:02:37', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('639', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-11 16:15:28', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('640', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-12 15:53:33', '503', null, null, null);
INSERT INTO `t_web_logs` VALUES ('641', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-13 12:37:06', '25', null, null, null);
INSERT INTO `t_web_logs` VALUES ('642', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-13 12:37:06', '250', null, null, null);
INSERT INTO `t_web_logs` VALUES ('643', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-13 12:37:17', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('644', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-13 12:37:17', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('645', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-14 15:13:00', '48', null, null, null);
INSERT INTO `t_web_logs` VALUES ('646', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-14 15:13:00', '541', null, null, null);
INSERT INTO `t_web_logs` VALUES ('647', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-14 15:13:36', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('648', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-14 15:13:37', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('649', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:15:34', '9', null, null, null);
INSERT INTO `t_web_logs` VALUES ('650', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:15:37', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('651', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:15:42', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('652', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-14 15:15:53', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('653', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:19:33', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('654', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:19:37', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('655', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:19:38', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('656', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 15:20:55', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('657', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-14 15:20:56', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('658', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-14 21:08:29', '101', null, null, null);
INSERT INTO `t_web_logs` VALUES ('659', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-14 21:08:28', '655', null, null, null);
INSERT INTO `t_web_logs` VALUES ('660', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-14 21:08:34', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('661', 'editor', '测试员1', '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-14 21:08:34', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('662', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-14 21:08:39', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('663', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-14 21:08:51', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('664', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-14 21:08:53', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('665', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-15 13:52:59', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('666', null, null, '登录', 'http://localhost:8888/rest/user/login', '127.0.0.1', '2019-10-15 13:52:58', '926', null, null, null);
INSERT INTO `t_web_logs` VALUES ('667', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 13:53:12', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('668', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-15 14:37:26', '701', null, null, null);
INSERT INTO `t_web_logs` VALUES ('669', 'editor', '测试员1', '用户信息', 'http://localhost:8888/rest/user/info', '127.0.0.1', '2019-10-15 16:07:44', '453', null, null, null);
INSERT INTO `t_web_logs` VALUES ('670', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 16:09:43', '400', null, null, null);
INSERT INTO `t_web_logs` VALUES ('671', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 16:09:51', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('672', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 16:09:54', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('673', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 16:10:06', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('674', 'editor', '测试员1', '用户列表', 'http://localhost:8888/rest/user/list', '127.0.0.1', '2019-10-15 16:10:10', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('675', 'editor', '测试员1', '角色列表', 'http://localhost:8888/rest/role/list', '127.0.0.1', '2019-10-15 16:10:12', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('676', null, null, '退出', 'http://47.103.154.36/rest/user/logout', '116.228.112.130', '2019-10-15 16:15:05', '0', null, null, null);
INSERT INTO `t_web_logs` VALUES ('677', null, null, '登录', 'http://47.103.154.36/rest/user/login', '116.228.112.130', '2019-10-15 16:15:07', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('678', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.228.112.130', '2019-10-15 16:15:07', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('679', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.228.112.130', '2019-10-15 16:32:01', '902', null, null, null);
INSERT INTO `t_web_logs` VALUES ('680', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-15 16:32:08', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('681', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '116.228.112.130', '2019-10-15 16:32:10', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('682', null, null, '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:47', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('683', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '117.30.173.33', '2019-10-15 16:32:47', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('684', null, null, '登录', 'http://47.103.154.36/rest/user/login', '117.172.236.74', '2019-10-15 16:32:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('685', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '117.172.236.74', '2019-10-15 16:32:49', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('686', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('687', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:50', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('688', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:50', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('689', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:50', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('690', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.172.236.74', '2019-10-15 16:32:51', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('691', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('692', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('693', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:52', '0', null, null, null);
INSERT INTO `t_web_logs` VALUES ('694', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '117.30.173.33', '2019-10-15 16:32:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('695', null, null, '登录', 'http://47.103.154.36/rest/user/login', '180.166.124.224', '2019-10-15 16:33:31', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('696', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '180.166.124.224', '2019-10-15 16:33:31', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('697', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '180.166.124.224', '2019-10-15 16:34:10', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('698', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '180.166.124.224', '2019-10-15 16:34:15', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('699', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '180.166.124.224', '2019-10-15 16:34:18', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('700', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '180.166.124.224', '2019-10-15 16:34:21', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('701', null, null, '登录', 'http://47.103.154.36/rest/user/login', '114.94.174.133', '2019-10-15 16:34:58', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('702', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '114.94.174.133', '2019-10-15 16:34:58', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('703', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '114.94.174.133', '2019-10-15 16:34:58', '13', null, null, null);
INSERT INTO `t_web_logs` VALUES ('704', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:35:49', '10', null, null, null);
INSERT INTO `t_web_logs` VALUES ('705', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '114.94.174.133', '2019-10-15 16:35:51', '230', null, null, null);
INSERT INTO `t_web_logs` VALUES ('706', null, null, '登录', 'http://47.103.154.36/rest/user/login', '180.169.14.34', '2019-10-15 16:35:54', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('707', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '180.169.14.34', '2019-10-15 16:35:55', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('708', null, null, '登录', 'http://47.103.154.36/rest/user/login', '42.249.60.125', '2019-10-15 16:35:59', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('709', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '42.249.60.125', '2019-10-15 16:36:00', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('710', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '42.249.60.125', '2019-10-15 16:36:00', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('711', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:40:08', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('712', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:40:10', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('713', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:40:11', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('714', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:40:25', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('715', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 16:40:34', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('716', null, null, '登录', 'http://47.103.154.36/rest/user/login', '60.173.214.40', '2019-10-15 16:41:07', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('717', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '60.173.214.40', '2019-10-15 16:41:08', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('718', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.173.214.40', '2019-10-15 16:41:26', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('719', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '60.173.214.40', '2019-10-15 16:41:29', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('720', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.173.214.40', '2019-10-15 16:41:46', '205', null, null, null);
INSERT INTO `t_web_logs` VALUES ('721', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.173.214.40', '2019-10-15 16:41:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('722', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.173.214.40', '2019-10-15 16:41:50', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('723', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.173.214.40', '2019-10-15 16:41:50', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('724', null, null, '退出', 'http://47.103.154.36/rest/user/logout', '60.173.214.40', '2019-10-15 16:41:53', '0', null, null, null);
INSERT INTO `t_web_logs` VALUES ('725', null, null, '登录', 'http://47.103.154.36/rest/user/login', '115.60.145.230', '2019-10-15 16:47:33', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('726', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '115.60.145.230', '2019-10-15 16:47:33', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('727', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '115.60.145.230', '2019-10-15 16:48:09', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('728', null, null, '登录', 'http://47.103.154.36/rest/user/login', '60.216.104.83', '2019-10-15 16:55:58', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('729', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '60.216.104.83', '2019-10-15 16:55:58', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('730', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '60.216.104.83', '2019-10-15 16:56:11', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('731', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '60.216.104.83', '2019-10-15 16:56:13', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('732', null, null, '登录', 'http://47.103.154.36/rest/user/login', '221.13.1.170', '2019-10-15 16:58:11', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('733', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '221.13.1.170', '2019-10-15 16:58:11', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('734', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '221.13.1.170', '2019-10-15 16:58:18', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('735', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '180.169.14.34', '2019-10-15 16:59:04', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('736', null, null, '登录', 'http://47.103.154.36/rest/user/login', '175.0.232.80', '2019-10-15 16:59:36', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('737', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '175.0.232.80', '2019-10-15 16:59:37', '7', null, null, null);
INSERT INTO `t_web_logs` VALUES ('738', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '175.0.232.80', '2019-10-15 17:00:16', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('739', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '175.0.232.80', '2019-10-15 17:00:20', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('740', null, null, '登录', 'http://47.103.154.36/rest/user/login', '113.247.176.223', '2019-10-15 17:01:28', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('741', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '113.247.176.223', '2019-10-15 17:01:28', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('742', null, null, '登录', 'http://47.103.154.36/rest/user/login', '119.137.55.16', '2019-10-15 17:03:45', '104', null, null, null);
INSERT INTO `t_web_logs` VALUES ('743', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '119.137.55.16', '2019-10-15 17:03:46', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('744', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '119.137.55.16', '2019-10-15 17:03:48', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('745', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '119.137.55.16', '2019-10-15 17:03:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('746', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '119.137.55.16', '2019-10-15 17:03:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('747', null, null, '登录', 'http://47.103.154.36/rest/user/login', '27.115.113.66', '2019-10-15 17:05:19', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('748', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '27.115.113.66', '2019-10-15 17:05:19', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('749', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '27.115.113.66', '2019-10-15 17:05:21', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('750', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '27.115.113.66', '2019-10-15 17:05:21', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('751', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '27.115.113.66', '2019-10-15 17:05:23', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('752', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '27.115.113.66', '2019-10-15 17:05:23', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('753', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '27.115.113.66', '2019-10-15 17:06:07', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('754', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '27.115.113.66', '2019-10-15 17:07:43', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('755', null, null, '登录', 'http://47.103.154.36/rest/user/login', '124.65.118.238', '2019-10-15 17:07:48', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('756', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '124.65.118.238', '2019-10-15 17:07:48', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('757', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '124.65.118.238', '2019-10-15 17:08:10', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('758', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '124.65.118.238', '2019-10-15 17:08:13', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('759', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '114.94.174.133', '2019-10-15 17:22:57', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('760', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '114.94.174.133', '2019-10-15 17:22:57', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('761', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '114.94.174.133', '2019-10-15 17:22:58', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('762', null, null, '登录', 'http://47.103.154.36/rest/user/login', '61.175.197.202', '2019-10-15 17:25:08', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('763', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '61.175.197.202', '2019-10-15 17:25:08', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('764', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '61.175.197.202', '2019-10-15 17:25:34', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('765', null, null, '登录', 'http://47.103.154.36/rest/user/login', '49.65.3.118', '2019-10-15 17:35:40', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('766', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '49.65.3.118', '2019-10-15 17:35:40', '53', null, null, null);
INSERT INTO `t_web_logs` VALUES ('767', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '49.65.3.118', '2019-10-15 17:35:54', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('768', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '49.65.3.118', '2019-10-15 17:35:56', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('769', null, null, '登录', 'http://47.103.154.36/rest/user/login', '116.24.99.91', '2019-10-15 17:39:44', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('770', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.24.99.91', '2019-10-15 17:39:44', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('771', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.24.99.91', '2019-10-15 17:40:01', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('772', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '116.24.99.91', '2019-10-15 17:40:03', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('773', null, null, '登录', 'http://47.103.154.36/rest/user/login', '101.88.24.192', '2019-10-15 17:44:25', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('774', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '101.88.24.192', '2019-10-15 17:44:25', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('775', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '101.88.24.192', '2019-10-15 17:44:44', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('776', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '101.88.24.192', '2019-10-15 17:44:55', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('777', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '101.88.24.192', '2019-10-15 17:44:57', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('778', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '101.88.24.192', '2019-10-15 17:44:59', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('779', null, null, '登录', 'http://47.103.154.36/rest/user/login', '14.145.174.216', '2019-10-15 17:51:44', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('780', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '14.145.174.216', '2019-10-15 17:51:44', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('781', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '14.145.174.216', '2019-10-15 17:51:49', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('782', null, null, '登录', 'http://47.103.154.36/rest/user/login', '111.203.22.12', '2019-10-15 18:01:54', '55', null, null, null);
INSERT INTO `t_web_logs` VALUES ('783', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '111.203.22.12', '2019-10-15 18:01:54', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('784', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '111.203.22.12', '2019-10-15 18:01:55', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('785', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '111.203.22.12', '2019-10-15 18:01:59', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('786', null, null, '登录', 'http://47.103.154.36/rest/user/login', '113.88.112.192', '2019-10-15 18:39:59', '802', null, null, null);
INSERT INTO `t_web_logs` VALUES ('787', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '113.88.112.192', '2019-10-15 18:40:00', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('788', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '113.88.112.192', '2019-10-15 18:40:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('789', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '113.88.112.192', '2019-10-15 18:40:56', '8', null, null, null);
INSERT INTO `t_web_logs` VALUES ('790', null, null, '登录', 'http://47.103.154.36/rest/user/login', '61.183.195.166', '2019-10-15 18:49:30', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('791', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '61.183.195.166', '2019-10-15 18:49:30', '5', null, null, null);
INSERT INTO `t_web_logs` VALUES ('792', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '61.183.195.166', '2019-10-15 18:49:34', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('793', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '61.183.195.166', '2019-10-15 18:49:35', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('794', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '183.92.248.215', '2019-10-15 20:53:10', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('795', null, null, '登录', 'http://47.103.154.36/rest/user/login', '183.92.248.215', '2019-10-15 20:53:10', '203', null, null, null);
INSERT INTO `t_web_logs` VALUES ('796', 'editor', '测试员1', '登录', 'http://47.103.154.36/rest/user/login', '183.92.248.215', '2019-10-15 20:53:23', '2200', null, null, null);
INSERT INTO `t_web_logs` VALUES ('797', null, null, '登录', 'http://47.103.154.36/rest/user/login', '117.186.61.22', '2019-10-15 23:20:59', '686', null, null, null);
INSERT INTO `t_web_logs` VALUES ('798', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '117.186.61.22', '2019-10-15 23:21:00', '166', null, null, null);
INSERT INTO `t_web_logs` VALUES ('799', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '117.186.61.22', '2019-10-15 23:21:52', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('800', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '117.186.61.22', '2019-10-15 23:21:53', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('801', null, null, '登录', 'http://47.103.154.36/rest/user/login', '27.193.217.59', '2019-10-16 07:29:28', '672', null, null, null);
INSERT INTO `t_web_logs` VALUES ('802', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '27.193.217.59', '2019-10-16 07:29:29', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('803', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '27.193.217.59', '2019-10-16 07:29:47', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('804', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '27.193.217.59', '2019-10-16 07:30:39', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('805', null, null, '退出', 'http://47.103.154.36/rest/user/logout', '27.193.217.59', '2019-10-16 07:32:36', '0', null, null, null);
INSERT INTO `t_web_logs` VALUES ('806', null, null, '登录', 'http://47.103.154.36/rest/user/login', '27.193.217.59', '2019-10-16 07:32:52', '1', null, null, null);
INSERT INTO `t_web_logs` VALUES ('807', null, null, '登录', 'http://47.103.154.36/rest/user/login', '27.193.217.59', '2019-10-16 07:33:19', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('808', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '27.193.217.59', '2019-10-16 07:33:19', '4', null, null, null);
INSERT INTO `t_web_logs` VALUES ('809', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '27.193.217.59', '2019-10-16 07:33:24', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('810', null, null, '登录', 'http://47.103.154.36/rest/user/login', '117.136.63.158', '2019-10-16 08:26:33', '820', null, null, null);
INSERT INTO `t_web_logs` VALUES ('811', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '117.136.63.158', '2019-10-16 08:26:34', '51', null, null, null);
INSERT INTO `t_web_logs` VALUES ('812', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.228.112.130', '2019-10-16 08:39:16', '385', null, null, null);
INSERT INTO `t_web_logs` VALUES ('813', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-16 08:44:28', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('814', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-16 08:44:49', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('815', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-16 08:44:58', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('816', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '116.228.112.130', '2019-10-16 08:45:14', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('817', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-16 08:46:36', '2', null, null, null);
INSERT INTO `t_web_logs` VALUES ('818', 'editor', '测试员1', '用户列表', 'http://47.103.154.36/rest/user/list', '116.228.112.130', '2019-10-16 08:46:37', '6', null, null, null);
INSERT INTO `t_web_logs` VALUES ('819', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.228.112.130', '2019-10-16 08:51:16', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('820', 'editor', '测试员1', '用户信息', 'http://47.103.154.36/rest/user/info', '116.228.112.130', '2019-10-16 08:52:44', '3', null, null, null);
INSERT INTO `t_web_logs` VALUES ('821', 'editor', '测试员1', '角色列表', 'http://47.103.154.36/rest/role/list', '218.56.65.142', '2019-10-16 09:02:02', '2', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_web_role` VALUES ('2', 'editor', null);

-- ----------------------------
-- Table structure for `t_web_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_role_right`;
CREATE TABLE `t_web_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_role_right
-- ----------------------------
INSERT INTO `t_web_role_right` VALUES ('191', '1', '1');
INSERT INTO `t_web_role_right` VALUES ('192', '1', '36');
INSERT INTO `t_web_role_right` VALUES ('193', '1', '37');
INSERT INTO `t_web_role_right` VALUES ('194', '1', '8');
INSERT INTO `t_web_role_right` VALUES ('195', '1', '9');
INSERT INTO `t_web_role_right` VALUES ('196', '1', '16');
INSERT INTO `t_web_role_right` VALUES ('197', '1', '17');
INSERT INTO `t_web_role_right` VALUES ('198', '1', '18');
INSERT INTO `t_web_role_right` VALUES ('199', '1', '19');
INSERT INTO `t_web_role_right` VALUES ('200', '1', '10');
INSERT INTO `t_web_role_right` VALUES ('201', '1', '20');
INSERT INTO `t_web_role_right` VALUES ('202', '1', '21');
INSERT INTO `t_web_role_right` VALUES ('203', '1', '22');
INSERT INTO `t_web_role_right` VALUES ('204', '1', '23');
INSERT INTO `t_web_role_right` VALUES ('205', '1', '11');
INSERT INTO `t_web_role_right` VALUES ('206', '1', '24');
INSERT INTO `t_web_role_right` VALUES ('207', '1', '25');
INSERT INTO `t_web_role_right` VALUES ('208', '1', '26');
INSERT INTO `t_web_role_right` VALUES ('209', '1', '27');
INSERT INTO `t_web_role_right` VALUES ('210', '1', '13');
INSERT INTO `t_web_role_right` VALUES ('211', '1', '28');
INSERT INTO `t_web_role_right` VALUES ('212', '1', '29');
INSERT INTO `t_web_role_right` VALUES ('213', '1', '30');
INSERT INTO `t_web_role_right` VALUES ('214', '1', '31');
INSERT INTO `t_web_role_right` VALUES ('215', '1', '32');
INSERT INTO `t_web_role_right` VALUES ('216', '1', '33');
INSERT INTO `t_web_role_right` VALUES ('217', '1', '34');
INSERT INTO `t_web_role_right` VALUES ('218', '1', '35');
INSERT INTO `t_web_role_right` VALUES ('219', '1', '5');
INSERT INTO `t_web_role_right` VALUES ('220', '1', '6');
INSERT INTO `t_web_role_right` VALUES ('221', '1', '7');
INSERT INTO `t_web_role_right` VALUES ('222', '1', '2');
INSERT INTO `t_web_role_right` VALUES ('223', '1', '14');
INSERT INTO `t_web_role_right` VALUES ('224', '1', '4');
INSERT INTO `t_web_role_right` VALUES ('255', '2', '1');
INSERT INTO `t_web_role_right` VALUES ('256', '2', '36');
INSERT INTO `t_web_role_right` VALUES ('257', '2', '37');
INSERT INTO `t_web_role_right` VALUES ('258', '2', '8');
INSERT INTO `t_web_role_right` VALUES ('259', '2', '9');
INSERT INTO `t_web_role_right` VALUES ('260', '2', '16');
INSERT INTO `t_web_role_right` VALUES ('261', '2', '10');
INSERT INTO `t_web_role_right` VALUES ('262', '2', '20');
INSERT INTO `t_web_role_right` VALUES ('263', '2', '11');
INSERT INTO `t_web_role_right` VALUES ('264', '2', '24');
INSERT INTO `t_web_role_right` VALUES ('265', '2', '13');
INSERT INTO `t_web_role_right` VALUES ('266', '2', '28');
INSERT INTO `t_web_role_right` VALUES ('267', '2', '32');
INSERT INTO `t_web_role_right` VALUES ('268', '2', '33');
INSERT INTO `t_web_role_right` VALUES ('269', '2', '34');
INSERT INTO `t_web_role_right` VALUES ('270', '2', '35');
INSERT INTO `t_web_role_right` VALUES ('271', '2', '5');
INSERT INTO `t_web_role_right` VALUES ('272', '2', '6');
INSERT INTO `t_web_role_right` VALUES ('273', '2', '7');
INSERT INTO `t_web_role_right` VALUES ('274', '2', '2');
INSERT INTO `t_web_role_right` VALUES ('275', '2', '14');
INSERT INTO `t_web_role_right` VALUES ('276', '2', '4');

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
INSERT INTO `t_web_user` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '管理员', '17601269', '2019-09-07 10:08:25', '1', '4', '', null);
INSERT INTO `t_web_user` VALUES ('2', 'editor', 'E10ADC3949BA59ABBE56E057F20F883E', '测试员1', '121212121212', '2019-09-09 16:40:43', '1', '5', '', null);
INSERT INTO `t_web_user` VALUES ('2a1d17d2f4184e238816fd8b96195a3e', '1', 'C4CA4238A0B923820DCC509A6F75849B', '1', '', '2019-09-17 15:57:10', '1', '2', '', null);
INSERT INTO `t_web_user` VALUES ('5029d7aa882546839b6dac1f5b5c1ef7', '1', 'C4CA4238A0B923820DCC509A6F75849B', '1', '', '2019-09-18 10:21:42', '0', '2', '', null);
INSERT INTO `t_web_user` VALUES ('594f179c609945689def728c01ddf8f1', '3', 'ECCBC87E4B5CE2FE28308FD9F2A7BAF3', '3', '123456', '2019-09-17 16:00:10', '0', '11', null, null);
INSERT INTO `t_web_user` VALUES ('93bad36e94ab48ab977f9718147c573f', '6', '1679091C5A880FAF6FB5E6087EB1B2DC', '6', '', '2019-09-18 15:16:45', '0', '5', '', null);
INSERT INTO `t_web_user` VALUES ('ab334041dc2c4786a7bddb49bf8b7816', '7', '8F14E45FCEEA167A5A36DEDD4BEA2543', '7', '', '2019-09-19 09:32:48', '1', '7', '', null);
INSERT INTO `t_web_user` VALUES ('ad904a794a10434b8dec1de8ce23a288', '辉桑', 'E10ADC3949BA59ABBE56E057F20F883E', '辉桑', '1111111', '2019-09-18 13:47:51', '0', '12', null, null);
INSERT INTO `t_web_user` VALUES ('b88bb916dc054870ae124d92710ac3d3', '云哥', 'E10ADC3949BA59ABBE56E057F20F883E', '云哥', '1760126', '2019-09-18 11:11:39', '0', '12', null, null);
INSERT INTO `t_web_user` VALUES ('c2bd6773d48643a9ac4540a551ba6ffb', '用嗓', 'E10ADC3949BA59ABBE56E057F20F883E', '用嗓', '', '2019-09-18 15:16:13', '0', '13', '', null);
INSERT INTO `t_web_user` VALUES ('dde9b279949e4e76ac3fff531d712227', '2', 'C81E728D9D4C2F636F067F89CC14862C', '2', '', '2019-09-17 15:57:33', '0', '6', '', null);
INSERT INTO `t_web_user` VALUES ('fa350415ebcc43c2a86cc0cbad98a0a2', '5', 'E4DA3B7FBBCE2345D7772B0674A318D5', '5', '', '2019-09-18 15:16:34', '0', '4', '', null);

-- ----------------------------
-- Table structure for `t_web_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_user_role`;
CREATE TABLE `t_web_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_user_role
-- ----------------------------
INSERT INTO `t_web_user_role` VALUES ('15', 'b88bb916dc054870ae124d92710ac3d3', '2');
INSERT INTO `t_web_user_role` VALUES ('18', 'ad904a794a10434b8dec1de8ce23a288', '2');
INSERT INTO `t_web_user_role` VALUES ('19', 'ad904a794a10434b8dec1de8ce23a288', '17');
INSERT INTO `t_web_user_role` VALUES ('20', 'c2bd6773d48643a9ac4540a551ba6ffb', '2');
INSERT INTO `t_web_user_role` VALUES ('21', 'fa350415ebcc43c2a86cc0cbad98a0a2', '2');
INSERT INTO `t_web_user_role` VALUES ('22', '93bad36e94ab48ab977f9718147c573f', '2');
INSERT INTO `t_web_user_role` VALUES ('39', 'ab334041dc2c4786a7bddb49bf8b7816', '2');
INSERT INTO `t_web_user_role` VALUES ('40', 'ab334041dc2c4786a7bddb49bf8b7816', '8');
INSERT INTO `t_web_user_role` VALUES ('41', 'ab334041dc2c4786a7bddb49bf8b7816', '10');
INSERT INTO `t_web_user_role` VALUES ('42', 'ab334041dc2c4786a7bddb49bf8b7816', '9');
INSERT INTO `t_web_user_role` VALUES ('47', '2', '2');
INSERT INTO `t_web_user_role` VALUES ('48', '1', '1');
INSERT INTO `t_web_user_role` VALUES ('49', '1', '2');
