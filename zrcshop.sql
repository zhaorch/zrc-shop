/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : zrcshop

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2019-05-27 21:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('25', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('28', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('34', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 用户', '10', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 用户', '10', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 用户', '10', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 用户', '10', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 商品', '11', 'add_goods');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 商品', '11', 'change_goods');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 商品', '11', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 商品', '11', 'view_goods');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 商品类别', '12', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 商品类别', '12', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 商品类别', '12', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 商品类别', '12', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 热搜词', '13', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 热搜词', '13', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 热搜词', '13', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 热搜词', '13', 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 首页商品类别广告', '14', 'add_indexad');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 首页商品类别广告', '14', 'change_indexad');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 首页商品类别广告', '14', 'delete_indexad');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 首页商品类别广告', '14', 'view_indexad');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 商品图片', '15', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 商品图片', '15', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 商品图片', '15', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 商品图片', '15', 'view_goodsimage');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 品牌', '16', 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 品牌', '16', 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 品牌', '16', 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 品牌', '16', 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 轮播商品', '17', 'add_banner');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 轮播商品', '17', 'change_banner');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 轮播商品', '17', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 轮播商品', '17', 'view_banner');
INSERT INTO `auth_permission` VALUES ('69', 'Can add Token', '18', 'add_token');
INSERT INTO `auth_permission` VALUES ('70', 'Can change Token', '18', 'change_token');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete Token', '18', 'delete_token');
INSERT INTO `auth_permission` VALUES ('72', 'Can view Token', '18', 'view_token');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 短信验证码', '19', 'add_verifycode');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 短信验证码', '19', 'change_verifycode');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 短信验证码', '19', 'delete_verifycode');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 短信验证码', '19', 'view_verifycode');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('18', 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('17', 'goods', 'banner');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('12', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('16', 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES ('15', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('13', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('14', 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('19', 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-05-17 21:41:24.714171');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-05-17 21:41:25.765231');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-05-17 21:41:26.552928');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-05-17 21:41:29.867018');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-05-17 21:41:30.001835');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-05-17 21:41:30.233286');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-05-17 21:41:30.405152');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-05-17 21:41:30.442445');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-05-17 21:41:30.471128');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-05-17 21:41:30.495313');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-05-17 21:41:30.520648');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2019-05-17 21:41:31.333915');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2019-05-17 21:41:31.362997');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2019-05-17 21:41:32.153207');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2019-05-17 21:41:35.836178');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2019-05-17 21:41:36.965864');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2019-05-17 21:41:36.989868');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2019-05-17 21:41:37.186571');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0001_initial', '2019-05-17 21:41:38.048793');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0002_log', '2019-05-17 21:41:41.515348');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0003_auto_20160715_0100', '2019-05-17 21:41:43.160449');
INSERT INTO `django_migrations` VALUES ('22', 'authtoken', '0001_initial', '2019-05-18 08:44:49.307332');
INSERT INTO `django_migrations` VALUES ('23', 'authtoken', '0002_auto_20160226_1747', '2019-05-18 08:44:50.572889');
INSERT INTO `django_migrations` VALUES ('24', 'goods', '0001_initial', '2019-05-18 08:44:52.635260');
INSERT INTO `django_migrations` VALUES ('25', 'users', '0002_verifycode', '2019-05-18 12:20:53.425862');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('53', '', '新鲜水果甜蜜香脆单果约800克', '1', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2019-05-18 08:49:27.254462', '20');
INSERT INTO `goods_goods` VALUES ('54', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2019-05-18 08:49:27.527588', '7');
INSERT INTO `goods_goods` VALUES ('55', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2019-05-18 08:49:27.653121', '15');
INSERT INTO `goods_goods` VALUES ('56', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2019-05-18 08:49:27.728122', '20');
INSERT INTO `goods_goods` VALUES ('57', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2019-05-18 08:49:27.803389', '7');
INSERT INTO `goods_goods` VALUES ('58', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2019-05-18 08:49:27.903631', '21');
INSERT INTO `goods_goods` VALUES ('59', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2019-05-18 08:49:27.978602', '23');
INSERT INTO `goods_goods` VALUES ('60', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2019-05-18 08:49:28.053634', '7');
INSERT INTO `goods_goods` VALUES ('61', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2019-05-18 08:49:28.153709', '22');
INSERT INTO `goods_goods` VALUES ('62', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2019-05-18 08:49:28.236571', '20');
INSERT INTO `goods_goods` VALUES ('63', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2019-05-18 08:49:28.361738', '2');
INSERT INTO `goods_goods` VALUES ('64', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2019-05-18 08:49:28.436068', '7');
INSERT INTO `goods_goods` VALUES ('65', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2019-05-18 08:49:28.544312', '12');
INSERT INTO `goods_goods` VALUES ('66', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2019-05-18 08:49:28.661581', '21');
INSERT INTO `goods_goods` VALUES ('67', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2019-05-18 08:49:28.757517', '37');
INSERT INTO `goods_goods` VALUES ('68', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2019-05-18 08:49:28.820402', '36');
INSERT INTO `goods_goods` VALUES ('69', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2019-05-18 08:49:28.911387', '32');
INSERT INTO `goods_goods` VALUES ('70', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2019-05-18 08:49:28.961398', '29');
INSERT INTO `goods_goods` VALUES ('71', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2019-05-18 08:49:29.102892', '36');
INSERT INTO `goods_goods` VALUES ('72', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2019-05-18 08:49:29.177616', '30');
INSERT INTO `goods_goods` VALUES ('73', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2019-05-18 08:49:29.253576', '29');
INSERT INTO `goods_goods` VALUES ('74', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2019-05-18 08:49:29.428515', '36');
INSERT INTO `goods_goods` VALUES ('75', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2019-05-18 08:49:29.503174', '30');
INSERT INTO `goods_goods` VALUES ('76', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2019-05-18 08:49:29.578105', '31');
INSERT INTO `goods_goods` VALUES ('77', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2019-05-18 08:49:29.628197', '29');
INSERT INTO `goods_goods` VALUES ('78', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2019-05-18 08:49:29.678699', '25');
INSERT INTO `goods_goods` VALUES ('79', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '0', '2019-05-18 08:49:29.761382', '25');
INSERT INTO `goods_goods` VALUES ('80', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2019-05-18 08:49:29.811572', '30');
INSERT INTO `goods_goods` VALUES ('81', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2019-05-18 08:49:29.861543', '36');
INSERT INTO `goods_goods` VALUES ('82', '', '赣南脐橙特级果10斤装', '1', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2019-05-18 08:49:29.911510', '62');
INSERT INTO `goods_goods` VALUES ('83', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2019-05-18 08:49:29.970888', '66');
INSERT INTO `goods_goods` VALUES ('84', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2019-05-18 08:49:30.144552', '70');
INSERT INTO `goods_goods` VALUES ('85', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2019-05-18 08:49:30.253818', '58');
INSERT INTO `goods_goods` VALUES ('86', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2019-05-18 08:49:30.353249', '58');
INSERT INTO `goods_goods` VALUES ('87', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2019-05-18 08:49:30.428454', '62');
INSERT INTO `goods_goods` VALUES ('88', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2019-05-18 08:49:30.503690', '70');
INSERT INTO `goods_goods` VALUES ('89', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2019-05-18 08:49:30.553007', '74');
INSERT INTO `goods_goods` VALUES ('90', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2019-05-18 08:49:30.611650', '105');
INSERT INTO `goods_goods` VALUES ('91', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2019-05-18 08:49:30.661122', '103');
INSERT INTO `goods_goods` VALUES ('92', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201511/goods_img/49_P_1448162819889.jpg', '0', '0', '2019-05-18 08:49:30.711318', '102');
INSERT INTO `goods_goods` VALUES ('93', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2019-05-18 08:49:30.762119', '103');
INSERT INTO `goods_goods` VALUES ('94', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2019-05-18 08:49:30.812121', '106');
INSERT INTO `goods_goods` VALUES ('95', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2019-05-18 08:49:30.861460', '107');
INSERT INTO `goods_goods` VALUES ('96', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2019-05-18 08:49:30.911736', '104');
INSERT INTO `goods_goods` VALUES ('97', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2019-05-18 08:49:30.961846', '103');
INSERT INTO `goods_goods` VALUES ('98', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2019-05-18 08:49:31.011899', '51');
INSERT INTO `goods_goods` VALUES ('99', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2019-05-18 08:49:31.061405', '41');
INSERT INTO `goods_goods` VALUES ('100', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2019-05-18 08:49:31.111376', '56');
INSERT INTO `goods_goods` VALUES ('101', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2019-05-18 08:49:31.169343', '54');
INSERT INTO `goods_goods` VALUES ('102', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2019-05-18 08:49:31.245299', '55');
INSERT INTO `goods_goods` VALUES ('103', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '0', '2019-05-18 08:49:31.319442', '47');
INSERT INTO `goods_goods` VALUES ('104', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/29_P_1448947631994.jpg', '0', '0', '2019-05-18 08:49:31.411709', '41');

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`),
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES ('1', '生鲜食品', 'sxsp', '', '1', '1', '2019-05-18 08:46:44.328567', null);
INSERT INTO `goods_goodscategory` VALUES ('2', '精品肉类', 'jprl', '', '2', '0', '2019-05-18 08:46:44.422327', '1');
INSERT INTO `goods_goodscategory` VALUES ('3', '羊肉', 'yr', '', '3', '0', '2019-05-18 08:46:44.437934', '2');
INSERT INTO `goods_goodscategory` VALUES ('4', '禽类', 'ql', '', '3', '0', '2019-05-18 08:46:44.516055', '2');
INSERT INTO `goods_goodscategory` VALUES ('5', '猪肉', 'zr', '', '3', '0', '2019-05-18 08:46:44.547302', '2');
INSERT INTO `goods_goodscategory` VALUES ('6', '牛肉', 'nr', '', '3', '0', '2019-05-18 08:46:44.562976', '2');
INSERT INTO `goods_goodscategory` VALUES ('7', '海鲜水产', 'hxsc', '', '2', '0', '2019-05-18 08:46:44.594225', '1');
INSERT INTO `goods_goodscategory` VALUES ('8', '参鲍', 'cb', '', '3', '0', '2019-05-18 08:46:44.625474', '7');
INSERT INTO `goods_goodscategory` VALUES ('9', '鱼', 'yu', '', '3', '0', '2019-05-18 08:46:44.641098', '7');
INSERT INTO `goods_goodscategory` VALUES ('10', '虾', 'xia', '', '3', '0', '2019-05-18 08:46:44.672347', '7');
INSERT INTO `goods_goodscategory` VALUES ('11', '蟹/贝', 'xb', '', '3', '0', '2019-05-18 08:46:44.687973', '7');
INSERT INTO `goods_goodscategory` VALUES ('12', '蛋制品', 'dzp', '', '2', '0', '2019-05-18 08:46:44.719217', '1');
INSERT INTO `goods_goodscategory` VALUES ('13', '松花蛋/咸鸭蛋', 'xhd_xyd', '', '3', '0', '2019-05-18 08:46:44.750467', '12');
INSERT INTO `goods_goodscategory` VALUES ('14', '鸡蛋', 'jd', '', '3', '0', '2019-05-18 08:46:44.766090', '12');
INSERT INTO `goods_goodscategory` VALUES ('15', '叶菜类', 'ycl', '', '2', '0', '2019-05-18 08:46:44.797337', '1');
INSERT INTO `goods_goodscategory` VALUES ('16', '生菜', 'sc', '', '3', '0', '2019-05-18 08:46:44.812961', '15');
INSERT INTO `goods_goodscategory` VALUES ('17', '菠菜', 'bc', '', '3', '0', '2019-05-18 08:46:44.844209', '15');
INSERT INTO `goods_goodscategory` VALUES ('18', '圆椒', 'yj', '', '3', '0', '2019-05-18 08:46:44.875461', '15');
INSERT INTO `goods_goodscategory` VALUES ('19', '西兰花', 'xlh', '', '3', '0', '2019-05-18 08:46:44.891080', '15');
INSERT INTO `goods_goodscategory` VALUES ('20', '根茎类', 'gjl', '', '2', '0', '2019-05-18 08:46:44.922329', '1');
INSERT INTO `goods_goodscategory` VALUES ('21', '茄果类', 'qgl', '', '2', '0', '2019-05-18 08:46:44.937952', '1');
INSERT INTO `goods_goodscategory` VALUES ('22', '菌菇类', 'jgl', '', '2', '0', '2019-05-18 08:46:44.969200', '1');
INSERT INTO `goods_goodscategory` VALUES ('23', '进口生鲜', 'jksx', '', '2', '0', '2019-05-18 08:46:45.000447', '1');
INSERT INTO `goods_goodscategory` VALUES ('24', '酒水饮料', 'jsyl', '', '1', '1', '2019-05-18 08:46:45.016071', null);
INSERT INTO `goods_goodscategory` VALUES ('25', '白酒', 'bk', '', '2', '0', '2019-05-18 08:46:45.062943', '24');
INSERT INTO `goods_goodscategory` VALUES ('26', '五粮液', 'wly', '', '3', '0', '2019-05-18 08:46:45.094192', '25');
INSERT INTO `goods_goodscategory` VALUES ('27', '泸州老窖', 'lzlj', '', '3', '0', '2019-05-18 08:46:45.125385', '25');
INSERT INTO `goods_goodscategory` VALUES ('28', '茅台', 'mt', '', '3', '0', '2019-05-18 08:46:45.156687', '25');
INSERT INTO `goods_goodscategory` VALUES ('29', '葡萄酒', 'ptj', '', '2', '0', '2019-05-18 08:46:45.172310', '24');
INSERT INTO `goods_goodscategory` VALUES ('30', '洋酒', 'yj', '', '2', '0', '2019-05-18 08:46:45.203558', '24');
INSERT INTO `goods_goodscategory` VALUES ('31', '啤酒', 'pj', '', '2', '0', '2019-05-18 08:46:45.234753', '24');
INSERT INTO `goods_goodscategory` VALUES ('32', '其他酒品', 'qtjp', '', '2', '0', '2019-05-18 08:46:45.266053', '24');
INSERT INTO `goods_goodscategory` VALUES ('33', '其他品牌', 'qtpp', '', '3', '0', '2019-05-18 08:46:45.297302', '32');
INSERT INTO `goods_goodscategory` VALUES ('34', '黄酒', 'hj', '', '3', '0', '2019-05-18 08:46:45.328550', '32');
INSERT INTO `goods_goodscategory` VALUES ('35', '养生酒', 'ysj', '', '3', '0', '2019-05-18 08:46:45.359797', '32');
INSERT INTO `goods_goodscategory` VALUES ('36', '饮料/水', 'yls', '', '2', '0', '2019-05-18 08:46:45.375420', '24');
INSERT INTO `goods_goodscategory` VALUES ('37', '红酒', 'hj', '', '2', '0', '2019-05-18 08:46:45.406671', '24');
INSERT INTO `goods_goodscategory` VALUES ('38', '白兰地', 'bld', '', '3', '0', '2019-05-18 08:46:45.422293', '37');
INSERT INTO `goods_goodscategory` VALUES ('39', '威士忌', 'wsj', '', '3', '0', '2019-05-18 08:46:45.453539', '37');
INSERT INTO `goods_goodscategory` VALUES ('40', '粮油副食', '粮油副食', '', '1', '1', '2019-05-18 08:46:45.484788', null);
INSERT INTO `goods_goodscategory` VALUES ('41', '食用油', '食用油', '', '2', '0', '2019-05-18 08:46:45.516035', '40');
INSERT INTO `goods_goodscategory` VALUES ('42', '其他食用油', '其他食用油', '', '3', '0', '2019-05-18 08:46:45.531623', '41');
INSERT INTO `goods_goodscategory` VALUES ('43', '菜仔油', '菜仔油', '', '3', '0', '2019-05-18 08:46:45.562870', '41');
INSERT INTO `goods_goodscategory` VALUES ('44', '花生油', '花生油', '', '3', '0', '2019-05-18 08:46:45.578495', '41');
INSERT INTO `goods_goodscategory` VALUES ('45', '橄榄油', '橄榄油', '', '3', '0', '2019-05-18 08:46:45.609742', '41');
INSERT INTO `goods_goodscategory` VALUES ('46', '礼盒', '礼盒', '', '3', '0', '2019-05-18 08:46:45.625350', '41');
INSERT INTO `goods_goodscategory` VALUES ('47', '米面杂粮', '米面杂粮', '', '2', '0', '2019-05-18 08:46:45.656613', '40');
INSERT INTO `goods_goodscategory` VALUES ('48', '面粉/面条', '面粉/面条', '', '3', '0', '2019-05-18 08:46:45.672238', '47');
INSERT INTO `goods_goodscategory` VALUES ('49', '大米', '大米', '', '3', '0', '2019-05-18 08:46:45.703485', '47');
INSERT INTO `goods_goodscategory` VALUES ('50', '意大利面', '意大利面', '', '3', '0', '2019-05-18 08:46:45.719109', '47');
INSERT INTO `goods_goodscategory` VALUES ('51', '厨房调料', '厨房调料', '', '2', '0', '2019-05-18 08:46:45.734770', '40');
INSERT INTO `goods_goodscategory` VALUES ('52', '调味油/汁', '调味油/汁', '', '3', '0', '2019-05-18 08:46:45.766017', '51');
INSERT INTO `goods_goodscategory` VALUES ('53', '酱油/醋', '酱油/醋', '', '3', '0', '2019-05-18 08:46:45.781641', '51');
INSERT INTO `goods_goodscategory` VALUES ('54', '南北干货', '南北干货', '', '2', '0', '2019-05-18 08:46:45.812890', '40');
INSERT INTO `goods_goodscategory` VALUES ('55', '方便速食', '方便速食', '', '2', '0', '2019-05-18 08:46:45.828513', '40');
INSERT INTO `goods_goodscategory` VALUES ('56', '调味品', '调味品', '', '2', '0', '2019-05-18 08:46:45.859761', '40');
INSERT INTO `goods_goodscategory` VALUES ('57', '蔬菜水果', '蔬菜水果', '', '1', '1', '2019-05-18 08:46:45.891008', null);
INSERT INTO `goods_goodscategory` VALUES ('58', '有机蔬菜', '有机蔬菜', '', '2', '0', '2019-05-18 08:46:45.906633', '57');
INSERT INTO `goods_goodscategory` VALUES ('59', '西红柿', '西红柿', '', '3', '0', '2019-05-18 08:46:45.937884', '58');
INSERT INTO `goods_goodscategory` VALUES ('60', '韭菜', '韭菜', '', '3', '0', '2019-05-18 08:46:45.953502', '58');
INSERT INTO `goods_goodscategory` VALUES ('61', '青菜', '青菜', '', '3', '0', '2019-05-18 08:46:45.984752', '58');
INSERT INTO `goods_goodscategory` VALUES ('62', '精选蔬菜', '精选蔬菜', '', '2', '0', '2019-05-18 08:46:46.016001', '57');
INSERT INTO `goods_goodscategory` VALUES ('63', '甘蓝', '甘蓝', '', '3', '0', '2019-05-18 08:46:46.031623', '62');
INSERT INTO `goods_goodscategory` VALUES ('64', '胡萝卜', '胡萝卜', '', '3', '0', '2019-05-18 08:46:46.062871', '62');
INSERT INTO `goods_goodscategory` VALUES ('65', '黄瓜', '黄瓜', '', '3', '0', '2019-05-18 08:46:46.078490', '62');
INSERT INTO `goods_goodscategory` VALUES ('66', '进口水果', '进口水果', '', '2', '0', '2019-05-18 08:46:46.109740', '57');
INSERT INTO `goods_goodscategory` VALUES ('67', '火龙果', '火龙果', '', '3', '0', '2019-05-18 08:46:46.140987', '66');
INSERT INTO `goods_goodscategory` VALUES ('68', '菠萝蜜', '菠萝蜜', '', '3', '0', '2019-05-18 08:46:46.156609', '66');
INSERT INTO `goods_goodscategory` VALUES ('69', '奇异果', '奇异果', '', '3', '0', '2019-05-18 08:46:46.187857', '66');
INSERT INTO `goods_goodscategory` VALUES ('70', '国产水果', '国产水果', '', '2', '0', '2019-05-18 08:46:46.203485', '57');
INSERT INTO `goods_goodscategory` VALUES ('71', '水果礼盒', '水果礼盒', '', '3', '0', '2019-05-18 08:46:46.234731', '70');
INSERT INTO `goods_goodscategory` VALUES ('72', '苹果', '苹果', '', '3', '0', '2019-05-18 08:46:46.281600', '70');
INSERT INTO `goods_goodscategory` VALUES ('73', '雪梨', '雪梨', '', '3', '0', '2019-05-18 08:46:46.312848', '70');
INSERT INTO `goods_goodscategory` VALUES ('74', '休闲食品', '休闲食品', '', '1', '1', '2019-05-18 08:46:46.328472', null);
INSERT INTO `goods_goodscategory` VALUES ('75', '休闲零食', '休闲零食', '', '2', '0', '2019-05-18 08:46:46.359722', '74');
INSERT INTO `goods_goodscategory` VALUES ('76', '果冻', '果冻', '', '3', '0', '2019-05-18 08:46:46.390970', '75');
INSERT INTO `goods_goodscategory` VALUES ('77', '枣类', '枣类', '', '3', '0', '2019-05-18 08:46:46.422220', '75');
INSERT INTO `goods_goodscategory` VALUES ('78', '蜜饯', '蜜饯', '', '3', '0', '2019-05-18 08:46:46.469095', '75');
INSERT INTO `goods_goodscategory` VALUES ('79', '肉类零食', '肉类零食', '', '3', '0', '2019-05-18 08:46:46.500340', '75');
INSERT INTO `goods_goodscategory` VALUES ('80', '坚果炒货', '坚果炒货', '', '3', '0', '2019-05-18 08:46:46.515964', '75');
INSERT INTO `goods_goodscategory` VALUES ('81', '糖果', '糖果', '', '2', '0', '2019-05-18 08:46:46.547211', '74');
INSERT INTO `goods_goodscategory` VALUES ('82', '创意喜糖', '创意喜糖', '', '3', '0', '2019-05-18 08:46:46.562836', '81');
INSERT INTO `goods_goodscategory` VALUES ('83', '口香糖', '口香糖', '', '3', '0', '2019-05-18 08:46:46.594084', '81');
INSERT INTO `goods_goodscategory` VALUES ('84', '软糖', '软糖', '', '3', '0', '2019-05-18 08:46:46.625332', '81');
INSERT INTO `goods_goodscategory` VALUES ('85', '棒棒糖', '棒棒糖', '', '3', '0', '2019-05-18 08:46:46.656581', '81');
INSERT INTO `goods_goodscategory` VALUES ('86', '巧克力', '巧克力', '', '2', '0', '2019-05-18 08:46:46.672203', '74');
INSERT INTO `goods_goodscategory` VALUES ('87', '夹心巧克力', '夹心巧克力', '', '3', '0', '2019-05-18 08:46:46.703450', '86');
INSERT INTO `goods_goodscategory` VALUES ('88', '白巧克力', '白巧克力', '', '3', '0', '2019-05-18 08:46:46.734694', '86');
INSERT INTO `goods_goodscategory` VALUES ('89', '松露巧克力', '松露巧克力', '', '3', '0', '2019-05-18 08:46:46.750267', '86');
INSERT INTO `goods_goodscategory` VALUES ('90', '黑巧克力', '黑巧克力', '', '3', '0', '2019-05-18 08:46:46.781533', '86');
INSERT INTO `goods_goodscategory` VALUES ('91', '肉干肉脯/豆干', '肉干肉脯/豆干', '', '2', '0', '2019-05-18 08:46:46.797157', '74');
INSERT INTO `goods_goodscategory` VALUES ('92', '牛肉干', '牛肉干', '', '3', '0', '2019-05-18 08:46:46.828404', '91');
INSERT INTO `goods_goodscategory` VALUES ('93', '猪肉脯', '猪肉脯', '', '3', '0', '2019-05-18 08:46:46.859651', '91');
INSERT INTO `goods_goodscategory` VALUES ('94', '牛肉粒', '牛肉粒', '', '3', '0', '2019-05-18 08:46:46.875276', '91');
INSERT INTO `goods_goodscategory` VALUES ('95', '猪肉干', '猪肉干', '', '3', '0', '2019-05-18 08:46:46.906507', '91');
INSERT INTO `goods_goodscategory` VALUES ('96', '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', '2', '0', '2019-05-18 08:46:46.937771', '74');
INSERT INTO `goods_goodscategory` VALUES ('97', '鱿鱼足', '鱿鱼足', '', '3', '0', '2019-05-18 08:46:46.984681', '96');
INSERT INTO `goods_goodscategory` VALUES ('98', '鱿鱼丝', '鱿鱼丝', '', '3', '0', '2019-05-18 08:46:47.000305', '96');
INSERT INTO `goods_goodscategory` VALUES ('99', '墨鱼/乌贼', '墨鱼/乌贼', '', '3', '0', '2019-05-18 08:46:47.031552', '96');
INSERT INTO `goods_goodscategory` VALUES ('100', '鱿鱼仔', '鱿鱼仔', '', '3', '0', '2019-05-18 08:46:47.047176', '96');
INSERT INTO `goods_goodscategory` VALUES ('101', '鱿鱼片', '鱿鱼片', '', '3', '0', '2019-05-18 08:46:47.078424', '96');
INSERT INTO `goods_goodscategory` VALUES ('102', '奶类食品', '奶类食品', '', '1', '0', '2019-05-18 08:46:47.109634', null);
INSERT INTO `goods_goodscategory` VALUES ('103', '进口奶品', '进口奶品', '', '2', '0', '2019-05-18 08:46:47.125295', '102');
INSERT INTO `goods_goodscategory` VALUES ('104', '国产奶品', '国产奶品', '', '2', '0', '2019-05-18 08:46:47.156543', '102');
INSERT INTO `goods_goodscategory` VALUES ('105', '奶粉', '奶粉', '', '2', '0', '2019-05-18 08:46:47.172168', '102');
INSERT INTO `goods_goodscategory` VALUES ('106', '有机奶', '有机奶', '', '2', '0', '2019-05-18 08:46:47.203415', '102');
INSERT INTO `goods_goodscategory` VALUES ('107', '原料奶', '原料奶', '', '2', '0', '2019-05-18 08:46:47.234662', '102');
INSERT INTO `goods_goodscategory` VALUES ('108', '天然干货', '天然干货', '', '1', '0', '2019-05-18 08:46:47.281534', null);
INSERT INTO `goods_goodscategory` VALUES ('109', '菌菇类', '菌菇类', '', '2', '0', '2019-05-18 08:46:47.312782', '108');
INSERT INTO `goods_goodscategory` VALUES ('110', '腌干海产', '腌干海产', '', '2', '0', '2019-05-18 08:46:47.328406', '108');
INSERT INTO `goods_goodscategory` VALUES ('111', '汤料', '汤料', '', '2', '0', '2019-05-18 08:46:47.359653', '108');
INSERT INTO `goods_goodscategory` VALUES ('112', '豆类', '豆类', '', '2', '0', '2019-05-18 08:46:47.390901', '108');
INSERT INTO `goods_goodscategory` VALUES ('113', '干菜/菜干', '干菜/菜干', '', '2', '0', '2019-05-18 08:46:47.406525', '108');
INSERT INTO `goods_goodscategory` VALUES ('114', '干果/果干', '干果/果干', '', '2', '0', '2019-05-18 08:46:47.437773', '108');
INSERT INTO `goods_goodscategory` VALUES ('115', '豆制品', '豆制品', '', '2', '0', '2019-05-18 08:46:47.453398', '108');
INSERT INTO `goods_goodscategory` VALUES ('116', '腊味', '腊味', '', '2', '0', '2019-05-18 08:46:47.484645', '108');
INSERT INTO `goods_goodscategory` VALUES ('117', '精选茗茶', '精选茗茶', '', '1', '0', '2019-05-18 08:46:47.515893', null);
INSERT INTO `goods_goodscategory` VALUES ('118', '白茶', '白茶', '', '2', '0', '2019-05-18 08:46:47.531515', '117');
INSERT INTO `goods_goodscategory` VALUES ('119', '红茶', '红茶', '', '2', '0', '2019-05-18 08:46:47.562763', '117');
INSERT INTO `goods_goodscategory` VALUES ('120', '绿茶', '绿茶', '', '2', '0', '2019-05-18 08:46:47.578387', '117');

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES ('92', 'goods/images/1_P_1449024889889.jpg', '2019-05-18 08:49:27.311626', '53');
INSERT INTO `goods_goodsimage` VALUES ('93', 'goods/images/1_P_1449024889264.jpg', '2019-05-18 08:49:27.360683', '53');
INSERT INTO `goods_goodsimage` VALUES ('94', 'goods/images/1_P_1449024889726.jpg', '2019-05-18 08:49:27.394663', '53');
INSERT INTO `goods_goodsimage` VALUES ('95', 'goods/images/1_P_1449024889018.jpg', '2019-05-18 08:49:27.427640', '53');
INSERT INTO `goods_goodsimage` VALUES ('96', 'goods/images/1_P_1449024889287.jpg', '2019-05-18 08:49:27.478597', '53');
INSERT INTO `goods_goodsimage` VALUES ('97', 'goods/images/2_P_1448945810202.jpg', '2019-05-18 08:49:27.569564', '54');
INSERT INTO `goods_goodsimage` VALUES ('98', 'goods/images/2_P_1448945810814.jpg', '2019-05-18 08:49:27.627976', '54');
INSERT INTO `goods_goodsimage` VALUES ('99', 'goods/images/7_P_1448945104883.jpg', '2019-05-18 08:49:27.678053', '55');
INSERT INTO `goods_goodsimage` VALUES ('100', 'goods/images/7_P_1448945104734.jpg', '2019-05-18 08:49:27.703600', '55');
INSERT INTO `goods_goodsimage` VALUES ('101', 'goods/images/47_P_1448946213263.jpg', '2019-05-18 08:49:27.753417', '56');
INSERT INTO `goods_goodsimage` VALUES ('102', 'goods/images/47_P_1448946213157.jpg', '2019-05-18 08:49:27.778417', '56');
INSERT INTO `goods_goodsimage` VALUES ('103', 'goods/images/10_P_1448944572085.jpg', '2019-05-18 08:49:27.828384', '57');
INSERT INTO `goods_goodsimage` VALUES ('104', 'goods/images/10_P_1448944572532.jpg', '2019-05-18 08:49:27.853388', '57');
INSERT INTO `goods_goodsimage` VALUES ('105', 'goods/images/10_P_1448944572872.jpg', '2019-05-18 08:49:27.878388', '57');
INSERT INTO `goods_goodsimage` VALUES ('106', 'goods/images/4_P_1448945381985.jpg', '2019-05-18 08:49:27.927860', '58');
INSERT INTO `goods_goodsimage` VALUES ('107', 'goods/images/4_P_1448945381013.jpg', '2019-05-18 08:49:27.953455', '58');
INSERT INTO `goods_goodsimage` VALUES ('108', 'goods/images/8_P_1448945032810.jpg', '2019-05-18 08:49:28.003571', '59');
INSERT INTO `goods_goodsimage` VALUES ('109', 'goods/images/8_P_1448945032646.jpg', '2019-05-18 08:49:28.028092', '59');
INSERT INTO `goods_goodsimage` VALUES ('110', 'goods/images/11_P_1448944388277.jpg', '2019-05-18 08:49:28.077662', '60');
INSERT INTO `goods_goodsimage` VALUES ('111', 'goods/images/11_P_1448944388034.jpg', '2019-05-18 08:49:28.103828', '60');
INSERT INTO `goods_goodsimage` VALUES ('112', 'goods/images/11_P_1448944388201.jpg', '2019-05-18 08:49:28.127957', '60');
INSERT INTO `goods_goodsimage` VALUES ('113', 'goods/images/6_P_1448945167279.jpg', '2019-05-18 08:49:28.178343', '61');
INSERT INTO `goods_goodsimage` VALUES ('114', 'goods/images/6_P_1448945167015.jpg', '2019-05-18 08:49:28.211578', '61');
INSERT INTO `goods_goodsimage` VALUES ('115', 'goods/images/9_P_1448944791617.jpg', '2019-05-18 08:49:28.261812', '62');
INSERT INTO `goods_goodsimage` VALUES ('116', 'goods/images/9_P_1448944791129.jpg', '2019-05-18 08:49:28.286692', '62');
INSERT INTO `goods_goodsimage` VALUES ('117', 'goods/images/9_P_1448944791077.jpg', '2019-05-18 08:49:28.312093', '62');
INSERT INTO `goods_goodsimage` VALUES ('118', 'goods/images/9_P_1448944791229.jpg', '2019-05-18 08:49:28.336502', '62');
INSERT INTO `goods_goodsimage` VALUES ('119', 'goods/images/3_P_1448945490837.jpg', '2019-05-18 08:49:28.386723', '63');
INSERT INTO `goods_goodsimage` VALUES ('120', 'goods/images/3_P_1448945490084.jpg', '2019-05-18 08:49:28.412007', '63');
INSERT INTO `goods_goodsimage` VALUES ('121', 'goods/images/48_P_1448943988970.jpg', '2019-05-18 08:49:28.470124', '64');
INSERT INTO `goods_goodsimage` VALUES ('122', 'goods/images/48_P_1448943988898.jpg', '2019-05-18 08:49:28.494394', '64');
INSERT INTO `goods_goodsimage` VALUES ('123', 'goods/images/48_P_1448943988439.jpg', '2019-05-18 08:49:28.520154', '64');
INSERT INTO `goods_goodsimage` VALUES ('124', 'goods/images/5_P_1448945270390.jpg', '2019-05-18 08:49:28.569621', '65');
INSERT INTO `goods_goodsimage` VALUES ('125', 'goods/images/5_P_1448945270067.jpg', '2019-05-18 08:49:28.594611', '65');
INSERT INTO `goods_goodsimage` VALUES ('126', 'goods/images/5_P_1448945270432.jpg', '2019-05-18 08:49:28.627591', '65');
INSERT INTO `goods_goodsimage` VALUES ('127', 'images/201705/goods_img/53_P_1495068879687.jpg', '2019-05-18 08:49:28.702558', '66');
INSERT INTO `goods_goodsimage` VALUES ('128', 'goods/images/16_P_1448947194687.jpg', '2019-05-18 08:49:28.799493', '67');
INSERT INTO `goods_goodsimage` VALUES ('129', 'goods/images/14_P_1448947354031.jpg', '2019-05-18 08:49:28.844375', '68');
INSERT INTO `goods_goodsimage` VALUES ('130', 'goods/images/14_P_1448947354433.jpg', '2019-05-18 08:49:28.870376', '68');
INSERT INTO `goods_goodsimage` VALUES ('131', 'goods/images/12_P_1448947547989.jpg', '2019-05-18 08:49:28.936387', '69');
INSERT INTO `goods_goodsimage` VALUES ('132', 'goods/images/46_P_1448946598711.jpg', '2019-05-18 08:49:29.053421', '70');
INSERT INTO `goods_goodsimage` VALUES ('133', 'goods/images/46_P_1448946598301.jpg', '2019-05-18 08:49:29.077486', '70');
INSERT INTO `goods_goodsimage` VALUES ('134', 'goods/images/21_P_1448946793276.jpg', '2019-05-18 08:49:29.128145', '71');
INSERT INTO `goods_goodsimage` VALUES ('135', 'goods/images/21_P_1448946793153.jpg', '2019-05-18 08:49:29.153514', '71');
INSERT INTO `goods_goodsimage` VALUES ('136', 'goods/images/15_P_1448947257324.jpg', '2019-05-18 08:49:29.203437', '72');
INSERT INTO `goods_goodsimage` VALUES ('137', 'goods/images/15_P_1448947257580.jpg', '2019-05-18 08:49:29.228195', '72');
INSERT INTO `goods_goodsimage` VALUES ('138', 'goods/images/13_P_1448947460386.jpg', '2019-05-18 08:49:29.278127', '73');
INSERT INTO `goods_goodsimage` VALUES ('139', 'goods/images/13_P_1448947460276.jpg', '2019-05-18 08:49:29.378512', '73');
INSERT INTO `goods_goodsimage` VALUES ('140', 'goods/images/13_P_1448947460353.jpg', '2019-05-18 08:49:29.403004', '73');
INSERT INTO `goods_goodsimage` VALUES ('141', 'goods/images/50_P_1448946543091.jpg', '2019-05-18 08:49:29.453124', '74');
INSERT INTO `goods_goodsimage` VALUES ('142', 'goods/images/50_P_1448946542182.jpg', '2019-05-18 08:49:29.478336', '74');
INSERT INTO `goods_goodsimage` VALUES ('143', 'goods/images/51_P_1448946466595.jpg', '2019-05-18 08:49:29.528561', '75');
INSERT INTO `goods_goodsimage` VALUES ('144', 'goods/images/51_P_1448946466208.jpg', '2019-05-18 08:49:29.552676', '75');
INSERT INTO `goods_goodsimage` VALUES ('145', 'goods/images/17_P_1448947102246.jpg', '2019-05-18 08:49:29.603249', '76');
INSERT INTO `goods_goodsimage` VALUES ('146', 'goods/images/20_P_1448946850602.jpg', '2019-05-18 08:49:29.653362', '77');
INSERT INTO `goods_goodsimage` VALUES ('147', 'goods/images/19_P_1448946951581.jpg', '2019-05-18 08:49:29.703510', '78');
INSERT INTO `goods_goodsimage` VALUES ('148', 'goods/images/19_P_1448946951726.jpg', '2019-05-18 08:49:29.728180', '78');
INSERT INTO `goods_goodsimage` VALUES ('149', 'goods/images/18_P_1448947011435.jpg', '2019-05-18 08:49:29.786415', '79');
INSERT INTO `goods_goodsimage` VALUES ('150', 'goods/images/22_P_1448946729629.jpg', '2019-05-18 08:49:29.836557', '80');
INSERT INTO `goods_goodsimage` VALUES ('151', 'goods/images/45_P_1448946661303.jpg', '2019-05-18 08:49:29.886523', '81');
INSERT INTO `goods_goodsimage` VALUES ('152', 'goods/images/32_P_1448948525620.jpg', '2019-05-18 08:49:29.936500', '82');
INSERT INTO `goods_goodsimage` VALUES ('153', 'goods/images/30_P_1448948663450.jpg', '2019-05-18 08:49:30.011880', '83');
INSERT INTO `goods_goodsimage` VALUES ('154', 'goods/images/30_P_1448948662571.jpg', '2019-05-18 08:49:30.057922', '83');
INSERT INTO `goods_goodsimage` VALUES ('155', 'goods/images/30_P_1448948663221.jpg', '2019-05-18 08:49:30.103364', '83');
INSERT INTO `goods_goodsimage` VALUES ('156', 'goods/images/31_P_1448948598947.jpg', '2019-05-18 08:49:30.178721', '84');
INSERT INTO `goods_goodsimage` VALUES ('157', 'goods/images/31_P_1448948598475.jpg', '2019-05-18 08:49:30.211624', '84');
INSERT INTO `goods_goodsimage` VALUES ('158', 'goods/images/35_P_1448948333610.jpg', '2019-05-18 08:49:30.303370', '85');
INSERT INTO `goods_goodsimage` VALUES ('159', 'goods/images/35_P_1448948333313.jpg', '2019-05-18 08:49:30.328959', '85');
INSERT INTO `goods_goodsimage` VALUES ('160', 'goods/images/36_P_1448948234405.jpg', '2019-05-18 08:49:30.378247', '86');
INSERT INTO `goods_goodsimage` VALUES ('161', 'goods/images/36_P_1448948234250.jpg', '2019-05-18 08:49:30.403302', '86');
INSERT INTO `goods_goodsimage` VALUES ('162', 'goods/images/33_P_1448948479966.jpg', '2019-05-18 08:49:30.453415', '87');
INSERT INTO `goods_goodsimage` VALUES ('163', 'goods/images/33_P_1448948479886.jpg', '2019-05-18 08:49:30.478770', '87');
INSERT INTO `goods_goodsimage` VALUES ('164', 'goods/images/34_P_1448948399009.jpg', '2019-05-18 08:49:30.528922', '88');
INSERT INTO `goods_goodsimage` VALUES ('165', 'goods/images/43_P_1448948762645.jpg', '2019-05-18 08:49:30.587174', '89');
INSERT INTO `goods_goodsimage` VALUES ('166', 'goods/images/38_P_1448949220255.jpg', '2019-05-18 08:49:30.636935', '90');
INSERT INTO `goods_goodsimage` VALUES ('167', 'goods/images/44_P_1448948850187.jpg', '2019-05-18 08:49:30.687266', '91');
INSERT INTO `goods_goodsimage` VALUES ('168', 'images/201511/goods_img/49_P_1448162819889.jpg', '2019-05-18 08:49:30.736683', '92');
INSERT INTO `goods_goodsimage` VALUES ('169', 'goods/images/40_P_1448949038702.jpg', '2019-05-18 08:49:30.787110', '93');
INSERT INTO `goods_goodsimage` VALUES ('170', 'goods/images/39_P_1448949115481.jpg', '2019-05-18 08:49:30.837408', '94');
INSERT INTO `goods_goodsimage` VALUES ('171', 'goods/images/41_P_1448948980358.jpg', '2019-05-18 08:49:30.887208', '95');
INSERT INTO `goods_goodsimage` VALUES ('172', 'goods/images/37_P_1448949284365.jpg', '2019-05-18 08:49:30.936847', '96');
INSERT INTO `goods_goodsimage` VALUES ('173', 'goods/images/42_P_1448948895193.jpg', '2019-05-18 08:49:30.986743', '97');
INSERT INTO `goods_goodsimage` VALUES ('174', 'goods/images/27_P_1448947771805.jpg', '2019-05-18 08:49:31.037211', '98');
INSERT INTO `goods_goodsimage` VALUES ('175', 'goods/images/23_P_1448948070348.jpg', '2019-05-18 08:49:31.091398', '99');
INSERT INTO `goods_goodsimage` VALUES ('176', 'goods/images/26_P_1448947825754.jpg', '2019-05-18 08:49:31.145360', '100');
INSERT INTO `goods_goodsimage` VALUES ('177', 'goods/images/28_P_1448947699948.jpg', '2019-05-18 08:49:31.191330', '101');
INSERT INTO `goods_goodsimage` VALUES ('178', 'goods/images/28_P_1448947699777.jpg', '2019-05-18 08:49:31.219314', '101');
INSERT INTO `goods_goodsimage` VALUES ('179', 'goods/images/24_P_1448948023823.jpg', '2019-05-18 08:49:31.269285', '102');
INSERT INTO `goods_goodsimage` VALUES ('180', 'goods/images/24_P_1448948023977.jpg', '2019-05-18 08:49:31.295313', '102');
INSERT INTO `goods_goodsimage` VALUES ('181', 'goods/images/25_P_1448947875346.jpg', '2019-05-18 08:49:31.362517', '103');
INSERT INTO `goods_goodsimage` VALUES ('182', 'goods/images/29_P_1448947631994.jpg', '2019-05-18 08:49:31.450160', '104');

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$j09V9HUXB9NE$XFNlKm0/mRqkyjHuJIujcnrAhXo0a61UfMNKjG+YtGw=', '2019-05-19 11:21:59.313765', '1', 'admin', '', '', '1', '1', '2019-05-17 21:42:21.119214', null, null, 'female', null, 'admin@163.com');
INSERT INTO `users_userprofile` VALUES ('4', 'pbkdf2_sha256$150000$sgjZ3bvLZtqf$i5u1n/uKAtQ4DiLB7nnUxujQCbH71xu0WKOCrlQPOmA=', null, '0', '13810241111', '', '', '0', '1', '2019-05-18 12:49:52.559571', null, null, 'female', '13810241111', null);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------
INSERT INTO `users_verifycode` VALUES ('1', '1111', '13810241111', '2019-05-18 12:49:00.000000');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2019-05-18 12:32:38.910064', '127.0.0.1', '1', '1111', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2019-05-18 12:41:31.833336', '127.0.0.1', '1', '1111', 'change', '修改 add_time', '19', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2019-05-18 12:49:10.777896', '127.0.0.1', '1', '1111', 'change', '修改 add_time', '19', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
