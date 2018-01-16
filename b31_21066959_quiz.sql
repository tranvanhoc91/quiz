-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- ホスト: sql304.byetcluster.com
-- 生成日時: 2018 年 1 月 16 日 07:59
-- サーバのバージョン: 5.6.35-81.0
-- PHP のバージョン: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `b31_21066959_quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_answers`
--

CREATE TABLE IF NOT EXISTS `savsoft_answers` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=462 ;

--
-- テーブルのデータのダンプ `savsoft_answers`
--

INSERT INTO `savsoft_answers` (`aid`, `qid`, `q_option`, `uid`, `score_u`, `rid`) VALUES
(20, 1, '57', 1, 1, 1),
(21, 3, '52', 1, 0.5, 1),
(22, 3, '54', 1, 0.5, 1),
(23, 6, 'Keyboard___CPU', 1, 0.25, 1),
(24, 6, 'Red___Green', 1, 0.25, 1),
(25, 6, 'Good Morning___Good Night', 1, 0.25, 1),
(26, 6, 'Honda___BMW', 1, 0.25, 1),
(27, 7, 'blue', 1, 1, 1),
(53, 7, 'red', 1, 0, 2),
(54, 8, 'India is the great country', 1, 0, 2),
(55, 6, 'Honda___BMW', 1, 0.25, 2),
(56, 6, 'Good Morning___Good Night', 1, 0.25, 2),
(57, 6, 'Keyboard___CPU', 1, 0.25, 2),
(58, 6, 'Red___Green', 1, 0.25, 2),
(59, 1, '57', 1, 1, 2),
(60, 3, '53', 1, 0, 2),
(61, 3, '55', 1, 0, 2),
(130, 1, '57', 1, 1, 3),
(131, 3, '52', 1, 0.5, 3),
(132, 3, '54', 1, 0.5, 3),
(188, 27, '136', 1, 1, 4),
(189, 25, '127', 1, 1, 4),
(190, 26, '132', 1, 1, 4),
(191, 30, '152', 1, 1, 4),
(192, 19, '98', 1, 1, 4),
(193, 23, '119', 1, 1, 4),
(194, 28, '160', 1, 1, 4),
(195, 17, '90', 1, 1, 4),
(196, 29, '157', 1, 1, 4),
(197, 20, '111', 1, 1, 4),
(220, 28, '158', 6, 0, 5),
(276, 26, '132', 1, 1, 7),
(277, 23, '119', 1, 1, 7),
(278, 18, '95', 1, 1, 7),
(279, 27, '136', 1, 1, 7),
(280, 22, '114', 1, 1, 7),
(281, 30, '152', 1, 1, 7),
(282, 24, '122', 1, 1, 7),
(283, 20, '111', 1, 1, 7),
(284, 29, '157', 1, 1, 7),
(285, 25, '127', 1, 1, 7),
(310, 31, 'Spring___Flower', 1, 0.25, 9),
(311, 31, 'Sky___Plane', 1, 0.25, 9),
(312, 31, 'Green___Red', 1, 0.25, 9),
(313, 31, 'Computer___Mouse', 1, 0.25, 9),
(320, 22, '115', 1, 0, 18),
(319, 23, '120', 1, 0, 18),
(334, 31, 'Spring___Mouse', 1, 0, 25),
(333, 30, '153', 1, 0, 25),
(332, 29, '155', 1, 0, 25),
(331, 28, '159', 1, 0, 25),
(339, 23, '119', 1, 1, 28),
(338, 24, '123', 1, 0, 28),
(346, 22, '116', 5, 0, 34),
(345, 23, '119', 5, 1, 34),
(350, 24, '122', 7, 1, 39),
(351, 23, '120', 7, 0, 39),
(356, 42, '192', 7, 1, 42),
(407, 25, '126', 5, 0, 43),
(406, 26, '131', 5, 0, 43),
(405, 27, '135', 5, 0, 43),
(404, 28, '159', 5, 0, 43),
(403, 22, '116', 5, 0, 43),
(402, 23, '119', 5, 1, 43),
(420, 45, '202', 1, 1, 54),
(419, 44, '200', 1, 1, 54),
(447, 23, '119', 1, 1, 56),
(446, 24, '123', 1, 0, 56),
(445, 42, '207', 1, 0, 56),
(444, 43, '211', 1, 0, 56),
(443, 45, '203', 1, 0, 56),
(442, 44, '201', 1, 0, 56),
(455, 44, '200', 1, 1, 57),
(456, 45, '203', 1, 0, 57),
(461, 44, '201', 7, 0, 59);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_category`
--

CREATE TABLE IF NOT EXISTS `savsoft_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- テーブルのデータのダンプ `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(4, '面接応対'),
(5, 'ビジネスマナー');

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_group`
--

