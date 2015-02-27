/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : nsg

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-02-25 10:43:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for socialservice
-- ----------------------------
DROP TABLE IF EXISTS `socialservice`;
CREATE TABLE `socialservice` (
  `socialserviceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT '2014-01-01 00:00:00',
  `modifiedBy` int(10) unsigned NOT NULL DEFAULT '0',
  `modifiedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`socialserviceID`),
  KEY `socialserviceCreatedBy` (`createdBy`),
  KEY `socialserviceModifiedBy` (`modifiedBy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `initials` varchar(5) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(36) NOT NULL DEFAULT 'A6915F76388648131179EBF4099FA098',
  `lastLoginAt` datetime DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `passwordExpiresAt` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `roles` text,
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '{male=1,female=2}',
  `createdAt` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  `modifiedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` int(10) unsigned NOT NULL DEFAULT '0',
  `isActive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `user-email-unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for userSocial
-- ----------------------------
DROP TABLE IF EXISTS `userSocial`;
CREATE TABLE `userSocial` (
  `userSocialID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(10) unsigned NOT NULL DEFAULT '0',
  `socialserviceID` int(10) unsigned NOT NULL DEFAULT '0',
  `referenceID` varchar(32) DEFAULT NULL,
  `accessToken` varchar(255) DEFAULT NULL,
  `clientID` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(400) DEFAULT NULL,
  `idToken` text,
  `jsonData` text,
  `expiresAt` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `modifiedBy` int(10) unsigned NOT NULL DEFAULT '0',
  `modifiedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userSocialID`),
  KEY `userSocialCreatedBy` (`createdBy`),
  KEY `userSocialModifiedBy` (`modifiedBy`),
  KEY `userSocialSocialID` (`socialserviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
