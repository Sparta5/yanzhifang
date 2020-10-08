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
  `uid` INT PRIMARY KEY AUTO_INCREMENT,
  `uname` VARCHAR(16),
  `email` VARCHAR(32),
  `phone` VARCHAR(11),
  `upwd`  VARCHAR(16)
  -- `avatar` VARCHAR(50) NOT NULL DEFAULT `unamed.jpg` COMMENT `用头像`
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
#插入数据
INSERT INTO user VALUES(NULL,'binbin','123@qq.com','18728307855','123456');
INSERT INTO user VALUES(NULL,'','','18728307856','123456');

/**分类信息***/
DROP TABLE IF EXISTS `yzf_food_family`;
CREATE TABLE `yzf_food_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- 插入之前先把表清空（truncate） `yzf_food_family`
--
TRUNCATE TABLE `yzf_food_family`;
--
-- 转存表中的数据 `yzf_laptop_family`
--
INSERT INTO `yzf_food_family` (`fid`,`fname`) VALUES
(1,'五谷营养禅食'),
(2,'精选粗粮');

/**详情页*/
--
-- 表的结构 `yzf_laptop`
--
DROP TABLE IF EXISTS `yzf_food`;
CREATE TABLE `yzf_food` (
	`fid` int(11) NOT NULL,
	`family_id` int(11) DEFAULT NULL,  		#所属分类编号
	`title` varchar(128) DEFAULT NULL, 		#主标题
	`price` decimal(10,2) DEFAULT NULL,	 	#价格
	`art_no` VARCHAR(32) DEFAULT NULL     #货品编号 #产品详细说明
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

TRUNCATE TABLE `yzf_food`;
INSERT INTO `yzf_food` (`fid`,`family_id`,`title`,`price`,`art_no`)VALUE
(1,1,'燕之坊 精选白砂糖400g 早餐晚餐 熬粥 煮豆浆','11.80','	C01060010026'),
(2,1,'燕之坊冻干红枣枸杞银耳羹90g营养早餐免煮冲泡即食6包装','39.80','C03070080014'),
(3,1,'燕之坊 小粒黄冰糖200g 粉粉伴侣煮粥','12.80','	C01060080019');

/**详情页图片**/
DROP TABLE IF EXISTS `xz_food_pic`;
CREATE TABLE `xz_food_pic` (
  `pid` INT PRIMARY KEY AUTO_INCREMENT,
  `food_id` INT,              #笔记本电脑编号
  `sm` VARCHAR(128),            #小图片路径
  `md` VARCHAR(128),            #中图片路径
  `lg` VARCHAR(128)             #大图片路径
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
TRUNCATE TABLE `xz_food_pic`;
INSERT INTO `xz_food_pic` (`pid`, `food_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/01s.jpg', 'img/product/md/01m.jpg', 'img/product/lg/01l.jpg'),
(2, 1, 'img/product/sm/02s.jpg', 'img/product/md/02m.jpg', 'img/product/lg/02l.jpg'),
(3, 1, 'img/product/sm/03s.jpg', 'img/product/md/03m.jpg', 'img/product/lg/03l.jpg'),
(4, 1, 'img/product/sm/04s.jpg', 'img/product/md/04m.jpg', 'img/product/lg/04l.jpg'),
(5, 1, 'img/product/sm/05s.jpg', 'img/product/md/05m.jpg', 'img/product/lg/05l.jpg');

/****首页轮播广告商品****/
CREATE TABLE yzf_index_carousel(
  cil INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
TRUNCATE TABLE `yzf_index_carousel`;
INSERT INTO `yzf_index_carousel` (`cil`,`img`,`title`,`href`) VALUES
(1, '/img/home/banner1.jpg', '轮播广告商品1', 'product_details.html?lid=28'),
(2, '/img/home/banner2.jpg', '轮播广告商品2', 'product_details.html?lid=19'),
(4, '/img/home/banner3.jpg', '轮播广告商品4', 'lookforward.html');