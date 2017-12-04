-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 17-12-03 07:55
-- 서버 버전: 10.1.28-MariaDB
-- PHP 버전: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `ericast`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `cardnews`
--

CREATE TABLE `cardnews` (
  `news_number` int(8) NOT NULL,
  `owner_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='manage nes contents';

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permission` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'admininistrator can delete every contents'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='saves user information';

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`id`, `password`, `email`, `permission`) VALUES
('sample12', '594f803b380a41396ed63dca39503542', 'sam@pl.e', 'user'),
('yu', '202cb962ac59075b964b07152d234b70', 'a@n', 'user'),
('yushin', '81dc9bdb52d04dc20036dbd8313ed055', 'lp@na.cm', 'user');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `cardnews`
--
ALTER TABLE `cardnews`
  ADD PRIMARY KEY (`news_number`),
  ADD KEY `FK` (`owner_id`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `cardnews`
--
ALTER TABLE `cardnews`
  MODIFY `news_number` int(8) NOT NULL AUTO_INCREMENT;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `cardnews`
--
ALTER TABLE `cardnews`
  ADD CONSTRAINT `cardnews_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
