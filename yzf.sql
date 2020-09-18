#设置客户端连接服务器的编码
SET NAMES UTF8;
#丢弃数据库如果存在
DROP DATABASE IF EXISTS yzf;
#创建数据库，设置储存的编码
CREATE DATABASE yzf CHARSET=UTF8;
#进入创建的数据库
USE yzf;
#创建用户表user
CREATE TABLE `user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCRMENT COMMENT '用户ID,主键且自增 不为空',
  `uname` VARCHAR(16),
  `email` VARCHAR(16),
  `phone` TINYINT(11),
  `avatar` VARCHAR(50) NOT NULL DEFAULT `unamed.jpg` COMMENT `用头像`，
  `yzm`
);