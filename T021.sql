/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t021`;
CREATE DATABASE IF NOT EXISTS `t021` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t021`;

DROP TABLE IF EXISTS `bumen`;
CREATE TABLE IF NOT EXISTS `bumen` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumen` (`bumen`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='部门';

DELETE FROM `bumen`;
INSERT INTO `bumen` (`id`, `addtime`, `bumen`) VALUES
	(21, '2021-05-07 02:42:42', '部门1'),
	(22, '2021-05-07 02:42:42', '部门2'),
	(23, '2021-05-07 02:42:42', '部门3'),
	(24, '2021-05-07 02:42:42', '部门4'),
	(25, '2021-05-07 02:42:42', '部门5'),
	(26, '2021-05-07 02:42:42', '部门6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot57n6g/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot57n6g/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot57n6g/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `gangwei`;
CREATE TABLE IF NOT EXISTS `gangwei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangwei` (`gangwei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='岗位';

DELETE FROM `gangwei`;
INSERT INTO `gangwei` (`id`, `addtime`, `gangwei`) VALUES
	(31, '2021-05-07 02:42:42', '岗位1'),
	(32, '2021-05-07 02:42:42', '岗位2'),
	(33, '2021-05-07 02:42:42', '岗位3'),
	(34, '2021-05-07 02:42:42', '岗位4'),
	(35, '2021-05-07 02:42:42', '岗位5'),
	(36, '2021-05-07 02:42:42', '岗位6');

DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE IF NOT EXISTS `gonggaoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggaoxinxi`;
INSERT INTO `gonggaoxinxi` (`id`, `addtime`, `gonggaobiaoti`, `tupian`, `neirong`, `faburiqi`) VALUES
	(11, '2021-05-07 02:42:42', '公告标题1', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian1.jpg', '内容1', '2021-05-07'),
	(12, '2021-05-07 02:42:42', '公告标题2', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian2.jpg', '内容2', '2021-05-07'),
	(13, '2021-05-07 02:42:42', '公告标题3', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian3.jpg', '内容3', '2021-05-07'),
	(14, '2021-05-07 02:42:42', '公告标题4', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian4.jpg', '内容4', '2021-05-07'),
	(15, '2021-05-07 02:42:42', '公告标题5', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian5.jpg', '内容5', '2021-05-07'),
	(16, '2021-05-07 02:42:42', '公告标题6', 'http://localhost:8080/springboot57n6g/upload/gonggaoxinxi_tupian6.jpg', '内容6', '2021-05-07');

DROP TABLE IF EXISTS `jixiaokaohe`;
CREATE TABLE IF NOT EXISTS `jixiaokaohe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `jixiaoyuefen` varchar(200) DEFAULT NULL COMMENT '绩效月份',
  `yuangongkaoqin` int DEFAULT NULL COMMENT '员工考勤',
  `gongzuotaidu` int DEFAULT NULL COMMENT '工作态度',
  `yewujineng` int DEFAULT NULL COMMENT '业务技能',
  `gongzuojixiao` int DEFAULT NULL COMMENT '工作绩效',
  `zongdefen` varchar(200) DEFAULT NULL COMMENT '总得分',
  `jixiaodengji` varchar(200) DEFAULT NULL COMMENT '绩效等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703467459353 DEFAULT CHARSET=utf8mb3 COMMENT='绩效考核';

DELETE FROM `jixiaokaohe`;
INSERT INTO `jixiaokaohe` (`id`, `addtime`, `yuangonggonghao`, `yuangongxingming`, `bumen`, `gangwei`, `jixiaoyuefen`, `yuangongkaoqin`, `gongzuotaidu`, `yewujineng`, `gongzuojixiao`, `zongdefen`, `jixiaodengji`) VALUES
	(61, '2021-05-07 02:42:42', '员工工号1', '员工姓名1', '部门1', '岗位1', '绩效月份1', 10, 10, 10, 10, '总得分1', '优秀'),
	(62, '2021-05-07 02:42:42', '员工工号2', '员工姓名2', '部门2', '岗位2', '绩效月份2', 10, 10, 10, 10, '总得分2', '优秀'),
	(63, '2021-05-07 02:42:42', '员工工号3', '员工姓名3', '部门3', '岗位3', '绩效月份3', 10, 10, 10, 10, '总得分3', '优秀'),
	(64, '2021-05-07 02:42:42', '员工工号4', '员工姓名4', '部门4', '岗位4', '绩效月份4', 10, 10, 10, 10, '总得分4', '优秀'),
	(65, '2021-05-07 02:42:42', '员工工号5', '员工姓名5', '部门5', '岗位5', '绩效月份5', 10, 10, 10, 10, '总得分5', '优秀'),
	(66, '2021-05-07 02:42:42', '员工工号6', '员工姓名6', '部门6', '岗位6', '绩效月份6', 10, 10, 10, 10, '总得分6', '优秀'),
	(1703467459352, '2023-12-25 01:24:18', '员工2', '员工姓名2', '部门2', '岗位2', NULL, NULL, 10, NULL, 10, '20', '优秀');

DROP TABLE IF EXISTS `jixiaozhibiao`;
CREATE TABLE IF NOT EXISTS `jixiaozhibiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `jixiaoxiangmu` varchar(200) DEFAULT NULL COMMENT '绩效项目',
  `jixiaozhibiao1` varchar(200) DEFAULT NULL COMMENT '绩效指标1',
  `fenzhi1` int DEFAULT NULL COMMENT '分值1',
  `jixiaozhibiao2` varchar(200) DEFAULT NULL COMMENT '绩效指标2',
  `fenzhi2` int DEFAULT NULL COMMENT '分值2',
  `jixiaozhibiao3` varchar(200) DEFAULT NULL COMMENT '绩效指标3',
  `fenzhi3` int DEFAULT NULL COMMENT '分值3',
  `zongpingfen` varchar(200) DEFAULT NULL COMMENT '总评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='绩效指标';

DELETE FROM `jixiaozhibiao`;
INSERT INTO `jixiaozhibiao` (`id`, `addtime`, `bumen`, `gangwei`, `jixiaoxiangmu`, `jixiaozhibiao1`, `fenzhi1`, `jixiaozhibiao2`, `fenzhi2`, `jixiaozhibiao3`, `fenzhi3`, `zongpingfen`) VALUES
	(51, '2021-05-07 02:42:42', '部门1', '岗位1', '绩效项目1', '绩效指标11', 1, '绩效指标21', 1, '绩效指标31', 1, '总评分1'),
	(52, '2021-05-07 02:42:42', '部门2', '岗位2', '绩效项目2', '绩效指标12', 2, '绩效指标22', 2, '绩效指标32', 2, '总评分2'),
	(53, '2021-05-07 02:42:42', '部门3', '岗位3', '绩效项目3', '绩效指标13', 3, '绩效指标23', 3, '绩效指标33', 3, '总评分3'),
	(54, '2021-05-07 02:42:42', '部门4', '岗位4', '绩效项目4', '绩效指标14', 4, '绩效指标24', 4, '绩效指标34', 4, '总评分4'),
	(55, '2021-05-07 02:42:42', '部门5', '岗位5', '绩效项目5', '绩效指标15', 5, '绩效指标25', 5, '绩效指标35', 5, '总评分5'),
	(56, '2021-05-07 02:42:42', '部门6', '岗位6', '绩效项目6', '绩效指标16', 6, '绩效指标26', 6, '绩效指标36', 6, '总评分6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'r89dnih3axn9ofocfkyt6diszceeo1nh', '2023-12-25 01:06:50', '2023-12-25 02:23:42'),
	(2, 41, '员工1', 'yuangong', '员工', 'a7ez6y9yiyu11414rtnbfqg11l5gv3ew', '2023-12-25 01:12:50', '2023-12-25 02:24:45');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-07 02:42:42');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuangongyouxiang` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `zhaopian`, `bumen`, `gangwei`, `lianxidianhua`, `yuangongyouxiang`) VALUES
	(41, '2021-05-07 02:42:42', '员工1', '123456', '员工姓名1', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian1.jpg', '部门1', '岗位1', '13823888881', '773890001@qq.com'),
	(42, '2021-05-07 02:42:42', '员工2', '123456', '员工姓名2', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian2.jpg', '部门2', '岗位2', '13823888882', '773890002@qq.com'),
	(43, '2021-05-07 02:42:42', '员工3', '123456', '员工姓名3', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian3.jpg', '部门3', '岗位3', '13823888883', '773890003@qq.com'),
	(44, '2021-05-07 02:42:42', '员工4', '123456', '员工姓名4', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian4.jpg', '部门4', '岗位4', '13823888884', '773890004@qq.com'),
	(45, '2021-05-07 02:42:42', '员工5', '123456', '员工姓名5', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian5.jpg', '部门5', '岗位5', '13823888885', '773890005@qq.com'),
	(46, '2021-05-07 02:42:42', '员工6', '123456', '员工姓名6', '男', 'http://localhost:8080/springboot57n6g/upload/yuangong_zhaopian6.jpg', '部门6', '岗位6', '13823888886', '773890006@qq.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