CREATE TABLE IF NOT EXISTS `savsoft_group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- テーブルのデータのダンプ `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`) VALUES
(1, 'Free', 0, 365);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_level`
--

CREATE TABLE IF NOT EXISTS `savsoft_level` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- テーブルのデータのダンプ `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(1, 'やさしい'),
(2, 'むずかしい');

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_options`
--

CREATE TABLE IF NOT EXISTS `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- テーブルのデータのダンプ `savsoft_options`
--

INSERT INTO `savsoft_options` (`oid`, `qid`, `q_option`, `q_option_match`, `score`) VALUES
(46, 6, 'Good Morning', 'Good Night', 0.25),
(47, 6, 'Honda', 'BMW', 0.25),
(48, 6, 'Keyboard', 'CPU', 0.25),
(49, 6, 'Red', 'Green', 0.25),
(51, 7, 'Blue, Sky Blue', NULL, 1),
(52, 3, '4', NULL, 0.5),
(53, 3, '5', NULL, 0),
(54, 3, 'Four', NULL, 0.5),
(55, 3, 'Six', NULL, 0),
(56, 1, 'Patiala', NULL, 0),
(57, 1, 'New Delhi', NULL, 1),
(58, 1, 'Chandigarh', NULL, 0),
(59, 1, 'Mumbai', NULL, 0),
(76, 14, 'A', 'B', 0.25),
(77, 14, 'C', 'D', 0.25),
(78, 14, 'E', 'F', 0.25),
(79, 14, 'G', 'H', 0.25),
(81, 15, 'Washington, Washington D.C', NULL, 1),
(82, 13, '<p>five</p>', NULL, 0),
(83, 13, '<p>40</p>', NULL, 0.5),
(84, 13, '<p>fourty</p>', NULL, 0.5),
(85, 13, '<p>six</p>', NULL, 0),
(86, 12, '<p>five</p>', NULL, 0),
(87, 12, '<p>14</p>', NULL, 1),
(88, 12, '<p>three</p>', NULL, 0),
(89, 12, '<p>six</p>', NULL, 0),
(90, 17, 'Chọn View®Arrange Icons by ® Name ', NULL, 1),
(91, 17, 'Chọn View®Arrange Icons by ® Type', NULL, 0),
(92, 17, 'Chọn View®Arrange Icons by ® Size', NULL, 0),
(93, 17, 'Chọn View®Arrange Icons by ® Date', NULL, 0),
(94, 18, 'My Network Places', NULL, 0),
(95, 18, 'My Computer', NULL, 1),
(96, 18, 'Recycle Bin', NULL, 0),
(97, 18, 'Internet Explorer', NULL, 0),
(98, 19, 'Click trên đối tượng đầu, giữ phím Shift, click trên đối tượng cuối', NULL, 1),
(99, 19, 'Click trên đối tượng đầu, giữ phím Ctrl, click trên đối tượng cuối', NULL, 0),
(100, 19, '  Click trên đối tượng đầu, giữ phím Alt, click trên đối tượng cuối ', NULL, 0),
(101, 19, ' Chọn đối tượng đầu, giữ phím Alt, dùng các phím mũi tên để di chuyển đến đối tượng cuối', NULL, 0),
(110, 20, 'Click trên vùng trống của folder, chọn New®Shortcut', NULL, 0),
(111, 20, 'Click trên vùng trống của folder, chọn New®Folder.', NULL, 1),
(112, 20, 'Chọn menu File-> New->Shortcut', NULL, 0),
(113, 20, 'Chọn menu File® New®Text Document', NULL, 0),
(114, 22, 'Chọn View®Arrange Icons by ® Name ', NULL, 1),
(115, 22, 'Chọn View®Arrange Icons by ® Type', NULL, 0),
(116, 22, 'Chọn View®Arrange Icons by ® Size', NULL, 0),
(117, 22, 'Chọn View®Arrange Icons by ® Date', NULL, 0),
(118, 23, 'My Network Places', NULL, 0),
(119, 23, 'My Computer', NULL, 1),
(120, 23, 'Recycle Bin', NULL, 0),
(121, 23, 'Internet Explorer', NULL, 0),
(122, 24, 'Click trên đối tượng đầu, giữ phím Shift, click trên đối tượng cuối', NULL, 1),
(123, 24, 'Click trên đối tượng đầu, giữ phím Ctrl, click trên đối tượng cuối', NULL, 0),
(124, 24, '  Click trên đối tượng đầu, giữ phím Alt, click trên đối tượng cuối ', NULL, 0),
(125, 24, ' Chọn đối tượng đầu, giữ phím Alt, dùng các phím mũi tên để di chuyển đến đối tượng cuối', NULL, 0),
(126, 25, 'Click trên vùng trống của folder, chọn New®Shortcut', NULL, 0),
(127, 25, 'Click trên vùng trống của folder, chọn New®Folder.', NULL, 1),
(128, 25, 'Chọn menu File® New®Shortcut', NULL, 0),
(129, 25, 'Chọn menu File® New®Text Document', NULL, 0),
(130, 26, 'Chọn các đối tượng nguồn, giữ phím Shift, kéo sang folder chứa các đối tượng muốn chép đến.', NULL, 0),
(131, 26, 'Chọn các đối tượng nguồn, nhấn Ctrl+C, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+X', NULL, 0),
(132, 26, 'Chọn các đối tượng nguồn, nhấn Ctrl+C, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+V', NULL, 1),
(133, 26, 'Chọn các đối tượng nguồn, nhấn Ctrl+X, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+V', NULL, 0),
(134, 27, ' Chọn các đối tượng nguồn, nhấn Ctrl+C, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+X', NULL, 0),
(135, 27, 'Chọn các đối tượng nguồn, nhấn Ctrl+C, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+V', NULL, 0),
(136, 27, 'Chọn các đối tượng nguồn, nhấn Ctrl+X, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+V', NULL, 1),
(137, 27, 'Chọn các đối tượng nguồn, nhấn Ctrl+V, mở folder chứa các đối tượng muốn sao chép đến, nhấn Ctrl+X', NULL, 0),
(150, 30, 'Ctrl + C', NULL, 0),
(151, 30, 'Ctrl + V', NULL, 0),
(152, 30, 'Ctrl + A.', NULL, 1),
(153, 30, ' Ctrl + X', NULL, 0),
(154, 29, ' Keep the taskbar on top of other windows', NULL, 0),
(155, 29, 'Group similar taskbar buttons', NULL, 0),
(156, 29, 'Auto – hide the taskbar', NULL, 0),
(157, 29, 'Show the clock.', NULL, 1),
(158, 28, 'Cascade Windows', NULL, 0),
(159, 28, 'Tile Windows Vertically', NULL, 0),
(160, 28, 'Tile Windows Horizontally.', NULL, 1),
(161, 28, ' Show the Desktop', NULL, 0),
(162, 31, 'Computer', 'Mouse', 0.25),
(163, 31, 'Spring', 'Flower', 0.25),
(164, 31, 'Green', 'Red', 0.25),
(165, 31, 'Sky', 'Plane', 0.25),
(166, 32, 'five', NULL, 0),
(167, 32, 'four', NULL, 1),
(168, 32, 'three', NULL, 0),
(169, 32, 'six', NULL, 0),
(170, 33, 'five', NULL, 0),
(171, 33, 'four', NULL, 0.5),
(172, 33, 'four', NULL, 0.5),
(173, 33, 'six', NULL, 0),
(174, 34, 'A', 'B', 0.25),
(175, 34, 'C', 'D', 0.25),
(176, 34, 'E', 'F', 0.25),
(177, 34, 'G', 'H', 0.25),
(178, 35, 'Blue, Sky blue', NULL, 0.25),
(179, 37, 'five', NULL, 0),
(180, 37, 'four', NULL, 1),
(181, 37, 'three', NULL, 0),
(182, 37, 'six', NULL, 0),
(183, 38, 'five', NULL, 0),
(184, 38, 'four', NULL, 0.5),
(185, 38, 'four', NULL, 0.5),
(186, 38, 'six', NULL, 0),
(187, 39, 'A', 'B', 0.25),
(188, 39, 'C', 'D', 0.25),
(189, 39, 'E', 'F', 0.25),
(190, 39, 'G', 'H', 0.25),
(191, 40, 'Blue, Sky blue', NULL, 0.25),
(208, 42, 'sss', NULL, 0),
(207, 42, 'sdf', NULL, 0),
(206, 42, 'sdfdsf', NULL, 0),
(205, 42, 'fdsf', NULL, 1),
(212, 43, 'fvbn', NULL, 0),
(211, 43, 'yhn', NULL, 0),
(210, 43, 'iuy', NULL, 0),
(209, 43, 'bnm', NULL, 1),
(200, 44, 'fasdf', NULL, 1),
(201, 44, 'fsdfds', NULL, 0),
(202, 45, '答え1', NULL, 1),
(203, 45, '答え12', NULL, 0),
(204, 45, '答え13', NULL, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_payment`
--

