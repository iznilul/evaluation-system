/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : evaluation

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 06/09/2021 23:25:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `login_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '请求时间点',
  `duration` int(11) NULL DEFAULT NULL COMMENT '用时 单位ms',
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (2, '0:0:0:0:0:0:0:1', NULL, 'anonymousUser', '2021-09-01 09:43:49', 560);
INSERT INTO `login_log` VALUES (3, '0:0:0:0:0:0:0:1', NULL, 'admin', '2021-09-01 09:43:57', 103);
INSERT INTO `login_log` VALUES (4, '0:0:0:0:0:0:0:1', NULL, 'anonymousUser', '2021-09-04 15:38:30', 24);
INSERT INTO `login_log` VALUES (5, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 11:32:35', 1008);
INSERT INTO `login_log` VALUES (6, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 11:34:39', 758);
INSERT INTO `login_log` VALUES (7, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 11:47:56', 757);
INSERT INTO `login_log` VALUES (8, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 11:53:17', 1214);
INSERT INTO `login_log` VALUES (9, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 12:10:04', 654);
INSERT INTO `login_log` VALUES (10, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 12:54:30', 698);
INSERT INTO `login_log` VALUES (11, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 12:54:52', 11);
INSERT INTO `login_log` VALUES (12, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 12:55:09', 13);
INSERT INTO `login_log` VALUES (13, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 12:57:36', 1060);
INSERT INTO `login_log` VALUES (14, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 13:02:25', 758);
INSERT INTO `login_log` VALUES (15, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 13:04:19', 817);
INSERT INTO `login_log` VALUES (16, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 13:57:43', 637);
INSERT INTO `login_log` VALUES (17, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 14:01:30', 657);
INSERT INTO `login_log` VALUES (18, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-06 14:02:04', 180);
INSERT INTO `login_log` VALUES (19, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 14:03:18', 19585);
INSERT INTO `login_log` VALUES (20, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-06 14:05:36', 625);
INSERT INTO `login_log` VALUES (21, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-06 14:05:46', 82);
INSERT INTO `login_log` VALUES (22, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 00:27:04', 6);
INSERT INTO `login_log` VALUES (23, '0:0:0:0:0:0:0:1', '/api/admin/register', 'admin', '2021-09-08 00:27:54', 71);
INSERT INTO `login_log` VALUES (24, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 00:30:53', 3);
INSERT INTO `login_log` VALUES (25, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 01:25:31', 12);
INSERT INTO `login_log` VALUES (26, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 01:25:35', 2);
INSERT INTO `login_log` VALUES (27, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 01:31:44', 8);
INSERT INTO `login_log` VALUES (28, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 11:22:13', 167);
INSERT INTO `login_log` VALUES (29, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 14:09:33', 103);
INSERT INTO `login_log` VALUES (30, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 14:30:42', 151);
INSERT INTO `login_log` VALUES (31, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 14:30:42', 151);
INSERT INTO `login_log` VALUES (32, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 14:37:02', 8);
INSERT INTO `login_log` VALUES (33, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 14:46:30', 18344);
INSERT INTO `login_log` VALUES (34, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 14:50:50', 23);
INSERT INTO `login_log` VALUES (35, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 14:58:40', 19284);
INSERT INTO `login_log` VALUES (36, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 14:59:56', 698);
INSERT INTO `login_log` VALUES (37, '0:0:0:0:0:0:0:1', '/api/admin/register', 'admin', '2021-09-08 16:01:19', 32);
INSERT INTO `login_log` VALUES (38, '0:0:0:0:0:0:0:1', '/api/admin/register', 'admin', '2021-09-08 16:03:15', 112);
INSERT INTO `login_log` VALUES (39, '0:0:0:0:0:0:0:1', '/api/admin/getResourceByCond', 'admin', '2021-09-08 16:04:02', 38);
INSERT INTO `login_log` VALUES (40, '0:0:0:0:0:0:0:1', '/api/admin/getSignUpList', 'admin', '2021-09-08 16:06:04', 20);
INSERT INTO `login_log` VALUES (41, '0:0:0:0:0:0:0:1', '/api/admin/getSignUp', 'admin', '2021-09-08 16:11:25', 27);
INSERT INTO `login_log` VALUES (42, '0:0:0:0:0:0:0:1', '/api/admin/modifySignUp', 'admin', '2021-09-08 16:12:42', 4);
INSERT INTO `login_log` VALUES (43, '0:0:0:0:0:0:0:1', '/api/admin/modifySignUp', 'admin', '2021-09-08 16:15:08', 90);
INSERT INTO `login_log` VALUES (44, '0:0:0:0:0:0:0:1', '/api/admin/modifySignUp', 'admin', '2021-09-08 16:16:40', 68);
INSERT INTO `login_log` VALUES (45, '0:0:0:0:0:0:0:1', '/api/admin/modifySignUp', 'admin', '2021-09-08 16:17:09', 53);
INSERT INTO `login_log` VALUES (46, '0:0:0:0:0:0:0:1', '/api/admin/exportSignUp', 'admin', '2021-09-08 16:22:12', 359);
INSERT INTO `login_log` VALUES (47, '0:0:0:0:0:0:0:1', '/api/admin/getTagByCond', 'admin', '2021-09-08 16:30:47', 66);
INSERT INTO `login_log` VALUES (48, '0:0:0:0:0:0:0:1', '/api/admin/getTagByCond', 'admin', '2021-09-08 16:30:55', 8);
INSERT INTO `login_log` VALUES (49, '0:0:0:0:0:0:0:1', '/api/admin/getTagByCond', 'admin', '2021-09-08 16:45:15', 69);
INSERT INTO `login_log` VALUES (50, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-08 17:43:36', 23);
INSERT INTO `login_log` VALUES (51, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-08 17:44:20', 7);
INSERT INTO `login_log` VALUES (52, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-08 17:45:46', 7408);
INSERT INTO `login_log` VALUES (53, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-08 17:49:46', 55);
INSERT INTO `login_log` VALUES (54, '0:0:0:0:0:0:0:1', '/api/user/public/getBookByCond', 'admin', '2021-09-08 17:51:30', 56);
INSERT INTO `login_log` VALUES (55, '0:0:0:0:0:0:0:1', '/api/admin/modifyBook', 'admin', '2021-09-08 18:03:01', 212);
INSERT INTO `login_log` VALUES (56, '0:0:0:0:0:0:0:1', '/api/admin/modifyBook', 'admin', '2021-09-08 20:38:13', 178);
INSERT INTO `login_log` VALUES (57, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-08 20:39:13', 4947);
INSERT INTO `login_log` VALUES (58, '0:0:0:0:0:0:0:1', '/api/admin/saveBook', 'admin', '2021-09-08 20:39:46', 14850);
INSERT INTO `login_log` VALUES (59, '0:0:0:0:0:0:0:1', '/api/admin/modifyBook', 'admin', '2021-09-08 22:34:11', 289);
INSERT INTO `login_log` VALUES (60, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-08 23:48:26', 80);
INSERT INTO `login_log` VALUES (61, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-08 23:49:54', 20);
INSERT INTO `login_log` VALUES (62, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-08 23:53:01', 21);
INSERT INTO `login_log` VALUES (63, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-08 23:58:35', 17);
INSERT INTO `login_log` VALUES (64, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-09 00:00:17', 17);
INSERT INTO `login_log` VALUES (65, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-09 00:03:25', 52);
INSERT INTO `login_log` VALUES (66, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-09 00:04:34', 27720);
INSERT INTO `login_log` VALUES (67, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-09 00:09:36', 52);
INSERT INTO `login_log` VALUES (68, '0:0:0:0:0:0:0:1', '/api/admin/getLoginLogByCond', 'admin', '2021-09-09 00:10:45', 9);
INSERT INTO `login_log` VALUES (69, '0:0:0:0:0:0:0:1', '/api/user/public/borrowBook', 'admin', '2021-09-09 00:30:05', 71);
INSERT INTO `login_log` VALUES (70, '0:0:0:0:0:0:0:1', '/api/user/public/borrowBook', 'admin', '2021-09-09 00:39:46', 164);
INSERT INTO `login_log` VALUES (71, '0:0:0:0:0:0:0:1', '/api/user/public/borrowBook', 'admin', '2021-09-09 00:44:28', 66);
INSERT INTO `login_log` VALUES (72, '0:0:0:0:0:0:0:1', '/api/common/login', 'anonymousUser', '2021-09-09 00:45:07', 11);
INSERT INTO `login_log` VALUES (73, '0:0:0:0:0:0:0:1', '/api/user/public/returnBook', 'admin', '2021-09-09 00:46:05', 50);
INSERT INTO `login_log` VALUES (74, '0:0:0:0:0:0:0:1', '/api/user/public/borrowBook', 'admin', '2021-09-09 00:46:11', 43);
INSERT INTO `login_log` VALUES (75, '0:0:0:0:0:0:0:1', '/api/user/public/returnBook', 'admin', '2021-09-09 00:46:14', 69);
INSERT INTO `login_log` VALUES (76, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:01:57', 8);
INSERT INTO `login_log` VALUES (77, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:18:47', 6);
INSERT INTO `login_log` VALUES (78, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:19:40', 66);
INSERT INTO `login_log` VALUES (79, '0:0:0:0:0:0:0:1', '/api/common/querySignUp', 'anonymousUser', '2021-09-09 01:21:57', 5);
INSERT INTO `login_log` VALUES (80, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:25:07', 4);
INSERT INTO `login_log` VALUES (81, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:26:57', 144);
INSERT INTO `login_log` VALUES (82, '0:0:0:0:0:0:0:1', '/api/common/signUp', 'anonymousUser', '2021-09-09 01:30:26', 86);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `resource_id` int(11) NOT NULL COMMENT '资源id，主键',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求类型',
  `status` tinyint(1) NOT NULL COMMENT '接口状态 0关闭 1开启',
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1001, '/api/common/login', '用户登录', 'POST', 1);
INSERT INTO `resource` VALUES (1002, '/api/common/test', '认证测试', 'GET', 1);
INSERT INTO `resource` VALUES (1003, '/api/common/logout', '用户退出', 'GET', 1);
INSERT INTO `resource` VALUES (2001, '/api/admin/register', '注册用户', 'POST', 1);
INSERT INTO `resource` VALUES (2002, '/api/admin/removeByUsername', '删除用户', 'GET', 1);
INSERT INTO `resource` VALUES (2003, '/api/admin/reloadAdminRoleResource', '重载管理员资源', 'GET', 1);
INSERT INTO `resource` VALUES (2004, '/api/admin/reloadUserRoleResource', '重载用户资源', 'GET', 1);
INSERT INTO `resource` VALUES (2005, '/api/admin/modifyResourceStatus', '更改接口开放状态', 'GET', 1);
INSERT INTO `resource` VALUES (2006, '/api/admin/getResourceByCond', '获取资源接口', 'POST', 1);
INSERT INTO `resource` VALUES (2025, '/api/admin/getLoginLogByCond', '登录日志列表', 'GET', 1);
INSERT INTO `resource` VALUES (3001, '/api/user/info/modifyUserInfo', '更新用户信息', 'POST', 1);
INSERT INTO `resource` VALUES (3002, '/api/user/info/userInfoByUsername', '根据账号选择用户', 'GET', 1);
INSERT INTO `resource` VALUES (3003, '/api/user/info/userInfoByCond', '根据情况选择用户', 'POST', 1);
INSERT INTO `resource` VALUES (3004, '/api/user/info/upload', '上传头像文件', 'POST', 1);
INSERT INTO `resource` VALUES (3005, '/api/user/info/modifyPassword', '修改密码', 'POST', 1);
INSERT INTO `resource` VALUES (8001, '/api/user/monitor/server', '服务器监控', 'GET', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL COMMENT '角色id，主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, '普通用户');
INSERT INTO `role` VALUES (1, '管理员');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `resource_id` int(11) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`, `role_id`, `resource_id`) USING BTREE,
  INDEX `resource_id`(`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7418 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-权限关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES (7408, 1, 2001);
INSERT INTO `role_resource` VALUES (7407, 1, 2002);
INSERT INTO `role_resource` VALUES (7403, 1, 2003);
INSERT INTO `role_resource` VALUES (7405, 1, 2004);
INSERT INTO `role_resource` VALUES (7401, 1, 2005);
INSERT INTO `role_resource` VALUES (7402, 1, 2006);
INSERT INTO `role_resource` VALUES (7411, 1, 2025);
INSERT INTO `role_resource` VALUES (7410, 1, 3001);
INSERT INTO `role_resource` VALUES (7414, 2, 3001);
INSERT INTO `role_resource` VALUES (7399, 1, 3002);
INSERT INTO `role_resource` VALUES (7416, 2, 3002);
INSERT INTO `role_resource` VALUES (7400, 1, 3003);
INSERT INTO `role_resource` VALUES (7413, 2, 3003);
INSERT INTO `role_resource` VALUES (7404, 1, 3004);
INSERT INTO `role_resource` VALUES (7415, 2, 3004);
INSERT INTO `role_resource` VALUES (7406, 1, 3005);
INSERT INTO `role_resource` VALUES (7417, 2, 3005);
INSERT INTO `role_resource` VALUES (7409, 1, 8001);
INSERT INTO `role_resource` VALUES (7412, 2, 8001);

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `route_id` bigint(11) NOT NULL COMMENT '主键',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路径',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `status` tinyint(1) NOT NULL COMMENT '路径状态 0关闭 1开启',
  PRIMARY KEY (`route_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `task_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务类',
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务功能',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('T1', '任务1', 'com.softlab.okr.job.testTask1', '测试');
INSERT INTO `task` VALUES ('T2', '测试任务2', 'com.softlab.okr.job.testTask2', '测试用的,输出名字');
INSERT INTO `task` VALUES ('T3', '测试任务3', 'com.softlab.okr.job.testTask3', '测试用的,输出数字');

-- ----------------------------
-- Table structure for task_trigger
-- ----------------------------
DROP TABLE IF EXISTS `task_trigger`;
CREATE TABLE `task_trigger`  (
  `trigger_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务描述',
  `cron` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `status` tinyint(4) NOT NULL COMMENT '定时任务状态 0 停用,1启用',
  PRIMARY KEY (`trigger_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id，当主键用',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名(账户)',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', '202cb962ac59075b964b07152d234b70');
INSERT INTO `user` VALUES (20, 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `user` VALUES (21, 'test', '098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `user` VALUES (22, 'test1', '5a105e8b9d40e1329780d62ea2265d8a');
INSERT INTO `user` VALUES (23, 'shit', '1223b8c30a347321299611f873b449ad');
INSERT INTO `user` VALUES (24, 'ass', '964d72e72d053d501f2949969849b96c');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` bigint(11) NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名(学号)',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业班级',
  `qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ号',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `weixin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学习/研究方向\r\n',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '123', '先辈', 'data:image/png;base64,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', '下北泽1802', '1773950094', '13335158225', 'sasdf', 'web全栈，只会crud的一只很臭的臭乐色ef', NULL, NULL);
INSERT INTO `user_info` VALUES (20, 'admin', '基佬', 'data:image/png;base64,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EhhZPz962AcR8NbgEmfP+7v/2gAMAwEAAgADAAAAEP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8Ad/y//DzTD/s13v8A8NNN3/8A/wD/APf/AHLNGNLJFK+PO6/LAAN//wD/APrUU/8AHNP/ANfiij/nzTgwhf8A/wD/AP8A/b38c0c88ErswP78o/8A9/8A/wD/AP6++L/3DOPP6889z/M893//AP8A/wD/AO+//wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/8QAHBEB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', '蓝翔', '123456', '654321', 'shit', '一起搞基，先生！', NULL, NULL);
INSERT INTO `user_info` VALUES (21, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user_info` VALUES (22, 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user_info` VALUES (23, 'shit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-08 00:27:54', '2021-09-08 00:27:54');
INSERT INTO `user_info` VALUES (24, 'ass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-08 16:03:15', '2021-09-08 16:03:15');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`, `user_id`, `role_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户-角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (14, 20, 1);
INSERT INTO `user_role` VALUES (15, 21, 2);
INSERT INTO `user_role` VALUES (16, 22, 2);
INSERT INTO `user_role` VALUES (17, 23, 2);
INSERT INTO `user_role` VALUES (18, 24, 2);

SET FOREIGN_KEY_CHECKS = 1;
