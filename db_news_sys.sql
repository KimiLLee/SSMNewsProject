/*
 Navicat Premium Data Transfer

 Source Server         : MYSQLConnect
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : db_news_sys

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 06/12/2020 19:06:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 352 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (283, 1, 22);
INSERT INTO `authority` VALUES (284, 1, 47);
INSERT INTO `authority` VALUES (285, 1, 1);
INSERT INTO `authority` VALUES (286, 1, 23);
INSERT INTO `authority` VALUES (287, 1, 48);
INSERT INTO `authority` VALUES (288, 1, 5);
INSERT INTO `authority` VALUES (289, 1, 35);
INSERT INTO `authority` VALUES (290, 1, 49);
INSERT INTO `authority` VALUES (291, 1, 17);
INSERT INTO `authority` VALUES (292, 1, 36);
INSERT INTO `authority` VALUES (293, 1, 18);
INSERT INTO `authority` VALUES (294, 1, 14);
INSERT INTO `authority` VALUES (295, 1, 19);
INSERT INTO `authority` VALUES (296, 1, 15);
INSERT INTO `authority` VALUES (297, 1, 20);
INSERT INTO `authority` VALUES (298, 1, 24);
INSERT INTO `authority` VALUES (299, 1, 13);
INSERT INTO `authority` VALUES (300, 1, 25);
INSERT INTO `authority` VALUES (301, 1, 21);
INSERT INTO `authority` VALUES (302, 1, 26);
INSERT INTO `authority` VALUES (303, 1, 22);
INSERT INTO `authority` VALUES (304, 1, 31);
INSERT INTO `authority` VALUES (305, 1, 23);
INSERT INTO `authority` VALUES (306, 1, 32);
INSERT INTO `authority` VALUES (307, 1, 35);
INSERT INTO `authority` VALUES (308, 1, 33);
INSERT INTO `authority` VALUES (309, 1, 36);
INSERT INTO `authority` VALUES (310, 1, 34);
INSERT INTO `authority` VALUES (311, 1, 14);
INSERT INTO `authority` VALUES (312, 1, 37);
INSERT INTO `authority` VALUES (313, 1, 15);
INSERT INTO `authority` VALUES (314, 1, 38);
INSERT INTO `authority` VALUES (315, 1, 24);
INSERT INTO `authority` VALUES (316, 1, 39);
INSERT INTO `authority` VALUES (317, 1, 25);
INSERT INTO `authority` VALUES (318, 1, 40);
INSERT INTO `authority` VALUES (319, 1, 26);
INSERT INTO `authority` VALUES (320, 1, 41);
INSERT INTO `authority` VALUES (321, 1, 31);
INSERT INTO `authority` VALUES (322, 1, 42);
INSERT INTO `authority` VALUES (323, 1, 32);
INSERT INTO `authority` VALUES (324, 1, 43);
INSERT INTO `authority` VALUES (325, 1, 33);
INSERT INTO `authority` VALUES (326, 1, 44);
INSERT INTO `authority` VALUES (327, 1, 34);
INSERT INTO `authority` VALUES (328, 1, 45);
INSERT INTO `authority` VALUES (329, 1, 37);
INSERT INTO `authority` VALUES (330, 1, 46);
INSERT INTO `authority` VALUES (331, 1, 38);
INSERT INTO `authority` VALUES (332, 1, 47);
INSERT INTO `authority` VALUES (333, 1, 39);
INSERT INTO `authority` VALUES (334, 1, 48);
INSERT INTO `authority` VALUES (335, 1, 40);
INSERT INTO `authority` VALUES (336, 1, 49);
INSERT INTO `authority` VALUES (337, 1, 41);
INSERT INTO `authority` VALUES (338, 1, 42);
INSERT INTO `authority` VALUES (339, 1, 43);
INSERT INTO `authority` VALUES (340, 1, 44);
INSERT INTO `authority` VALUES (341, 1, 45);
INSERT INTO `authority` VALUES (342, 1, 46);
INSERT INTO `authority` VALUES (343, 1, 47);
INSERT INTO `authority` VALUES (344, 1, 48);
INSERT INTO `authority` VALUES (345, 1, 49);
INSERT INTO `authority` VALUES (346, 2, 35);
INSERT INTO `authority` VALUES (347, 2, 36);
INSERT INTO `authority` VALUES (348, 2, 25);
INSERT INTO `authority` VALUES (349, 2, 1);
INSERT INTO `authority` VALUES (350, 2, 14);
INSERT INTO `authority` VALUES (351, 2, 15);

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `newsId`(`newsId`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`newsId`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------


-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES (5, 1, '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES (13, 1, '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES (14, 0, '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (31, 0, '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES (32, 31, '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES (33, 32, '添加日志', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES (37, 0, '新闻管理', '', 'icon-feed');
INSERT INTO `menu` VALUES (38, 37, '分类管理', '../admin/news_category/list', 'icon-feed-star');
INSERT INTO `menu` VALUES (39, 38, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (40, 38, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (41, 38, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (42, 37, '新闻管理', '../admin/news/list', 'icon-feed-edit');
INSERT INTO `menu` VALUES (43, 42, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (44, 42, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (45, 42, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (46, 37, '评论管理', '../admin/comment/list', 'icon-comment');
INSERT INTO `menu` VALUES (47, 46, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (48, 46, '编辑', 'openEdit()', 'icon-edit');
INSERT INTO `menu` VALUES (49, 46, '删除', 'remove()', 'icon-cross');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `abstrs` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `viewNumber` int(8) NOT NULL DEFAULT 0,
  `commentNumber` int(5) NOT NULL DEFAULT 0,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categoryId`(`categoryId`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (3, 5, '冬季到上海来看企鹅生蛋，海昌海洋公园极地冰雪节开幕', '新民晚报讯（记者 孙云）冬季到上海不一定能看到雪，不过可以看到企鹅生蛋和破壳孵化哦。今天上午，上海海昌海洋公园开启极地冰雪节活动，时间将持续至2019年2月19日元宵节。', '旅游,海洋公园', '/News/resources/upload/1545466407090.jpg', 'JY', '<p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/News/resources/upload/image/20181222/1545466366683047203.jpg\" id=\"http://img.xinmin.cn/xmwb/2018/12/NEM1_20181222_C0323531856_A1440090.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><em style=\"box-sizing: border-box;\">图说：今天上午上海海昌海洋公园开启极地冰雪节活动 孙云 摄</em></p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　新民晚报讯（记者 孙云）冬季到上海不一定能看到雪，不过可以看到企鹅生蛋和破壳孵化哦。今天上午，上海海昌海洋公园开启极地冰雪节活动，时间将持续至2019年2月19日元宵节。时值冬季，初来乍到上海做客的企鹅们已进入繁殖季节，很快，上海海昌海洋公园就将迎来第一批新生企鹅宝宝，游客将在企鹅生蛋科普展上目睹企鹅从蛋中破壳而出的惊喜时刻。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　今天上午，具有“冰雪公主”之称的自由式滑雪世界冠军李妮娜受聘“上海海昌海洋公园·极地冰雪节”爱心大使，与海豚、虎鲸、企鹅等极地海洋动物们进行了亲密互动。极地冰雪节期间，海昌海洋公园将推出海洋大马戏、海洋动物大拜年等系列主题活动，并推出门票特惠：2018年12月17日-2019年1月1日期间，平日标准票为279 元/张，优待票为150 元/张；高峰日标准票为316 元/张，优待票为200 元/张。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　元旦小长假期间，上海海昌海洋公园还将首度开放夜场模式，运营时间延长至晚上8时30分，并开售价格从150元起的“星光夜场票”。游客在观赏夜晚极地海洋动物生活状态的同时，更可感受星空下海洋梦幻花车巡游的独特魅力。</p><p><br/></p>', 3, 2, '2018-12-22 16:13:40');
INSERT INTO `news` VALUES (4, 10, '车王苏醒？迈克尔·舒马赫病情现好转', '据外媒报道，已经“昏迷”5年的7届F1世界冠军迈克尔·舒马赫情况出现好转，已经不是“卧床不起或依靠插管维持生命”了，但仍需接受护理与治疗。', '国际新闻', '/News/resources/upload/1545467059497.jpg', 'JY', '<p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g29/M03/D9/DB/autohomecar__ChsEflwYsxCAC5OOAAN0URxCV40644.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039326011486.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　2013年12月，当迈克尔·舒马赫和儿子米克在法国阿尔卑斯山滑雪时，这位备受瞩目的F1世界冠军不幸遭受重伤，之后一直处于昏迷状态。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g26/M05/D7/6A/autohomecar__ChsEe1wYsgyAVNoTAARdy0DD2vw456.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039543003803.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　由于此前早些时候，迈克尔·舒马赫一直有“从公共视线中隐去”的想法，所以他的家人一直对他状况保持缄默，也让大批车迷对他的健康状况一无所知。而舒马克一直在瑞士日内瓦湖附近的住宅中由一群医学专家照料。据悉，在家中接受治疗时，每周的费用高达50000英镑，约合人民币43.4万元。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g28/M03/D3/52/autohomecar__ChcCR1wYsguAAMgGAAaWN2CFC6Y064.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039636073640.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　根据德国杂志《Bravo》报道，舒马赫已经被转移到美国德克萨斯州达拉斯一间诊所，接受专门的脑损伤治疗。诊所负责人Mark Weeks告诉杂志：“我们有很多的经验，可以治疗遭受这种创伤的患者。”</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　从舒马赫重伤之后，对于他的健康状况就成了所有F1车迷的焦点，无论他现状如何，都希望他能够早早好转起来。（编辑/汽车之家 郭枫）</p><p><br/></p>', 2, 0, '2018-12-22 16:24:32');
INSERT INTO `news` VALUES (5, 14, '3亿美元一架！美军第六代战斗机造价吓住国会', '【环球时报报道 特约记者 张亦驰】在俄罗斯与中国研制的第五代隐形战斗机相继问世后，为确保“绝对制空权”，美空军迅速开启了第六代战斗机的预研工作。不过美国《防务新闻》网站15日称，美国政府部门首次对这种未来战斗机的成本进行了评估，结果高得惊人——它的价格将是F-35隐形战斗机的3倍，单价达到3亿美元。如何解决下一代战斗机装备数量、单机性能和经济可承受性之间的矛盾，成为摆在美国空军面前的一大难题。', '军事', '/News/resources/upload/1545534731624.jpeg', 'JY', '<p class=\"otitle\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">（原标题：3亿美元一架！美军第六代战斗机造价吓住国会）</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/17/3d6fb382f83943649b1113e03807f09b.jpeg\"/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\">美军现役的F-22五代机单架成本在2亿美元左右</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【环球时报报道 特约记者 张亦驰】在俄罗斯与中国研制的第五代隐形战斗机相继问世后，为确保“绝对制空权”，美空军迅速开启了第六代战斗机的预研工作。不过美国《防务新闻》网站15日称，美国政府部门首次对这种未来战斗机的成本进行了评估，结果高得惊人——它的价格将是F-35隐形战斗机的3倍，单价达到3亿美元。如何解决下一代战斗机装备数量、单机性能和经济可承受性之间的矛盾，成为摆在美国空军面前的一大难题。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">报道称，美国国会预算办公室最新研究显示，以2018年币值计算，被美国空军称为“穿透性制空”（PCA）的下一代空中优势战斗机单机成本约为3亿美元。这个价格是F-35A战斗机的3倍以上，如今F-35A的平均采购价格为9400万美元。报道称，这是美国政府部门第一次评估PCA的潜在价格。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">国会预算办公室估计，美空军需要414架PCA战机取代现有的F-15C/D和F-22，进而全面接管制空作战任务。报告认为，新战机最快将在2030年服役，这取决于美空军的渴望程度。但如此高昂的价格吓住了美国会，他们可能将重新考虑空军的装备更新计划。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">报道称，价格昂贵的部分原因为新技术的使用。“与今天的F-22相比，PCA可能具有更大的航程和更多的有效载荷，以及更好的隐形和传感器能力。这些特征将有助于它在高端防空系统威胁下行动，中国、俄罗斯和其他潜在对手未来可能拥有这些先进的防空系统。”此外，美空军从来没有能实现过“低成本生产隐形战机”。B-2轰炸机和F-22战斗机的后续生产计划都被取消，部分原因就是每架飞机的价格很高，这反过来又导致生产成本高昂。F-35早期的研制进度因一系列成本超支而受到影响，即便现在单价也远超原先估算。报告认为，PCA的成本控制可能同样困难。</p><p><br/></p>', 2, 0, '2018-12-23 11:12:19');
INSERT INTO `news` VALUES (7, 16, '四换二全美轰动！雷霆夺冠阵容正式发起冲刺，威少：下一个杜兰特', '新赛季常规赛赛程已经进行到差不多三分之一了，按照目前的排位来看，雷霆队的表现还算令人满意，在经历开局不畅以及威少受伤等等一系列情况之后，雷霆队已经逐渐打响了季后赛主场优势争夺战。雷霆队在休赛期中对于阵容方面做出了不小的变动，管理层放弃了上赛季的夺冠阵容，新赛季由威少和乔治双核带队冲击总冠军。威少仍旧能够打出场均三双数据，而乔治基本上恢复了断腿之前的巅峰状态。', 'NBA', '/News/resources/upload/1545540045917.jpeg', 'JY', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">新赛季常规赛赛程已经进行到差多三分之一了，按照目前的排位来看，雷霆队的表现还算令人满意，在经历开局不畅以及威少受伤等等一系列情况之后，雷霆队已经逐渐打响了季后赛主场优势争夺战。雷霆队在休赛期中对于阵容方面做出了不小的变动，管理层放弃了上赛季的夺冠阵容，新赛季由威少和乔治双核带队冲击总冠军。威少仍旧能够打出场均三双数据，而乔治基本上恢复了断腿之前的巅峰状态。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022744034673.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">不过在勇士队组建五巨头阵容时，雷霆队这样的阵容就不占据太多的优势了，这就需要雷霆管理层再次进行阵容补强。据雷霆队随队记者报道，雷霆管理层已经正式向奇才管理层提出交易申请，希望能够用帕特森、格兰特和首轮签换来奇才队后卫比尔。奇才管理层也有想要交易的想法，不过稍微修改了一下交易方案，雷霆队想要得到比尔，那么就必须同时收下霍华德的合同，雷霆队还需要多提供一个首轮签。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022927019242.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">雷霆管理层考虑到霍华德的伤病情况，所以并不愿意同时吃下霍华德的合同，再加上雷霆队不希望交出高额奢侈税，所以目前双方还没有具体定论。不过雷霆管理层对于比尔展现出势在必得的信心，毕竟威少在关键时刻的表现还是不太稳定，而比尔在关键时刻的得分能力和稳定的三分球能力，可以弥补威少在三分球上的短板。如果比尔能够来到雷霆队，那么雷霆队将会组建一支全新的夺冠阵容，威少、比尔和乔治的新三巨头将会是雷霆队赢下总冠军的最大保障。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022964086892.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">在这笔方案形成之前，前雷霆队悍将杜兰特将会在明夏成为自由球员，而勇士队很难提供杜兰特一份高薪，所以杜兰特有可能会重返雷霆队。不过威少认为雷霆队已经不需要杜兰特了，比尔在进攻端中出色的得分能力将会成为下一个杜兰特。那么，您觉得杜兰特重回雷霆队希望大一些，还是比尔来到雷霆队可能性多一点呢？</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540023018016733.jpg\"/></p>', 7, 2, '2018-12-23 12:40:51');
INSERT INTO `news` VALUES (8, 17, '杨幂与刘恺威7年情史曝光 曾称家庭不应成为束缚', '据台湾媒体《东森新闻》12月22日报道，杨幂22日宣布和刘恺威离婚。她2011年和刘恺威合作《如意》假戏真做，之后愈爱愈大方，2014年在巴厘岛举办婚礼，同年产下女儿小糯米，她身份是人妻也是一个孩子的妈，但在演艺事业表现不减，曾透露自己变成职业妇女的观念：“家庭不应该成为你的束缚。”', '杨幂,刘恺威', '/News/resources/upload/1545540107934.jpg', 'JY', '<p class=\"detailPic\" style=\"margin: 0px auto; padding: 0px; text-indent: 28px; line-height: 32px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540135043040335.jpg\" alt=\"\"/></p><p class=\"picIntro\" style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; font-size: 14px; line-height: 32px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43); white-space: normal; background-color: rgb(255, 255, 255);\">刘恺威、杨幂</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">据台湾媒体《东森新闻》12月22日报道，杨幂22日宣布和刘恺威离婚。她2011年和刘恺威合作《如意》假戏真做，之后愈爱愈大方，2014年在巴厘岛举办婚礼，同年产下女儿小糯米，她身份是人妻也是一个孩子的妈，但在演艺事业表现不减，曾透露自己变成职业妇女的观念：“家庭不应该成为你的束缚。”</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">杨幂2011年以穿越剧《宫》大红，2014年和刘恺威甜蜜完婚，婚后在演艺事业上更亮眼，近几年主演《三生三世十里桃花》、《扶摇》，更成为流量女王，几乎是收视率保证。她本身自立工作室，是嘉行传媒老板，旗下拥有迪丽热巴、张彬彬等艺人，十分有生意头脑。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">为人妻、为人母身份，不影响杨幂在工作上表现，上节目时曾被主持人询问：“有些女星生孩子后，拍戏动力就不足了。”杨幂笑回应：“大家可能觉得我一直非常忙，其实不是的，我让你们看到我在工作是动力满满，但是我回家的时候，我不会发微博，我回家了，今天陪孩子，可能我不会让你们完全看到，但是我是有很多时间都在家里的。”</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">“我一直是觉得这样，家庭不应该是成为你的束缚，它可以给你归属感，应该是给你动力，让你做更好的自己。”杨幂一番话说出职业妇女的心声。她虽然事业忙，但一有时间陪女儿，为了参加女儿2岁生日，坐飞机快闪香港8小时；2017年过年时初二飞香港，陪女儿玩具区挑礼物，但3天后因为工作返回大陆拍戏，当空中飞人十分忙碌。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">但也因为工作忙碌，杨幂和刘恺威结婚5年，一直不断传出婚变，今年10月刘恺威生日她没有发文祝福，就引起网友猜测，21日网友爆料杨幂和刘恺威即将官宣离婚，22日经纪公司证实两人已经离婚。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>杨幂刘恺威情缠7年</strong></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2011年5月：两人在《如意》饰演情侣并日久生情。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2012年1月：两人被拍到一起出入北京某公寓。刘恺威连发两条微博公布恋情，杨幂也甜蜜回应。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2013年11月13日：两人晒出婚戒照，并宣布婚期。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2014年1月8日：公开恋情两周年纪念日，两人在巴厘岛举办婚礼。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2014年6月1日：杨幂在香港产下女儿小糯米，刘恺威亲手剪脐带。</p>', 1, 0, '2018-12-23 12:42:21');
INSERT INTO `news` VALUES (10, 17, '64岁李雪健和老婆罕见近照 相爱35年老婆越来越美', '最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。', '李雪健', '/News/resources/upload/1545540305810.png', 'JY', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 38px; text-size-adjust: 100%; font-size: 16px; color: rgb(77, 79, 83); letter-spacing: 1px; line-height: 28px;\">最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。</p><p><span class=\"icon quotation-left\" style=\"background-image: -webkit-image-set(url(&quot;//n.sinaimg.cn/finance/page/ent/images/0908_zyc_icons.png&quot;) 1x, url(&quot;//n.sinaimg.cn/finance/page/ent/images/0908_zyc_icons2x.png&quot;) 2x); background-repeat: no-repeat; width: 28px; height: 24px; background-position: -268px -100px; position: absolute; top: 0px; left: 0px;\"></span></p><p><img src=\"/News/resources/upload/image/20181223/1545540297016057100.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　来源：猫眼电影</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297162052518.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　于海丹之前也是一名演员，1982年两人合作了电视剧，当时于海丹是女主角，李雪健还没红，之后两人便有了未来的故事。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297243035562.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　1983年就结婚了，婚后两年就有了儿子，然后于海丹就退出了娱乐圈，在家里相夫教子，几乎没有再出现在镜头面前，老公演出她就去帮忙，到现场捧场，两人还是经常讨论演技。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297319069240.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　2000年，李雪健因为患上了鼻咽癌，连他自己都没发现，于海丹觉得不对劲，带他去医院看病，才检查出来。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297388053009.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　于海丹为李雪健的病来回的飞，一直在研究各种方案，还陪着老公一边拍戏一边治病，2003年李雪健的病算是恢复了。于海丹也因此瘦了不少。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297458037462.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　李雪健现在的耳朵总是听不清，拍戏都需要戴助听器，只不过他追求逼真不愿意戴，两个人在一起35年 ，于海丹为了照顾老公瘦了不少，但是依旧很有气质。</p><p><br/></p>', 2, 0, '2018-12-23 12:45:10');
INSERT INTO `news` VALUES (11, 17, '冯绍峰赵丽颖又双叒叕被偶遇了！女方衣着宽松小腹隆起孕味十足', '赵丽颖与冯绍峰，我们都不好意思用“偶遇”这个词儿了，“绯闻二人组”其实大家都已经见怪不怪了，可是奈何这两人被拍到多次“在一起”，就是咬牙不松口说他们彼此“在一起”，这也颇让人为难的很。', '赵丽颖,冯绍峰', '/News/resources/upload/1545540424773.jpg', 'JY', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">赵丽颖与冯绍峰，我们都不好意思用“偶遇”这个词儿了，“绯闻二人组”其实大家都已经见怪不怪了，可是奈何这两人被拍到多次“在一起”，就是咬牙不松口说他们彼此“在一起”，这也颇让人为难的很。</span></p><p><img class=\"large\" src=\"http://t12.baidu.com/it/u=755513468,3803592794&fm=173&app=25&f=JPEG?w=640&h=889&s=2EE8DC03E4EC5AAD69593D7103009032\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">近日，有网友在上海某餐厅偶遇赵丽颖与冯绍峰一起会友，算来这是第五次被偶遇“在一起”了吧？而在9月8日，赵丽颖确实现身上海，出席代言品牌为她举行的粉丝见面会。</span></p><p><img class=\"large\" src=\"http://t11.baidu.com/it/u=1045018891,3490776334&fm=173&app=25&f=JPEG?w=639&h=377&s=C2A029E5669731D80824C5370300B052\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">在此期间，冯绍峰还走出去吸烟，上楼梯时边走边看手机、两人带着情侣帽并肩坐在一起，和朋友有说有笑的聊天。</span></p><p><img class=\"normal\" width=\"449px\" src=\"http://t10.baidu.com/it/u=3126044580,3014474835&fm=173&app=25&f=JPEG?w=449&h=520&s=66202DE2D10436FA0AC9B1080300D0C2\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">随后赵丽颖走出餐厅，可以看见赵丽颖身穿白色外套，里面穿一身素雅的连衣裙，戴着白色口罩。重点是肚子是不是太明显了，看着像是有三四个月了。看来传出怀孕不是空穴来风啊。</span></p><p><img class=\"large\" src=\"http://t12.baidu.com/it/u=2165786669,4234783172&fm=173&app=25&f=JPEG?w=609&h=675&s=A723DF4FC00B36FC86591C3F03001042\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">就在昨天还有人在商场偶遇赵丽颖，穿着一件毛衣，手还捂着肚子，但是跟在赵丽颖身边的那位男子身穿半袖，与赵丽颖形成了最明显的对比，那时人人都以为赵丽颖怀孕了。工作人员却说赵丽颖是因为身体原因所以穿的比较厚，用暖水袋捂着肚子是因为体寒。</span></p><p><img class=\"large\" src=\"http://t10.baidu.com/it/u=736365717,1562998839&fm=173&app=25&f=JPEG?w=640&h=452&s=21206BB102A250BE1AADF8D503001052\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">娱乐圈向来有怀孕未满三个月不公开的说法，这是为将来报喜预留余地。再加上赵丽颖广告合约在身，不想公开恋爱甚至怀孕的消息，也很正常。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">对此，有媒体向赵丽颖工作人员求证，对方再三表示：“没有这回事！”</span></p><p><img class=\"large\" src=\"http://t11.baidu.com/it/u=4114931692,4097027483&fm=173&app=25&f=JPEG?w=600&h=315&s=09ADED1759E8CF1BBED5BCCA0300E070\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">赵丽颖这么多年来，凭借自己的努力一步一步往上爬，从未放弃过。越来越多的人喜爱她，不仅仅是因为她的长相甜美，还因为她勇敢坚强，刻苦勤奋，没有哪个人能随随便便成功的，赵丽颖用了10年才换来如今的成就。希望她幸福，你觉得呢？</span></p><p><br/></p>', 4, 1, '2018-12-23 12:47:10');

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES (5, '国内', 0);
INSERT INTO `news_category` VALUES (10, '国际', 1);
INSERT INTO `news_category` VALUES (14, '军事', 2);
INSERT INTO `news_category` VALUES (15, '财经', 3);
INSERT INTO `news_category` VALUES (16, '体育', 4);
INSERT INTO `news_category` VALUES (17, '娱乐', 5);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有完整权限');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NOT NULL DEFAULT 0,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'qwe', 'qwe', 1, '/News/resources/upload/1545572488494.jpg', 1, 1, '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES (13, 'zxc', 'zxc', 2, '/News/resources/upload/1545572546524.jpg', 1, 1, 'JY');

SET FOREIGN_KEY_CHECKS = 1;
