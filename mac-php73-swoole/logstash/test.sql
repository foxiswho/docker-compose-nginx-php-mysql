
CREATE DATABASE test  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `cat_id` int(11) NOT NULL DEFAULT '0' COMMENT '栏目',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌',
  `price` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '单价',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `content` text COMMENT '内容',
  PRIMARY KEY (`goods_id`),
  KEY `title` (`title`),
  KEY `cat_id` (`cat_id`),
  KEY `brand_id` (`brand_id`),
  KEY `price` (`price`),
  KEY `is_del` (`is_del`),
  KEY `is_open` (`is_open`),
  KEY `gmt_create` (`gmt_create`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `goods`
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('1', '爱他美Aptamil 儿童配方奶粉4段(36-72个月适用)800g(德国原装进口)', '1', '1', '185.000', '0', '1', '2018-03-12 11:29:37', '2018-03-12 11:29:43', '爱他美Aptamil 儿童配方奶粉4段(36-72个月适用)800g(德国原装进口)'), ('2', '澳洲爱他美Aptamil 金装婴幼儿奶粉3段(12个月以上)900g 新西兰原装进口', '1', '1', '126.000', '0', '1', '2018-03-12 11:30:27', '2018-03-12 11:30:27', '澳洲爱他美Aptamil 金装婴幼儿奶粉3段(12个月以上)900g 新西兰原装进口'), ('3', '澳洲爱他美Aptamil 金装婴幼儿奶粉2段(6-12个月)900g 新西兰原装进口', '1', '1', '145.000', '0', '1', '2018-03-12 11:30:52', '2018-03-12 11:30:52', '澳洲爱他美Aptamil 金装婴幼儿奶粉2段(6-12个月)900g 新西兰原装进口');
COMMIT; 