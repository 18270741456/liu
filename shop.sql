# Host: 127.0.0.1  (Version 5.0.96-community-nt)
# Date: 2018-11-11 15:17:19
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "messa"
#

CREATE TABLE `messa` (
  `name` varchar(255) default '',
  `email` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `memo` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "messa"
#

INSERT INTO `messa` VALUES ('1','12345663@163.com','萍乡学院','你好，我们交个朋友吧！'),('1','312141','第三方士大夫','发送给个');

#
# Structure for table "replytable"
#

CREATE TABLE `replytable` (
  `name` varchar(255) NOT NULL default '',
  `subject` varchar(255) default NULL,
  `replycontent` varchar(255) default NULL,
  `time` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "replytable"
#

INSERT INTO `replytable` VALUES ('刘斐','dgsdg','gfds ','2018-05-05 01:37:40'),('刘斐',NULL,'111','2018-05-06 00:47:20'),('刘斐',NULL,'gtfyyhxd t','2018-05-06 01:13:13'),('刘斐',NULL,'222','2018-05-06 01:34:31'),('刘斐','1','111','2018-05-06 01:51:13');

#
# Structure for table "tb_goods"
#

CREATE TABLE `tb_goods` (
  `ID` int(11) NOT NULL auto_increment,
  `typeID` int(11) default '0',
  `GoodsName` varchar(255) default NULL,
  `price` int(11) default NULL,
  `TypeName` varchar(255) default NULL,
  `Introduce` varchar(255) default NULL,
  `nowprice` int(11) default NULL,
  `TypeNmae` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "tb_goods"
#

INSERT INTO `tb_goods` VALUES (1,1,'魅蓝5',899,'魅族','商品名称：魅族魅蓝5商品编号：3663583商品毛重：280.00g商品产地：中国大陆机身厚度：薄（7mm-8.5mm）电池容量：3000mAh-3999mAh机身颜色：白色系运行内存：2GB前置摄像头像素：500万-799万机身内存：16GB游戏配置：游戏模式老人机配置：智能机（老龄模式），远程协助后置摄像头像素：⁪1200万-1999万',899,NULL),(2,2,'<mapping resource=\"domain/User.hbm.xml\"/>',2599,'华为','传播名荣耀10',2599,NULL),(3,0,'OPPO R15',2999,'OPPO','商品名称：OPPOR15商品编号：6773559商品毛重：500.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）拍照特点：后置双摄像头电池容量：3000mAh-3999mAh机身颜色：紫色系热点：人脸识别，快速充电运行内存：6GB前置摄像头像素：2000万及以上游戏配置：游戏模式，VOLTE功能后置摄像头像素：1200万-1999万机身内存：128GB屏幕配置：OLED屏，符合全面屏比',2999,NULL),(4,0,'小米6X',1399,'小米','商品名称：小米6X商品编号：7652137商品毛重：410.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）拍照特点：后置双摄像头电池容量：3000mAh-3999mAh机身颜色：金色系热点：人工智能，快速充电运行内存：4GB老人机配置：智能机（老龄模式）游戏配置：VOLTE功能后置摄像头像素：2000万及以上机身内存：32GB屏幕配置：符合全面屏比例',1399,NULL),(5,0,'vivo z1',1898,'vivo','商品名称：vivoZ1商品编号：7717260商品毛重：405.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）拍照特点：后置双摄像头电池容量：3000mAh-3999mAh机身颜色：黑色系热点：人工智能，人脸识别运行内存：6GB游戏配置：游戏模式，VOLTE功能后置摄像头像素：1200万-1999万机身内存：64GB屏幕配置：符合全面屏比例',1898,NULL),(6,0,'华为 P20',3788,'华为','商品名称：华为P20商品编号：6946605商品毛重：480.00g商品产地：中国大陆系统：安卓（Android）机身厚度：薄（7mm-8.5mm）拍照特点：智能拍照，后置双摄像头电池容量：3000mAh-3999mAh机身颜色：黑色系热点：人工智能，人脸识别，快速充电运行内存：6GB前置摄像头像素：2000万及以上游戏配置：游戏模式后置摄像头像素：2000万及以上机身内存：64GB屏幕配置：符合全面屏比例',3788,NULL),(7,0,'诺基亚 X6',1699,'诺基亚','商品名称：诺基亚X6商品编号：7524698商品毛重：340.00g商品产地：中国大陆',1699,NULL);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'tom','123','123456','男','sfadsf'),(2,'2','2','2','2','2'),(3,'','','','',''),(4,'1','1','1','1','1'),(5,'1','','1','','');
