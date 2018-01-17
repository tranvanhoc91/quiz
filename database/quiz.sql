-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 1 朁E17 日 04:59
-- サーバのバージョン： 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_answers`
--

CREATE TABLE `savsoft_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_answers`
--

INSERT INTO `savsoft_answers` (`aid`, `qid`, `q_option`, `uid`, `score_u`, `rid`) VALUES
(549, 206, '332', 1, 0, 65),
(548, 205, '326', 1, 0, 65),
(547, 204, '321', 1, 1, 65),
(569, 206, '332', 1, 0, 68),
(567, 205, '327', 1, 0, 68),
(568, 206, '331', 1, 0, 68),
(566, 204, '321', 1, 1, 68),
(581, 204, '323', 1, 0, 69),
(579, 206, '331', 1, 0, 70),
(578, 205, '327', 1, 0, 70),
(577, 204, '322', 1, 0, 70),
(583, 204, '322', 1, 0, 77),
(588, 207, '334', 1, 0, 80),
(587, 206, '330', 1, 0, 80),
(596, 206, '330', 1, 0, 81),
(595, 205, '325', 1, 1, 81),
(597, 207, '334', 1, 0, 81),
(598, 205, '326', 1, 0, 82);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_category`
--

CREATE TABLE `savsoft_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(4, '面接応対'),
(5, '就職マーナ'),
(6, '敬語の使い方');

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_group`
--

