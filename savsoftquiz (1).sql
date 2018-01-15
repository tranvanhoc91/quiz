-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2017 at 01:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `savsoftquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_answers`
--

CREATE TABLE `savsoft_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_answers`
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
(313, 31, 'Computer___Mouse', 1, 0.25, 9);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_category`
--

CREATE TABLE `savsoft_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(4, 'Tin học văn phòng - Word');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_group`
--

CREATE TABLE `savsoft_group` (
  `gid` int(11) NOT NULL,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`) VALUES
(1, '73', 0, 90),
(3, '72', 100, 90),
(4, '71', 1900, 120),
(5, '81', 0, 90),
(6, '82', 0, 90),
(7, '83', 0, 90);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_level`
--

CREATE TABLE `savsoft_level` (
  `lid` int(11) NOT NULL,
  `level_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(1, 'Easy'),
(2, 'Difficult'),
(4, 'Very Difficult');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_options`
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
(165, 31, 'Sky', 'Plane', 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_payment`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qbank`
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
(22, 'Multiple Choice Single Answer', 'Để sắp xếp các đối tượng trong cửa sổ folder theo tên đối tượng, ta chọn:', 'Here is description or explanation', 4, 1, 1, 1, 0, 0),
(23, 'Multiple Choice Single Answer', 'Trong các folder được liệt kê dưới đây, folder nào chứa các folder ổ đĩa, Control Panel, Shared Documents.', 'Here is description or explanation', 4, 1, 2, 2, 0, 0),
(24, 'Multiple Choice Single Answer', 'Để chọn các đối tượng liên tục nhau trong cửa sổ folder, ta phải dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 1, 1, 0, 0),
(25, 'Multiple Choice Single Answer', 'Để tạo folder mới, ta dùng thao tác nào trong các thao tác sau:', 'Here is description or explanation', 4, 1, 2, 2, 0, 0),
(26, 'Multiple Choice Single Answer', '   Các thao tác nào để sao chép đối tượng:', '', 4, 1, 2, 2, 0, 0),
(27, 'Multiple Choice Single Answer', ' Các thao tác nào để di chuyển đối tượng:', '', 4, 1, 2, 2, 0, 0),
(28, 'Multiple Choice Single Answer', '  Muốn sắp xếp các cửa sổ của các chương trình đang chạy theo chiều ngang, ta click phải trên vùng trống của Taskbar, sau đó chọn:', '', 4, 1, 1, 1, 0, 0),
(29, 'Multiple Choice Single Answer', 'Để tắt đồng hồ trong khay hệ thống, ta click phải trên vùng trống của Taskbar, chọn Properties, chọn trang Taskbar, sau đó bỏ chọn hộp kiểm nào:', '', 4, 1, 2, 2, 0, 0),
(30, 'Multiple Choice Single Answer', ' Muốn chọn tất cả các đối tượng trong cửa sổ folder ta ấn tổ hợp phím tắt:', '', 4, 1, 2, 2, 0, 0),
(31, 'Ghép cột với nhau', 'Ghép các thông tin bên dưới sao cho hợp lệ:', '', 4, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qcl`
--

CREATE TABLE `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qcl`
--

INSERT INTO `savsoft_qcl` (`qcl_id`, `quid`, `cid`, `lid`, `noq`) VALUES
(68, 2, 1, 1, 3),
(69, 2, 3, 1, 1),
(70, 2, 2, 1, 1),
(73, 4, 4, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_quiz`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_quiz`
--

INSERT INTO `savsoft_quiz` (`quid`, `quiz_name`, `description`, `start_date`, `end_date`, `gids`, `qids`, `noq`, `correct_score`, `incorrect_score`, `ip_address`, `duration`, `maximum_attempts`, `pass_percentage`, `view_answer`, `camera_req`, `question_selection`, `gen_certificate`, `certificate_text`, `with_login`) VALUES
(1, 'Sample Quiz', 'Sample Quiz Sample Quiz', 1460344840, 1491880840, '3,1', '31,1,3,6,7', 5, 1, 0, '', 10, 10, 50, 1, 1, 0, 0, NULL, 1),
(2, 'Sample Quiz 2', '<p>Sample Quiz 2</p>', 1457687593, 1491898393, '4,3,1', '', 5, 1, 0, '', 100, 10, 50, 1, 0, 1, 1, 'ID: #{result_id}<br>\r\n \r\n<br><br>\r\n<center>\r\n<font style=\'font-size:32px;\'>Certificate</font><br><br><br>\r\n<h4>This is certified that {first_name}  {last_name} has attempted the quiz \'{quiz_name}\' and obtained {percentage_obtained}% marks.<br>\r\nHis/her result status is {status}<br>\r\n</h4>\r\n\r\n</center>\r\n<br><br><br><br><br><br> \r\n{qr_code}<br>\r\nDate: {generated_date}', 1),
(4, 'Kiểm tra 15phut', '', 1488033526, 1519569526, '7,6,5,4,3,1', '', 10, 1, 0, '', 10, 10, 50, 1, 0, 1, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_result`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_result`
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
(14, 4, 1, 'Open', 1488381702, 0, 'Tin học văn phòng - Word', '10', '30,25,22,28,23,17,26,29,31,19', '539,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `gid`, `su`, `subscription_expired`, `verify_code`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', 'admin@example.com', 'Admin', 'Admin', '1234567890', 1, 1, 1776290400, 0),
(5, '202cb962ac59075b964b07152d234b70', 'user@example.com', 'User', 'User', '1234567890', 1, 0, 1776882600, 0),
(6, '21232f297a57a5a743894a0e4a801fc3', 'tranvantamdhsp@gmail.com', 'Tam', 'Tran Van', '', 7, 0, 0, 0);

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
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  MODIFY `qcl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  MODIFY `quid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