CREATE TABLE IF NOT EXISTS `savsoft_payment` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_qbank`
--

CREATE TABLE IF NOT EXISTS `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT '0',
  `no_time_corrected` int(11) NOT NULL DEFAULT '0',
  `no_time_incorrected` int(11) NOT NULL DEFAULT '0',
  `no_time_unattempted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- テーブルのデータのダンプ `savsoft_qbank`
--

INSERT INTO `savsoft_qbank` (`qid`, `question_type`, `question`, `description`, `cid`, `lid`, `no_time_served`, `no_time_corrected`, `no_time_incorrected`, `no_time_unattempted`) VALUES
(1, 'Multiple Choice Single Answer', 'What is the capital of INDIA?', 'New Delhi', 3, 1, 3, 3, 0, 0),
(3, 'Multiple Choice Multiple Answer', 'What is 2+2=?', '4', 2, 1, 3, 2, 1, 0),
(6, 'Match the Column', 'Match the Following', '', 1, 1, 3, 2, 0, 1),
(7, 'Short Answer', 'What is the color of sky?', '', 1, 1, 3, 1, 1, 1),
(8, 'Long Answer', 'Write an essay on INDIA. (250 words )', '', 1, 1, 1, 0, 0, 0),
(12, 'Multiple Choice Single Answer', '<p>What is 12+2 = ?</p>', '<p>Here is description or explanation</p>', 1, 2, 0, 0, 0, 0),
(13, 'Multiple Choice Multiple Answer', '<p>What is 32+8 = ?&nbsp;</p>', '<p>Here is description or explanation</p>', 1, 2, 0, 0, 0, 0),
(14, 'Match the Column', 'Match the column', 'Here is description or explanation', 1, 2, 0, 0, 0, 0),
(15, 'Short Answer', '<p>What is the capital of USA</p>', '<p>Here is description or explanation</p>', 1, 2, 0, 0, 0, 0),
(16, 'Long Answer', 'Write about Globalization in 250 words', 'Here is description or explanation', 1, 2, 0, 0, 0, 0),
(17, 'Multiple Choice Single Answer', 'Để sắp xếp các đối tượng trong cửa sổ folder theo tên đối tượng, ta chọn:', 'Here is description or explanation', 4, 1, 1, 1, 0, 0),
(18, 'Multiple Choice Single Answer', 'Trong các folder được liệt kê dưới đây, folder nào chứa các folder ổ đĩa, Control Panel, Shared Documents.', 'Here is description or explanation', 4, 1, 1, 1, 0, 0),
(19, 'Multiple Choice Single Answer', 'Để chọn các đối tượng liên tục nhau trong cửa sổ folder, ta phải dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 1, 1, 0, 0),
(20, 'Multiple Choice Single Answer', 'Để tạo folder mới, ta dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 2, 2, 0, 0),
(22, 'Multiple Choice Single Answer', 'Để sắp xếp các đối tượng trong cửa sổ folder theo tên đối tượng, ta chọn:', 'Here is description or explanation', 4, 1, 6, 1, 3, 2),
(23, 'Multiple Choice Single Answer', 'Trong các folder được liệt kê dưới đây, folder nào chứa các folder ổ đĩa, Control Panel, Shared Documents.', 'Here is description or explanation', 4, 1, 14, 6, 2, 6),
(24, 'Multiple Choice Single Answer', 'Để chọn các đối tượng liên tục nhau trong cửa sổ folder, ta phải dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 12, 2, 2, 8),
(25, 'Multiple Choice Single Answer', 'Để tạo folder mới, ta dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 6, 2, 1, 3),
(26, 'Multiple Choice Single Answer', '   Các thao tác nào để sao chép đối tượng:', '', 4, 1, 7, 2, 1, 4),
(27, 'Multiple Choice Single Answer', ' Các thao tác nào để di chuyển đối tượng:', '', 4, 1, 7, 2, 1, 4),
(28, 'Multiple Choice Single Answer', '  Muốn sắp xếp các cửa sổ của các chương trình đang chạy theo chiều ngang, ta click phải trên vùng trống của Taskbar, sau đó chọn:', '', 4, 1, 7, 1, 2, 4),
(29, 'Multiple Choice Single Answer', 'Để tắt đồng hồ trong khay hệ thống, ta click phải trên vùng trống của Taskbar, chọn Properties, chọn trang Taskbar, sau đó bỏ chọn hộp kiểm nào:', '', 4, 1, 9, 2, 1, 6),
(30, 'Multiple Choice Single Answer', ' Muốn chọn tất cả các đối tượng trong cửa sổ folder ta ấn tổ hợp phím tắt:', '', 4, 1, 10, 2, 1, 7),
(31, 'Ghép cột với nhau', 'Ghép các thông tin bên dưới sao cho hợp lệ:', '', 4, 1, 8, 0, 1, 7),
(32, 'Multiple Choice Single Answer', 'What is 2+2 = ?', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(33, 'Multiple Choice Multiple Answer', 'What is 2+2 = ?(multiple choice)', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(34, 'Ghép cột với nhau', 'Match the column', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(35, 'Short Answer', 'What is the color of sky?', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(36, 'Long Answer', 'Write about Globalization in 250 words', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(37, 'Multiple Choice Single Answer', 'What is 2+2 = ?', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(38, 'Multiple Choice Multiple Answer', 'What is 2+2 = ?(multiple choice)', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(39, 'Ghép cột với nhau', 'Match the column', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(40, 'Short Answer', 'What is the color of sky?', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(41, 'Long Answer', 'Write about Globalization in 250 words', 'Here is description or explanation', 0, 0, 0, 0, 0, 0),
(42, 'Multiple Choice Single Answer', '質問内容', '説明', 4, 1, 3, 0, 1, 2),
(43, 'Multiple Choice Single Answer', 'これは複数の選択肢回答', '', 4, 1, 3, 0, 1, 2),
(44, 'Multiple Choice Single Answer', 'vi du ve cau hoi tieng viet', '', 5, 1, 2, 1, 1, 0),
(45, 'Multiple Choice Single Answer', 'これは日本語の質問', '説明', 5, 1, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_qcl`
--

