/*
Navicat MySQL Data Transfer

Source Server         : mysql01
Source Server Version : 50132
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50132
File Encoding         : 65001

Date: 2020-05-05 14:03:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `name` varchar(100) NOT NULL COMMENT '图书名称',
  `number` int(11) NOT NULL COMMENT '图书数量',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='图书记录表';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '操作系统', '5');
INSERT INTO `book` VALUES ('2', '计算机组成原理', '10');
INSERT INTO `book` VALUES ('3', '数据结构', '15');
INSERT INTO `book` VALUES ('4', '高等数学（上）', '20');
INSERT INTO `book` VALUES ('5', '高等数学（下）', '25');
INSERT INTO `book` VALUES ('6', '线性代数', '30');
INSERT INTO `book` VALUES ('7', '离散数学', '35');
