-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.3.15-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- bootsystemdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `bootsystemdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bootsystemdb`;

-- 테이블 bootsystemdb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `bcode` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) DEFAULT NULL,
  `scode` int(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `bwrite` varchar(50) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  PRIMARY KEY (`bcode`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.board:~143 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`bcode`, `userID`, `scode`, `title`, `bwrite`, `hits`, `bdate`) VALUES
	(1, 'test', 2, 'tt', 'ww', 51, '2019-06-13 21:10:58'),
	(4, 'id', 2, 'tt', 'ww', 27, '2019-06-13 22:36:51'),
	(5, 'test', 0, 'aa', 'bb', 4, '2019-06-14 04:17:08'),
	(6, 'test', 0, 'as', 'asd', 0, '2019-06-14 07:31:05'),
	(7, 'test', 0, 'cc', 'ss', 0, '2019-06-14 07:31:08'),
	(8, 'test', 0, 'xx', 'cc', 0, '2019-06-14 07:31:11'),
	(9, 'test', 0, 'zz', 'cc', 1, '2019-06-14 07:31:18'),
	(10, 'test', 0, 'bb', 'dd', 0, '2019-06-14 07:31:22'),
	(11, 'test', 0, 'cc', 'vv', 0, '2019-06-14 07:31:30'),
	(12, 'test', 0, 'bb', 'vv', 0, '2019-06-14 07:31:34'),
	(13, 'test', 0, 'aa', 'zz', 0, '2019-06-14 07:31:38'),
	(14, 'test', 0, 'hh', 'dd', 0, '2019-06-14 07:31:41'),
	(15, 'test', 0, 'hh', '5rr', 0, '2019-06-14 07:31:45'),
	(16, 'test', 0, 'qwe', 'qwe', 1, '2019-06-14 07:31:48'),
	(17, 'test', 0, 'qwt', 'qwq', 1, '2019-06-14 07:31:51'),
	(18, 'test', 0, '12', 'wqw', 0, '2019-06-14 07:31:55'),
	(19, 'test', 0, 'asas', 'asda', 0, '2019-06-14 07:31:59'),
	(20, 'test', 0, 'gdsg', 'sdgsdg', 0, '2019-06-14 07:32:02'),
	(21, 'test', 0, 'ssd', 'sdds', 0, '2019-06-14 07:32:06'),
	(22, 'test', 0, 'aasasd', 'aasf', 0, '2019-06-14 07:32:09'),
	(23, 'test', 0, 'sdgs', 'sas', 0, '2019-06-14 07:32:13'),
	(24, 'test', 0, 'aas', 'asds', 0, '2019-06-14 07:32:18'),
	(25, 'test', 0, 'as', 'dd', 0, '2019-06-14 07:32:21'),
	(26, 'test', 0, 'aas', 'ss', 0, '2019-06-14 07:32:24'),
	(27, 'test', 0, 'ddd', 'ss', 0, '2019-06-14 07:32:27'),
	(28, 'test', 0, 'aas', 'sd', 0, '2019-06-14 07:32:39'),
	(29, 'test', 0, 'ff', 'sas', 1, '2019-06-14 07:32:43'),
	(30, 'test', 0, 'ffs', 'aaa', 0, '2019-06-14 07:32:57'),
	(31, 'aa', 0, 'as', 'asd', 0, '2019-06-14 09:09:45'),
	(32, 'aa', 0, 'asa', 'asaa', 0, '2019-06-14 09:09:49'),
	(33, 'aa', 0, 'asd', 'asas', 0, '2019-06-14 09:09:52'),
	(34, 'aa', 0, 'asda', 'asd', 0, '2019-06-14 09:09:55'),
	(35, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:10:01'),
	(36, 'aa', 0, 'aas', 'asdas', 0, '2019-06-14 09:10:04'),
	(37, 'aa', 0, 'aas', 'saas', 0, '2019-06-14 09:10:07'),
	(38, 'aa', 0, 'dsdsd', 'sdsd', 0, '2019-06-14 09:10:10'),
	(39, 'aa', 0, 'dssd', 'sdsd', 0, '2019-06-14 09:10:13'),
	(40, 'aa', 0, 'sds', 'dss', 0, '2019-06-14 09:10:15'),
	(41, 'aa', 0, 'saas', 'asas', 0, '2019-06-14 09:10:18'),
	(42, 'aa', 0, 'qeqw', 'qwq', 0, '2019-06-14 09:10:22'),
	(43, 'aa', 0, 'qwwq', 'qw', 0, '2019-06-14 09:10:25'),
	(44, 'aa', 0, 'qw', 'wqe', 0, '2019-06-14 09:10:27'),
	(45, 'aa', 0, 'qwe', 'ew', 0, '2019-06-14 09:10:30'),
	(46, 'aa', 0, 'qwe', 'ewq', 0, '2019-06-14 09:10:33'),
	(47, 'aa', 0, 'qweqwe', 'ew', 0, '2019-06-14 09:10:36'),
	(48, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:10:38'),
	(49, 'aa', 0, 'weqe', 'qwe', 0, '2019-06-14 09:10:41'),
	(50, 'aa', 0, 'qweq', 'wewe', 0, '2019-06-14 09:10:43'),
	(51, 'aa', 0, 'wqee', 'qwe', 0, '2019-06-14 09:10:46'),
	(52, 'aa', 0, 'qwe', 'wqe', 0, '2019-06-14 09:10:49'),
	(53, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:10:57'),
	(54, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:10:59'),
	(55, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:11:02'),
	(56, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:11:05'),
	(57, 'aa', 0, 'qwe', 'ewe', 0, '2019-06-14 09:11:07'),
	(58, 'aa', 0, 'qwe', 'weqe', 0, '2019-06-14 09:11:10'),
	(59, 'aa', 0, 'a', 'a', 0, '2019-06-14 09:11:15'),
	(60, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:11:18'),
	(61, 'aa', 0, 'aw', 'aw', 0, '2019-06-14 09:11:21'),
	(62, 'aa', 0, 'ad', 'sad', 0, '2019-06-14 09:11:24'),
	(63, 'aa', 0, 'asd', 'dsd', 0, '2019-06-14 09:11:26'),
	(64, 'aa', 0, 'asd', 'ds', 0, '2019-06-14 09:11:29'),
	(65, 'aa', 0, 'asds', 'ddas', 0, '2019-06-14 09:11:32'),
	(66, 'aa', 0, 'asdas', 'das', 0, '2019-06-14 09:11:34'),
	(67, 'aa', 0, 'asd', 'sad', 0, '2019-06-14 09:11:36'),
	(68, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:39'),
	(69, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:41'),
	(70, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:44'),
	(71, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:47'),
	(72, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:49'),
	(73, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:52'),
	(74, 'aa', 0, 'asd', 'sad', 0, '2019-06-14 09:11:55'),
	(75, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:11:57'),
	(76, 'aa', 0, 'a', 'asasa', 0, '2019-06-14 09:12:00'),
	(77, 'aa', 0, 'q', 'qq', 0, '2019-06-14 09:12:02'),
	(78, 'aa', 0, 'w', 'ww', 0, '2019-06-14 09:12:04'),
	(79, 'aa', 0, 'ee', 'ee', 0, '2019-06-14 09:12:07'),
	(80, 'aa', 0, 'rr', 'rr', 0, '2019-06-14 09:12:09'),
	(81, 'aa', 0, 'qq', 'q', 0, '2019-06-14 09:12:12'),
	(82, 'aa', 0, 'ww', 'ww', 0, '2019-06-14 09:12:15'),
	(83, 'aa', 0, 'qw', 'weq', 0, '2019-06-14 09:12:20'),
	(84, 'aa', 0, 'qw', 'qwe', 0, '2019-06-14 09:12:23'),
	(85, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:26'),
	(86, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:29'),
	(87, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:31'),
	(88, 'aa', 0, 'aza', 'as', 0, '2019-06-14 09:12:34'),
	(89, 'aa', 0, 'wqe', 'we', 0, '2019-06-14 09:12:37'),
	(90, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:39'),
	(91, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:42'),
	(92, 'aa', 0, 'qwe', 'qwe', 0, '2019-06-14 09:12:45'),
	(93, 'aa', 0, 'xcv', 'xcv', 0, '2019-06-14 09:12:48'),
	(94, 'aa', 0, 'cxv', 'cv', 0, '2019-06-14 09:12:51'),
	(95, 'aa', 0, 'zx', 'xc', 0, '2019-06-14 09:12:53'),
	(96, 'aa', 0, 'cv', 'cv', 0, '2019-06-14 09:12:56'),
	(97, 'aa', 0, 'z', 'zx', 0, '2019-06-14 09:13:05'),
	(98, 'aa', 0, 'x', 'cv', 0, '2019-06-14 09:13:08'),
	(99, 'aa', 0, 'xcv', 'vc', 0, '2019-06-14 09:13:11'),
	(100, 'aa', 0, 'zxcv', 'v', 0, '2019-06-14 09:13:14'),
	(101, 'aa', 0, 'xcv', 'xcv', 0, '2019-06-14 09:13:17'),
	(102, 'aa', 0, 'cvxc', 'vc', 0, '2019-06-14 09:13:19'),
	(103, 'aa', 0, 'xcv', 'vc', 0, '2019-06-14 09:13:22'),
	(104, 'aa', 0, 'zxcv', 'vc', 0, '2019-06-14 09:13:25'),
	(105, 'aa', 0, 'xcv', 'vc', 0, '2019-06-14 09:13:28'),
	(106, 'aa', 0, 'xcv', 'cv', 0, '2019-06-14 09:13:30'),
	(107, 'aa', 0, 'xcv', 'cv', 0, '2019-06-14 09:13:33'),
	(108, 'aa', 0, 'xcv', 'cv', 0, '2019-06-14 09:13:36'),
	(109, 'aa', 0, 'asd', 'sd', 0, '2019-06-14 09:14:20'),
	(110, 'aa', 0, 'sd', 'dsd', 0, '2019-06-14 09:14:22'),
	(111, 'aa', 0, 'asd', 'ds', 0, '2019-06-14 09:14:25'),
	(112, 'aa', 0, 'asd', 'sd', 0, '2019-06-14 09:14:27'),
	(113, 'aa', 0, 'asd', 'sad', 0, '2019-06-14 09:14:41'),
	(114, 'aa', 0, 'asd', 'sd', 0, '2019-06-14 09:14:44'),
	(115, 'aa', 0, 'asd', 'sad', 0, '2019-06-14 09:14:51'),
	(116, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:14:54'),
	(117, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:14:56'),
	(118, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:00'),
	(119, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:03'),
	(120, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:05'),
	(121, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:08'),
	(122, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:10'),
	(123, 'aa', 0, 'asd', 'asd', 0, '2019-06-14 09:15:13'),
	(124, 'aa', 0, 'xxc', 'xc', 0, '2019-06-14 09:15:15'),
	(125, 'aa', 0, 'xcx', 'cxc', 0, '2019-06-14 09:15:18'),
	(126, 'aa', 0, 'xcx', 'cxzc', 0, '2019-06-14 09:15:21'),
	(127, 'aa', 0, 'zxc', 'zxc', 1, '2019-06-14 09:15:23'),
	(128, 'aa', 0, 'zxczx', 'cx', 0, '2019-06-14 09:15:26'),
	(129, 'aa', 0, 'zxc', 'zxc', 0, '2019-06-14 09:15:28'),
	(130, 'aa', 0, 'zxc', 'xzc', 0, '2019-06-14 09:15:32'),
	(131, 'aa', 0, 'zxc', 'zxc', 2, '2019-06-14 09:15:35'),
	(132, 'aa', 0, 'zxc', 'zxc', 0, '2019-06-14 09:15:38'),
	(133, 'aa', 0, 'cxvx', 'cv', 2, '2019-06-14 09:15:41'),
	(134, 'aa', 0, 'xcv', 'xcv', 0, '2019-06-14 09:15:43'),
	(135, 'aa', 0, 'xcv', 'xcv', 0, '2019-06-14 09:15:46'),
	(136, 'aa', 0, 'xcv', 'xcv', 0, '2019-06-14 09:15:49'),
	(137, 'aa', 0, 'xcv', 'xcv', 1, '2019-06-14 09:15:52'),
	(138, 'aa', 0, 'azx', 'xc', 0, '2019-06-14 09:16:06'),
	(139, 'aa', 0, 'zx', 'cx', 0, '2019-06-14 09:16:09'),
	(140, 'aa', 0, 'xcx', 'zx', 1, '2019-06-14 09:16:17'),
	(141, 'aa', 0, 'xczx', 'zxc', 2, '2019-06-14 09:16:20'),
	(142, 'aa', 0, 'xc', 'zx', 0, '2019-06-14 09:16:23'),
	(143, 'aa', 0, 'xc', 'zx', 0, '2019-06-14 09:16:25'),
	(144, 'aa', 0, 'xc', 'zx', 2, '2019-06-14 09:16:28'),
	(145, 'aa', 0, 'xc', 'zx', 2, '2019-06-14 09:16:30');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 bootsystemdb.cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `cart` (
  `cartcode` int(11) NOT NULL AUTO_INCREMENT,
  `pcode` int(11) NOT NULL,
  `userID` varchar(50) NOT NULL,
  PRIMARY KEY (`cartcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.cart:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 bootsystemdb.goods_buy 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods_buy` (
  `buycode` int(11) NOT NULL AUTO_INCREMENT,
  `pcode` int(11) NOT NULL,
  `userID` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`buycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.goods_buy:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_buy` ENABLE KEYS */;

-- 테이블 bootsystemdb.product_pc 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_pc` (
  `code` int(8) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `imageSrc` varchar(50) DEFAULT NULL,
  `cpu` varchar(50) DEFAULT NULL,
  `vga` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `ssd` varchar(50) DEFAULT NULL,
  `motherboard` varchar(50) DEFAULT NULL,
  `power` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.product_pc:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `product_pc` DISABLE KEYS */;
INSERT INTO `product_pc` (`code`, `name`, `info`, `price`, `imageSrc`, `cpu`, `vga`, `ram`, `ssd`, `motherboard`, `power`) VALUES
	(1, 'BS인텔베이직', 'i5-9400f + GTX 1660ti', '1,190,000', 'images/goods/pc1.png', 'i5-9400f', 'GTX 1660ti', 'samsung 8GB x2', 'samsung SATA3 250GB', 'MSI B360m 박격포', 'FSP 정격 500w'),
	(2, 'BS인텔중급자용', 'i5-9600k + RTX 2060', '1,480,000', 'images/goods/pc2.png', 'i5-9600k', 'RTX 2060', 'samsung 8GB x2', 'samsung SATA3 250GB', 'ASUS B360m prime', 'FSP 정격 600w'),
	(3, 'BS인텔고사양', 'i7-9700k + RTX 2070', '1,830,000', 'images/goods/pc3.png', 'i7-9700k', 'RTX 2070', 'samsung 8GB x2', 'samsung SATA3 500GB', 'GIGABYTE Z370 aorus', '안텍 정격 700w'),
	(4, 'BS인텔최고사양', 'i9-9900k + RTX 2080', '2,290,000', 'images/goods/pc4.png', 'i9-9900k', 'RTX 2080', 'G.Skill RGB 8GB x2', 'samsung SATA3 500GB', 'MSI Z390 토마호크', '시소닉 정격 800w'),
	(5, 'AMD중급자용', '라이젠 2600x + RTX 2060', '1,390,000', 'images/goods/pc5.png', '라이젠 2600x', 'RTX 2060', 'samsung 8GB x2', 'samsung SATA3 250GB', 'MSI B450m 박격포', 'FSP 정격 600w'),
	(6, 'AMD고사양', '라이젠 2700 + RTX 2070', '1,680,000', 'images/goods/pc6.png', '라이젠 2700', 'RTX 2070', 'samsung 8GB x2', 'samsung SATA3 500GB', 'ASUS X470 prime', '안텍 정격 650w'),
	(7, 'AMD최고사양', '라이젠 2700x + RTX 2080', '1,970,000', 'images/goods/pc7.png', '라이젠 2700x', 'RTX 2080', 'G.Skill RGB 8GB x2', 'samsung SATA3 500GB', 'GIGABYTE X470 aorus', '시소닉 정격 750w'),
	(8, '사무용인텔', 'i3-8300', '510,000', 'images/goods/pc8.png', 'i3-8300', '인텔 UHD 630', 'samsung 4GB x2', 'samsung SATA3 128GB', 'ASUS H310 prime', 'FSP 정격 400w'),
	(9, '사무용AMD', '라이젠 2200g', '460,000', 'images/goods/pc9.png', '라이젠 2200g', '라데온 vega 8', 'samsung 4GB x2', 'samsung SATA3 128GB', 'MSI A320 pro', 'FSP 정격 400w'),
	(10, '사무고사양AMD', '라이젠 2400g', '530,000', 'images/goods/pc10.png', '라이젠 2400g', '라데온 vega 11', 'samsung 4GB x2', 'samsung SATA3 128GB', 'ASUS A320 prime', 'FSP 정격 400w');
/*!40000 ALTER TABLE `product_pc` ENABLE KEYS */;

-- 테이블 bootsystemdb.user_addr 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_addr` (
  `userID` varchar(30) NOT NULL,
  `postcode` int(5) DEFAULT NULL,
  `roadAddress` varchar(50) DEFAULT NULL,
  `detailAddress` varchar(50) DEFAULT NULL,
  `extraAddress` varchar(50) DEFAULT NULL,
  `jibunAddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.user_addr:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_addr` ENABLE KEYS */;

-- 테이블 bootsystemdb.user_data 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_data` (
  `userID` varchar(30) NOT NULL,
  `userPassword` varchar(30) NOT NULL,
  `userName` varchar(15) DEFAULT NULL,
  `userEmail` varchar(40) DEFAULT NULL,
  `userPhone` int(11) DEFAULT NULL,
  `emailReceiveYn` char(1) NOT NULL,
  `smsReceiveYn` char(1) NOT NULL,
  `admin` char(1) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bootsystemdb.user_data:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` (`userID`, `userPassword`, `userName`, `userEmail`, `userPhone`, `emailReceiveYn`, `smsReceiveYn`, `admin`) VALUES
	('admin', 'admin123', '관리자', 'admin@gmail.com', 1012341234, 'Y', 'Y', '1'),
	('test', '1234', '테스트', 'test@test.ts', 1234, 'Y', 'Y', '0');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
