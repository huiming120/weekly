-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-02-25 10:07:49
-- 服务器版本： 10.1.38-MariaDB
-- PHP 版本： 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `weekly`
--

-- --------------------------------------------------------

--
-- 表的结构 `week_company`
--

CREATE TABLE `week_company` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `week_department`
--

CREATE TABLE `week_department` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `week_log`
--

CREATE TABLE `week_log` (
  `flag` tinyint(3) UNSIGNED NOT NULL,
  `usernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `week_log`
--

INSERT INTO `week_log` (`flag`, `usernum`, `username`, `logout_time`, `password`) VALUES
(1, '0', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'penghm', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'penghm', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'penghm', '', '', 'd114423378e0a399870659279d6bdff9'),
(1, 'penghm', '', '', 'd114423378e0a399870659279d6bdff9'),
(1, 'penghm', '', '', 'd114423378e0a399870659279d6bdff9'),
(1, 'penghm', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'penghm', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(0, 'penghm', '彭慧明', '2020-02-25 16:55:52', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'test', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(0, 'test', '测试', '2020-02-25 16:56:30', '0c00cf218b8b1d41c0903cd62ac9edfe'),
(1, 'penghm', '', '', '0c00cf218b8b1d41c0903cd62ac9edfe');

-- --------------------------------------------------------

--
-- 表的结构 `week_role`
--

CREATE TABLE `week_role` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `week_user`
--

CREATE TABLE `week_user` (
  `usernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `week_user`
--

INSERT INTO `week_user` (`usernum`, `username`, `telephone`, `role`, `role_name`, `password`, `email`, `company_id`, `company_name`) VALUES
('penghm', '彭慧明', '17375859914', 1, '管理员', '0c00cf218b8b1d41c0903cd62ac9edfe', 'huiming120@qq.com', 1, '星沙时报'),
('test', '测试', '17375859914', 4, '成员', '0c00cf218b8b1d41c0903cd62ac9edfe', 'huiming120@qq.com', 1, '星沙时报');

-- --------------------------------------------------------

--
-- 表的结构 `week_week`
--

CREATE TABLE `week_week` (
  `usernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `startDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `department_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `week_company`
--
ALTER TABLE `week_company`
  ADD PRIMARY KEY (`company_id`);

--
-- 表的索引 `week_user`
--
ALTER TABLE `week_user`
  ADD PRIMARY KEY (`usernum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
