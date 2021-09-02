/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 08/07/2021 12:11:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `alias` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据',
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '标记',
  `state` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('11', '北京市', '北京', 0, 0);
INSERT INTO `province` VALUES ('12', '天津市', '天津', 0, 0);
INSERT INTO `province` VALUES ('13', '河北省', '河北', 0, 0);
INSERT INTO `province` VALUES ('14', '山西省', '山西', 0, 0);
INSERT INTO `province` VALUES ('15', '内蒙古自治区', '内蒙古', 0, 0);
INSERT INTO `province` VALUES ('21', '辽宁省', '辽宁', 0, 0);
INSERT INTO `province` VALUES ('22', '吉林省', '吉林', 0, 0);
INSERT INTO `province` VALUES ('23', '黑龙江省', '黑龙江', 0, 0);
INSERT INTO `province` VALUES ('31', '上海市', '上海', 0, 0);
INSERT INTO `province` VALUES ('32', '江苏省', '江苏', 0, 0);
INSERT INTO `province` VALUES ('33', '浙江省', '浙江', 0, 0);
INSERT INTO `province` VALUES ('34', '安徽省', '安徽', 0, 0);
INSERT INTO `province` VALUES ('35', '福建省', '福建', 0, 0);
INSERT INTO `province` VALUES ('36', '江西省', '江西', 0, 0);
INSERT INTO `province` VALUES ('37', '山东省', '山东', 0, 0);
INSERT INTO `province` VALUES ('41', '河南省', '河南', 0, 0);
INSERT INTO `province` VALUES ('42', '湖北省', '湖北', 0, 0);
INSERT INTO `province` VALUES ('43', '湖南省', '湖南', 0, 0);
INSERT INTO `province` VALUES ('44', '广东省', '广东', 0, 0);
INSERT INTO `province` VALUES ('45', '广西壮族自治区', '广西', 0, 0);
INSERT INTO `province` VALUES ('46', '海南省', '海南', 0, 0);
INSERT INTO `province` VALUES ('50', '重庆市', '重庆', 0, 0);
INSERT INTO `province` VALUES ('51', '四川省', '四川', 0, 0);
INSERT INTO `province` VALUES ('52', '贵州省', '贵州', 0, 0);
INSERT INTO `province` VALUES ('53', '云南省', '云南', 0, 0);
INSERT INTO `province` VALUES ('54', '西藏自治区', '西藏', 0, 0);
INSERT INTO `province` VALUES ('61', '陕西省', '陕西', 0, 0);
INSERT INTO `province` VALUES ('62', '甘肃省', '甘肃', 0, 0);
INSERT INTO `province` VALUES ('63', '青海省', '青海', 0, 0);
INSERT INTO `province` VALUES ('64', '宁夏回族自治区', '宁夏', 0, 0);
INSERT INTO `province` VALUES ('65', '新疆维吾尔自治区', '新疆', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
