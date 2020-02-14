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

 Date: 12/12/2019 11:43:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_rule
-- ----------------------------
DROP TABLE IF EXISTS `user_rule`;
CREATE TABLE `user_rule`  (
  `id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_deny` int(11) NULL DEFAULT NULL COMMENT '1=deny 0=not deny',
  `is_owner` int(11) NULL DEFAULT NULL COMMENT '1=owner 0=not owner',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_rule
-- ----------------------------
INSERT INTO `user_rule` VALUES (1, '/cdrom', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (2, '/bin/**', 'Pixmr', 0, 0);
INSERT INTO `user_rule` VALUES (3, '/home/**', 'rw', 0, 1);
INSERT INTO `user_rule` VALUES (4, '/lib/', 'mr', 0, 0);
INSERT INTO `user_rule` VALUES (5, '/lib64/', 'mr', 0, 0);
INSERT INTO `user_rule` VALUES (6, '/usr/include', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (7, '/usr/lib{,64}/**', 'mr', 0, 0);
INSERT INTO `user_rule` VALUES (8, '/usr/bin/**', 'Pixmr', 0, 0);
INSERT INTO `user_rule` VALUES (9, '/usr/include/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (10, '/usr/lib/**', 'mr', 0, 0);
INSERT INTO `user_rule` VALUES (11, '/usr/local/bin/**', 'Pixmr', 0, 0);
INSERT INTO `user_rule` VALUES (12, '/usr/local/lib/**', 'mr', 0, 0);
INSERT INTO `user_rule` VALUES (13, '/usr/{src,share}/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (14, '/etc/**', 'rlk', 0, 0);
INSERT INTO `user_rule` VALUES (15, '/dev/block/**', 'wrlk', 0, 0);
INSERT INTO `user_rule` VALUES (16, '/dev/bus/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (17, '/dev/cdrom', 'rwkl', 0, 0);
INSERT INTO `user_rule` VALUES (18, '/dev/cdrw', 'rwkl', 0, 0);
INSERT INTO `user_rule` VALUES (19, '/dev/disk/**', 'rkl', 0, 0);
INSERT INTO `user_rule` VALUES (20, '/dev/dvd/', 'rwkl', 0, 0);
INSERT INTO `user_rule` VALUES (21, '/dev/full', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (22, '/dev/fuse', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (23, '/dev/hugepages/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (24, '/dev/kmsg', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (25, '/dev/mqueue/', 'rwlk', 0, 0);
INSERT INTO `user_rule` VALUES (26, '/dev/net/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (27, '/dev/null', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (28, '/dev/ptmx', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (29, '/dev/random', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (30, '/dev/rfkill', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (31, '/dev/tty', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (32, '/dev/urandom', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (33, '/dev/zero', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (34, '/var/backups/*', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (35, '/var/cache/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (36, '/var/lib/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (37, '/var/mail/**', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (38, '/var/run/', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (39, '/var/spool/**', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (40, '/var/tmp/**', 'rw', 0, 0);
INSERT INTO `user_rule` VALUES (41, '/proc/*/', 'rw', 0, 1);
INSERT INTO `user_rule` VALUES (42, '/proc/*/*', 'rw', 0, 1);
INSERT INTO `user_rule` VALUES (43, '/proc/*', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (44, '/boot/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (45, '/tmp/**', 'rw', 0, 1);
INSERT INTO `user_rule` VALUES (46, '/mnt/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (47, '/media/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (48, '/srv/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (49, '/sys/dev/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (50, '/sys/bus/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (51, '/sys/class/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (52, '/sys/block/**', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (53, '/sys/firmware/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (54, '/sys/fs/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (55, '/sys/kernel/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (56, '/sys/module/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (57, '/sys/power/', 'r', 0, 0);
INSERT INTO `user_rule` VALUES (58, '/etc/group-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (59, '/etc/gshadow', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (60, '/etc/gshadow-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (61, '/etc/passwd-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (62, '/etc/.pwd.lock', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (63, '/etc/shadow', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (64, '/etc/shadow-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (65, '/etc/subgid-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (66, '/etc/subuid-', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (67, '/etc/sudoers', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (68, '/etc/machine-id', 'w', 1, 0);
INSERT INTO `user_rule` VALUES (69, '/var/lib/udisks2/', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (70, '/var/lib/polkit-1/', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (71, '/var/lib/lightdm/', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (72, '/proc/kcore', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (73, '/proc/kmsg', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (74, '/proc/kpagecgroup', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (75, '/proc/kpagecount', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (76, '/proc/kpageflags', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (77, '/proc/slabinfo', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (78, '/proc/vmallocinfo', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (79, '/proc/sysrq-trigger', 'rw', 1, 0);
INSERT INTO `user_rule` VALUES (80, '/lost+found/', 'rw', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
