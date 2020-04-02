/*
Navicat MySQL Data Transfer

Source Server         : locMysql
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-02 08:44:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_commodity
-- ----------------------------
DROP TABLE IF EXISTS `t_commodity`;
CREATE TABLE `t_commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `standard` varchar(255) DEFAULT NULL COMMENT '规格',
  `temperature` varchar(255) DEFAULT NULL COMMENT '温度',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_commodity
-- ----------------------------
INSERT INTO `t_commodity` VALUES ('85', '西瓜汁200', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200327/1585300488030_431.jpg');
INSERT INTO `t_commodity` VALUES ('86', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('87', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('88', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('89', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('90', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('91', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('92', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('93', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('94', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('95', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('96', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('97', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('98', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('99', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('100', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('101', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('102', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('103', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('104', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('115', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('116', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('117', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('118', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('119', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('120', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('121', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('122', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('123', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('125', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('126', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('127', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('128', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('129', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('130', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('131', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('132', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('133', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('134', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('135', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('136', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('137', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('138', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('139', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('140', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('141', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('142', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('143', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('144', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('145', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('146', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('147', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('148', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('149', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('150', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('151', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('152', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('153', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('154', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('155', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('156', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('157', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('158', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('159', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('160', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('161', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('163', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('164', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('165', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('166', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('167', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('168', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('169', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('170', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('171', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('172', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('173', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('174', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('175', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('176', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('177', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('178', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('179', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('180', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('181', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('182', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('183', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('184', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('185', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('186', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('187', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('188', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('189', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('190', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('191', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('192', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('193', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('194', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('195', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('196', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('197', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('198', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('199', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('200', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('201', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('202', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('203', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('204', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('205', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('206', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('207', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('208', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('209', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('210', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('211', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('212', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('213', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('214', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('215', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('216', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('227', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('228', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('229', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('230', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('231', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('232', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('233', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('234', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('235', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('236', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('237', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('238', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('239', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('240', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('241', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('242', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('243', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('244', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('245', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('246', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('247', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('248', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('249', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('250', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('251', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('252', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('253', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('254', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('255', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('256', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('257', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('258', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('259', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('260', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('261', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('262', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('263', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('264', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('265', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('266', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('267', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('268', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('269', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('270', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('271', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('272', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('273', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('274', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('275', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('276', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('277', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('278', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('279', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('280', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('281', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('282', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('283', '西瓜汁4', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('284', '西瓜汁5', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('285', '西瓜汁6', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('286', '西瓜汁7', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('287', '西瓜汁8', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('288', '西瓜汁9', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('289', '西瓜汁10', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('290', '西瓜汁11', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('291', '西瓜汁12', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('292', '西瓜汁13', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('293', '西瓜汁14', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('294', '西瓜汁1', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('295', '西瓜汁2', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('296', '西瓜汁3', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200326/1585208154079_451.jpg,http://localhost:8082/upload/imgs/20200326/1585208154077_719.jpg');
INSERT INTO `t_commodity` VALUES ('337', '乌龙茶', '大杯', '80', '27', '好茶', 'http://localhost:8082/upload/imgs/20200327/1585298320032_250.jpg');
INSERT INTO `t_commodity` VALUES ('338', '龙井茶', '中杯', '80', '20', '好茶', 'http://localhost:8082/upload/imgs/20200327/1585300749202_806.jpg');
INSERT INTO `t_commodity` VALUES ('339', '西瓜汁999', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200327/1585300488030_431.jpg');
INSERT INTO `t_commodity` VALUES ('340', '西瓜汁999', '小杯', '10', '18', '清凉解渴，经济实惠', 'http://localhost:8082/upload/imgs/20200327/1585300488030_431.jpg');
