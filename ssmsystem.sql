/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : ssmsystem

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2020-07-16 09:59:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course_detail_info`
-- ----------------------------
DROP TABLE IF EXISTS `course_detail_info`;
CREATE TABLE `course_detail_info` (
  `de_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `de_score` float DEFAULT '-1',
  `de_status` int(11) DEFAULT '0',
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_detail_info
-- ----------------------------
INSERT INTO `course_detail_info` VALUES ('1', '2', '16905930', '个队排', '12345678', '银凡', '-1', '1');

-- ----------------------------
-- Table structure for `course_info`
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_code` varchar(255) DEFAULT 'KD3555',
  `co_name` varchar(255) DEFAULT NULL,
  `co_status` int(11) DEFAULT '0',
  `co_credit` double(11,1) DEFAULT NULL,
  `co_number` int(11) DEFAULT NULL,
  `co_time` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT '',
  `co_address` varchar(255) DEFAULT '',
  `co_selected` int(11) DEFAULT '0',
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES ('1', 'KD35520', '大学物理', '3', '2.0', '100', '周一第3,4节{第1-16周}', '12345678', '袁晓平', '6jxC402', '100');
INSERT INTO `course_info` VALUES ('2', 'KD35521', '英语4-写作', '3', '2.0', '100', '周一第6,7节{第1-16周}', '12345678', '银凡', '6jxD209', '2');
INSERT INTO `course_info` VALUES ('3', 'KD35522', '体育4', '3', '2.0', '100', '周一第8,9节{第1-16周}', '12345678', '向建峰', '无', '0');
INSERT INTO `course_info` VALUES ('4', 'KD35523', 'PHP程序设计', '3', '3.0', '100', '周二第6,7,8节{第1-16周}', '110', '杜兰特', '6jxB401', '2');
INSERT INTO `course_info` VALUES ('5', 'KD35524', '概率论与数理统计', '3', '3.0', '100', '周四第3,4节{第1-16周}', '12345678', '李承家', '6jxB209', '0');
INSERT INTO `course_info` VALUES ('6', 'KD35525', '操作系统', '3', '4.0', '100', '周三第3,4节{第1-16周}', '110', '杜兰特', '6jxD306', '2');
INSERT INTO `course_info` VALUES ('7', 'KD35526', '操作系统课程实践', '3', '2.0', '100', '周三第6,7节{第01-16周}', '110', '杜兰特', '6jxB202', '2');
INSERT INTO `course_info` VALUES ('8', 'KD35527', '高级程序设计（C++）', '3', '3.0', '100', '周四第6,7,8节{第1-16周}', '12345678', '左光华', '6jxB301', '100');
INSERT INTO `course_info` VALUES ('9', 'KD35528', '线性代数', '3', '2.0', '100', '周五第6,7节{第1-16周}', '12345678', '马祖强', '6jxB109', '0');
INSERT INTO `course_info` VALUES ('10', 'KD35529', '大学物理实验', '3', '2.0', '100', '周五第10,11节{第1-16周}', '12345678', '袁晓平', '无', '0');
INSERT INTO `course_info` VALUES ('11', 'KD35530', '计算机接口技术', '3', '2.0', '100', '周一第1,2节{第1-17周}', '12345678', '孙志海', '6jxB401', '0');
INSERT INTO `course_info` VALUES ('12', 'KD35531', 'C语言程序设计', '3', '3.0', '100', '周一第3,4,5节{第1-17周}', '12345678', '楼永坚', '6jxB305', '0');
INSERT INTO `course_info` VALUES ('13', 'KD35532', 'Android高级应用开发', '3', '2.0', '100', '周一第6,7节{第1-17周}', '12345678', '胡昔祥', '6jxB213', '0');
INSERT INTO `course_info` VALUES ('14', 'KD35533', 'Java EE程序设计课程实践', '3', '2.0', '100', '周一第10,11节{第1-17周}', '110', '杜兰特', '6jxB102', '1');
INSERT INTO `course_info` VALUES ('15', 'KD35534', '英语3-阅读', '3', '2.0', '100', '周二第1,2节{第1-17周}', '12345678', '张艳斌', '6jxE104', '0');
INSERT INTO `course_info` VALUES ('16', 'KD35535', 'Java EE程序设计', '3', '2.0', '100', '周二第3,4,5节{第1-17周}', '110', '杜兰特', '6jxB301', '1');
INSERT INTO `course_info` VALUES ('17', 'KD35536', 'Html5移动开发', '3', '3.0', '100', '周二第6,7节{第1-17周}', '12345678', '叶岩明', '6jxB409', '0');
INSERT INTO `course_info` VALUES ('18', 'KD35537', '数据结构', '3', '3.0', '100', '周四第3,4,5节{第1-17周}', '12345678', '任雪萍', '6jxB102', '0');
INSERT INTO `course_info` VALUES ('19', 'KD35538', '思想道德修养与法律基础', '3', '2.0', '100', '周五第1,2节{第1-17周}', '12345678', '杜维宁', '6jxB213', '0');
INSERT INTO `course_info` VALUES ('20', 'KD35539', '数据结构课程实践', '3', '3.0', '100', '周五第6,7节{第1-17周}', '12345678', '任雪萍', '6jxB102', '0');
INSERT INTO `course_info` VALUES ('21', 'KD35540', 'JSP程序设计课程实践', '3', '2.0', '100', '周一第3,4节{第1-16周}', '110', '杜兰特', '6jxC405', '1');
INSERT INTO `course_info` VALUES ('22', 'KD35541', '离散数学与编译原理课程实践', '3', '2.0', '100', '周一第6,7节{第1-8周}', '12345678', '朱文华', '6jxB401', '0');
INSERT INTO `course_info` VALUES ('23', 'KD35542', '数据库应用与管理课程实践', '3', '2.0', '100', '周一第10,11节{第1-16周|双周}', '12345678', '张集祥', '6jxC413', '0');
INSERT INTO `course_info` VALUES ('24', 'KD35543', '英语2-阅读', '3', '2.0', '0', '周二第1,2节{第1-16周}', '12345678', '李晓燕', '6jxD405', '0');
INSERT INTO `course_info` VALUES ('25', 'KD35544', '数字电路（乙）', '3', '2.0', '100', '周二第3,4节{第1-16周}', '12345678', '管力明', '6jxE304', '0');
INSERT INTO `course_info` VALUES ('26', 'KD35545', '数据库系统应用与管理', '3', '3.0', '100', '周二第6,7节{第1-16周}', '12345678', '张集祥', '6jxC402', '0');
INSERT INTO `course_info` VALUES ('27', 'KD35546', '大学生心理健康教育2', '3', '2.0', '100', '周二第10,11节{第1-16周|双周}', '12345678', '沙从丽', '6jxC209', '0');
INSERT INTO `course_info` VALUES ('28', 'KD35547', '微积分2', '3', '2.0', '100', '周三第1,2节{第1-16周}', '12345678', '马祖强', '6jxB401', '0');
INSERT INTO `course_info` VALUES ('29', 'KD35548', 'WEB前端程序设计基础', '3', '3.0', '100', '周三第3,4,5节{第1-16周}', '12345678', '方绪健', '6jxC402', '0');
INSERT INTO `course_info` VALUES ('30', 'KD35549', 'JSP程序设计', '3', '2.0', '100', '周四第1,2节{第1-16周}', '110', '杜兰特', '6jxE304', '1');
INSERT INTO `course_info` VALUES ('31', 'KD35550', '离散数学与编译原理', '3', '3.0', '100', '周四第6,7节{第1-16周}', '12345678', '朱文华', '6jxB305', '0');
INSERT INTO `course_info` VALUES ('32', 'KD35551', 'Android开发基础课程实践', '3', '2.0', '100', '周五第1,2节{第1-16周|单周}', '12345678', '胡昔祥', '6jxC413', '2');
INSERT INTO `course_info` VALUES ('33', 'KD35552', 'Android开发基础', '3', '3.0', '100', '周五第6,7节{第1-16周}', '12345678', '胡昔祥', '6jxC413', '0');
INSERT INTO `course_info` VALUES ('34', 'KD35553', '计算机导论', '3', '2.0', '100', '周一第6,7节{第1-16周}', '12345678', '张集祥', '6jxB305', '1');
INSERT INTO `course_info` VALUES ('35', 'KD35554', '英语1 -阅读', '3', '2.0', '100', '周二第1,2节{第1-16周}', '12345678', '陈迎晓', '6jxC213', '1');
INSERT INTO `course_info` VALUES ('36', 'KD35555', '微积分1', '3', '2.0', '100', '周二第3,4节{第1-16周}', '12345678', '袁宝兰', '6jxB309', '2');
INSERT INTO `course_info` VALUES ('37', 'KD35556', '网页与网站开发基础', '3', '3.0', '100', '周二第6,7节{第1-16周}', '12345678', '方绪健', '6jxB401', '1');
INSERT INTO `course_info` VALUES ('38', 'KD35557', '中国近现代史纲要', '3', '2.0', '100', '周三第1,2节{第1-16周}', '12345678', '顾晓红', '6jxB305', '1');
INSERT INTO `course_info` VALUES ('39', 'KD35558', '程序设计基础(JAVA语言)', '3', '6.0', '100', '周三第3,4,5,6,7,8节{第1-16周}', '12345678', '周梦熊', '6jxB310', '0');
INSERT INTO `course_info` VALUES ('40', 'KD35559', '程序设计基础课程实践(JAVA）', '3', '2.0', '100', '周四第1,2节{第1-16周}', '12345678', '周梦熊', '6jxB310', '1');
INSERT INTO `course_info` VALUES ('41', 'KD35560', '英语1 -视听说 ', '3', '2.0', '100', '周五第1,2节{第1-16周}', '12345678', '张朝霞', '6jxD401', '0');
INSERT INTO `course_info` VALUES ('45', 'KD3555', '计算机组装实践', '3', '2.0', '100', '周五第8,9节{第1-16周}', '12345678', '朱文华', '6jxC209', '0');

-- ----------------------------
-- Table structure for `log_info`
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `root_id` int(11) DEFAULT NULL,
  `log_content` varchar(255) DEFAULT NULL,
  `log_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES ('1', '111', '20182选课系统已开启，起始时间：2018-12-22 截止日期：2018-12-30 ，请大家尽快选课！', '2018-12-13 19:26:50');
