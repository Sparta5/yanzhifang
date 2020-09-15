--
-- Database: `yzf`
--
CREATE DATABASE IF NOT EXISTS `yzf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yzf`;

-- --------------------------------------------------------
--
-- 表的结构 `yzf_user`
--

DROP TABLE IF EXISTS `yzf_user`;
CREATE TABLE `yzf_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `yzf_user`
--

TRUNCATE TABLE `yzf_user`;
--
-- 转存表中的数据 `yzf_user`
--

INSERT INTO `yzf_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1);