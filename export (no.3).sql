-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 01:02 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

SELECT (
 SELECT MAX(follower_count)
 FROM tbl_scraping
 WHERE ig_username = "surabaya" AND taken_at IN 
 (SELECT MAX(taken_at) FROM tbl_scraping WHERE ig_username='surabaya'
  AND (taken_at BETWEEN '2020-01-01' AND '2020-12-31'))
) AS f_2020 , 
(
 
SELECT MAX(follower_count) AS f_2020 
 FROM tbl_scraping
 WHERE ig_username = "surabaya" AND taken_at IN 
 (SELECT MAX(taken_at) FROM tbl_scraping WHERE ig_username='surabaya'
  AND (taken_at BETWEEN '2021-01-01' AND '2021-12-31'))
) AS f_2021  COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
