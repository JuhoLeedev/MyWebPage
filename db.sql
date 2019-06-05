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

-- 테이블 bootsystemdb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `bcode` int(11) DEFAULT NULL,
  `scode` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `bdate` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `wirte` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 bootsystemdb.product_pc 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_pc` (
  `pcName` varchar(50) DEFAULT NULL,
  `pcInfo` varchar(50) DEFAULT NULL,
  `pcPrice` int(11) DEFAULT NULL,
  `pcImageSrc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 bootsystemdb.user_addr 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_addr` (
  `userID` varchar(30) NOT NULL,
  `postcode` int(5) DEFAULT NULL,
  `roadAddress` varchar(50) DEFAULT NULL,
  `detailAddress` varchar(50) DEFAULT NULL,
  `extraAddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 bootsystemdb.user_data 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_data` (
  `userID` varchar(30) NOT NULL,
  `userPW` varchar(30) NOT NULL,
  `userName` varchar(15) DEFAULT NULL,
  `userEmail` varchar(40) DEFAULT NULL,
  `userPhone` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 내보낼 데이터가 선택되어 있지 않습니다.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
