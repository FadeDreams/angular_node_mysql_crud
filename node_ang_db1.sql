/*
 Navicat Premium Data Transfer

 Source Server         : mysql_win1
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : node_ang_db1

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 10/09/2022 13:38:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dep
-- ----------------------------
DROP TABLE IF EXISTS `dep`;
CREATE TABLE `dep`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dep
-- ----------------------------
INSERT INTO `dep` VALUES (2, 'Custom Service Support');
INSERT INTO `dep` VALUES (3, 'Information Technology Support');
INSERT INTO `dep` VALUES (4, 'Sales');
INSERT INTO `dep` VALUES (5, 'Administrative & Management');
INSERT INTO `dep` VALUES (6, 'Public Relations');
INSERT INTO `dep` VALUES (7, 'Logistics');
INSERT INTO `dep` VALUES (8, 'Product Quality');
INSERT INTO `dep` VALUES (9, 'Accounting & Finance');
INSERT INTO `dep` VALUES (10, 'Production');
INSERT INTO `dep` VALUES (11, 'Purchasing');
INSERT INTO `dep` VALUES (12, 'Production');
INSERT INTO `dep` VALUES (13, 'Administrative & Management');
INSERT INTO `dep` VALUES (14, 'Engineering');
INSERT INTO `dep` VALUES (15, 'Public Relations');
INSERT INTO `dep` VALUES (16, 'Engineering');
INSERT INTO `dep` VALUES (17, 'Logistics');
INSERT INTO `dep` VALUES (18, 'Accounting & Finance');
INSERT INTO `dep` VALUES (19, 'Sales');
INSERT INTO `dep` VALUES (20, 'Research & Development');
INSERT INTO `dep` VALUES (21, 'Human resource');
INSERT INTO `dep` VALUES (22, 'Human resource');
INSERT INTO `dep` VALUES (23, 'Custom Service Support');
INSERT INTO `dep` VALUES (24, 'Product Quality');
INSERT INTO `dep` VALUES (25, 'Purchasing');
INSERT INTO `dep` VALUES (26, 'Research & Development');
INSERT INTO `dep` VALUES (27, 'Public Relations');
INSERT INTO `dep` VALUES (28, 'Purchasing');
INSERT INTO `dep` VALUES (29, 'Export');
INSERT INTO `dep` VALUES (30, 'Legal Department');
INSERT INTO `dep` VALUES (31, 'Legal Department');
INSERT INTO `dep` VALUES (32, 'Legal Department');
INSERT INTO `dep` VALUES (33, 'Information Technology Support');
INSERT INTO `dep` VALUES (34, 'Human resource');
INSERT INTO `dep` VALUES (35, 'Engineering');
INSERT INTO `dep` VALUES (36, 'Custom Service Support');
INSERT INTO `dep` VALUES (37, 'Public Relations');
INSERT INTO `dep` VALUES (38, 'Custom Service Support');
INSERT INTO `dep` VALUES (39, 'Administrative & Management');
INSERT INTO `dep` VALUES (40, 'Human resource');
INSERT INTO `dep` VALUES (41, 'Production');
INSERT INTO `dep` VALUES (42, 'Sales');
INSERT INTO `dep` VALUES (43, 'Export');
INSERT INTO `dep` VALUES (44, 'Public Relations');
INSERT INTO `dep` VALUES (45, 'Custom Service Support');
INSERT INTO `dep` VALUES (46, 'Research & Development');
INSERT INTO `dep` VALUES (47, 'Administrative & Management');
INSERT INTO `dep` VALUES (48, 'Information Technology Support');
INSERT INTO `dep` VALUES (49, 'Legal Department');
INSERT INTO `dep` VALUES (50, 'Human resource');
INSERT INTO `dep` VALUES (51, 'Logistics');
INSERT INTO `dep` VALUES (52, 'Product Quality');
INSERT INTO `dep` VALUES (53, 'Legal Department');
INSERT INTO `dep` VALUES (54, 'Purchasing');
INSERT INTO `dep` VALUES (55, 'Production');
INSERT INTO `dep` VALUES (56, 'Product Quality');
INSERT INTO `dep` VALUES (57, 'Product Quality');
INSERT INTO `dep` VALUES (58, 'Engineering');
INSERT INTO `dep` VALUES (59, 'Purchasing');
INSERT INTO `dep` VALUES (60, 'Public Relations');
INSERT INTO `dep` VALUES (61, 'Product Quality');
INSERT INTO `dep` VALUES (62, 'Administrative & Management');
INSERT INTO `dep` VALUES (63, 'Marketing');
INSERT INTO `dep` VALUES (64, 'Engineering');
INSERT INTO `dep` VALUES (65, 'Purchasing');
INSERT INTO `dep` VALUES (66, 'Sales');
INSERT INTO `dep` VALUES (67, 'Administrative & Management');
INSERT INTO `dep` VALUES (68, 'Sales');
INSERT INTO `dep` VALUES (69, 'Accounting & Finance');
INSERT INTO `dep` VALUES (70, 'Sales');
INSERT INTO `dep` VALUES (71, 'Marketing');
INSERT INTO `dep` VALUES (72, 'Production');
INSERT INTO `dep` VALUES (73, 'Administrative & Management');
INSERT INTO `dep` VALUES (74, 'Sales');
INSERT INTO `dep` VALUES (75, 'Purchasing');
INSERT INTO `dep` VALUES (76, 'Product Quality');
INSERT INTO `dep` VALUES (77, 'Production');
INSERT INTO `dep` VALUES (78, 'Production');
INSERT INTO `dep` VALUES (79, 'Accounting & Finance');
INSERT INTO `dep` VALUES (80, 'Logistics');
INSERT INTO `dep` VALUES (81, 'Public Relations');
INSERT INTO `dep` VALUES (82, 'Logistics');
INSERT INTO `dep` VALUES (83, 'Engineering');
INSERT INTO `dep` VALUES (84, 'Human resource');
INSERT INTO `dep` VALUES (85, 'Production');
INSERT INTO `dep` VALUES (86, 'Accounting & Finance');
INSERT INTO `dep` VALUES (87, 'Accounting & Finance');
INSERT INTO `dep` VALUES (88, 'Accounting & Finance');
INSERT INTO `dep` VALUES (89, 'Logistics');
INSERT INTO `dep` VALUES (90, 'Information Technology Support');
INSERT INTO `dep` VALUES (91, 'Product Quality');
INSERT INTO `dep` VALUES (92, 'Purchasing');
INSERT INTO `dep` VALUES (93, 'Administrative & Management');
INSERT INTO `dep` VALUES (94, 'Export');
INSERT INTO `dep` VALUES (95, 'Marketing');
INSERT INTO `dep` VALUES (96, 'Logistics');
INSERT INTO `dep` VALUES (97, 'Engineering');
INSERT INTO `dep` VALUES (98, 'Accounting & Finance');
INSERT INTO `dep` VALUES (99, 'mine_updated_99');
INSERT INTO `dep` VALUES (100, 'Logistics');
INSERT INTO `dep` VALUES (102, NULL);
INSERT INTO `dep` VALUES (103, NULL);
INSERT INTO `dep` VALUES (104, NULL);
INSERT INTO `dep` VALUES (105, NULL);
INSERT INTO `dep` VALUES (106, NULL);
INSERT INTO `dep` VALUES (107, NULL);
INSERT INTO `dep` VALUES (108, 'mine_added2');
INSERT INTO `dep` VALUES (109, 'sss');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `joindate` datetime NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'Dong Yunxi', 'Human resource', '2014-08-16 03:32:14', '7Pw6Zh1Dvh');
INSERT INTO `emp` VALUES (2, 'Ying On Na', 'Administrative & Management', '2016-07-06 18:42:32', 'JcLhWLWhHM');
INSERT INTO `emp` VALUES (3, 'Marie Stone', 'Logistics', '2001-12-23 00:11:08', 'OjyyP1sMm1');
INSERT INTO `emp` VALUES (4, 'Fong Wai Yee', 'Sales', '2007-09-24 05:54:02', 'Z81pjPq0JC');
INSERT INTO `emp` VALUES (5, 'Cui Rui', 'Research & Development', '2012-08-17 14:48:20', 'ZLYTwQmY8K');
INSERT INTO `emp` VALUES (6, 'Judith Evans', 'Human resource', '2005-10-24 17:18:22', 'Oy3TJPQfEK');
INSERT INTO `emp` VALUES (7, 'Yuen Sum Wing', 'Accounting & Finance', '2020-07-29 17:18:54', '8VXzAVe9xW');
INSERT INTO `emp` VALUES (8, 'Cheung Ka Man', 'Export', '2005-10-18 00:10:35', 'HULYCrlVb0');
INSERT INTO `emp` VALUES (9, 'Sakamoto Ryota', 'Sales', '2011-12-12 15:04:40', 'TWvPuUAV2o');
INSERT INTO `emp` VALUES (10, 'Kimura Riku', 'Export', '2016-10-14 17:12:34', '9nYQBsqTH5');
INSERT INTO `emp` VALUES (11, 'Robin Boyd', 'Administrative & Management', '2002-03-03 10:04:58', 'tbzbBR2XLL');
INSERT INTO `emp` VALUES (12, 'Don Gordon', 'Human resource', '2016-01-14 16:13:06', 'yT0ReyVIQS');
INSERT INTO `emp` VALUES (13, 'Tian Yunxi', 'Marketing', '2008-05-11 07:19:23', 'Zh4kehFTnh');
INSERT INTO `emp` VALUES (14, 'Yuen Chieh Lun', 'Information Technology Support', '2007-09-24 17:38:25', 'bdg9W79Nxo');
INSERT INTO `emp` VALUES (15, 'Liao Kwok Ming', 'Logistics', '2017-12-10 00:00:00', 'nNibIQsyl4');
INSERT INTO `emp` VALUES (16, 'Fan Yunxi', 'Purchasing', '2019-10-15 11:58:23', 'YH213ESzgZ');
INSERT INTO `emp` VALUES (17, 'Ann Powell', 'Legal Department', '2022-04-29 10:05:55', 'easVMtEBzx');
INSERT INTO `emp` VALUES (18, 'Liao Jialun', 'Production', '2006-07-02 08:36:48', 'TvEvQfhgx1');
INSERT INTO `emp` VALUES (19, 'Tan Ziyi', 'Information Technology Support', '2016-01-18 07:04:26', '6l2p6POE14');
INSERT INTO `emp` VALUES (20, 'Yamamoto Ayano', 'Export', '2019-11-10 02:35:46', '8VBP4svjGA');
INSERT INTO `emp` VALUES (21, 'Chang Ziyi', 'Sales', '2020-12-08 11:51:27', 'm2hSshZ8qJ');
INSERT INTO `emp` VALUES (22, 'Wong Sze Kwan', 'Human resource', '2018-04-07 10:35:21', '90weqFIfMe');
INSERT INTO `emp` VALUES (23, 'Jiang Lu', 'Information Technology Support', '2017-01-20 23:24:06', '70hwiyCLMd');
INSERT INTO `emp` VALUES (24, 'Yao Jiehong', 'Accounting & Finance', '2006-12-22 11:58:43', 'DVWzQwjLVO');
INSERT INTO `emp` VALUES (25, 'Lok Wing Suen', 'Accounting & Finance', '2017-01-03 05:15:04', 'twmOZW49UE');
INSERT INTO `emp` VALUES (26, 'Yeow Hiu Tung', 'Production', '2018-01-16 06:17:06', 'uDcE5w9BDn');
INSERT INTO `emp` VALUES (27, 'Mo Jiehong', 'Export', '2018-12-12 10:35:25', 'cK3fKxH5gI');
INSERT INTO `emp` VALUES (28, 'Qian Zhiyuan', 'Marketing', '2021-01-26 03:43:12', 'rqR7vAj47F');
INSERT INTO `emp` VALUES (29, 'Wada Misaki', 'Accounting & Finance', '2006-12-06 20:43:23', 'mgU9ccYMqk');
INSERT INTO `emp` VALUES (30, 'Chan Tak Wah', 'Public Relations', '2002-08-09 23:33:59', 'riFsUrU7UF');
INSERT INTO `emp` VALUES (31, 'Brandon Robinson', 'Sales', '2013-11-24 22:48:55', 'E8gIKxo7Wc');
INSERT INTO `emp` VALUES (32, 'Liang Ziyi', 'Research & Development', '2009-12-16 12:07:05', 'Eva8QlcUqO');
INSERT INTO `emp` VALUES (33, 'Zou Lan', 'Human resource', '2009-12-15 15:12:10', 'Zbe42I4NLf');
INSERT INTO `emp` VALUES (34, 'Mo Lu', 'Sales', '2010-08-03 03:26:54', '9yVMvJ6tBr');
INSERT INTO `emp` VALUES (35, 'Ishida Ayano', 'Engineering', '2013-03-29 03:03:06', 'Te3SS0U3G2');
INSERT INTO `emp` VALUES (36, 'Tang Ming', 'Marketing', '2015-03-03 17:06:25', '0Oa2j6wmZp');
INSERT INTO `emp` VALUES (37, 'Fujita Riku', 'Legal Department', '2001-06-22 07:46:19', 'PxuutoZPDn');
INSERT INTO `emp` VALUES (38, 'Matsuda Aoi', 'Production', '2019-02-02 15:06:27', 'rAREubsx7p');
INSERT INTO `emp` VALUES (39, 'Matsumoto Shino', 'Information Technology Support', '2019-01-25 19:14:30', '5z3QA7uKas');
INSERT INTO `emp` VALUES (40, 'Kam Kwok Yin', 'Engineering', '2020-12-22 21:49:41', 'GtaH8b1TsD');
INSERT INTO `emp` VALUES (41, 'Xu Rui', 'Accounting & Finance', '2017-08-06 12:39:31', 'zxyT0NK04C');
INSERT INTO `emp` VALUES (42, 'Yuen Siu Wai', 'Legal Department', '2012-06-20 00:27:04', 'DBGDg2ZV9t');
INSERT INTO `emp` VALUES (43, 'Lam Sau Man', 'Legal Department', '2016-07-21 09:21:20', 'UslJA8AbCZ');
INSERT INTO `emp` VALUES (44, 'Jiang Shihan', 'Export', '2005-08-26 22:12:43', 'nNo6KrFRNI');
INSERT INTO `emp` VALUES (45, 'Ichikawa Minato', 'Export', '2016-12-01 22:59:11', '00jHPQq1hF');
INSERT INTO `emp` VALUES (46, 'Zhao Ziyi', 'Marketing', '2019-08-10 02:32:18', 'bKav6HIDLt');
INSERT INTO `emp` VALUES (47, 'Tao Wing Fat', 'Accounting & Finance', '2000-12-31 17:51:18', 'fB9VDxZmou');
INSERT INTO `emp` VALUES (48, 'Tang Zitao', 'Sales', '2021-04-27 20:09:35', 'm69BZ6XmGs');
INSERT INTO `emp` VALUES (49, 'Benjamin Nelson', 'Information Technology Support', '2002-11-06 16:54:33', 'GCWI7CAKgW');
INSERT INTO `emp` VALUES (50, 'Sara Ortiz', 'Logistics', '2007-03-30 09:43:37', 'GzPvHj6Svb');
INSERT INTO `emp` VALUES (51, 'Kwan Wing Suen', 'Engineering', '2007-04-24 15:01:39', '2qRb77fJHc');
INSERT INTO `emp` VALUES (52, 'Morita Hikaru', 'Information Technology Support', '2010-02-24 10:10:33', 'Bb8wn1VN42');
INSERT INTO `emp` VALUES (53, 'Lok Wing Suen', 'Custom Service Support', '2011-07-07 14:46:09', 'VqzGU1QPOi');
INSERT INTO `emp` VALUES (54, 'Chiang Chun Yu', 'Public Relations', '2015-11-10 08:41:15', 'KoH4oVg1Hn');
INSERT INTO `emp` VALUES (55, 'Tang Wai Lam', 'Export', '2005-10-23 20:23:10', 'p9rWJUbZT0');
INSERT INTO `emp` VALUES (56, 'Mok Ho Yin', 'Marketing', '2022-08-20 10:05:32', '0KfbDN94kr');
INSERT INTO `emp` VALUES (57, 'Iwasaki Yuto', 'Engineering', '2011-01-20 23:21:24', 'upmms8IaPP');
INSERT INTO `emp` VALUES (58, 'Saito Hikaru', 'Research & Development', '2018-04-07 08:15:30', 'jcRKmLFX7j');
INSERT INTO `emp` VALUES (59, 'Fujiwara Riku', 'Export', '2009-12-02 00:03:19', 'nqQCnSvX0k');
INSERT INTO `emp` VALUES (60, 'Kimberly Robinson', 'Marketing', '2018-08-17 21:24:40', 'T7LQKqvAlY');
INSERT INTO `emp` VALUES (61, 'Wei Zitao', 'Production', '2013-06-05 18:31:32', 'riJXXp3ALN');
INSERT INTO `emp` VALUES (62, 'Saito Mitsuki', 'Export', '2012-11-10 18:45:02', 'gt4TYZhy5m');
INSERT INTO `emp` VALUES (63, 'Chu Ka Keung', 'Engineering', '2007-08-08 03:45:00', 'wRdaPKZDsF');
INSERT INTO `emp` VALUES (64, 'Rodney Jimenez', 'Logistics', '2013-03-12 20:44:57', 'EONsCVYM8R');
INSERT INTO `emp` VALUES (65, 'Lin Yuning', 'Research & Development', '2021-04-29 00:05:30', 'T2w5OGphLY');
INSERT INTO `emp` VALUES (66, 'Fong On Kay', 'Human resource', '2013-10-20 20:05:05', 'BIbTveAqta');
INSERT INTO `emp` VALUES (67, 'Ng On Kay', 'Information Technology Support', '2019-10-15 12:26:39', 'utb4lBUPsw');
INSERT INTO `emp` VALUES (68, 'Tang Rui', 'Public Relations', '2019-01-16 22:35:28', 'lT4X48SHJC');
INSERT INTO `emp` VALUES (69, 'Johnny Ward', 'Sales', '2021-04-16 19:52:56', 'i31i8lbCGq');
INSERT INTO `emp` VALUES (70, 'Sato Kasumi', 'Information Technology Support', '2017-03-17 08:49:54', 'tLVMd57mXr');
INSERT INTO `emp` VALUES (71, 'Nakajima Kenta', 'Sales', '2015-02-02 01:24:14', 'zDTKG7zG9I');
INSERT INTO `emp` VALUES (72, 'Hsuan Chi Yuen', 'Legal Department', '2020-02-19 02:33:08', 'pL18IBwEo0');
INSERT INTO `emp` VALUES (73, 'Hu Rui', 'Marketing', '2010-05-08 06:13:09', 'cziTAUrINw');
INSERT INTO `emp` VALUES (74, 'Chen Anqi', 'Accounting & Finance', '2003-08-04 17:58:51', 'qIvY9GBiwH');
INSERT INTO `emp` VALUES (75, 'Miu Hiu Tung', 'Logistics', '2003-02-07 00:58:49', 'cDOAP3PMjU');
INSERT INTO `emp` VALUES (76, 'Jiang Ziyi', 'Human resource', '2015-02-09 20:17:20', '8FFasTrSk2');
INSERT INTO `emp` VALUES (77, 'Ronald Chavez', 'Product Quality', '2010-06-14 00:41:28', 'nm6siwTNgr');
INSERT INTO `emp` VALUES (78, 'Xiao Rui', 'Administrative & Management', '2014-09-18 20:52:56', 'qy8o8NOxX2');
INSERT INTO `emp` VALUES (79, 'Fu Xiaoming', 'Export', '2021-04-23 17:29:46', 'xWdd3I0YbY');
INSERT INTO `emp` VALUES (80, 'Kondo Ayano', 'Production', '2007-05-02 23:23:56', 'cp3pDrrtYk');
INSERT INTO `emp` VALUES (81, 'Debra Williams', 'Accounting & Finance', '2013-04-29 09:25:01', 'SX6up9YYJ7');
INSERT INTO `emp` VALUES (82, 'Nakamura Rin', 'Logistics', '2019-12-30 03:59:59', '2nFoofTX9N');
INSERT INTO `emp` VALUES (83, 'Fung Chiu Wai', 'Accounting & Finance', '2005-03-15 09:18:01', 'mVPfuSMkIk');
INSERT INTO `emp` VALUES (84, 'Cynthia Warren', 'Information Technology Support', '2020-12-21 00:30:08', 'jLe09zRARF');
INSERT INTO `emp` VALUES (85, 'Maruyama Ren', 'Public Relations', '2004-08-27 18:03:17', '7LzHFqpGU8');
INSERT INTO `emp` VALUES (86, 'Noguchi Momoka', 'Sales', '2014-06-23 23:57:06', 'es4yHLAIrm');
INSERT INTO `emp` VALUES (87, 'Takahashi Rin', 'Production', '2006-10-21 08:24:14', 'S8uSiDD9t4');
INSERT INTO `emp` VALUES (88, 'Fujiwara Shino', 'Custom Service Support', '2009-01-10 14:25:49', 'ualKSGjGI3');
INSERT INTO `emp` VALUES (89, 'Abe Aoshi', 'Human resource', '2022-06-06 23:43:26', '1kAUT4jh1m');
INSERT INTO `emp` VALUES (90, 'Matsui Momoe', 'Production', '2009-04-17 14:48:49', 'dAUtMOcwdW');
INSERT INTO `emp` VALUES (91, 'Kono Misaki', 'Sales', '2005-09-12 04:40:14', 'vzX7jM5aa5');
INSERT INTO `emp` VALUES (92, 'Li Ziyi', 'Public Relations', '2008-11-05 02:26:44', 'vbkm1QOgcG');
INSERT INTO `emp` VALUES (93, 'Lu Xiuying', 'Marketing', '2020-05-11 23:19:38', 'WR21NTtvqu');
INSERT INTO `emp` VALUES (94, 'Irene Griffin', 'Administrative & Management', '2009-11-23 08:24:19', 'LRYTR0jJIO');
INSERT INTO `emp` VALUES (95, 'Wendy Owens', 'Product Quality', '2011-05-12 01:36:34', 'OCQ7xWwyAR');
INSERT INTO `emp` VALUES (96, 'Yeow Chun Yu', 'Legal Department', '2021-12-03 05:44:54', 'JcOvGoEjCg');
INSERT INTO `emp` VALUES (97, 'Gao Ziyi', 'Administrative & Management', '2020-12-01 12:43:10', 'mql3ID32gN');
INSERT INTO `emp` VALUES (98, 'Hung On Kay', 'Legal Department', '2003-03-31 09:20:41', '5Kf2ticIKR');
INSERT INTO `emp` VALUES (99, 'Takahashi Mitsuki', 'Product Quality', '2000-10-30 13:57:23', 'GWgQD4GeVP');
INSERT INTO `emp` VALUES (100, 'Li Xiuying', 'Human resource', '2020-07-28 06:41:26', 'TGAWdA15CU');

SET FOREIGN_KEY_CHECKS = 1;
