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

 Date: 12/12/2019 11:42:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit_admin_rule
-- ----------------------------
DROP TABLE IF EXISTS `audit_admin_rule`;
CREATE TABLE `audit_admin_rule`  (
  `id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deny` int(1) NULL DEFAULT NULL,
  `is_owner` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audit_admin_rule
-- ----------------------------
INSERT INTO `audit_admin_rule` VALUES (1, '/bin/**', 'Pixmr', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (2, '/lib/', 'mr', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (3, '/lib64/', 'mr', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (4, '/etc/**', 'rlk', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (5, '/usr/bin/**', 'Pixmr', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (6, '/usr/include/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (7, '/usr/lib/**', 'mr', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (8, '/usr/share/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (9, '/var/cache/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (10, '/var/lib/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (11, '/var/log/**', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (12, '/var/mail/**', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (13, '/var/run/', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (14, '/var/spool/**', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (15, '/var/tmp/**', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (16, '/proc/*/', 'rw', 0, 1);
INSERT INTO `audit_admin_rule` VALUES (17, '/boot/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (18, '/cdrom/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (19, '/tmp/**', 'rw', 0, 1);
INSERT INTO `audit_admin_rule` VALUES (20, '/mnt/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (21, '/media/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (22, '/home/auditadmin/', 'rw', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (23, '/srv/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (24, '/sys/dev/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (25, '/sys/bus/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (26, '/sys/class/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (27, '/sys/block/**', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (28, '/sys/firmware/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (29, '/sys/fs/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (30, '/sys/kernel/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (31, '/sys/module/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (32, '/sys/power/', 'r', 0, 0);
INSERT INTO `audit_admin_rule` VALUES (33, '/var/lib/udisks2/', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (34, '/var/lib/polkit-1/', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (35, '/var/lib/lightdm/', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (36, '/proc/kcore', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (37, '/proc/kmsg', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (38, '/proc/kpagecgroup', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (39, '/proc/kpagecount', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (40, '/proc/kpageflags', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (41, '/proc/slabinfo', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (42, '/proc/vmallocinfo', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (43, '/proc/sysrq-trigger', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (44, '/lost+found/', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (45, '/etc/group-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (46, '/etc/gshadow', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (47, '/etc/gshadow-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (48, '/etc/passwd-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (49, '/etc/.pwd.lock', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (50, '/etc/shadow', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (51, '/etc/shadow-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (52, '/etc/subgid-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (53, '/etc/subuid-', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (54, '/etc/sudoers', 'rw', 1, 0);
INSERT INTO `audit_admin_rule` VALUES (55, '/etc/machine-id', 'w', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
