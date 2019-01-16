/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.25 : Database - p2p
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`p2p` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `p2p`;

/*Table structure for table `capital` */

DROP TABLE IF EXISTS `capital`;

CREATE TABLE `capital` (
  `c_account` varchar(100) DEFAULT NULL,
  `c_balance` double DEFAULT NULL,
  `c_ttinvest` double DEFAULT NULL,
  `c_icinvest` double DEFAULT NULL,
  `c_pdincome` double DEFAULT NULL,
  `c_ttloan` double DEFAULT NULL,
  `c_reimburse` double DEFAULT NULL,
  `c_sploan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `capital` */

insert  into `capital`(`c_account`,`c_balance`,`c_ttinvest`,`c_icinvest`,`c_pdincome`,`c_ttloan`,`c_reimburse`,`c_sploan`) values 
('aaa',0,2000,0,0,0,0,500),
('bbbb',200,NULL,NULL,NULL,NULL,NULL,NULL),
('ccccc',100000,NULL,NULL,NULL,NULL,NULL,NULL),
('王麻子',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('zhang',0,2000,0,0,0,0,500),
('王五',0,0,0,0,0,0,0),
('12323',0,0,0,0,0,0,0),
('00000',0,0,0,0,0,0,0),
('101',0,0,0,0,0,0,0),
('张大',0,0,0,0,0,0,0),
('102',0,0,0,0,0,0,0),
('104',0,0,0,0,0,0,0),
('55555',0,0,0,0,0,0,0),
('admin666',0,0,0,0,0,0,0),
('105',0,0,0,0,0,0,0),
('admin999',0,0,0,0,0,0,0),
('李宁1号',0,0,0,0,0,0,0);

/*Table structure for table `contract` */

DROP TABLE IF EXISTS `contract`;

CREATE TABLE `contract` (
  `c_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `c_infor` bigint(100) DEFAULT NULL,
  `c_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contract` */

/*Table structure for table `invest` */

DROP TABLE IF EXISTS `invest`;

CREATE TABLE `invest` (
  `t_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `t_account` varchar(100) DEFAULT NULL,
  `t_item` varchar(100) DEFAULT NULL,
  `t_money` varchar(100) NOT NULL,
  `t_total` varchar(100) DEFAULT NULL,
  `t_start` varchar(100) DEFAULT NULL,
  `t_end` varchar(100) DEFAULT NULL,
  `t_rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`t_id`,`t_money`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `invest` */

insert  into `invest`(`t_id`,`t_account`,`t_item`,`t_money`,`t_total`,`t_start`,`t_end`,`t_rate`) values 
(24,'aaa','房产','10000','11500','2019-01-09 09:12:49','2019-07-09 09:12:49','0.3'),
(25,'aaa','黄金投资','10000','11375','2019-01-09 09:14:31','2020-04-09 09:14:31','0.11'),
(26,'aaa','企业融资','100000','111250','2019-01-09 09:21:47','2019-10-09 09:21:47','0.15'),
(27,'aaa','学而思教育','20000','20300','2019-01-09 09:23:56','2019-02-09 09:23:56','0.18'),
(29,'aaa','企业融资','100000','111250','2019-01-09 10:23:05','2019-10-09 10:23:05','0.15'),
(30,'王麻子','学而思教育','50000','50750','2019-01-09 10:49:08','2019-02-09 10:49:08','0.18'),
(32,'tommy','房产','10000','11500','2019-01-09 11:14:16','2019-07-09 11:14:16','0.3'),
(33,'tommy','房产','100000','115000','2019-01-09 11:19:22','2019-07-09 11:19:22','0.3'),
(34,'王麻子','教育','20000','21333.333333333332','2019-01-09 11:29:47','2019-05-09 11:29:47','0.2'),
(35,'tommy','教育','100000','106666.66666666667','2019-01-09 11:36:39','2019-05-09 11:36:39','0.2'),
(50,'tommy','学而思教育','10000','10150','2019-01-09 12:49:41','2019-02-09 12:49:41','0.18'),
(51,'aaa','教育','500000','533333.3333333334','2019-01-09 13:02:30','2019-05-09 13:02:30','0.2'),
(58,'aaa','教育','5000','5333.333333333333','2019-01-09 13:12:50','2019-05-09 13:12:50','0.2'),
(59,'tommy','医疗','1000','1150','2019-01-09 13:40:22','2020-01-09 13:40:22','0.15'),
(60,'tommy','希望小学','100000','118000','2019-01-09 15:24:47','2020-07-09 15:24:47','0.12');

/*Table structure for table `loan` */

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `b_contractid` bigint(100) NOT NULL AUTO_INCREMENT,
  `b_account` varchar(100) DEFAULT NULL,
  `b_starttime` varchar(100) NOT NULL,
  `b_endtime` varchar(100) NOT NULL,
  `b_totalmoney` varchar(100) DEFAULT NULL,
  `b_rate` varchar(100) DEFAULT NULL,
  `b_type` varchar(100) DEFAULT NULL,
  `b_status` int(10) DEFAULT NULL,
  `b_reason` varchar(100) DEFAULT NULL,
  `b_money` double DEFAULT NULL,
  PRIMARY KEY (`b_contractid`,`b_starttime`,`b_endtime`)
) ENGINE=InnoDB AUTO_INCREMENT=20181022 DEFAULT CHARSET=utf8;

/*Data for the table `loan` */

insert  into `loan`(`b_contractid`,`b_account`,`b_starttime`,`b_endtime`,`b_totalmoney`,`b_rate`,`b_type`,`b_status`,`b_reason`,`b_money`) values 
(20181001,'王浪浪','','','35200','0.1','A',1,'',251620),
(20181002,'呲呲','','','14564','0.2','B',0,'',25623),
(20181003,'替替','0206','0306','13265','0.3','A',1,NULL,3625),
(20181004,'王浪','2019-01-01','2019-01-02','5007.5','0.0015','B',1,'',5000),
(20181005,'黄鹤楼','2018-12-30','2019-01-01','3000','0.2','A',1,'敖德萨所多',1000),
(20181006,'中华','','','3000','0.2','A',1,'asd',1000),
(20181007,'aaa','2018-01-01','2018-12-12','0','0.1','A',2,'qwer',2000),
(20181008,'aaa','2018-01-01','2018-01-01','-19000.0','0.01','a',1,'qwqe',200),
(20181009,'aaa','2018-01-01','2018-01-01','0','0.88','a',2,'爱谁谁',888),
(20181011,'哈哈哈','2019-01-15','2019-01-17','12','12','12',1,'',12),
(20181012,'','2019-01-10','2019-01-18','50450','0.0010','B',1,'',50000),
(20181013,'王麻子','2019-01-08','2019-01-16','5045','0.0010','B',1,'',5000),
(20181014,'王麻子','2019-01-09','2019-01-24','30720','0.0015','B',0,NULL,30000),
(20181015,'王麻子','2019-01-09','2019-01-31','104600','0.0020','C',0,NULL,100000),
(20181016,'ccc','2019-01-09','2019-01-17','67865.988','0.0020','B',0,NULL,66666),
(20181017,'aaa','2019-01-08','2019-01-31','18870.0','0.0010','A',0,NULL,10000),
(20181018,'aaa','2019-01-21','2019-02-21','18870.0','0.0010','A',0,NULL,10000),
(20181019,'123456','2019-01-10','2019-01-31','5110','0.0010','A',0,'',5000),
(20181020,'101','2019-01-10','2019-01-31','5110','0.0010','教育',0,NULL,5000),
(20181021,'sss','2019-01-10','2019-01-25','5086.096','0.0010','房产',0,NULL,5006);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `m_account` varchar(100) DEFAULT NULL,
  `m_pass` varchar(100) DEFAULT NULL,
  `m_status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `manager` */

insert  into `manager`(`m_account`,`m_pass`,`m_status`) values 
('tom','123456',0),
('jerry','456789',1);

/*Table structure for table `money` */

DROP TABLE IF EXISTS `money`;

CREATE TABLE `money` (
  `account` varchar(100) NOT NULL,
  `bal` int(100) DEFAULT NULL,
  PRIMARY KEY (`account`),
  CONSTRAINT `acc` FOREIGN KEY (`account`) REFERENCES `user` (`l_account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `money` */

insert  into `money`(`account`,`bal`) values 
('105',0),
('401945121',100000),
('401945129',100000),
('401945137',100000),
('401945139',100000),
('401945323',100000),
('401945332',100000),
('55555',0),
('aaa',625316),
('admin999',999),
('bbb',100000),
('ccc',100000),
('sss',100000),
('tommy',101010),
('张大',55000),
('李宁1号',0),
('王麻子',100000);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `p_id` int(50) DEFAULT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_did` int(50) DEFAULT NULL,
  `p_minprice` decimal(10,0) DEFAULT NULL,
  `p_maxprice` decimal(10,0) DEFAULT NULL,
  KEY `p_tid` (`p_did`),
  CONSTRAINT `p_tid` FOREIGN KEY (`p_did`) REFERENCES `ptype` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`p_id`,`p_name`,`p_did`,`p_minprice`,`p_maxprice`) values 
(1,'戴尔',2,3000,4000),
(2,'香蕉',1,20,30),
(3,'华为',3,1000,2000),
(4,'耐克',4,500,1000),
(5,'阿迪',4,400,8000),
(6,'联想',2,1000,3000),
(7,'小米',3,300,200),
(8,'红米',3,200,100),
(9,'榴莲',1,20,25),
(10,'苹果',1,10,15),
(11,'飞利浦',2,500,800),
(12,'西瓜',1,10,20),
(13,'彪马',4,600,1500),
(14,'李宁',4,100,300),
(15,'东芝',2,2000,6000);

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(300) DEFAULT NULL,
  `p_rate` varchar(300) DEFAULT NULL,
  `p_money` varchar(300) DEFAULT NULL,
  `p_time` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100018 DEFAULT CHARSET=utf8;

/*Data for the table `projects` */

insert  into `projects`(`p_id`,`p_name`,`p_rate`,`p_money`,`p_time`) values 
(100001,'教育','0.2','1000000','4'),
(100002,'房产','0.3','1500000','6'),
(100003,'医疗','0.15','1900000','12'),
(100004,'黄金投资','0.11','2000000','15'),
(100005,'企业融资','0.15','1200000','9'),
(100006,'学而思教育','0.18','1600000','1'),
(100007,'中公教育','0.15','3000000','24'),
(100008,'环保企业融资','0.1','1000000','6'),
(100016,'希望小学','0.12','500000','18'),
(100017,'医疗集团','0.13','1100000','3');

/*Table structure for table `ptype` */

DROP TABLE IF EXISTS `ptype`;

CREATE TABLE `ptype` (
  `t_id` int(50) NOT NULL,
  `t_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ptype` */

insert  into `ptype`(`t_id`,`t_name`) values 
(1,'水果'),
(2,'电脑'),
(3,'手机'),
(4,'鞋子');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `l_id` int(20) NOT NULL AUTO_INCREMENT,
  `l_account` varchar(100) DEFAULT NULL,
  `l_pass` varchar(100) NOT NULL,
  `l_tel` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `l_address` varchar(100) DEFAULT NULL,
  `l_idcard` varchar(100) DEFAULT NULL,
  `l_company` varchar(100) DEFAULT NULL,
  `l_otherinfor` varchar(100) DEFAULT NULL,
  `l_salary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`l_id`,`l_pass`),
  UNIQUE KEY `acc_u` (`l_account`),
  UNIQUE KEY `tel_u` (`l_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`l_id`,`l_account`,`l_pass`,`l_tel`,`l_name`,`l_address`,`l_idcard`,`l_company`,`l_otherinfor`,`l_salary`) values 
(1,'aaa','123','18012212132','张苏','喜马拉雅','210000000000000','红星','这就是简介','4234'),
(2,'401945137','123456','13475896458',NULL,NULL,NULL,NULL,NULL,NULL),
(6,'401945121','123456','13475896421',NULL,NULL,NULL,NULL,NULL,NULL),
(8,'401945129','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'401945323','123456','13456985467',NULL,NULL,NULL,NULL,NULL,NULL),
(11,'bbb','123',NULL,'王浪浪','天上人间','610125122112232236','天上人间','两位数发的所发生的该发生的','10000'),
(13,'401945332','123456','13456985457',NULL,NULL,NULL,NULL,NULL,NULL),
(14,'401945139','123456','13401111123',NULL,NULL,NULL,NULL,NULL,NULL),
(15,'王麻子','123456','13445285156','隔壁老王','北京','610125199112266654','东星','暹罗航空','10000'),
(17,'ccc','123456','135525555555','老王','asda','610222222222222222','大叔大婶多','阿斯顿发送到刚发的手感','10000'),
(18,'sss','123','111','张三','中国','123456789654785478','中软','asdasda','7000'),
(19,'没谁了','123456','147258369',NULL,NULL,NULL,NULL,NULL,NULL),
(20,'abcde','123456','17566666666','张三','碑林区文艺路','610111199210112111','法师法师','大萨达','6500'),
(21,'zhangsan','123456','1854521421425','刘鑫','小寨路街道','610110199210214421','赛格','1dsad','6330'),
(22,'tommy','123456','152121313551','汤米','的说法都是','410111196311215412','打算','12asda','6200'),
(24,'王五','123','123',NULL,NULL,NULL,NULL,NULL,NULL),
(25,'','','',NULL,NULL,NULL,NULL,NULL,NULL),
(34,'401945123','123456','12345685471',NULL,NULL,NULL,NULL,NULL,NULL),
(35,'123456','123456','12345685472','张三','中国','123456789654785478','中软','不给你说','7000'),
(48,'12323','123456','12453215456','张三','中国','123456789123456789','中软','暂无','710000'),
(49,'00000','123','11',NULL,NULL,NULL,NULL,NULL,NULL),
(51,'101','123','101','张三','中国','123456789654785478','中软','哈哈哈','7000'),
(55,'张大','123456','123455','打算','打撒所多','610125122112222236','奥术大师多','奥术大师大','1000'),
(56,'102','123','13401111156','张三','中国','123456789654785423','中软','ewe','7000'),
(58,'104','123','13401111128','张三','中国','123456789654785498','中软','sdeasda','7000'),
(59,'55555','123','12',NULL,NULL,NULL,NULL,NULL,NULL),
(60,'admin666','123','18298989898',NULL,NULL,NULL,NULL,NULL,NULL),
(61,'105','123','13401111',NULL,NULL,NULL,NULL,NULL,NULL),
(63,'admin999','123','18298989896','张三','西安','210000000000000','红星','无','5000'),
(67,'李宁1号','123','185',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
