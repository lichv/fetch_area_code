/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 08/07/2021 12:12:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `alias` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据',
  `flag` tinyint(0) NOT NULL DEFAULT 0 COMMENT '标记',
  `state` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1101', '北京市', '北京', 0, 0);
INSERT INTO `city` VALUES ('1201', '天津市', '天津', 0, 0);
INSERT INTO `city` VALUES ('1301', '石家庄市', '石家庄', 0, 0);
INSERT INTO `city` VALUES ('1302', '唐山市', '唐山', 0, 0);
INSERT INTO `city` VALUES ('1303', '秦皇岛市', '秦皇岛', 0, 0);
INSERT INTO `city` VALUES ('1304', '邯郸市', '邯郸', 0, 0);
INSERT INTO `city` VALUES ('1305', '邢台市', '邢台', 0, 0);
INSERT INTO `city` VALUES ('1306', '保定市', '保定', 0, 0);
INSERT INTO `city` VALUES ('1307', '张家口市', '张家口', 0, 0);
INSERT INTO `city` VALUES ('1308', '承德市', '承德', 0, 0);
INSERT INTO `city` VALUES ('1309', '沧州市', '沧州', 0, 0);
INSERT INTO `city` VALUES ('1310', '廊坊市', '廊坊', 0, 0);
INSERT INTO `city` VALUES ('1311', '衡水市', '衡水', 0, 0);
INSERT INTO `city` VALUES ('1401', '太原市', '太原', 0, 0);
INSERT INTO `city` VALUES ('1402', '大同市', '大同', 0, 0);
INSERT INTO `city` VALUES ('1403', '阳泉市', '阳泉', 0, 0);
INSERT INTO `city` VALUES ('1404', '长治市', '长治', 0, 0);
INSERT INTO `city` VALUES ('1405', '晋城市', '晋城', 0, 0);
INSERT INTO `city` VALUES ('1406', '朔州市', '朔州', 0, 0);
INSERT INTO `city` VALUES ('1407', '晋中市', '晋中', 0, 0);
INSERT INTO `city` VALUES ('1408', '运城市', '运城', 0, 0);
INSERT INTO `city` VALUES ('1409', '忻州市', '忻州', 0, 0);
INSERT INTO `city` VALUES ('1410', '临汾市', '临汾', 0, 0);
INSERT INTO `city` VALUES ('1411', '吕梁市', '吕梁', 0, 0);
INSERT INTO `city` VALUES ('1501', '呼和浩特市', '呼和浩特', 0, 0);
INSERT INTO `city` VALUES ('1502', '包头市', '包头', 0, 0);
INSERT INTO `city` VALUES ('1503', '乌海市', '乌海', 0, 0);
INSERT INTO `city` VALUES ('1504', '赤峰市', '赤峰', 0, 0);
INSERT INTO `city` VALUES ('1505', '通辽市', '通辽', 0, 0);
INSERT INTO `city` VALUES ('1506', '鄂尔多斯市', '鄂尔多斯', 0, 0);
INSERT INTO `city` VALUES ('1507', '呼伦贝尔市', '呼伦贝尔', 0, 0);
INSERT INTO `city` VALUES ('1508', '巴彦淖尔市', '巴彦淖尔', 0, 0);
INSERT INTO `city` VALUES ('1509', '乌兰察布市', '乌兰察布', 0, 0);
INSERT INTO `city` VALUES ('1522', '兴安盟', '兴安', 0, 0);
INSERT INTO `city` VALUES ('1525', '锡林郭勒盟', '锡林郭勒', 0, 0);
INSERT INTO `city` VALUES ('1529', '阿拉善盟', '阿拉善', 0, 0);
INSERT INTO `city` VALUES ('2101', '沈阳市', '沈阳', 0, 0);
INSERT INTO `city` VALUES ('2102', '大连市', '大连', 0, 0);
INSERT INTO `city` VALUES ('2103', '鞍山市', '鞍山', 0, 0);
INSERT INTO `city` VALUES ('2104', '抚顺市', '抚顺', 0, 0);
INSERT INTO `city` VALUES ('2105', '本溪市', '本溪', 0, 0);
INSERT INTO `city` VALUES ('2106', '丹东市', '丹东', 0, 0);
INSERT INTO `city` VALUES ('2107', '锦州市', '锦州', 0, 0);
INSERT INTO `city` VALUES ('2108', '营口市', '营口', 0, 0);
INSERT INTO `city` VALUES ('2109', '阜新市', '阜新', 0, 0);
INSERT INTO `city` VALUES ('2110', '辽阳市', '辽阳', 0, 0);
INSERT INTO `city` VALUES ('2111', '盘锦市', '盘锦', 0, 0);
INSERT INTO `city` VALUES ('2112', '铁岭市', '铁岭', 0, 0);
INSERT INTO `city` VALUES ('2113', '朝阳市', '朝阳', 0, 0);
INSERT INTO `city` VALUES ('2114', '葫芦岛市', '葫芦岛', 0, 0);
INSERT INTO `city` VALUES ('2201', '长春市', '长春', 0, 0);
INSERT INTO `city` VALUES ('2202', '吉林市', '吉林', 0, 0);
INSERT INTO `city` VALUES ('2203', '四平市', '四平', 0, 0);
INSERT INTO `city` VALUES ('2204', '辽源市', '辽源', 0, 0);
INSERT INTO `city` VALUES ('2205', '通化市', '通化', 0, 0);
INSERT INTO `city` VALUES ('2206', '白山市', '白山', 0, 0);
INSERT INTO `city` VALUES ('2207', '松原市', '松原', 0, 0);
INSERT INTO `city` VALUES ('2208', '白城市', '白城', 0, 0);
INSERT INTO `city` VALUES ('2224', '延边朝鲜族自治州', '延边', 0, 0);
INSERT INTO `city` VALUES ('2301', '哈尔滨市', '哈尔滨', 0, 0);
INSERT INTO `city` VALUES ('2302', '齐齐哈尔市', '齐齐哈尔', 0, 0);
INSERT INTO `city` VALUES ('2303', '鸡西市', '鸡西', 0, 0);
INSERT INTO `city` VALUES ('2304', '鹤岗市', '鹤岗', 0, 0);
INSERT INTO `city` VALUES ('2305', '双鸭山市', '双鸭山', 0, 0);
INSERT INTO `city` VALUES ('2306', '大庆市', '大庆', 0, 0);
INSERT INTO `city` VALUES ('2307', '伊春市', '伊春', 0, 0);
INSERT INTO `city` VALUES ('2308', '佳木斯市', '佳木斯', 0, 0);
INSERT INTO `city` VALUES ('2309', '七台河市', '七台河', 0, 0);
INSERT INTO `city` VALUES ('2310', '牡丹江市', '牡丹江', 0, 0);
INSERT INTO `city` VALUES ('2311', '黑河市', '黑河', 0, 0);
INSERT INTO `city` VALUES ('2312', '绥化市', '绥化', 0, 0);
INSERT INTO `city` VALUES ('2327', '大兴安岭地区', '大兴安岭', 0, 0);
INSERT INTO `city` VALUES ('3101', '上海市', '市辖区', 0, 0);
INSERT INTO `city` VALUES ('3201', '南京市', '南京', 0, 0);
INSERT INTO `city` VALUES ('3202', '无锡市', '无锡', 0, 0);
INSERT INTO `city` VALUES ('3203', '徐州市', '徐州', 0, 0);
INSERT INTO `city` VALUES ('3204', '常州市', '常州', 0, 0);
INSERT INTO `city` VALUES ('3205', '苏州市', '苏州', 0, 0);
INSERT INTO `city` VALUES ('3206', '南通市', '南通', 0, 0);
INSERT INTO `city` VALUES ('3207', '连云港市', '连云港', 0, 0);
INSERT INTO `city` VALUES ('3208', '淮安市', '淮安', 0, 0);
INSERT INTO `city` VALUES ('3209', '盐城市', '盐城', 0, 0);
INSERT INTO `city` VALUES ('3210', '扬州市', '扬州', 0, 0);
INSERT INTO `city` VALUES ('3211', '镇江市', '镇江', 0, 0);
INSERT INTO `city` VALUES ('3212', '泰州市', '泰州', 0, 0);
INSERT INTO `city` VALUES ('3213', '宿迁市', '宿迁', 0, 0);
INSERT INTO `city` VALUES ('3301', '杭州市', '杭州', 0, 0);
INSERT INTO `city` VALUES ('3302', '宁波市', '宁波', 0, 0);
INSERT INTO `city` VALUES ('3303', '温州市', '温州', 0, 0);
INSERT INTO `city` VALUES ('3304', '嘉兴市', '嘉兴', 0, 0);
INSERT INTO `city` VALUES ('3305', '湖州市', '湖州', 0, 0);
INSERT INTO `city` VALUES ('3306', '绍兴市', '绍兴', 0, 0);
INSERT INTO `city` VALUES ('3307', '金华市', '金华', 0, 0);
INSERT INTO `city` VALUES ('3308', '衢州市', '衢州', 0, 0);
INSERT INTO `city` VALUES ('3309', '舟山市', '舟山', 0, 0);
INSERT INTO `city` VALUES ('3310', '台州市', '台州', 0, 0);
INSERT INTO `city` VALUES ('3311', '丽水市', '丽水', 0, 0);
INSERT INTO `city` VALUES ('3401', '合肥市', '合肥', 0, 0);
INSERT INTO `city` VALUES ('3402', '芜湖市', '芜湖', 0, 0);
INSERT INTO `city` VALUES ('3403', '蚌埠市', '蚌埠', 0, 0);
INSERT INTO `city` VALUES ('3404', '淮南市', '淮南', 0, 0);
INSERT INTO `city` VALUES ('3405', '马鞍山市', '马鞍山', 0, 0);
INSERT INTO `city` VALUES ('3406', '淮北市', '淮北', 0, 0);
INSERT INTO `city` VALUES ('3407', '铜陵市', '铜陵', 0, 0);
INSERT INTO `city` VALUES ('3408', '安庆市', '安庆', 0, 0);
INSERT INTO `city` VALUES ('3410', '黄山市', '黄山', 0, 0);
INSERT INTO `city` VALUES ('3411', '滁州市', '滁州', 0, 0);
INSERT INTO `city` VALUES ('3412', '阜阳市', '阜阳', 0, 0);
INSERT INTO `city` VALUES ('3413', '宿州市', '宿州', 0, 0);
INSERT INTO `city` VALUES ('3415', '六安市', '六安', 0, 0);
INSERT INTO `city` VALUES ('3416', '亳州市', '亳州', 0, 0);
INSERT INTO `city` VALUES ('3417', '池州市', '池州', 0, 0);
INSERT INTO `city` VALUES ('3418', '宣城市', '宣城', 0, 0);
INSERT INTO `city` VALUES ('3501', '福州市', '福州', 0, 0);
INSERT INTO `city` VALUES ('3502', '厦门市', '厦门', 0, 0);
INSERT INTO `city` VALUES ('3503', '莆田市', '莆田', 0, 0);
INSERT INTO `city` VALUES ('3504', '三明市', '三明', 0, 0);
INSERT INTO `city` VALUES ('3505', '泉州市', '泉州', 0, 0);
INSERT INTO `city` VALUES ('3506', '漳州市', '漳州', 0, 0);
INSERT INTO `city` VALUES ('3507', '南平市', '南平', 0, 0);
INSERT INTO `city` VALUES ('3508', '龙岩市', '龙岩', 0, 0);
INSERT INTO `city` VALUES ('3509', '宁德市', '宁德', 0, 0);
INSERT INTO `city` VALUES ('3601', '南昌市', '南昌', 0, 0);
INSERT INTO `city` VALUES ('3602', '景德镇市', '景德镇', 0, 0);
INSERT INTO `city` VALUES ('3603', '萍乡市', '萍乡', 0, 0);
INSERT INTO `city` VALUES ('3604', '九江市', '九江', 0, 0);
INSERT INTO `city` VALUES ('3605', '新余市', '新余', 0, 0);
INSERT INTO `city` VALUES ('3606', '鹰潭市', '鹰潭', 0, 0);
INSERT INTO `city` VALUES ('3607', '赣州市', '赣州', 0, 0);
INSERT INTO `city` VALUES ('3608', '吉安市', '吉安', 0, 0);
INSERT INTO `city` VALUES ('3609', '宜春市', '宜春', 0, 0);
INSERT INTO `city` VALUES ('3610', '抚州市', '抚州', 0, 0);
INSERT INTO `city` VALUES ('3611', '上饶市', '上饶', 0, 0);
INSERT INTO `city` VALUES ('3701', '济南市', '济南', 0, 0);
INSERT INTO `city` VALUES ('3702', '青岛市', '青岛', 0, 0);
INSERT INTO `city` VALUES ('3703', '淄博市', '淄博', 0, 0);
INSERT INTO `city` VALUES ('3704', '枣庄市', '枣庄', 0, 0);
INSERT INTO `city` VALUES ('3705', '东营市', '东营', 0, 0);
INSERT INTO `city` VALUES ('3706', '烟台市', '烟台', 0, 0);
INSERT INTO `city` VALUES ('3707', '潍坊市', '潍坊', 0, 0);
INSERT INTO `city` VALUES ('3708', '济宁市', '济宁', 0, 0);
INSERT INTO `city` VALUES ('3709', '泰安市', '泰安', 0, 0);
INSERT INTO `city` VALUES ('3710', '威海市', '威海', 0, 0);
INSERT INTO `city` VALUES ('3711', '日照市', '日照', 0, 0);
INSERT INTO `city` VALUES ('3713', '临沂市', '临沂', 0, 0);
INSERT INTO `city` VALUES ('3714', '德州市', '德州', 0, 0);
INSERT INTO `city` VALUES ('3715', '聊城市', '聊城', 0, 0);
INSERT INTO `city` VALUES ('3716', '滨州市', '滨州', 0, 0);
INSERT INTO `city` VALUES ('3717', '菏泽市', '菏泽', 0, 0);
INSERT INTO `city` VALUES ('4101', '郑州市', '郑州', 0, 0);
INSERT INTO `city` VALUES ('4102', '开封市', '开封', 0, 0);
INSERT INTO `city` VALUES ('4103', '洛阳市', '洛阳', 0, 0);
INSERT INTO `city` VALUES ('4104', '平顶山市', '平顶山', 0, 0);
INSERT INTO `city` VALUES ('4105', '安阳市', '安阳', 0, 0);
INSERT INTO `city` VALUES ('4106', '鹤壁市', '鹤壁', 0, 0);
INSERT INTO `city` VALUES ('4107', '新乡市', '新乡', 0, 0);
INSERT INTO `city` VALUES ('4108', '焦作市', '焦作', 0, 0);
INSERT INTO `city` VALUES ('4109', '濮阳市', '濮阳', 0, 0);
INSERT INTO `city` VALUES ('4110', '许昌市', '许昌', 0, 0);
INSERT INTO `city` VALUES ('4111', '漯河市', '漯河', 0, 0);
INSERT INTO `city` VALUES ('4112', '三门峡市', '三门峡', 0, 0);
INSERT INTO `city` VALUES ('4113', '南阳市', '南阳', 0, 0);
INSERT INTO `city` VALUES ('4114', '商丘市', '商丘', 0, 0);
INSERT INTO `city` VALUES ('4115', '信阳市', '信阳', 0, 0);
INSERT INTO `city` VALUES ('4116', '周口市', '周口', 0, 0);
INSERT INTO `city` VALUES ('4117', '驻马店市', '驻马店', 0, 0);
INSERT INTO `city` VALUES ('4190', '省直辖县级行政区划', '省直辖县级行政区划', 0, 0);
INSERT INTO `city` VALUES ('4201', '武汉市', '武汉', 0, 0);
INSERT INTO `city` VALUES ('4202', '黄石市', '黄石', 0, 0);
INSERT INTO `city` VALUES ('4203', '十堰市', '十堰', 0, 0);
INSERT INTO `city` VALUES ('4205', '宜昌市', '宜昌', 0, 0);
INSERT INTO `city` VALUES ('4206', '襄阳市', '襄阳', 0, 0);
INSERT INTO `city` VALUES ('4207', '鄂州市', '鄂州', 0, 0);
INSERT INTO `city` VALUES ('4208', '荆门市', '荆门', 0, 0);
INSERT INTO `city` VALUES ('4209', '孝感市', '孝感', 0, 0);
INSERT INTO `city` VALUES ('4210', '荆州市', '荆州', 0, 0);
INSERT INTO `city` VALUES ('4211', '黄冈市', '黄冈', 0, 0);
INSERT INTO `city` VALUES ('4212', '咸宁市', '咸宁', 0, 0);
INSERT INTO `city` VALUES ('4213', '随州市', '随州', 0, 0);
INSERT INTO `city` VALUES ('4228', '恩施土家族苗族自治州', '恩施', 0, 0);
INSERT INTO `city` VALUES ('4290', '省直辖县级行政区划', '省直辖县级行政区划', 0, 0);
INSERT INTO `city` VALUES ('4301', '长沙市', '长沙', 0, 0);
INSERT INTO `city` VALUES ('4302', '株洲市', '株洲', 0, 0);
INSERT INTO `city` VALUES ('4303', '湘潭市', '湘潭', 0, 0);
INSERT INTO `city` VALUES ('4304', '衡阳市', '衡阳', 0, 0);
INSERT INTO `city` VALUES ('4305', '邵阳市', '邵阳', 0, 0);
INSERT INTO `city` VALUES ('4306', '岳阳市', '岳阳', 0, 0);
INSERT INTO `city` VALUES ('4307', '常德市', '常德', 0, 0);
INSERT INTO `city` VALUES ('4308', '张家界市', '张家界', 0, 0);
INSERT INTO `city` VALUES ('4309', '益阳市', '益阳', 0, 0);
INSERT INTO `city` VALUES ('4310', '郴州市', '郴州', 0, 0);
INSERT INTO `city` VALUES ('4311', '永州市', '永州', 0, 0);
INSERT INTO `city` VALUES ('4312', '怀化市', '怀化', 0, 0);
INSERT INTO `city` VALUES ('4313', '娄底市', '娄底', 0, 0);
INSERT INTO `city` VALUES ('4331', '湘西土家族苗族自治州', '湘西', 0, 0);
INSERT INTO `city` VALUES ('4401', '广州市', '广州', 0, 0);
INSERT INTO `city` VALUES ('4402', '韶关市', '韶关', 0, 0);
INSERT INTO `city` VALUES ('4403', '深圳市', '深圳', 0, 0);
INSERT INTO `city` VALUES ('4404', '珠海市', '珠海', 0, 0);
INSERT INTO `city` VALUES ('4405', '汕头市', '汕头', 0, 0);
INSERT INTO `city` VALUES ('4406', '佛山市', '佛山', 0, 0);
INSERT INTO `city` VALUES ('4407', '江门市', '江门', 0, 0);
INSERT INTO `city` VALUES ('4408', '湛江市', '湛江', 0, 0);
INSERT INTO `city` VALUES ('4409', '茂名市', '茂名', 0, 0);
INSERT INTO `city` VALUES ('4412', '肇庆市', '肇庆', 0, 0);
INSERT INTO `city` VALUES ('4413', '惠州市', '惠州', 0, 0);
INSERT INTO `city` VALUES ('4414', '梅州市', '梅州', 0, 0);
INSERT INTO `city` VALUES ('4415', '汕尾市', '汕尾', 0, 0);
INSERT INTO `city` VALUES ('4416', '河源市', '河源', 0, 0);
INSERT INTO `city` VALUES ('4417', '阳江市', '阳江', 0, 0);
INSERT INTO `city` VALUES ('4418', '清远市', '清远', 0, 0);
INSERT INTO `city` VALUES ('4419', '东莞市', '东莞', 0, 0);
INSERT INTO `city` VALUES ('4420', '中山市', '中山', 0, 0);
INSERT INTO `city` VALUES ('4451', '潮州市', '潮州', 0, 0);
INSERT INTO `city` VALUES ('4452', '揭阳市', '揭阳', 0, 0);
INSERT INTO `city` VALUES ('4453', '云浮市', '云浮', 0, 0);
INSERT INTO `city` VALUES ('4501', '南宁市', '南宁', 0, 0);
INSERT INTO `city` VALUES ('4502', '柳州市', '柳州', 0, 0);
INSERT INTO `city` VALUES ('4503', '桂林市', '桂林', 0, 0);
INSERT INTO `city` VALUES ('4504', '梧州市', '梧州', 0, 0);
INSERT INTO `city` VALUES ('4505', '北海市', '北海', 0, 0);
INSERT INTO `city` VALUES ('4506', '防城港市', '防城港', 0, 0);
INSERT INTO `city` VALUES ('4507', '钦州市', '钦州', 0, 0);
INSERT INTO `city` VALUES ('4508', '贵港市', '贵港', 0, 0);
INSERT INTO `city` VALUES ('4509', '玉林市', '玉林', 0, 0);
INSERT INTO `city` VALUES ('4510', '百色市', '百色', 0, 0);
INSERT INTO `city` VALUES ('4511', '贺州市', '贺州', 0, 0);
INSERT INTO `city` VALUES ('4512', '河池市', '河池', 0, 0);
INSERT INTO `city` VALUES ('4513', '来宾市', '来宾', 0, 0);
INSERT INTO `city` VALUES ('4514', '崇左市', '崇左', 0, 0);
INSERT INTO `city` VALUES ('4601', '海口市', '海口', 0, 0);
INSERT INTO `city` VALUES ('4602', '三亚市', '三亚', 0, 0);
INSERT INTO `city` VALUES ('4603', '三沙市', '三沙', 0, 0);
INSERT INTO `city` VALUES ('4604', '儋州市', '儋州', 0, 0);
INSERT INTO `city` VALUES ('4690', '省直辖县级行政区划', '省直辖县级行政区划', 0, 0);
INSERT INTO `city` VALUES ('5001', '重庆市', '市辖区', 0, 0);
INSERT INTO `city` VALUES ('5002', '县', '县', 0, 0);
INSERT INTO `city` VALUES ('5101', '成都市', '成都', 0, 0);
INSERT INTO `city` VALUES ('5103', '自贡市', '自贡', 0, 0);
INSERT INTO `city` VALUES ('5104', '攀枝花市', '攀枝花', 0, 0);
INSERT INTO `city` VALUES ('5105', '泸州市', '泸州', 0, 0);
INSERT INTO `city` VALUES ('5106', '德阳市', '德阳', 0, 0);
INSERT INTO `city` VALUES ('5107', '绵阳市', '绵阳', 0, 0);
INSERT INTO `city` VALUES ('5108', '广元市', '广元', 0, 0);
INSERT INTO `city` VALUES ('5109', '遂宁市', '遂宁', 0, 0);
INSERT INTO `city` VALUES ('5110', '内江市', '内江', 0, 0);
INSERT INTO `city` VALUES ('5111', '乐山市', '乐山', 0, 0);
INSERT INTO `city` VALUES ('5113', '南充市', '南充', 0, 0);
INSERT INTO `city` VALUES ('5114', '眉山市', '眉山', 0, 0);
INSERT INTO `city` VALUES ('5115', '宜宾市', '宜宾', 0, 0);
INSERT INTO `city` VALUES ('5116', '广安市', '广安', 0, 0);
INSERT INTO `city` VALUES ('5117', '达州市', '达州', 0, 0);
INSERT INTO `city` VALUES ('5118', '雅安市', '雅安', 0, 0);
INSERT INTO `city` VALUES ('5119', '巴中市', '巴中', 0, 0);
INSERT INTO `city` VALUES ('5120', '资阳市', '资阳', 0, 0);
INSERT INTO `city` VALUES ('5132', '阿坝藏族羌族自治州', '阿坝', 0, 0);
INSERT INTO `city` VALUES ('5133', '甘孜藏族自治州', '甘孜', 0, 0);
INSERT INTO `city` VALUES ('5134', '凉山彝族自治州', '凉山', 0, 0);
INSERT INTO `city` VALUES ('5201', '贵阳市', '贵阳', 0, 0);
INSERT INTO `city` VALUES ('5202', '六盘水市', '六盘水', 0, 0);
INSERT INTO `city` VALUES ('5203', '遵义市', '遵义', 0, 0);
INSERT INTO `city` VALUES ('5204', '安顺市', '安顺', 0, 0);
INSERT INTO `city` VALUES ('5205', '毕节市', '毕节', 0, 0);
INSERT INTO `city` VALUES ('5206', '铜仁市', '铜仁', 0, 0);
INSERT INTO `city` VALUES ('5223', '黔西南布依族苗族自治州', '黔西南', 0, 0);
INSERT INTO `city` VALUES ('5226', '黔东南苗族侗族自治州', '黔东', 0, 0);
INSERT INTO `city` VALUES ('5227', '黔南布依族苗族自治州', '黔南', 0, 0);
INSERT INTO `city` VALUES ('5301', '昆明市', '昆明', 0, 0);
INSERT INTO `city` VALUES ('5303', '曲靖市', '曲靖', 0, 0);
INSERT INTO `city` VALUES ('5304', '玉溪市', '玉溪', 0, 0);
INSERT INTO `city` VALUES ('5305', '保山市', '保山', 0, 0);
INSERT INTO `city` VALUES ('5306', '昭通市', '昭通', 0, 0);
INSERT INTO `city` VALUES ('5307', '丽江市', '丽江', 0, 0);
INSERT INTO `city` VALUES ('5308', '普洱市', '普洱', 0, 0);
INSERT INTO `city` VALUES ('5309', '临沧市', '临沧', 0, 0);
INSERT INTO `city` VALUES ('5323', '楚雄彝族自治州', '楚雄', 0, 0);
INSERT INTO `city` VALUES ('5325', '红河哈尼族彝族自治州', '红河', 0, 0);
INSERT INTO `city` VALUES ('5326', '文山壮族苗族自治州', '文山', 0, 0);
INSERT INTO `city` VALUES ('5328', '西双版纳傣族自治州', '西双版纳', 0, 0);
INSERT INTO `city` VALUES ('5329', '大理白族自治州', '大理', 0, 0);
INSERT INTO `city` VALUES ('5331', '德宏傣族景颇族自治州', '德宏', 0, 0);
INSERT INTO `city` VALUES ('5333', '怒江傈僳族自治州', '怒江', 0, 0);
INSERT INTO `city` VALUES ('5334', '迪庆藏族自治州', '迪庆', 0, 0);
INSERT INTO `city` VALUES ('5401', '拉萨市', '拉萨', 0, 0);
INSERT INTO `city` VALUES ('5402', '日喀则市', '日喀则', 0, 0);
INSERT INTO `city` VALUES ('5403', '昌都市', '昌都', 0, 0);
INSERT INTO `city` VALUES ('5404', '林芝市', '林芝', 0, 0);
INSERT INTO `city` VALUES ('5405', '山南市', '山南', 0, 0);
INSERT INTO `city` VALUES ('5406', '那曲市', '那曲', 0, 0);
INSERT INTO `city` VALUES ('5425', '阿里地区', '阿里', 0, 0);
INSERT INTO `city` VALUES ('6101', '西安市', '西安', 0, 0);
INSERT INTO `city` VALUES ('6102', '铜川市', '铜川', 0, 0);
INSERT INTO `city` VALUES ('6103', '宝鸡市', '宝鸡', 0, 0);
INSERT INTO `city` VALUES ('6104', '咸阳市', '咸阳', 0, 0);
INSERT INTO `city` VALUES ('6105', '渭南市', '渭南', 0, 0);
INSERT INTO `city` VALUES ('6106', '延安市', '延安', 0, 0);
INSERT INTO `city` VALUES ('6107', '汉中市', '汉中', 0, 0);
INSERT INTO `city` VALUES ('6108', '榆林市', '榆林', 0, 0);
INSERT INTO `city` VALUES ('6109', '安康市', '安康', 0, 0);
INSERT INTO `city` VALUES ('6110', '商洛市', '商洛', 0, 0);
INSERT INTO `city` VALUES ('6201', '兰州市', '兰州', 0, 0);
INSERT INTO `city` VALUES ('6202', '嘉峪关市', '嘉峪关', 0, 0);
INSERT INTO `city` VALUES ('6203', '金昌市', '金昌', 0, 0);
INSERT INTO `city` VALUES ('6204', '白银市', '白银', 0, 0);
INSERT INTO `city` VALUES ('6205', '天水市', '天水', 0, 0);
INSERT INTO `city` VALUES ('6206', '武威市', '武威', 0, 0);
INSERT INTO `city` VALUES ('6207', '张掖市', '张掖', 0, 0);
INSERT INTO `city` VALUES ('6208', '平凉市', '平凉', 0, 0);
INSERT INTO `city` VALUES ('6209', '酒泉市', '酒泉', 0, 0);
INSERT INTO `city` VALUES ('6210', '庆阳市', '庆阳', 0, 0);
INSERT INTO `city` VALUES ('6211', '定西市', '定西', 0, 0);
INSERT INTO `city` VALUES ('6212', '陇南市', '陇南', 0, 0);
INSERT INTO `city` VALUES ('6229', '临夏回族自治州', '临夏', 0, 0);
INSERT INTO `city` VALUES ('6230', '甘南藏族自治州', '甘南', 0, 0);
INSERT INTO `city` VALUES ('6301', '西宁市', '西宁', 0, 0);
INSERT INTO `city` VALUES ('6302', '海东市', '海东', 0, 0);
INSERT INTO `city` VALUES ('6322', '海北藏族自治州', '海北', 0, 0);
INSERT INTO `city` VALUES ('6323', '黄南藏族自治州', '黄南', 0, 0);
INSERT INTO `city` VALUES ('6325', '海南藏族自治州', '海南', 0, 0);
INSERT INTO `city` VALUES ('6326', '果洛藏族自治州', '果洛', 0, 0);
INSERT INTO `city` VALUES ('6327', '玉树藏族自治州', '玉树', 0, 0);
INSERT INTO `city` VALUES ('6328', '海西蒙古族藏族自治州', '海西', 0, 0);
INSERT INTO `city` VALUES ('6401', '银川市', '银川', 0, 0);
INSERT INTO `city` VALUES ('6402', '石嘴山市', '石嘴山', 0, 0);
INSERT INTO `city` VALUES ('6403', '吴忠市', '吴忠', 0, 0);
INSERT INTO `city` VALUES ('6404', '固原市', '固原', 0, 0);
INSERT INTO `city` VALUES ('6405', '中卫市', '中卫', 0, 0);
INSERT INTO `city` VALUES ('6501', '乌鲁木齐市', '乌鲁木齐', 0, 0);
INSERT INTO `city` VALUES ('6502', '克拉玛依市', '克拉玛依', 0, 0);
INSERT INTO `city` VALUES ('6504', '吐鲁番市', '吐鲁番', 0, 0);
INSERT INTO `city` VALUES ('6505', '哈密市', '哈密', 0, 0);
INSERT INTO `city` VALUES ('6523', '昌吉回族自治州', '昌吉', 0, 0);
INSERT INTO `city` VALUES ('6527', '博尔塔拉蒙古自治州', '博尔塔拉', 0, 0);
INSERT INTO `city` VALUES ('6528', '巴音郭楞蒙古自治州', '巴音郭楞', 0, 0);
INSERT INTO `city` VALUES ('6529', '阿克苏地区', '阿克苏', 0, 0);
INSERT INTO `city` VALUES ('6530', '克孜勒苏柯尔克孜自治州', '克州', 0, 0);
INSERT INTO `city` VALUES ('6531', '喀什地区', '喀什', 0, 0);
INSERT INTO `city` VALUES ('6532', '和田地区', '和田', 0, 0);
INSERT INTO `city` VALUES ('6540', '伊犁哈萨克自治州', '伊犁', 0, 0);
INSERT INTO `city` VALUES ('6542', '塔城地区', '塔城', 0, 0);
INSERT INTO `city` VALUES ('6543', '阿勒泰地区', '阿勒泰', 0, 0);
INSERT INTO `city` VALUES ('6590', '自治区直辖县级行政区划', '自治区直辖县级行政区划', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;