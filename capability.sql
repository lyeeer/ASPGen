/*
 Navicat MySQL Data Transfer

 Source Server         : apparmor-test
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : apparmor-kb

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 12/12/2019 11:42:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for capability
-- ----------------------------
DROP TABLE IF EXISTS `capability`;
CREATE TABLE `capability`  (
  `id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `capability_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of capability
-- ----------------------------
INSERT INTO `capability` VALUES (1, 4, 'chown');
INSERT INTO `capability` VALUES (2, 4, 'mac_admin');
INSERT INTO `capability` VALUES (3, 4, 'net_admin');
INSERT INTO `capability` VALUES (4, 4, 'net_bind_service');
INSERT INTO `capability` VALUES (5, 4, 'net_broadcast');
INSERT INTO `capability` VALUES (6, 4, 'net_raw');
INSERT INTO `capability` VALUES (7, 4, 'setgid');
INSERT INTO `capability` VALUES (8, 4, 'setuid');
INSERT INTO `capability` VALUES (9, 4, 'setpcap');
INSERT INTO `capability` VALUES (10, 4, 'setfcap');
INSERT INTO `capability` VALUES (11, 4, 'sys_pacct');
INSERT INTO `capability` VALUES (12, 4, 'audit_write');
INSERT INTO `capability` VALUES (13, 3, 'sys_pacct');
INSERT INTO `capability` VALUES (14, 3, 'audit_write');
INSERT INTO `capability` VALUES (15, 3, 'audit_control');
INSERT INTO `capability` VALUES (16, 3, 'audit_read');
INSERT INTO `capability` VALUES (17, 3, 'sys_pacct');
INSERT INTO `capability` VALUES (18, 3, 'syslog');
INSERT INTO `capability` VALUES (19, 2, 'sys_admin');
INSERT INTO `capability` VALUES (20, 2, 'sys_time');
INSERT INTO `capability` VALUES (21, 2, 'wake_alarm');
INSERT INTO `capability` VALUES (22, 2, 'chown');
INSERT INTO `capability` VALUES (23, 2, 'block_suspend');
INSERT INTO `capability` VALUES (24, 2, 'dac_override');
INSERT INTO `capability` VALUES (25, 2, 'dac_read_search');
INSERT INTO `capability` VALUES (26, 2, 'kill');
INSERT INTO `capability` VALUES (27, 2, 'linux_immutable');
INSERT INTO `capability` VALUES (28, 2, 'mknod');
INSERT INTO `capability` VALUES (29, 2, 'net_admin');
INSERT INTO `capability` VALUES (30, 2, 'net_bind_service');
INSERT INTO `capability` VALUES (31, 2, 'net_broadcast');
INSERT INTO `capability` VALUES (32, 2, 'net_raw');
INSERT INTO `capability` VALUES (33, 2, 'setgid');
INSERT INTO `capability` VALUES (34, 2, 'setpcap');
INSERT INTO `capability` VALUES (35, 2, 'setfcap');
INSERT INTO `capability` VALUES (36, 2, 'setuid');
INSERT INTO `capability` VALUES (37, 2, 'sys_boot');
INSERT INTO `capability` VALUES (38, 2, 'sys_chroot');
INSERT INTO `capability` VALUES (39, 2, 'sys_module');
INSERT INTO `capability` VALUES (40, 2, 'sys_nice');
INSERT INTO `capability` VALUES (41, 2, 'sys_ptrace');
INSERT INTO `capability` VALUES (42, 2, 'sys_rawio');
INSERT INTO `capability` VALUES (43, 2, 'sys_resource');
INSERT INTO `capability` VALUES (44, 2, 'sys_time');
INSERT INTO `capability` VALUES (45, 2, 'sys_tty_config');
INSERT INTO `capability` VALUES (46, 2, 'audit_write');
INSERT INTO `capability` VALUES (47, 1, 'audit_write');

SET FOREIGN_KEY_CHECKS = 1;
