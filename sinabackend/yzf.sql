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
  `uid`INT PRIMARY KEY AUTO_INCREMENT,
  `uname` VARCHAR(16),
  `email` VARCHAR(32),
  `phone` VARCHAR(11),
  `upwd`  VARCHAR(16)
  -- `avatar` VARCHAR(50) NOT NULL DEFAULT `unamed.jpg` COMMENT `用头像`
);
#插入数据
INSERT INTO user VALUES(NULL,'binbin','123@qq.com','18728307801','123456');
INSERT INTO user VALUES(NULL,'','','18728307801','123456');