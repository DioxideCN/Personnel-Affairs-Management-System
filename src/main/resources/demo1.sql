/*
Navicat MySQL Data Transfer

Source Server         : zf_lx
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : demo1

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-06-09 23:16:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log_info
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info` (
  `id` varchar(32) NOT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `action` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES ('84c2c628218c11eba02d4558e782d39e', '20201108 14:34:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('88b0bb31218c11eba02d4558e782d39e', '20201108 14:34:52', 'admin', '注销');
INSERT INTO `log_info` VALUES ('8b33bf1d218c11eba02d4558e782d39e', '20201108 14:34:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('631b03e0219111eba02d4558e782d39e', '20201108 15:09:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6f219a20219111eba02d4558e782d39e', '20201108 15:09:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('729f3308219111eba02d4558e782d39e', '20201108 15:10:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('911a2e77219111eba02d4558e782d39e', '20201108 15:10:54', 'admin', '登录');
INSERT INTO `log_info` VALUES ('cd851a04219111eba02d4558e782d39e', '20201108 15:12:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('76773572219211eba02d4558e782d39e', '20201108 15:17:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a5f79ac9219211eba02d4558e782d39e', '20201108 15:18:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e9775260219211eba02d4558e782d39e', '20201108 15:20:32', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4b48d1ff219411eba02d4558e782d39e', '20201108 15:30:25', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4ca2263d219411eba02d4558e782d39e', '20201108 15:30:28', 'admin', '注销');
INSERT INTO `log_info` VALUES ('5b3a0da2219411eba02d4558e782d39e', '20201108 15:30:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6c79abfb219411eba02d4558e782d39e', '20201108 15:31:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b302a879219411eba02d4558e782d39e', '20201108 15:33:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('30faff76219511eba02d4558e782d39e', '20201108 15:36:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('cfeaea84219511eba02d4558e782d39e', '20201108 15:41:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('11924568219611eba02d4558e782d39e', '20201108 15:43:08', 'admin', '登录');
INSERT INTO `log_info` VALUES ('13911dc0219611eba02d4558e782d39e', '20201108 15:43:11', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2e9e6080219611eba02d4558e782d39e', '20201108 15:43:56', 'admin', '登录');
INSERT INTO `log_info` VALUES ('31da211c219611eba02d4558e782d39e', '20201108 15:44:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('62a9e457219611eba02d4558e782d39e', '20201108 15:45:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8d7139d2219611eba02d4558e782d39e', '20201108 15:46:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8fd87bd9219611eba02d4558e782d39e', '20201108 15:46:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b6687286219611eba02d4558e782d39e', '20201108 15:47:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ce2182f3219611eba02d4558e782d39e', '20201108 15:48:24', 'admini', '登录');
INSERT INTO `log_info` VALUES ('d3a7562a219611eba02d4558e782d39e', '20201108 15:48:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('04696bcc219711eba02d4558e782d39e', '20201108 15:49:55', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4a7dc422219711eba02d4558e782d39e', '20201108 15:51:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('05ab45ca219811eba02d4558e782d39e', '20201108 15:57:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('08a2dd47219811eba02d4558e782d39e', '20201108 15:57:12', 'admin', '登录');
INSERT INTO `log_info` VALUES ('09961a7e219811eba02d4558e782d39e', '20201108 15:57:13', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0ab12e73219811eba02d4558e782d39e', '20201108 15:57:15', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0c2028f3219811eba02d4558e782d39e', '20201108 15:57:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0c73b0eb219811eba02d4558e782d39e', '20201108 15:57:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0c951858219811eba02d4558e782d39e', '20201108 15:57:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0cb73d2f219811eba02d4558e782d39e', '20201108 15:57:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0d0cfa31219811eba02d4558e782d39e', '20201108 15:57:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0d789c00219811eba02d4558e782d39e', '20201108 15:57:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2e992303219811eba02d4558e782d39e', '20201108 15:58:15', 'admin', '登录');
INSERT INTO `log_info` VALUES ('300e0597219811eba02d4558e782d39e', '20201108 15:58:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('30c85e6e219811eba02d4558e782d39e', '20201108 15:58:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('313e249f219811eba02d4558e782d39e', '20201108 15:58:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('31774bc4219811eba02d4558e782d39e', '20201108 15:58:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('319380c1219811eba02d4558e782d39e', '20201108 15:58:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('31b1ebe7219811eba02d4558e782d39e', '20201108 15:58:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('451edd7d219811eba02d4558e782d39e', '20201108 15:58:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4a686fef219811eba02d4558e782d39e', '20201108 15:59:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4b439692219811eba02d4558e782d39e', '20201108 15:59:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4c7712eb219811eba02d4558e782d39e', '20201108 15:59:05', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6ffb27f0219811eba02d4558e782d39e', '20201108 16:00:05', 'admin', '登录');
INSERT INTO `log_info` VALUES ('77e824ed219811eba02d4558e782d39e', '20201108 16:00:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7c053895219811eba02d4558e782d39e', '20201108 16:00:25', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7df44cb1219811eba02d4558e782d39e', '20201108 16:00:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7e4a13ce219811eba02d4558e782d39e', '20201108 16:00:29', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7ec103c9219811eba02d4558e782d39e', '20201108 16:00:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7f3c66dd219811eba02d4558e782d39e', '20201108 16:00:31', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7fb8c24a219811eba02d4558e782d39e', '20201108 16:00:31', 'admin', '登录');
INSERT INTO `log_info` VALUES ('801d9a19219811eba02d4558e782d39e', '20201108 16:00:32', 'admin', '登录');
INSERT INTO `log_info` VALUES ('84962d12219811eba02d4558e782d39e', '20201108 16:00:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('870261d2219811eba02d4558e782d39e', '20201108 16:00:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('87714e6d219811eba02d4558e782d39e', '20201108 16:00:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b2539f2d219911eba02d4558e782d39e', '20201108 16:09:06', 'admin', '登录');
INSERT INTO `log_info` VALUES ('af2060a221a811eba02d4558e782d39e', '20201108 17:56:23', 'admin', '登录');
INSERT INTO `log_info` VALUES ('1a22da1f21a911eba02d4558e782d39e', '20201108 17:59:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('327743aa21a911eba02d4558e782d39e', '20201108 18:00:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5c308b4f21a911eba02d4558e782d39e', '20201108 18:01:13', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5ed8214421aa11eba02d4558e782d39e', '20201108 18:08:27', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6d68fa6421aa11eba02d4558e782d39e', '20201108 18:08:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6ec755d121aa11eba02d4558e782d39e', '20201108 18:08:54', 'admin', '登录');
INSERT INTO `log_info` VALUES ('61f2ef5d21b611eba02d4558e782d39e', '20201108 19:34:25', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9b99d741235a11eba02d4558e782d39e', '20201110 21:42:26', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6ad1d222235b11eba02d4558e782d39e', '20201110 21:48:14', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0f9c72b2235c11eba02d4558e782d39e', '20201110 21:52:50', 'admin', '登录');
INSERT INTO `log_info` VALUES ('35323988235c11eba02d4558e782d39e', '20201110 21:53:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('36b5b7aa235c11eba02d4558e782d39e', '20201110 21:53:56', 'admin', '登录');
INSERT INTO `log_info` VALUES ('37250f3c235c11eba02d4558e782d39e', '20201110 21:53:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('37b4c9ec235c11eba02d4558e782d39e', '20201110 21:53:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('380d0f3f235c11eba02d4558e782d39e', '20201110 21:53:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('38710f30235c11eba02d4558e782d39e', '20201110 21:53:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('38d7d4cf235c11eba02d4558e782d39e', '20201110 21:53:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3948d2c2235c11eba02d4558e782d39e', '20201110 21:54:00', 'admin', '登录');
INSERT INTO `log_info` VALUES ('688e0581235d11eba02d4558e782d39e', '20201110 22:02:29', 'admin', '登录');
INSERT INTO `log_info` VALUES ('72b2680d235d11eba02d4558e782d39e', '20201110 22:02:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a505f6f1241e11eba02d4558e782d39e', '20201111 21:05:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e21280de241e11eba02d4558e782d39e', '20201111 21:07:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e9055478241e11eba02d4558e782d39e', '20201111 21:07:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f3840e5f242111eba02d4558e782d39e', '20201111 21:29:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('00682f3a242211eba02d4558e782d39e', '20201111 21:29:41', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2760713e242211eba02d4558e782d39e', '20201111 21:30:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d4b1315d242211eba02d4558e782d39e', '20201111 21:35:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fdf0cddb242211eba02d4558e782d39e', '20201111 21:36:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('958737c6242311eba02d4558e782d39e', '20201111 21:41:01', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b3b89c6d242311eba02d4558e782d39e', '20201111 21:41:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ef0787b3242311eba02d4558e782d39e', '20201111 21:43:31', 'admin', '登录');
INSERT INTO `log_info` VALUES ('35987f6a242411eba02d4558e782d39e', '20201111 21:45:29', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c6c621eb242411eba02d4558e782d39e', '20201111 21:49:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('88fbc3be242511eba02d4558e782d39e', '20201111 21:54:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b36940f4242511eba02d4558e782d39e', '20201111 21:56:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3aead920242611eba02d4558e782d39e', '20201111 21:59:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('53e7c30b242611eba02d4558e782d39e', '20201111 22:00:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('84d159b9242611eba02d4558e782d39e', '20201111 22:02:01', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a00276f0242611eba02d4558e782d39e', '20201111 22:02:47', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4c1f47d3242711eba02d4558e782d39e', '20201111 22:07:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('253165ba242811eba02d4558e782d39e', '20201111 22:13:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b81ba5952d8611ebb352144f8a625b6e', '20201123 20:23:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('bdf27bfb2d8611ebb352144f8a625b6e', '20201123 20:23:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e339a3d62d8611ebb352144f8a625b6e', '20201123 20:24:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2e724ab52d8711ebb352144f8a625b6e', '20201123 20:26:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('403f53532d8711ebb352144f8a625b6e', '20201123 20:27:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('65a8abdc2d8711ebb352144f8a625b6e', '20201123 20:28:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('702112272d8811ebb352144f8a625b6e', '20201123 20:35:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('92ab537d2d8811ebb352144f8a625b6e', '20201123 20:36:49', 'admin', '登录');
INSERT INTO `log_info` VALUES ('acfc2be72d8811ebb352144f8a625b6e', '20201123 20:37:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0e4916322d8b11ebb352144f8a625b6e', '20201123 20:54:36', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5b61fe5f323211ebb352144f8a625b6e', '20201129 19:02:04', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5e0dd790323211ebb352144f8a625b6e', '20201129 19:02:09', 'admin', '注销');
INSERT INTO `log_info` VALUES ('f60c7f8f323b11ebb352144f8a625b6e', '20201129 20:10:49', '1001', '登录');
INSERT INTO `log_info` VALUES ('69bea5f6356911eb9aa577191931add1', '20201203 21:13:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3a3a8b05356b11eb9aa577191931add1', '20201203 21:26:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c5962ef3356d11eb9aa577191931add1', '20201203 21:45:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b2bdd9da356f11eb9aa577191931add1', '20201203 21:58:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c6cb1f9e356f11eb9aa577191931add1', '20201203 21:59:31', 'admin', '登录');
INSERT INTO `log_info` VALUES ('19fa49d2357011eb9aa577191931add1', '20201203 22:01:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3b0cac5b357011eb9aa577191931add1', '20201203 22:02:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d724d08a357011eb9aa577191931add1', '20201203 22:07:08', 'admin', '登录');
INSERT INTO `log_info` VALUES ('1267f08b357111eb9aa577191931add1', '20201203 22:08:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('329b8e3a357111eb9aa577191931add1', '20201203 22:09:42', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8c65a04e357111eb9aa577191931add1', '20201203 22:12:12', 'admin', '登录');
INSERT INTO `log_info` VALUES ('da7e1a62357111eb9aa577191931add1', '20201203 22:14:23', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5487df4f357211eb9aa577191931add1', '20201203 22:17:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('83764563357211eb9aa577191931add1', '20201203 22:19:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b2f637a4357211eb9aa577191931add1', '20201203 22:20:26', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e4ec3754357211eb9aa577191931add1', '20201203 22:21:50', 'admin', '登录');
INSERT INTO `log_info` VALUES ('542048bf357311eb9aa577191931add1', '20201203 22:24:57', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7b7253fd357311eb9aa577191931add1', '20201203 22:26:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c013e14f357311eb9aa577191931add1', '20201203 22:27:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('30d647d8357411eb9aa577191931add1', '20201203 22:31:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f3c47d94357411eb9aa577191931add1', '20201203 22:36:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5d858384357511eb9aa577191931add1', '20201203 22:39:32', 'admin', '登录');
INSERT INTO `log_info` VALUES ('83edce0236e411eb9aa577191931add1', '20201205 18:27:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f81ea25e36e411eb9aa577191931add1', '20201205 18:30:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2d188f7e36e511eb9aa577191931add1', '20201205 18:32:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('600c05e536e511eb9aa577191931add1', '20201205 18:33:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9d2f643836e511eb9aa577191931add1', '20201205 18:35:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e77eff0536e511eb9aa577191931add1', '20201205 18:37:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9e4e569436e711eb9aa577191931add1', '20201205 18:49:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2b6ed3ef36e811eb9aa577191931add1', '20201205 18:53:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5def0fd336e811eb9aa577191931add1', '20201205 18:55:13', 'admin', '注销');
INSERT INTO `log_info` VALUES ('6176f04136e811eb9aa577191931add1', '20201205 18:55:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7cf3b45a36e811eb9aa577191931add1', '20201205 18:56:05', 'admin', '注销');
INSERT INTO `log_info` VALUES ('7f9148a236e811eb9aa577191931add1', '20201205 18:56:09', 'admin', '登录');
INSERT INTO `log_info` VALUES ('92de196b36e811eb9aa577191931add1', '20201205 18:56:42', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f5a7906a36e911eb9aa577191931add1', '20201205 19:06:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('408ccb9e36fc11eb9aa577191931add1', '20201205 21:17:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('57f9591e36ff11eb9aa577191931add1', '20201205 21:39:41', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b34ba59136ff11eb9aa577191931add1', '20201205 21:42:14', 'admin', '登录');
INSERT INTO `log_info` VALUES ('74ef6f9f370011eb9aa577191931add1', '20201205 21:47:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c8507edb370011eb9aa577191931add1', '20201205 21:49:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3e0be2ea370111eb9aa577191931add1', '20201205 21:53:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a93e094c370111eb9aa577191931add1', '20201205 21:56:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b71c33d5370111eb9aa577191931add1', '20201205 21:56:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('59bd44e9480e11eb8ac098cd3dc939c0', '20201227 14:39:08', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8ebbe31c480e11eb8ac098cd3dc939c0', '20201227 14:40:37', 'admin', '注销');
INSERT INTO `log_info` VALUES ('9519d96d480e11eb8ac098cd3dc939c0', '20201227 14:40:47', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6fca6a32483911eb8ac098cd3dc939c0', '20201227 19:47:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('1847212c483a11eb8ac098cd3dc939c0', '20201227 19:52:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('456a1e52483a11eb8ac098cd3dc939c0', '20201227 19:53:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('62213d4d483a11eb8ac098cd3dc939c0', '20201227 19:54:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('61bcfbec483b11eb8ac098cd3dc939c0', '20201227 20:01:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3ad413f7483c11eb8ac098cd3dc939c0', '20201227 20:07:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c673f244483c11eb8ac098cd3dc939c0', '20201227 20:11:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ea31f5e9483c11eb8ac098cd3dc939c0', '20201227 20:12:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ec433785483c11eb8ac098cd3dc939c0', '20201227 20:12:32', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6aec2580483d11eb8ac098cd3dc939c0', '20201227 20:16:04', 'admin', '登录');
INSERT INTO `log_info` VALUES ('372ca7a9483e11eb8ac098cd3dc939c0', '20201227 20:21:47', 'admin', '登录');
INSERT INTO `log_info` VALUES ('86380de6483e11eb8ac098cd3dc939c0', '20201227 20:23:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('bf272256483e11eb8ac098cd3dc939c0', '20201227 20:25:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5bb686e9483f11eb8ac098cd3dc939c0', '20201227 20:29:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('864eaa7c483f11eb8ac098cd3dc939c0', '20201227 20:31:09', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b5a0c911483f11eb8ac098cd3dc939c0', '20201227 20:32:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d969d26a483f11eb8ac098cd3dc939c0', '20201227 20:33:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('099781c1484011eb8ac098cd3dc939c0', '20201227 20:34:49', 'admin', '登录');
INSERT INTO `log_info` VALUES ('1e98edb7484011eb8ac098cd3dc939c0', '20201227 20:35:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2dfe5a7d484011eb8ac098cd3dc939c0', '20201227 20:35:50', 'admin', '登录');
INSERT INTO `log_info` VALUES ('33e06918484011eb8ac098cd3dc939c0', '20201227 20:36:00', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4af507a6484011eb8ac098cd3dc939c0', '20201227 20:36:39', 'admin', '登录');
INSERT INTO `log_info` VALUES ('70f72592484011eb8ac098cd3dc939c0', '20201227 20:37:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('91446f13484011eb8ac098cd3dc939c0', '20201227 20:38:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('bdf2c9c5484011eb8ac098cd3dc939c0', '20201227 20:39:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('cbc724ef484011eb8ac098cd3dc939c0', '20201227 20:40:15', 'admin', '登录');
INSERT INTO `log_info` VALUES ('df9ee757484011eb8ac098cd3dc939c0', '20201227 20:40:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3ac68f0e484111eb8ac098cd3dc939c0', '20201227 20:43:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('90cc79ce484111eb8ac098cd3dc939c0', '20201227 20:45:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c2e9660e484111eb8ac098cd3dc939c0', '20201227 20:47:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3596267c484211eb8ac098cd3dc939c0', '20201227 20:50:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('bd63e765484211eb8ac098cd3dc939c0', '20201227 20:54:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6b4c1da0484311eb8ac098cd3dc939c0', '20201227 20:59:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f136094a484311eb8ac098cd3dc939c0', '20201227 21:02:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2273c487484411eb8ac098cd3dc939c0', '20201227 21:04:09', 'admin', '登录');
INSERT INTO `log_info` VALUES ('529fa9c6484411eb8ac098cd3dc939c0', '20201227 21:05:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7dbec329484411eb8ac098cd3dc939c0', '20201227 21:06:42', 'admin', '注销');
INSERT INTO `log_info` VALUES ('83f34c30484411eb8ac098cd3dc939c0', '20201227 21:06:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e419555a484411eb8ac098cd3dc939c0', '20201227 21:09:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fc6539dd484411eb8ac098cd3dc939c0', '20201227 21:10:15', 'admin', '登录');
INSERT INTO `log_info` VALUES ('38704042484511eb8ac098cd3dc939c0', '20201227 21:11:55', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fb49b5a7484511eb8ac098cd3dc939c0', '20201227 21:17:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9b75d7ab484611eb8ac098cd3dc939c0', '20201227 21:21:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('eec2b6dc484611eb8ac098cd3dc939c0', '20201227 21:24:11', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e1d63291599111ebb20ae015c8ae0f3d', '20210118 21:34:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5c1a533c599411ebb20ae015c8ae0f3d', '20210118 21:52:08', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7b6ec812599411ebb20ae015c8ae0f3d', '20210118 21:53:01', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7ee8df1d599411ebb20ae015c8ae0f3d', '20210118 21:53:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('dc5d37ea599511ebb20ae015c8ae0f3d', '20210118 22:02:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b4de09bf599611ebb20ae015c8ae0f3d', '20210118 22:08:56', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f385a6a8599611ebb20ae015c8ae0f3d', '20210118 22:10:41', 'admin', '登录');
INSERT INTO `log_info` VALUES ('519e9b10599711ebb20ae015c8ae0f3d', '20210118 22:13:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c861aac2599711ebb20ae015c8ae0f3d', '20210118 22:16:38', 'admin', '登录');
INSERT INTO `log_info` VALUES ('dca413d65bf011ebb20ae015c8ae0f3d', '20210121 21:59:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('828308595bf111ebb20ae015c8ae0f3d', '20210121 22:03:55', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a0f29bea5bf111ebb20ae015c8ae0f3d', '20210121 22:04:46', 'admin', '登录');
INSERT INTO `log_info` VALUES ('cc7639905bf111ebb20ae015c8ae0f3d', '20210121 22:05:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0f8f93c55bf211ebb20ae015c8ae0f3d', '20210121 22:07:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9d8f621b5e3411ebb20ae015c8ae0f3d', '20210124 19:09:15', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3da2a37a5e3511ebb20ae015c8ae0f3d', '20210124 19:13:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('71afe2b95e3511ebb20ae015c8ae0f3d', '20210124 19:15:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9f2edf825e3511ebb20ae015c8ae0f3d', '20210124 19:16:27', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c7d042975e3611ebb20ae015c8ae0f3d', '20210124 19:24:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e5703b515e3611ebb20ae015c8ae0f3d', '20210124 19:25:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('13ac3bed5e3711ebb20ae015c8ae0f3d', '20210124 19:26:52', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2d6cfa2a5e3711ebb20ae015c8ae0f3d', '20210124 19:27:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('422494ff5e3711ebb20ae015c8ae0f3d', '20210124 19:28:10', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5ecb71cf5e3711ebb20ae015c8ae0f3d', '20210124 19:28:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('279b5e145e3811ebb20ae015c8ae0f3d', '20210124 19:34:35', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ab8be27b5e3811ebb20ae015c8ae0f3d', '20210124 19:38:16', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f50edb415e3811ebb20ae015c8ae0f3d', '20210124 19:40:19', 'admin', '登录');
INSERT INTO `log_info` VALUES ('336149be5e3911ebb20ae015c8ae0f3d', '20210124 19:42:04', 'admin', '登录');
INSERT INTO `log_info` VALUES ('766b1f655e3911ebb20ae015c8ae0f3d', '20210124 19:43:56', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e1a9c7345e3911ebb20ae015c8ae0f3d', '20210124 19:46:56', 'admin', '登录');
INSERT INTO `log_info` VALUES ('13bb0dd75e3a11ebb20ae015c8ae0f3d', '20210124 19:48:20', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f977ff005e3b11ebb20ae015c8ae0f3d', '20210124 20:01:55', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2e35ef165e3c11ebb20ae015c8ae0f3d', '20210124 20:03:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5e39a4405e3c11ebb20ae015c8ae0f3d', '20210124 20:04:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('14ec6ecf5e3d11ebb20ae015c8ae0f3d', '20210124 20:09:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('40e2f3505e4311ebb20ae015c8ae0f3d', '20210124 20:54:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4d1dba695e4511ebb20ae015c8ae0f3d', '20210124 21:08:41', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6c9382cd5e4511ebb20ae015c8ae0f3d', '20210124 21:09:34', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e37ef8155e4511ebb20ae015c8ae0f3d', '20210124 21:12:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('93b9807e5e4611ebb20ae015c8ae0f3d', '20210124 21:17:49', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ca4d579f5e4611ebb20ae015c8ae0f3d', '20210124 21:19:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fba439755e4611ebb20ae015c8ae0f3d', '20210124 21:20:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('33527a555e4711ebb20ae015c8ae0f3d', '20210124 21:22:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5516646c5e4711ebb20ae015c8ae0f3d', '20210124 21:23:13', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5a752df95e4711ebb20ae015c8ae0f3d', '20210124 21:23:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('17dbb28d5e4811ebb20ae015c8ae0f3d', '20210124 21:28:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6a0084df5e4911ebb20ae015c8ae0f3d', '20210124 21:38:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('841ee5875e4a11ebb20ae015c8ae0f3d', '20210124 21:46:01', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9fd4529b5e5211ebb20ae015c8ae0f3d', '20210124 22:44:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7b9fe0de5e5311ebb20ae015c8ae0f3d', '20210124 22:50:12', 'admin', '登录');
INSERT INTO `log_info` VALUES ('406d4b075f1211ebb20ae015c8ae0f3d', '20210125 21:35:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('da5af4605f1211ebb20ae015c8ae0f3d', '20210125 21:40:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e2f490e65f1511ebb20ae015c8ae0f3d', '20210125 22:01:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2df94d3f5f1611ebb20ae015c8ae0f3d', '20210125 22:03:51', 'admin', '登录');
INSERT INTO `log_info` VALUES ('616e48fb5f1611ebb20ae015c8ae0f3d', '20210125 22:05:17', 'admin', '登录');
INSERT INTO `log_info` VALUES ('dcbcd64f5f1711ebb20ae015c8ae0f3d', '20210125 22:15:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('352d7d915f1811ebb20ae015c8ae0f3d', '20210125 22:18:22', 'admin', '登录');
INSERT INTO `log_info` VALUES ('6e887d265f1811ebb20ae015c8ae0f3d', '20210125 22:19:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e3852f595f1811ebb20ae015c8ae0f3d', '20210125 22:23:14', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7939d7ca60a311ebb20ae015c8ae0f3d', '20210127 21:27:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c4a9d80f60a711ebb20ae015c8ae0f3d', '20210127 21:58:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f2a5fa5a615911ebb20ae015c8ae0f3d', '20210128 19:13:54', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a821bcb8615c11ebb20ae015c8ae0f3d', '20210128 19:33:18', 'admin', '登录');
INSERT INTO `log_info` VALUES ('ed6b5cd1615c11ebb20ae015c8ae0f3d', '20210128 19:35:14', 'admin', '登录');
INSERT INTO `log_info` VALUES ('21db4490615d11ebb20ae015c8ae0f3d', '20210128 19:36:42', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8d846b6d615d11ebb20ae015c8ae0f3d', '20210128 19:39:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('f56572a9615d11ebb20ae015c8ae0f3d', '20210128 19:42:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d2c9e5e8615e11ebb20ae015c8ae0f3d', '20210128 19:48:48', 'admin', '登录');
INSERT INTO `log_info` VALUES ('df187677615e11ebb20ae015c8ae0f3d', '20210128 19:49:09', 'admin', '登录');
INSERT INTO `log_info` VALUES ('530e2dcf615f11ebb20ae015c8ae0f3d', '20210128 19:52:24', 'admin', '登录');
INSERT INTO `log_info` VALUES ('786affed615f11ebb20ae015c8ae0f3d', '20210128 19:53:26', 'admin', '登录');
INSERT INTO `log_info` VALUES ('9a3dee42616011ebb20ae015c8ae0f3d', '20210128 20:01:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('17484683616111ebb20ae015c8ae0f3d', '20210128 20:05:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3350876b616111ebb20ae015c8ae0f3d', '20210128 20:05:49', 'admin', '登录');
INSERT INTO `log_info` VALUES ('43c4572f616211ebb20ae015c8ae0f3d', '20210128 20:13:27', 'admin', '登录');
INSERT INTO `log_info` VALUES ('95eefc16616211ebb20ae015c8ae0f3d', '20210128 20:15:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c544f27b616211ebb20ae015c8ae0f3d', '20210128 20:17:04', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fcd58ade616211ebb20ae015c8ae0f3d', '20210128 20:18:37', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2f0e17de616311ebb20ae015c8ae0f3d', '20210128 20:20:01', 'admin', '登录');
INSERT INTO `log_info` VALUES ('dd848015616511ebb20ae015c8ae0f3d', '20210128 20:39:13', 'admin', '登录');
INSERT INTO `log_info` VALUES ('386b1422616611ebb20ae015c8ae0f3d', '20210128 20:41:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('68f8b673616611ebb20ae015c8ae0f3d', '20210128 20:43:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('b0c9a105616611ebb20ae015c8ae0f3d', '20210128 20:45:07', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0751a6d7616711ebb20ae015c8ae0f3d', '20210128 20:47:33', 'admin', '登录');
INSERT INTO `log_info` VALUES ('670ebc68616711ebb20ae015c8ae0f3d', '20210128 20:50:13', 'admin', '登录');
INSERT INTO `log_info` VALUES ('edb69030616711ebb20ae015c8ae0f3d', '20210128 20:53:59', 'admin', '登录');
INSERT INTO `log_info` VALUES ('322784eb616811ebb20ae015c8ae0f3d', '20210128 20:55:54', 'admin', '登录');
INSERT INTO `log_info` VALUES ('55644876616811ebb20ae015c8ae0f3d', '20210128 20:56:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5fe1d578616811ebb20ae015c8ae0f3d', '20210128 20:57:11', 'admin', '登录');
INSERT INTO `log_info` VALUES ('716cbe9f616811ebb20ae015c8ae0f3d', '20210128 20:57:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a44dd61e616811ebb20ae015c8ae0f3d', '20210128 20:59:05', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d4875450616811ebb20ae015c8ae0f3d', '20210128 21:00:26', 'admin', '登录');
INSERT INTO `log_info` VALUES ('02258326616911ebb20ae015c8ae0f3d', '20210128 21:01:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2efc7d9a616911ebb20ae015c8ae0f3d', '20210128 21:02:58', 'admin', '登录');
INSERT INTO `log_info` VALUES ('90801bc5616911ebb20ae015c8ae0f3d', '20210128 21:05:42', 'admin', '登录');
INSERT INTO `log_info` VALUES ('7591a449616d11ebb20ae015c8ae0f3d', '20210128 21:33:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8177130e616d11ebb20ae015c8ae0f3d', '20210128 21:33:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ffd73ed562ad11ebb20ae015c8ae0f3d', '20210130 11:47:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cbc57d0362c011ebb20ae015c8ae0f3d', '20210130 14:02:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d8de19cf648511ebb20ae015c8ae0f3d', '20210201 20:05:30', 'admin', '登录');
INSERT INTO `log_info` VALUES ('4d25f6ed648611ebb20ae015c8ae0f3d', '20210201 20:08:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('cb203406648a11ebb20ae015c8ae0f3d', '20210201 20:40:54', 'admin', '登录');
INSERT INTO `log_info` VALUES ('20d2c23e648c11ebb20ae015c8ae0f3d', '20210201 20:50:28', 'admin', '登录');
INSERT INTO `log_info` VALUES ('114b3b02653e11ebb20ae015c8ae0f3d', '20210202 18:04:08', 'admin', '登录');
INSERT INTO `log_info` VALUES ('102f5087654e11ebb20ae015c8ae0f3d', '20210202 19:58:38', 'admin', '登录');
INSERT INTO `log_info` VALUES ('57599b34654e11ebb20ae015c8ae0f3d', '20210202 20:00:38', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c59c7e37654e11ebb20ae015c8ae0f3d', '20210202 20:03:43', 'admin', '登录');
INSERT INTO `log_info` VALUES ('8555d4d7655011ebb20ae015c8ae0f3d', '20210202 20:16:14', 'admin', '登录');
INSERT INTO `log_info` VALUES ('d0fc7586655011ebb20ae015c8ae0f3d', '20210202 20:18:21', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fb94d5af655011ebb20ae015c8ae0f3d', '20210202 20:19:32', 'admin', '登录');
INSERT INTO `log_info` VALUES ('5482480f655111ebb20ae015c8ae0f3d', '20210202 20:22:02', 'admin', '登录');
INSERT INTO `log_info` VALUES ('96bafd9c655111ebb20ae015c8ae0f3d', '20210202 20:23:53', 'admin', '登录');
INSERT INTO `log_info` VALUES ('0c0201f7655611ebb20ae015c8ae0f3d', '20210202 20:55:47', 'admin', '登录');
INSERT INTO `log_info` VALUES ('282fe961655611ebb20ae015c8ae0f3d', '20210202 20:56:35', 'admin', '注销');
INSERT INTO `log_info` VALUES ('2c8fbdde655611ebb20ae015c8ae0f3d', '20210202 20:56:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('33941e84655611ebb20ae015c8ae0f3d', '20210202 20:56:54', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('972965e1655b11ebb20ae015c8ae0f3d', '20210202 21:35:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('eb86c93d6da411ebb20ae015c8ae0f3d', '20210213 10:40:12', 'admin', '登录');
INSERT INTO `log_info` VALUES ('410ee4ed6da611ebb20ae015c8ae0f3d', '20210213 10:49:45', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3aca66766da711ebb20ae015c8ae0f3d', '20210213 10:56:44', 'admin', '登录');
INSERT INTO `log_info` VALUES ('c7832fbf6da711ebb20ae015c8ae0f3d', '20210213 11:00:40', 'admin', '登录');
INSERT INTO `log_info` VALUES ('fa90c2446da711ebb20ae015c8ae0f3d', '20210213 11:02:06', 'admin', '登录');
INSERT INTO `log_info` VALUES ('40b9b28e6da811ebb20ae015c8ae0f3d', '20210213 11:04:04', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a41089ae6da811ebb20ae015c8ae0f3d', '20210213 11:06:50', 'admin', '登录');
INSERT INTO `log_info` VALUES ('a022a6526daa11ebb20ae015c8ae0f3d', '20210213 11:21:03', 'admin', '登录');
INSERT INTO `log_info` VALUES ('e9a6dde86dac11ebb20ae015c8ae0f3d', '20210213 11:37:25', 'admin', '登录');
INSERT INTO `log_info` VALUES ('3b760e966dad11ebb20ae015c8ae0f3d', '20210213 11:39:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a959dd336dad11ebb20ae015c8ae0f3d', '20210213 11:42:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d807d2af6dad11ebb20ae015c8ae0f3d', '20210213 11:44:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9dae56a26daf11ebb20ae015c8ae0f3d', '20210213 11:56:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cf934e306daf11ebb20ae015c8ae0f3d', '20210213 11:58:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0ae1a9956db011ebb20ae015c8ae0f3d', '20210213 11:59:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('30b8461d6db011ebb20ae015c8ae0f3d', '20210213 12:00:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5092ef536db011ebb20ae015c8ae0f3d', '20210213 12:01:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d9bab5626db311ebb20ae015c8ae0f3d', '20210213 12:27:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('52fcfc0f6db411ebb20ae015c8ae0f3d', '20210213 12:30:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6a648c926db411ebb20ae015c8ae0f3d', '20210213 12:31:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9bb01c006db411ebb20ae015c8ae0f3d', '20210213 12:32:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e08936ef78cb11eb973d6100d940b6cf', '20210227 15:17:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9ac9f4b778cd11eb973d6100d940b6cf', '20210227 15:29:39', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('ffe88e8378cf11eb973d6100d940b6cf', '20210227 15:46:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('09f95aeb78d011eb973d6100d940b6cf', '20210227 15:47:04', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('119075e478d911eb973d6100d940b6cf', '20210227 16:51:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('16aeb0df78d911eb973d6100d940b6cf', '20210227 16:51:51', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('ed90fe5b78e011eb973d6100d940b6cf', '20210227 17:47:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('71c5194178e511eb973d6100d940b6cf', '20210227 18:20:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('209d080078e611eb973d6100d940b6cf', '20210227 18:25:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('04a49b3678e711eb973d6100d940b6cf', '20210227 18:31:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6f00e93378e711eb973d6100d940b6cf', '20210227 18:34:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('00acde0d790011eb973d6100d940b6cf', '20210227 21:30:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('49763299797511eb973d6100d940b6cf', '20210228 11:29:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a175f430797511eb973d6100d940b6cf', '20210228 11:32:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('05df8962797611eb973d6100d940b6cf', '20210228 11:35:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bf8244c6797611eb973d6100d940b6cf', '20210228 11:40:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dd47713f797711eb973d6100d940b6cf', '20210228 11:48:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('30d07486797811eb973d6100d940b6cf', '20210228 11:50:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c55d2100797811eb973d6100d940b6cf', '20210228 11:54:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9d5e1012797911eb973d6100d940b6cf', '20210228 12:00:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a22ccd65797911eb973d6100d940b6cf', '20210228 12:01:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('10246967797a11eb973d6100d940b6cf', '20210228 12:04:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('567e1c94797a11eb973d6100d940b6cf', '20210228 12:06:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('61b884ce797b11eb973d6100d940b6cf', '20210228 12:13:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a659dcb4797b11eb973d6100d940b6cf', '20210228 12:15:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bf8b8cb7797b11eb973d6100d940b6cf', '20210228 12:16:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f4533dea79a411eb973d6100d940b6cf', '20210228 17:11:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a9ab4bb879a511eb973d6100d940b6cf', '20210228 17:16:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c6a4d99079a511eb973d6100d940b6cf', '20210228 17:17:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2e75049579a611eb973d6100d940b6cf', '20210228 17:19:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('253e67dc79a711eb973d6100d940b6cf', '20210228 17:26:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('df58530e79bb11eb973d6100d940b6cf', '20210228 19:55:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('048be9e679bd11eb973d6100d940b6cf', '20210228 20:03:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('23ff5b1279bf11eb973d6100d940b6cf', '20210228 20:18:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('678a0ed879c211eb973d6100d940b6cf', '20210228 20:41:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c7f3ad8679c211eb973d6100d940b6cf', '20210228 20:44:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bec954ad79c311eb973d6100d940b6cf', '20210228 20:51:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('19a2e3b979c411eb973d6100d940b6cf', '20210228 20:54:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('37aa347879c411eb973d6100d940b6cf', '20210228 20:54:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0ba6cb8a79c511eb973d6100d940b6cf', '20210228 21:00:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('494bf17079c511eb973d6100d940b6cf', '20210228 21:02:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cf5e021279c511eb973d6100d940b6cf', '20210228 21:06:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f50a809d79c511eb973d6100d940b6cf', '20210228 21:07:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('57f6588479c611eb973d6100d940b6cf', '20210228 21:10:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f759e12579c611eb973d6100d940b6cf', '20210228 21:14:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cc965ba579c711eb973d6100d940b6cf', '20210228 21:20:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0c7b8f057f1211eb973d6100d940b6cf', '20210307 14:54:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d7d7eda77f1311eb973d6100d940b6cf', '20210307 15:07:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e5b288777f1311eb973d6100d940b6cf', '20210307 15:07:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0fa322a97f1411eb973d6100d940b6cf', '20210307 15:08:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2568a7017f1411eb973d6100d940b6cf', '20210307 15:09:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('954c49fc7f1411eb973d6100d940b6cf', '20210307 15:12:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b1aa43cd7f1411eb973d6100d940b6cf', '20210307 15:13:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('00eb2a9a7f1511eb973d6100d940b6cf', '20210307 15:15:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('556e5f7d7f1511eb973d6100d940b6cf', '20210307 15:17:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('775d9e3d7f1511eb973d6100d940b6cf', '20210307 15:18:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b8f051c17f1511eb973d6100d940b6cf', '20210307 15:20:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('27832f227f1d11eb973d6100d940b6cf', '20210307 16:13:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('da0c56207f1e11eb973d6100d940b6cf', '20210307 16:26:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2e87adee7f1f11eb973d6100d940b6cf', '20210307 16:28:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4d028dea7f2011eb973d6100d940b6cf', '20210307 16:36:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f58881c27f2011eb973d6100d940b6cf', '20210307 16:41:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('495d1da47f2111eb973d6100d940b6cf', '20210307 16:43:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5aa4de2d7f2211eb973d6100d940b6cf', '20210307 16:51:09', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('5e79f32c7f2211eb973d6100d940b6cf', '20210307 16:51:16', '楼乐妍', '登录');
INSERT INTO `log_info` VALUES ('c8005613801211eb973d6100d940b6cf', '20210308 21:32:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('05de0788801311eb973d6100d940b6cf', '20210308 21:33:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3e52a83581ac11eb973d6100d940b6cf', '20210310 22:23:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d96b8e76865d11eb973d6100d940b6cf', '20210316 21:44:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('55eec83988ad11ebb83f41de985c03fc', '20210319 20:19:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0eb379e288b011ebb83f41de985c03fc', '20210319 20:38:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('765d6f5e88b011ebb83f41de985c03fc', '20210319 20:41:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e2a8637488b011ebb83f41de985c03fc', '20210319 20:44:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1693d51488b111ebb83f41de985c03fc', '20210319 20:46:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2c7ff7ef88b111ebb83f41de985c03fc', '20210319 20:46:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cf12f6f188b111ebb83f41de985c03fc', '20210319 20:51:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('32d4b29288b211ebb83f41de985c03fc', '20210319 20:54:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('67b231c988b211ebb83f41de985c03fc', '20210319 20:55:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a3dd093288b211ebb83f41de985c03fc', '20210319 20:57:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e7cd70ab88b211ebb83f41de985c03fc', '20210319 20:59:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f9d697c888b211ebb83f41de985c03fc', '20210319 20:59:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('21dfcafe88b311ebb83f41de985c03fc', '20210319 21:00:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a62c597288b311ebb83f41de985c03fc', '20210319 21:04:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fed17df288b311ebb83f41de985c03fc', '20210319 21:06:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('47d0f84688b411ebb83f41de985c03fc', '20210319 21:08:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a5f6131d88b411ebb83f41de985c03fc', '20210319 21:11:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dd9d835e88b411ebb83f41de985c03fc', '20210319 21:13:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('845230e788b511ebb83f41de985c03fc', '20210319 21:17:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5c0458a588b611ebb83f41de985c03fc', '20210319 21:23:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c0845bb688b611ebb83f41de985c03fc', '20210319 21:26:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('081213a688b711ebb83f41de985c03fc', '20210319 21:28:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('30e97c3888b711ebb83f41de985c03fc', '20210319 21:29:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('64efb6818a3511ebb83f41de985c03fc', '20210321 19:05:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('31a032af8fac11ebb83f41de985c03fc', '20210328 17:58:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8a0c04e28fbd11ebb83f41de985c03fc', '20210328 20:02:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('eae8a53c8fbf11ebb83f41de985c03fc', '20210328 20:19:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2be007698fc111ebb83f41de985c03fc', '20210328 20:28:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('56c61c9b8fc111ebb83f41de985c03fc', '20210328 20:29:36', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('5d3642518fc111ebb83f41de985c03fc', '20210328 20:29:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('befe53f28fc111ebb83f41de985c03fc', '20210328 20:32:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9b72a1ce8fc211ebb83f41de985c03fc', '20210328 20:38:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ee20f64d8fc211ebb83f41de985c03fc', '20210328 20:40:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1f3466f78fc311ebb83f41de985c03fc', '20210328 20:42:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b346e7ab8fc311ebb83f41de985c03fc', '20210328 20:46:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7245e75d8fc411ebb83f41de985c03fc', '20210328 20:51:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f316c53c8fc411ebb83f41de985c03fc', '20210328 20:55:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('aa5faaea8fc611ebb83f41de985c03fc', '20210328 21:07:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ceaf40d68fc611ebb83f41de985c03fc', '20210328 21:08:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c06c102e8fc711ebb83f41de985c03fc', '20210328 21:15:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('03343bcb8fc811ebb83f41de985c03fc', '20210328 21:17:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1b316cbb8fc811ebb83f41de985c03fc', '20210328 21:18:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6fb02b2f8fc811ebb83f41de985c03fc', '20210328 21:20:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c0f9b4ae8fc811ebb83f41de985c03fc', '20210328 21:22:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c8799a0d8fc811ebb83f41de985c03fc', '20210328 21:22:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d4bd288a8fc811ebb83f41de985c03fc', '20210328 21:23:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28a63fea8fc911ebb83f41de985c03fc', '20210328 21:25:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('87085c028fc911ebb83f41de985c03fc', '20210328 21:28:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a68826e88fc911ebb83f41de985c03fc', '20210328 21:29:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b6a70d4b8fca11ebb83f41de985c03fc', '20210328 21:36:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d888a0ce8fca11ebb83f41de985c03fc', '20210328 21:37:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d65f0ca09ac911eb809694738540b2bb', '20210411 21:28:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('11224b559f7411ebb363144f8a625b6e', '20210417 19:57:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e878223e9f7411ebb363144f8a625b6e', '20210417 20:03:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('019308589f7511ebb363144f8a625b6e', '20210417 20:04:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('97b05d3a9f7511ebb363144f8a625b6e', '20210417 20:08:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9ea9de1d9f7511ebb363144f8a625b6e', '20210417 20:08:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('971202aa9ff211ebb363144f8a625b6e', '20210418 11:02:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9d00704c9ff911ebb363144f8a625b6e', '20210418 11:53:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ae1151e49ff911ebb363144f8a625b6e', '20210418 11:53:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d4b2d3ea9ff911ebb363144f8a625b6e', '20210418 11:54:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('10719c119ffa11ebb363144f8a625b6e', '20210418 11:56:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a74915209ffa11ebb363144f8a625b6e', '20210418 12:00:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('aff254eb9ffa11ebb363144f8a625b6e', '20210418 12:00:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3907e0999ffb11ebb363144f8a625b6e', '20210418 12:04:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ea36e54da01811ebb363144f8a625b6e', '20210418 15:37:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a77ee5c5a01911ebb363144f8a625b6e', '20210418 15:42:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('eaacf2efa01a11ebb363144f8a625b6e', '20210418 15:51:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3eb4e50ea01c11ebb363144f8a625b6e', '20210418 16:01:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('238e6427a01e11ebb363144f8a625b6e', '20210418 16:14:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3894a32da01f11ebb363144f8a625b6e', '20210418 16:22:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('82a8699ca01f11ebb363144f8a625b6e', '20210418 16:24:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('949c8ad6a02011ebb363144f8a625b6e', '20210418 16:32:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0e121c3aa02111ebb363144f8a625b6e', '20210418 16:35:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1076782a02111ebb363144f8a625b6e', '20210418 16:40:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2ebaa186a02211ebb363144f8a625b6e', '20210418 16:43:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a8d139dca02211ebb363144f8a625b6e', '20210418 16:47:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e797b50da02211ebb363144f8a625b6e', '20210418 16:48:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d078e5fda02311ebb363144f8a625b6e', '20210418 16:55:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d674f6e1a02411ebb363144f8a625b6e', '20210418 17:02:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('64193715a02511ebb363144f8a625b6e', '20210418 17:06:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('70e0a5c8a02511ebb363144f8a625b6e', '20210418 17:06:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e8d06347a8ec11eb890700ffb1ec597f', '20210429 21:14:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d745c708a8ed11eb890700ffb1ec597f', '20210429 21:21:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('be62f317a8ee11eb890700ffb1ec597f', '20210429 21:27:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('61ab2885a8ef11eb890700ffb1ec597f', '20210429 21:32:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cf4a3d0ca8ef11eb890700ffb1ec597f', '20210429 21:35:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('219f1f27a8f111eb890700ffb1ec597f', '20210429 21:44:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('397da0a9a8f111eb890700ffb1ec597f', '20210429 21:45:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('899993dfa8f111eb890700ffb1ec597f', '20210429 21:47:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c87a7d1ea8f211eb890700ffb1ec597f', '20210429 21:56:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d993164bad4411ebabe400ffb1ec597f', '20210505 09:54:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7a0f0f47ad4511ebabe400ffb1ec597f', '20210505 09:59:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7d30e861ad4511ebabe400ffb1ec597f', '20210505 09:59:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('316de2f9ad4611ebabe400ffb1ec597f', '20210505 10:04:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('49bb26cfad4711ebabe400ffb1ec597f', '20210505 10:12:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6e01a62dad4711ebabe400ffb1ec597f', '20210505 10:13:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1728dd9ad4711ebabe400ffb1ec597f', '20210505 10:15:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d0783344ad4711ebabe400ffb1ec597f', '20210505 10:15:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d313e896ad4711ebabe400ffb1ec597f', '20210505 10:15:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d9d5638cad4711ebabe400ffb1ec597f', '20210505 10:16:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('78003f09ad4811ebabe400ffb1ec597f', '20210505 10:20:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d084684aad4811ebabe400ffb1ec597f', '20210505 10:22:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d9b2ccd4ad4811ebabe400ffb1ec597f', '20210505 10:23:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f9920d90ad4811ebabe400ffb1ec597f', '20210505 10:24:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('259d6ea3ada211ebabe400ffb1ec597f', '20210505 21:02:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5fbb6d41ada211ebabe400ffb1ec597f', '20210505 21:04:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('917ab8f6ada211ebabe400ffb1ec597f', '20210505 21:05:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a38654fdada211ebabe400ffb1ec597f', '20210505 21:05:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('caf0326eada211ebabe400ffb1ec597f', '20210505 21:07:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f93b217cada511ebabe400ffb1ec597f', '20210505 21:29:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2cccb31cada711ebabe400ffb1ec597f', '20210505 21:38:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0b9ff1a9ada811ebabe400ffb1ec597f', '20210505 21:44:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1050cde9ada811ebabe400ffb1ec597f', '20210505 21:44:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6c303e93ada811ebabe400ffb1ec597f', '20210505 21:47:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('71ec0d83b25a11ebab5b00ffb1ec597f', '20210511 21:11:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('857079bbb25f11ebab5b00ffb1ec597f', '20210511 21:47:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d1fcfa35b25f11ebab5b00ffb1ec597f', '20210511 21:50:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0975360fb26011ebab5b00ffb1ec597f', '20210511 21:51:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c8533270b26211ebab5b00ffb1ec597f', '20210511 22:11:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f8c6bb7db26211ebab5b00ffb1ec597f', '20210511 22:12:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('271a38f2b26311ebab5b00ffb1ec597f', '20210511 22:13:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('50f58025b26311ebab5b00ffb1ec597f', '20210511 22:15:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5a550e7bb26311ebab5b00ffb1ec597f', '20210511 22:15:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9967e9bcb26311ebab5b00ffb1ec597f', '20210511 22:17:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ee98bfc2b26311ebab5b00ffb1ec597f', '20210511 22:19:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0f28d4a3b26411ebab5b00ffb1ec597f', '20210511 22:20:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('454ee81ab26411ebab5b00ffb1ec597f', '20210511 22:21:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('71fea46db26411ebab5b00ffb1ec597f', '20210511 22:23:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dae598f0b26411ebab5b00ffb1ec597f', '20210511 22:26:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0a81637db26511ebab5b00ffb1ec597f', '20210511 22:27:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2daf65eeb26511ebab5b00ffb1ec597f', '20210511 22:28:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7d7a43feb26511ebab5b00ffb1ec597f', '20210511 22:30:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('39a2574eb26611ebab5b00ffb1ec597f', '20210511 22:35:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('90ad21dab26611ebab5b00ffb1ec597f', '20210511 22:38:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('88b53287b26711ebab5b00ffb1ec597f', '20210511 22:45:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('adc8d207b26711ebab5b00ffb1ec597f', '20210511 22:46:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b6cad118b26711ebab5b00ffb1ec597f', '20210511 22:46:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1924f5cb26711ebab5b00ffb1ec597f', '20210511 22:46:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f2f0670bb26711ebab5b00ffb1ec597f', '20210511 22:48:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('18d71bd7b26811ebab5b00ffb1ec597f', '20210511 22:49:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('107aa14bb26911ebab5b00ffb1ec597f', '20210511 22:56:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6c9d1cfeb3d811ebbc4d144f8a625b6e', '20210513 18:46:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ef067b00b3d811ebbc4d144f8a625b6e', '20210513 18:49:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f7925c2eb3d811ebbc4d144f8a625b6e', '20210513 18:49:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2fa9dc05b3d911ebbc4d144f8a625b6e', '20210513 18:51:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('538c4c73b3d911ebbc4d144f8a625b6e', '20210513 18:52:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('78d3c872b3d911ebbc4d144f8a625b6e', '20210513 18:53:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('deec6882b3d911ebbc4d144f8a625b6e', '20210513 18:56:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('83125276b3da11ebbc4d144f8a625b6e', '20210513 19:01:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a3ecc57eb3da11ebbc4d144f8a625b6e', '20210513 19:01:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1f56c031b3dc11ebbc4d144f8a625b6e', '20210513 19:12:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28d3e434b3dd11ebbc4d144f8a625b6e', '20210513 19:20:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('47027c47b3dd11ebbc4d144f8a625b6e', '20210513 19:20:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('59698419b3dd11ebbc4d144f8a625b6e', '20210513 19:21:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a3570658b3dd11ebbc4d144f8a625b6e', '20210513 19:23:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3fa9b2feb3de11ebbc4d144f8a625b6e', '20210513 19:27:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('79f79ebbb3df11ebbc4d144f8a625b6e', '20210513 19:36:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8b4bf1f3b3df11ebbc4d144f8a625b6e', '20210513 19:37:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ec2c3121b3df11ebbc4d144f8a625b6e', '20210513 19:39:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f3fca1b0b3df11ebbc4d144f8a625b6e', '20210513 19:40:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('25dad30eb3e011ebbc4d144f8a625b6e', '20210513 19:41:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7fd911e8b3e011ebbc4d144f8a625b6e', '20210513 19:43:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1eb2aeeb3e011ebbc4d144f8a625b6e', '20210513 19:45:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fcba2937b3e011ebbc4d144f8a625b6e', '20210513 19:47:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('16a492e9b3e111ebbc4d144f8a625b6e', '20210513 19:48:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c42f0b61b3e111ebbc4d144f8a625b6e', '20210513 19:52:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d1897843b3e111ebbc4d144f8a625b6e', '20210513 19:53:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0796566fb3e211ebbc4d144f8a625b6e', '20210513 19:54:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('36c21c51b3e311ebbc4d144f8a625b6e', '20210513 20:03:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0f34f06eb3e411ebbc4d144f8a625b6e', '20210513 20:09:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('93e5492db3e411ebbc4d144f8a625b6e', '20210513 20:13:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('359cc38cb3e511ebbc4d144f8a625b6e', '20210513 20:17:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6f3149e4b3e511ebbc4d144f8a625b6e', '20210513 20:19:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a7227e1bb3e511ebbc4d144f8a625b6e', '20210513 20:20:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8c82c9a2b3e611ebbc4d144f8a625b6e', '20210513 20:27:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c5b3f570b3e611ebbc4d144f8a625b6e', '20210513 20:28:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7dbe160eb4bf11eb9d80144f8a625b6e', '20210514 22:20:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('950d06acb4c011eb9d80144f8a625b6e', '20210514 22:27:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a7716188b89c11eb9d80144f8a625b6e', '20210519 20:20:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b61c2104b89d11eb9d80144f8a625b6e', '20210519 20:28:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4baccd69b89e11eb9d80144f8a625b6e', '20210519 20:32:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9937db60b89e11eb9d80144f8a625b6e', '20210519 20:34:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b7ea2c87b89e11eb9d80144f8a625b6e', '20210519 20:35:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('31398084b8a111eb9d80144f8a625b6e', '20210519 20:53:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('659c8227b8a111eb9d80144f8a625b6e', '20210519 20:54:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f70a35fab8a311eb9d80144f8a625b6e', '20210519 21:13:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('003d6de8b8a411eb9d80144f8a625b6e', '20210519 21:13:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3773e5beb8a411eb9d80144f8a625b6e', '20210519 21:14:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('51b28378b8a411eb9d80144f8a625b6e', '20210519 21:15:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('61985ff4b8a411eb9d80144f8a625b6e', '20210519 21:15:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9b2e91d1b8a411eb9d80144f8a625b6e', '20210519 21:17:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9de7927fb8a411eb9d80144f8a625b6e', '20210519 21:17:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9457efb6b8a711eb9d80144f8a625b6e', '20210519 21:38:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7f5a4106b8a811eb9d80144f8a625b6e', '20210519 21:45:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8802eda7b8a811eb9d80144f8a625b6e', '20210519 21:45:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e34e4d26b8a811eb9d80144f8a625b6e', '20210519 21:48:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b861444fb8a911eb9d80144f8a625b6e', '20210519 21:54:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b2127a2bb8aa11eb9d80144f8a625b6e', '20210519 22:01:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d70fc377b8aa11eb9d80144f8a625b6e', '20210519 22:02:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2c66afc4b8ab11eb9d80144f8a625b6e', '20210519 22:04:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('992d1cadb8ab11eb9d80144f8a625b6e', '20210519 22:07:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d9f504e1b8ab11eb9d80144f8a625b6e', '20210519 22:09:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f4c02a6db8ab11eb9d80144f8a625b6e', '20210519 22:10:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('87875581b8ae11eb9d80144f8a625b6e', '20210519 22:28:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ed644c13b8ae11eb9d80144f8a625b6e', '20210519 22:31:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('06c6ebd2b8af11eb9d80144f8a625b6e', '20210519 22:32:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7af2a208b97611eb9d80144f8a625b6e', '20210520 22:19:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('56f0cf76b97811eb9d80144f8a625b6e', '20210520 22:33:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9e6fa96cb97811eb9d80144f8a625b6e', '20210520 22:35:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b7105d95b97811eb9d80144f8a625b6e', '20210520 22:35:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e344bc2ab97811eb9d80144f8a625b6e', '20210520 22:37:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e8e37039b97811eb9d80144f8a625b6e', '20210520 22:37:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0a7ff64fb97911eb9d80144f8a625b6e', '20210520 22:38:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1a7b6d2ab97911eb9d80144f8a625b6e', '20210520 22:38:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5a1b0dbab97911eb9d80144f8a625b6e', '20210520 22:40:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7317f7f4b97911eb9d80144f8a625b6e', '20210520 22:41:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8c0b44c7b97911eb9d80144f8a625b6e', '20210520 22:41:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a3bb8196b97911eb9d80144f8a625b6e', '20210520 22:42:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a9bf0c73b97911eb9d80144f8a625b6e', '20210520 22:42:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c306a232b97911eb9d80144f8a625b6e', '20210520 22:43:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('57a66a8eb97a11eb9d80144f8a625b6e', '20210520 22:47:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8d40d59cb97a11eb9d80144f8a625b6e', '20210520 22:49:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('984b4da0b97a11eb9d80144f8a625b6e', '20210520 22:49:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dc82872db97a11eb9d80144f8a625b6e', '20210520 22:51:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e9582dceb97a11eb9d80144f8a625b6e', '20210520 22:51:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('81f78560ba9c11eb9d80144f8a625b6e', '20210522 09:24:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c915f948ba9c11eb9d80144f8a625b6e', '20210522 09:26:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('80d1cd2cbaa011eb8357144f8a625b6e', '20210522 09:53:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('acf5725fbaa011eb8357144f8a625b6e', '20210522 09:54:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b5708362baa011eb8357144f8a625b6e', '20210522 09:54:56', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('b8d0e259baa011eb8357144f8a625b6e', '20210522 09:55:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cdb50c79baa011eb8357144f8a625b6e', '20210522 09:55:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dbd1f232baa111eb8357144f8a625b6e', '20210522 10:03:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('077ecc05baa211eb8357144f8a625b6e', '20210522 10:04:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('471b3ff2baa211eb8357144f8a625b6e', '20210522 10:06:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('63de7f52baa211eb8357144f8a625b6e', '20210522 10:06:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a2b2a7fdbaa211eb8357144f8a625b6e', '20210522 10:08:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('41186331baa311eb8357144f8a625b6e', '20210522 10:13:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ab2d467cbaa311eb8357144f8a625b6e', '20210522 10:16:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b8f61e5cbaa311eb8357144f8a625b6e', '20210522 10:16:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6f83645dbaa411eb8357144f8a625b6e', '20210522 10:21:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ce84c8d1baa411eb8357144f8a625b6e', '20210522 10:24:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fb9894f7baa411eb8357144f8a625b6e', '20210522 10:25:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1e6a63e1baa511eb8357144f8a625b6e', '20210522 10:26:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d6ec0488baff11eb8357144f8a625b6e', '20210522 21:15:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dd091871baff11eb8357144f8a625b6e', '20210522 21:16:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5ffb2ae6bb0011eb8357144f8a625b6e', '20210522 21:19:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8bac66b1bb0011eb8357144f8a625b6e', '20210522 21:20:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9609607abb0011eb8357144f8a625b6e', '20210522 21:21:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cbba77f9bb0011eb8357144f8a625b6e', '20210522 21:22:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('24cb6529bb0111eb8357144f8a625b6e', '20210522 21:25:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b912fc59bb0111eb8357144f8a625b6e', '20210522 21:29:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0f64b8b0bb0211eb8357144f8a625b6e', '20210522 21:31:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d74165e2bb0311eb8357144f8a625b6e', '20210522 21:44:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fb099d2dbb0311eb8357144f8a625b6e', '20210522 21:45:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bcdd4080bb0411eb8357144f8a625b6e', '20210522 21:50:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b4b991d3bb0511eb8357144f8a625b6e', '20210522 21:57:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cdcbae8dbb0511eb8357144f8a625b6e', '20210522 21:58:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d64b14cabb0511eb8357144f8a625b6e', '20210522 21:58:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0dff6133bb0611eb8357144f8a625b6e', '20210522 22:00:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2fbc3dc7bb0611eb8357144f8a625b6e', '20210522 22:01:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5afbee5abb0611eb8357144f8a625b6e', '20210522 22:02:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('683a73ebbb0611eb8357144f8a625b6e', '20210522 22:02:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('75f832fabb0611eb8357144f8a625b6e', '20210522 22:03:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('80e7745fbb0611eb8357144f8a625b6e', '20210522 22:03:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9e19e27bbb0611eb8357144f8a625b6e', '20210522 22:04:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bc1597debb0611eb8357144f8a625b6e', '20210522 22:05:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1b8624ebb0611eb8357144f8a625b6e', '20210522 22:05:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('63548790bb0711eb8357144f8a625b6e', '20210522 22:09:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('797d0b51bb0711eb8357144f8a625b6e', '20210522 22:10:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('814fa5c2bb0711eb8357144f8a625b6e', '20210522 22:10:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('88ef9bb9bb0711eb8357144f8a625b6e', '20210522 22:10:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c898ffd6bb0711eb8357144f8a625b6e', '20210522 22:12:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4c09d254bb0811eb8357144f8a625b6e', '20210522 22:16:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('77017efcbb0811eb8357144f8a625b6e', '20210522 22:17:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ee439408bb0811eb8357144f8a625b6e', '20210522 22:20:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('92364a00bb0a11eb8357144f8a625b6e', '20210522 22:32:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('054b445fbb0b11eb8357144f8a625b6e', '20210522 22:35:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6fb9b59fbb0b11eb8357144f8a625b6e', '20210522 22:38:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b4180c2fbb0b11eb8357144f8a625b6e', '20210522 22:40:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a69b9bd2bb0d11eb8357144f8a625b6e', '20210522 22:54:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('18917b26bb0e11eb8357144f8a625b6e', '20210522 22:57:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3fb4994abb0e11eb8357144f8a625b6e', '20210522 22:59:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('42b42b94bb0e11eb8357144f8a625b6e', '20210522 22:59:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('56089737bb0e11eb8357144f8a625b6e', '20210522 22:59:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8e9ca4b1bb6311eb8357144f8a625b6e', '20210523 09:09:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e7953258bb6311eb8357144f8a625b6e', '20210523 09:12:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('084801a3bb6411eb8357144f8a625b6e', '20210523 09:13:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('43f4bc28bb6411eb8357144f8a625b6e', '20210523 09:14:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('60f0195ebb6411eb8357144f8a625b6e', '20210523 09:15:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9f718efdbb6411eb8357144f8a625b6e', '20210523 09:17:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f51dc3b2bb6411eb8357144f8a625b6e', '20210523 09:19:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8557b228bb6511eb8357144f8a625b6e', '20210523 09:23:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2ff5175cbb6611eb8357144f8a625b6e', '20210523 09:28:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7ec37547bb6611eb8357144f8a625b6e', '20210523 09:30:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f4093fe2bb6611eb8357144f8a625b6e', '20210523 09:33:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('35e17112bb6711eb8357144f8a625b6e', '20210523 09:35:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3c2affa3bb6811eb8357144f8a625b6e', '20210523 09:43:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('420a2ebdbb6811eb8357144f8a625b6e', '20210523 09:43:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1dcd9ac8bb6911eb8357144f8a625b6e', '20210523 09:49:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4b860b57bb6a11eb8357144f8a625b6e', '20210523 09:57:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fcaa0911bb6a11eb8357144f8a625b6e', '20210523 10:02:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28ab8dd2bb6b11eb8357144f8a625b6e', '20210523 10:04:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f3b030d1bb6b11eb8357144f8a625b6e', '20210523 10:09:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('38cb211abb6c11eb8357144f8a625b6e', '20210523 10:11:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('70dfda6fbb6c11eb8357144f8a625b6e', '20210523 10:13:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e70fa029bb6e11eb8357144f8a625b6e', '20210523 10:30:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('96117be4bb6f11eb8357144f8a625b6e', '20210523 10:35:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('feed89cebb6f11eb8357144f8a625b6e', '20210523 10:38:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('81be4de3bb7011eb8357144f8a625b6e', '20210523 10:42:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3061c6d2bb7111eb8357144f8a625b6e', '20210523 10:47:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b36e8430bb7111eb8357144f8a625b6e', '20210523 10:50:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c462698abb7111eb8357144f8a625b6e', '20210523 10:51:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2d312224bb7211eb8357144f8a625b6e', '20210523 10:54:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('55a7657fbb7211eb8357144f8a625b6e', '20210523 10:55:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('23b68c51bbb811eba9ff144f8a625b6e', '20210523 19:15:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('495a5d13bbba11eba9ff144f8a625b6e', '20210523 19:30:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('535ba03fbbba11eba9ff144f8a625b6e', '20210523 19:30:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ac0cb939bbbb11eba9ff144f8a625b6e', '20210523 19:40:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('97b8bd9dbbbc11eba9ff144f8a625b6e', '20210523 19:47:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cc4b47b6bbbc11eba9ff144f8a625b6e', '20210523 19:48:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f4a5aa98bbbc11eba9ff144f8a625b6e', '20210523 19:49:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1eb80d9bbbd11eba9ff144f8a625b6e', '20210523 19:55:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('06c51f12bbbe11eba9ff144f8a625b6e', '20210523 19:57:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1c5c33a1bbbe11eba9ff144f8a625b6e', '20210523 19:57:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5d8fab38bbbe11eba9ff144f8a625b6e', '20210523 19:59:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e02cff45bbbf11eba9ff144f8a625b6e', '20210523 20:10:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2d9ca93fbbc011eba9ff144f8a625b6e', '20210523 20:12:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5384c153bbc011eba9ff144f8a625b6e', '20210523 20:13:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b18f5e6ebbc011eba9ff144f8a625b6e', '20210523 20:16:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('31734d45bbc811eba9ff144f8a625b6e', '20210523 21:10:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7c21d89dbbc811eba9ff144f8a625b6e', '20210523 21:12:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c03b70bdbbc811eba9ff144f8a625b6e', '20210523 21:14:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('64cf59debbc911eba9ff144f8a625b6e', '20210523 21:18:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('77b26774bbc911eba9ff144f8a625b6e', '20210523 21:19:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7cff9d6cbc8211eba9ff144f8a625b6e', '20210524 19:23:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('87a17d77bc8311eba9ff144f8a625b6e', '20210524 19:31:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('527d21fabc8411eba9ff144f8a625b6e', '20210524 19:36:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('82f1967cbc8411eba9ff144f8a625b6e', '20210524 19:38:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('961bcf4cbc8511eba9ff144f8a625b6e', '20210524 19:45:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bade1405bc8511eba9ff144f8a625b6e', '20210524 19:46:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('85eb8426bc8611eba9ff144f8a625b6e', '20210524 19:52:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4900998bbc8711eba9ff144f8a625b6e', '20210524 19:57:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('62c99939bc8711eba9ff144f8a625b6e', '20210524 19:58:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7ee9af69bc8711eba9ff144f8a625b6e', '20210524 19:59:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('69c1eb06bc8811eba9ff144f8a625b6e', '20210524 20:05:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7fa50f5ebc8811eba9ff144f8a625b6e', '20210524 20:06:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f9786f14bc8911eba9ff144f8a625b6e', '20210524 20:17:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('25029d6cbc8a11eba9ff144f8a625b6e', '20210524 20:18:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ea1cfa06bc9111eba9ff144f8a625b6e', '20210524 21:13:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('241d32edbc9411eba9ff144f8a625b6e', '20210524 21:29:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('57c07f5ebc9411eba9ff144f8a625b6e', '20210524 21:31:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8a03dcfbbc9411eba9ff144f8a625b6e', '20210524 21:32:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('91ad5c96bc9411eba9ff144f8a625b6e', '20210524 21:32:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b1da6448bc9411eba9ff144f8a625b6e', '20210524 21:33:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dca5418fbc9411eba9ff144f8a625b6e', '20210524 21:35:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2b8cd062bc9511eba9ff144f8a625b6e', '20210524 21:37:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0f8e0eb8bc9711eba9ff144f8a625b6e', '20210524 21:50:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2c508269bc9711eba9ff144f8a625b6e', '20210524 21:51:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dd4dda57bd5b11eba9ff144f8a625b6e', '20210525 21:19:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bebdeee1bd5c11eba9ff144f8a625b6e', '20210525 21:25:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0d6e428abd5d11eba9ff144f8a625b6e', '20210525 21:28:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('298211f5bd5d11eba9ff144f8a625b6e', '20210525 21:28:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('618d5847bd5d11eba9ff144f8a625b6e', '20210525 21:30:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('90348663bd5e11eba9ff144f8a625b6e', '20210525 21:38:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cb03b732bd5e11eba9ff144f8a625b6e', '20210525 21:40:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('df60d75bbe1911eba9ff144f8a625b6e', '20210526 19:59:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('af8d0f78be1b11eba9ff144f8a625b6e', '20210526 20:12:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c3c3591abe1b11eba9ff144f8a625b6e', '20210526 20:13:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2142c8debe1c11eba9ff144f8a625b6e', '20210526 20:15:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('70fd59edbe1c11eba9ff144f8a625b6e', '20210526 20:18:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('03479ecfbe1d11eba9ff144f8a625b6e', '20210526 20:22:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d3dd596abe1e11eba9ff144f8a625b6e', '20210526 20:35:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('71330808be1f11eba9ff144f8a625b6e', '20210526 20:39:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8ef80afcbe2011eba9ff144f8a625b6e', '20210526 20:47:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('be67b30ebe2011eba9ff144f8a625b6e', '20210526 20:48:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8066154ebe2111eba9ff144f8a625b6e', '20210526 20:54:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5cf2b467be2211eba9ff144f8a625b6e', '20210526 21:00:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('96ff4603be2211eba9ff144f8a625b6e', '20210526 21:02:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7485d4a0be2311eba9ff144f8a625b6e', '20210526 21:08:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('aa203ce9be2311eba9ff144f8a625b6e', '20210526 21:09:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bc91b340be2311eba9ff144f8a625b6e', '20210526 21:10:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c7351d75be2311eba9ff144f8a625b6e', '20210526 21:10:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ad644013be2611eba9ff144f8a625b6e', '20210526 21:31:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c8c2bd2dbe2611eba9ff144f8a625b6e', '20210526 21:32:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e1e173a9be2611eba9ff144f8a625b6e', '20210526 21:32:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e925d867be2611eba9ff144f8a625b6e', '20210526 21:33:01', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('18d6abcabfad11eba9ff144f8a625b6e', '20210528 20:05:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('76d3eeeebfae11eba9ff144f8a625b6e', '20210528 20:15:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ae0f4f21bfae11eba9ff144f8a625b6e', '20210528 20:17:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2c3f6da9bfaf11eba9ff144f8a625b6e', '20210528 20:20:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5b0e9936bfaf11eba9ff144f8a625b6e', '20210528 20:22:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8c26bad6bfaf11eba9ff144f8a625b6e', '20210528 20:23:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ad669a10bfaf11eba9ff144f8a625b6e', '20210528 20:24:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d606e62fbfaf11eba9ff144f8a625b6e', '20210528 20:25:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4c6fc268bfb011eba9ff144f8a625b6e', '20210528 20:28:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('57394597bfb011eba9ff144f8a625b6e', '20210528 20:29:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('29e27159bfb111eba9ff144f8a625b6e', '20210528 20:35:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ae511dc5bfb111eba9ff144f8a625b6e', '20210528 20:38:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c452ca65bfb111eba9ff144f8a625b6e', '20210528 20:39:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2efcbdafbfb211eba9ff144f8a625b6e', '20210528 20:42:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4f5fb900bfb211eba9ff144f8a625b6e', '20210528 20:43:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0e43dea3bfb311eba9ff144f8a625b6e', '20210528 20:48:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('19fa5230bfb311eba9ff144f8a625b6e', '20210528 20:48:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('613fe27cbfb311eba9ff144f8a625b6e', '20210528 20:50:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6e202efdbfb311eba9ff144f8a625b6e', '20210528 20:51:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('78788acebfb311eba9ff144f8a625b6e', '20210528 20:51:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d8b919e4bfb311eba9ff144f8a625b6e', '20210528 20:54:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e6d2b002bfb311eba9ff144f8a625b6e', '20210528 20:54:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('087709febfb411eba9ff144f8a625b6e', '20210528 20:55:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e9ba7710bfb411eba9ff144f8a625b6e', '20210528 21:01:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fc126d36bfb411eba9ff144f8a625b6e', '20210528 21:02:26', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('55859bc5bfb511eba9ff144f8a625b6e', '20210528 21:04:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e71f853bbfb511eba9ff144f8a625b6e', '20210528 21:09:01', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5227151ebfb611eba9ff144f8a625b6e', '20210528 21:12:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a3cef622bfb611eba9ff144f8a625b6e', '20210528 21:14:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c4b4e63fbfb611eba9ff144f8a625b6e', '20210528 21:15:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f6355632bfb611eba9ff144f8a625b6e', '20210528 21:16:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0483dcc3bfb711eba9ff144f8a625b6e', '20210528 21:17:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c391d630c05f11eba9ff144f8a625b6e', '20210529 17:24:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dc669191c06111eba9ff144f8a625b6e', '20210529 17:39:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('097ea53dc06211eba9ff144f8a625b6e', '20210529 17:41:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5656c91ec06211eba9ff144f8a625b6e', '20210529 17:43:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('76e84984c06211eba9ff144f8a625b6e', '20210529 17:44:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('79fa05e1c06211eba9ff144f8a625b6e', '20210529 17:44:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e9f484d8c06511eba9ff144f8a625b6e', '20210529 18:08:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('307e0c15c06611eba9ff144f8a625b6e', '20210529 18:10:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bb7fb29bc06611eba9ff144f8a625b6e', '20210529 18:14:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dfe98a06c06611eba9ff144f8a625b6e', '20210529 18:15:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0476c063c06711eba9ff144f8a625b6e', '20210529 18:16:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0cd5ccfbc06711eba9ff144f8a625b6e', '20210529 18:17:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('661f76efc06811eba9ff144f8a625b6e', '20210529 18:26:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('90577a3fc06811eba9ff144f8a625b6e', '20210529 18:27:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('014f9fe3c06911eba9ff144f8a625b6e', '20210529 18:31:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5ef343a5c06911eba9ff144f8a625b6e', '20210529 18:33:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('846ef897c06911eba9ff144f8a625b6e', '20210529 18:34:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cfc1fa9ec06911eba9ff144f8a625b6e', '20210529 18:36:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e40b7bd5c06911eba9ff144f8a625b6e', '20210529 18:37:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('00173304c06a11eba9ff144f8a625b6e', '20210529 18:38:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('380287cec06a11eba9ff144f8a625b6e', '20210529 18:39:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('86aac89dc06a11eba9ff144f8a625b6e', '20210529 18:41:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('903a7947c06a11eba9ff144f8a625b6e', '20210529 18:42:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('200bf851c06b11eba9ff144f8a625b6e', '20210529 18:46:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('29b617ebc06b11eba9ff144f8a625b6e', '20210529 18:46:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('314388f3c06b11eba9ff144f8a625b6e', '20210529 18:46:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ad0a8c9dc06e11eba9ff144f8a625b6e', '20210529 19:11:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d2ac9992c06e11eba9ff144f8a625b6e', '20210529 19:12:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2343cd76c06f11eba9ff144f8a625b6e', '20210529 19:14:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('54b4de3dc06f11eba9ff144f8a625b6e', '20210529 19:16:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7a5cb583c06f11eba9ff144f8a625b6e', '20210529 19:17:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0276a58ec07211eba9ff144f8a625b6e', '20210529 19:35:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('73a9f259c07211eba9ff144f8a625b6e', '20210529 19:38:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9fd5ed4ac07211eba9ff144f8a625b6e', '20210529 19:39:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b95e1ca1c07211eba9ff144f8a625b6e', '20210529 19:40:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d3cd3656c07211eba9ff144f8a625b6e', '20210529 19:41:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2184c55fc07311eba9ff144f8a625b6e', '20210529 19:43:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('14effdb3c07411eba9ff144f8a625b6e', '20210529 19:50:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1cb16b47c07411eba9ff144f8a625b6e', '20210529 19:50:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('38f388aac07411eba9ff144f8a625b6e', '20210529 19:51:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f48bf3bbc07411eba9ff144f8a625b6e', '20210529 19:56:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2a0d6c9ec07511eba9ff144f8a625b6e', '20210529 19:58:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('499dfb2fc07511eba9ff144f8a625b6e', '20210529 19:58:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bbb3693ac07511eba9ff144f8a625b6e', '20210529 20:02:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f2a0e319c07511eba9ff144f8a625b6e', '20210529 20:03:42', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3fc8d778c07611eba9ff144f8a625b6e', '20210529 20:05:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('702a50a2c07611eba9ff144f8a625b6e', '20210529 20:07:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('243d5e17c10411eba9ff144f8a625b6e', '20210530 13:01:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2998eec2c10411eba9ff144f8a625b6e', '20210530 13:01:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2e9f1a1ac10711eba9ff144f8a625b6e', '20210530 13:23:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6098ea02c10711eba9ff144f8a625b6e', '20210530 13:24:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7da4de46c10711eba9ff144f8a625b6e', '20210530 13:25:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a722506fc10811eba9ff144f8a625b6e', '20210530 13:33:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2d8fe0d3c10c11eba9ff144f8a625b6e', '20210530 13:59:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e835720fc10f11eba9ff144f8a625b6e', '20210530 14:25:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6a49f28fc13111eba9ff144f8a625b6e', '20210530 18:25:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('87601c12c13111eba9ff144f8a625b6e', '20210530 18:26:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c754c3e8c13111eba9ff144f8a625b6e', '20210530 18:28:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('077e3fb1c13211eba9ff144f8a625b6e', '20210530 18:29:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2c7c534bc13211eba9ff144f8a625b6e', '20210530 18:30:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('af9ecff2c13211eba9ff144f8a625b6e', '20210530 18:34:39', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('403b5355c13411eba9ff144f8a625b6e', '20210530 18:45:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('76c69a6bc13411eba9ff144f8a625b6e', '20210530 18:47:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7b61b10dc13411eba9ff144f8a625b6e', '20210530 18:47:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1e394440c13511eba9ff144f8a625b6e', '20210530 18:52:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('890abf9ac13511eba9ff144f8a625b6e', '20210530 18:55:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('aed4cd62c13511eba9ff144f8a625b6e', '20210530 18:56:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('169ca6d5c13611eba9ff144f8a625b6e', '20210530 18:59:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('49b7dcafc13611eba9ff144f8a625b6e', '20210530 19:00:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b9339495c13611eba9ff144f8a625b6e', '20210530 19:03:35', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0446f614c13711eba9ff144f8a625b6e', '20210530 19:05:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5fe5ce18c13711eba9ff144f8a625b6e', '20210530 19:08:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('809b818ec13711eba9ff144f8a625b6e', '20210530 19:09:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2207813dc13811eba9ff144f8a625b6e', '20210530 19:13:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7c626b2ec13811eba9ff144f8a625b6e', '20210530 19:16:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e19b9807c13811eba9ff144f8a625b6e', '20210530 19:19:01', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('073d83b5c13911eba9ff144f8a625b6e', '20210530 19:20:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('29dc9e3fc13911eba9ff144f8a625b6e', '20210530 19:21:03', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('87c5b00fc13911eba9ff144f8a625b6e', '20210530 19:23:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('20bd5c09c13a11eba9ff144f8a625b6e', '20210530 19:27:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9548311ec13a11eba9ff144f8a625b6e', '20210530 19:31:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('97e18a58c13a11eba9ff144f8a625b6e', '20210530 19:31:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c7b7fcf4c13a11eba9ff144f8a625b6e', '20210530 19:32:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('14aa6716c13b11eba9ff144f8a625b6e', '20210530 19:34:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2d4d603ac13b11eba9ff144f8a625b6e', '20210530 19:35:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6d3244b0c13b11eba9ff144f8a625b6e', '20210530 19:37:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a4f14c93c13b11eba9ff144f8a625b6e', '20210530 19:38:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e2dc7a9bc13b11eba9ff144f8a625b6e', '20210530 19:40:32', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f5bfb7e8c13b11eba9ff144f8a625b6e', '20210530 19:41:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2f5c36f3c13c11eba9ff144f8a625b6e', '20210530 19:42:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6193d304c13c11eba9ff144f8a625b6e', '20210530 19:44:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7ff371e5c13c11eba9ff144f8a625b6e', '20210530 19:44:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a9ecfa73c13c11eba9ff144f8a625b6e', '20210530 19:46:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d7e236f7c13c11eba9ff144f8a625b6e', '20210530 19:47:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e5dd3c18c13c11eba9ff144f8a625b6e', '20210530 19:47:46', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('672eedd4c13d11eba9ff144f8a625b6e', '20210530 19:51:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d390e30fc13d11eba9ff144f8a625b6e', '20210530 19:54:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c8de30dec13e11eba9ff144f8a625b6e', '20210530 20:01:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6d3692f1c13f11eba9ff144f8a625b6e', '20210530 20:05:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('df343af1c13f11eba9ff144f8a625b6e', '20210530 20:09:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f9805f0cc13f11eba9ff144f8a625b6e', '20210530 20:09:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1d295114c14011eba9ff144f8a625b6e', '20210530 20:10:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5c252afec14011eba9ff144f8a625b6e', '20210530 20:12:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9e9bb7ffc14011eba9ff144f8a625b6e', '20210530 20:14:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ae4a21d4c14011eba9ff144f8a625b6e', '20210530 20:14:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b0a8b211c21211eba9ff144f8a625b6e', '20210531 21:18:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('00a75614c21311eba9ff144f8a625b6e', '20210531 21:20:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f9e32ad1c27a11ebbd12c85b76b7b678', '20210601 09:44:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f72b3242c29311ebbd12c85b76b7b678', '20210601 12:43:36', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('2c72cb5cc29411ebbd12c85b76b7b678', '20210601 12:45:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3226fef6c2b511ebbd12c85b76b7b678', '20210601 16:41:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4a16df6ac2b511ebbd12c85b76b7b678', '20210601 16:42:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('55452d5cc2b511ebbd12c85b76b7b678', '20210601 16:42:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9155a82bc35911ebbd12c85b76b7b678', '20210602 12:18:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d1d51e40c35911ebbd12c85b76b7b678', '20210602 12:19:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('456d3135c35a11ebbd12c85b76b7b678', '20210602 12:23:06', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('afd317aec35b11ebbd12c85b76b7b678', '20210602 12:33:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ba67613ec35b11ebbd12c85b76b7b678', '20210602 12:33:31', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('bb96f012c35b11ebbd12c85b76b7b678', '20210602 12:33:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ca4c2f88c35b11ebbd12c85b76b7b678', '20210602 12:33:58', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('cbe7c012c35b11ebbd12c85b76b7b678', '20210602 12:34:01', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fb84157fc35b11ebbd12c85b76b7b678', '20210602 12:35:21', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('03ef30bac35c11ebbd12c85b76b7b678', '20210602 12:35:35', '楼乐妍', '登录');
INSERT INTO `log_info` VALUES ('0700ff1dc35c11ebbd12c85b76b7b678', '20210602 12:35:40', '楼乐妍', '注销');
INSERT INTO `log_info` VALUES ('0c0d70f8c35c11ebbd12c85b76b7b678', '20210602 12:35:48', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('20406438c35c11ebbd12c85b76b7b678', '20210602 12:36:22', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('22ecce41c35c11ebbd12c85b76b7b678', '20210602 12:36:27', 'admin', '登录');
INSERT INTO `log_info` VALUES ('2594f464c35c11ebbd12c85b76b7b678', '20210602 12:36:31', 'admin', '注销');
INSERT INTO `log_info` VALUES ('273c760bc35c11ebbd12c85b76b7b678', '20210602 12:36:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('673e10a9c41a11eba662c85b76b7b678', '20210603 11:18:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('75a566abc41a11eba662c85b76b7b678', '20210603 11:19:09', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('8ae85dcbc41a11eba662c85b76b7b678', '20210603 11:19:45', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d4956300c41a11eba662c85b76b7b678', '20210603 11:21:49', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('6a0dea38c41b11eba662c85b76b7b678', '20210603 11:25:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7c192af8c41b11eba662c85b76b7b678', '20210603 11:26:30', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('1b4eae8ec41c11eba662c85b76b7b678', '20210603 11:30:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28bc9a7fc41c11eba662c85b76b7b678', '20210603 11:31:19', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('db0b6a35c41c11eba662c85b76b7b678', '20210603 11:36:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ddd125b0c41c11eba662c85b76b7b678', '20210603 11:36:23', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('12924fc0c41d11eba662c85b76b7b678', '20210603 11:37:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28f291f7c41d11eba662c85b76b7b678', '20210603 11:38:29', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('2d0abab0c41d11eba662c85b76b7b678', '20210603 11:38:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('463c0774c41d11eba662c85b76b7b678', '20210603 11:39:18', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('590ef0d0c41d11eba662c85b76b7b678', '20210603 11:39:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('32f0dc4fc42011eba662c85b76b7b678', '20210603 12:00:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('40011a24c42011eba662c85b76b7b678', '20210603 12:00:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('562c75a2c42011eba662c85b76b7b678', '20210603 12:01:13', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('583fed91c42011eba662c85b76b7b678', '20210603 12:01:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('62bc691fc42011eba662c85b76b7b678', '20210603 12:01:34', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('822051c4c42011eba662c85b76b7b678', '20210603 12:02:27', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('89f92d0fc42011eba662c85b76b7b678', '20210603 12:02:40', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('13992929c42111eba662c85b76b7b678', '20210603 12:06:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('321ac986c42111eba662c85b76b7b678', '20210603 12:07:22', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('5e72fcb3c42111eba662c85b76b7b678', '20210603 12:08:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('644014c3c42111eba662c85b76b7b678', '20210603 12:08:47', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('6ab41002c42111eba662c85b76b7b678', '20210603 12:08:57', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6cf18186c42111eba662c85b76b7b678', '20210603 12:09:01', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('8334fd38c42111eba662c85b76b7b678', '20210603 12:09:38', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8d643bacc42111eba662c85b76b7b678', '20210603 12:09:56', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('9eba176fc42111eba662c85b76b7b678', '20210603 12:10:25', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b3f1b457c42111eba662c85b76b7b678', '20210603 12:11:00', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('c18c8181c42111eba662c85b76b7b678', '20210603 12:11:23', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cd75ff15c42111eba662c85b76b7b678', '20210603 12:11:43', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('5d171741c42211eba662c85b76b7b678', '20210603 12:15:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5e04aa7ac42211eba662c85b76b7b678', '20210603 12:15:46', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('63c33acac42211eba662c85b76b7b678', '20210603 12:15:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('65d281adc42211eba662c85b76b7b678', '20210603 12:15:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('68f5189ec42211eba662c85b76b7b678', '20210603 12:16:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6b63730cc42211eba662c85b76b7b678', '20210603 12:16:08', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('6ce1e4dec42211eba662c85b76b7b678', '20210603 12:16:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6fba96d9c42211eba662c85b76b7b678', '20210603 12:16:15', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('9ca6fa88c42211eba662c85b76b7b678', '20210603 12:17:31', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('01a7e3c3c42311eba662c85b76b7b678', '20210603 12:20:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('36e46a86c42311eba662c85b76b7b678', '20210603 12:21:49', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('63370196c42311eba662c85b76b7b678', '20210603 12:23:04', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9001b55cc42311eba662c85b76b7b678', '20210603 12:24:13', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('c9929badc42311eba662c85b76b7b678', '20210603 12:25:56', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ce7c0f06c42311eba662c85b76b7b678', '20210603 12:26:04', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('e3d7def6c42311eba662c85b76b7b678', '20210603 12:26:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('e5d19912c42311eba662c85b76b7b678', '20210603 12:26:43', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('ecee52f7c42311eba662c85b76b7b678', '20210603 12:26:55', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1179281bc42411eba662c85b76b7b678', '20210603 12:27:50', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('79fa625ec42411eba662c85b76b7b678', '20210603 12:30:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('7cca1292c42411eba662c85b76b7b678', '20210603 12:30:56', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('8713ca9dc42411eba662c85b76b7b678', '20210603 12:31:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('88f728e9c42411eba662c85b76b7b678', '20210603 12:31:17', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('89d4fc2bc42411eba662c85b76b7b678', '20210603 12:31:18', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8b8be09ec42411eba662c85b76b7b678', '20210603 12:31:21', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('8fcba63fc42411eba662c85b76b7b678', '20210603 12:31:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c3caf5f0c42e11eba662c85b76b7b678', '20210603 13:44:30', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('fb1b96cbc42e11eba662c85b76b7b678', '20210603 13:46:03', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('7929abb3c42f11eba662c85b76b7b678', '20210603 13:49:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('81b723acc42f11eba662c85b76b7b678', '20210603 13:49:49', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('8d93e58ec42f11eba662c85b76b7b678', '20210603 13:50:09', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('903c45fdc42f11eba662c85b76b7b678', '20210603 13:50:13', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('b5afd396c42f11eba662c85b76b7b678', '20210603 13:51:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c1c633f2c42f11eba662c85b76b7b678', '20210603 13:51:36', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('d967744cc42f11eba662c85b76b7b678', '20210603 13:52:16', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('dcee08fac42f11eba662c85b76b7b678', '20210603 13:52:22', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('e6139c97c42f11eba662c85b76b7b678', '20210603 13:52:37', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('10f1d1dfc43011eba662c85b76b7b678', '20210603 13:53:49', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('14d0c956c43011eba662c85b76b7b678', '20210603 13:53:56', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('16d81d35c43011eba662c85b76b7b678', '20210603 13:53:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('18322cbec43011eba662c85b76b7b678', '20210603 13:54:01', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('1d4c03cbc43011eba662c85b76b7b678', '20210603 13:54:10', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1e65974bc43011eba662c85b76b7b678', '20210603 13:54:12', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('ff1cbd15c43011eba662c85b76b7b678', '20210603 14:00:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0000492ec43111eba662c85b76b7b678', '20210603 14:00:30', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('3fad28d9c43111eba662c85b76b7b678', '20210603 14:02:17', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('71a53851c43111eba662c85b76b7b678', '20210603 14:03:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('77206662c43111eba662c85b76b7b678', '20210603 14:03:50', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('79596c2ec43111eba662c85b76b7b678', '20210603 14:03:54', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8e268c32c43111eba662c85b76b7b678', '20210603 14:04:29', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('c59d7d98c43111eba662c85b76b7b678', '20210603 14:06:02', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cae51fa2c43111eba662c85b76b7b678', '20210603 14:06:11', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('567c14c0c43211eba662c85b76b7b678', '20210603 14:10:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5a0bd1cac43211eba662c85b76b7b678', '20210603 14:10:11', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('61ff1525c43211eba662c85b76b7b678', '20210603 14:10:24', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('646f4cc3c43211eba662c85b76b7b678', '20210603 14:10:28', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('6758d451c43211eba662c85b76b7b678', '20210603 14:10:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6d86557cc43211eba662c85b76b7b678', '20210603 14:10:43', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('6f7a50c0c43211eba662c85b76b7b678', '20210603 14:10:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a2439f44c43211eba662c85b76b7b678', '20210603 14:12:12', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a321cf9dc43211eba662c85b76b7b678', '20210603 14:12:13', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('a6da3634c43211eba662c85b76b7b678', '20210603 14:12:20', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a7a05ef2c43211eba662c85b76b7b678', '20210603 14:12:21', '曾成龙', '注销');
INSERT INTO `log_info` VALUES ('ac97e976c92111eba9ff144f8a625b6e', '20210609 20:52:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a74c3f79c92211eba9ff144f8a625b6e', '20210609 20:59:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('faaaf00dc92211eba9ff144f8a625b6e', '20210609 21:02:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('0fe5c3d5c92311eba9ff144f8a625b6e', '20210609 21:02:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('25b73210c92311eba9ff144f8a625b6e', '20210609 21:03:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('4ef617dbc92311eba9ff144f8a625b6e', '20210609 21:04:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8005f1cbc92311eba9ff144f8a625b6e', '20210609 21:05:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('ad1f47eac92311eba9ff144f8a625b6e', '20210609 21:07:07', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('28d40b8dc92411eba9ff144f8a625b6e', '20210609 21:10:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('455570e5c92411eba9ff144f8a625b6e', '20210609 21:11:22', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('abb3a899c92411eba9ff144f8a625b6e', '20210609 21:14:14', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('5cc2cf6ac92511eba9ff144f8a625b6e', '20210609 21:19:11', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6aa1faafc92511eba9ff144f8a625b6e', '20210609 21:19:34', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('a84e228fc92511eba9ff144f8a625b6e', '20210609 21:21:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cbcab21bc92511eba9ff144f8a625b6e', '20210609 21:22:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d2b2f6d6c92511eba9ff144f8a625b6e', '20210609 21:22:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('75519d75c92611eba9ff144f8a625b6e', '20210609 21:27:01', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('881e76edc92611eba9ff144f8a625b6e', '20210609 21:27:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('97b9c29ec92611eba9ff144f8a625b6e', '20210609 21:27:59', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b6c0654dc92611eba9ff144f8a625b6e', '20210609 21:28:51', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c3e9ca5ac92611eba9ff144f8a625b6e', '20210609 21:29:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('d9bc4898c92611eba9ff144f8a625b6e', '20210609 21:29:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('413b8d26c92711eba9ff144f8a625b6e', '20210609 21:32:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('78ee4374c92711eba9ff144f8a625b6e', '20210609 21:34:17', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f39962ebc92711eba9ff144f8a625b6e', '20210609 21:37:43', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('6bd91500c92811eba9ff144f8a625b6e', '20210609 21:41:05', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('aaed49e5c92811eba9ff144f8a625b6e', '20210609 21:42:50', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('30889496c92a11eba9ff144f8a625b6e', '20210609 21:53:44', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('3063defbc92b11eba9ff144f8a625b6e', '20210609 22:00:53', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('93d8da33c92b11eba9ff144f8a625b6e', '20210609 22:03:40', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('cee4684ec92b11eba9ff144f8a625b6e', '20210609 22:05:19', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1c86e9d3c92f11eba9ff144f8a625b6e', '20210609 22:28:58', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('9c9093bdc93111eba9ff144f8a625b6e', '20210609 22:46:52', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('f0bdd388c93111eba9ff144f8a625b6e', '20210609 22:49:13', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1160281fc93211eba9ff144f8a625b6e', '20210609 22:50:08', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1d33a657c93211eba9ff144f8a625b6e', '20210609 22:50:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('84696577c93211eba9ff144f8a625b6e', '20210609 22:53:21', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('8bea563dc93211eba9ff144f8a625b6e', '20210609 22:53:33', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('bfb66897c93211eba9ff144f8a625b6e', '20210609 22:55:00', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('181476f2c93311eba9ff144f8a625b6e', '20210609 22:57:28', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('1a20d048c93411eba9ff144f8a625b6e', '20210609 23:04:41', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('2e10e541c93411eba9ff144f8a625b6e', '20210609 23:05:15', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('416852ebc93411eba9ff144f8a625b6e', '20210609 23:05:47', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('c5a5431fc93411eba9ff144f8a625b6e', '20210609 23:09:29', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('58b697c5c93511eba9ff144f8a625b6e', '20210609 23:13:36', '曾成龙', '登录');
INSERT INTO `log_info` VALUES ('b820648fc93511eba9ff144f8a625b6e', '20210609 23:16:16', '曾成龙', '登录');

-- ----------------------------
-- Table structure for t_email
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email` (
  `e_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `e_topic` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标题',
  `e_content` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `create_user` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `create_time` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_email
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `m_id` varchar(32) NOT NULL COMMENT '菜单id',
  `m_name` varchar(30) DEFAULT NULL COMMENT '菜单功能名',
  `p_menu` varchar(32) DEFAULT NULL COMMENT '上级功能编号',
  `is_navigtion` varchar(1) DEFAULT NULL COMMENT '是否用于导航（0：是 1：否）',
  `m_url` varchar(100) DEFAULT NULL COMMENT '菜单URL',
  `m_icon` varchar(30) DEFAULT NULL COMMENT '菜单图标',
  `m_sort` varchar(30) DEFAULT NULL COMMENT '菜单顺序',
  `m_desc` varchar(30) DEFAULT NULL COMMENT '菜单描述',
  `create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `create_time` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `update_time` varchar(30) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('0', '根节点', null, '0', '', '0', '1', null, null, null, null, null);
INSERT INTO `t_menu` VALUES ('04f5cbbec92711eba9ff144f8a625b6e', '商品管理', '0', '0', '1', '2', '33', '', '曾成龙', '20210609 21:31:02', null, null);
INSERT INTO `t_menu` VALUES ('1', '基础功能', '0', '0', '', '2', '2', '1', '1', '1', '曾成龙', '20210526 21:03:00');
INSERT INTO `t_menu` VALUES ('2ca02705bb0911eb8357144f8a625b6e', '日志管理', '1', '0', '/LogController/hello.html', '3', '1', '日志管理', '曾成龙', '20210522 22:22:43', '曾成龙', '20210526 21:03:11');
INSERT INTO `t_menu` VALUES ('4', '角色管理', '1', '0', '/RoleController/role_native.html', '5', '3', '', null, null, '曾成龙', '20210526 21:03:27');
INSERT INTO `t_menu` VALUES ('5', '权限管理', '0', '0', '1', '1', '3', '', null, null, '曾成龙', '20210526 21:03:45');
INSERT INTO `t_menu` VALUES ('6', '菜单管理', '5', '0', '/menuController/showindex.html', '4', '5', '', null, null, '曾成龙', '20210526 21:02:35');
INSERT INTO `t_menu` VALUES ('70bb1d88c92711eba9ff144f8a625b6e', '商品列表', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/productController/showlist.html', '4', '1', '', '曾成龙', '20210609 21:34:03', null, null);
INSERT INTO `t_menu` VALUES ('9f4e519dc92811eba9ff144f8a625b6e', '商品分析图', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/showChars.html', '4', '2', '', '曾成龙', '20210609 21:42:31', '曾成龙', '20210609 22:28:53');
INSERT INTO `t_menu` VALUES ('cb91070fbb0a11eb8357144f8a625b6e', '用户管理', '1', '0', '/userlist.html', '6', '999', '', '曾成龙', '20210522 22:34:19', '曾成龙', '20210526 21:03:35');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `n_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `send_man` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '发送人id',
  `recive_man` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '收件人id',
  `e_id` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '信件id',
  `is_readed` varchar(1) COLLATE utf8_bin NOT NULL COMMENT '是否已读（0未读，1已读）',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_produce_num
-- ----------------------------
DROP TABLE IF EXISTS `t_produce_num`;
CREATE TABLE `t_produce_num` (
  `pn_id` varchar(40) NOT NULL,
  `jan_prd_num` varchar(40) DEFAULT NULL,
  `feb_prd_num` varchar(40) DEFAULT NULL,
  `mar_prd_num` varchar(40) DEFAULT NULL,
  `apr_prd_num` varchar(40) DEFAULT NULL,
  `may_prd_num` varchar(40) DEFAULT NULL,
  `jun_prd_num` varchar(40) DEFAULT NULL,
  `jul_prd_num` varchar(40) DEFAULT NULL,
  `aug_prd_num` varchar(40) DEFAULT NULL,
  `sep_prd_num` varchar(40) DEFAULT NULL,
  `oct_prd_num` varchar(40) DEFAULT NULL,
  `nov_prd_num` varchar(40) DEFAULT NULL,
  `dec_prd_num` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_produce_num
-- ----------------------------
INSERT INTO `t_produce_num` VALUES ('1', '22390', '11220', '21389', '14644', '15200', '14745', '17131', '34573', '19312', '20212', '12214', '22111');
INSERT INTO `t_produce_num` VALUES ('2', '13390', '14220', '12389', '12464', '12520', '47450', '17132', '34574', '19313', '20213', '12211', '12111');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `p_id` varchar(40) NOT NULL,
  `p_name` varchar(100) NOT NULL COMMENT '商品名称',
  `p_money` decimal(18,2) NOT NULL COMMENT '商品价格',
  `s_id` varchar(40) DEFAULT '' COMMENT '销量id',
  `pn_id` varchar(40) DEFAULT NULL COMMENT '产量id',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '麻黄碱', '12.00', '1', '1');
INSERT INTO `t_product` VALUES ('2', '氯化钠注射液', '11.00', '2', '2');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `r_id` varchar(32) NOT NULL,
  `r_name` varchar(30) DEFAULT NULL,
  `r_desc` varchar(30) DEFAULT NULL,
  `create_time` varchar(30) NOT NULL,
  `update_time` varchar(30) DEFAULT NULL,
  `create_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('62f55eb97f2211eb973d6100d940b6cf', '游客2', '1', '20210307 16:51:23', null, '楼乐妍');
INSERT INTO `t_role` VALUES ('64720b5d7f2011eb973d6100d940b6cf', '超级管理员', '最大权限用户', '20210307 16:37:07', null, '曾成龙');
INSERT INTO `t_role` VALUES ('8f5efb837f2011eb973d6100d940b6cf', '游客', '无系统性菜单权限', '20210307 16:38:19', null, '曾成龙');
INSERT INTO `t_role` VALUES ('90861c3fc14111eba9ff144f8a625b6e', '数据管理员', '数据管理员', '20210530 20:21:11', null, '曾成龙');

-- ----------------------------
-- Table structure for t_sale
-- ----------------------------
DROP TABLE IF EXISTS `t_sale`;
CREATE TABLE `t_sale` (
  `s_id` varchar(40) NOT NULL,
  `jan_sale_num` varchar(40) DEFAULT NULL,
  `feb_sale_num` varchar(40) DEFAULT NULL,
  `mar_sale_num` varchar(40) DEFAULT NULL,
  `apr_sale_num` varchar(40) DEFAULT NULL,
  `may_sale_num` varchar(40) DEFAULT NULL,
  `jun_sale_num` varchar(40) DEFAULT NULL,
  `jul_sale_num` varchar(40) DEFAULT NULL,
  `aug_sale_num` varchar(40) DEFAULT NULL,
  `sep_sale_num` varchar(40) DEFAULT NULL,
  `oct_sale_num` varchar(40) DEFAULT NULL,
  `nov_sale_num` varchar(40) DEFAULT NULL,
  `dec_sale_num` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale
-- ----------------------------
INSERT INTO `t_sale` VALUES ('1', '29803', '39803', '29873', '67905', '69823', '99803', '29803', '29803', '29803', '29803', '1', '29803');
INSERT INTO `t_sale` VALUES ('2', '32158', '39803', '29873', '67905', '69823', '99803', '29803', '29803', '29803', '29803', '1', '29803');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `u_id` varchar(32) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `r_id` varchar(32) NOT NULL,
  `create_time` varchar(30) NOT NULL COMMENT '0:正常 1:注销',
  `update_time` varchar(30) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1de072b1c35c11ebbd12c85b76b7b678', 'admin', 'lueSGJZetyySpUndWjMBEg==', '8f5efb837f2011eb973d6100d940b6cf', '20210602 12:36:18', null, '1', '', '', '0');
INSERT INTO `t_user` VALUES ('4b6cce897f2211eb973d6100d940b6cf', '楼乐妍', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '20210307 16:50:44', '20210602 12:35:58', '0', '', '', '0');
INSERT INTO `t_user` VALUES ('798fddc17f2211eb973d6100d940b6cf', '曾成龙', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '20210307 16:52:01', null, '1', '', '', '0');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `rm_id` varchar(32) NOT NULL,
  `r_id` varchar(32) DEFAULT NULL,
  `m_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rm_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('6117e865c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('6118be77c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '5');
INSERT INTO `t_user_role` VALUES ('61198776c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '6');
INSERT INTO `t_user_role` VALUES ('611a5fc5c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('611b9c93c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('611c9fd3c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '4');
INSERT INTO `t_user_role` VALUES ('9f2b47f2c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '0');
INSERT INTO `t_user_role` VALUES ('9f2bc5e3c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '1');
INSERT INTO `t_user_role` VALUES ('9f2c402ec14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('a93d8dd7c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('a93f492cc92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('a93fb6d3c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('a940132fc92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '4');
INSERT INTO `t_user_role` VALUES ('a940a604c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', 'cb91070fbb0a11eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('a94111d1c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '5');
INSERT INTO `t_user_role` VALUES ('a9416b2bc92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '6');
INSERT INTO `t_user_role` VALUES ('a941d048c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '04f5cbbec92711eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('a9421500c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '70bb1d88c92711eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('a9425826c92811eba9ff144f8a625b6e', '64720b5d7f2011eb973d6100d940b6cf', '9f4e519dc92811eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('effae473c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('f0026058c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('f00a2d8cc35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');
