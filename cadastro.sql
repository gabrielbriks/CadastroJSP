-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Jan-2019 às 21:28
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--
-- Criação: 26-Jan-2019 às 17:27
--

CREATE TABLE IF NOT EXISTS `pessoas` (
  `pess_codi` mediumint(11) NOT NULL AUTO_INCREMENT,
  `pess_nome` varchar(255) NOT NULL,
  `dta_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vale_valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`pess_codi`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `pessoas`:
--

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`pess_codi`, `pess_nome`, `dta_cadastro`, `vale_valor`) VALUES
(7, 'joana', '2012-05-23 00:00:00', '0.00'),
(8, 'juquinha', '2019-01-26 15:57:34', '200.00'),
(9, 'luluzinha', '2019-01-26 16:01:22', '50.00'),
(10, 'Juca', '2019-01-26 16:08:52', '20.50'),
(11, 'luluzinha', '2019-01-26 16:09:11', '600.33'),
(12, 'luluzinha', '2019-01-26 16:11:55', '600.33'),
(13, 'monica', '2019-01-26 17:37:31', '322.60'),
(14, 'monica', '2019-01-26 17:38:09', '322.60'),
(15, 'luluzinha', '2019-01-26 17:38:59', '600.33'),
(16, 'monica', '2019-01-26 17:42:25', '322.60'),
(17, 'luluzinha', '2019-01-26 17:43:16', '600.33'),
(18, 'luluzinha', '2019-01-26 17:43:38', '600.33'),
(19, 'luluzinha', '2019-01-26 17:44:00', '600.33'),
(20, 'luluzinha', '2019-01-26 17:44:08', '600.33'),
(21, 'luluzinha', '2019-01-26 17:44:34', '600.33'),
(22, 'luluzinha', '2019-01-26 17:44:51', '600.33'),
(23, 'luluzinha', '2019-01-26 17:45:47', '600.33'),
(24, 'monica', '2019-01-26 17:46:12', '322.60'),
(25, 'luluzinha', '2019-01-26 17:46:17', '600.33'),
(26, 'luluzinha', '2019-01-26 17:46:42', '600.33'),
(27, 'luluzinha', '2019-01-26 17:47:12', '600.33'),
(28, 'monica', '2019-01-26 17:56:09', '322.60'),
(29, 'joana maria de fatima', '2019-01-26 17:59:21', '250.90'),
(30, 'joana maria de fatima', '2019-01-26 17:59:54', '250.90'),
(31, 'lucas', '2019-01-26 18:02:52', '222.45'),
(32, 'lucas', '2019-01-26 18:04:29', '222.45'),
(33, 'lucas', '2019-01-26 18:04:50', '222.45'),
(34, 'lucas', '2019-01-26 18:05:53', '222.45'),
(35, 'monica', '2019-01-26 18:10:42', '322.60'),
(36, 'joana', '2019-01-26 18:16:07', '718.99'),
(37, 'joana', '2019-01-26 18:16:22', '718.99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
