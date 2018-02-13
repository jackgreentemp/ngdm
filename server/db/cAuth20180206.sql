-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-02-06 07:00:20
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
('ouZj54ms5ZmrFQkEqG-shSkQsRJk', 'a0ef8d8a-0282-42d5-8af0-7bd8da145309', '315cceffed1cd3d948de3e786cf81707bb88cd93', '2018-02-06 03:27:32', '2018-02-06 03:27:32', 'IhwqNC0EYJSw57ph1zLOtw==', '{\"openId\":\"ouZj54ms5ZmrFQkEqG-shSkQsRJk\",\"nickName\":\"newtonbob\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Haidian\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83er9rz4Xia7jiawbSNMW7OZxMoNn55l6hz9vBFjBCzZNEDFKuiaFQkv4XLMmheibewwGEjH47iciaeGjmic2Q/0\",\"watermark\":{\"timestamp\":1517887651,\"appid\":\"wxa73a0d6ba3d1deae\"}}');

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

-- --------------------------------------------------------

--
-- 表的结构 `questionOption`
--

CREATE TABLE `questionOption` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_answer` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `questionCategory`
--
ALTER TABLE `questionCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `questionOption`
--
ALTER TABLE `questionOption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
