
#in MAC
brew install mysql

mysql.server start

mysql -u root -p

create database shopping;

use shopping;
	
CREATE TABLE `product` (
  `product_id` varchar(36) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` decimal(15,3) DEFAULT NULL,
  `product_type` varchar(6) DEFAULT NULL,
  `product_status` varchar(2) DEFAULT NULL,
  `product_count` int(10) DEFAULT NULL,
  `product_discount` decimal(3,2) DEFAULT NULL,
  `product_image` varchar(1000) DEFAULT NULL,
  `product_remark` varchar(1000) DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table product;

INSERT INTO `users` VALUES ('01', 'Rock01', '33', 'JinzhongRoad' );
delete from users where id='01';
UPDATE users t set user_name='Rock', password='fuck' where t.user_id in ('01','2') and t.user_name='Rock01';