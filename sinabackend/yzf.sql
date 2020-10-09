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
  `fname` VARCHAR(32) DEFAULT NULL,
  `img` VARCHAR(128),
  `img_s` VARCHAR(128)
);

INSERT INTO `yzf_food_family` (`fid`,`fname`,`img`,`img_s`) VALUES
(1,'五谷营养禅食','/img/index_img/index01.png','/img/index_img/index01_1.png'),
(2,'优选干货山珍','/img/index_img/index02.png','/img/index_img/index02_2.png'),
(3,'线下专柜同款','/img/index_img/index03.png','/img/index_img/index03_3.png'),
(4,'送礼佳品','/img/index_img/index04.png','/img/index_img/index04_4.png');

/**详情页*/
CREATE TABLE `yzf_food_details` (
	`did` int(11) NOT NULL,
	`family_id` int(11) DEFAULT NULL,  		#所属分类编号对应fid
	`title` varchar(128) DEFAULT NULL, 		#主标题
	`price` decimal(10,2) DEFAULT NULL,	 	#价格
	`art_no` VARCHAR(32) DEFAULT NULL,     #货品编号 #产品详细说明
	`specification` VARCHAR(32) DEFAULT NULL   #规格
);

TRUNCATE TABLE `yzf_food_details`;
INSERT INTO `yzf_food_details` (`did`,`family_id`,`title`,`price`,`art_no`,`specification`)VALUES
(1,1,'燕之坊 精选白砂糖400g 早餐晚餐 熬粥 煮豆浆','11.80','	C01060010026','燕之坊 精选白砂糖400g'),
(2,1,'燕之坊冻干红枣枸杞银耳羹90g营养早餐免煮冲泡即食6包装','39.80','C03070080014','燕之坊冻干红枣枸杞银耳羹90g'),
(4,1,'燕之坊 黑八宝禅食450g 芝麻桑葚奇亚籽粉 黑芝麻 熟粉 早餐禅食代餐粉','12.80','C01060089874','燕之坊 黑八宝禅食450g'),
(5,1,'燕之坊 坚果代餐羹650g 早餐代餐粉 蔓越莓葡萄干黑芝麻腰果红枣','72.80','C0106008782','燕之坊 坚果代餐羹650g'),
(6,1,'燕之坊 核桃芝麻奇亚籽粉500g 五谷杂粮 早餐禅食代餐粉','19.80','C0106008888','燕之坊 核桃芝麻奇亚籽粉500g '),
(7,1,'燕之坊 红豆薏米枸杞粉500g 五谷杂粮 早餐禅食代餐粉','88.00','C01060080019','燕之坊 红豆薏米枸杞粉500g '),
(8,1,'燕之坊 熟黑芝麻粒500g 低温烘培 即食 五谷杂粮 禅食代餐','42.80','C01060990019','燕之坊 熟黑芝麻粒500g '),
(9,1,'燕之坊 芝麻核桃黑豆粉500g 低温烘焙 熟粉 五谷杂粮 禅食代餐粉','12.80','C01060080019','燕之坊 芝麻核桃黑豆粉500g'),
(10,1,'燕之坊 山药薏米芡实粉460g 五谷杂粮 早餐禅食代餐粉','16.33','	C0106008158','燕之坊 山药薏米芡实粉460g'),

(11,2,'燕之坊 自然吊干400g 新疆楼兰大枣 自然风干 山珍南北干货','35.33','C0106008369','燕之坊 山药薏米芡实粉460g');

/****首页商品列表****/
CREATE TABLE yzf_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,          #所属分类编号对应fid
  title VARCHAR(64),
  pic VARCHAR(64),
  href varchar(128)
);
INSERT INTO `yzf_index_product` (`pid`,`family_id`, `title`,`pic`,`href`) VALUES
(1,1,'燕之坊 黑八宝禅食450g 芝...','/img/index_img/1L01.jpg','4'),
(2,1,'燕之坊 坚果代餐羹650g 早...','/img/index_img/1L02.jpg','5'),
(3,1,'燕之坊 核桃芝麻奇亚籽粉5...','/img/index_img/1L03.jpg','6'),
(4,1,'燕之坊 红豆薏米枸杞粉500...','/img/index_img/1L04.jpg','7'),
(5,1,'燕之坊 熟黑芝麻粒500g 低...','/img/index_img/1L05.jpg','8'),
(6,1,'燕之坊 芝麻核桃黑豆粉500...','/img/index_img/1L06.jpg','9'),
(7,1,'燕之坊 山药薏米芡实粉460...','/img/index_img/1L07.jpg','10'),

(8,2,'燕之坊 自然吊干400g 新疆楼兰...','/img/index_img/2L01.jpg','11');

/**详情页图片**/
DROP TABLE IF EXISTS `xz_food_pic`;
CREATE TABLE `xz_food_pic` (
  `pid` INT PRIMARY KEY AUTO_INCREMENT,
  `food_id` INT,                #编号对应详情页did
  `sm` VARCHAR(128),            #小图片路径
  `md` VARCHAR(128),            #中图片路径
  `lg` VARCHAR(128)             #大图片路径
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
TRUNCATE TABLE `xz_food_pic`;
INSERT INTO `xz_food_pic` (`pid`, `food_id`, `sm`, `md`, `lg`) VALUES
(1, 1, '/img/product/sm/01s.jpg', '/img/product/md/01m.jpg', '/img/product/lg/01l.jpg'),
(2, 1, '/img/product/sm/02s.jpg', '/img/product/md/02m.jpg', '/img/product/lg/02l.jpg'),
(3, 1, '/img/product/sm/03s.jpg', '/img/product/md/03m.jpg', '/img/product/lg/03l.jpg'),
(4, 1, '/img/product/sm/04s.jpg', '/img/product/md/04m.jpg', '/img/product/lg/04l.jpg'),
(5, 1, '/img/product/sm/05s.jpg', '/img/product/md/05m.jpg', '/img/product/lg/05l.jpg'),

(6, 4, '/img/product/sm/401s.jpg','/img/product/md/401m.jpg','/img/product/lg/401l.jpg'),
(7, 4, '/img/product/sm/402s.jpg','/img/product/md/402m.jpg','/img/product/lg/402l.jpg'),
(8, 4, '/img/product/sm/403s.jpg','/img/product/md/403m.jpg','/img/product/lg/403l.jpg'),
(9, 4, '/img/product/sm/404s.jpg','/img/product/md/404m.jpg','/img/product/lg/404l.jpg'),
(10, 4,'/img/product/sm/405s.jpg','/img/product/md/405m.jpg','/img/product/lg/405l.jpg');


/****首页轮播广告商品****/
CREATE TABLE yzf_index_carousel(
  cil INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
TRUNCATE TABLE `yzf_index_carousel`;
INSERT INTO `yzf_index_carousel` (`cil`,`img`,`title`,`href`) VALUES
(1, '/img/home/banner1.jpg', '轮播广告商品1', '/'),
(2, '/img/home/banner2.jpg', '轮播广告商品2', '/'),
(4, '/img/home/banner3.jpg', '轮播广告商品4', '/');

