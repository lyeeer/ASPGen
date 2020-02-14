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

 Date: 12/12/2019 11:43:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for system_admin_rule
-- ----------------------------
DROP TABLE IF EXISTS `system_admin_rule`;
CREATE TABLE `system_admin_rule`  (
  `id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deny` int(1) NULL DEFAULT NULL,
  `is_owner` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_admin_rule
-- ----------------------------
INSERT INTO `system_admin_rule` VALUES (1, '/bin/**', 'Pixmr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (2, '/lib/', 'mr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (3, '/lib64/', 'mr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (4, '/etc/**', 'rwlk', 0, 0);
INSERT INTO `system_admin_rule` VALUES (5, '/usr/{bin,sbin,games}/**', 'Pixmr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (6, '/usr/include/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (7, '/usr/lib/**', 'mr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (8, '/usr/src/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (9, '/usr/local/{bin,sbin,games}/**', 'Pixmr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (10, '/usr/local/{etc,include,lib,share,src}/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (11, '/usr/locale/**', 'r', 0, 0);
INSERT INTO `system_admin_rule` VALUES (12, '/usr/share/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (13, '/var/cache/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (14, '/var/lib/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (15, '/var/lock/**', 'rwlk', 0, 0);
INSERT INTO `system_admin_rule` VALUES (16, '/var/log/**', 'r', 0, 0);
INSERT INTO `system_admin_rule` VALUES (17, '/var/mail/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (18, '/var/run/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (19, '/var/opt/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (20, '/var/snap/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (21, '/var/spool/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (22, '/var/tmp/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (23, '/proc/*/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (24, '/proc/*', 'r', 0, 0);
INSERT INTO `system_admin_rule` VALUES (25, '/proc/timer_stats', 'w', 0, 0);
INSERT INTO `system_admin_rule` VALUES (26, '/root/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (27, '/boot/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (28, '/cdrom/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (29, '/lost+found/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (30, '/tmp/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (31, '/sbin/**', 'Pixmr', 0, 0);
INSERT INTO `system_admin_rule` VALUES (32, '/mnt/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (33, '/media/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (34, '/srv/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (35, '/sys/dev/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (36, '/sys/bus/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (37, '/sys/class/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (38, '/sys/block/**', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (39, '/sys/firmware/', 'r', 0, 0);
INSERT INTO `system_admin_rule` VALUES (40, '/sys/fs/', 'r', 0, 0);
INSERT INTO `system_admin_rule` VALUES (41, '/sys/kernel/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (42, '/sys/module/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (43, '/sys/power/', 'rw', 0, 0);
INSERT INTO `system_admin_rule` VALUES (44, '/proc/sysrq-trigger', 'r', 1, 0);
INSERT INTO `system_admin_rule` VALUES (45, '/etc/sudoers', 'w', 1, 0);
INSERT INTO `system_admin_rule` VALUES (46, '/etc/machine-id', 'w', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
