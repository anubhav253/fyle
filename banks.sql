-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2018 at 04:19 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyle`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `ifsc` varchar(11) NOT NULL,
  `bank_id` bigint(20) DEFAULT NULL,
  `branch` varchar(74) DEFAULT NULL,
  `address` varchar(195) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `state` varchar(26) DEFAULT NULL,
  `bank_name` varchar(49) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`ifsc`, `bank_id`, `branch`, `address`, `city`, `district`, `state`, `bank_name`) VALUES
('ABHY0065001', 60, 'RTGS-HO', 'ABHYUDAYA BANK BLDG., B.NO.71, NEHRU NAGAR, KURLA (E), MUMBAI-400024', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065002', 60, 'ABHYUDAYA NAGAR', 'ABHYUDAYA EDUCATION SOCIETY, OPP. BLDG. NO. 18, ABHYUDAYA NAGAR, KALACHOWKY, MUMBAI - 400033', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065003', 60, 'BAIL BAZAR', 'KMSPM\'S SCHOOL, WADIA ESTATE, BAIL BAZAR-KURLA(W), MUMBAI-400070', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065004', 60, 'BHANDUP', 'CHETNA APARTMENTS, J.M.ROAD, BHANDUP, MUMBAI-400078', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065005', 60, 'DARUKHANA', 'POTIA IND.ESTATE, REAY ROAD (E), DARUKHANA, MUMBAI-400010', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065006', 60, 'FORT', 'ABHYUDAYA BANK BLDG., 251, PERIN NARIMAN STREET, FORT, MUMBAI-400001', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065007', 60, 'GHATKOPAR', 'UNIT NO 2 & 3, SILVER HARMONY BLDG,NEW MANIKLAL ESTATE, GHATKOPAR (WEST), MUMBAI-400086', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065008', 60, 'KANJUR', 'BHANDARI CO-OP. HSG. SOCIETY, KANJUR VILLAGE, KANJUR (EAST), MUMBAI-400078', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065009', 60, 'NEHRU NAGAR', 'ABHYUDAYA BANK BLDG., B.NO.71, NEHRU NAGAR, KURLA (E), MUMBAI-400024', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065010', 60, 'PAREL', 'SHRAMA SAFALYA, 63 G.D.AMBEKAR MARG, PAREL VILLAGE, MUMBAI-400012', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065011', 60, 'SEWRI', 'NAVNIDHI INDUSTRIAL ESTATE, ACHARYA DONDHE MARG, SEWRI, MUMBAI-400015', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065012', 60, 'WADALA', 'B.P.T.MARKET BLDG., NADKARNI PARK, WADALA (EAST), MUMBAI-400037', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065013', 60, 'WORLI', 'LANDMARK,NEXT TO MAHINDRA TOWERS, PLOT NO.1, J M BHOSLE MARG, WORLI, MUMBAI-400018', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065015', 60, 'TURBHE', 'A.P.M.C.MARKET, ADMINISTRATIVE BLDG, TURBHE, NAVI MUMBAI-400705', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED'),
('ABHY0065016', 60, 'VASHI', 'ABHYUDAYA BANK BLDG., SECTOR 17, VASHI, NAVI MUMBAI-400705', 'MUMBAI', 'GREATER MUMBAI', 'MAHARASHTRA', 'ABHYUDAYA COOPERATIVE BANK LIMITED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD UNIQUE KEY `ifsc` (`ifsc`),
  ADD KEY `city` (`city`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
