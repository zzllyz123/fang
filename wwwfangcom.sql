/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50718
Source Host           : 127.0.0.1:3306
Source Database       : wwwfangcom

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-11-11 17:24:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fang_admins
-- ----------------------------
DROP TABLE IF EXISTS `fang_admins`;
CREATE TABLE `fang_admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `truename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未知' COMMENT '真实姓名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `sex` enum('先生','女士') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '先生' COMMENT '性别',
  `last_ip` char(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fang_admins
-- ----------------------------
INSERT INTO `fang_admins` VALUES ('1', 'consequuntur.rerum', '宋金凤', '$2y$10$h6ZDCtYrX3uBLC1guBRqSe1OXOpMTH5HE7mP5MJHDW1wefmIqSaxm', 'ullam_quis@yahoo.com', '15122942424', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('2', 'vel.aut', '嵺雪', '$2y$10$iUnAeM81rheoT545dxNCkeaWKMFRhbVMRmKPt70KKZES/lb8yGSF.', 'molestias_quia@163.com', '17085636995', '女士', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('3', 'ipsa.ea', '尤淑英', '$2y$10$surVvjX9OYRrXV.WUKBmWuKjvomAd5Z8wqghHNeS4n0nJmDQy0xyG', 'iste_doloremque@sohu.com', '17186028736', '女士', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('4', 'ut.qui', '辛晶', '$2y$10$MULV9k0DVMXOwmdv8j.9/.IYkdDQdW4lIvQPsdTTQgq7.afGb9pHi', 'est_beatae@sohu.com', '17018412227', '女士', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('5', 'minus.doloribus', '邓军', '$2y$10$atbtjNgzGZiNMGCCI0btAupOyfTUKsYVztTEZ/LOi6mP2xOnPuN4K', 'osed@sina.com', '18006471904', '女士', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('6', 'admin', '汪颖', '$2y$10$pMU6PGeJzok8zWD/NHpNiepnFzEZJQ4c08vCQ6IpaC47CjHXUNslu', 'asperiores_distinctio@gmail.com', '17086066983', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', 'xNZupVSKfW1kX5jKCgJGdannm4jgyYhLiypJu0IdtS0w0Qlv4MJR7kx5mZaI', null);
INSERT INTO `fang_admins` VALUES ('7', 'hic_dolorem', '庞鹏', '$2y$10$XMNDFCk4QnXBACtO.YLgvO3qs4T8u33LCLa7ypMz3Y4mwZjs.EaY2', 'qerror@yahoo.com', '13501698356', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('8', 'quia_occaecati', '郝磊', '$2y$10$SEbxwvBMHcHQ54pL55Pq1uU724bW1GHB.wKeuDT/JjKMO/HktGDEi', 'plaudantium@qq.com', '17084932856', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('9', 'sed.libero', '冷丽丽', '$2y$10$F/tCr14Mo3z83bx5LN2okeKZG54wXSI5TSRToobM2daxTSioTNfUG', 'quam.sit@sina.com', '15659925155', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('10', 'yrerum', '虞鹏程', '$2y$10$iFpDLszrleXyJLedgNPF3O3P2sT5jSDtYaH6tRPa8pmXFzfr8gmrO', 'qui.quos@yahoo.com', '13876244042', '先生', '127.0.0.1', '2019-11-11 10:35:54', '2019-11-11 10:35:54', null, null);
INSERT INTO `fang_admins` VALUES ('14', 'aa12', '张明', '$2y$10$R67adtfssawLo8IqGZh1.uMIuaV7AVZ0B0UNL05bbMQZLMj3Oocd.', 'aaa@aa.com', '122122221112', '先生', '', '2019-11-11 16:42:32', '2019-11-11 17:12:13', null, null);

-- ----------------------------
-- Table structure for fang_migrations
-- ----------------------------
DROP TABLE IF EXISTS `fang_migrations`;
CREATE TABLE `fang_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fang_migrations
-- ----------------------------
INSERT INTO `fang_migrations` VALUES ('2', '2019_11_09_152649_create_admins_table', '1');
