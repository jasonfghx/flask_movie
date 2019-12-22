-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-12-21 05:41:03
-- 伺服器版本： 10.3.16-MariaDB
-- PHP 版本： 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movie`
--

-- --------------------------------------------------------

--
-- 資料表結構 `mer`
--

CREATE TABLE `mer` (
  `日期` date NOT NULL,
  `Page 2 Header` int(11) NOT NULL,
  `Page 2 Description` int(11) NOT NULL,
  `影廳` varchar(11) NOT NULL,
  `記錄人員` varchar(100) NOT NULL,
  `Page 3 Header` int(11) NOT NULL,
  `Page 3 Description` int(11) NOT NULL,
  `1. Sdd-Error 值` varchar(100) NOT NULL,
  `2. Sdc-Error 值` varchar(100) NOT NULL,
  `3. sdb-Error 值` varchar(100) NOT NULL,
  `4. Sda-Error 值` varchar(100) NOT NULL,
  `Page 4 Header` int(11) NOT NULL,
  `Page 4 Description` int(11) NOT NULL,
  `5. Sdd-轉速` float NOT NULL,
  `6. Sdc-轉速` float NOT NULL,
  `7. sdb-轉速` float NOT NULL,
  `8. Sda-轉速` float NOT NULL,
  `Section 3 Header` int(11) NOT NULL,
  `Section 3 Description` int(11) NOT NULL,
  `是否先提交表單存檔` int(11) NOT NULL,
  `Page 5 Header` int(11) NOT NULL,
  `Page 5 Description` int(11) NOT NULL,
  `9. Monitor RAID Status UUU 檢查` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `mer`
--

INSERT INTO `mer` (`日期`, `Page 2 Header`, `Page 2 Description`, `影廳`, `記錄人員`, `Page 3 Header`, `Page 3 Description`, `1. Sdd-Error 值`, `2. Sdc-Error 值`, `3. sdb-Error 值`, `4. Sda-Error 值`, `Page 4 Header`, `Page 4 Description`, `5. Sdd-轉速`, `6. Sdc-轉速`, `7. sdb-轉速`, `8. Sda-轉速`, `Section 3 Header`, `Section 3 Description`, `是否先提交表單存檔`, `Page 5 Header`, `Page 5 Description`, `9. Monitor RAID Status UUU 檢查`) VALUES
('2019-01-31', 0, 0, 'C1 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 164.11, 161.76, 157.46, 120.93, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C2 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 161.14, 164.04, 161.82, 120.44, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C3 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 159.64, 166.33, 163.23, 120.72, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C5 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 162.12, 162.71, 159.27, 120.68, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C6 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 160.35, 164.15, 164.03, 122.4, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C7 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 163.39, 162.34, 162.42, 123.91, 0, 0, 0, 0, 0, '正常'),
('2019-01-31', 0, 0, 'C8 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 166.93, 159, 163.7, 120.82, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C1 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 164.3, 161.59, 157.8, 121.03, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C2 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 161.44, 163.51, 162.15, 119.91, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C3 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 159.86, 164.64, 163.19, 121.07, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C5 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 162.22, 162.68, 159.32, 120.43, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C6 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 160.38, 164.87, 162.39, 123.27, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C7 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 162.8, 163.72, 162.38, 126.41, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C8 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 164.71, 164.39, 163.26, 120.89, 0, 0, 0, 0, 0, '正常'),
('2019-02-28', 0, 0, 'C9 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 167.18, 156.91, 163.66, 120.88, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C1 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 164.94, 161.55, 157.47, 121.18, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C2 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 160.98, 161.85, 162.01, 120.44, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C3 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 159.64, 164.62, 163.12, 120.88, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C5 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 162.35, 162.07, 159.69, 120.66, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C6 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 160.27, 164.09, 163.85, 122.54, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C7 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 162.13, 164.02, 162.33, 124.64, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C8 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 165.1, 164.42, 163.52, 120.99, 0, 0, 0, 0, 0, '正常'),
('2019-03-31', 0, 0, 'C9 (SX-2000', 'Chandler', 0, 0, '正常', '正常', '正常', '正常', 0, 0, 165.47, 157.76, 163.8, 120.98, 0, 0, 0, 0, 0, '正常');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