CREATE TABLE `savsoft_group` (
  `gid` int(11) NOT NULL,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`) VALUES
(1, '転職', 0, 0),
(2, '就職', 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_level`
--

CREATE TABLE `savsoft_level` (
  `lid` int(11) NOT NULL,
  `level_name` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(1, 'レベル 1（やさしい）'),
(2, 'レベル 2（ややむずかしい）'),
(5, 'レベル 3（むずかしい）');

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_options`
--

INSERT INTO `savsoft_options` (`oid`, `qid`, `q_option`, `q_option_match`, `score`) VALUES
(321, 204, '答え１', NULL, 1),
(322, 204, '答え２', NULL, 0),
(323, 204, '答え３', NULL, 0),
(324, 204, '答え４', NULL, 0),
(325, 205, '答え１', NULL, 1),
(326, 205, '答え２', NULL, 0),
(327, 205, '答え３', NULL, 0),
(328, 205, '答え４', NULL, 0),
(329, 206, '答え', NULL, 1),
(330, 206, '答え', NULL, 0),
(331, 206, '答え', NULL, 0),
(332, 206, '答え', NULL, 0),
(333, 207, 'dd', NULL, 1),
(334, 207, 'aa', NULL, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_payment`
--

CREATE TABLE `savsoft_payment` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT '0',
  `no_time_corrected` int(11) NOT NULL DEFAULT '0',
  `no_time_incorrected` int(11) NOT NULL DEFAULT '0',
  `no_time_unattempted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_qbank`
--

INSERT INTO `savsoft_qbank` (`qid`, `question_type`, `question`, `description`, `cid`, `lid`, `no_time_served`, `no_time_corrected`, `no_time_incorrected`, `no_time_unattempted`) VALUES
(204, 'Multiple Choice Single Answer', '質問内容', '説明', 5, 1, 5, 2, 1, 2),
(205, 'Multiple Choice Single Answer', '質問２', '', 5, 1, 5, 0, 3, 2),
(206, 'Multiple Choice Multiple Answer', 'question', 'des', 6, 1, 6, 0, 4, 2),
(207, 'Multiple Choice Single Answer', 'fffffffffffffffffffffffffffffffffffffffffffffffffff', '', 6, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_qcl`
--

CREATE TABLE `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_qcl`
--

INSERT INTO `savsoft_qcl` (`qcl_id`, `quid`, `cid`, `lid`, `noq`) VALUES
(77, 2, 0, 1, 1),
(76, 2, 0, 1, 1),
(75, 2, 0, 1, 3),
(74, 4, 4, 1, 10);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_quiz`
--

CREATE TABLE `savsoft_quiz` (
  `quid` int(11) NOT NULL,
  `quiz_name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `gids` text NOT NULL,
  `qids` text NOT NULL,
  `noq` int(11) NOT NULL,
  `correct_score` float NOT NULL,
  `incorrect_score` float NOT NULL,
  `ip_address` text NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '10',
  `maximum_attempts` int(11) NOT NULL DEFAULT '1',
  `pass_percentage` float NOT NULL DEFAULT '50',
  `view_answer` int(11) NOT NULL DEFAULT '1',
  `camera_req` int(11) NOT NULL DEFAULT '1',
  `question_selection` int(11) NOT NULL DEFAULT '1',
  `gen_certificate` int(11) NOT NULL DEFAULT '0',
  `certificate_text` text,
  `with_login` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_quiz`
--

INSERT INTO `savsoft_quiz` (`quid`, `quiz_name`, `description`, `start_date`, `end_date`, `gids`, `qids`, `noq`, `correct_score`, `incorrect_score`, `ip_address`, `duration`, `maximum_attempts`, `pass_percentage`, `view_answer`, `camera_req`, `question_selection`, `gen_certificate`, `certificate_text`, `with_login`) VALUES
(14, 'dsfdsgsdg', '', 1516156596, 1547692596, '2,1', '206,207', 2, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(15, 'ffffff', '', 1516156716, 1547692716, '2,1', '204,205,206,207', 4, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(16, 'fffffffffffffffffffff', '', 1516157041, 1547693041, '2,1', '204,205,206,207', 4, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(17, 'mmmnb', '', 1516157065, 1547693065, '2,1', '', 0, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(18, 'sdfdsfds', '', 1516158074, 1547694074, '2,1', '207', 1, 1, 0, '', 10, 10, 50, 0, 0, 0, 0, NULL, 1),
(20, 'thai le ', '', 1516158323, 1547694323, '2', '207', 1, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(21, 'hoc hoc o', '', 1516158393, 1547694393, '2,1', '205,206,207', 3, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(22, 'denesu ｄｆｇｄｇｄ', '', 1516158736, 1547694736, '2,1', '204,205,206', 3, 1, 0, '', 10, 10, 50, 0, 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_result`
--

CREATE TABLE `savsoft_result` (
  `rid` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `result_status` varchar(100) NOT NULL DEFAULT 'Open',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `categories` text NOT NULL,
  `category_range` text NOT NULL,
  `r_qids` text NOT NULL,
  `individual_time` text NOT NULL,
  `total_time` int(11) NOT NULL DEFAULT '0',
  `score_obtained` float NOT NULL DEFAULT '0',
  `percentage_obtained` float NOT NULL DEFAULT '0',
  `attempted_ip` varchar(100) NOT NULL,
  `score_individual` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `manual_valuation` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_result`
--

INSERT INTO `savsoft_result` (`rid`, `quid`, `uid`, `result_status`, `start_time`, `end_time`, `categories`, `category_range`, `r_qids`, `individual_time`, `total_time`, `score_obtained`, `percentage_obtained`, `attempted_ip`, `score_individual`, `photo`, `manual_valuation`) VALUES
(65, 11, 1, 'Thất bại', 1516111858, 1516111870, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,4,4', 8, 10, 33.3333, '36.2.188.163', '1,2,2', '', 0),
(66, 11, 1, '失敗', 1516112020, 1516147752, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,4,0', 4, 0, 0, '36.2.188.163', '0,0,0', '', 0),
(67, 11, 1, '失敗', 1516147757, 1516148688, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,4,0', 4, 0, 0, '::1', '0,0,0', '', 0),
(68, 11, 1, 'Thất bại', 1516147804, 1516147880, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '1,9,62', 72, 10, 33.3333, '::1', '1,2,2', '', 0),
(69, 11, 1, 'Open', 1516148559, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '180,8,2', 0, 0, 0, '::1', '2,0,0', '', 0),
(70, 12, 1, '失敗', 1516148618, 1516148631, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,6,0', 6, 0, 0, '::1', '2,2,2', '', 0),
(71, 12, 1, 'Open', 1516150119, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(72, 12, 1, 'Open', 1516151573, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(73, 12, 1, 'Open', 1516151618, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(74, 12, 1, 'Open', 1516151622, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '537,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(75, 11, 1, 'Open', 1516152222, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '30,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(76, 12, 1, 'Open', 1516155159, 0, '就職マーナ', '2', '204,205', '0,0', 0, 0, 0, '::1', '0,0', '', 0),
(77, 13, 1, 'Open', 1516155963, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,2,0', 0, 0, 0, '::1', '2,0,0', '', 0),
(78, 13, 1, 'Open', 1516156008, 0, '敬語の使い方,就職マーナ', '1,3', '207,204,206,205', '0,0,0,0', 0, 0, 0, '::1', '0,0,0,0', '', 0),
(79, 16, 1, 'Open', 1516157121, 0, '就職マーナ,敬語の使い方', '2,2', '204,205,206,207', '0,0,0,0', 0, 0, 0, '::1', '0,0,0,0', '', 0),
(80, 14, 1, '失敗', 1516157145, 1516157154, '敬語の使い方', '2', '206,207', '0,2', 2, 0, 0, '::1', '2,2', '', 0),
(81, 21, 1, 'Open', 1516158431, 0, '就職マーナ,敬語の使い方', '1,2', '205,206,207', '0,4,0', 0, 0, 0, '::1', '1,2,2', '', 0),
(82, 22, 1, 'Open', 1516158757, 0, '就職マーナ,敬語の使い方', '1,1', '205,206', '0,2', 0, 0, 0, '::1', '2,0', '', 0),
(83, 22, 1, 'Open', 1516158980, 0, '就職マーナ,敬語の使い方', '2,1', '204,205,206', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(84, 21, 1, 'Open', 1516158986, 0, '就職マーナ,敬語の使い方', '1,2', '205,206,207', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_users`
--

CREATE TABLE `savsoft_users` (
  `uid` int(11) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact_no` varchar(1000) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '1',
  `su` int(11) NOT NULL DEFAULT '0',
  `subscription_expired` int(11) NOT NULL DEFAULT '0',
  `verify_code` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `gid`, `su`, `subscription_expired`, `verify_code`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', 'admin@example.com', 'Admin', 'Admin', '1234567890', 1, 1, 1776290400, 0),
(10, '827ccb0eea8a706c4c34a16891f84e7b', 'user@gmail.com', 'iwatani', 'iwatani', '123456789', 1, 0, 1831401000, 0),
(9, '827ccb0eea8a706c4c34a16891f84e7b', 'test@gmail.com', 'test', 'test', '123456789', 1, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  ADD PRIMARY KEY (`qcl_id`);

--
-- Indexes for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  ADD PRIMARY KEY (`quid`);

--
-- Indexes for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;
--
-- AUTO_INCREMENT for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  MODIFY `qcl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  MODIFY `quid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