CREATE TABLE IF NOT EXISTS `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL AUTO_INCREMENT,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  PRIMARY KEY (`qcl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

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

CREATE TABLE IF NOT EXISTS `savsoft_quiz` (
  `quid` int(11) NOT NULL AUTO_INCREMENT,
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
  `with_login` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`quid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- テーブルのデータのダンプ `savsoft_quiz`
--

INSERT INTO `savsoft_quiz` (`quid`, `quiz_name`, `description`, `start_date`, `end_date`, `gids`, `qids`, `noq`, `correct_score`, `incorrect_score`, `ip_address`, `duration`, `maximum_attempts`, `pass_percentage`, `view_answer`, `camera_req`, `question_selection`, `gen_certificate`, `certificate_text`, `with_login`) VALUES
(10, 'hgvh', '', 1516104278, 1547640278, '1', '44,45,43,42,24,23', 6, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(5, 'Game Quiz 1', '', 1516100676, 1547636676, '7,6,5,4,3,1', '23,22,28,27,26,25,24,29,30,31', 10, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1),
(8, '面接マナーテスト', '面接する時に流行りのマナー', 1516102006, 1547638006, '1', '28,29,30,31', 4, 10, 0, '', 5, 2, 90, 1, 0, 0, 0, NULL, 1),
(6, 'Game Quiz 2', '', 1516100980, 1547636980, '1', '23,22,26,27,30,29,31', 7, 1, 0, '', 10, 10, 80, 1, 0, 0, 0, NULL, 1),
(7, 'Game Quiz 3', '', 1516101133, 1547637133, '1', '30,31', 2, 1, 0, '', 10, 10, 50, 1, 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_result`
--

CREATE TABLE IF NOT EXISTS `savsoft_result` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
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
  `manual_valuation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- テーブルのデータのダンプ `savsoft_result`
--

INSERT INTO `savsoft_result` (`rid`, `quid`, `uid`, `result_status`, `start_time`, `end_time`, `categories`, `category_range`, `r_qids`, `individual_time`, `total_time`, `score_obtained`, `percentage_obtained`, `attempted_ip`, `score_individual`, `photo`, `manual_valuation`) VALUES
(1, 1, 1, 'Pass', 1461499745, 1461499785, 'India,Math,General knowledge', '4,4,4', '1,3,6,7', '0,20,12,0', 32, 4, 100, '::1', '1,1,1,1', '1461499745.jpg', 0),
(2, 2, 1, 'Pending', 1461499790, 1461499836, 'General knowledge,India,Math', '3,1,1', '7,8,6,1,3', '0,23,10,3,8', 44, 2, 40, '::1', '2,3,1,1,2', '', 1),
(3, 1, 1, 'Pass', 1461500254, 1461500804, 'India,Math,General knowledge', '4,4,4', '1,3,6,7', '103,213,138,38', 492, 2, 50, '::1', '1,1,0,0', '1461500254.jpg', 0),
(4, 4, 1, 'Pass', 1488033706, 1488033801, 'Tin học văn phòng - Word', '10', '27,25,26,30,19,23,28,17,29,20', '2,29,7,5,9,6,7,5,4,17', 91, 10, 100, '::1', '1,1,1,1,1,1,1,1,1,1', '', 0),
(5, 4, 6, 'Open', 1488036110, 0, 'Tin học văn phòng - Word', '10', '28,20,17,18,23,22,24,26,29,19', '341,134,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '2,1,0,0,0,0,0,0,0,0', '', 0),
(6, 4, 6, 'Open', 1488036655, 0, 'Tin học văn phòng - Word', '10', '23,28,19,25,20,24,30,26,22,18', '29,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(7, 4, 1, 'Vượt qua', 1488290673, 1488290734, 'Tin học văn phòng - Word', '10', '26,23,18,27,22,30,24,20,29,25', '0,13,6,6,2,5,6,4,5,12', 59, 10, 100, '::1', '1,1,1,1,1,1,1,1,1,1', '', 0),
(8, 4, 1, 'Open', 1488295620, 0, 'Tin học văn phòng - Word', '10', '26,22,28,25,24,30,27,23,18,29', '119,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(9, 1, 1, 'Open', 1488380766, 0, 'Tin học văn phòng - Word', '1', '31,1,3,6,7', '1,30,3,1,7', 0, 0, 0, '::1', '1,0,0,0,0', '1488380766.jpg', 0),
(10, 1, 1, 'Open', 1488380826, 0, 'Tin học văn phòng - Word', '1', '31,1,3,6,7', '0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0', '1488380826.jpg', 0),
(11, 4, 1, 'Open', 1488381551, 0, 'Tin học văn phòng - Word', '10', '26,31,23,29,25,30,19,27,17,22', '0,7,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(12, 4, 1, 'Open', 1488381570, 0, 'Tin học văn phòng - Word', '10', '28,26,31,29,25,22,19,20,27,24', '0,2,4,2,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(13, 4, 1, 'Open', 1488381587, 0, 'Tin học văn phòng - Word', '10', '28,27,20,31,26,17,19,22,24,25', '0,2,2,1,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(14, 4, 1, 'Open', 1488381702, 0, 'Tin học văn phòng - Word', '10', '30,25,22,28,23,17,26,29,31,19', '539,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0),
(15, 4, 1, 'Open', 1516100545, 0, 'Tin học văn phòng - Word', '10', '25,29,19,31,30,23,22,18,20,26', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(16, 4, 1, 'Open', 1516100587, 0, 'Tin học văn phòng - Word', '10', '20,27,31,24,29,30,17,19,28,22', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(17, 2, 1, 'Open', 1516100641, 0, '', '', '', '', 0, 0, 0, '36.2.188.163', '', '', 0),
(18, 5, 1, 'Thất bại', 1516100729, 1516100744, 'Tin học văn phòng - Word', '10', '23,22,28,27,26,25,24,29,30,31', '0,9,0,0,0,0,0,0,0,0', 9, 0, 0, '36.2.188.163', '2,2,0,0,0,0,0,0,0,0', '', 0),
(19, 5, 1, 'Open', 1516100749, 0, 'Tin học văn phòng - Word', '10', '23,22,28,27,26,25,24,29,30,31', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(20, 2, 1, 'Open', 1516100965, 0, '', '', '', '', 0, 0, 0, '36.2.188.163', '', '', 0),
(21, 2, 1, 'Open', 1516100966, 0, '', '', '', '', 0, 0, 0, '36.2.188.163', '', '', 0),
(22, 2, 1, 'Open', 1516100971, 0, '', '', '', '', 0, 0, 0, '36.2.188.163', '', '', 0),
(23, 7, 1, 'Open', 1516101352, 0, '面接応対', '2', '30,31', '0,0', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(24, 9, 1, 'Open', 1516102403, 0, '面接応対', '1', '31', '0', 0, 0, 0, '36.2.188.163', '0', '', 0),
(25, 8, 1, 'Thất bại', 1516102422, 1516102439, '面接応対', '4', '28,29,30,31', '0,5,2,0', 7, 0, 0, '36.2.188.163', '2,2,2,2', '', 0),
(26, 9, 1, 'Open', 1516104145, 0, '面接応対', '1', '31', '0', 0, 0, 0, '36.2.188.163', '0', '', 0),
(27, 5, 1, 'Open', 1516104269, 0, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(28, 10, 1, 'Vượt qua', 1516104317, 1516104333, '面接応対', '2', '24,23', '0,12', 12, 1, 50, '36.2.188.163', '2,1', '', 0),
(29, 7, 1, 'Open', 1516104438, 0, '面接応対', '2', '30,31', '0,0', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(30, 8, 1, 'Open', 1516104444, 0, '面接応対', '4', '28,29,30,31', '0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(31, 10, 1, 'Open', 1516104449, 0, '面接応対', '2', '24,23', '0,0', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(32, 5, 1, 'Open', 1516104456, 0, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(33, 6, 1, 'Open', 1516104503, 0, '面接応対', '7', '23,22,26,27,30,29,31', '0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0', '', 0),
(34, 5, 5, 'Fail', 1516104602, 1516104977, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,6,3,0,0,0,0,0,6,0', 15, 1, 10, '36.2.188.163', '1,2,0,0,0,0,0,0,0,0', '', 0),
(35, 10, 5, '失敗', 1516104657, 1516106474, '面接応対', '2', '24,23', '0,0', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(36, 7, 5, '失敗', 1516104662, 1516106478, '面接応対', '2', '30,31', '0,0', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(37, 6, 5, '失敗', 1516104670, 1516106489, '面接応対', '7', '23,22,26,27,30,29,31', '0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0', '', 0),
(38, 5, 5, 'Fail', 1516104677, 1516106904, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(39, 10, 7, 'Pass', 1516105223, 1516105303, '面接応対', '2', '24,23', '0,4', 4, 1, 50, '36.2.188.163', '1,2', '', 0),
(40, 10, 7, '失敗', 1516105805, 1516105818, '面接応対', '2', '24,23', '0,4', 4, 0, 0, '36.2.188.163', '0,0', '', 0),
(41, 8, 7, '失敗', 1516105832, 1516106176, '面接応対', '4', '28,29,30,31', '148,0,0,0', 148, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(42, 10, 7, 'Open', 1516106255, 0, '面接応対', '3', '42,24,23', '10,11,0', 0, 0, 0, '36.2.188.163', '1,0,0', '', 0),
(43, 5, 5, 'Fail', 1516106910, 1516106935, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,5,2,3,3,3,0,0,1,0', 17, 1, 10, '36.2.188.163', '1,2,2,2,2,2,0,0,0,0', '', 0),
(44, 10, 5, 'Fail', 1516106939, 1516106958, '面接応対', '4', '43,42,24,23', '0,2,9,4', 15, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(45, 7, 5, 'Open', 1516106963, 0, '面接応対', '2', '30,31', '0,14', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(46, 10, 5, 'Open', 1516107060, 0, '面接応対', '4', '43,42,24,23', '0,4,1,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(47, 8, 5, 'Open', 1516107077, 0, '面接応対', '4', '28,29,30,31', '0,2,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(48, 5, 5, 'Open', 1516107090, 0, '面接応対', '10', '23,22,28,27,26,25,24,29,30,31', '0,2,0,0,1,0,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0,0,0,0', '', 0),
(49, 6, 5, 'Open', 1516107111, 0, '面接応対', '7', '23,22,26,27,30,29,31', '0,2,1,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0,0', '', 0),
(50, 10, 1, 'Open', 1516107137, 0, '面接応対', '4', '43,42,24,23', '0,2,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(51, 7, 1, 'Open', 1516107147, 0, '面接応対', '2', '30,31', '0,1', 0, 0, 0, '36.2.188.163', '0,0', '', 0),
(52, 10, 1, 'Open', 1516107175, 0, '面接応対', '4', '43,42,24,23', '0,1,5,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(53, 10, 1, 'Open', 1516107250, 0, '面接応対', '4', '43,42,24,23', '0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(54, 10, 1, 'Thất bại', 1516107276, 1516107298, 'ビジネスマナー,面接応対', '2,4', '44,45,43,42,24,23', '0,9,1,0,3,0', 13, 2, 33.3333, '36.2.188.163', '1,1,0,0,0,0', '', 0),
(55, 10, 1, 'Open', 1516107305, 0, 'ビジネスマナー,面接応対', '2,4', '44,45,43,42,24,23', '0,2,0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0,0,0', '', 0),
(56, 10, 1, 'Thất bại', 1516107361, 1516107380, 'ビジネスマナー,面接応対', '2,4', '44,45,43,42,24,23', '0,5,2,2,2,0', 11, 1, 16.6667, '36.2.188.163', '2,2,2,2,2,1', '', 0),
(57, 10, 1, 'Open', 1516107384, 0, 'ビジネスマナー,面接応対', '2,4', '44,45,43,42,24,23', '0,4,0,1,0,0', 0, 0, 0, '36.2.188.163', '1,2,0,0,0,0', '', 0),
(58, 8, 7, 'Open', 1516107506, 0, '面接応対', '4', '28,29,30,31', '0,0,0,0', 0, 0, 0, '36.2.188.163', '0,0,0,0', '', 0),
(59, 10, 7, 'Open', 1516107514, 0, 'ビジネスマナー,面接応対', '2,4', '44,45,43,42,24,23', '0,3,0,1,0,0', 0, 0, 0, '36.2.188.163', '2,0,0,0,0,0', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `savsoft_users`
--

CREATE TABLE IF NOT EXISTS `savsoft_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact_no` varchar(1000) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '1',
  `su` int(11) NOT NULL DEFAULT '0',
  `subscription_expired` int(11) NOT NULL DEFAULT '0',
  `verify_code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- テーブルのデータのダンプ `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `gid`, `su`, `subscription_expired`, `verify_code`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', 'admin@example.com', 'Admin', 'Admin', '1234567890', 1, 1, 1776290400, 0),
(5, '827ccb0eea8a706c4c34a16891f84e7b', 'user@example.com', 'iwatani', 'gakuen', '1234567890', 1, 0, 1776882600, 0),
(6, '21232f297a57a5a743894a0e4a801fc3', 'tranvantamdhsp@gmail.com', 'Tam', 'Tran Van', '', 1, 1, 0, 0),
(7, '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com', 'admin', 'admin', '1234567890', 1, 1, 1776882600, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