INSERT INTO `log_info` VALUES ('2', '111', '2017-2018学年第二学期选课系统已关闭！', '2019-10-11 13:03:54');
INSERT INTO `log_info` VALUES ('3', '111', '20182选课系统已开启，起始时间：2019-11-22 截止日期：2019-11-16 ，请大家尽快选课！', '2019-11-13 13:06:48');
INSERT INTO `log_info` VALUES ('4', '111', '2017-2018学年第二学期选课成绩系统已开启，请各位老师尽快录入成绩！', '2019-11-13 13:06:55');

-- ----------------------------
-- Table structure for `menu_info`
-- ----------------------------
DROP TABLE IF EXISTS `menu_info`;
CREATE TABLE `menu_info` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_url` varchar(255) DEFAULT NULL,
  `m_title` varchar(255) DEFAULT NULL,
  `m_status` int(11) DEFAULT '1',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_info
-- ----------------------------
INSERT INTO `menu_info` VALUES ('1', '/ssm_index.action', '进入主页请求', '1');
INSERT INTO `menu_info` VALUES ('2', '/ssm_login.action', '进入登陆页面', '1');
INSERT INTO `menu_info` VALUES ('3', '/ssm_checklogin.action', '登录的表单提交', '1');
INSERT INTO `menu_info` VALUES ('4', '/ssm_exit.action', '退出登录', '1');
INSERT INTO `menu_info` VALUES ('5', '/ssm_registerinto.action', '进入注册请求', '1');
INSERT INTO `menu_info` VALUES ('6', '/ssm_register.action', '注册', '1');
INSERT INTO `menu_info` VALUES ('7', '/ssm_personindex.action', '进入个人中心首页', '1');
INSERT INTO `menu_info` VALUES ('8', '/ssm_person_data.action', '进入个人资料', '1');
INSERT INTO `menu_info` VALUES ('9', '/ssm_allcourse.action', '进入选课系统', '1');
INSERT INTO `menu_info` VALUES ('10', '/ssm_paging.action', '分页', '1');
INSERT INTO `menu_info` VALUES ('11', '/ssm_choose_course.action', '选课', '1');
INSERT INTO `menu_info` VALUES ('12', '/ssm_delete_course.action', '退课', '1');
INSERT INTO `menu_info` VALUES ('13', '/ssm_Timetable.action', '我的课表', '1');
INSERT INTO `menu_info` VALUES ('14', '/ssm_teacherselection.action', '选课情况', '1');
INSERT INTO `menu_info` VALUES ('15', '/ssm_showStudent.action', '查看选课学生名单', '1');
INSERT INTO `menu_info` VALUES ('16', '/ssm_myreport.action', '我的成绩单', '1');
INSERT INTO `menu_info` VALUES ('17', '/ssm_savescore.action', '录入成绩', '1');
INSERT INTO `menu_info` VALUES ('18', '/root_opencourse.action', '开启选课入口', '1');
INSERT INTO `menu_info` VALUES ('19', '/root_opencourseform.action', '开启选课入口form', '1');
INSERT INTO `menu_info` VALUES ('20', '/root_insertcourse.action', '进入课程信息', '1');
INSERT INTO `menu_info` VALUES ('21', '/root_savecourse.action', '添加课程form', '1');
INSERT INTO `menu_info` VALUES ('22', '/root_deletecourse.action', '删除课程', '1');
INSERT INTO `menu_info` VALUES ('23', '/root_updatecourse.action', '修改课程', '1');
INSERT INTO `menu_info` VALUES ('24', '/root_shenheregister.action', '进入审核用户页面', '1');
INSERT INTO `menu_info` VALUES ('25', '/root_shenheuser.action', '审核用户提交', '1');
INSERT INTO `menu_info` VALUES ('26', '/root_usercenter.action', '用户中心', '1');
INSERT INTO `menu_info` VALUES ('27', '/root_insertuser.action', '进入用户信息', '1');
INSERT INTO `menu_info` VALUES ('28', '/root_updateuser.action', '更新用户', '1');
INSERT INTO `menu_info` VALUES ('29', '/root_updateuserfrom.action', '更新用户form', '1');
INSERT INTO `menu_info` VALUES ('30', '/root_deleteuser.action', '删除用户', '1');
INSERT INTO `menu_info` VALUES ('31', '/root_readycourse.action', '开启准备选课按钮', '1');
INSERT INTO `menu_info` VALUES ('33', '/root_resetpassword.action', '重置密码', '1');
INSERT INTO `menu_info` VALUES ('34', '/root_power.action', '进入权限管理', '1');
INSERT INTO `menu_info` VALUES ('35', '/root_chulipower.action', '处理权限启用或禁用', '1');

-- ----------------------------
-- Table structure for `role_info`
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', '-1', '1', '1');
INSERT INTO `role_info` VALUES ('2', '-1', '2', '1');
INSERT INTO `role_info` VALUES ('3', '-1', '3', '1');
INSERT INTO `role_info` VALUES ('4', '-1', '5', '1');
INSERT INTO `role_info` VALUES ('5', '-1', '6', '1');
INSERT INTO `role_info` VALUES ('6', '0', '1', '1');
INSERT INTO `role_info` VALUES ('7', '0', '2', '1');
INSERT INTO `role_info` VALUES ('8', '0', '3', '1');
INSERT INTO `role_info` VALUES ('9', '0', '4', '1');
INSERT INTO `role_info` VALUES ('10', '0', '5', '1');
INSERT INTO `role_info` VALUES ('11', '0', '6', '1');
INSERT INTO `role_info` VALUES ('12', '0', '7', '1');
INSERT INTO `role_info` VALUES ('13', '0', '8', '1');
INSERT INTO `role_info` VALUES ('14', '0', '9', '1');
INSERT INTO `role_info` VALUES ('15', '0', '10', '1');
INSERT INTO `role_info` VALUES ('16', '0', '11', '1');
INSERT INTO `role_info` VALUES ('17', '0', '12', '1');
INSERT INTO `role_info` VALUES ('18', '0', '13', '1');
INSERT INTO `role_info` VALUES ('19', '0', '16', '1');
INSERT INTO `role_info` VALUES ('20', '1', '1', '1');
INSERT INTO `role_info` VALUES ('21', '1', '2', '1');
INSERT INTO `role_info` VALUES ('22', '1', '3', '1');
INSERT INTO `role_info` VALUES ('23', '1', '4', '1');
INSERT INTO `role_info` VALUES ('24', '1', '5', '1');
INSERT INTO `role_info` VALUES ('25', '1', '6', '1');
INSERT INTO `role_info` VALUES ('26', '1', '7', '1');
INSERT INTO `role_info` VALUES ('27', '1', '8', '1');
INSERT INTO `role_info` VALUES ('28', '1', '10', '1');
INSERT INTO `role_info` VALUES ('29', '1', '13', '1');
INSERT INTO `role_info` VALUES ('30', '1', '14', '1');
INSERT INTO `role_info` VALUES ('31', '1', '15', '1');
INSERT INTO `role_info` VALUES ('32', '1', '17', '1');
INSERT INTO `role_info` VALUES ('33', '2', '1', '1');
INSERT INTO `role_info` VALUES ('34', '2', '2', '1');
INSERT INTO `role_info` VALUES ('35', '2', '3', '1');
INSERT INTO `role_info` VALUES ('36', '2', '4', '1');
INSERT INTO `role_info` VALUES ('37', '2', '5', '1');
INSERT INTO `role_info` VALUES ('38', '2', '6', '1');
INSERT INTO `role_info` VALUES ('39', '2', '7', '1');
INSERT INTO `role_info` VALUES ('40', '2', '8', '1');
INSERT INTO `role_info` VALUES ('41', '2', '9', '1');
INSERT INTO `role_info` VALUES ('42', '2', '10', '1');
INSERT INTO `role_info` VALUES ('43', '2', '18', '1');
INSERT INTO `role_info` VALUES ('44', '2', '19', '1');
INSERT INTO `role_info` VALUES ('45', '2', '20', '1');
INSERT INTO `role_info` VALUES ('46', '2', '21', '1');
INSERT INTO `role_info` VALUES ('47', '2', '22', '1');
INSERT INTO `role_info` VALUES ('48', '2', '23', '1');
INSERT INTO `role_info` VALUES ('49', '2', '24', '1');
INSERT INTO `role_info` VALUES ('50', '2', '25', '1');
INSERT INTO `role_info` VALUES ('51', '2', '26', '1');
INSERT INTO `role_info` VALUES ('52', '2', '27', '1');
INSERT INTO `role_info` VALUES ('53', '2', '28', '1');
INSERT INTO `role_info` VALUES ('54', '2', '29', '1');
INSERT INTO `role_info` VALUES ('55', '2', '30', '1');
INSERT INTO `role_info` VALUES ('56', '2', '31', '1');
INSERT INTO `role_info` VALUES ('57', '2', '33', '1');
INSERT INTO `role_info` VALUES ('58', '2', '34', '1');
INSERT INTO `role_info` VALUES ('60', '2', '35', '1');

-- ----------------------------
-- Table structure for `root_info`
-- ----------------------------
DROP TABLE IF EXISTS `root_info`;
CREATE TABLE `root_info` (
  `user_code` int(11) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT '2',
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of root_info
-- ----------------------------
INSERT INTO `root_info` VALUES ('111', '222', 'image/root.png', '2', '哈哈哈', '0');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_code` int(11) NOT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` int(11) DEFAULT NULL,
  `user_classroom` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_major` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('110', '1234', '杜兰特', '1', '四班', 'image/userperson.jpg', '计算机', '杭州电子科技大学信息工程学院', 'JT110', '1', '1');
INSERT INTO `user_info` VALUES ('824', '123456', '张三', '0', '四班', 'image/userperson.jpg', '计算机', '杭州电子科技大学信息工程学院', 'JT110', '1', '1');
INSERT INTO `user_info` VALUES ('16900131', '0131', '2222', '1', 'C班', 'image/16900131/16900131_b8d157fc-144f-4647-a9a0-8bc9ee2f179f_driverperson.jpg', '国际贸易', '浙江大学', 'KD12345', '1', '2');
INSERT INTO `user_info` VALUES ('16901111', '123456', '1111', '0', '8班', 'image/16901111/16901111_3b150aef-1bc2-4b95-8afc-de29a4752139_drivericon.png', '电子信息', '中国计量大学', 'KD12345', '0', '1');
INSERT INTO `user_info` VALUES ('16905930', '0824', '个队排', '0', '四班', 'image/userperson.jpg', '软件工程', '杭州电子科技大学信息工程学院', 'JT110', '0', '1');
