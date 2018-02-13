-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-02-11 09:24:18
-- 服务器版本： 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cAuth`
--

-- --------------------------------------------------------

--
-- 表的结构 `cAppinfo`
--

CREATE TABLE `cAppinfo` (
  `appid` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `secret` char(64) CHARACTER SET latin1 DEFAULT NULL,
  `ip` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `login_duration` int(11) DEFAULT NULL,
  `qcloud_appid` char(64) CHARACTER SET latin1 DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cAppinfo`
--

INSERT INTO `cAppinfo` (`appid`, `secret`, `ip`, `login_duration`, `qcloud_appid`, `session_duration`) VALUES
('wx18d48ecadd856a44', '', '123.207.11.46', 1000, '1255937613', 2000);

-- --------------------------------------------------------

--
-- 表的结构 `cSessionInfo`
--

CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

--
-- 转存表中的数据 `cSessionInfo`
--

INSERT INTO `cSessionInfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
('otIzq0CdV7j4mZLChlLOfzDJm0hg', '9835c373-21aa-410d-8f40-960e8da4f5ec', '8684962984b7a9dc7256296a8e0e1a076792c500', '2018-02-02 02:42:02', '2018-02-02 02:42:02', '2H10+N82q7etSUtuIkuMMw==', '{\"openId\":\"otIzq0CdV7j4mZLChlLOfzDJm0hg\",\"nickName\":\"陈梦瑶\",\"gender\":2,\"language\":\"zh_CN\",\"city\":\"West\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Hk6ZTagyeQjExUTwt0zTLCiaCLaM0mGLhQF2yrYpMjVgZK1NHibJJm1FQc1rFn1HB25xd8JIJFicjfEVn4ibWIfJhA/0\",\"watermark\":{\"timestamp\":1517539320,\"appid\":\"wx18d48ecadd856a44\"}}'),
('otIzq0G-eTI85gk8LCEjkUryU-C0', 'cbefc7da-df57-44ff-b6ad-cfacaaac074d', '12536b49926a131e2ef6da4013c01161b2e15e6e', '2018-02-06 03:17:06', '2018-02-06 03:17:06', 'RzrsJ8ErQFWjilRaJO8HsA==', '{\"openId\":\"otIzq0G-eTI85gk8LCEjkUryU-C0\",\"nickName\":\"newtonbob\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Haidian\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqOicD9nHpZwowzwxE75jsdZRvw2zLJovwUpAvbEDpNkxWsIhoTnBB9tic3n76mia6MExicQRypkHXuFQ/0\",\"watermark\":{\"timestamp\":1517887025,\"appid\":\"wx18d48ecadd856a44\"}}'),
('otIzq0G5XJS4nQMpHo9uxUAvMTtg', '9ba6da06-e9fb-42f1-8854-248d4087ff9d', 'c396b25e28fd281d75b44ece083df58769f502b4', '2018-02-06 03:16:52', '2018-02-06 03:16:52', 'aYMBpuS8EMBomNOuxSnwPQ==', '{\"openId\":\"otIzq0G5XJS4nQMpHo9uxUAvMTtg\",\"nickName\":\"杨帆\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIdBG5QtYfic7iasesdLicyxeYs1ggGGicb8F4jPHTNCqdyo077dQ8Oj2AD99WWS4IY7Qco23aRbv2gQ/0\",\"watermark\":{\"timestamp\":1517887010,\"appid\":\"wx18d48ecadd856a44\"}}'),
('ouZj54ms5ZmrFQkEqG-shSkQsRJk', 'd18968e9-17c8-4b72-a50e-b876d1a01013', '8124218959daee59f018c51ea50e3df82f0f643a', '2018-02-11 09:04:01', '2018-02-11 09:04:01', 'U0P/mdYsJMlwpjMJLkhxcQ==', '{\"openId\":\"ouZj54ms5ZmrFQkEqG-shSkQsRJk\",\"nickName\":\"newtonbob\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Haidian\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83er9rz4Xia7jiawbSNMW7OZxMoNn55l6hz9vBFjBCzZNEDFKuiaFQkv4XLMmheibewwGEjH47iciaeGjmic2Q/0\",\"watermark\":{\"timestamp\":1518339839,\"appid\":\"wxa73a0d6ba3d1deae\"}}');

-- --------------------------------------------------------

--
-- 表的结构 `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`id`, `question`, `category_id`, `create_time`, `update_time`) VALUES
(1, '漂亮女人该拼事业or男人', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(2, '该不该看伴侣的手机', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(3, '这是不是一个看脸的社会', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(4, '没有爱了要不要离婚', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(5, '举报作弊我错了吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(6, '份子钱该不该被消灭', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(7, '爱上好朋友的恋人要不要追', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(8, '结婚在不在乎门当户对', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(9, '催婚是爱是变态', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(10, '异性闺蜜是不是谎言', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(11, '相亲要不要AA制', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(12, '要不要牺牲一人救大家', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(13, '领导傻X要不要告诉他', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(14, '精神出轨和肉体出轨你更不能接受哪个', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(15, '结婚该选择爱你的人还是你爱的人', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(16, '你选择大城床还是小城房', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(17, '分手后还能不能做朋友', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(18, '人到30岁是做稳定的工作还是追求梦想', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(19, '工作中遇到碧池是以牙还牙还是不跟TA一般见识', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(20, '早恋该不该支持', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(21, '为了成功潜规则放在面前用不用', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(22, '我不生孩子有错吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(23, '虚伪是好事吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(24, '好朋友的恋人出轨，你要不要告诉好朋友？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(25, '婚后遇见此生挚爱，要不要离婚？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(26, '伴侣找恋爱经验多的还是少的？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(27, '是否接受开放式婚姻', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(28, '如果一个月后就是世界末日，当局应该公布消息还是秘而不宣？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(29, '该不该向父母出柜？（已下线）', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(30, '没钱要不要生孩子？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(31, '恋爱中要不要有备胎？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(32, '小朋友被欺负了，应该鼓励打回去还是告老师？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(33, '好朋友可不可约？（已下线）', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(34, '伴侣的钱是不是我的钱？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(35, '该不该向恋人坦白恋爱史？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(36, '该不该催好朋友还钱？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(37, '长生不老是不是一件好事？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(38, '整容会帮你成为人生赢家吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(39, '朋友圈要不要屏蔽父母？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(40, '同事能力弱 力不力挽狂澜？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(41, '应该改变成恋人想要的样子吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(42, '女生该不该主动追男生？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(43, '丑闻主角就活该被万人虐吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(44, '做人到底该不该省钱 吴莫愁', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(45, '高学历女生做全职太太是浪费吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(46, '穷游是不是一件值得骄傲的事情？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(47, '买房or不买房，哪个更幸福？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(48, '人类要不要发明时光机？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(49, '单身是狗还是贵族', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(50, '跟蠢人交朋友你是不是傻', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(51, '前任婚礼到底要不要去', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(52, '老婆收入比我高三倍，还该在一起吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(53, '臭不要脸是一件坏事吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(54, '你和你的伴侣颜值分别是98 or 2,你选', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(55, '婚前要不要啪啪啪', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(56, '准婆婆有太后病，该不该悔婚？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(57, '撒娇的女人会好命吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(58, '闺蜜约我去撕小三，你去不去', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(59, '“我这是为你好”是不是扯', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(60, '世界需不需要超级英雄', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(61, '该不该刷爆卡买包包', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(62, '女性专属停车位是不是歧视', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(63, '异地伴侣建议available,你接受吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(64, '时保联是不是暴政', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(65, '上司该不该列为发展对象', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(66, '消灭谎言的科技该支持吗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(67, '爱上人工智能算不算爱情', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(68, '该不该克制在朋友圈秀晒炫？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(69, '如果婚姻有效期为七年你赞成吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(70, '懒是不是人类之光？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(71, '是否愿意做单身妈妈？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(72, '奋斗城市污染严重走吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(73, '不给别人添麻烦是美德吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(74, '和老板打电动放水吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(75, '分手要不要当面说？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(76, '遇险伴侣逃跑原谅吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(77, '父母提出住养老院支持吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(78, '不靠谱的梦想该劝阻吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(79, '婚礼真的有必要吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(80, '给走投有路的人捐款愚蠢吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(81, '要帮爱人一键恢复记忆吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(82, '生活的暴击值得感激吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(83, '在职场要不要当邀功精？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(84, '要不要给孩子一键定制完美人生？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(85, '剩男剩女该不该差不多得了', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(86, '没有上进心我错了吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(87, '十年后不在一起还追吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(88, '亲戚不把自己当外人，要不要jue回去？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(89, '被误会走后门要不要澄清', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(90, '给你多少钱你愿意瞬间老十岁', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(91, '如果你的的前任得了绝症，希望你陪伴剩余人生，你会离开现任吗？', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00'),
(92, '如果你只剩2年寿命，化疗痊愈的几率是15%要不要化疗', 1, '2018-02-07 08:50:00', '2018-02-07 08:50:00');

-- --------------------------------------------------------

--
-- 表的结构 `questionCategory`
--

CREATE TABLE `questionCategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `questionCategory`
--

INSERT INTO `questionCategory` (`id`, `name`, `comment`, `create_time`, `update_time`) VALUES
(1, '默认', '默认', '2018-02-07 08:49:51', '2018-02-07 08:49:51');

-- --------------------------------------------------------

--
-- 表的结构 `questionOption`
--

CREATE TABLE `questionOption` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_answer` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `questionOption`
--

INSERT INTO `questionOption` (`id`, `content`, `question_id`, `is_answer`, `user_id`, `create_time`, `update_time`) VALUES
(1, '事业', 1, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(2, '男人', 1, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(3, '该看', 2, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(4, '不该看', 2, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(5, '看脸', 3, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(6, '不看脸', 3, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(7, '离婚', 4, NULL, NULL, '2018-02-11 09:20:22', '2018-02-11 09:20:22'),
(8, '不离婚', 4, NULL, NULL, '2018-02-11 09:20:22', '2018-02-11 09:20:22'),
(9, '错了', 5, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(10, '没错', 5, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(11, '该', 6, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(12, '不该', 6, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(13, '追', 7, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(14, '不追', 7, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(15, '在乎', 8, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(16, '不在乎', 8, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(17, '爱', 9, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(18, '变态', 9, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(19, '是', 10, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42'),
(20, '不是', 10, NULL, NULL, '2018-02-11 09:18:42', '2018-02-11 09:18:42');

-- --------------------------------------------------------

--
-- 表的结构 `share`
--

CREATE TABLE `share` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `userInfo`
--

CREATE TABLE `userInfo` (
  `id` int(32) NOT NULL COMMENT '1为reboot',
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(11) NOT NULL DEFAULT '0',
  `star` int(1) NOT NULL DEFAULT '0',
  `money` int(32) NOT NULL DEFAULT '100',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `userInfo`
--

INSERT INTO `userInfo` (`id`, `open_id`, `nick_name`, `gender`, `city`, `province`, `country`, `avatar_url`, `level`, `star`, `money`, `create_time`, `update_time`) VALUES
(1, 'roboot', 'roboot', 1, 'Haidian', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqOicD9nHpZwowzwxE75jsdZRvw2zLJovwUpAvbEDpNkxWsIhoTnBB9tic3n76mia6MExicQRypkHXuFQ/0', 0, 0, 0, '2018-01-25 12:25:17', '2018-01-31 02:03:08'),
(12, 'otIzq0G-eTI85gk8LCEjkUryU-C0', 'newtonbob', 1, 'Haidian', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqOicD9nHpZwowzwxE75jsdZRvw2zLJovwUpAvbEDpNkxWsIhoTnBB9tic3n76mia6MExicQRypkHXuFQ/0', 1, 0, 0, '2018-01-26 09:28:04', '2018-02-06 03:17:06'),
(13, 'otIzq0CdV7j4mZLChlLOfzDJm0hg', '陈梦瑶', 2, 'West', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Hk6ZTagyeQjExUTwt0zTLCiaCLaM0mGLhQF2yrYpMjVgZK1NHibJJm1FQc1rFn1HB25xd8JIJFicjfEVn4ibWIfJhA/0', 0, 0, 0, '2018-01-26 09:41:01', '2018-02-02 02:42:02'),
(14, 'otIzq0G5XJS4nQMpHo9uxUAvMTtg', '杨帆', 1, '', '', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIdBG5QtYfic7iasesdLicyxeYs1ggGGicb8F4jPHTNCqdyo077dQ8Oj2AD99WWS4IY7Qco23aRbv2gQ/0', 0, 0, 0, '2018-01-29 02:11:54', '2018-02-06 03:16:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cSessionInfo`
--
ALTER TABLE `cSessionInfo`
  ADD PRIMARY KEY (`open_id`),
  ADD KEY `openid` (`open_id`) USING BTREE,
  ADD KEY `skey` (`skey`) USING BTREE;

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `questionCategory`
--
ALTER TABLE `questionCategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `questionOption`
--
ALTER TABLE `questionOption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `userInfo`
--
ALTER TABLE `userInfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `open_id` (`open_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- 使用表AUTO_INCREMENT `questionCategory`
--
ALTER TABLE `questionCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `questionOption`
--
ALTER TABLE `questionOption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `share`
--
ALTER TABLE `share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `userInfo`
--
ALTER TABLE `userInfo`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '1为reboot', AUTO_INCREMENT=15;
--
-- 限制导出的表
--

--
-- 限制表 `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `userInfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `questionCategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `questionOption`
--
ALTER TABLE `questionOption`
  ADD CONSTRAINT `creater_uid` FOREIGN KEY (`user_id`) REFERENCES `userInfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `share_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `share_user_id` FOREIGN KEY (`user_id`) REFERENCES `userInfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `userInfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
