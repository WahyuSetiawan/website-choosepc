-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2015 at 06:12 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amd_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `no_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issbn` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_salinan` int(11) NOT NULL,
  `ringkasan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_detail_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `no_telepon` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_registrasi` date NOT NULL,
  `tanggal_diterima` date NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `no_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_aktif` tinyint(1) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `an`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `notlp` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `notlp`, `email`) VALUES
(1, 'an', 55555, 'sembarang@a.com'),
(4, '', 0, '');
--
-- Database: `boyes`
--

-- --------------------------------------------------------

--
-- Table structure for table `ge`
--

CREATE TABLE IF NOT EXISTS `ge` (
  `idG` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`idG`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ge`
--

INSERT INTO `ge` (`idG`, `nama`, `keterangan`) VALUES
(1, 'mual', 'terasa mual'),
(2, 'lemas/lesu', 'terasa lelah'),
(3, 'Muntah', 'muntah-muntah'),
(4, 'Kram', 'terasa keram'),
(5, 'Sakit kepala', ''),
(6, 'panas', ''),
(7, 'mulut kering', ''),
(8, 'perut kembung', ''),
(9, 'ruam', ''),
(10, 'feses encer', ''),
(11, 'Bab > 10x sehari', ''),
(12, 'suhu tubuh naik turun', ''),
(13, 'merancau', ''),
(14, 'tekanan darah rendah', ''),
(15, 'mulas', ''),
(16, 'lidah kotor', ''),
(17, 'nadi lemah', ''),
(18, 'sembelit', ''),
(19, 'bab 3-9x sehari', ''),
(20, 'feses berdarah', ''),
(21, 'titer widal antigen h < 1/160', ''),
(22, 'titer widal antigen h < 1/160', ''),
(23, 'titer widal antigen A H < 1/160', '');

-- --------------------------------------------------------

--
-- Table structure for table `pe`
--

CREATE TABLE IF NOT EXISTS `pe` (
  `idP` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pe`
--

INSERT INTO `pe` (`idP`, `nama`, `nilai`) VALUES
(1, 'tifus', 0.3),
(2, 'diare', 0.2),
(3, 'disentri', 0.4),
(4, 'kolera', 0.5),
(5, 'dbd', 0.4),
(6, 'sf', 0.7),
(7, 'demam', 0.3),
(8, 'dr', 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `ru`
--

CREATE TABLE IF NOT EXISTS `ru` (
  `idR` int(11) NOT NULL AUTO_INCREMENT,
  `idG` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  PRIMARY KEY (`idR`),
  KEY `idG` (`idG`,`idP`),
  KEY `idP` (`idP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `ru`
--

INSERT INTO `ru` (`idR`, `idG`, `idP`) VALUES
(1, 1, 1),
(26, 1, 3),
(37, 1, 4),
(45, 1, 5),
(59, 1, 7),
(63, 1, 8),
(2, 2, 1),
(68, 2, 2),
(27, 2, 3),
(38, 2, 4),
(46, 2, 5),
(55, 2, 6),
(60, 2, 7),
(64, 2, 8),
(3, 3, 1),
(28, 3, 3),
(39, 3, 4),
(47, 3, 5),
(61, 3, 7),
(65, 3, 8),
(4, 4, 1),
(69, 4, 2),
(29, 4, 3),
(40, 4, 4),
(48, 4, 5),
(5, 5, 1),
(49, 5, 5),
(56, 5, 6),
(62, 5, 7),
(66, 5, 8),
(6, 6, 1),
(30, 6, 3),
(50, 6, 5),
(57, 6, 6),
(7, 7, 1),
(70, 7, 2),
(31, 7, 3),
(41, 7, 4),
(51, 7, 5),
(8, 8, 1),
(71, 8, 2),
(32, 8, 3),
(42, 8, 4),
(9, 9, 1),
(52, 9, 5),
(58, 9, 6),
(72, 10, 2),
(33, 10, 3),
(43, 10, 4),
(34, 11, 3),
(44, 11, 4),
(10, 12, 1),
(53, 12, 5),
(11, 13, 1),
(54, 13, 5),
(12, 14, 1),
(67, 14, 8),
(73, 15, 2),
(35, 15, 3),
(13, 16, 1),
(14, 17, 1),
(15, 18, 1),
(74, 19, 2),
(36, 20, 3),
(16, 21, 1),
(17, 22, 1),
(18, 23, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ru`
--
ALTER TABLE `ru`
  ADD CONSTRAINT `ru_ibfk_1` FOREIGN KEY (`idG`) REFERENCES `ge` (`idG`),
  ADD CONSTRAINT `ru_ibfk_2` FOREIGN KEY (`idP`) REFERENCES `pe` (`idP`);
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `database_name`
--
--
-- Database: `db_choosepc`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `criteria`() RETURNS varchar(5) CHARSET latin1
BEGIN
  DECLARE COD VARCHAR(5);
  DECLARE MA INT;
select ifnull(max(RIGHT(id_criteria,3)),'000') INTO MA from ahp_criteria;
SET COD = CONCAT('CT',RIGHT(CONCAT('000',CONVERT(MA+1,CHAR)),3));
  RETURN COD;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `hello_world`(addressee TEXT) RETURNS text CHARSET latin1
BEGIN
  DECLARE strlen INT;
  SET strlen = LENGTH(addressee);
  RETURN CONCAT('Hello ', addressee, ' - your parameter has ', strlen, ' characters');
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `produk`(`co` VARCHAR(2), `tb_k` VARCHAR(50), `id_k` VARCHAR(50)) RETURNS varchar(5) CHARSET latin1
    NO SQL
BEGIN
  DECLARE COD VARCHAR(5);
  DECLARE MA INT;
select ifnull(max(RIGHT(id_k,3)),'000') INTO MA from tb_k;
SET COD = CONCAT(co,RIGHT(CONCAT('000',CONVERT(MA+1,CHAR)),3));
  RETURN COD;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `subcriteria`() RETURNS varchar(5) CHARSET latin1
    NO SQL
BEGIN
  DECLARE COD VARCHAR(5);
  DECLARE MA INT;
select ifnull(max(RIGHT(id_sub,3)),'000') INTO MA from ahp_subcriteria;
SET COD = CONCAT('SC',RIGHT(CONCAT('000',CONVERT(MA+1,CHAR)),3));
  RETURN COD;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ahp_bayes_schema`
--

CREATE TABLE IF NOT EXISTS `ahp_bayes_schema` (
  `id_hipotensis` int(11) DEFAULT NULL,
  `id_component` varchar(5) NOT NULL,
  UNIQUE KEY `id_hipotensis` (`id_hipotensis`,`id_component`),
  KEY `FK_bayestoahp_hipotesis` (`id_hipotensis`),
  KEY `id_component` (`id_component`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_bayes_schema`
--

INSERT INTO `ahp_bayes_schema` (`id_hipotensis`, `id_component`) VALUES
(1, 'CM001'),
(1, 'CM002'),
(1, 'CM003'),
(1, 'CM004'),
(1, 'CM005'),
(2, 'CM001'),
(2, 'CM002'),
(2, 'CM003'),
(2, 'CM004'),
(2, 'CM005'),
(4, 'CM001'),
(4, 'CM002'),
(4, 'CM003'),
(4, 'CM004'),
(4, 'CM005');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_component_computer`
--

CREATE TABLE IF NOT EXISTS `ahp_component_computer` (
  `id` varchar(5) NOT NULL,
  `name` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_component_computer`
--

INSERT INTO `ahp_component_computer` (`id`, `name`) VALUES
('CM001', 'Processor'),
('CM002', 'Motherboard'),
('CM003', 'Video Graphic Adapter'),
('CM004', 'Harddisk'),
('CM005', 'RAM');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_criteria`
--

CREATE TABLE IF NOT EXISTS `ahp_criteria` (
  `id_criteria` varchar(5) NOT NULL,
  `nama_criteria` varchar(50) NOT NULL,
  `id_component` varchar(5) NOT NULL,
  PRIMARY KEY (`id_criteria`),
  KEY `id_component` (`id_component`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_criteria`
--

INSERT INTO `ahp_criteria` (`id_criteria`, `nama_criteria`, `id_component`) VALUES
('CT001', 'Clock', 'CM001'),
('CT002', 'Core', 'CM001'),
('CT003', 'Thread', 'CM001'),
('CT004', 'Cache', 'CM001'),
('CT005', 'Chipset', 'CM002'),
('CT006', 'Memory Support', 'CM002'),
('CT007', 'Max Memory', 'CM002'),
('CT008', 'Core Clock', 'CM003'),
('CT010', 'Memory Size', 'CM003'),
('CT011', 'Bus Width', 'CM003'),
('CT012', 'Type Memory', 'CM003'),
('CT013', 'Interface', 'CM004'),
('CT014', 'RPM', 'CM004'),
('CT015', 'Type', 'CM004'),
('CT016', 'Capacity', 'CM004'),
('CT017', 'Cache', 'CM004'),
('CT019', 'Clock', 'CM005'),
('CT021', 'Cas Latency', 'CM005'),
('CT022', 'Capacity', 'CM005');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_criteria_weight`
--

CREATE TABLE IF NOT EXISTS `ahp_criteria_weight` (
  `id_hipotesis` int(11) NOT NULL,
  `id_component` varchar(5) NOT NULL,
  `id_criteria_1` varchar(5) NOT NULL,
  `id_criteria_2` varchar(5) NOT NULL,
  `point` enum('0','1') NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  UNIQUE KEY `id_hipotesis_2` (`id_hipotesis`,`id_component`,`id_criteria_1`,`id_criteria_2`),
  KEY `id_component` (`id_component`),
  KEY `id_criteria_1` (`id_criteria_1`),
  KEY `id_criteria_2` (`id_criteria_2`),
  KEY `id_hipotesis` (`id_hipotesis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_criteria_weight`
--

INSERT INTO `ahp_criteria_weight` (`id_hipotesis`, `id_component`, `id_criteria_1`, `id_criteria_2`, `point`, `weight`) VALUES
(1, 'CM001', 'CT001', 'CT001', '0', 1),
(1, 'CM001', 'CT001', 'CT002', '0', 3),
(1, 'CM001', 'CT001', 'CT003', '0', 2),
(1, 'CM001', 'CT001', 'CT004', '0', 2),
(1, 'CM001', 'CT002', 'CT002', '0', 1),
(1, 'CM001', 'CT002', 'CT003', '1', 2),
(1, 'CM001', 'CT002', 'CT004', '0', 2),
(1, 'CM001', 'CT003', 'CT003', '0', 1),
(1, 'CM001', 'CT003', 'CT004', '0', 2),
(1, 'CM001', 'CT004', 'CT004', '0', 1),
(1, 'CM002', 'CT005', 'CT005', '0', 1),
(1, 'CM002', 'CT005', 'CT006', '0', 3),
(1, 'CM002', 'CT005', 'CT007', '1', 4),
(1, 'CM002', 'CT006', 'CT006', '0', 1),
(1, 'CM002', 'CT006', 'CT007', '1', 4),
(1, 'CM002', 'CT007', 'CT007', '0', 1),
(1, 'CM003', 'CT008', 'CT008', '0', 1),
(1, 'CM003', 'CT008', 'CT010', '0', 3),
(1, 'CM003', 'CT008', 'CT011', '0', 2),
(1, 'CM003', 'CT008', 'CT012', '1', 3),
(1, 'CM003', 'CT010', 'CT010', '0', 1),
(1, 'CM003', 'CT010', 'CT011', '1', 2),
(1, 'CM003', 'CT010', 'CT012', '1', 3),
(1, 'CM003', 'CT011', 'CT011', '0', 1),
(1, 'CM003', 'CT011', 'CT012', '1', 3),
(1, 'CM003', 'CT012', 'CT012', '0', 1),
(1, 'CM004', 'CT013', 'CT013', '0', 1),
(1, 'CM004', 'CT013', 'CT014', '1', 2),
(1, 'CM004', 'CT013', 'CT015', '1', 3),
(1, 'CM004', 'CT013', 'CT016', '1', 5),
(1, 'CM004', 'CT013', 'CT017', '1', 3),
(1, 'CM004', 'CT014', 'CT014', '0', 1),
(1, 'CM004', 'CT014', 'CT015', '0', 1),
(1, 'CM004', 'CT014', 'CT016', '1', 3),
(1, 'CM004', 'CT014', 'CT017', '0', 3),
(1, 'CM004', 'CT015', 'CT015', '0', 1),
(1, 'CM004', 'CT015', 'CT016', '1', 3),
(1, 'CM004', 'CT015', 'CT017', '0', 4),
(1, 'CM004', 'CT016', 'CT016', '0', 1),
(1, 'CM004', 'CT016', 'CT017', '0', 5),
(1, 'CM004', 'CT017', 'CT017', '0', 1),
(1, 'CM005', 'CT019', 'CT019', '0', 1),
(1, 'CM005', 'CT019', 'CT021', '1', 4),
(1, 'CM005', 'CT019', 'CT022', '1', 3),
(1, 'CM005', 'CT021', 'CT021', '0', 1),
(1, 'CM005', 'CT021', 'CT022', '0', 4),
(1, 'CM005', 'CT022', 'CT022', '0', 1),
(2, 'CM001', 'CT001', 'CT001', '0', 1),
(2, 'CM001', 'CT001', 'CT002', '1', 4),
(2, 'CM001', 'CT001', 'CT003', '1', 3),
(2, 'CM001', 'CT001', 'CT004', '1', 3),
(2, 'CM001', 'CT002', 'CT002', '0', 1),
(2, 'CM001', 'CT002', 'CT003', '0', 3),
(2, 'CM001', 'CT002', 'CT004', '0', 5),
(2, 'CM001', 'CT003', 'CT003', '0', 1),
(2, 'CM001', 'CT003', 'CT004', '0', 2),
(2, 'CM001', 'CT004', 'CT004', '0', 1),
(2, 'CM002', 'CT005', 'CT005', '0', 1),
(2, 'CM002', 'CT005', 'CT006', '1', 3),
(2, 'CM002', 'CT005', 'CT007', '0', 3),
(2, 'CM002', 'CT006', 'CT006', '0', 1),
(2, 'CM002', 'CT006', 'CT007', '0', 4),
(2, 'CM002', 'CT007', 'CT007', '0', 1),
(2, 'CM003', 'CT008', 'CT008', '0', 1),
(2, 'CM003', 'CT008', 'CT010', '0', 4),
(2, 'CM003', 'CT008', 'CT011', '0', 3),
(2, 'CM003', 'CT008', 'CT012', '0', 5),
(2, 'CM003', 'CT010', 'CT010', '0', 1),
(2, 'CM003', 'CT010', 'CT011', '1', 2),
(2, 'CM003', 'CT010', 'CT012', '0', 2),
(2, 'CM003', 'CT011', 'CT011', '0', 1),
(2, 'CM003', 'CT011', 'CT012', '0', 1),
(2, 'CM003', 'CT012', 'CT012', '0', 1),
(2, 'CM004', 'CT013', 'CT013', '0', 1),
(2, 'CM004', 'CT013', 'CT014', '1', 2),
(2, 'CM004', 'CT013', 'CT015', '0', 2),
(2, 'CM004', 'CT013', 'CT016', '1', 3),
(2, 'CM004', 'CT013', 'CT017', '0', 3),
(2, 'CM004', 'CT014', 'CT014', '0', 1),
(2, 'CM004', 'CT014', 'CT015', '0', 3),
(2, 'CM004', 'CT014', 'CT016', '1', 2),
(2, 'CM004', 'CT014', 'CT017', '0', 3),
(2, 'CM004', 'CT015', 'CT015', '0', 1),
(2, 'CM004', 'CT015', 'CT016', '1', 3),
(2, 'CM004', 'CT015', 'CT017', '1', 2),
(2, 'CM004', 'CT016', 'CT016', '0', 1),
(2, 'CM004', 'CT016', 'CT017', '0', 4),
(2, 'CM004', 'CT017', 'CT017', '0', 1),
(2, 'CM005', 'CT019', 'CT019', '0', 1),
(2, 'CM005', 'CT019', 'CT021', '1', 3),
(2, 'CM005', 'CT019', 'CT022', '1', 4),
(2, 'CM005', 'CT021', 'CT021', '0', 1),
(2, 'CM005', 'CT021', 'CT022', '1', 3),
(2, 'CM005', 'CT022', 'CT022', '0', 1),
(4, 'CM001', 'CT001', 'CT001', '0', 1),
(4, 'CM001', 'CT001', 'CT002', '1', 4),
(4, 'CM001', 'CT001', 'CT003', '1', 3),
(4, 'CM001', 'CT001', 'CT004', '0', 2),
(4, 'CM001', 'CT002', 'CT002', '0', 1),
(4, 'CM001', 'CT002', 'CT003', '0', 2),
(4, 'CM001', 'CT002', 'CT004', '0', 2),
(4, 'CM001', 'CT003', 'CT003', '1', 1),
(4, 'CM001', 'CT003', 'CT004', '0', 3),
(4, 'CM001', 'CT004', 'CT004', '0', 1),
(4, 'CM002', 'CT005', 'CT005', '0', 1),
(4, 'CM002', 'CT005', 'CT006', '0', 3),
(4, 'CM002', 'CT005', 'CT007', '0', 5),
(4, 'CM002', 'CT006', 'CT006', '0', 1),
(4, 'CM002', 'CT006', 'CT007', '0', 5),
(4, 'CM002', 'CT007', 'CT007', '0', 1),
(4, 'CM003', 'CT008', 'CT008', '0', 1),
(4, 'CM003', 'CT008', 'CT010', '0', 4),
(4, 'CM003', 'CT008', 'CT011', '0', 3),
(4, 'CM003', 'CT008', 'CT012', '0', 2),
(4, 'CM003', 'CT010', 'CT010', '0', 1),
(4, 'CM003', 'CT010', 'CT011', '0', 2),
(4, 'CM003', 'CT010', 'CT012', '1', 2),
(4, 'CM003', 'CT011', 'CT011', '0', 1),
(4, 'CM003', 'CT011', 'CT012', '1', 6),
(4, 'CM003', 'CT012', 'CT012', '0', 1),
(4, 'CM004', 'CT013', 'CT013', '0', 1),
(4, 'CM004', 'CT013', 'CT014', '1', 3),
(4, 'CM004', 'CT013', 'CT015', '0', 2),
(4, 'CM004', 'CT013', 'CT016', '1', 2),
(4, 'CM004', 'CT013', 'CT017', '1', 2),
(4, 'CM004', 'CT014', 'CT014', '0', 1),
(4, 'CM004', 'CT014', 'CT015', '0', 4),
(4, 'CM004', 'CT014', 'CT016', '1', 3),
(4, 'CM004', 'CT014', 'CT017', '0', 2),
(4, 'CM004', 'CT015', 'CT015', '0', 1),
(4, 'CM004', 'CT015', 'CT016', '1', 4),
(4, 'CM004', 'CT015', 'CT017', '1', 2),
(4, 'CM004', 'CT016', 'CT016', '0', 1),
(4, 'CM004', 'CT016', 'CT017', '0', 3),
(4, 'CM004', 'CT017', 'CT017', '0', 1),
(4, 'CM005', 'CT019', 'CT019', '0', 1),
(4, 'CM005', 'CT019', 'CT021', '0', 3),
(4, 'CM005', 'CT019', 'CT022', '1', 3),
(4, 'CM005', 'CT021', 'CT021', '0', 1),
(4, 'CM005', 'CT021', 'CT022', '1', 4),
(4, 'CM005', 'CT022', 'CT022', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahp_subcriteria`
--

CREATE TABLE IF NOT EXISTS `ahp_subcriteria` (
  `id_sub` varchar(10) NOT NULL,
  `sub` varchar(50) DEFAULT NULL,
  `id_criteria` varchar(5) NOT NULL,
  PRIMARY KEY (`id_sub`),
  KEY `id_criteria` (`id_criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_subcriteria`
--

INSERT INTO `ahp_subcriteria` (`id_sub`, `sub`, `id_criteria`) VALUES
('SC001', '1', 'CT002'),
('SC002', '2', 'CT002'),
('SC003', '4', 'CT002'),
('SC004', '6', 'CT002'),
('SC005', '8', 'CT002'),
('SC006', '12', 'CT002'),
('SC007', '1', 'CT003'),
('SC008', '2', 'CT003'),
('SC009', '4', 'CT003'),
('SC010', '6', 'CT003'),
('SC011', '8', 'CT003'),
('SC012', '12', 'CT003'),
('SC013', '256 KB', 'CT004'),
('SC014', '512 KB', 'CT004'),
('SC015', '1 MB', 'CT004'),
('SC016', '2 MB', 'CT004'),
('SC017', '1000 Mhz', 'CT001'),
('SC018', '2000 Mhz', 'CT001'),
('SC019', '3000 Mhz', 'CT001'),
('SC020', '4000 Mhz', 'CT001'),
('SC021', '990FX', 'CT005'),
('SC022', '970A', 'CT005'),
('SC023', '890FX', 'CT005'),
('SC024', '880G', 'CT005'),
('SC025', 'Z97', 'CT005'),
('SC026', 'H87', 'CT005'),
('SC027', 'H97', 'CT005'),
('SC028', 'Z87', 'CT005'),
('SC029', 'Q87', 'CT005'),
('SC030', 'B85', 'CT005'),
('SC031', 'X99', 'CT005'),
('SC032', 'X79', 'CT005'),
('SC033', 'A88X', 'CT005'),
('SC034', 'A78', 'CT005'),
('SC035', 'A58', 'CT005'),
('SC036', 'A55', 'CT005'),
('SC037', '1066 ', 'CT006'),
('SC038', '1333', 'CT006'),
('SC039', '1600', 'CT006'),
('SC040', '1866', 'CT006'),
('SC041', '2133', 'CT006'),
('SC042', '2400', 'CT006'),
('SC043', '2800', 'CT006'),
('SC044', '2933+', 'CT006'),
('SC045', '32', 'CT007'),
('SC046', '16', 'CT007'),
('SC047', '8', 'CT007'),
('SC048', '4', 'CT007'),
('SC049', '2', 'CT007'),
('SC050', '1', 'CT007'),
('SC051', '64', 'CT007'),
('SC052', '128', 'CT007'),
('SC053', '650 Mhz', 'CT008'),
('SC054', '750 Mhz', 'CT008'),
('SC055', '850 Mhz', 'CT008'),
('SC056', '900 Mhz', 'CT008'),
('SC057', '1000 Mhz', 'CT008'),
('SC058', '512 MB', 'CT010'),
('SC059', '1024 MB', 'CT010'),
('SC060', '2048 MB', 'CT010'),
('SC061', '64 bit', 'CT011'),
('SC062', '128 bit', 'CT011'),
('SC063', '192 bit', 'CT011'),
('SC064', '256 bit', 'CT011'),
('SC065', 'DDR 2', 'CT012'),
('SC066', 'DDR 3', 'CT012'),
('SC067', 'GDDR 3', 'CT012'),
('SC068', 'GDDR 5', 'CT012'),
('SC069', 'IDE/ATA', 'CT015'),
('SC070', 'SATA', 'CT015'),
('SC071', 'SSD', 'CT015'),
('SC072', '500 GB', 'CT016'),
('SC073', '1 TB', 'CT016'),
('SC074', '2 TB', 'CT016'),
('SC075', '3 TB', 'CT016'),
('SC076', '4 TB', 'CT016'),
('SC077', 'SATA 3.0 Gb/s', 'CT013'),
('SC078', 'SATA 6.0 Gb/s', 'CT013'),
('SC079', 'SAS 3.0 Gb/s', 'CT013'),
('SC080', 'SAS 6.0 Gb/s', 'CT013'),
('SC081', 'IDE', 'CT013'),
('SC082', '7200 RPM', 'CT014'),
('SC083', '10000 RPM', 'CT014'),
('SC084', '10500 RPM', 'CT014'),
('SC085', '15000 RPM', 'CT014'),
('SC086', 'IntelliPower', 'CT014'),
('SC087', '32 MB', 'CT017'),
('SC088', '64 MB', 'CT017'),
('SC089', '128 MB', 'CT017'),
('SC090', '800', 'CT019'),
('SC091', '1333', 'CT019'),
('SC092', '1600', 'CT019'),
('SC093', '1866', 'CT019'),
('SC094', '2000', 'CT019'),
('SC095', '8', 'CT021'),
('SC096', '9', 'CT021'),
('SC097', '10', 'CT021'),
('SC098', '11', 'CT021'),
('SC099', '12', 'CT021'),
('SC100', '13', 'CT021'),
('SC101', '1 GB', 'CT022'),
('SC102', '2 GB', 'CT022'),
('SC103', '4 GB', 'CT022'),
('SC104', '8 GB', 'CT022'),
('SC105', '3 MB', 'CT004'),
('SC106', '4 MB', 'CT004'),
('SC107', '5 MB', 'CT004'),
('SC108', '6 MB', 'CT004'),
('SC109', '10 MB', 'CT004'),
('SC110', '8 MB', 'CT004'),
('SC111', '4', 'CT021'),
('SC112', '6', 'CT021'),
('SC113', '2', 'CT021'),
('SC114', '5300', 'CT019'),
('SC115', '5', 'CT021'),
('SC116', '6400', 'CT019'),
('SC117', '12800', 'CT019'),
('SC118', '10600', 'CT019'),
('SC119', '750 GB', 'CT016'),
('SC120', '16 MB', 'CT017'),
('SC121', '4000', 'CT010'),
('SC122', '4000 MB', 'CT010'),
('SC123', '5900 RPM', 'CT014'),
('SC124', '5400 RPM', 'CT014'),
('SC125', '8 MB', 'CT017'),
('SC126', '160GB', 'CT016');

-- --------------------------------------------------------

--
-- Table structure for table `ahp_subcriteria_weight`
--

CREATE TABLE IF NOT EXISTS `ahp_subcriteria_weight` (
  `id_hipotesis` int(11) NOT NULL,
  `id_criteria` varchar(5) DEFAULT NULL,
  `ahp_subcriteria_1` varchar(10) DEFAULT NULL,
  `ahp_subcriteria_2` varchar(10) DEFAULT NULL,
  `point` enum('0','1') DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  UNIQUE KEY `id_hipotesis_2` (`id_hipotesis`,`id_criteria`,`ahp_subcriteria_1`,`ahp_subcriteria_2`),
  KEY `FK_ahp_subcriteria_weight_ahp_criteria` (`id_criteria`),
  KEY `FK_ahp_subcriteria_weight_ahp_subcriteria` (`ahp_subcriteria_1`),
  KEY `FK_ahp_subcriteria_weight_ahp_subcriteria_2` (`ahp_subcriteria_2`),
  KEY `id_hipotesis` (`id_hipotesis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahp_subcriteria_weight`
--

INSERT INTO `ahp_subcriteria_weight` (`id_hipotesis`, `id_criteria`, `ahp_subcriteria_1`, `ahp_subcriteria_2`, `point`, `weight`) VALUES
(4, 'CT002', 'SC001', 'SC001', '0', 1),
(4, 'CT002', 'SC001', 'SC002', '0', 3),
(4, 'CT002', 'SC001', 'SC003', '0', 3),
(4, 'CT002', 'SC001', 'SC004', '0', 4),
(4, 'CT002', 'SC001', 'SC005', '0', 5),
(4, 'CT002', 'SC001', 'SC006', '0', 6),
(4, 'CT002', 'SC002', 'SC002', '0', 1),
(4, 'CT002', 'SC002', 'SC003', '0', 4),
(4, 'CT002', 'SC002', 'SC004', '0', 3),
(4, 'CT002', 'SC002', 'SC005', '0', 4),
(4, 'CT002', 'SC002', 'SC006', '0', 5),
(4, 'CT002', 'SC003', 'SC003', '0', 1),
(4, 'CT002', 'SC003', 'SC004', '0', 2),
(4, 'CT002', 'SC003', 'SC005', '0', 3),
(4, 'CT002', 'SC003', 'SC006', '0', 4),
(4, 'CT002', 'SC004', 'SC004', '0', 1),
(4, 'CT002', 'SC004', 'SC005', '0', 2),
(4, 'CT002', 'SC004', 'SC006', '0', 3),
(4, 'CT002', 'SC005', 'SC005', '0', 1),
(4, 'CT002', 'SC005', 'SC006', '0', 2),
(4, 'CT002', 'SC006', 'SC006', '0', 1),
(4, 'CT003', 'SC007', 'SC007', '0', 1),
(4, 'CT003', 'SC007', 'SC008', '0', 2),
(4, 'CT003', 'SC007', 'SC009', '0', 3),
(4, 'CT003', 'SC007', 'SC010', '0', 4),
(4, 'CT003', 'SC007', 'SC011', '0', 5),
(4, 'CT003', 'SC007', 'SC012', '0', 6),
(4, 'CT003', 'SC008', 'SC008', '0', 1),
(4, 'CT003', 'SC008', 'SC009', '0', 4),
(4, 'CT003', 'SC008', 'SC010', '0', 3),
(4, 'CT003', 'SC008', 'SC011', '0', 4),
(4, 'CT003', 'SC008', 'SC012', '0', 5),
(4, 'CT003', 'SC009', 'SC009', '0', 1),
(4, 'CT003', 'SC009', 'SC010', '0', 2),
(4, 'CT003', 'SC009', 'SC011', '0', 3),
(4, 'CT003', 'SC009', 'SC012', '0', 4),
(4, 'CT003', 'SC010', 'SC010', '0', 1),
(4, 'CT003', 'SC010', 'SC011', '0', 2),
(4, 'CT003', 'SC010', 'SC012', '0', 3),
(4, 'CT003', 'SC011', 'SC011', '0', 1),
(4, 'CT003', 'SC011', 'SC012', '0', 2),
(4, 'CT003', 'SC012', 'SC012', '0', 1),
(4, 'CT004', 'SC013', 'SC013', '0', 1),
(4, 'CT004', 'SC013', 'SC014', '0', 2),
(4, 'CT004', 'SC013', 'SC015', '0', 3),
(4, 'CT004', 'SC013', 'SC016', '0', 6),
(4, 'CT004', 'SC014', 'SC014', '0', 1),
(4, 'CT004', 'SC014', 'SC015', '0', 2),
(4, 'CT004', 'SC014', 'SC016', '0', 4),
(4, 'CT004', 'SC015', 'SC015', '0', 1),
(4, 'CT004', 'SC015', 'SC016', '0', 2),
(4, 'CT004', 'SC016', 'SC016', '0', 1),
(4, 'CT001', 'SC017', 'SC017', '0', 1),
(4, 'CT001', 'SC017', 'SC018', '1', 2),
(4, 'CT001', 'SC017', 'SC019', '1', 2),
(4, 'CT001', 'SC017', 'SC020', '1', 5),
(4, 'CT001', 'SC018', 'SC018', '0', 1),
(4, 'CT001', 'SC018', 'SC019', '1', 2),
(4, 'CT001', 'SC018', 'SC020', '1', 2),
(4, 'CT001', 'SC019', 'SC019', '0', 1),
(4, 'CT001', 'SC019', 'SC020', '1', 4),
(4, 'CT001', 'SC020', 'SC020', '0', 1),
(1, 'CT001', 'SC017', 'SC017', '0', 1),
(1, 'CT001', 'SC017', 'SC018', '0', 3),
(1, 'CT001', 'SC017', 'SC019', '0', 4),
(1, 'CT001', 'SC017', 'SC020', '0', 5),
(1, 'CT001', 'SC018', 'SC018', '0', 1),
(1, 'CT001', 'SC018', 'SC019', '0', 3),
(1, 'CT001', 'SC018', 'SC020', '0', 4),
(1, 'CT001', 'SC019', 'SC019', '0', 1),
(1, 'CT001', 'SC019', 'SC020', '1', 2),
(1, 'CT001', 'SC020', 'SC020', '0', 1),
(1, 'CT002', 'SC001', 'SC001', '0', 1),
(1, 'CT002', 'SC001', 'SC002', '0', 3),
(1, 'CT002', 'SC001', 'SC003', '1', 2),
(1, 'CT002', 'SC001', 'SC004', '1', 3),
(1, 'CT002', 'SC001', 'SC005', '1', 2),
(1, 'CT002', 'SC001', 'SC006', '1', 2),
(1, 'CT002', 'SC002', 'SC002', '0', 1),
(1, 'CT002', 'SC002', 'SC003', '1', 2),
(1, 'CT002', 'SC002', 'SC004', '1', 3),
(1, 'CT002', 'SC002', 'SC005', '1', 3),
(1, 'CT002', 'SC002', 'SC006', '1', 4),
(1, 'CT002', 'SC003', 'SC003', '0', 1),
(1, 'CT002', 'SC003', 'SC004', '1', 2),
(1, 'CT002', 'SC003', 'SC005', '1', 2),
(1, 'CT002', 'SC003', 'SC006', '1', 5),
(1, 'CT002', 'SC004', 'SC004', '0', 1),
(1, 'CT002', 'SC004', 'SC005', '1', 2),
(1, 'CT002', 'SC004', 'SC006', '1', 3),
(1, 'CT002', 'SC005', 'SC005', '0', 1),
(1, 'CT002', 'SC005', 'SC006', '0', 1),
(1, 'CT002', 'SC006', 'SC006', '0', 1),
(1, 'CT003', 'SC007', 'SC007', '0', 1),
(1, 'CT003', 'SC007', 'SC008', '0', 3),
(1, 'CT003', 'SC007', 'SC009', '0', 3),
(1, 'CT003', 'SC007', 'SC010', '0', 4),
(1, 'CT003', 'SC007', 'SC011', '0', 5),
(1, 'CT003', 'SC007', 'SC012', '0', 6),
(1, 'CT003', 'SC008', 'SC008', '0', 1),
(1, 'CT003', 'SC008', 'SC009', '0', 2),
(1, 'CT003', 'SC008', 'SC010', '0', 3),
(1, 'CT003', 'SC008', 'SC011', '0', 4),
(1, 'CT003', 'SC008', 'SC012', '0', 5),
(1, 'CT003', 'SC009', 'SC009', '0', 1),
(1, 'CT003', 'SC009', 'SC010', '0', 2),
(1, 'CT003', 'SC009', 'SC011', '0', 3),
(1, 'CT003', 'SC009', 'SC012', '0', 4),
(1, 'CT003', 'SC010', 'SC010', '0', 1),
(1, 'CT003', 'SC010', 'SC011', '0', 2),
(1, 'CT003', 'SC010', 'SC012', '0', 3),
(1, 'CT003', 'SC011', 'SC011', '0', 1),
(1, 'CT003', 'SC011', 'SC012', '1', 3),
(1, 'CT003', 'SC012', 'SC012', '0', 1),
(1, 'CT004', 'SC013', 'SC013', '0', 1),
(1, 'CT004', 'SC013', 'SC014', '0', 2),
(1, 'CT004', 'SC013', 'SC015', '0', 3),
(1, 'CT004', 'SC013', 'SC016', '1', 2),
(1, 'CT004', 'SC014', 'SC014', '0', 1),
(1, 'CT004', 'SC014', 'SC015', '0', 2),
(1, 'CT004', 'SC014', 'SC016', '1', 2),
(1, 'CT004', 'SC015', 'SC015', '0', 1),
(1, 'CT004', 'SC015', 'SC016', '0', 1),
(1, 'CT004', 'SC016', 'SC016', '0', 1),
(2, 'CT001', 'SC017', 'SC017', '0', 1),
(2, 'CT001', 'SC017', 'SC018', '1', 2),
(2, 'CT001', 'SC017', 'SC019', '1', 3),
(2, 'CT001', 'SC017', 'SC020', '1', 7),
(2, 'CT001', 'SC018', 'SC018', '0', 1),
(2, 'CT001', 'SC018', 'SC019', '1', 2),
(2, 'CT001', 'SC018', 'SC020', '1', 5),
(2, 'CT001', 'SC019', 'SC019', '0', 1),
(2, 'CT001', 'SC019', 'SC020', '1', 6),
(2, 'CT001', 'SC020', 'SC020', '0', 1),
(2, 'CT002', 'SC001', 'SC001', '0', 1),
(2, 'CT002', 'SC001', 'SC002', '0', 1),
(2, 'CT002', 'SC001', 'SC003', '0', 1),
(2, 'CT002', 'SC001', 'SC004', '0', 1),
(2, 'CT002', 'SC001', 'SC005', '0', 1),
(2, 'CT002', 'SC001', 'SC006', '0', 1),
(2, 'CT002', 'SC002', 'SC002', '0', 1),
(2, 'CT002', 'SC002', 'SC003', '0', 1),
(2, 'CT002', 'SC002', 'SC004', '0', 1),
(2, 'CT002', 'SC002', 'SC005', '0', 1),
(2, 'CT002', 'SC002', 'SC006', '0', 1),
(2, 'CT002', 'SC003', 'SC003', '0', 1),
(2, 'CT002', 'SC003', 'SC004', '0', 1),
(2, 'CT002', 'SC003', 'SC005', '0', 1),
(2, 'CT002', 'SC003', 'SC006', '0', 1),
(2, 'CT002', 'SC004', 'SC004', '0', 1),
(2, 'CT002', 'SC004', 'SC005', '0', 1),
(2, 'CT002', 'SC004', 'SC006', '0', 1),
(2, 'CT002', 'SC005', 'SC005', '0', 1),
(2, 'CT002', 'SC005', 'SC006', '0', 1),
(2, 'CT002', 'SC006', 'SC006', '0', 1),
(2, 'CT003', 'SC007', 'SC007', '0', 1),
(2, 'CT003', 'SC007', 'SC008', '0', 1),
(2, 'CT003', 'SC007', 'SC009', '0', 1),
(2, 'CT003', 'SC007', 'SC010', '0', 1),
(2, 'CT003', 'SC007', 'SC011', '0', 1),
(2, 'CT003', 'SC007', 'SC012', '0', 1),
(2, 'CT003', 'SC008', 'SC008', '0', 1),
(2, 'CT003', 'SC008', 'SC009', '0', 1),
(2, 'CT003', 'SC008', 'SC010', '0', 1),
(2, 'CT003', 'SC008', 'SC011', '0', 1),
(2, 'CT003', 'SC008', 'SC012', '0', 1),
(2, 'CT003', 'SC009', 'SC009', '0', 1),
(2, 'CT003', 'SC009', 'SC010', '0', 1),
(2, 'CT003', 'SC009', 'SC011', '0', 1),
(2, 'CT003', 'SC009', 'SC012', '0', 1),
(2, 'CT003', 'SC010', 'SC010', '0', 1),
(2, 'CT003', 'SC010', 'SC011', '0', 1),
(2, 'CT003', 'SC010', 'SC012', '0', 1),
(2, 'CT003', 'SC011', 'SC011', '0', 1),
(2, 'CT003', 'SC011', 'SC012', '0', 1),
(2, 'CT003', 'SC012', 'SC012', '0', 1),
(2, 'CT004', 'SC013', 'SC013', '0', 1),
(2, 'CT004', 'SC013', 'SC014', '1', 2),
(2, 'CT004', 'SC013', 'SC015', '1', 4),
(2, 'CT004', 'SC013', 'SC016', '1', 4),
(2, 'CT004', 'SC014', 'SC014', '0', 1),
(2, 'CT004', 'SC014', 'SC015', '1', 2),
(2, 'CT004', 'SC014', 'SC016', '1', 3),
(2, 'CT004', 'SC015', 'SC015', '0', 1),
(2, 'CT004', 'SC015', 'SC016', '1', 2),
(2, 'CT004', 'SC016', 'SC016', '0', 1),
(1, 'CT005', 'SC021', 'SC021', '0', 1),
(1, 'CT005', 'SC021', 'SC022', '1', 3),
(1, 'CT005', 'SC021', 'SC023', '1', 3),
(1, 'CT005', 'SC021', 'SC024', '1', 3),
(1, 'CT005', 'SC021', 'SC025', '0', 1),
(1, 'CT005', 'SC021', 'SC026', '0', 1),
(1, 'CT005', 'SC021', 'SC027', '0', 1),
(1, 'CT005', 'SC021', 'SC028', '0', 1),
(1, 'CT005', 'SC021', 'SC029', '0', 1),
(1, 'CT005', 'SC021', 'SC030', '0', 1),
(1, 'CT005', 'SC021', 'SC031', '0', 1),
(1, 'CT005', 'SC021', 'SC032', '0', 1),
(1, 'CT005', 'SC021', 'SC033', '0', 1),
(1, 'CT005', 'SC021', 'SC034', '0', 1),
(1, 'CT005', 'SC021', 'SC035', '0', 1),
(1, 'CT005', 'SC021', 'SC036', '0', 1),
(1, 'CT005', 'SC022', 'SC022', '0', 1),
(1, 'CT005', 'SC022', 'SC023', '1', 3),
(1, 'CT005', 'SC022', 'SC024', '1', 3),
(1, 'CT005', 'SC022', 'SC025', '0', 1),
(1, 'CT005', 'SC022', 'SC026', '0', 1),
(1, 'CT005', 'SC022', 'SC027', '0', 1),
(1, 'CT005', 'SC022', 'SC028', '0', 1),
(1, 'CT005', 'SC022', 'SC029', '0', 1),
(1, 'CT005', 'SC022', 'SC030', '0', 1),
(1, 'CT005', 'SC022', 'SC031', '0', 1),
(1, 'CT005', 'SC022', 'SC032', '0', 1),
(1, 'CT005', 'SC022', 'SC033', '0', 1),
(1, 'CT005', 'SC022', 'SC034', '0', 1),
(1, 'CT005', 'SC022', 'SC035', '0', 1),
(1, 'CT005', 'SC022', 'SC036', '0', 1),
(1, 'CT005', 'SC023', 'SC023', '0', 1),
(1, 'CT005', 'SC023', 'SC024', '0', 3),
(1, 'CT005', 'SC023', 'SC025', '0', 1),
(1, 'CT005', 'SC023', 'SC026', '0', 1),
(1, 'CT005', 'SC023', 'SC027', '0', 1),
(1, 'CT005', 'SC023', 'SC028', '0', 1),
(1, 'CT005', 'SC023', 'SC029', '0', 1),
(1, 'CT005', 'SC023', 'SC030', '0', 1),
(1, 'CT005', 'SC023', 'SC031', '0', 1),
(1, 'CT005', 'SC023', 'SC032', '0', 1),
(1, 'CT005', 'SC023', 'SC033', '0', 1),
(1, 'CT005', 'SC023', 'SC034', '0', 1),
(1, 'CT005', 'SC023', 'SC035', '0', 1),
(1, 'CT005', 'SC023', 'SC036', '0', 1),
(1, 'CT005', 'SC024', 'SC024', '0', 1),
(1, 'CT005', 'SC024', 'SC025', '0', 1),
(1, 'CT005', 'SC024', 'SC026', '0', 1),
(1, 'CT005', 'SC024', 'SC027', '0', 1),
(1, 'CT005', 'SC024', 'SC028', '0', 1),
(1, 'CT005', 'SC024', 'SC029', '0', 1),
(1, 'CT005', 'SC024', 'SC030', '0', 1),
(1, 'CT005', 'SC024', 'SC031', '0', 1),
(1, 'CT005', 'SC024', 'SC032', '0', 1),
(1, 'CT005', 'SC024', 'SC033', '0', 1),
(1, 'CT005', 'SC024', 'SC034', '0', 1),
(1, 'CT005', 'SC024', 'SC035', '0', 1),
(1, 'CT005', 'SC024', 'SC036', '0', 1),
(1, 'CT005', 'SC025', 'SC025', '0', 1),
(1, 'CT005', 'SC025', 'SC026', '1', 3),
(1, 'CT005', 'SC025', 'SC027', '1', 3),
(1, 'CT005', 'SC025', 'SC028', '0', 2),
(1, 'CT005', 'SC025', 'SC029', '1', 3),
(1, 'CT005', 'SC025', 'SC030', '1', 3),
(1, 'CT005', 'SC025', 'SC031', '0', 1),
(1, 'CT005', 'SC025', 'SC032', '0', 1),
(1, 'CT005', 'SC025', 'SC033', '0', 1),
(1, 'CT005', 'SC025', 'SC034', '0', 1),
(1, 'CT005', 'SC025', 'SC035', '0', 1),
(1, 'CT005', 'SC025', 'SC036', '0', 1),
(1, 'CT005', 'SC026', 'SC026', '0', 1),
(1, 'CT005', 'SC026', 'SC027', '1', 2),
(1, 'CT005', 'SC026', 'SC028', '0', 2),
(1, 'CT005', 'SC026', 'SC029', '0', 2),
(1, 'CT005', 'SC026', 'SC030', '1', 2),
(1, 'CT005', 'SC026', 'SC031', '0', 1),
(1, 'CT005', 'SC026', 'SC032', '0', 1),
(1, 'CT005', 'SC026', 'SC033', '0', 1),
(1, 'CT005', 'SC026', 'SC034', '0', 1),
(1, 'CT005', 'SC026', 'SC035', '0', 1),
(1, 'CT005', 'SC026', 'SC036', '0', 1),
(1, 'CT005', 'SC027', 'SC027', '0', 1),
(1, 'CT005', 'SC027', 'SC028', '0', 2),
(1, 'CT005', 'SC027', 'SC029', '1', 2),
(1, 'CT005', 'SC027', 'SC030', '1', 3),
(1, 'CT005', 'SC027', 'SC031', '0', 1),
(1, 'CT005', 'SC027', 'SC032', '0', 1),
(1, 'CT005', 'SC027', 'SC033', '0', 1),
(1, 'CT005', 'SC027', 'SC034', '0', 1),
(1, 'CT005', 'SC027', 'SC035', '0', 1),
(1, 'CT005', 'SC027', 'SC036', '0', 1),
(1, 'CT005', 'SC028', 'SC028', '0', 1),
(1, 'CT005', 'SC028', 'SC029', '1', 3),
(1, 'CT005', 'SC028', 'SC030', '1', 3),
(1, 'CT005', 'SC028', 'SC031', '0', 1),
(1, 'CT005', 'SC028', 'SC032', '0', 1),
(1, 'CT005', 'SC028', 'SC033', '0', 1),
(1, 'CT005', 'SC028', 'SC034', '0', 1),
(1, 'CT005', 'SC028', 'SC035', '0', 1),
(1, 'CT005', 'SC028', 'SC036', '0', 1),
(1, 'CT005', 'SC029', 'SC029', '0', 1),
(1, 'CT005', 'SC029', 'SC030', '1', 2),
(1, 'CT005', 'SC029', 'SC031', '0', 1),
(1, 'CT005', 'SC029', 'SC032', '0', 1),
(1, 'CT005', 'SC029', 'SC033', '0', 1),
(1, 'CT005', 'SC029', 'SC034', '0', 1),
(1, 'CT005', 'SC029', 'SC035', '0', 1),
(1, 'CT005', 'SC029', 'SC036', '0', 1),
(1, 'CT005', 'SC030', 'SC030', '0', 1),
(1, 'CT005', 'SC030', 'SC031', '0', 1),
(1, 'CT005', 'SC030', 'SC032', '0', 1),
(1, 'CT005', 'SC030', 'SC033', '0', 1),
(1, 'CT005', 'SC030', 'SC034', '0', 1),
(1, 'CT005', 'SC030', 'SC035', '0', 1),
(1, 'CT005', 'SC030', 'SC036', '0', 1),
(1, 'CT005', 'SC031', 'SC031', '0', 1),
(1, 'CT005', 'SC031', 'SC032', '0', 3),
(1, 'CT005', 'SC031', 'SC033', '0', 1),
(1, 'CT005', 'SC031', 'SC034', '0', 1),
(1, 'CT005', 'SC031', 'SC035', '0', 1),
(1, 'CT005', 'SC031', 'SC036', '0', 1),
(1, 'CT005', 'SC032', 'SC032', '0', 1),
(1, 'CT005', 'SC032', 'SC033', '0', 1),
(1, 'CT005', 'SC032', 'SC034', '0', 1),
(1, 'CT005', 'SC032', 'SC035', '0', 1),
(1, 'CT005', 'SC032', 'SC036', '0', 1),
(1, 'CT005', 'SC033', 'SC033', '0', 1),
(1, 'CT005', 'SC033', 'SC034', '1', 2),
(1, 'CT005', 'SC033', 'SC035', '1', 2),
(1, 'CT005', 'SC033', 'SC036', '1', 3),
(1, 'CT005', 'SC034', 'SC034', '0', 1),
(1, 'CT005', 'SC034', 'SC035', '0', 3),
(1, 'CT005', 'SC034', 'SC036', '1', 3),
(1, 'CT005', 'SC035', 'SC035', '0', 1),
(1, 'CT005', 'SC035', 'SC036', '0', 4),
(1, 'CT005', 'SC036', 'SC036', '0', 1),
(1, 'CT006', 'SC037', 'SC037', '0', 1),
(1, 'CT006', 'SC037', 'SC038', '1', 2),
(1, 'CT006', 'SC037', 'SC039', '1', 3),
(1, 'CT006', 'SC037', 'SC040', '0', 3),
(1, 'CT006', 'SC037', 'SC041', '0', 3),
(1, 'CT006', 'SC037', 'SC042', '0', 4),
(1, 'CT006', 'SC037', 'SC043', '0', 4),
(1, 'CT006', 'SC037', 'SC044', '0', 4),
(1, 'CT006', 'SC038', 'SC038', '0', 1),
(1, 'CT006', 'SC038', 'SC039', '1', 2),
(1, 'CT006', 'SC038', 'SC040', '0', 3),
(1, 'CT006', 'SC038', 'SC041', '0', 4),
(1, 'CT006', 'SC038', 'SC042', '0', 3),
(1, 'CT006', 'SC038', 'SC043', '0', 4),
(1, 'CT006', 'SC038', 'SC044', '0', 4),
(1, 'CT006', 'SC039', 'SC039', '0', 1),
(1, 'CT006', 'SC039', 'SC040', '0', 2),
(1, 'CT006', 'SC039', 'SC041', '0', 3),
(1, 'CT006', 'SC039', 'SC042', '0', 3),
(1, 'CT006', 'SC039', 'SC043', '0', 4),
(1, 'CT006', 'SC039', 'SC044', '0', 4),
(1, 'CT006', 'SC040', 'SC040', '0', 1),
(1, 'CT006', 'SC040', 'SC041', '0', 2),
(1, 'CT006', 'SC040', 'SC042', '0', 3),
(1, 'CT006', 'SC040', 'SC043', '0', 3),
(1, 'CT006', 'SC040', 'SC044', '0', 3),
(1, 'CT006', 'SC041', 'SC041', '0', 1),
(1, 'CT006', 'SC041', 'SC042', '0', 2),
(1, 'CT006', 'SC041', 'SC043', '0', 2),
(1, 'CT006', 'SC041', 'SC044', '0', 2),
(1, 'CT006', 'SC042', 'SC042', '0', 1),
(1, 'CT006', 'SC042', 'SC043', '0', 2),
(1, 'CT006', 'SC042', 'SC044', '0', 2),
(1, 'CT006', 'SC043', 'SC043', '0', 1),
(1, 'CT006', 'SC043', 'SC044', '0', 2),
(1, 'CT006', 'SC044', 'SC044', '0', 1),
(1, 'CT007', 'SC045', 'SC045', '0', 1),
(1, 'CT007', 'SC045', 'SC046', '1', 3),
(1, 'CT007', 'SC045', 'SC047', '1', 4),
(1, 'CT007', 'SC045', 'SC048', '1', 2),
(1, 'CT007', 'SC045', 'SC049', '1', 4),
(1, 'CT007', 'SC045', 'SC050', '0', 2),
(1, 'CT007', 'SC045', 'SC051', '0', 2),
(1, 'CT007', 'SC045', 'SC052', '0', 2),
(1, 'CT007', 'SC046', 'SC046', '0', 1),
(1, 'CT007', 'SC046', 'SC047', '1', 3),
(1, 'CT007', 'SC046', 'SC048', '1', 2),
(1, 'CT007', 'SC046', 'SC049', '1', 2),
(1, 'CT007', 'SC046', 'SC050', '0', 2),
(1, 'CT007', 'SC046', 'SC051', '0', 2),
(1, 'CT007', 'SC046', 'SC052', '0', 3),
(1, 'CT007', 'SC047', 'SC047', '0', 1),
(1, 'CT007', 'SC047', 'SC048', '0', 2),
(1, 'CT007', 'SC047', 'SC049', '0', 2),
(1, 'CT007', 'SC047', 'SC050', '0', 4),
(1, 'CT007', 'SC047', 'SC051', '0', 4),
(1, 'CT007', 'SC047', 'SC052', '0', 3),
(1, 'CT007', 'SC048', 'SC048', '0', 1),
(1, 'CT007', 'SC048', 'SC049', '0', 2),
(1, 'CT007', 'SC048', 'SC050', '0', 4),
(1, 'CT007', 'SC048', 'SC051', '0', 3),
(1, 'CT007', 'SC048', 'SC052', '0', 2),
(1, 'CT007', 'SC049', 'SC049', '0', 1),
(1, 'CT007', 'SC049', 'SC050', '0', 3),
(1, 'CT007', 'SC049', 'SC051', '0', 3),
(1, 'CT007', 'SC049', 'SC052', '0', 3),
(1, 'CT007', 'SC050', 'SC050', '0', 1),
(1, 'CT007', 'SC050', 'SC051', '1', 2),
(1, 'CT007', 'SC050', 'SC052', '1', 2),
(1, 'CT007', 'SC051', 'SC051', '0', 1),
(1, 'CT007', 'SC051', 'SC052', '0', 3),
(1, 'CT007', 'SC052', 'SC052', '0', 1),
(2, 'CT005', 'SC021', 'SC021', '0', 1),
(2, 'CT005', 'SC021', 'SC022', '0', 3),
(2, 'CT005', 'SC021', 'SC023', '0', 3),
(2, 'CT005', 'SC021', 'SC024', '0', 3),
(2, 'CT005', 'SC021', 'SC025', '0', 1),
(2, 'CT005', 'SC021', 'SC026', '0', 1),
(2, 'CT005', 'SC021', 'SC027', '0', 1),
(2, 'CT005', 'SC021', 'SC028', '0', 1),
(2, 'CT005', 'SC021', 'SC029', '0', 1),
(2, 'CT005', 'SC021', 'SC030', '0', 1),
(2, 'CT005', 'SC021', 'SC031', '0', 1),
(2, 'CT005', 'SC021', 'SC032', '0', 1),
(2, 'CT005', 'SC021', 'SC033', '0', 1),
(2, 'CT005', 'SC021', 'SC034', '0', 1),
(2, 'CT005', 'SC021', 'SC035', '0', 1),
(2, 'CT005', 'SC021', 'SC036', '0', 1),
(2, 'CT005', 'SC022', 'SC022', '0', 1),
(2, 'CT005', 'SC022', 'SC023', '0', 2),
(2, 'CT005', 'SC022', 'SC024', '0', 2),
(2, 'CT005', 'SC022', 'SC025', '0', 1),
(2, 'CT005', 'SC022', 'SC026', '0', 1),
(2, 'CT005', 'SC022', 'SC027', '0', 1),
(2, 'CT005', 'SC022', 'SC028', '0', 1),
(2, 'CT005', 'SC022', 'SC029', '0', 1),
(2, 'CT005', 'SC022', 'SC030', '0', 1),
(2, 'CT005', 'SC022', 'SC031', '0', 1),
(2, 'CT005', 'SC022', 'SC032', '0', 1),
(2, 'CT005', 'SC022', 'SC033', '0', 1),
(2, 'CT005', 'SC022', 'SC034', '0', 1),
(2, 'CT005', 'SC022', 'SC035', '0', 1),
(2, 'CT005', 'SC022', 'SC036', '0', 1),
(2, 'CT005', 'SC023', 'SC023', '0', 1),
(2, 'CT005', 'SC023', 'SC024', '0', 3),
(2, 'CT005', 'SC023', 'SC025', '0', 1),
(2, 'CT005', 'SC023', 'SC026', '0', 1),
(2, 'CT005', 'SC023', 'SC027', '0', 1),
(2, 'CT005', 'SC023', 'SC028', '0', 1),
(2, 'CT005', 'SC023', 'SC029', '0', 1),
(2, 'CT005', 'SC023', 'SC030', '0', 1),
(2, 'CT005', 'SC023', 'SC031', '0', 1),
(2, 'CT005', 'SC023', 'SC032', '0', 1),
(2, 'CT005', 'SC023', 'SC033', '0', 1),
(2, 'CT005', 'SC023', 'SC034', '0', 1),
(2, 'CT005', 'SC023', 'SC035', '0', 1),
(2, 'CT005', 'SC023', 'SC036', '0', 1),
(2, 'CT005', 'SC024', 'SC024', '0', 1),
(2, 'CT005', 'SC024', 'SC025', '0', 1),
(2, 'CT005', 'SC024', 'SC026', '0', 1),
(2, 'CT005', 'SC024', 'SC027', '0', 1),
(2, 'CT005', 'SC024', 'SC028', '0', 1),
(2, 'CT005', 'SC024', 'SC029', '0', 1),
(2, 'CT005', 'SC024', 'SC030', '0', 1),
(2, 'CT005', 'SC024', 'SC031', '0', 1),
(2, 'CT005', 'SC024', 'SC032', '0', 1),
(2, 'CT005', 'SC024', 'SC033', '0', 1),
(2, 'CT005', 'SC024', 'SC034', '0', 1),
(2, 'CT005', 'SC024', 'SC035', '0', 1),
(2, 'CT005', 'SC024', 'SC036', '0', 1),
(2, 'CT005', 'SC025', 'SC025', '0', 1),
(2, 'CT005', 'SC025', 'SC026', '0', 4),
(2, 'CT005', 'SC025', 'SC027', '0', 3),
(2, 'CT005', 'SC025', 'SC028', '0', 2),
(2, 'CT005', 'SC025', 'SC029', '0', 3),
(2, 'CT005', 'SC025', 'SC030', '0', 2),
(2, 'CT005', 'SC025', 'SC031', '0', 1),
(2, 'CT005', 'SC025', 'SC032', '0', 1),
(2, 'CT005', 'SC025', 'SC033', '0', 1),
(2, 'CT005', 'SC025', 'SC034', '0', 1),
(2, 'CT005', 'SC025', 'SC035', '0', 1),
(2, 'CT005', 'SC025', 'SC036', '0', 1),
(2, 'CT005', 'SC026', 'SC026', '0', 1),
(2, 'CT005', 'SC026', 'SC027', '1', 2),
(2, 'CT005', 'SC026', 'SC028', '1', 3),
(2, 'CT005', 'SC026', 'SC029', '0', 1),
(2, 'CT005', 'SC026', 'SC030', '1', 2),
(2, 'CT005', 'SC026', 'SC031', '0', 1),
(2, 'CT005', 'SC026', 'SC032', '0', 1),
(2, 'CT005', 'SC026', 'SC033', '0', 1),
(2, 'CT005', 'SC026', 'SC034', '0', 1),
(2, 'CT005', 'SC026', 'SC035', '0', 1),
(2, 'CT005', 'SC026', 'SC036', '0', 1),
(2, 'CT005', 'SC027', 'SC027', '0', 1),
(2, 'CT005', 'SC027', 'SC028', '1', 3),
(2, 'CT005', 'SC027', 'SC029', '0', 1),
(2, 'CT005', 'SC027', 'SC030', '1', 2),
(2, 'CT005', 'SC027', 'SC031', '0', 1),
(2, 'CT005', 'SC027', 'SC032', '0', 1),
(2, 'CT005', 'SC027', 'SC033', '0', 1),
(2, 'CT005', 'SC027', 'SC034', '0', 1),
(2, 'CT005', 'SC027', 'SC035', '0', 1),
(2, 'CT005', 'SC027', 'SC036', '0', 1),
(2, 'CT005', 'SC028', 'SC028', '0', 1),
(2, 'CT005', 'SC028', 'SC029', '0', 3),
(2, 'CT005', 'SC028', 'SC030', '0', 2),
(2, 'CT005', 'SC028', 'SC031', '0', 1),
(2, 'CT005', 'SC028', 'SC032', '0', 1),
(2, 'CT005', 'SC028', 'SC033', '0', 1),
(2, 'CT005', 'SC028', 'SC034', '0', 1),
(2, 'CT005', 'SC028', 'SC035', '0', 1),
(2, 'CT005', 'SC028', 'SC036', '0', 1),
(2, 'CT005', 'SC029', 'SC029', '0', 1),
(2, 'CT005', 'SC029', 'SC030', '1', 3),
(2, 'CT005', 'SC029', 'SC031', '0', 1),
(2, 'CT005', 'SC029', 'SC032', '0', 1),
(2, 'CT005', 'SC029', 'SC033', '0', 1),
(2, 'CT005', 'SC029', 'SC034', '0', 1),
(2, 'CT005', 'SC029', 'SC035', '0', 1),
(2, 'CT005', 'SC029', 'SC036', '0', 1),
(2, 'CT005', 'SC030', 'SC030', '0', 1),
(2, 'CT005', 'SC030', 'SC031', '0', 1),
(2, 'CT005', 'SC030', 'SC032', '0', 1),
(2, 'CT005', 'SC030', 'SC033', '0', 1),
(2, 'CT005', 'SC030', 'SC034', '0', 1),
(2, 'CT005', 'SC030', 'SC035', '0', 1),
(2, 'CT005', 'SC030', 'SC036', '0', 1),
(2, 'CT005', 'SC031', 'SC031', '0', 1),
(2, 'CT005', 'SC031', 'SC032', '0', 3),
(2, 'CT005', 'SC031', 'SC033', '0', 1),
(2, 'CT005', 'SC031', 'SC034', '0', 1),
(2, 'CT005', 'SC031', 'SC035', '0', 1),
(2, 'CT005', 'SC031', 'SC036', '0', 1),
(2, 'CT005', 'SC032', 'SC032', '0', 1),
(2, 'CT005', 'SC032', 'SC033', '0', 1),
(2, 'CT005', 'SC032', 'SC034', '0', 1),
(2, 'CT005', 'SC032', 'SC035', '0', 1),
(2, 'CT005', 'SC032', 'SC036', '0', 1),
(2, 'CT005', 'SC033', 'SC033', '0', 1),
(2, 'CT005', 'SC033', 'SC034', '0', 2),
(2, 'CT005', 'SC033', 'SC035', '0', 3),
(2, 'CT005', 'SC033', 'SC036', '0', 3),
(2, 'CT005', 'SC034', 'SC034', '0', 1),
(2, 'CT005', 'SC034', 'SC035', '0', 2),
(2, 'CT005', 'SC034', 'SC036', '0', 2),
(2, 'CT005', 'SC035', 'SC035', '0', 1),
(2, 'CT005', 'SC035', 'SC036', '0', 2),
(2, 'CT005', 'SC036', 'SC036', '0', 1),
(2, 'CT006', 'SC037', 'SC037', '0', 1),
(2, 'CT006', 'SC037', 'SC038', '0', 1),
(2, 'CT006', 'SC037', 'SC039', '0', 1),
(2, 'CT006', 'SC037', 'SC040', '0', 1),
(2, 'CT006', 'SC037', 'SC041', '0', 1),
(2, 'CT006', 'SC037', 'SC042', '0', 1),
(2, 'CT006', 'SC037', 'SC043', '0', 1),
(2, 'CT006', 'SC037', 'SC044', '0', 1),
(2, 'CT006', 'SC038', 'SC038', '0', 1),
(2, 'CT006', 'SC038', 'SC039', '0', 1),
(2, 'CT006', 'SC038', 'SC040', '0', 1),
(2, 'CT006', 'SC038', 'SC041', '0', 1),
(2, 'CT006', 'SC038', 'SC042', '0', 1),
(2, 'CT006', 'SC038', 'SC043', '0', 1),
(2, 'CT006', 'SC038', 'SC044', '0', 1),
(2, 'CT006', 'SC039', 'SC039', '0', 1),
(2, 'CT006', 'SC039', 'SC040', '0', 1),
(2, 'CT006', 'SC039', 'SC041', '0', 1),
(2, 'CT006', 'SC039', 'SC042', '0', 1),
(2, 'CT006', 'SC039', 'SC043', '0', 1),
(2, 'CT006', 'SC039', 'SC044', '0', 1),
(2, 'CT006', 'SC040', 'SC040', '0', 1),
(2, 'CT006', 'SC040', 'SC041', '0', 1),
(2, 'CT006', 'SC040', 'SC042', '0', 1),
(2, 'CT006', 'SC040', 'SC043', '0', 1),
(2, 'CT006', 'SC040', 'SC044', '0', 1),
(2, 'CT006', 'SC041', 'SC041', '0', 1),
(2, 'CT006', 'SC041', 'SC042', '0', 1),
(2, 'CT006', 'SC041', 'SC043', '0', 1),
(2, 'CT006', 'SC041', 'SC044', '0', 1),
(2, 'CT006', 'SC042', 'SC042', '0', 1),
(2, 'CT006', 'SC042', 'SC043', '0', 1),
(2, 'CT006', 'SC042', 'SC044', '0', 1),
(2, 'CT006', 'SC043', 'SC043', '0', 1),
(2, 'CT006', 'SC043', 'SC044', '0', 1),
(2, 'CT006', 'SC044', 'SC044', '0', 1),
(2, 'CT007', 'SC045', 'SC045', '0', 1),
(2, 'CT007', 'SC045', 'SC046', '0', 1),
(2, 'CT007', 'SC045', 'SC047', '0', 1),
(2, 'CT007', 'SC045', 'SC048', '0', 1),
(2, 'CT007', 'SC045', 'SC049', '0', 1),
(2, 'CT007', 'SC045', 'SC050', '0', 1),
(2, 'CT007', 'SC045', 'SC051', '0', 1),
(2, 'CT007', 'SC045', 'SC052', '0', 1),
(2, 'CT007', 'SC046', 'SC046', '0', 1),
(2, 'CT007', 'SC046', 'SC047', '0', 1),
(2, 'CT007', 'SC046', 'SC048', '0', 1),
(2, 'CT007', 'SC046', 'SC049', '0', 1),
(2, 'CT007', 'SC046', 'SC050', '0', 1),
(2, 'CT007', 'SC046', 'SC051', '0', 1),
(2, 'CT007', 'SC046', 'SC052', '0', 1),
(2, 'CT007', 'SC047', 'SC047', '0', 1),
(2, 'CT007', 'SC047', 'SC048', '0', 1),
(2, 'CT007', 'SC047', 'SC049', '0', 1),
(2, 'CT007', 'SC047', 'SC050', '0', 1),
(2, 'CT007', 'SC047', 'SC051', '0', 1),
(2, 'CT007', 'SC047', 'SC052', '0', 1),
(2, 'CT007', 'SC048', 'SC048', '0', 1),
(2, 'CT007', 'SC048', 'SC049', '0', 1),
(2, 'CT007', 'SC048', 'SC050', '0', 1),
(2, 'CT007', 'SC048', 'SC051', '0', 1),
(2, 'CT007', 'SC048', 'SC052', '0', 1),
(2, 'CT007', 'SC049', 'SC049', '0', 1),
(2, 'CT007', 'SC049', 'SC050', '0', 1),
(2, 'CT007', 'SC049', 'SC051', '0', 1),
(2, 'CT007', 'SC049', 'SC052', '0', 1),
(2, 'CT007', 'SC050', 'SC050', '0', 1),
(2, 'CT007', 'SC050', 'SC051', '0', 1),
(2, 'CT007', 'SC050', 'SC052', '0', 1),
(2, 'CT007', 'SC051', 'SC051', '0', 1),
(2, 'CT007', 'SC051', 'SC052', '0', 1),
(2, 'CT007', 'SC052', 'SC052', '0', 1),
(4, 'CT005', 'SC021', 'SC021', '0', 1),
(4, 'CT005', 'SC021', 'SC022', '0', 1),
(4, 'CT005', 'SC021', 'SC023', '0', 1),
(4, 'CT005', 'SC021', 'SC024', '0', 1),
(4, 'CT005', 'SC021', 'SC025', '0', 1),
(4, 'CT005', 'SC021', 'SC026', '0', 1),
(4, 'CT005', 'SC021', 'SC027', '0', 1),
(4, 'CT005', 'SC021', 'SC028', '0', 1),
(4, 'CT005', 'SC021', 'SC029', '0', 1),
(4, 'CT005', 'SC021', 'SC030', '0', 1),
(4, 'CT005', 'SC021', 'SC031', '0', 1),
(4, 'CT005', 'SC021', 'SC032', '0', 1),
(4, 'CT005', 'SC021', 'SC033', '0', 1),
(4, 'CT005', 'SC021', 'SC034', '0', 1),
(4, 'CT005', 'SC021', 'SC035', '0', 1),
(4, 'CT005', 'SC021', 'SC036', '0', 1),
(4, 'CT005', 'SC022', 'SC022', '0', 1),
(4, 'CT005', 'SC022', 'SC023', '0', 1),
(4, 'CT005', 'SC022', 'SC024', '0', 1),
(4, 'CT005', 'SC022', 'SC025', '0', 1),
(4, 'CT005', 'SC022', 'SC026', '0', 1),
(4, 'CT005', 'SC022', 'SC027', '0', 1),
(4, 'CT005', 'SC022', 'SC028', '0', 1),
(4, 'CT005', 'SC022', 'SC029', '0', 1),
(4, 'CT005', 'SC022', 'SC030', '0', 1),
(4, 'CT005', 'SC022', 'SC031', '0', 1),
(4, 'CT005', 'SC022', 'SC032', '0', 1),
(4, 'CT005', 'SC022', 'SC033', '0', 1),
(4, 'CT005', 'SC022', 'SC034', '0', 1),
(4, 'CT005', 'SC022', 'SC035', '0', 1),
(4, 'CT005', 'SC022', 'SC036', '0', 1),
(4, 'CT005', 'SC023', 'SC023', '0', 1),
(4, 'CT005', 'SC023', 'SC024', '0', 1),
(4, 'CT005', 'SC023', 'SC025', '0', 1),
(4, 'CT005', 'SC023', 'SC026', '0', 1),
(4, 'CT005', 'SC023', 'SC027', '0', 1),
(4, 'CT005', 'SC023', 'SC028', '0', 1),
(4, 'CT005', 'SC023', 'SC029', '0', 1),
(4, 'CT005', 'SC023', 'SC030', '0', 1),
(4, 'CT005', 'SC023', 'SC031', '0', 1),
(4, 'CT005', 'SC023', 'SC032', '0', 1),
(4, 'CT005', 'SC023', 'SC033', '0', 1),
(4, 'CT005', 'SC023', 'SC034', '0', 1),
(4, 'CT005', 'SC023', 'SC035', '0', 1),
(4, 'CT005', 'SC023', 'SC036', '0', 1),
(4, 'CT005', 'SC024', 'SC024', '0', 1),
(4, 'CT005', 'SC024', 'SC025', '0', 1),
(4, 'CT005', 'SC024', 'SC026', '0', 1),
(4, 'CT005', 'SC024', 'SC027', '0', 1),
(4, 'CT005', 'SC024', 'SC028', '0', 1),
(4, 'CT005', 'SC024', 'SC029', '0', 1),
(4, 'CT005', 'SC024', 'SC030', '0', 1),
(4, 'CT005', 'SC024', 'SC031', '0', 1),
(4, 'CT005', 'SC024', 'SC032', '0', 1),
(4, 'CT005', 'SC024', 'SC033', '0', 1),
(4, 'CT005', 'SC024', 'SC034', '0', 1),
(4, 'CT005', 'SC024', 'SC035', '0', 1),
(4, 'CT005', 'SC024', 'SC036', '0', 1),
(4, 'CT005', 'SC025', 'SC025', '0', 1),
(4, 'CT005', 'SC025', 'SC026', '0', 1),
(4, 'CT005', 'SC025', 'SC027', '0', 1),
(4, 'CT005', 'SC025', 'SC028', '0', 1),
(4, 'CT005', 'SC025', 'SC029', '0', 1),
(4, 'CT005', 'SC025', 'SC030', '0', 1),
(4, 'CT005', 'SC025', 'SC031', '0', 1),
(4, 'CT005', 'SC025', 'SC032', '0', 1),
(4, 'CT005', 'SC025', 'SC033', '0', 1),
(4, 'CT005', 'SC025', 'SC034', '0', 1),
(4, 'CT005', 'SC025', 'SC035', '0', 1),
(4, 'CT005', 'SC025', 'SC036', '0', 1),
(4, 'CT005', 'SC026', 'SC026', '0', 1),
(4, 'CT005', 'SC026', 'SC027', '0', 1),
(4, 'CT005', 'SC026', 'SC028', '0', 1),
(4, 'CT005', 'SC026', 'SC029', '0', 1),
(4, 'CT005', 'SC026', 'SC030', '0', 1),
(4, 'CT005', 'SC026', 'SC031', '0', 1),
(4, 'CT005', 'SC026', 'SC032', '0', 1),
(4, 'CT005', 'SC026', 'SC033', '0', 1),
(4, 'CT005', 'SC026', 'SC034', '0', 1),
(4, 'CT005', 'SC026', 'SC035', '0', 1),
(4, 'CT005', 'SC026', 'SC036', '0', 1),
(4, 'CT005', 'SC027', 'SC027', '0', 1),
(4, 'CT005', 'SC027', 'SC028', '0', 1),
(4, 'CT005', 'SC027', 'SC029', '0', 1),
(4, 'CT005', 'SC027', 'SC030', '0', 1),
(4, 'CT005', 'SC027', 'SC031', '0', 1),
(4, 'CT005', 'SC027', 'SC032', '0', 1),
(4, 'CT005', 'SC027', 'SC033', '0', 1),
(4, 'CT005', 'SC027', 'SC034', '0', 1),
(4, 'CT005', 'SC027', 'SC035', '0', 1),
(4, 'CT005', 'SC027', 'SC036', '0', 1),
(4, 'CT005', 'SC028', 'SC028', '0', 1),
(4, 'CT005', 'SC028', 'SC029', '0', 1),
(4, 'CT005', 'SC028', 'SC030', '0', 1),
(4, 'CT005', 'SC028', 'SC031', '0', 1),
(4, 'CT005', 'SC028', 'SC032', '0', 1),
(4, 'CT005', 'SC028', 'SC033', '0', 1),
(4, 'CT005', 'SC028', 'SC034', '0', 1),
(4, 'CT005', 'SC028', 'SC035', '0', 1),
(4, 'CT005', 'SC028', 'SC036', '0', 1),
(4, 'CT005', 'SC029', 'SC029', '0', 1),
(4, 'CT005', 'SC029', 'SC030', '0', 1),
(4, 'CT005', 'SC029', 'SC031', '0', 1),
(4, 'CT005', 'SC029', 'SC032', '0', 1),
(4, 'CT005', 'SC029', 'SC033', '0', 1),
(4, 'CT005', 'SC029', 'SC034', '0', 1),
(4, 'CT005', 'SC029', 'SC035', '0', 1),
(4, 'CT005', 'SC029', 'SC036', '0', 1),
(4, 'CT005', 'SC030', 'SC030', '0', 1),
(4, 'CT005', 'SC030', 'SC031', '0', 1),
(4, 'CT005', 'SC030', 'SC032', '0', 1),
(4, 'CT005', 'SC030', 'SC033', '0', 1),
(4, 'CT005', 'SC030', 'SC034', '0', 1),
(4, 'CT005', 'SC030', 'SC035', '0', 1),
(4, 'CT005', 'SC030', 'SC036', '0', 1),
(4, 'CT005', 'SC031', 'SC031', '0', 1),
(1, 'CT008', 'SC053', 'SC053', '0', 1),
(1, 'CT008', 'SC053', 'SC054', '1', 3),
(1, 'CT008', 'SC053', 'SC055', '1', 3),
(1, 'CT008', 'SC053', 'SC056', '1', 5),
(1, 'CT008', 'SC053', 'SC057', '1', 4),
(1, 'CT008', 'SC054', 'SC054', '0', 1),
(1, 'CT008', 'SC054', 'SC055', '1', 3),
(1, 'CT008', 'SC054', 'SC056', '1', 3),
(1, 'CT008', 'SC054', 'SC057', '1', 2),
(1, 'CT008', 'SC055', 'SC055', '0', 1),
(1, 'CT008', 'SC055', 'SC056', '1', 2),
(1, 'CT008', 'SC055', 'SC057', '1', 3),
(1, 'CT008', 'SC056', 'SC056', '0', 1),
(1, 'CT008', 'SC056', 'SC057', '1', 2),
(1, 'CT008', 'SC057', 'SC057', '0', 1),
(1, 'CT010', 'SC058', 'SC058', '0', 1),
(1, 'CT010', 'SC058', 'SC059', '1', 3),
(1, 'CT010', 'SC058', 'SC060', '1', 3),
(1, 'CT010', 'SC059', 'SC059', '0', 1),
(1, 'CT010', 'SC059', 'SC060', '1', 3),
(1, 'CT010', 'SC060', 'SC060', '0', 1),
(1, 'CT011', 'SC061', 'SC061', '0', 1),
(1, 'CT011', 'SC061', 'SC062', '1', 2),
(1, 'CT011', 'SC061', 'SC063', '1', 3),
(1, 'CT011', 'SC061', 'SC064', '1', 3),
(1, 'CT011', 'SC062', 'SC062', '0', 1),
(1, 'CT011', 'SC062', 'SC063', '1', 2),
(1, 'CT011', 'SC062', 'SC064', '1', 5),
(1, 'CT011', 'SC063', 'SC063', '0', 1),
(1, 'CT011', 'SC063', 'SC064', '1', 2),
(1, 'CT011', 'SC064', 'SC064', '0', 1),
(1, 'CT012', 'SC065', 'SC065', '0', 1),
(1, 'CT012', 'SC065', 'SC066', '1', 2),
(1, 'CT012', 'SC065', 'SC067', '1', 3),
(1, 'CT012', 'SC065', 'SC068', '1', 2),
(1, 'CT012', 'SC066', 'SC066', '0', 1),
(1, 'CT012', 'SC066', 'SC067', '1', 3),
(1, 'CT012', 'SC066', 'SC068', '1', 2),
(1, 'CT012', 'SC067', 'SC067', '0', 1),
(1, 'CT012', 'SC067', 'SC068', '1', 2),
(1, 'CT012', 'SC068', 'SC068', '0', 1),
(1, 'CT013', 'SC077', 'SC077', '0', 1),
(1, 'CT013', 'SC077', 'SC078', '1', 2),
(1, 'CT013', 'SC077', 'SC079', '1', 3),
(1, 'CT013', 'SC077', 'SC080', '1', 2),
(1, 'CT013', 'SC077', 'SC081', '1', 3),
(1, 'CT013', 'SC078', 'SC078', '0', 1),
(1, 'CT013', 'SC078', 'SC079', '0', 3),
(1, 'CT013', 'SC078', 'SC080', '0', 2),
(1, 'CT013', 'SC078', 'SC081', '0', 3),
(1, 'CT013', 'SC079', 'SC079', '0', 1),
(1, 'CT013', 'SC079', 'SC080', '1', 2),
(1, 'CT013', 'SC079', 'SC081', '1', 2),
(1, 'CT013', 'SC080', 'SC080', '0', 1),
(1, 'CT013', 'SC080', 'SC081', '0', 1),
(1, 'CT013', 'SC081', 'SC081', '0', 1),
(1, 'CT014', 'SC082', 'SC082', '0', 1),
(1, 'CT014', 'SC082', 'SC083', '1', 2),
(1, 'CT014', 'SC082', 'SC084', '1', 3),
(1, 'CT014', 'SC082', 'SC085', '1', 2),
(1, 'CT014', 'SC082', 'SC086', '1', 5),
(1, 'CT014', 'SC083', 'SC083', '0', 1),
(1, 'CT014', 'SC083', 'SC084', '1', 2),
(1, 'CT014', 'SC083', 'SC085', '1', 2),
(1, 'CT014', 'SC083', 'SC086', '1', 3),
(1, 'CT014', 'SC084', 'SC084', '0', 1),
(1, 'CT014', 'SC084', 'SC085', '0', 1),
(1, 'CT014', 'SC084', 'SC086', '1', 2),
(1, 'CT014', 'SC085', 'SC085', '0', 1),
(1, 'CT014', 'SC085', 'SC086', '1', 2),
(1, 'CT014', 'SC086', 'SC086', '0', 1),
(1, 'CT015', 'SC069', 'SC069', '0', 1),
(1, 'CT015', 'SC069', 'SC070', '1', 3),
(1, 'CT015', 'SC069', 'SC071', '1', 4),
(1, 'CT015', 'SC070', 'SC070', '0', 1),
(1, 'CT015', 'SC070', 'SC071', '0', 2),
(1, 'CT015', 'SC071', 'SC071', '0', 1),
(1, 'CT016', 'SC072', 'SC072', '0', 1),
(1, 'CT016', 'SC072', 'SC073', '1', 2),
(1, 'CT016', 'SC072', 'SC074', '1', 3),
(1, 'CT016', 'SC072', 'SC075', '1', 3),
(1, 'CT016', 'SC072', 'SC076', '1', 4),
(1, 'CT016', 'SC073', 'SC073', '0', 1),
(1, 'CT016', 'SC073', 'SC074', '1', 2),
(1, 'CT016', 'SC073', 'SC075', '1', 3),
(1, 'CT016', 'SC073', 'SC076', '1', 2),
(1, 'CT016', 'SC074', 'SC074', '0', 1),
(1, 'CT016', 'SC074', 'SC075', '1', 2),
(1, 'CT016', 'SC074', 'SC076', '0', 1),
(1, 'CT016', 'SC075', 'SC075', '0', 1),
(1, 'CT016', 'SC075', 'SC076', '0', 1),
(1, 'CT016', 'SC076', 'SC076', '0', 1),
(1, 'CT017', 'SC087', 'SC087', '0', 1),
(1, 'CT017', 'SC087', 'SC088', '1', 2),
(1, 'CT017', 'SC087', 'SC089', '1', 3),
(1, 'CT017', 'SC088', 'SC088', '0', 1),
(1, 'CT017', 'SC088', 'SC089', '1', 2),
(1, 'CT017', 'SC089', 'SC089', '0', 1),
(1, 'CT019', 'SC090', 'SC090', '0', 1),
(1, 'CT019', 'SC090', 'SC091', '1', 3),
(1, 'CT019', 'SC090', 'SC092', '1', 4),
(1, 'CT019', 'SC090', 'SC093', '1', 2),
(1, 'CT019', 'SC090', 'SC094', '0', 2),
(1, 'CT019', 'SC091', 'SC091', '0', 1),
(1, 'CT019', 'SC091', 'SC092', '1', 3),
(1, 'CT019', 'SC091', 'SC093', '0', 2),
(1, 'CT019', 'SC091', 'SC094', '0', 2),
(1, 'CT019', 'SC092', 'SC092', '0', 1),
(1, 'CT019', 'SC092', 'SC093', '0', 3),
(1, 'CT019', 'SC092', 'SC094', '0', 3),
(1, 'CT019', 'SC093', 'SC093', '0', 1),
(1, 'CT019', 'SC093', 'SC094', '0', 2),
(1, 'CT019', 'SC094', 'SC094', '0', 1),
(1, 'CT021', 'SC095', 'SC095', '0', 1),
(1, 'CT021', 'SC095', 'SC096', '0', 4),
(1, 'CT021', 'SC095', 'SC097', '0', 3),
(1, 'CT021', 'SC095', 'SC098', '0', 4),
(1, 'CT021', 'SC095', 'SC099', '0', 4),
(1, 'CT021', 'SC095', 'SC100', '0', 4),
(1, 'CT021', 'SC096', 'SC096', '0', 1),
(1, 'CT021', 'SC096', 'SC097', '0', 3),
(1, 'CT021', 'SC096', 'SC098', '0', 3),
(1, 'CT021', 'SC096', 'SC099', '0', 3),
(1, 'CT021', 'SC096', 'SC100', '0', 3),
(1, 'CT021', 'SC097', 'SC097', '0', 1),
(1, 'CT021', 'SC097', 'SC098', '0', 3),
(1, 'CT021', 'SC097', 'SC099', '0', 2),
(1, 'CT021', 'SC097', 'SC100', '0', 2),
(1, 'CT021', 'SC098', 'SC098', '0', 1),
(1, 'CT021', 'SC098', 'SC099', '0', 2),
(1, 'CT021', 'SC098', 'SC100', '0', 2),
(1, 'CT021', 'SC099', 'SC099', '0', 1),
(1, 'CT021', 'SC099', 'SC100', '0', 2),
(1, 'CT021', 'SC100', 'SC100', '0', 1),
(1, 'CT022', 'SC101', 'SC101', '0', 1),
(1, 'CT022', 'SC101', 'SC102', '1', 2),
(1, 'CT022', 'SC101', 'SC103', '1', 3),
(1, 'CT022', 'SC101', 'SC104', '1', 8),
(1, 'CT022', 'SC102', 'SC102', '0', 1),
(1, 'CT022', 'SC102', 'SC103', '1', 2),
(1, 'CT022', 'SC102', 'SC104', '1', 4),
(1, 'CT022', 'SC103', 'SC103', '0', 1),
(1, 'CT022', 'SC103', 'SC104', '1', 6),
(1, 'CT022', 'SC104', 'SC104', '0', 1),
(2, 'CT008', 'SC053', 'SC053', '0', 1),
(2, 'CT008', 'SC053', 'SC054', '1', 2),
(2, 'CT008', 'SC053', 'SC055', '1', 3),
(2, 'CT008', 'SC053', 'SC056', '1', 5),
(2, 'CT008', 'SC053', 'SC057', '1', 6),
(2, 'CT008', 'SC054', 'SC054', '0', 1),
(2, 'CT008', 'SC054', 'SC055', '1', 2),
(2, 'CT008', 'SC054', 'SC056', '1', 5),
(2, 'CT008', 'SC054', 'SC057', '1', 5),
(2, 'CT008', 'SC055', 'SC055', '0', 1),
(2, 'CT008', 'SC055', 'SC056', '1', 4),
(2, 'CT008', 'SC055', 'SC057', '1', 5),
(2, 'CT008', 'SC056', 'SC056', '0', 1),
(2, 'CT008', 'SC056', 'SC057', '1', 3),
(2, 'CT008', 'SC057', 'SC057', '0', 1),
(2, 'CT010', 'SC058', 'SC058', '0', 1),
(2, 'CT010', 'SC058', 'SC059', '1', 3),
(2, 'CT010', 'SC058', 'SC060', '1', 3),
(2, 'CT010', 'SC059', 'SC059', '0', 1),
(2, 'CT010', 'SC059', 'SC060', '1', 3),
(2, 'CT010', 'SC060', 'SC060', '0', 1),
(2, 'CT011', 'SC061', 'SC061', '0', 1),
(2, 'CT011', 'SC061', 'SC062', '1', 3),
(2, 'CT011', 'SC061', 'SC063', '1', 4),
(2, 'CT011', 'SC061', 'SC064', '1', 2),
(2, 'CT011', 'SC062', 'SC062', '0', 1),
(2, 'CT011', 'SC062', 'SC063', '1', 3),
(2, 'CT011', 'SC062', 'SC064', '1', 3),
(2, 'CT011', 'SC063', 'SC063', '0', 1),
(2, 'CT011', 'SC063', 'SC064', '0', 1),
(2, 'CT011', 'SC064', 'SC064', '0', 1),
(2, 'CT012', 'SC065', 'SC065', '0', 1),
(2, 'CT012', 'SC065', 'SC066', '1', 2),
(2, 'CT012', 'SC065', 'SC067', '1', 3),
(2, 'CT012', 'SC065', 'SC068', '1', 5),
(2, 'CT012', 'SC066', 'SC066', '0', 1),
(2, 'CT012', 'SC066', 'SC067', '1', 3),
(2, 'CT012', 'SC066', 'SC068', '1', 5),
(2, 'CT012', 'SC067', 'SC067', '0', 1),
(2, 'CT012', 'SC067', 'SC068', '0', 1),
(2, 'CT012', 'SC068', 'SC068', '0', 1),
(2, 'CT013', 'SC077', 'SC077', '0', 1),
(2, 'CT013', 'SC077', 'SC078', '1', 4),
(2, 'CT013', 'SC077', 'SC079', '1', 2),
(2, 'CT013', 'SC077', 'SC080', '1', 3),
(2, 'CT013', 'SC077', 'SC081', '1', 2),
(2, 'CT013', 'SC078', 'SC078', '0', 1),
(2, 'CT013', 'SC078', 'SC079', '0', 4),
(2, 'CT013', 'SC078', 'SC080', '0', 4),
(2, 'CT013', 'SC078', 'SC081', '0', 4),
(2, 'CT013', 'SC079', 'SC079', '0', 1),
(2, 'CT013', 'SC079', 'SC080', '1', 3),
(2, 'CT013', 'SC079', 'SC081', '1', 3),
(2, 'CT013', 'SC080', 'SC080', '0', 1),
(2, 'CT013', 'SC080', 'SC081', '0', 1),
(2, 'CT013', 'SC081', 'SC081', '0', 1),
(2, 'CT014', 'SC082', 'SC082', '0', 1),
(2, 'CT014', 'SC082', 'SC083', '1', 3),
(2, 'CT014', 'SC082', 'SC084', '1', 3),
(2, 'CT014', 'SC082', 'SC085', '1', 5),
(2, 'CT014', 'SC082', 'SC086', '1', 3),
(2, 'CT014', 'SC083', 'SC083', '0', 1),
(2, 'CT014', 'SC083', 'SC084', '1', 2),
(2, 'CT014', 'SC083', 'SC085', '1', 2),
(2, 'CT014', 'SC083', 'SC086', '0', 1),
(2, 'CT014', 'SC084', 'SC084', '0', 1),
(2, 'CT014', 'SC084', 'SC085', '1', 2),
(2, 'CT014', 'SC084', 'SC086', '0', 1),
(2, 'CT014', 'SC085', 'SC085', '0', 1),
(2, 'CT014', 'SC085', 'SC086', '0', 1),
(2, 'CT014', 'SC086', 'SC086', '0', 1),
(2, 'CT015', 'SC069', 'SC069', '0', 1),
(2, 'CT015', 'SC069', 'SC070', '1', 3),
(2, 'CT015', 'SC069', 'SC071', '0', 1),
(2, 'CT015', 'SC070', 'SC070', '0', 1),
(2, 'CT015', 'SC070', 'SC071', '0', 7),
(2, 'CT015', 'SC071', 'SC071', '0', 1),
(2, 'CT016', 'SC072', 'SC072', '0', 1),
(2, 'CT016', 'SC072', 'SC073', '1', 3),
(2, 'CT016', 'SC072', 'SC074', '1', 3),
(2, 'CT016', 'SC072', 'SC075', '1', 6),
(2, 'CT016', 'SC072', 'SC076', '1', 5),
(2, 'CT016', 'SC073', 'SC073', '0', 1),
(2, 'CT016', 'SC073', 'SC074', '1', 2),
(2, 'CT016', 'SC073', 'SC075', '1', 3),
(2, 'CT016', 'SC073', 'SC076', '1', 2),
(2, 'CT016', 'SC074', 'SC074', '0', 1),
(2, 'CT016', 'SC074', 'SC075', '1', 2),
(2, 'CT016', 'SC074', 'SC076', '1', 2),
(2, 'CT016', 'SC075', 'SC075', '0', 1),
(2, 'CT016', 'SC075', 'SC076', '0', 1),
(2, 'CT016', 'SC076', 'SC076', '0', 1),
(2, 'CT017', 'SC087', 'SC087', '0', 1),
(2, 'CT017', 'SC087', 'SC088', '1', 3),
(2, 'CT017', 'SC087', 'SC089', '1', 4),
(2, 'CT017', 'SC088', 'SC088', '0', 1),
(2, 'CT017', 'SC088', 'SC089', '1', 2),
(2, 'CT017', 'SC089', 'SC089', '0', 1),
(2, 'CT019', 'SC090', 'SC090', '0', 1),
(2, 'CT019', 'SC090', 'SC091', '0', 1),
(2, 'CT019', 'SC090', 'SC092', '0', 1),
(2, 'CT019', 'SC090', 'SC093', '0', 1),
(2, 'CT019', 'SC090', 'SC094', '0', 1),
(2, 'CT019', 'SC091', 'SC091', '0', 1),
(2, 'CT019', 'SC091', 'SC092', '0', 1),
(2, 'CT019', 'SC091', 'SC093', '0', 1),
(2, 'CT019', 'SC091', 'SC094', '0', 1),
(2, 'CT019', 'SC092', 'SC092', '0', 1),
(2, 'CT019', 'SC092', 'SC093', '0', 1),
(2, 'CT019', 'SC092', 'SC094', '0', 1),
(2, 'CT019', 'SC093', 'SC093', '0', 1),
(2, 'CT019', 'SC093', 'SC094', '0', 1),
(2, 'CT019', 'SC094', 'SC094', '0', 1),
(2, 'CT021', 'SC095', 'SC095', '0', 1),
(2, 'CT021', 'SC095', 'SC096', '0', 1),
(2, 'CT021', 'SC095', 'SC097', '0', 1),
(2, 'CT021', 'SC095', 'SC098', '0', 1),
(2, 'CT021', 'SC095', 'SC099', '0', 1),
(2, 'CT021', 'SC095', 'SC100', '0', 1),
(2, 'CT021', 'SC096', 'SC096', '0', 1),
(2, 'CT021', 'SC096', 'SC097', '0', 1),
(2, 'CT021', 'SC096', 'SC098', '0', 1),
(2, 'CT021', 'SC096', 'SC099', '0', 1),
(2, 'CT021', 'SC096', 'SC100', '0', 1),
(2, 'CT021', 'SC097', 'SC097', '0', 1),
(2, 'CT021', 'SC097', 'SC098', '0', 1),
(2, 'CT021', 'SC097', 'SC099', '0', 1),
(2, 'CT021', 'SC097', 'SC100', '0', 1),
(2, 'CT021', 'SC098', 'SC098', '0', 1),
(2, 'CT021', 'SC098', 'SC099', '0', 1),
(2, 'CT021', 'SC098', 'SC100', '0', 1),
(2, 'CT021', 'SC099', 'SC099', '0', 1),
(2, 'CT021', 'SC099', 'SC100', '0', 1),
(2, 'CT021', 'SC100', 'SC100', '0', 1),
(2, 'CT022', 'SC101', 'SC101', '0', 1),
(2, 'CT022', 'SC101', 'SC102', '1', 2),
(2, 'CT022', 'SC101', 'SC103', '1', 3),
(2, 'CT022', 'SC101', 'SC104', '1', 7),
(2, 'CT022', 'SC102', 'SC102', '0', 1),
(2, 'CT022', 'SC102', 'SC103', '1', 3),
(2, 'CT022', 'SC102', 'SC104', '1', 7),
(2, 'CT022', 'SC103', 'SC103', '0', 1),
(2, 'CT022', 'SC103', 'SC104', '1', 5),
(2, 'CT022', 'SC104', 'SC104', '0', 1),
(4, 'CT005', 'SC031', 'SC032', '0', 1),
(4, 'CT005', 'SC031', 'SC033', '0', 1),
(4, 'CT005', 'SC031', 'SC034', '0', 1),
(4, 'CT005', 'SC031', 'SC035', '0', 1),
(4, 'CT005', 'SC031', 'SC036', '0', 1),
(4, 'CT005', 'SC032', 'SC032', '0', 1),
(4, 'CT005', 'SC032', 'SC033', '0', 1),
(4, 'CT005', 'SC032', 'SC034', '0', 1),
(4, 'CT005', 'SC032', 'SC035', '0', 1),
(4, 'CT005', 'SC032', 'SC036', '0', 1),
(4, 'CT005', 'SC033', 'SC033', '0', 1),
(4, 'CT005', 'SC033', 'SC034', '0', 1),
(4, 'CT005', 'SC033', 'SC035', '0', 1),
(4, 'CT005', 'SC033', 'SC036', '0', 1),
(4, 'CT005', 'SC034', 'SC034', '0', 1),
(4, 'CT005', 'SC034', 'SC035', '0', 1),
(4, 'CT005', 'SC034', 'SC036', '0', 1),
(4, 'CT005', 'SC035', 'SC035', '0', 1),
(4, 'CT005', 'SC035', 'SC036', '0', 1),
(4, 'CT005', 'SC036', 'SC036', '0', 1),
(4, 'CT006', 'SC037', 'SC037', '0', 1),
(4, 'CT006', 'SC037', 'SC038', '0', 1),
(4, 'CT006', 'SC037', 'SC039', '0', 1),
(4, 'CT006', 'SC037', 'SC040', '0', 1),
(4, 'CT006', 'SC037', 'SC041', '0', 1),
(4, 'CT006', 'SC037', 'SC042', '0', 1),
(4, 'CT006', 'SC037', 'SC043', '0', 1),
(4, 'CT006', 'SC037', 'SC044', '0', 1),
(4, 'CT006', 'SC038', 'SC038', '0', 1),
(4, 'CT006', 'SC038', 'SC039', '0', 1),
(4, 'CT006', 'SC038', 'SC040', '0', 1),
(4, 'CT006', 'SC038', 'SC041', '0', 1),
(4, 'CT006', 'SC038', 'SC042', '0', 1),
(4, 'CT006', 'SC038', 'SC043', '0', 1),
(4, 'CT006', 'SC038', 'SC044', '0', 1),
(4, 'CT006', 'SC039', 'SC039', '0', 1),
(4, 'CT006', 'SC039', 'SC040', '0', 1),
(4, 'CT006', 'SC039', 'SC041', '0', 1),
(4, 'CT006', 'SC039', 'SC042', '0', 1),
(4, 'CT006', 'SC039', 'SC043', '0', 1),
(4, 'CT006', 'SC039', 'SC044', '0', 1),
(4, 'CT006', 'SC040', 'SC040', '0', 1),
(4, 'CT006', 'SC040', 'SC041', '0', 1),
(4, 'CT006', 'SC040', 'SC042', '0', 1),
(4, 'CT006', 'SC040', 'SC043', '0', 1),
(4, 'CT006', 'SC040', 'SC044', '0', 1),
(4, 'CT006', 'SC041', 'SC041', '0', 1),
(4, 'CT006', 'SC041', 'SC042', '0', 1),
(4, 'CT006', 'SC041', 'SC043', '0', 1),
(4, 'CT006', 'SC041', 'SC044', '0', 1),
(4, 'CT006', 'SC042', 'SC042', '0', 1),
(4, 'CT006', 'SC042', 'SC043', '0', 1),
(4, 'CT006', 'SC042', 'SC044', '0', 1),
(4, 'CT006', 'SC043', 'SC043', '0', 1),
(4, 'CT006', 'SC043', 'SC044', '0', 1),
(4, 'CT006', 'SC044', 'SC044', '0', 1),
(4, 'CT007', 'SC045', 'SC045', '0', 1),
(4, 'CT007', 'SC045', 'SC046', '0', 1),
(4, 'CT007', 'SC045', 'SC047', '0', 1),
(4, 'CT007', 'SC045', 'SC048', '0', 1),
(4, 'CT007', 'SC045', 'SC049', '0', 1),
(4, 'CT007', 'SC045', 'SC050', '0', 1),
(4, 'CT007', 'SC045', 'SC051', '0', 1),
(4, 'CT007', 'SC045', 'SC052', '0', 1),
(4, 'CT007', 'SC046', 'SC046', '0', 1),
(4, 'CT007', 'SC046', 'SC047', '0', 1),
(4, 'CT007', 'SC046', 'SC048', '0', 1),
(4, 'CT007', 'SC046', 'SC049', '0', 1),
(4, 'CT007', 'SC046', 'SC050', '0', 1),
(4, 'CT007', 'SC046', 'SC051', '0', 1),
(4, 'CT007', 'SC046', 'SC052', '0', 1),
(4, 'CT007', 'SC047', 'SC047', '0', 1),
(4, 'CT007', 'SC047', 'SC048', '0', 1),
(4, 'CT007', 'SC047', 'SC049', '0', 1),
(4, 'CT007', 'SC047', 'SC050', '0', 1),
(4, 'CT007', 'SC047', 'SC051', '0', 1),
(4, 'CT007', 'SC047', 'SC052', '0', 1),
(4, 'CT007', 'SC048', 'SC048', '0', 1),
(4, 'CT007', 'SC048', 'SC049', '0', 1),
(4, 'CT007', 'SC048', 'SC050', '0', 1),
(4, 'CT007', 'SC048', 'SC051', '0', 1),
(4, 'CT007', 'SC048', 'SC052', '0', 1),
(4, 'CT007', 'SC049', 'SC049', '0', 1),
(4, 'CT007', 'SC049', 'SC050', '0', 1),
(4, 'CT007', 'SC049', 'SC051', '0', 1),
(4, 'CT007', 'SC049', 'SC052', '0', 1),
(4, 'CT007', 'SC050', 'SC050', '0', 1),
(4, 'CT007', 'SC050', 'SC051', '0', 1),
(4, 'CT007', 'SC050', 'SC052', '0', 1),
(4, 'CT007', 'SC051', 'SC051', '0', 1),
(4, 'CT007', 'SC051', 'SC052', '0', 1),
(4, 'CT007', 'SC052', 'SC052', '0', 1),
(4, 'CT008', 'SC053', 'SC053', '0', 1),
(4, 'CT008', 'SC053', 'SC054', '1', 2),
(4, 'CT008', 'SC053', 'SC055', '1', 3),
(4, 'CT008', 'SC053', 'SC056', '1', 4),
(4, 'CT008', 'SC053', 'SC057', '1', 2),
(4, 'CT008', 'SC054', 'SC054', '0', 1),
(4, 'CT008', 'SC054', 'SC055', '1', 3),
(4, 'CT008', 'SC054', 'SC056', '1', 3),
(4, 'CT008', 'SC054', 'SC057', '1', 5),
(4, 'CT008', 'SC055', 'SC055', '0', 1),
(4, 'CT008', 'SC055', 'SC056', '1', 2),
(4, 'CT008', 'SC055', 'SC057', '1', 3),
(4, 'CT008', 'SC056', 'SC056', '0', 1),
(4, 'CT008', 'SC056', 'SC057', '0', 1),
(4, 'CT008', 'SC057', 'SC057', '0', 1),
(4, 'CT010', 'SC058', 'SC058', '0', 1),
(4, 'CT010', 'SC058', 'SC059', '1', 2),
(4, 'CT010', 'SC058', 'SC060', '1', 3),
(4, 'CT010', 'SC059', 'SC059', '0', 1),
(4, 'CT010', 'SC059', 'SC060', '1', 2),
(4, 'CT010', 'SC060', 'SC060', '0', 1),
(4, 'CT011', 'SC061', 'SC061', '0', 1),
(4, 'CT011', 'SC061', 'SC062', '1', 2),
(4, 'CT011', 'SC061', 'SC063', '1', 3),
(4, 'CT011', 'SC061', 'SC064', '1', 6),
(4, 'CT011', 'SC062', 'SC062', '0', 1),
(4, 'CT011', 'SC062', 'SC063', '1', 3),
(4, 'CT011', 'SC062', 'SC064', '1', 8),
(4, 'CT011', 'SC063', 'SC063', '0', 1),
(4, 'CT011', 'SC063', 'SC064', '1', 5),
(4, 'CT011', 'SC064', 'SC064', '0', 1),
(4, 'CT012', 'SC065', 'SC065', '0', 1),
(4, 'CT012', 'SC065', 'SC066', '1', 3),
(4, 'CT012', 'SC065', 'SC067', '1', 4),
(4, 'CT012', 'SC065', 'SC068', '1', 8),
(4, 'CT012', 'SC066', 'SC066', '0', 1),
(4, 'CT012', 'SC066', 'SC067', '1', 3),
(4, 'CT012', 'SC066', 'SC068', '1', 6),
(4, 'CT012', 'SC067', 'SC067', '0', 1),
(4, 'CT012', 'SC067', 'SC068', '1', 4),
(4, 'CT012', 'SC068', 'SC068', '0', 1),
(4, 'CT013', 'SC077', 'SC077', '0', 1),
(4, 'CT013', 'SC077', 'SC078', '1', 4),
(4, 'CT013', 'SC077', 'SC079', '1', 3),
(4, 'CT013', 'SC077', 'SC080', '1', 6),
(4, 'CT013', 'SC077', 'SC081', '0', 1),
(4, 'CT013', 'SC078', 'SC078', '0', 1),
(4, 'CT013', 'SC078', 'SC079', '0', 2),
(4, 'CT013', 'SC078', 'SC080', '0', 1),
(4, 'CT013', 'SC078', 'SC081', '0', 5),
(4, 'CT013', 'SC079', 'SC079', '0', 1),
(4, 'CT013', 'SC079', 'SC080', '1', 2),
(4, 'CT013', 'SC079', 'SC081', '0', 2),
(4, 'CT013', 'SC080', 'SC080', '0', 1),
(4, 'CT013', 'SC080', 'SC081', '0', 1),
(4, 'CT013', 'SC081', 'SC081', '0', 1),
(4, 'CT014', 'SC082', 'SC082', '0', 1),
(4, 'CT014', 'SC082', 'SC083', '1', 3),
(4, 'CT014', 'SC082', 'SC084', '1', 3),
(4, 'CT014', 'SC082', 'SC085', '1', 4),
(4, 'CT014', 'SC082', 'SC086', '1', 3),
(4, 'CT014', 'SC083', 'SC083', '0', 1),
(4, 'CT014', 'SC083', 'SC084', '1', 2),
(4, 'CT014', 'SC083', 'SC085', '1', 2),
(4, 'CT014', 'SC083', 'SC086', '1', 2),
(4, 'CT014', 'SC084', 'SC084', '0', 1),
(4, 'CT014', 'SC084', 'SC085', '0', 1),
(4, 'CT014', 'SC084', 'SC086', '0', 1),
(4, 'CT014', 'SC085', 'SC085', '0', 1),
(4, 'CT014', 'SC085', 'SC086', '0', 2),
(4, 'CT014', 'SC086', 'SC086', '0', 1),
(4, 'CT015', 'SC069', 'SC069', '0', 1),
(4, 'CT015', 'SC069', 'SC070', '1', 3),
(4, 'CT015', 'SC069', 'SC071', '1', 2),
(4, 'CT015', 'SC070', 'SC070', '0', 1),
(4, 'CT015', 'SC070', 'SC071', '0', 4),
(4, 'CT015', 'SC071', 'SC071', '0', 1),
(4, 'CT016', 'SC072', 'SC072', '0', 1),
(4, 'CT016', 'SC072', 'SC073', '1', 3),
(4, 'CT016', 'SC072', 'SC074', '1', 3),
(4, 'CT016', 'SC072', 'SC075', '1', 4),
(4, 'CT016', 'SC072', 'SC076', '1', 6),
(4, 'CT016', 'SC073', 'SC073', '0', 1),
(4, 'CT016', 'SC073', 'SC074', '1', 2),
(4, 'CT016', 'SC073', 'SC075', '1', 2),
(4, 'CT016', 'SC073', 'SC076', '1', 4),
(4, 'CT016', 'SC074', 'SC074', '0', 1),
(4, 'CT016', 'SC074', 'SC075', '0', 1),
(4, 'CT016', 'SC074', 'SC076', '1', 2),
(4, 'CT016', 'SC075', 'SC075', '0', 1),
(4, 'CT016', 'SC075', 'SC076', '1', 2),
(4, 'CT016', 'SC076', 'SC076', '0', 1),
(4, 'CT017', 'SC087', 'SC087', '0', 1),
(4, 'CT017', 'SC087', 'SC088', '1', 2),
(4, 'CT017', 'SC087', 'SC089', '1', 3),
(4, 'CT017', 'SC088', 'SC088', '0', 1),
(4, 'CT017', 'SC088', 'SC089', '1', 2),
(4, 'CT017', 'SC089', 'SC089', '0', 1),
(4, 'CT019', 'SC090', 'SC090', '0', 1),
(4, 'CT019', 'SC090', 'SC091', '0', 1),
(4, 'CT019', 'SC090', 'SC092', '0', 1),
(4, 'CT019', 'SC090', 'SC093', '0', 1),
(4, 'CT019', 'SC090', 'SC094', '0', 1),
(4, 'CT019', 'SC091', 'SC091', '0', 1),
(4, 'CT019', 'SC091', 'SC092', '0', 1),
(4, 'CT019', 'SC091', 'SC093', '0', 1),
(4, 'CT019', 'SC091', 'SC094', '0', 1),
(4, 'CT019', 'SC092', 'SC092', '0', 1),
(4, 'CT019', 'SC092', 'SC093', '0', 1),
(4, 'CT019', 'SC092', 'SC094', '0', 1),
(4, 'CT019', 'SC093', 'SC093', '0', 1),
(4, 'CT019', 'SC093', 'SC094', '0', 1),
(4, 'CT019', 'SC094', 'SC094', '0', 1),
(4, 'CT021', 'SC095', 'SC095', '0', 1),
(4, 'CT021', 'SC095', 'SC096', '0', 1),
(4, 'CT021', 'SC095', 'SC097', '0', 1),
(4, 'CT021', 'SC095', 'SC098', '0', 1),
(4, 'CT021', 'SC095', 'SC099', '0', 1),
(4, 'CT021', 'SC095', 'SC100', '0', 1),
(4, 'CT021', 'SC096', 'SC096', '0', 1),
(4, 'CT021', 'SC096', 'SC097', '0', 1),
(4, 'CT021', 'SC096', 'SC098', '0', 1),
(4, 'CT021', 'SC096', 'SC099', '0', 1),
(4, 'CT021', 'SC096', 'SC100', '0', 1),
(4, 'CT021', 'SC097', 'SC097', '0', 1),
(4, 'CT021', 'SC097', 'SC098', '0', 1),
(4, 'CT021', 'SC097', 'SC099', '0', 1),
(4, 'CT021', 'SC097', 'SC100', '0', 1),
(4, 'CT021', 'SC098', 'SC098', '0', 1),
(4, 'CT021', 'SC098', 'SC099', '0', 1),
(4, 'CT021', 'SC098', 'SC100', '0', 1),
(4, 'CT021', 'SC099', 'SC099', '0', 1),
(4, 'CT021', 'SC099', 'SC100', '0', 1),
(4, 'CT021', 'SC100', 'SC100', '0', 1),
(4, 'CT022', 'SC101', 'SC101', '0', 1),
(4, 'CT022', 'SC101', 'SC102', '1', 2),
(4, 'CT022', 'SC101', 'SC103', '1', 3),
(4, 'CT022', 'SC101', 'SC104', '1', 7),
(4, 'CT022', 'SC102', 'SC102', '0', 1),
(4, 'CT022', 'SC102', 'SC103', '1', 3),
(4, 'CT022', 'SC102', 'SC104', '1', 7),
(4, 'CT022', 'SC103', 'SC103', '0', 1),
(4, 'CT022', 'SC103', 'SC104', '1', 5),
(4, 'CT022', 'SC104', 'SC104', '0', 1),
(4, 'CT004', 'SC013', 'SC105', '0', 1),
(4, 'CT004', 'SC014', 'SC105', '0', 1),
(4, 'CT004', 'SC015', 'SC105', '0', 1),
(4, 'CT004', 'SC016', 'SC105', '0', 1),
(4, 'CT004', 'SC105', 'SC105', '0', 1),
(1, 'CT004', 'SC013', 'SC105', '1', 2),
(1, 'CT004', 'SC014', 'SC105', '1', 2),
(1, 'CT004', 'SC015', 'SC105', '1', 2),
(1, 'CT004', 'SC016', 'SC105', '1', 2),
(1, 'CT004', 'SC105', 'SC105', '0', 1),
(2, 'CT004', 'SC013', 'SC105', '1', 4),
(2, 'CT004', 'SC014', 'SC105', '1', 3),
(2, 'CT004', 'SC015', 'SC105', '0', 1),
(2, 'CT004', 'SC016', 'SC105', '1', 2),
(2, 'CT004', 'SC105', 'SC105', '0', 1),
(4, 'CT004', 'SC013', 'SC106', '0', 1),
(4, 'CT004', 'SC014', 'SC106', '0', 1),
(4, 'CT004', 'SC015', 'SC106', '0', 1),
(4, 'CT004', 'SC016', 'SC106', '0', 1),
(4, 'CT004', 'SC105', 'SC106', '0', 1),
(4, 'CT004', 'SC106', 'SC106', '0', 1),
(1, 'CT004', 'SC013', 'SC106', '1', 3),
(1, 'CT004', 'SC014', 'SC106', '1', 2),
(1, 'CT004', 'SC015', 'SC106', '1', 3),
(1, 'CT004', 'SC016', 'SC106', '1', 4),
(1, 'CT004', 'SC105', 'SC106', '1', 2),
(1, 'CT004', 'SC106', 'SC106', '0', 1),
(2, 'CT004', 'SC013', 'SC106', '1', 5),
(2, 'CT004', 'SC014', 'SC106', '1', 3),
(2, 'CT004', 'SC015', 'SC106', '1', 3),
(2, 'CT004', 'SC016', 'SC106', '1', 2),
(2, 'CT004', 'SC105', 'SC106', '1', 2),
(2, 'CT004', 'SC106', 'SC106', '0', 1),
(4, 'CT004', 'SC013', 'SC107', '0', 1),
(4, 'CT004', 'SC014', 'SC107', '0', 1),
(4, 'CT004', 'SC015', 'SC107', '0', 1),
(4, 'CT004', 'SC016', 'SC107', '0', 1),
(4, 'CT004', 'SC105', 'SC107', '0', 1),
(4, 'CT004', 'SC106', 'SC107', '0', 1),
(4, 'CT004', 'SC107', 'SC107', '0', 1),
(1, 'CT004', 'SC013', 'SC107', '1', 2),
(1, 'CT004', 'SC014', 'SC107', '1', 2),
(1, 'CT004', 'SC015', 'SC107', '1', 2),
(1, 'CT004', 'SC016', 'SC107', '1', 2),
(1, 'CT004', 'SC105', 'SC107', '1', 2),
(1, 'CT004', 'SC106', 'SC107', '1', 2),
(1, 'CT004', 'SC107', 'SC107', '0', 1),
(2, 'CT004', 'SC013', 'SC107', '1', 6),
(2, 'CT004', 'SC014', 'SC107', '1', 3),
(2, 'CT004', 'SC015', 'SC107', '1', 3),
(2, 'CT004', 'SC016', 'SC107', '1', 3),
(2, 'CT004', 'SC105', 'SC107', '1', 2),
(2, 'CT004', 'SC106', 'SC107', '1', 2),
(2, 'CT004', 'SC107', 'SC107', '0', 1),
(4, 'CT004', 'SC013', 'SC108', '0', 1),
(4, 'CT004', 'SC014', 'SC108', '0', 1),
(4, 'CT004', 'SC015', 'SC108', '0', 1),
(4, 'CT004', 'SC016', 'SC108', '0', 1),
(4, 'CT004', 'SC105', 'SC108', '0', 1),
(4, 'CT004', 'SC106', 'SC108', '0', 1),
(4, 'CT004', 'SC107', 'SC108', '0', 1),
(4, 'CT004', 'SC108', 'SC108', '0', 1),
(1, 'CT004', 'SC013', 'SC108', '1', 2),
(1, 'CT004', 'SC014', 'SC108', '1', 2),
(1, 'CT004', 'SC015', 'SC108', '1', 3),
(1, 'CT004', 'SC016', 'SC108', '1', 3),
(1, 'CT004', 'SC105', 'SC108', '1', 2),
(1, 'CT004', 'SC106', 'SC108', '1', 2),
(1, 'CT004', 'SC107', 'SC108', '1', 2),
(1, 'CT004', 'SC108', 'SC108', '0', 1);
INSERT INTO `ahp_subcriteria_weight` (`id_hipotesis`, `id_criteria`, `ahp_subcriteria_1`, `ahp_subcriteria_2`, `point`, `weight`) VALUES
(2, 'CT004', 'SC013', 'SC108', '1', 6),
(2, 'CT004', 'SC014', 'SC108', '1', 4),
(2, 'CT004', 'SC015', 'SC108', '1', 5),
(2, 'CT004', 'SC016', 'SC108', '1', 3),
(2, 'CT004', 'SC105', 'SC108', '1', 3),
(2, 'CT004', 'SC106', 'SC108', '1', 2),
(2, 'CT004', 'SC107', 'SC108', '1', 2),
(2, 'CT004', 'SC108', 'SC108', '0', 1),
(4, 'CT004', 'SC013', 'SC109', '0', 1),
(4, 'CT004', 'SC014', 'SC109', '0', 1),
(4, 'CT004', 'SC015', 'SC109', '0', 1),
(4, 'CT004', 'SC016', 'SC109', '0', 1),
(4, 'CT004', 'SC105', 'SC109', '0', 1),
(4, 'CT004', 'SC106', 'SC109', '0', 1),
(4, 'CT004', 'SC107', 'SC109', '0', 1),
(4, 'CT004', 'SC108', 'SC109', '0', 1),
(4, 'CT004', 'SC109', 'SC109', '0', 1),
(1, 'CT004', 'SC013', 'SC109', '1', 2),
(1, 'CT004', 'SC014', 'SC109', '1', 2),
(1, 'CT004', 'SC015', 'SC109', '1', 2),
(1, 'CT004', 'SC016', 'SC109', '1', 2),
(1, 'CT004', 'SC105', 'SC109', '1', 2),
(1, 'CT004', 'SC106', 'SC109', '1', 2),
(1, 'CT004', 'SC107', 'SC109', '1', 2),
(1, 'CT004', 'SC108', 'SC109', '1', 2),
(1, 'CT004', 'SC109', 'SC109', '0', 1),
(2, 'CT004', 'SC013', 'SC109', '1', 7),
(2, 'CT004', 'SC014', 'SC109', '1', 5),
(2, 'CT004', 'SC015', 'SC109', '1', 7),
(2, 'CT004', 'SC016', 'SC109', '1', 4),
(2, 'CT004', 'SC105', 'SC109', '1', 3),
(2, 'CT004', 'SC106', 'SC109', '1', 3),
(2, 'CT004', 'SC107', 'SC109', '1', 3),
(2, 'CT004', 'SC108', 'SC109', '1', 3),
(2, 'CT004', 'SC109', 'SC109', '0', 1),
(4, 'CT004', 'SC013', 'SC110', '0', 1),
(4, 'CT004', 'SC014', 'SC110', '0', 1),
(4, 'CT004', 'SC015', 'SC110', '0', 1),
(4, 'CT004', 'SC016', 'SC110', '0', 1),
(4, 'CT004', 'SC105', 'SC110', '0', 1),
(4, 'CT004', 'SC106', 'SC110', '0', 1),
(4, 'CT004', 'SC107', 'SC110', '0', 1),
(4, 'CT004', 'SC108', 'SC110', '0', 1),
(4, 'CT004', 'SC109', 'SC110', '0', 1),
(4, 'CT004', 'SC110', 'SC110', '0', 1),
(1, 'CT004', 'SC013', 'SC110', '1', 2),
(1, 'CT004', 'SC014', 'SC110', '1', 2),
(1, 'CT004', 'SC015', 'SC110', '1', 2),
(1, 'CT004', 'SC016', 'SC110', '1', 2),
(1, 'CT004', 'SC105', 'SC110', '1', 2),
(1, 'CT004', 'SC106', 'SC110', '1', 2),
(1, 'CT004', 'SC107', 'SC110', '1', 2),
(1, 'CT004', 'SC108', 'SC110', '1', 2),
(1, 'CT004', 'SC109', 'SC110', '0', 2),
(1, 'CT004', 'SC110', 'SC110', '0', 1),
(2, 'CT004', 'SC013', 'SC110', '1', 6),
(2, 'CT004', 'SC014', 'SC110', '1', 6),
(2, 'CT004', 'SC015', 'SC110', '1', 6),
(2, 'CT004', 'SC016', 'SC110', '1', 4),
(2, 'CT004', 'SC105', 'SC110', '1', 4),
(2, 'CT004', 'SC106', 'SC110', '1', 4),
(2, 'CT004', 'SC107', 'SC110', '1', 3),
(2, 'CT004', 'SC108', 'SC110', '1', 3),
(2, 'CT004', 'SC109', 'SC110', '0', 3),
(2, 'CT004', 'SC110', 'SC110', '0', 1),
(4, 'CT021', 'SC095', 'SC111', '0', 1),
(4, 'CT021', 'SC096', 'SC111', '0', 1),
(4, 'CT021', 'SC097', 'SC111', '0', 1),
(4, 'CT021', 'SC098', 'SC111', '0', 1),
(4, 'CT021', 'SC099', 'SC111', '0', 1),
(4, 'CT021', 'SC100', 'SC111', '0', 1),
(4, 'CT021', 'SC111', 'SC111', '0', 1),
(1, 'CT021', 'SC095', 'SC111', '0', 2),
(1, 'CT021', 'SC096', 'SC111', '1', 3),
(1, 'CT021', 'SC097', 'SC111', '1', 4),
(1, 'CT021', 'SC098', 'SC111', '1', 4),
(1, 'CT021', 'SC099', 'SC111', '1', 4),
(1, 'CT021', 'SC100', 'SC111', '1', 4),
(1, 'CT021', 'SC111', 'SC111', '0', 1),
(2, 'CT021', 'SC095', 'SC111', '0', 1),
(2, 'CT021', 'SC096', 'SC111', '0', 1),
(2, 'CT021', 'SC097', 'SC111', '0', 1),
(2, 'CT021', 'SC098', 'SC111', '0', 1),
(2, 'CT021', 'SC099', 'SC111', '0', 1),
(2, 'CT021', 'SC100', 'SC111', '0', 1),
(2, 'CT021', 'SC111', 'SC111', '0', 1),
(4, 'CT021', 'SC095', 'SC112', '0', 1),
(4, 'CT021', 'SC096', 'SC112', '0', 1),
(4, 'CT021', 'SC097', 'SC112', '0', 1),
(4, 'CT021', 'SC098', 'SC112', '0', 1),
(4, 'CT021', 'SC099', 'SC112', '0', 1),
(4, 'CT021', 'SC100', 'SC112', '0', 1),
(4, 'CT021', 'SC111', 'SC112', '0', 1),
(4, 'CT021', 'SC112', 'SC112', '0', 1),
(1, 'CT021', 'SC095', 'SC112', '0', 2),
(1, 'CT021', 'SC096', 'SC112', '1', 2),
(1, 'CT021', 'SC097', 'SC112', '1', 2),
(1, 'CT021', 'SC098', 'SC112', '1', 3),
(1, 'CT021', 'SC099', 'SC112', '1', 3),
(1, 'CT021', 'SC100', 'SC112', '1', 3),
(1, 'CT021', 'SC111', 'SC112', '0', 3),
(1, 'CT021', 'SC112', 'SC112', '0', 1),
(2, 'CT021', 'SC095', 'SC112', '0', 1),
(2, 'CT021', 'SC096', 'SC112', '0', 1),
(2, 'CT021', 'SC097', 'SC112', '0', 1),
(2, 'CT021', 'SC098', 'SC112', '0', 1),
(2, 'CT021', 'SC099', 'SC112', '0', 1),
(2, 'CT021', 'SC100', 'SC112', '0', 1),
(2, 'CT021', 'SC111', 'SC112', '0', 1),
(2, 'CT021', 'SC112', 'SC112', '0', 1),
(4, 'CT021', 'SC095', 'SC113', '0', 1),
(4, 'CT021', 'SC096', 'SC113', '0', 1),
(4, 'CT021', 'SC097', 'SC113', '0', 1),
(4, 'CT021', 'SC098', 'SC113', '0', 1),
(4, 'CT021', 'SC099', 'SC113', '0', 1),
(4, 'CT021', 'SC100', 'SC113', '0', 1),
(4, 'CT021', 'SC111', 'SC113', '0', 1),
(4, 'CT021', 'SC112', 'SC113', '0', 1),
(4, 'CT021', 'SC113', 'SC113', '0', 1),
(1, 'CT021', 'SC095', 'SC113', '0', 2),
(1, 'CT021', 'SC096', 'SC113', '1', 2),
(1, 'CT021', 'SC097', 'SC113', '1', 2),
(1, 'CT021', 'SC098', 'SC113', '1', 2),
(1, 'CT021', 'SC099', 'SC113', '1', 2),
(1, 'CT021', 'SC100', 'SC113', '1', 2),
(1, 'CT021', 'SC111', 'SC113', '0', 2),
(1, 'CT021', 'SC112', 'SC113', '0', 2),
(1, 'CT021', 'SC113', 'SC113', '0', 1),
(2, 'CT021', 'SC095', 'SC113', '0', 1),
(2, 'CT021', 'SC096', 'SC113', '0', 1),
(2, 'CT021', 'SC097', 'SC113', '0', 1),
(2, 'CT021', 'SC098', 'SC113', '0', 1),
(2, 'CT021', 'SC099', 'SC113', '0', 1),
(2, 'CT021', 'SC100', 'SC113', '0', 1),
(2, 'CT021', 'SC111', 'SC113', '0', 1),
(2, 'CT021', 'SC112', 'SC113', '0', 1),
(2, 'CT021', 'SC113', 'SC113', '0', 1),
(4, 'CT019', 'SC090', 'SC114', '0', 1),
(4, 'CT019', 'SC091', 'SC114', '0', 1),
(4, 'CT019', 'SC092', 'SC114', '0', 1),
(4, 'CT019', 'SC093', 'SC114', '0', 1),
(4, 'CT019', 'SC094', 'SC114', '0', 1),
(4, 'CT019', 'SC114', 'SC114', '0', 1),
(1, 'CT019', 'SC090', 'SC114', '0', 3),
(1, 'CT019', 'SC091', 'SC114', '0', 2),
(1, 'CT019', 'SC092', 'SC114', '0', 4),
(1, 'CT019', 'SC093', 'SC114', '0', 2),
(1, 'CT019', 'SC094', 'SC114', '0', 2),
(1, 'CT019', 'SC114', 'SC114', '0', 1),
(2, 'CT019', 'SC090', 'SC114', '0', 1),
(2, 'CT019', 'SC091', 'SC114', '0', 1),
(2, 'CT019', 'SC092', 'SC114', '0', 1),
(2, 'CT019', 'SC093', 'SC114', '0', 1),
(2, 'CT019', 'SC094', 'SC114', '0', 1),
(2, 'CT019', 'SC114', 'SC114', '0', 1),
(4, 'CT021', 'SC095', 'SC115', '0', 1),
(4, 'CT021', 'SC096', 'SC115', '0', 1),
(4, 'CT021', 'SC097', 'SC115', '0', 1),
(4, 'CT021', 'SC098', 'SC115', '0', 1),
(4, 'CT021', 'SC099', 'SC115', '0', 1),
(4, 'CT021', 'SC100', 'SC115', '0', 1),
(4, 'CT021', 'SC111', 'SC115', '0', 1),
(4, 'CT021', 'SC112', 'SC115', '0', 1),
(4, 'CT021', 'SC113', 'SC115', '0', 1),
(4, 'CT021', 'SC115', 'SC115', '0', 1),
(1, 'CT021', 'SC095', 'SC115', '0', 2),
(1, 'CT021', 'SC096', 'SC115', '1', 2),
(1, 'CT021', 'SC097', 'SC115', '1', 2),
(1, 'CT021', 'SC098', 'SC115', '1', 2),
(1, 'CT021', 'SC099', 'SC115', '1', 2),
(1, 'CT021', 'SC100', 'SC115', '1', 3),
(1, 'CT021', 'SC111', 'SC115', '0', 4),
(1, 'CT021', 'SC112', 'SC115', '0', 3),
(1, 'CT021', 'SC113', 'SC115', '0', 3),
(1, 'CT021', 'SC115', 'SC115', '0', 1),
(2, 'CT021', 'SC095', 'SC115', '0', 1),
(2, 'CT021', 'SC096', 'SC115', '0', 1),
(2, 'CT021', 'SC097', 'SC115', '0', 1),
(2, 'CT021', 'SC098', 'SC115', '0', 1),
(2, 'CT021', 'SC099', 'SC115', '0', 1),
(2, 'CT021', 'SC100', 'SC115', '0', 1),
(2, 'CT021', 'SC111', 'SC115', '0', 1),
(2, 'CT021', 'SC112', 'SC115', '0', 1),
(2, 'CT021', 'SC113', 'SC115', '0', 1),
(2, 'CT021', 'SC115', 'SC115', '0', 1),
(4, 'CT019', 'SC090', 'SC116', '0', 1),
(4, 'CT019', 'SC091', 'SC116', '0', 1),
(4, 'CT019', 'SC092', 'SC116', '0', 1),
(4, 'CT019', 'SC093', 'SC116', '0', 1),
(4, 'CT019', 'SC094', 'SC116', '0', 1),
(4, 'CT019', 'SC114', 'SC116', '0', 1),
(4, 'CT019', 'SC116', 'SC116', '0', 1),
(1, 'CT019', 'SC090', 'SC116', '0', 2),
(1, 'CT019', 'SC091', 'SC116', '0', 2),
(1, 'CT019', 'SC092', 'SC116', '0', 4),
(1, 'CT019', 'SC093', 'SC116', '0', 2),
(1, 'CT019', 'SC094', 'SC116', '0', 3),
(1, 'CT019', 'SC114', 'SC116', '0', 2),
(1, 'CT019', 'SC116', 'SC116', '0', 1),
(2, 'CT019', 'SC090', 'SC116', '0', 1),
(2, 'CT019', 'SC091', 'SC116', '0', 1),
(2, 'CT019', 'SC092', 'SC116', '0', 1),
(2, 'CT019', 'SC093', 'SC116', '0', 1),
(2, 'CT019', 'SC094', 'SC116', '0', 1),
(2, 'CT019', 'SC114', 'SC116', '0', 1),
(2, 'CT019', 'SC116', 'SC116', '0', 1),
(4, 'CT019', 'SC090', 'SC117', '0', 1),
(4, 'CT019', 'SC091', 'SC117', '0', 1),
(4, 'CT019', 'SC092', 'SC117', '0', 1),
(4, 'CT019', 'SC093', 'SC117', '0', 1),
(4, 'CT019', 'SC094', 'SC117', '0', 1),
(4, 'CT019', 'SC114', 'SC117', '0', 1),
(4, 'CT019', 'SC116', 'SC117', '0', 1),
(4, 'CT019', 'SC117', 'SC117', '0', 1),
(1, 'CT019', 'SC090', 'SC117', '0', 2),
(1, 'CT019', 'SC091', 'SC117', '0', 3),
(1, 'CT019', 'SC092', 'SC117', '0', 4),
(1, 'CT019', 'SC093', 'SC117', '0', 3),
(1, 'CT019', 'SC094', 'SC117', '0', 3),
(1, 'CT019', 'SC114', 'SC117', '0', 2),
(1, 'CT019', 'SC116', 'SC117', '0', 3),
(1, 'CT019', 'SC117', 'SC117', '0', 1),
(2, 'CT019', 'SC090', 'SC117', '0', 1),
(2, 'CT019', 'SC091', 'SC117', '0', 1),
(2, 'CT019', 'SC092', 'SC117', '0', 1),
(2, 'CT019', 'SC093', 'SC117', '0', 1),
(2, 'CT019', 'SC094', 'SC117', '0', 1),
(2, 'CT019', 'SC114', 'SC117', '0', 1),
(2, 'CT019', 'SC116', 'SC117', '0', 1),
(2, 'CT019', 'SC117', 'SC117', '0', 1),
(4, 'CT019', 'SC090', 'SC118', '0', 1),
(4, 'CT019', 'SC091', 'SC118', '0', 1),
(4, 'CT019', 'SC092', 'SC118', '0', 1),
(4, 'CT019', 'SC093', 'SC118', '0', 1),
(4, 'CT019', 'SC094', 'SC118', '0', 1),
(4, 'CT019', 'SC114', 'SC118', '0', 1),
(4, 'CT019', 'SC116', 'SC118', '0', 1),
(4, 'CT019', 'SC117', 'SC118', '0', 1),
(4, 'CT019', 'SC118', 'SC118', '0', 1),
(1, 'CT019', 'SC090', 'SC118', '0', 2),
(1, 'CT019', 'SC091', 'SC118', '0', 3),
(1, 'CT019', 'SC092', 'SC118', '0', 4),
(1, 'CT019', 'SC093', 'SC118', '0', 3),
(1, 'CT019', 'SC094', 'SC118', '0', 3),
(1, 'CT019', 'SC114', 'SC118', '0', 2),
(1, 'CT019', 'SC116', 'SC118', '0', 2),
(1, 'CT019', 'SC117', 'SC118', '0', 2),
(1, 'CT019', 'SC118', 'SC118', '0', 1),
(2, 'CT019', 'SC090', 'SC118', '0', 1),
(2, 'CT019', 'SC091', 'SC118', '0', 1),
(2, 'CT019', 'SC092', 'SC118', '0', 1),
(2, 'CT019', 'SC093', 'SC118', '0', 1),
(2, 'CT019', 'SC094', 'SC118', '0', 1),
(2, 'CT019', 'SC114', 'SC118', '0', 1),
(2, 'CT019', 'SC116', 'SC118', '0', 1),
(2, 'CT019', 'SC117', 'SC118', '0', 1),
(2, 'CT019', 'SC118', 'SC118', '0', 1),
(4, 'CT016', 'SC072', 'SC119', '0', 1),
(4, 'CT016', 'SC073', 'SC119', '0', 1),
(4, 'CT016', 'SC074', 'SC119', '0', 1),
(4, 'CT016', 'SC075', 'SC119', '0', 2),
(4, 'CT016', 'SC076', 'SC119', '0', 7),
(4, 'CT016', 'SC119', 'SC119', '0', 1),
(1, 'CT016', 'SC072', 'SC119', '0', 1),
(1, 'CT016', 'SC073', 'SC119', '0', 2),
(1, 'CT016', 'SC074', 'SC119', '0', 2),
(1, 'CT016', 'SC075', 'SC119', '0', 7),
(1, 'CT016', 'SC076', 'SC119', '0', 4),
(1, 'CT016', 'SC119', 'SC119', '0', 1),
(2, 'CT016', 'SC072', 'SC119', '0', 1),
(2, 'CT016', 'SC073', 'SC119', '0', 1),
(2, 'CT016', 'SC074', 'SC119', '0', 1),
(2, 'CT016', 'SC075', 'SC119', '0', 4),
(2, 'CT016', 'SC076', 'SC119', '0', 6),
(2, 'CT016', 'SC119', 'SC119', '0', 1),
(4, 'CT017', 'SC087', 'SC120', '0', 2),
(4, 'CT017', 'SC088', 'SC120', '0', 1),
(4, 'CT017', 'SC089', 'SC120', '0', 5),
(4, 'CT017', 'SC120', 'SC120', '0', 1),
(1, 'CT017', 'SC087', 'SC120', '0', 2),
(1, 'CT017', 'SC088', 'SC120', '0', 2),
(1, 'CT017', 'SC089', 'SC120', '0', 5),
(1, 'CT017', 'SC120', 'SC120', '0', 1),
(2, 'CT017', 'SC087', 'SC120', '0', 1),
(2, 'CT017', 'SC088', 'SC120', '0', 2),
(2, 'CT017', 'SC089', 'SC120', '0', 6),
(2, 'CT017', 'SC120', 'SC120', '0', 1),
(4, 'CT010', 'SC058', 'SC121', '1', 6),
(4, 'CT010', 'SC059', 'SC121', '1', 4),
(4, 'CT010', 'SC060', 'SC121', '1', 4),
(4, 'CT010', 'SC121', 'SC121', '0', 1),
(1, 'CT010', 'SC058', 'SC121', '1', 2),
(1, 'CT010', 'SC059', 'SC121', '1', 3),
(1, 'CT010', 'SC060', 'SC121', '1', 2),
(1, 'CT010', 'SC121', 'SC121', '0', 1),
(2, 'CT010', 'SC058', 'SC121', '1', 5),
(2, 'CT010', 'SC059', 'SC121', '1', 5),
(2, 'CT010', 'SC060', 'SC121', '1', 3),
(2, 'CT010', 'SC121', 'SC121', '0', 1),
(4, 'CT010', 'SC058', 'SC122', '1', 7),
(4, 'CT010', 'SC059', 'SC122', '1', 6),
(4, 'CT010', 'SC060', 'SC122', '1', 8),
(4, 'CT010', 'SC121', 'SC122', '0', 1),
(4, 'CT010', 'SC122', 'SC122', '0', 1),
(1, 'CT010', 'SC058', 'SC122', '1', 6),
(1, 'CT010', 'SC059', 'SC122', '1', 2),
(1, 'CT010', 'SC060', 'SC122', '1', 2),
(1, 'CT010', 'SC121', 'SC122', '1', 2),
(1, 'CT010', 'SC122', 'SC122', '0', 1),
(2, 'CT010', 'SC058', 'SC122', '1', 6),
(2, 'CT010', 'SC059', 'SC122', '1', 2),
(2, 'CT010', 'SC060', 'SC122', '1', 3),
(2, 'CT010', 'SC121', 'SC122', '0', 1),
(2, 'CT010', 'SC122', 'SC122', '0', 1),
(4, 'CT014', 'SC082', 'SC123', '0', 2),
(4, 'CT014', 'SC083', 'SC123', '0', 1),
(4, 'CT014', 'SC084', 'SC123', '0', 3),
(4, 'CT014', 'SC085', 'SC123', '0', 6),
(4, 'CT014', 'SC086', 'SC123', '0', 8),
(4, 'CT014', 'SC123', 'SC123', '0', 1),
(1, 'CT014', 'SC082', 'SC123', '0', 1),
(1, 'CT014', 'SC083', 'SC123', '1', 2),
(1, 'CT014', 'SC084', 'SC123', '0', 1),
(1, 'CT014', 'SC085', 'SC123', '0', 1),
(1, 'CT014', 'SC086', 'SC123', '0', 5),
(1, 'CT014', 'SC123', 'SC123', '0', 1),
(2, 'CT014', 'SC082', 'SC123', '1', 2),
(2, 'CT014', 'SC083', 'SC123', '1', 2),
(2, 'CT014', 'SC084', 'SC123', '0', 1),
(2, 'CT014', 'SC085', 'SC123', '0', 2),
(2, 'CT014', 'SC086', 'SC123', '0', 1),
(2, 'CT014', 'SC123', 'SC123', '0', 1),
(4, 'CT014', 'SC082', 'SC124', '0', 1),
(4, 'CT014', 'SC083', 'SC124', '0', 1),
(4, 'CT014', 'SC084', 'SC124', '0', 3),
(4, 'CT014', 'SC085', 'SC124', '0', 7),
(4, 'CT014', 'SC086', 'SC124', '0', 8),
(4, 'CT014', 'SC123', 'SC124', '0', 1),
(4, 'CT014', 'SC124', 'SC124', '0', 1),
(1, 'CT014', 'SC082', 'SC124', '0', 2),
(1, 'CT014', 'SC083', 'SC124', '1', 2),
(1, 'CT014', 'SC084', 'SC124', '0', 1),
(1, 'CT014', 'SC085', 'SC124', '0', 2),
(1, 'CT014', 'SC086', 'SC124', '0', 2),
(1, 'CT014', 'SC123', 'SC124', '0', 2),
(1, 'CT014', 'SC124', 'SC124', '0', 1),
(2, 'CT014', 'SC082', 'SC124', '0', 2),
(2, 'CT014', 'SC083', 'SC124', '0', 1),
(2, 'CT014', 'SC084', 'SC124', '0', 2),
(2, 'CT014', 'SC085', 'SC124', '0', 3),
(2, 'CT014', 'SC086', 'SC124', '0', 2),
(2, 'CT014', 'SC123', 'SC124', '1', 2),
(2, 'CT014', 'SC124', 'SC124', '0', 1),
(4, 'CT017', 'SC087', 'SC125', '0', 1),
(4, 'CT017', 'SC088', 'SC125', '0', 1),
(4, 'CT017', 'SC089', 'SC125', '0', 8),
(4, 'CT017', 'SC120', 'SC125', '0', 1),
(4, 'CT017', 'SC125', 'SC125', '0', 1),
(1, 'CT017', 'SC087', 'SC125', '0', 1),
(1, 'CT017', 'SC088', 'SC125', '0', 2),
(1, 'CT017', 'SC089', 'SC125', '0', 2),
(1, 'CT017', 'SC120', 'SC125', '0', 2),
(1, 'CT017', 'SC125', 'SC125', '0', 1),
(2, 'CT017', 'SC087', 'SC125', '0', 1),
(2, 'CT017', 'SC088', 'SC125', '0', 2),
(2, 'CT017', 'SC089', 'SC125', '0', 1),
(2, 'CT017', 'SC120', 'SC125', '1', 2),
(2, 'CT017', 'SC125', 'SC125', '0', 1),
(4, 'CT016', 'SC072', 'SC126', '0', 1),
(4, 'CT016', 'SC073', 'SC126', '0', 1),
(4, 'CT016', 'SC074', 'SC126', '0', 1),
(4, 'CT016', 'SC075', 'SC126', '0', 3),
(4, 'CT016', 'SC076', 'SC126', '0', 8),
(4, 'CT016', 'SC119', 'SC126', '0', 4),
(4, 'CT016', 'SC126', 'SC126', '0', 1),
(1, 'CT016', 'SC072', 'SC126', '0', 1),
(1, 'CT016', 'SC073', 'SC126', '0', 2),
(1, 'CT016', 'SC074', 'SC126', '0', 3),
(1, 'CT016', 'SC075', 'SC126', '0', 7),
(1, 'CT016', 'SC076', 'SC126', '0', 4),
(1, 'CT016', 'SC119', 'SC126', '0', 3),
(1, 'CT016', 'SC126', 'SC126', '0', 1),
(2, 'CT016', 'SC072', 'SC126', '0', 1),
(2, 'CT016', 'SC073', 'SC126', '0', 1),
(2, 'CT016', 'SC074', 'SC126', '0', 1),
(2, 'CT016', 'SC075', 'SC126', '0', 7),
(2, 'CT016', 'SC076', 'SC126', '0', 8),
(2, 'CT016', 'SC119', 'SC126', '0', 3),
(2, 'CT016', 'SC126', 'SC126', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `allocation_product`
--

CREATE TABLE IF NOT EXISTS `allocation_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hipo` int(11) DEFAULT NULL,
  `component` varchar(5) DEFAULT NULL,
  `allocation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hipo_component` (`hipo`,`component`),
  KEY `FK_allocation_product_ahp_component_computer` (`component`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `allocation_product`
--

INSERT INTO `allocation_product` (`id`, `hipo`, `component`, `allocation`) VALUES
(1, 1, 'CM001', 20),
(2, 1, 'CM004', 30),
(3, 1, 'CM002', 10),
(4, 1, 'CM005', 15),
(5, 1, 'CM003', 5),
(7, 2, 'CM001', 25),
(8, 2, 'CM002', 15),
(9, 2, 'CM003', 20),
(10, 2, 'CM005', 10),
(11, 2, 'CM004', 10),
(13, 4, 'CM001', 30),
(14, 4, 'CM002', 15),
(15, 4, 'CM003', 20),
(16, 4, 'CM004', 10),
(17, 4, 'CM005', 10);

-- --------------------------------------------------------

--
-- Table structure for table `allocation_psu`
--

CREATE TABLE IF NOT EXISTS `allocation_psu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hipo` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hipo` (`hipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `allocation_psu`
--

INSERT INTO `allocation_psu` (`id`, `hipo`, `value`) VALUES
(1, 4, 10),
(2, 1, 7),
(3, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `app_admin`
--

CREATE TABLE IF NOT EXISTS `app_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` char(64) NOT NULL,
  `remember_token` char(60) NOT NULL,
  `updated_at` datetime NOT NULL,
  `insert_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `app_admin`
--

INSERT INTO `app_admin` (`id`, `username`, `password`, `remember_token`, `updated_at`, `insert_at`) VALUES
(1, 'admin', '$2y$10$M2CR6C.iir8E3xGHL53CTetFWpUBVUrxYzZgeS9Em9drSzhdzBbvm', 'T3yJjunTWsyIxnaX3038hEIIeTDA14AmKelQrGCOntm7Z09WDdnFRrhPdlR4', '2015-05-29 02:05:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attribut_form_factor`
--

CREATE TABLE IF NOT EXISTS `attribut_form_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_form_factor` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `attribut_form_factor`
--

INSERT INTO `attribut_form_factor` (`id`, `name_form_factor`) VALUES
(1, 'MATX'),
(2, 'ATX'),
(3, 'ITX');

-- --------------------------------------------------------

--
-- Table structure for table `attribut_socket`
--

CREATE TABLE IF NOT EXISTS `attribut_socket` (
  `id_socket` int(11) NOT NULL AUTO_INCREMENT,
  `name_socket` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_socket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `attribut_socket`
--

INSERT INTO `attribut_socket` (`id_socket`, `name_socket`) VALUES
(1, '1150'),
(2, '1155'),
(3, '1366'),
(4, 'AM3'),
(5, 'AM3+'),
(6, 'LGA 2011-v3'),
(7, 'FM2+');

-- --------------------------------------------------------

--
-- Table structure for table `build_component_depend_criteria`
--

CREATE TABLE IF NOT EXISTS `build_component_depend_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_queue` varchar(5) NOT NULL DEFAULT '0',
  `criteria_1` varchar(5) NOT NULL DEFAULT '0',
  `rule` int(11) NOT NULL DEFAULT '0',
  `criteria_2` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `component_queue_component_1_rule_component_2` (`component_queue`,`criteria_1`,`rule`,`criteria_2`),
  KEY `FK_build_component_depend_build_component_rule` (`rule`),
  KEY `FK_build_component_depend_ahp_component_computer_2` (`criteria_2`),
  KEY `component_1` (`criteria_1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `build_component_queue`
--

CREATE TABLE IF NOT EXISTS `build_component_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(5) DEFAULT NULL,
  `need` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `component` (`component`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `build_component_queue`
--

INSERT INTO `build_component_queue` (`id`, `component`, `need`) VALUES
(1, 'CM001', 1),
(2, 'CM002', 1),
(3, 'CM004', 1),
(4, 'CM005', 1),
(5, 'CM003', 0);

-- --------------------------------------------------------

--
-- Table structure for table `build_component_rule`
--

CREATE TABLE IF NOT EXISTS `build_component_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `build_component_rule`
--

INSERT INTO `build_component_rule` (`id`, `rule`) VALUES
(1, '='),
(2, '>'),
(3, '>='),
(4, '!='),
(5, '<'),
(6, '<=');

-- --------------------------------------------------------

--
-- Table structure for table `build_depend`
--

CREATE TABLE IF NOT EXISTS `build_depend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_1` varchar(5) NOT NULL DEFAULT '0',
  `rule` int(11) NOT NULL DEFAULT '0',
  `component_2` varchar(5) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_build_component_depend_build_component_rule` (`rule`),
  KEY `component_queue` (`component_1`),
  KEY `FK_build_depend_build_component_queue` (`component_2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `build_depend`
--

INSERT INTO `build_depend` (`id`, `component_1`, `rule`, `component_2`, `name`) VALUES
(4, 'CM001', 1, 'CM002', 'Socket'),
(5, 'CM001', 5, 'CM002', 'TDP'),
(7, 'CM002', 1, 'CM005', 'Slot Ram');

-- --------------------------------------------------------

--
-- Table structure for table `build_depend_value`
--

CREATE TABLE IF NOT EXISTS `build_depend_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depend` int(11) NOT NULL DEFAULT '0',
  `value` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `depend_value` (`depend`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=21 ;

--
-- Dumping data for table `build_depend_value`
--

INSERT INTO `build_depend_value` (`id`, `depend`, `value`) VALUES
(10, 4, '2011-V3'),
(9, 4, 'AM1'),
(17, 4, 'AM2'),
(7, 4, 'AM3+'),
(12, 4, 'FM1'),
(15, 4, 'FM2'),
(8, 4, 'FM2+'),
(3, 4, 'LGA 1150'),
(6, 4, 'LGA 1155'),
(11, 4, 'LGA 1156'),
(4, 4, 'LGA 1366'),
(5, 4, 'LGA 2011'),
(16, 4, 'LGA 775'),
(20, 7, 'DDR 2'),
(18, 7, 'DDR 3'),
(19, 7, 'DDR 4');

-- --------------------------------------------------------

--
-- Table structure for table `evidence`
--

CREATE TABLE IF NOT EXISTS `evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `question` varchar(200) NOT NULL,
  `group_question` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `evidence`
--

INSERT INTO `evidence` (`id`, `name`, `question`, `group_question`) VALUES
(4, 'ADOBE MASTER COLLECTION', 'Apakah anda menggunakan aplikasi ADOBE MASTER COLLECTION ?', 'A'),
(5, 'COREL DRAW', 'Apakah anda menggunakan aplikasi COREL DRAW?', 'A'),
(6, 'Chrome', 'Apakah anda sering menggunakan aplikasi chrome untuk browsing ?', 'A'),
(7, '3dmax', 'Apakah anda sering menggunakan aplikasi 3dmax ?', 'A'),
(8, 'Netbeans', 'Apakah anda sering menggunakan aplikasi Netbeans ?', 'A'),
(9, 'Ms. Word', 'Apakah anda sering menggunakan aplikasi Ms. Word ?', 'A'),
(10, 'Ms. Excel', 'Apakah anda sering menggunakan aplikasi Ms. Excel ?', 'A'),
(11, 'Warcraft', 'Apakah anda sering menggunakan aplikasi Warcraft ?', 'A'),
(12, 'GTA : San Andreas', 'Apakah anda sering menggunakan aplikasi GTA : San Andreas ?', 'A'),
(13, 'NFS Most Wanted', 'Apakah anda sering menggunakan aplikasi NFS Most Wanted ?', 'A'),
(14, 'Crysis 3', 'Apakah anda sering menggunakan aplikasi Crysis 3 ?', 'A'),
(15, 'DMC 4', 'Apakah anda sering menggunakan aplikasi DMC 4 ?', 'A'),
(16, 'Assasin Creed', 'Apakah anda sering menggunakan aplikasi Assasin Creed ?', 'A'),
(17, 'Video Player', 'Apakah anda sering menggunakan aplikasi Video Player ?', 'A'),
(18, 'Blender', 'Apakah anda sering menggunakan aplikasi Blender ?', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `hipotesis`
--

CREATE TABLE IF NOT EXISTS `hipotesis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `probabilitas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hipotesis`
--

INSERT INTO `hipotesis` (`id`, `name`, `probabilitas`) VALUES
(1, 'Kantor', '0.2'),
(2, 'Multimedia', '0.3'),
(4, 'GAME', '0.5');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_05_134857_create_evidence_table', 1),
('2015_03_05_135244_create_hipotesis_table', 2),
('2015_03_05_135453_create_rule_bayes_table', 2),
('2015_03_05_135458_create_rule_ahp_table', 2),
('2015_03_05_135926_create_komponen_table', 2),
('2015_03_05_145154_create_evidence_models_table', 3),
('2015_03_05_145244_create_hipotesis_models_table', 3),
('2015_03_05_145258_create_rule_bayes_models_table', 3),
('2015_03_28_071117_create_ahp_rule_models_table', 3),
('2015_03_28_071413_create_ahp_bayes_schema_models_table', 3),
('2015_03_28_071423_create_ahp_criteria_models_table', 3),
('2015_03_28_153041_create_ahp_component_computers_table', 3),
('2015_03_28_153052_create_ahp_component_computer_models_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(5) DEFAULT '0',
  `name` char(100) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `consumption` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__ahp_component_computer` (`component`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=116 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `component`, `name`, `price`, `consumption`) VALUES
(1, 'CM001', 'Intel Core i3-4160', 105, 73),
(2, 'CM001', 'Intel Core i5-4590', 190, 95),
(3, 'CM001', 'Intel Core i5-4690K', 200, 95),
(4, 'CM001', 'Intel Core i7-5820K', 330, 100),
(5, 'CM001', 'Intel Core i5-4690K', 243, 85),
(6, 'CM001', 'Core i7-5820K', 390, 100),
(7, 'CM001', 'Pentium G3258', 72, 65),
(8, 'CM001', 'Core i5-4590', 200, 85),
(9, 'CM001', 'Core i7-5960X', 103, 100),
(10, 'CM001', 'AMD FX-9590', 290, 200),
(12, 'CM001', 'AMD 760K Richland', 78, 100),
(13, 'CM001', 'AMD A6-7400K', 65, 85),
(15, 'CM001', 'Pentium G3220', 64, 65),
(16, 'CM001', 'AMD A-Series APU A10-5800K', 90, 85),
(17, 'CM002', 'Z87 Extreme 4', 200, 80),
(18, 'CM002', 'Z97 Extreme4', 147, 0),
(19, 'CM002', 'Z97 GAMING 5', 126, 80),
(20, 'CM002', 'GA-Z97X-UD5H-BK', 165, 80),
(21, 'CM002', 'MAXIMUS VI HERO', 140, 60),
(22, 'CM002', '970A-G46', 70, 90),
(23, 'CM002', 'H97M Anniversary', 60, 50),
(24, 'CM002', 'Z97 OC Formula', 150, 50),
(25, 'CM002', 'F2A55-M LK PLUS', 49, 50),
(26, 'CM005', 'G.SKILL Ripjaws X Series', 150, 15),
(27, 'CM003', 'GeForce GT510', 100, 60),
(28, 'CM005', 'CORSAIR Vengeance Pro (16GB)', 150, 15),
(29, 'CM003', 'GeForce GT420', 50, 50),
(30, 'CM005', 'Crucial CT51264BA160BJ', 150, 15),
(31, 'CM003', 'EVGA NVIDIA GeForce GTX 970', 350, 170),
(32, 'CM005', 'CORSAIR Vengeance', 150, 15),
(33, 'CM003', 'NVIDIA GeForce GTX 960', 300, 200),
(34, 'CM005', 'G.SKILL Trident X Series (16GB)', 150, 15),
(35, 'CM003', 'AMD Radeon R9 280X', 230, 200),
(36, 'CM005', 'HyperX FURY', 150, 15),
(37, 'CM003', 'MSI GTX 970 GAMING 4G GeForce GTX 970', 250, 150),
(38, 'CM005', 'Crucial CT2KIT102464BF160B (16GB)', 150, 15),
(39, 'CM003', 'ASUS TURBO-GTX970-OC-4GD5 GeForce GTX 970', 330, 150),
(40, 'CM004', 'Seagate Desktop SSHD', 100, 80),
(41, 'CM003', 'EVGA 04G-P4-2986-KR GeForce GTX 980', 580, 180),
(42, 'CM004', 'WD Green WD40EZRX', 140, 12),
(43, 'CM003', 'GIGABYTE GV-N970WF3OC-4GD GeForce GTX 970', 350, 180),
(44, 'CM004', 'Seagate ST3000VN000', 115, 12),
(45, 'CM003', 'PowerColor PCS+ AXR9 290X 4GBD5-PPDHE Radeon R9 29', 320, 250),
(46, 'CM004', 'WD BLACK SERIES WD7500BPKX', 62, 12),
(47, 'CM003', 'MSI R9 290 GAMING 4G AMD Radeon R9 290', 300, 250),
(48, 'CM004', 'Seagate Barracuda ST1000DM003', 52, 12),
(50, 'CM004', 'HGST Deskstar NAS H3IKNAS600012872SN (0S03839)', 290, 12),
(52, 'CM004', 'WD Red WD30EFRX', 120, 12),
(72, 'CM002', 'H61M-VS R2.0', 36, 50),
(73, 'CM002', 'B75M-DGS R2.0', 70, 60),
(74, 'CM002', 'Asrock P75 PRO3', 0, 0),
(76, 'CM001', 'Intel Core 2 Quad Processor Q6600', 100, 95),
(77, 'CM001', 'Intel Pentium Processor G3258', 85, 90),
(78, 'CM001', 'Intel Core i3-4160', 117, 90),
(79, 'CM001', 'Intel Core i5-4570', 202, 85),
(80, 'CM001', 'AMD Sempron LE-1200', 200, 80),
(81, 'CM002', 'Asus P8Z77-V LX', 0, 0),
(82, 'CM005', 'Kingston 2 gb', 20, 10),
(83, 'CM001', 'INTEL G1820 2.7GHz 2CORE L3:3MB 22NM 54W TRAY', 42, 50),
(84, 'CM001', 'INTEL G1620 2.8G, 2MB, 22NM, 55W', 42, 0),
(85, 'CM001', 'INTEL G2030 3.0G, 3MB, 22NM, 55W', 64, 0),
(86, 'CM001', 'CORE I3 3240 3.4G BOX, 3MB, 22NM, 55W', 117, 0),
(87, 'CM001', 'INTEL G3240 2.7GHz 2CORE L3:3MB 22NM 54W TRAY', 64, 0),
(88, 'CM001', 'CORE i3 4130 3.4GHz 2CORE L3:3MB 22NM 54W', 117, 0),
(89, 'CM001', 'CORE I5 4460 3.2GHz BOX, 6MB, 22NM, 84W', 187, 0),
(90, 'CM001', 'CORE I7 4790 3.6G BOX, 6MB, 22NM, 84W HASWELL REFRESH', 312, 0),
(91, 'CM001', 'CORE I7 4790K 3.6G BOX, 6MB, 22NM, 84W UNLOCKED', 350, 0),
(92, 'CM001', 'A8- 7600 3.1G BOX, 4CORE, GPU RADEON R7, 384 Cores, 720MHz', 90, 0),
(93, 'CM001', 'A10- 7800 3.5G BOX, 4CORE, GPU RADEON R7, 384 Cores, 720MHz', 135, 0),
(94, 'CM005', 'Kingston 1GB 240-Pin', 30, 0),
(95, 'CM005', 'Kingston 2GB 240-Pin', 26, 0),
(96, 'CM005', 'Kingston 2GB 240-Pin DDR3', 17, 0),
(97, 'CM005', 'Axiom 2GB 240-Pin', 22, 0),
(98, 'CM005', 'Crucial 2GB 240-Pin', 18, 0),
(99, 'CM005', 'EDGE Tech 2GB', 180, 0),
(100, 'CM005', 'Visiontek 2GB', 30, 0),
(101, 'CM005', 'NEW For AMD Motherboard 2GB', 30, 0),
(102, 'CM005', 'Visiontek Performance 2GB', 30, 0),
(103, 'CM004', 'TOSHIBA DT01ACA050 500GB', 45, 0),
(104, 'CM004', 'Seagate NAS HDD ST3000VN000 3TB', 115, 0),
(105, 'CM004', 'Seagate Barracuda ST2000DM001 2TB', 77, 0),
(106, 'CM003', 'PowerColor TurboDuo AXR9', 170, 0),
(107, 'CM004', 'WD BLACK SERIES WD7500BPKX 750GB', 62, 0),
(108, 'CM003', 'SAPPHIRE 100362-3L Radeon R9 290', 270, 0),
(109, 'CM004', 'TOSHIBA PH3300U-1I72 3TB', 105, 0),
(110, 'CM004', 'Western Digital Blue WD10EZEX 1TB', 55, 0),
(111, 'CM004', 'WD Green WD40EZRX 4TB', 140, 0),
(112, 'CM004', 'TOSHIBA DT01ACA300 3TB', 95, 0),
(113, 'CM004', 'Seagate ST4000VX000 4TB', 165, 0),
(114, 'CM004', 'WD Blue WD5000LPVX 500GB', 45, 0),
(115, 'CM004', 'Segate 160GB', 20, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_comp_description`
--

CREATE TABLE IF NOT EXISTS `product_comp_description` (
  `component` varchar(5) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` char(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `component_description` (`component`,`description`),
  KEY `FK_product_comp_description_ahp_component_computer` (`component`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=28 ;

--
-- Dumping data for table `product_comp_description`
--

INSERT INTO `product_comp_description` (`component`, `id`, `description`) VALUES
('CM001', 1, 'Clock'),
('CM001', 6, 'Graphic'),
('CM002', 9, 'Board'),
('CM002', 12, 'Socket'),
('CM002', 11, 'TDP Support'),
('CM003', 15, 'Interface'),
('CM003', 18, 'Memory Interface'),
('CM003', 17, 'Minimum Psu'),
('CM003', 20, 'TDP'),
('CM004', 27, 'Board'),
('CM005', 25, 'Timing');

-- --------------------------------------------------------

--
-- Table structure for table `product_depend`
--

CREATE TABLE IF NOT EXISTS `product_depend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `build_depend` int(11) DEFAULT NULL,
  `depend` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__build_depend_value` (`depend`),
  KEY `FK__product` (`product`),
  KEY `FK_product_depend_build_depend` (`build_depend`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `product_depend`
--

INSERT INTO `product_depend` (`id`, `product`, `build_depend`, `depend`, `value`) VALUES
(4, 83, 4, 6, NULL),
(5, 83, 5, NULL, 53),
(6, 84, 4, 6, NULL),
(7, 84, 5, NULL, 55),
(10, 85, 4, 6, NULL),
(11, 85, 5, NULL, 55),
(12, 86, 4, 6, NULL),
(13, 86, 5, NULL, 55),
(14, 87, 4, 3, NULL),
(15, 87, 5, NULL, 35),
(16, 88, 4, 3, NULL),
(17, 88, 5, NULL, 54),
(18, 89, 4, 3, NULL),
(19, 89, 5, NULL, 84),
(20, 90, 4, 3, NULL),
(21, 90, 5, NULL, 84),
(24, 91, 4, 3, NULL),
(25, 91, 5, NULL, 88),
(26, 92, 4, 8, NULL),
(27, 92, 5, NULL, 65),
(28, 93, 4, 8, NULL),
(29, 93, 5, NULL, 65),
(30, 1, 5, NULL, 84),
(31, 2, 5, NULL, 84),
(32, 3, 5, NULL, 88),
(33, 4, 5, NULL, 0),
(34, 5, 5, NULL, 88),
(35, 6, 5, NULL, 140),
(36, 7, 5, NULL, 53),
(37, 8, 5, NULL, 84),
(38, 9, 5, NULL, 140),
(39, 10, 5, NULL, 220),
(40, 12, 5, NULL, 100),
(41, 13, 5, NULL, 0),
(42, 15, 5, NULL, 53),
(43, 76, 5, NULL, 105),
(44, 77, 5, NULL, 53),
(45, 78, 5, NULL, 54),
(46, 79, 5, NULL, 84),
(47, 80, 5, NULL, 45),
(48, 16, 5, NULL, 100),
(49, 94, 7, 20, NULL),
(50, 95, 7, 20, NULL),
(51, 96, 7, 18, NULL),
(52, 97, 7, 18, NULL),
(53, 98, 7, 18, NULL),
(54, 99, 7, 18, NULL),
(55, 100, 7, 18, NULL),
(56, 101, 7, 20, NULL),
(57, 102, 7, 18, NULL),
(58, 81, 5, NULL, 0),
(59, 18, 5, NULL, 0),
(60, 24, 5, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE IF NOT EXISTS `product_description` (
  `product` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` int(11) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_description` (`product`,`description`),
  KEY `FK_product_description_product_comp_description` (`description`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=732 ;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`product`, `id`, `description`, `content`) VALUES
(1, 160, 1, '3.6 GHz'),
(1, 162, 6, 'Intel HD Graphics 4400'),
(2, 167, 1, '3.3 GHz'),
(2, 169, 6, 'Intel HD Graphics 4600'),
(3, 174, 1, '3.5 GHz'),
(3, 176, 6, 'Intel HD Graphics 4600'),
(4, 181, 1, '3.3 GHz'),
(4, 183, 6, '0'),
(5, 188, 1, '3.5 GHz'),
(5, 190, 6, 'Intel HD Graphics 4600'),
(6, 195, 1, '3.3 GHz'),
(6, 197, 6, ''),
(7, 202, 1, '3.2 GHz'),
(7, 204, 6, 'Intel HD Graphics'),
(8, 209, 1, '3.3 GHz'),
(8, 211, 6, 'Intel HD Graphics 4600'),
(9, 216, 1, '3 GHz'),
(9, 218, 6, ''),
(10, 223, 1, '4.7GHz'),
(10, 225, 6, ''),
(12, 237, 1, '3.8GHz'),
(12, 239, 6, ''),
(13, 244, 1, '3.5GHz'),
(13, 246, 6, 'Radeon R5 series'),
(16, 258, 1, '3.8GHz'),
(16, 260, 6, 'AMD Radeon HD 7660D'),
(15, 265, 1, '3 GHz'),
(15, 267, 6, 'Intel HD Graphics'),
(17, 272, 9, 'Asrock'),
(17, 276, 12, '1'),
(17, 277, 11, '84'),
(18, 278, 9, 'Asrock'),
(18, 282, 12, '1'),
(18, 283, 11, '84'),
(19, 284, 9, 'MSI'),
(19, 288, 12, '1'),
(19, 289, 11, '0'),
(20, 290, 9, 'GIGABYTE'),
(20, 294, 12, '1'),
(20, 295, 11, '0'),
(21, 296, 9, 'ASUS'),
(21, 300, 12, '1'),
(21, 301, 11, '0'),
(22, 302, 9, 'MSI'),
(22, 306, 12, '5'),
(22, 307, 11, '0'),
(23, 308, 9, 'ASRock'),
(23, 312, 12, '1'),
(23, 313, 11, '0'),
(24, 314, 9, 'ASROCK'),
(24, 318, 12, '1'),
(24, 319, 11, '0'),
(25, 320, 9, 'ASUS'),
(25, 324, 12, '7'),
(25, 325, 11, '0'),
(26, 329, 25, '9-9-9-24'),
(28, 333, 25, '9-10-9-27'),
(30, 337, 25, '0'),
(32, 341, 25, '9-9-9-24'),
(34, 345, 25, '10-12-12-31'),
(36, 349, 25, '10-11-10'),
(38, 353, 25, '0'),
(27, 356, 15, 'PCI Ex 16'),
(27, 357, 18, '0'),
(27, 358, 17, '300'),
(27, 360, 20, '25'),
(29, 363, 15, 'PCI Ex 16'),
(29, 364, 18, '0'),
(29, 365, 17, '300'),
(29, 367, 20, '50'),
(31, 379, 15, 'PCI Express 3.0'),
(31, 380, 18, '256'),
(31, 381, 17, '500'),
(31, 383, 20, '0'),
(33, 392, 15, 'PCI Express 3.0'),
(33, 393, 18, '128'),
(33, 394, 17, '430'),
(33, 396, 20, '0'),
(35, 402, 15, 'PCI Express 3.0'),
(35, 403, 18, '384'),
(35, 404, 17, '600'),
(35, 406, 20, '0'),
(37, 412, 15, 'PCI Express 3.0 x16'),
(37, 413, 18, '256'),
(37, 414, 17, '500'),
(37, 416, 20, '0'),
(39, 419, 15, 'PCI Express 3.0'),
(39, 420, 18, '256'),
(39, 421, 17, '500'),
(39, 423, 20, '0'),
(41, 426, 15, 'PCI Express 3.0 x16'),
(41, 427, 18, '256'),
(41, 428, 17, '520'),
(41, 430, 20, '0'),
(43, 445, 15, 'PCI Express 3.0'),
(43, 446, 18, '256'),
(43, 447, 17, '500'),
(43, 449, 20, '0'),
(45, 464, 15, 'PCI Express 3.0'),
(45, 465, 18, '512'),
(45, 466, 17, '650'),
(45, 468, 20, '0'),
(47, 483, 15, 'PCI Express 3.0 x16'),
(47, 484, 18, '512'),
(47, 485, 17, '650'),
(47, 487, 20, '0'),
(72, 554, 9, 'ASROCK'),
(72, 558, 12, '1155'),
(72, 559, 11, '0'),
(73, 560, 9, 'Asrock '),
(73, 564, 12, '1155'),
(73, 565, 11, '0'),
(74, 566, 9, 'ASROCK'),
(74, 570, 12, '1155'),
(74, 571, 11, '0'),
(76, 579, 1, '2.4 GHz'),
(76, 581, 6, '0'),
(77, 586, 1, '3.2 GHz'),
(77, 588, 6, 'Intel HD Graphics'),
(78, 593, 1, '3.6 GHz'),
(78, 595, 6, 'Intel HD Graphics 4400'),
(79, 600, 1, '3.2 GHz'),
(79, 602, 6, 'Intel HD Graphics 4600'),
(80, 607, 1, '2.1GHz'),
(80, 609, 6, ''),
(81, 620, 9, 'Asus'),
(81, 624, 12, '1150'),
(81, 625, 11, '250'),
(82, 627, 25, '-'),
(83, 652, 1, '2.7'),
(83, 653, 6, 'Intel® HD Graphics'),
(84, 656, 1, '2.7 GHz'),
(84, 657, 6, 'Intel® HD Graphics'),
(85, 664, 1, '3 GHz'),
(85, 665, 6, 'Intel® HD Graphics'),
(86, 668, 1, '3.4 GHz'),
(86, 669, 6, 'Intel® HD Graphics 2500'),
(87, 672, 1, '2.7 GHz'),
(87, 673, 6, 'Intel® HD Graphics'),
(88, 676, 1, '3.4 GHz'),
(88, 677, 6, 'Intel® HD graphics 4400'),
(89, 680, 1, '3.2 GHz'),
(89, 681, 6, 'Intel® HD Graphics 4600'),
(90, 684, 1, '3.6 GHz'),
(90, 685, 6, 'Intel® HD Graphics 4600'),
(91, 692, 1, '4 GHz'),
(91, 693, 6, 'Intel® HD Graphics 4600'),
(92, 696, 1, '3.1 GHz'),
(92, 697, 6, 'Radeon R7 series'),
(93, 700, 1, '3.5 GHz'),
(93, 701, 6, 'Radeon R7 series'),
(94, 704, 25, '0'),
(95, 705, 25, '0'),
(96, 706, 25, '0'),
(97, 707, 25, '0'),
(98, 708, 25, '0'),
(99, 709, 25, '0'),
(100, 710, 25, '0'),
(101, 711, 25, '0'),
(102, 712, 25, '0'),
(103, 713, 27, 'TOSHIBA'),
(104, 714, 27, 'Seagate'),
(105, 715, 27, 'Seagate'),
(106, 716, 15, 'PCI Express 3.0'),
(106, 717, 18, '384-Bit'),
(106, 718, 17, '750W'),
(106, 719, 20, '0'),
(107, 720, 27, 'WD'),
(108, 721, 15, 'PCI Express 3.0'),
(108, 722, 18, '512'),
(108, 723, 17, '600'),
(108, 724, 20, '0'),
(109, 725, 27, 'TOSHIBA'),
(110, 726, 27, 'WD'),
(111, 727, 27, 'WD'),
(112, 728, 27, 'TOSHIBA'),
(113, 729, 27, 'Seagate'),
(114, 730, 27, 'WD'),
(115, 731, 27, 'Seagate');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE IF NOT EXISTS `product_detail` (
  `product` int(11) DEFAULT NULL,
  `id_criteria` varchar(5) DEFAULT NULL,
  `id_subcriteria` varchar(5) DEFAULT NULL,
  UNIQUE KEY `product_id_criteria_id_subcriteria` (`product`,`id_criteria`,`id_subcriteria`),
  KEY `FK_product_moboo_detail_product_mobo` (`product`),
  KEY `FK_product_moboo_detail_ahp_criteria` (`id_criteria`),
  KEY `FK_product_moboo_detail_ahp_subcriteria` (`id_subcriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`product`, `id_criteria`, `id_subcriteria`) VALUES
(1, 'CT001', 'SC017'),
(1, 'CT002', 'SC002'),
(1, 'CT003', 'SC008'),
(1, 'CT004', 'SC015'),
(2, 'CT001', 'SC019'),
(2, 'CT002', 'SC003'),
(2, 'CT003', 'SC008'),
(2, 'CT004', 'SC015'),
(3, 'CT001', 'SC019'),
(3, 'CT002', 'SC003'),
(3, 'CT003', 'SC008'),
(3, 'CT004', 'SC015'),
(4, 'CT001', 'SC019'),
(4, 'CT002', 'SC004'),
(4, 'CT003', 'SC012'),
(4, 'CT004', 'SC109'),
(5, 'CT001', 'SC020'),
(5, 'CT002', 'SC003'),
(5, 'CT003', 'SC009'),
(5, 'CT004', 'SC015'),
(6, 'CT001', 'SC017'),
(6, 'CT002', 'SC004'),
(6, 'CT003', 'SC012'),
(6, 'CT004', 'SC109'),
(7, 'CT001', 'SC019'),
(7, 'CT002', 'SC002'),
(7, 'CT003', 'SC008'),
(7, 'CT004', 'SC105'),
(8, 'CT001', 'SC019'),
(8, 'CT002', 'SC003'),
(8, 'CT003', 'SC009'),
(8, 'CT004', 'SC108'),
(9, 'CT001', 'SC019'),
(9, 'CT002', 'SC005'),
(9, 'CT003', 'SC012'),
(9, 'CT004', 'SC109'),
(10, 'CT001', 'SC020'),
(10, 'CT002', 'SC005'),
(10, 'CT003', 'SC011'),
(10, 'CT004', 'SC110'),
(12, 'CT001', 'SC020'),
(12, 'CT002', 'SC003'),
(12, 'CT003', 'SC009'),
(12, 'CT004', 'SC106'),
(13, 'CT001', 'SC020'),
(13, 'CT002', 'SC002'),
(13, 'CT003', 'SC008'),
(13, 'CT004', 'SC015'),
(15, 'CT001', 'SC019'),
(15, 'CT002', 'SC002'),
(15, 'CT003', 'SC008'),
(15, 'CT004', 'SC105'),
(16, 'CT001', 'SC017'),
(16, 'CT002', 'SC003'),
(16, 'CT003', 'SC009'),
(16, 'CT004', 'SC106'),
(17, 'CT005', 'SC021'),
(17, 'CT006', 'SC037'),
(17, 'CT007', 'SC045'),
(18, 'CT005', 'SC025'),
(18, 'CT006', 'SC044'),
(18, 'CT007', 'SC045'),
(19, 'CT005', 'SC025'),
(19, 'CT006', 'SC044'),
(19, 'CT007', 'SC045'),
(20, 'CT005', 'SC021'),
(20, 'CT006', 'SC037'),
(20, 'CT007', 'SC045'),
(21, 'CT005', 'SC021'),
(21, 'CT006', 'SC037'),
(21, 'CT007', 'SC045'),
(22, 'CT005', 'SC021'),
(22, 'CT006', 'SC037'),
(22, 'CT007', 'SC045'),
(23, 'CT005', 'SC021'),
(23, 'CT006', 'SC037'),
(23, 'CT007', 'SC045'),
(24, 'CT005', 'SC025'),
(24, 'CT006', 'SC044'),
(24, 'CT007', 'SC045'),
(25, 'CT005', 'SC036'),
(25, 'CT006', 'SC042'),
(25, 'CT007', 'SC045'),
(26, 'CT019', 'SC092'),
(26, 'CT021', 'SC096'),
(26, 'CT022', 'SC104'),
(27, 'CT008', 'SC056'),
(27, 'CT010', 'SC058'),
(27, 'CT011', 'SC064'),
(27, 'CT012', 'SC067'),
(28, 'CT019', 'SC093'),
(28, 'CT021', 'SC096'),
(28, 'CT022', 'SC104'),
(29, 'CT008', 'SC056'),
(29, 'CT010', 'SC060'),
(29, 'CT011', 'SC063'),
(29, 'CT012', 'SC066'),
(30, 'CT019', 'SC092'),
(30, 'CT021', 'SC096'),
(30, 'CT022', 'SC103'),
(31, 'CT008', 'SC057'),
(31, 'CT010', 'SC060'),
(31, 'CT011', 'SC064'),
(31, 'CT012', 'SC068'),
(32, 'CT019', 'SC092'),
(32, 'CT021', 'SC096'),
(32, 'CT022', 'SC104'),
(33, 'CT008', 'SC057'),
(33, 'CT010', 'SC060'),
(33, 'CT011', 'SC062'),
(33, 'CT012', 'SC068'),
(34, 'CT019', 'SC094'),
(34, 'CT021', 'SC097'),
(34, 'CT022', 'SC104'),
(35, 'CT008', 'SC056'),
(35, 'CT010', 'SC060'),
(35, 'CT011', 'SC064'),
(35, 'CT012', 'SC068'),
(36, 'CT019', 'SC093'),
(36, 'CT021', 'SC097'),
(36, 'CT022', 'SC104'),
(37, 'CT008', 'SC057'),
(37, 'CT010', 'SC060'),
(37, 'CT011', 'SC064'),
(37, 'CT012', 'SC068'),
(38, 'CT019', 'SC092'),
(38, 'CT021', 'SC098'),
(38, 'CT022', 'SC104'),
(39, 'CT008', 'SC057'),
(39, 'CT010', 'SC060'),
(39, 'CT011', 'SC064'),
(39, 'CT012', 'SC068'),
(40, 'CT013', 'SC080'),
(40, 'CT014', 'SC082'),
(40, 'CT015', 'SC070'),
(40, 'CT016', 'SC074'),
(40, 'CT017', 'SC088'),
(41, 'CT008', 'SC057'),
(41, 'CT010', 'SC060'),
(41, 'CT011', 'SC064'),
(41, 'CT012', 'SC068'),
(42, 'CT013', 'SC080'),
(42, 'CT014', 'SC086'),
(42, 'CT015', 'SC070'),
(42, 'CT016', 'SC076'),
(42, 'CT017', 'SC088'),
(43, 'CT008', 'SC057'),
(43, 'CT010', 'SC060'),
(43, 'CT011', 'SC064'),
(43, 'CT012', 'SC068'),
(44, 'CT013', 'SC080'),
(44, 'CT014', 'SC082'),
(44, 'CT015', 'SC070'),
(44, 'CT016', 'SC075'),
(44, 'CT017', 'SC088'),
(45, 'CT008', 'SC057'),
(45, 'CT010', 'SC060'),
(45, 'CT011', 'SC064'),
(45, 'CT012', 'SC068'),
(46, 'CT013', 'SC080'),
(46, 'CT014', 'SC082'),
(46, 'CT015', 'SC070'),
(46, 'CT016', 'SC073'),
(46, 'CT017', 'SC087'),
(47, 'CT008', 'SC057'),
(47, 'CT010', 'SC060'),
(47, 'CT011', 'SC064'),
(47, 'CT012', 'SC068'),
(48, 'CT013', 'SC080'),
(48, 'CT014', 'SC082'),
(48, 'CT015', 'SC070'),
(48, 'CT016', 'SC073'),
(48, 'CT017', 'SC088'),
(50, 'CT013', 'SC080'),
(50, 'CT014', 'SC082'),
(50, 'CT015', 'SC070'),
(50, 'CT016', 'SC076'),
(50, 'CT017', 'SC089'),
(52, 'CT013', 'SC080'),
(52, 'CT014', 'SC086'),
(52, 'CT015', 'SC070'),
(52, 'CT016', 'SC076'),
(52, 'CT017', 'SC088'),
(72, 'CT005', 'SC029'),
(72, 'CT006', 'SC039'),
(72, 'CT007', 'SC046'),
(73, 'CT005', 'SC029'),
(73, 'CT006', 'SC039'),
(73, 'CT007', 'SC046'),
(74, 'CT005', 'SC029'),
(74, 'CT006', 'SC039'),
(74, 'CT007', 'SC046'),
(76, 'CT001', 'SC018'),
(76, 'CT002', 'SC003'),
(76, 'CT003', 'SC009'),
(76, 'CT004', 'SC110'),
(77, 'CT001', 'SC019'),
(77, 'CT002', 'SC002'),
(77, 'CT003', 'SC008'),
(77, 'CT004', 'SC105'),
(78, 'CT001', 'SC020'),
(78, 'CT002', 'SC002'),
(78, 'CT003', 'SC009'),
(78, 'CT004', 'SC105'),
(79, 'CT001', 'SC019'),
(79, 'CT002', 'SC003'),
(79, 'CT003', 'SC009'),
(79, 'CT004', 'SC016'),
(80, 'CT001', 'SC018'),
(80, 'CT002', 'SC001'),
(80, 'CT003', 'SC007'),
(80, 'CT004', 'SC014'),
(81, 'CT005', 'SC028'),
(81, 'CT006', 'SC043'),
(81, 'CT007', 'SC045'),
(82, 'CT019', 'SC090'),
(82, 'CT021', 'SC095'),
(82, 'CT022', 'SC101'),
(83, 'CT001', 'SC019'),
(83, 'CT002', 'SC002'),
(83, 'CT003', 'SC008'),
(83, 'CT004', 'SC016'),
(84, 'CT001', 'SC019'),
(84, 'CT002', 'SC002'),
(84, 'CT003', 'SC008'),
(84, 'CT004', 'SC016'),
(85, 'CT001', 'SC019'),
(85, 'CT002', 'SC002'),
(85, 'CT003', 'SC008'),
(85, 'CT004', 'SC105'),
(86, 'CT001', 'SC019'),
(86, 'CT002', 'SC002'),
(86, 'CT003', 'SC009'),
(86, 'CT004', 'SC105'),
(87, 'CT001', 'SC019'),
(87, 'CT002', 'SC002'),
(87, 'CT003', 'SC008'),
(87, 'CT004', 'SC105'),
(88, 'CT001', 'SC019'),
(88, 'CT002', 'SC002'),
(88, 'CT003', 'SC009'),
(88, 'CT004', 'SC105'),
(89, 'CT001', 'SC019'),
(89, 'CT002', 'SC003'),
(89, 'CT003', 'SC009'),
(89, 'CT004', 'SC108'),
(90, 'CT001', 'SC020'),
(90, 'CT002', 'SC003'),
(90, 'CT003', 'SC011'),
(90, 'CT004', 'SC110'),
(91, 'CT001', 'SC020'),
(91, 'CT002', 'SC003'),
(91, 'CT003', 'SC011'),
(91, 'CT004', 'SC110'),
(92, 'CT001', 'SC019'),
(92, 'CT002', 'SC003'),
(92, 'CT003', 'SC009'),
(92, 'CT004', 'SC106'),
(93, 'CT001', 'SC019'),
(93, 'CT002', 'SC003'),
(93, 'CT003', 'SC009'),
(93, 'CT004', 'SC106'),
(94, 'CT019', 'SC114'),
(94, 'CT021', 'SC115'),
(94, 'CT022', 'SC101'),
(95, 'CT019', 'SC116'),
(95, 'CT021', 'SC112'),
(95, 'CT022', 'SC102'),
(96, 'CT019', 'SC117'),
(96, 'CT021', 'SC098'),
(96, 'CT022', 'SC102'),
(97, 'CT019', 'SC118'),
(97, 'CT021', 'SC099'),
(97, 'CT022', 'SC102'),
(98, 'CT019', 'SC117'),
(98, 'CT021', 'SC098'),
(98, 'CT022', 'SC102'),
(99, 'CT019', 'SC118'),
(99, 'CT021', 'SC099'),
(99, 'CT022', 'SC102'),
(100, 'CT019', 'SC117'),
(100, 'CT021', 'SC095'),
(100, 'CT022', 'SC102'),
(101, 'CT019', 'SC114'),
(101, 'CT021', 'SC095'),
(101, 'CT022', 'SC102'),
(102, 'CT019', 'SC090'),
(102, 'CT021', 'SC096'),
(102, 'CT022', 'SC102'),
(103, 'CT013', 'SC077'),
(103, 'CT014', 'SC082'),
(103, 'CT015', 'SC070'),
(103, 'CT016', 'SC072'),
(103, 'CT017', 'SC087'),
(104, 'CT013', 'SC078'),
(104, 'CT014', 'SC084'),
(104, 'CT015', 'SC069'),
(104, 'CT016', 'SC075'),
(104, 'CT017', 'SC088'),
(105, 'CT013', 'SC078'),
(105, 'CT014', 'SC082'),
(105, 'CT015', 'SC070'),
(105, 'CT016', 'SC074'),
(105, 'CT017', 'SC088'),
(106, 'CT008', 'SC055'),
(106, 'CT010', 'SC060'),
(106, 'CT011', 'SC064'),
(106, 'CT012', 'SC068'),
(107, 'CT013', 'SC078'),
(107, 'CT014', 'SC082'),
(107, 'CT015', 'SC070'),
(107, 'CT016', 'SC119'),
(107, 'CT017', 'SC120'),
(108, 'CT008', 'SC057'),
(108, 'CT010', 'SC122'),
(108, 'CT011', 'SC062'),
(108, 'CT012', 'SC068'),
(109, 'CT013', 'SC078'),
(109, 'CT014', 'SC082'),
(109, 'CT015', 'SC070'),
(109, 'CT016', 'SC075'),
(109, 'CT017', 'SC088'),
(110, 'CT013', 'SC078'),
(110, 'CT014', 'SC082'),
(110, 'CT015', 'SC070'),
(110, 'CT016', 'SC073'),
(110, 'CT017', 'SC088'),
(111, 'CT013', 'SC078'),
(111, 'CT014', 'SC086'),
(111, 'CT015', 'SC070'),
(111, 'CT016', 'SC076'),
(111, 'CT017', 'SC088'),
(112, 'CT013', 'SC078'),
(112, 'CT014', 'SC082'),
(112, 'CT015', 'SC070'),
(112, 'CT016', 'SC075'),
(112, 'CT017', 'SC088'),
(113, 'CT013', 'SC078'),
(113, 'CT014', 'SC123'),
(113, 'CT015', 'SC070'),
(113, 'CT016', 'SC076'),
(113, 'CT017', 'SC088'),
(114, 'CT013', 'SC078'),
(114, 'CT014', 'SC124'),
(114, 'CT015', 'SC070'),
(114, 'CT016', 'SC072'),
(114, 'CT017', 'SC125'),
(115, 'CT013', 'SC077'),
(115, 'CT014', 'SC082'),
(115, 'CT015', 'SC069'),
(115, 'CT016', 'SC126'),
(115, 'CT017', 'SC120');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_product_image` (`id_product`,`image`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `id_product`, `image`) VALUES
(29, 1, 'CM001_1_1.jpg'),
(30, 2, 'CM001_2_1.jpg'),
(31, 3, 'CM001_3_1.jpg'),
(32, 4, 'CM001_4_1.jpg'),
(33, 5, 'CM001_5_1.jpg'),
(34, 6, 'CM001_6_1.jpg'),
(35, 7, 'CM001_7_1.jpg'),
(36, 8, 'CM001_8_1.jpg'),
(37, 9, 'CM001_9_1.jpg'),
(38, 10, 'CM001_10_1.jpg'),
(39, 12, 'CM001_12_1.jpg'),
(40, 13, 'CM001_13_1.jpg'),
(41, 15, 'CM001_15_1.jpg'),
(47, 16, 'CM001_16_1.jpg'),
(11, 74, 'CM002_74_1.jpg'),
(12, 74, 'CM002_74_2.jpg'),
(13, 74, 'CM002_74_3.jpg'),
(14, 74, 'CM002_74_4.jpg'),
(42, 76, 'CM001_76_1.jpg'),
(43, 77, 'CM001_77_1.jpg'),
(44, 78, 'CM001_78_1.jpg'),
(45, 79, 'CM001_79_1.jpg'),
(46, 80, 'CM001_80_1.jpg'),
(7, 81, 'CM002_81_1.jpg'),
(8, 81, 'CM002_81_2.jpg'),
(9, 81, 'CM002_81_3.jpg'),
(10, 81, 'CM002_81_4.jpg'),
(15, 83, 'CM001_83_1.jpg'),
(28, 83, 'CM001_83_2.jpg'),
(16, 84, 'CM001_84_1.jpg'),
(18, 85, 'CM001_85_1.jpg'),
(19, 86, 'CM001_86_1.jpg'),
(20, 87, 'CM001_87_1.jpg'),
(22, 88, 'CM001_88_1.jpg'),
(23, 89, 'CM001_89_1.jpg'),
(24, 90, 'CM001_90_1.jpg'),
(25, 91, 'CM001_91_1.jpg'),
(26, 92, 'CM001_92_1.jpg'),
(27, 93, 'CM001_93_1.jpg'),
(48, 94, 'CM005_94_1.jpg'),
(49, 95, 'CM005_95_1.jpg'),
(50, 96, 'CM005_96_1.jpg'),
(51, 97, 'CM005_97_1.jpg'),
(52, 98, 'CM005_98_1.jpg'),
(53, 99, 'CM005_99_1.jpg'),
(54, 100, 'CM005_100_1.jpg'),
(55, 101, 'CM005_101_1.jpg'),
(56, 102, 'CM005_102_1.jpg'),
(57, 103, 'CM004_103_1.jpg'),
(58, 104, 'CM004_104_1.jpg'),
(59, 105, 'CM004_105_1.jpg'),
(60, 106, 'CM003_106_1.jpg'),
(61, 107, 'CM004_107_1.jpg'),
(62, 108, 'CM003_108_1.jpg'),
(63, 109, 'CM004_109_1.jpg'),
(64, 110, 'CM004_110_1.jpg'),
(65, 111, 'CM004_111_1.jpg'),
(66, 112, 'CM004_112_1.jpg'),
(67, 113, 'CM004_113_1.jpg'),
(68, 114, 'CM004_114_1.jpg'),
(69, 115, 'CM004_115_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_psu`
--

CREATE TABLE IF NOT EXISTS `product_psu` (
  `id_psu` int(11) NOT NULL AUTO_INCREMENT,
  `manufactur` char(50) DEFAULT NULL,
  `model_number` char(50) DEFAULT NULL,
  `wattage` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_psu`),
  KEY `FK_product_psu_product_psu_rating` (`rating`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `product_psu`
--

INSERT INTO `product_psu` (`id_psu`, `manufactur`, `model_number`, `wattage`, `rating`, `price`) VALUES
(1, 'XFX Technology', 'XPS-650W-3XS\r\n', 650, 1, 30000),
(2, 'XFX Technology', 'XPS-850W-BES\r\n', 850, 2, 30000),
(3, 'XFX Technology', 'XPS-450W-SEW\r\n', 450, 1, 20000),
(4, 'Sea Sonic Electronics Co., Ltd.', 'SS-600ET', 600, 1, 80000),
(5, 'CORSAIR', 'CS450M', 450, 3, 60),
(6, 'Antec', 'TP-750C', 750, 3, 80),
(7, 'EVGA', '220-G2-0750-XR', 750, 3, 115),
(8, 'Rosewill', 'RBR1000-M', 1000, 1, 120),
(9, 'CORSAIR', 'CX750M', 750, 1, 80),
(10, 'Thermaltake', 'PS-TPD-0750MPCGUS-1', 750, 3, 90),
(11, 'COOLER MASTER', 'RS550-AMAAB1-US', 550, 1, 80),
(12, 'CORSAIR', 'CX600M', 600, 1, 65);

-- --------------------------------------------------------

--
-- Table structure for table `product_psu_detail`
--

CREATE TABLE IF NOT EXISTS `product_psu_detail` (
  `id_psu` int(11) NOT NULL,
  `id_criteria` varchar(5) NOT NULL,
  `id_subcriteria` varchar(10) NOT NULL,
  UNIQUE KEY `id_psu_id_criteria_id_subcriteria` (`id_psu`,`id_criteria`,`id_subcriteria`),
  KEY `FK_product_psu_detail_ahp_criteria` (`id_criteria`),
  KEY `FK_product_psu_detail_ahp_subcriteria` (`id_subcriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_psu_image`
--

CREATE TABLE IF NOT EXISTS `product_psu_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_product_image` (`id_product`,`image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_psu_rating`
--

CREATE TABLE IF NOT EXISTS `product_psu_rating` (
  `rating` int(11) NOT NULL,
  `name_rating` char(50) DEFAULT NULL,
  PRIMARY KEY (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_psu_rating`
--

INSERT INTO `product_psu_rating` (`rating`, `name_rating`) VALUES
(1, 'Browse'),
(2, 'Silver'),
(3, 'Gold'),
(4, 'Platinum'),
(5, 'Titanium');

-- --------------------------------------------------------

--
-- Table structure for table `rule_bayes`
--

CREATE TABLE IF NOT EXISTS `rule_bayes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_evid` int(11) NOT NULL,
  `id_hipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_evid` (`id_evid`,`id_hipo`),
  KEY `id_hipo` (`id_hipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `rule_bayes`
--

INSERT INTO `rule_bayes` (`id`, `id_evid`, `id_hipo`) VALUES
(24, 4, 2),
(25, 5, 2),
(36, 6, 1),
(26, 7, 2),
(23, 8, 1),
(20, 9, 1),
(21, 10, 1),
(29, 11, 4),
(30, 12, 4),
(31, 13, 4),
(32, 14, 4),
(33, 15, 4),
(34, 16, 4),
(22, 17, 1),
(28, 17, 2),
(27, 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_pages`
--

CREATE TABLE IF NOT EXISTS `web_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ahp_bayes_schema`
--
ALTER TABLE `ahp_bayes_schema`
  ADD CONSTRAINT `ahp_bayes_schema_ibfk_1` FOREIGN KEY (`id_hipotensis`) REFERENCES `hipotesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ahp_bayes_schema_ibfk_2` FOREIGN KEY (`id_component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ahp_criteria`
--
ALTER TABLE `ahp_criteria`
  ADD CONSTRAINT `ahp_criteria_ibfk_1` FOREIGN KEY (`id_component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ahp_criteria_weight`
--
ALTER TABLE `ahp_criteria_weight`
  ADD CONSTRAINT `ahp_criteria_weight_ibfk_1` FOREIGN KEY (`id_component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ahp_criteria_weight_ibfk_2` FOREIGN KEY (`id_criteria_1`) REFERENCES `ahp_criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ahp_criteria_weight_ibfk_3` FOREIGN KEY (`id_criteria_2`) REFERENCES `ahp_criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ahp_criteria_weight_ibfk_4` FOREIGN KEY (`id_hipotesis`) REFERENCES `hipotesis` (`id`);

--
-- Constraints for table `ahp_subcriteria`
--
ALTER TABLE `ahp_subcriteria`
  ADD CONSTRAINT `ahp_subcriteria_ibfk_1` FOREIGN KEY (`id_criteria`) REFERENCES `ahp_criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ahp_subcriteria_weight`
--
ALTER TABLE `ahp_subcriteria_weight`
  ADD CONSTRAINT `FK_ahp_subcriteria_weight_ahp_criteria` FOREIGN KEY (`id_criteria`) REFERENCES `ahp_criteria` (`id_criteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ahp_subcriteria_weight_ahp_subcriteria` FOREIGN KEY (`ahp_subcriteria_1`) REFERENCES `ahp_subcriteria` (`id_sub`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ahp_subcriteria_weight_ahp_subcriteria_2` FOREIGN KEY (`ahp_subcriteria_2`) REFERENCES `ahp_subcriteria` (`id_sub`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ahp_subcriteria_weight_ibfk_1` FOREIGN KEY (`id_hipotesis`) REFERENCES `hipotesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `allocation_product`
--
ALTER TABLE `allocation_product`
  ADD CONSTRAINT `FK_allocation_product_ahp_component_computer` FOREIGN KEY (`component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_allocation_product_hipotesis` FOREIGN KEY (`hipo`) REFERENCES `hipotesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `allocation_psu`
--
ALTER TABLE `allocation_psu`
  ADD CONSTRAINT `FK_allocation_psu_hipotesis` FOREIGN KEY (`hipo`) REFERENCES `hipotesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `build_component_depend_criteria`
--
ALTER TABLE `build_component_depend_criteria`
  ADD CONSTRAINT `build_component_depend_criteria_ibfk_1` FOREIGN KEY (`criteria_1`) REFERENCES `ahp_criteria` (`id_criteria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `build_component_depend_criteria_ibfk_2` FOREIGN KEY (`criteria_2`) REFERENCES `ahp_criteria` (`id_criteria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `build_component_depend_criteria_ibfk_3` FOREIGN KEY (`component_queue`) REFERENCES `build_component_queue` (`component`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `build_component_depend_criteria_ibfk_4` FOREIGN KEY (`rule`) REFERENCES `build_component_rule` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `build_component_queue`
--
ALTER TABLE `build_component_queue`
  ADD CONSTRAINT `FK_build_component_queue_ahp_component_computer` FOREIGN KEY (`component`) REFERENCES `ahp_component_computer` (`id`) ON UPDATE SET NULL;

--
-- Constraints for table `build_depend`
--
ALTER TABLE `build_depend`
  ADD CONSTRAINT `FK_build_component_depend_build_component_queue` FOREIGN KEY (`component_1`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_build_component_depend_build_component_rule` FOREIGN KEY (`rule`) REFERENCES `build_component_rule` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_build_depend_build_component_queue` FOREIGN KEY (`component_2`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `build_depend_value`
--
ALTER TABLE `build_depend_value`
  ADD CONSTRAINT `FK_build_depend_copy_build_depend` FOREIGN KEY (`depend`) REFERENCES `build_depend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_comp_description`
--
ALTER TABLE `product_comp_description`
  ADD CONSTRAINT `product_comp_description_ibfk_1` FOREIGN KEY (`component`) REFERENCES `ahp_component_computer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_depend`
--
ALTER TABLE `product_depend`
  ADD CONSTRAINT `FK__build_depend_value` FOREIGN KEY (`depend`) REFERENCES `build_depend_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__product` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_depend_build_depend` FOREIGN KEY (`build_depend`) REFERENCES `build_depend` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_description`
--
ALTER TABLE `product_description`
  ADD CONSTRAINT `FK_product_description_product` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_description_product_comp_description` FOREIGN KEY (`description`) REFERENCES `product_comp_description` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `FK_product_detail_ahp_criteria` FOREIGN KEY (`id_criteria`) REFERENCES `ahp_criteria` (`id_criteria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_detail_ahp_subcriteria` FOREIGN KEY (`id_subcriteria`) REFERENCES `ahp_subcriteria` (`id_sub`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_detail_product` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_product_image_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_psu`
--
ALTER TABLE `product_psu`
  ADD CONSTRAINT `FK_product_psu_product_psu_rating` FOREIGN KEY (`rating`) REFERENCES `product_psu_rating` (`rating`) ON UPDATE CASCADE;

--
-- Constraints for table `product_psu_detail`
--
ALTER TABLE `product_psu_detail`
  ADD CONSTRAINT `FK_product_psu_detail_ahp_criteria` FOREIGN KEY (`id_criteria`) REFERENCES `ahp_criteria` (`id_criteria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_psu_detail_ahp_subcriteria` FOREIGN KEY (`id_subcriteria`) REFERENCES `ahp_subcriteria` (`id_sub`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_psu_detail_product_psu` FOREIGN KEY (`id_psu`) REFERENCES `product_psu` (`id_psu`) ON UPDATE CASCADE;

--
-- Constraints for table `product_psu_image`
--
ALTER TABLE `product_psu_image`
  ADD CONSTRAINT `FK_product_psu_image_product_psu` FOREIGN KEY (`id_product`) REFERENCES `product_psu` (`id_psu`) ON UPDATE CASCADE;

--
-- Constraints for table `rule_bayes`
--
ALTER TABLE `rule_bayes`
  ADD CONSTRAINT `rule_bayes_ibfk_1` FOREIGN KEY (`id_evid`) REFERENCES `evidence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rule_bayes_ibfk_2` FOREIGN KEY (`id_hipo`) REFERENCES `hipotesis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `id_petugas` (`id_petugas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `id_petugas`) VALUES
(1, 'taufik', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'rahman', 'e9b74cd3c4c1600ee591fd56360b89db', 4),
(11, 'ufik', 'b971580c0640430ea7f9e576a07614bb', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_barang` char(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_seri_pabrik` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_status` int(10) NOT NULL,
  `id_ruangan` int(10) NOT NULL,
  `harga_beli` varchar(25) NOT NULL,
  `gambar` char(50) NOT NULL,
  `jml` int(50) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_barang`),
  KEY `id_jenis` (`id_jenis`),
  KEY `id_status` (`id_status`),
  KEY `id_ruangan` (`id_ruangan`),
  KEY `id_ruangan_2` (`id_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama`, `no_seri_pabrik`, `tgl_masuk`, `id_jenis`, `id_status`, `id_ruangan`, `harga_beli`, `gambar`, `jml`, `ket`) VALUES
('BR001', 'monitor', 12345, '2015-04-21', 13, 3, 1, '1200000', '81FJa00A3yL._SL1500_.jpg', 2, ''),
('BR002', 'lcd', 123456, '2015-04-21', 13, 3, 1, '2000000', 'images.jpg', 2, ''),
('BR003', 'printer', 1234567, '2015-04-21', 13, 3, 1, '4000.000', 'hp-officejet-j6480-aio-printer.jpg', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail`
--

CREATE TABLE IF NOT EXISTS `tb_detail` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_pinjam` char(5) NOT NULL,
  `id_barang` char(5) NOT NULL,
  `jml` varchar(3) NOT NULL,
  `ket` enum('dipinjam','dikembalikan') NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_pinjam` (`id_pinjam`),
  KEY `id_barang` (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_barang_ruangan`
--

CREATE TABLE IF NOT EXISTS `tb_detail_barang_ruangan` (
  `id_ruangan` int(10) DEFAULT NULL,
  `id_barang` char(5) DEFAULT NULL,
  KEY `FK_tb_detail_barang_ruangan_tb_ruangan` (`id_ruangan`),
  KEY `FK_tb_detail_barang_ruangan_tb_barang` (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE IF NOT EXISTS `tb_gallery` (
  `id_foto` int(3) NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(25) NOT NULL,
  `judul_foto` varchar(25) NOT NULL,
  `waktu` datetime NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tb_gallery`
--

INSERT INTO `tb_gallery` (`id_foto`, `nama_file`, `judul_foto`, `waktu`) VALUES
(25, '81FJa00A3yL._SL1500_.jpg', 'monitor', '2015-04-21 22:09:59'),
(26, '81ebVZtgeWL._SL1500_.jpg', 'printer', '2015-04-21 22:23:31'),
(27, 'images.jpg', 'LCD', '2015-04-21 22:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE IF NOT EXISTS `tb_guru` (
  `nik` varchar(21) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `golongan` varchar(5) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`nik`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`nik`, `nama`, `jk`, `golongan`, `ket`) VALUES
('19551208 198103 1 006', 'Drs. H. Rumawal, M.M', 'L', 'IV/a', 'KEPALA SEKOLAH');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE IF NOT EXISTS `tb_jenis` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`id_jenis`, `jenis`, `satuan`, `ket`) VALUES
(13, 'komputer', 'unit', ''),
(15, 'LCD', 'unit', ''),
(16, 'Monitor', 'unit', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE IF NOT EXISTS `tb_petugas` (
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `nik` int(21) NOT NULL,
  `jk` enum('pria','wanita') COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `no_hp` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `level_petugas` enum('admin','petugas') COLLATE latin1_general_ci NOT NULL DEFAULT 'petugas',
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `nik`, `jk`, `email`, `no_hp`, `level_petugas`) VALUES
(1, 'taufik', 123456, 'pria', 'amikom@ami.com', '621111111', 'admin'),
(4, 'rahman', 122223, 'pria', 'zee.cewekimut@gmail.com', '092932', 'petugas'),
(5, 'ufik', 2311, 'pria', 'ufik@gmail.com', '622282893903', 'petugas'),
(6, 'ufik', 3222, 'pria', '', '323243', 'petugas'),
(7, 'ufik', 3211, 'pria', '', '311', 'admin'),
(8, 'ufik', 232, 'pria', '', '3222', 'petugas'),
(9, 'ufik', 12345, 'pria', '', '12345', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE IF NOT EXISTS `tb_pinjam` (
  `id_pinjam` char(5) NOT NULL,
  `nik` varchar(21) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  PRIMARY KEY (`id_pinjam`),
  UNIQUE KEY `id_pinjam_2` (`id_pinjam`),
  KEY `id_pinjam` (`id_pinjam`),
  KEY `nik` (`nik`),
  KEY `nik_2` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pj`
--

CREATE TABLE IF NOT EXISTS `tb_pj` (
  `id_pj` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruangan` int(10) NOT NULL,
  `nama_pj` varchar(50) NOT NULL,
  `nik` int(21) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_pj`),
  UNIQUE KEY `id_pj` (`id_pj`),
  KEY `id_ruangan` (`id_ruangan`),
  KEY `id_ruangan_2` (`id_ruangan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_pj`
--

INSERT INTO `tb_pj` (`id_pj`, `id_ruangan`, `nama_pj`, `nik`, `ket`) VALUES
(1, 2, 'taufik rahman', 12345, 'oke'),
(3, 1, 'rahman taufik', 123, 'oke');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE IF NOT EXISTS `tb_profile` (
  `nama` varchar(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE IF NOT EXISTS `tb_ruangan` (
  `id_ruangan` int(10) NOT NULL,
  `ruangan` varchar(25) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_ruangan`),
  UNIQUE KEY `id_ruangan_2` (`id_ruangan`),
  KEY `id_ruangan` (`id_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id_ruangan`, `ruangan`, `ket`) VALUES
(1, 'KKPI', 'ada'),
(2, 'komputer jaringan', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE IF NOT EXISTS `tb_status` (
  `id_status` int(10) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `status`, `ket`) VALUES
(2, 'tidak', 'tidak dipinjam'),
(3, 'ada', 'dipinjam');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `FK_tb_admin_tb_petugas` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `tb_jenis` (`id_jenis`),
  ADD CONSTRAINT `tb_barang_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `tb_status` (`id_status`),
  ADD CONSTRAINT `tb_barang_ibfk_3` FOREIGN KEY (`id_ruangan`) REFERENCES `tb_ruangan` (`id_ruangan`);

--
-- Constraints for table `tb_detail`
--
ALTER TABLE `tb_detail`
  ADD CONSTRAINT `tb_detail_ibfk_1` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_pinjam` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detail_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`) ON DELETE CASCADE;

--
-- Constraints for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD CONSTRAINT `tb_pinjam_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tb_guru` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pj`
--
ALTER TABLE `tb_pj`
  ADD CONSTRAINT `FK_tb_pj_tb_ruangan` FOREIGN KEY (`id_ruangan`) REFERENCES `tb_ruangan` (`id_ruangan`);
--
-- Database: `db_pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungi`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungi` (
  `id_hubungi` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_hubungi`
--

INSERT INTO `tbl_hubungi` (`id_hubungi`, `nama`, `email`, `pesan`) VALUES
(2, 'Gede Suma Wijaya', 'gedelumbung@gmail.com', 'Tes Soal Online merupakan bagian dari sistem pembelajaran digital atau e-learning. Dimana kita diharapkan untuk bisa belajar secara mandiri tanpa terbatas oleh waktu dan tempat. Semoga melalui E-Learning dan Sistem Tes Soal Online ini, dapat tercapainya proses pembelajaran yang efektif dan efisien. Salam Hangat.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tmp_lahir` varchar(200) NOT NULL,
  `tgl_lahir` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `ind` varchar(200) NOT NULL,
  `ing` varchar(200) NOT NULL,
  `mat` varchar(200) NOT NULL,
  `ipa` varchar(200) NOT NULL,
  `ips` varchar(200) NOT NULL,
  `ppkn` varchar(200) NOT NULL,
  `nun` varchar(100) NOT NULL,
  `ortu` varchar(200) NOT NULL,
  `alamat_ortu` varchar(200) NOT NULL,
  `pendidikan` varchar(200) NOT NULL,
  `pekerjaan` varchar(200) NOT NULL,
  `penghasilan` varchar(200) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nama`, `alamat`, `tmp_lahir`, `tgl_lahir`, `sekolah`, `ind`, `ing`, `mat`, `ipa`, `ips`, `ppkn`, `nun`, `ortu`, `alamat_ortu`, `pendidikan`, `pekerjaan`, `penghasilan`) VALUES
(3, 'Gede Suma Wijaya', 'Bali', 'Denpasar', '4 Februari 1991', 'SMKN 1 Denpasar', '90', '90', '90', '90', '90', '90', '90', 'Bapak Saya', 'Bali', 'SMA', 'Wiraswasta / Jaga Warung', '4000000'),
(4, 'Afif Ikhwan Muqorrobin', 'Bandung', 'Majalengka', '4 Desember 1991', 'SMAN 4 Serang', '100', '100', '100', '80', '90', '100', '95', 'Achmad Mujahidin', 'Bandung', 'SMA', 'Polisi', '3000000'),
(5, 'Ridwan Aziz', 'Banyuwangi', 'Banyuwangi', '1 December 2011', 'SMKN 1 Sukasuka', '90', '90', '90', '90', '90', '90', '90', 'jyj', 'yj', 'jyj', 'yj', 'jyj'),
(6, 'Tantan', 'subang', 'subanag', '15 April 2015', 'SMP Gundalgandul', '9', '8', '9', '8', '7', '4', '7', 'Aah', 'Subang', 'SD', 'tani', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `nama`) VALUES
(1, 'gede', '13ad65cc032d4b04927943c33673a65d', 'Gede Lumbung'),
(2, 'lumbung', 'a88b71d35a8350e1f7aa1b79d91671c3', 'Dede Lumbung'),
(3, 'suma', 'dce704fd8aa775365f1168c59dc4d9ad', 'Suma Wijaya');
--
-- Database: `db_teorema_bayes_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `evidence`
--

CREATE TABLE IF NOT EXISTS `evidence` (
  `id_evidence` int(11) NOT NULL AUTO_INCREMENT,
  `nama_evidence` char(50) NOT NULL,
  `pertanyaan_evidence` char(100) NOT NULL,
  PRIMARY KEY (`id_evidence`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `evidence`
--

INSERT INTO `evidence` (`id_evidence`, `nama_evidence`, `pertanyaan_evidence`) VALUES
(1, 'Tanaman Kerdil', 'Apakah tanaman kerdil ?'),
(2, 'Bercak-bercak coklat', 'Ada bercak-bercak coklat ?'),
(3, 'Anakan Banyak', 'Apakah Anakan Banyak ?'),
(4, 'Bercak di daun', 'Apakah Bercak didaun ?'),
(5, 'anakan tumbuh tegak', 'Apakah Anakan tumbuh tegak ?'),
(6, 'daun melingkar terpilin', 'Apakah daun melingkar terpilin ?'),
(7, 'Daun bergerigi', 'Apakah daun bergerigi ?'),
(8, 'gabah kosong', 'Apakah Gabah Kosong ?'),
(9, 'daun Kuning pucat', 'Apakah daun kuning pucat ?'),
(10, 'bercak pelepah bawah', 'Apakah ada Bercak pelepah bawah ?'),
(11, 'daun pendek sempit', 'Apakah daun pendek sempit'),
(12, 'daun hijau pucat', 'Apakah daun hijau Pucat ?'),
(13, 'bulu wangi', 'adih wangi');

-- --------------------------------------------------------

--
-- Table structure for table `hipotesis`
--

CREATE TABLE IF NOT EXISTS `hipotesis` (
  `id_hipotesis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_hipotesis` char(50) NOT NULL,
  `proba` double NOT NULL,
  PRIMARY KEY (`id_hipotesis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hipotesis`
--

INSERT INTO `hipotesis` (`id_hipotesis`, `nama_hipotesis`, `proba`) VALUES
(1, 'kerdil rumput', 0.33),
(2, 'kerdil hampa', 0.33),
(3, 'kerdil kuning', 0.33),
(4, 'rumput tumpul', 0.44);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_hipotesis` int(11) NOT NULL,
  `id_evidence` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_hipotesis_2` (`id_hipotesis`,`id_evidence`),
  KEY `id_hipotesis` (`id_hipotesis`),
  KEY `id_evidence` (`id_evidence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_hipotesis`, `id_evidence`, `status`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 1),
(1, 12, 1),
(2, 1, 1),
(2, 2, 0),
(2, 3, 1),
(2, 4, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 1),
(2, 8, 1),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 1),
(3, 1, 1),
(3, 2, 1),
(3, 3, 0),
(3, 4, 0),
(3, 5, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 1),
(3, 10, 0),
(3, 11, 0),
(3, 12, 0),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 4, 0),
(4, 5, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 1),
(4, 9, 0),
(4, 10, 0),
(4, 11, 0),
(4, 12, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_hipotesis`) REFERENCES `hipotesis` (`id_hipotesis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_evidence`) REFERENCES `evidence` (`id_evidence`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_teorema_bayes_coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `id_gejala` varchar(3) NOT NULL,
  `nama_gejala` char(50) NOT NULL,
  `pertanyaan_gejala` char(100) NOT NULL,
  PRIMARY KEY (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `pertanyaan_gejala`) VALUES
('G01', 'Tanaman Kerdil', 'Apakah tanaman kerdil ?'),
('G02', 'Bercak-bercak coklat', 'Ada bercak-bercak coklat ?'),
('G03', 'Anakan Banyak', 'Apakah Anakan Banyak ?'),
('G04', 'Bercak di daun', 'Apakah Bercak didaun ?'),
('G05', 'anakan tumbuh tegak', 'Apakah Anakan tumbuh tegak ?'),
('G06', 'daun melingkar terpilin', 'Apakah daun melingkar terpilin ?'),
('G07', 'Daun bergerigi', 'Apakah daun bergerigi ?'),
('G08', 'gabah kosong', 'Apakah Gabah Kosong ?'),
('G09', 'daun Kuning pucat', 'Apakah daun kuning pucat ?'),
('G10', 'bercak pelepah bawah', 'Apakah ada Bercak pelepah bawah ?'),
('G11', 'daun pendek sempit', 'Apakah daun pendek sempit'),
('G12', 'daun hijau pucat', 'Apakah daun hijau Pucat ?');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id_penyakit` varchar(3) NOT NULL,
  `nama_penyakit` char(50) NOT NULL,
  `proba` double NOT NULL,
  PRIMARY KEY (`id_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_penyakit`, `proba`) VALUES
('P01', 'kerdil rumput', 0.3),
('P02', 'kerdil hampa', 0.3),
('P03', 'kerdil kuning', 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_penyakit` varchar(3) NOT NULL,
  `id_gejala` varchar(3) NOT NULL,
  KEY `id_penyakit` (`id_penyakit`),
  KEY `id_gejala` (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_penyakit`, `id_gejala`) VALUES
('P01', 'G01'),
('P01', 'G02'),
('P01', 'G03'),
('P01', 'G11'),
('P01', 'G12'),
('P02', 'G01'),
('P02', 'G07'),
('P02', 'G12'),
('P02', 'G08'),
('P02', 'G03'),
('P03', 'G01'),
('P03', 'G02'),
('P03', 'G09');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`),
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`);
--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_anggota`
--

CREATE TABLE IF NOT EXISTS `ps_anggota` (
  `id_anggota` char(6) NOT NULL,
  `no_ktp` int(11) DEFAULT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Telp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_buku`
--

CREATE TABLE IF NOT EXISTS `ps_buku` (
  `KdBuku` char(5) NOT NULL,
  `JudulBuku` varchar(50) NOT NULL,
  `Penulis` varchar(50) DEFAULT NULL,
  `Penerbit` varchar(50) DEFAULT NULL,
  `Kategori` varchar(30) DEFAULT NULL,
  `ThTerbit` char(4) DEFAULT NULL,
  `CetakanKe` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`KdBuku`),
  KEY `KdPenulis` (`Penulis`,`Penerbit`,`Kategori`),
  KEY `KdPenerbit` (`Penerbit`),
  KEY `KdKategori` (`Kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps_buku`
--

INSERT INTO `ps_buku` (`KdBuku`, `JudulBuku`, `Penulis`, `Penerbit`, `Kategori`, `ThTerbit`, `CetakanKe`, `stok`) VALUES
('BK001', 'Mencari Cinta Kuda Nil', 'Ksatria Kodok', 'Antah Berantah', 'Komedi', '1985', 1, 10),
('BK002', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK003', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK004', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK005', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK006', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK007', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK008', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK009', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK010', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5),
('BK011', 'Kejar Setoran', 'Pujangga', 'Gramedia', 'Novel', '2013', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ps_pinjam`
--

CREATE TABLE IF NOT EXISTS `ps_pinjam` (
  `id_pinjam` char(6) NOT NULL,
  `id_anggota` char(6) NOT NULL,
  `KdBuku` char(6) NOT NULL,
  `TglPinjam` date DEFAULT NULL,
  `TglKembali` date DEFAULT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=145 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'shop_action_figure', 'tbl_kategori', 'id_kategori', '', '', '_', ''),
(2, 'shop_action_figure', 'tbl_kategori', 'nama_kategori', '', '', '_', ''),
(3, 'shop_action_figure', 'tbl_kategori', 'deskripsi', '', '', '_', ''),
(4, 'shop_action_figure', 'tbl_supplier', 'id_supplier', '', '', '_', ''),
(5, 'shop_action_figure', 'tbl_supplier', 'nama_supplier', '', '', '_', ''),
(6, 'shop_action_figure', 'tbl_supplier', 'deskripsi', '', '', '_', ''),
(7, 'shop_action_figure', 'tbl_kategori', 'parent', '', '', '_', ''),
(8, 'shop_action_figure', 'tbl_produk', 'id_produk', '', '', '_', ''),
(9, 'shop_action_figure', 'tbl_produk', 'kode_produk', '', '', '_', ''),
(10, 'shop_action_figure', 'tbl_produk', 'nama_produk', '', '', '_', ''),
(11, 'shop_action_figure', 'tbl_produk', 'deskripsi', '', '', '_', ''),
(12, 'shop_action_figure', 'tbl_produk', 'id_kategori', '', '', '_', ''),
(13, 'shop_action_figure', 'tbl_produk', 'id_supplier', '', '', '_', ''),
(14, 'shop_action_figure', 'tbl_produk', 'harga', '', '', '_', ''),
(15, 'shop_action_figure', 'tbl_produk', 'stok', '', '', '_', ''),
(16, 'shop_action_figure', 'tbl_produk', 'rilis', '', '', '_', ''),
(17, 'shop_action_figure', 'tbl_produk', 'width', '', '', '_', ''),
(18, 'shop_action_figure', 'tbl_produk', 'height', '', '', '_', ''),
(19, 'shop_action_figure', 'tbl_produk', 'depth', '', '', '_', ''),
(20, 'shop_action_figure', 'tbl_produk', 'weight', '', '', '_', ''),
(21, 'shop_action_figure', 'login_admin', 'id_admin', '', '', '_', ''),
(22, 'shop_action_figure', 'login_admin', 'username', '', '', '_', ''),
(23, 'shop_action_figure', 'login_admin', 'password', '', '', '_', ''),
(24, 'shop_action_figure', 'login_admin', 'email', '', '', '_', ''),
(25, 'shop_action_figure', 'login_admin', 'nama', '', '', '_', ''),
(26, 'shop_action_figure', 'login_admin', 'jenis_kel', '', '', '_', ''),
(27, 'shop_action_figure', 'login_admin', 'alamat', '', '', '_', ''),
(28, 'amd_perpustakaan', 'petugas', 'nip', '', '', '_', ''),
(29, 'amd_perpustakaan', 'petugas', 'nama', '', '', '_', ''),
(30, 'amd_perpustakaan', 'petugas', 'alamat', '', '', '_', ''),
(31, 'amd_perpustakaan', 'petugas', 'jenis_kelamin', '', '', '_', ''),
(32, 'amd_perpustakaan', 'petugas', 'no_telepon', '', '', '_', ''),
(33, 'amd_perpustakaan', 'petugas', 'agama', '', '', '_', ''),
(34, 'amd_perpustakaan', 'petugas', 'email', '', '', '_', ''),
(35, 'amd_perpustakaan', 'petugas', 'status_aktif', '', '', '_', ''),
(36, 'amd_perpustakaan', 'petugas', 'tanggal_masuk', '', '', '_', ''),
(37, 'amd_perpustakaan', 'petugas', 'tanggal_keluar', '', '', '_', ''),
(38, 'amd_perpustakaan', 'petugas', 'password', '', '', '_', ''),
(39, 'amd_perpustakaan', 'administrator', 'nip', '', '', '_', ''),
(40, 'amd_perpustakaan', 'administrator', 'nama', '', '', '_', ''),
(41, 'amd_perpustakaan', 'administrator', 'alamat', '', '', '_', ''),
(42, 'amd_perpustakaan', 'administrator', 'jenis_kelamin', '', '', '_', ''),
(43, 'amd_perpustakaan', 'administrator', 'no_telepon', '', '', '_', ''),
(44, 'amd_perpustakaan', 'administrator', 'agama', '', '', '_', ''),
(45, 'amd_perpustakaan', 'administrator', 'email', '', '', '_', ''),
(46, 'amd_perpustakaan', 'administrator', 'keterangan', '', '', '_', ''),
(47, 'amd_perpustakaan', 'administrator', 'password', '', '', '_', ''),
(77, 'amd_perpustakaan', 'detail_transaksi', 'tanggal_pengembalian', '', '', '_', ''),
(76, 'amd_perpustakaan', 'detail_transaksi', 'id_buku', '', '', '_', ''),
(74, 'amd_perpustakaan', 'detail_transaksi', 'id_detail_transaksi', '', '', '_', ''),
(75, 'amd_perpustakaan', 'detail_transaksi', 'id_transaksi', '', '', '_', ''),
(53, 'amd_perpustakaan', 'transaksi', 'id_transaksi', '', '', '_', ''),
(54, 'amd_perpustakaan', 'transaksi', 'nip', '', '', '_', ''),
(55, 'amd_perpustakaan', 'transaksi', 'nim', '', '', '_', ''),
(56, 'amd_perpustakaan', 'transaksi', 'tanggal_pinjam', '', '', '_', ''),
(57, 'amd_perpustakaan', 'transaksi', 'tanggal_kembali', '', '', '_', ''),
(58, 'amd_perpustakaan', 'mahasiswa', 'nim', '', '', '_', ''),
(59, 'amd_perpustakaan', 'mahasiswa', 'nama', '', '', '_', ''),
(60, 'amd_perpustakaan', 'mahasiswa', 'alamat', '', '', '_', ''),
(61, 'amd_perpustakaan', 'mahasiswa', 'jenis_kelamin', '', '', '_', ''),
(62, 'amd_perpustakaan', 'mahasiswa', 'no_telepon', '', '', '_', ''),
(63, 'amd_perpustakaan', 'mahasiswa', 'agama', '', '', '_', ''),
(64, 'amd_perpustakaan', 'mahasiswa', 'email', '', '', '_', ''),
(65, 'amd_perpustakaan', 'mahasiswa', 'tanggal_registrasi', '', '', '_', ''),
(66, 'amd_perpustakaan', 'mahasiswa', 'tanggal_diterima', '', '', '_', ''),
(67, 'amd_perpustakaan', 'buku', 'id_buku', '', '', '_', ''),
(68, 'amd_perpustakaan', 'buku', 'judul', '', '', '_', ''),
(69, 'amd_perpustakaan', 'buku', 'pengarang', '', '', '_', ''),
(70, 'amd_perpustakaan', 'buku', 'penerbit', '', '', '_', ''),
(71, 'amd_perpustakaan', 'buku', 'issbn', '', '', '_', ''),
(72, 'amd_perpustakaan', 'buku', 'jumlah_salinan', '', '', '_', ''),
(73, 'amd_perpustakaan', 'buku', 'ringkasan', '', '', '_', ''),
(78, 'amd_perpustakaan', 'detail_transaksi', 'keterangan', '', '', '_', ''),
(79, 'an', 'biodata', 'id', '', '', '_', ''),
(80, 'an', 'biodata', 'nama', '', '', '_', ''),
(81, 'an', 'biodata', 'notlp', '', '', '_', ''),
(82, 'an', 'biodata', 'email', '', '', '_', ''),
(83, 'boyes', 'GE', 'idG', '', '', '_', ''),
(84, 'boyes', 'GE', 'nama', '', '', '_', ''),
(85, 'boyes', 'GE', 'keterangan', '', '', '_', ''),
(86, 'boyes', 'pe', 'idP', '', '', '_', ''),
(87, 'boyes', 'pe', 'nama', '', '', '_', ''),
(88, 'boyes', 'pe', 'keterangan', '', '', '_', ''),
(89, 'boyes', 'ru', 'idR', '', '', '_', ''),
(90, 'boyes', 'ru', 'idG', '', '', '_', ''),
(91, 'boyes', 'ru', 'idP', '', '', '_', ''),
(92, 'boyes', 'pe', 'nilai', '', '', '_', ''),
(98, 'db_teorema_bayes_beta', 'hipotesis', 'id_hipotesis', '', '', '_', ''),
(97, 'db_teorema_bayes_beta', 'evidence', 'id_evidence', '', '', '_', ''),
(96, 'db_teorema_bayes_beta', 'rule', 'status', '', '', '_', ''),
(99, 'db_teorema_bayes_beta', 'rule', 'id_hipotesis', '', '', '_', ''),
(100, 'db_teorema_bayes_beta', 'rule', 'id_evidence', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

--
-- Dumping data for table `pma_designer_coords`
--

INSERT INTO `pma_designer_coords` (`db_name`, `table_name`, `x`, `y`, `v`, `h`) VALUES
('amd_perpustakaan', 'administrator', 20, 324, 1, 1),
('shop_action_figure', 'tbl_item_transaksi', 883, 49, 1, 1),
('amd_perpustakaan', 'detail_transaksi', 345, 304, 1, 1),
('shop_action_figure', 'tbl_pengirim', 50, 521, 1, 1),
('shop_action_figure', 'tbl_status_transaksi', 44, 314, 1, 1),
('amd_perpustakaan', 'buku', 682, 305, 1, 1),
('shop_action_figure', 'tbl_transaksi', 523, 49, 1, 1),
('shop_action_figure', 'login_user', 44, 47, 1, 1),
('amd_perpustakaan', 'mahasiswa', 661, 45, 1, 1),
('amd_perpustakaan', 'petugas', 21, 41, 1, 1),
('amd_perpustakaan', 'transaksi', 347, 50, 1, 1),
('shop_action_figure', 'login_admin', 518, 286, 1, 1),
('shop_action_figure', 'tbl_kategori', 494, 567, 1, 1),
('shop_action_figure', 'tbl_produk', 885, 241, 1, 1),
('shop_action_figure', 'tbl_supplier', 887, 653, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"db_choosepc","table":"product_image"},{"db":"db_choosepc","table":"product"},{"db":"db_choosepc","table":"ahp_component_computer"},{"db":"db_choosepc","table":"web_pages"},{"db":"db_choosepc","table":"users"},{"db":"db_choosepc","table":"rule_bayes"},{"db":"db_choosepc","table":"product_psu_rating"},{"db":"db_choosepc","table":"product_psu_image"},{"db":"db_choosepc","table":"product_psu_detail"},{"db":"db_choosepc","table":"product_psu"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma_relation`
--

INSERT INTO `pma_relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('amd_perpustakaan', 'transaksi', 'nip', 'amd_perpustakaan', 'petugas', 'nip'),
('amd_perpustakaan', 'detail_transaksi', 'id_transaksi', 'amd_perpustakaan', 'transaksi', 'id_transaksi'),
('amd_perpustakaan', 'transaksi', 'nim', 'amd_perpustakaan', 'mahasiswa', 'nim'),
('amd_perpustakaan', 'detail_transaksi', 'id_buku', 'amd_perpustakaan', 'buku', 'id_buku'),
('shop_action_figure', 'tbl_item_transaksi', 'kode_transaksi', 'shop_action_figure', 'tbl_transaksi', 'kode_transaksi'),
('shop_action_figure', 'tbl_transaksi', 'id_pengirim', 'shop_action_figure', 'login_user', 'id_user'),
('shop_action_figure', 'tbl_status_transaksi', 'no_trans', 'shop_action_figure', 'tbl_transaksi', 'kode_transaksi'),
('shop_action_figure', 'tbl_status_transaksi', 'id_user', 'shop_action_figure', 'login_user', 'id_user'),
('shop_action_figure', 'tbl_status_transaksi', 'pengirim', 'shop_action_figure', 'tbl_pengirim', 'id_pengirim');

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'boyes', 'ru', '{"sorted_col":"`ru`.`idP` ASC"}', '2014-11-15 14:28:59'),
('root', 'db_teorema_bayes_coba', 'rule', '{"sorted_col":"`rule`.`id_penyakit` ASC"}', '2014-12-04 16:40:58'),
('root', 'db_teorema_bayes_beta', 'rule', '{"sorted_col":"`id_hipotesis` DESC"}', '2014-12-14 09:39:28'),
('root', 'db_choosepc', 'rule_bayes', '{"sorted_col":"`id_hipo` ASC"}', '2015-03-13 20:21:37'),
('root', 'db_choosepc', 'ahp_subcriteria_weight', '{"sorted_col":"`id_hipotesis` ASC"}', '2015-05-05 09:37:33'),
('root', 'db_choosepc', 'ahp_bayes_schema', '{"sorted_col":"`ahp_bayes_schema`.`id_hipotensis` ASC"}', '2015-04-30 00:36:12'),
('root', 'db_choosepc', 'ahp_subcriteria', '{"sorted_col":"`id_sub` ASC"}', '2015-05-14 06:04:33'),
('root', 'db_choosepc', 'product_processor', '{"sorted_col":"`product_processor`.`id_processor` ASC"}', '2015-05-07 04:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-05-08 04:20:39', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `pol_so`
--

-- --------------------------------------------------------

--
-- Table structure for table `asisten`
--

CREATE TABLE IF NOT EXISTS `asisten` (
  `idAsisten` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` text NOT NULL,
  `NIM` text NOT NULL,
  `Foto` text,
  `namaPanggilan` varchar(12) NOT NULL,
  PRIMARY KEY (`idAsisten`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `asisten`
--

INSERT INTO `asisten` (`idAsisten`, `Nama`, `NIM`, `Foto`, `namaPanggilan`) VALUES
(14, 'Niken Larasati', '10.12.4766', '97340d1a891dd164578d43c69871d87f-10.12.4766.jpg', 'Niken'),
(15, 'Aditya Bagus Pamungkas', '10.12.4443', 'd201aed27138af7a0c4dbb9d0f5f8f85-10.12.4443.jpg', 'Adit'),
(16, 'Adityas Widayani Dewi', '11.12.5911', '9bb4bad8770975e4dc4d32bba6a39f5a-11.12.5911.jpg', 'Tyas'),
(17, 'Akhmad Arif M', '11.12.5504', '4e52e7b7c71046de0d3567ca89d8ee43-11.12.5504.jpg', 'Arif'),
(18, 'Cornelia Novika Puspa D', '11.12.5983', '32a89325751076623bd1475e7b760bb1-11.12.5983.jpg', 'Cornelia '),
(19, 'Dian Ribut Riski', '11.12.5826', 'f98c2a028bf5d21c8dc306b74c3d88b5-11.12.5826.jpg', 'Ribut'),
(20, 'Dina Nur Fitriana', '11.12.6009', '62375e30bf8e6b784d7034ea6e6b0cf3-11.12.6009.jpg', 'Dina'),
(21, 'Fanny Prastika Ariani', '11.12.5999', '27588feb16a59d03944ee079ec6e01d0-11.12.5999.jpg', 'Fanny '),
(22, 'Ghani Nafiansyah', '11.12.5515', '6c349d7ed8b4f461fe3a418187b134d5-11.12.5515.jpg', 'Ghani '),
(23, 'Mada Mahatma', '11.12.5828', '31dee53a0906b2d8703c122f547f54f7-11.12.5828.jpg', 'Mada '),
(24, 'Muhammad Taufan Redha', '11.12.5963', '13c94f7fda2568232c00496a6725d398-11.12.5963.jpg', 'Redha'),
(25, 'Nanda Syahama EH', '11.12.6022', '6f609c080ee78371af016060cfad3667-11.12.6022.jpg', 'Nanda '),
(26, 'Ruvi Septhiandri', '11.12.6006', 'f3fcf776c5080583480d7e3df7a27863-11.12.6006.jpg', 'Ruvi '),
(27, 'Setiawan Alif S', '10.12.4452', 'ae7c7229545b8b266cfa58055d08035e-10.12.4452.jpg', 'Wawan'),
(28, 'Sutopo', '11.12.5885', '14413e405085f9e884ce06e7d036af6b-11.12.5885.jpg', 'Topo');
--
-- Database: `polling`
--
--
-- Database: `prestashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_access`
--

CREATE TABLE IF NOT EXISTS `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_access`
--

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 0, 1, 1, 1, 1),
(1, 1, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 25, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 31, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 38, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 44, 1, 1, 1, 1),
(1, 45, 1, 1, 1, 1),
(1, 48, 1, 1, 1, 1),
(1, 50, 1, 1, 1, 1),
(1, 52, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 61, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 66, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1),
(1, 69, 1, 1, 1, 1),
(1, 70, 1, 1, 1, 1),
(1, 71, 1, 1, 1, 1),
(1, 73, 1, 1, 1, 1),
(1, 74, 1, 1, 1, 1),
(1, 75, 1, 1, 1, 1),
(1, 76, 1, 1, 1, 1),
(1, 77, 1, 1, 1, 1),
(1, 78, 1, 1, 1, 1),
(1, 80, 1, 1, 1, 1),
(1, 81, 1, 1, 1, 1),
(1, 82, 1, 1, 1, 1),
(1, 83, 1, 1, 1, 1),
(1, 84, 1, 1, 1, 1),
(1, 86, 1, 1, 1, 1),
(1, 87, 1, 1, 1, 1),
(1, 88, 1, 1, 1, 1),
(1, 89, 1, 1, 1, 1),
(1, 92, 1, 1, 1, 1),
(1, 93, 1, 1, 1, 1),
(1, 94, 1, 1, 1, 1),
(1, 95, 1, 1, 1, 1),
(1, 96, 1, 1, 1, 1),
(1, 99, 1, 1, 1, 1),
(1, 100, 1, 1, 1, 1),
(1, 101, 1, 1, 1, 1),
(1, 102, 1, 1, 1, 1),
(1, 103, 1, 1, 1, 1),
(2, 0, 1, 1, 1, 1),
(2, 1, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0),
(2, 4, 0, 0, 0, 0),
(2, 5, 0, 0, 0, 0),
(2, 6, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0),
(2, 8, 0, 0, 0, 0),
(2, 9, 1, 1, 1, 1),
(2, 10, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1),
(2, 12, 0, 0, 0, 0),
(2, 13, 1, 0, 1, 0),
(2, 14, 1, 1, 1, 1),
(2, 15, 0, 0, 0, 0),
(2, 16, 0, 0, 0, 0),
(2, 17, 0, 0, 0, 0),
(2, 18, 0, 0, 0, 0),
(2, 19, 0, 0, 0, 0),
(2, 20, 1, 1, 1, 1),
(2, 21, 1, 1, 1, 1),
(2, 22, 1, 1, 1, 1),
(2, 23, 1, 1, 1, 1),
(2, 24, 0, 0, 0, 0),
(2, 25, 0, 0, 0, 0),
(2, 26, 0, 0, 0, 0),
(2, 27, 1, 1, 1, 1),
(2, 28, 0, 0, 0, 0),
(2, 29, 0, 0, 0, 0),
(2, 30, 1, 1, 1, 1),
(2, 31, 1, 1, 1, 1),
(2, 32, 1, 1, 1, 1),
(2, 33, 1, 1, 1, 1),
(2, 34, 1, 1, 1, 1),
(2, 35, 1, 1, 1, 1),
(2, 36, 0, 0, 0, 0),
(2, 37, 1, 1, 1, 1),
(2, 38, 1, 1, 1, 1),
(2, 39, 0, 0, 0, 0),
(2, 40, 0, 0, 0, 0),
(2, 41, 0, 0, 0, 0),
(2, 42, 0, 0, 0, 0),
(2, 43, 0, 0, 0, 0),
(2, 44, 0, 0, 0, 0),
(2, 45, 0, 0, 0, 0),
(2, 46, 0, 0, 0, 0),
(2, 47, 0, 0, 0, 0),
(2, 48, 1, 1, 1, 1),
(2, 49, 1, 1, 1, 1),
(2, 50, 0, 0, 0, 0),
(2, 51, 0, 0, 0, 0),
(2, 52, 0, 0, 0, 0),
(2, 53, 0, 0, 0, 0),
(2, 54, 0, 0, 0, 0),
(2, 55, 0, 0, 0, 0),
(2, 56, 0, 0, 0, 0),
(2, 57, 0, 0, 0, 0),
(2, 58, 0, 0, 0, 0),
(2, 59, 0, 0, 0, 0),
(2, 60, 1, 0, 1, 0),
(2, 61, 0, 0, 0, 0),
(2, 62, 0, 0, 0, 0),
(2, 63, 0, 0, 0, 0),
(2, 64, 0, 0, 0, 0),
(2, 65, 0, 0, 0, 0),
(2, 66, 0, 0, 0, 0),
(2, 67, 0, 0, 0, 0),
(2, 68, 0, 0, 0, 0),
(2, 69, 0, 0, 0, 0),
(2, 70, 0, 0, 0, 0),
(2, 71, 0, 0, 0, 0),
(2, 72, 0, 0, 0, 0),
(2, 73, 0, 0, 0, 0),
(2, 74, 0, 0, 0, 0),
(2, 75, 0, 0, 0, 0),
(2, 76, 0, 0, 0, 0),
(2, 77, 0, 0, 0, 0),
(2, 78, 0, 0, 0, 0),
(2, 79, 0, 0, 0, 0),
(2, 80, 0, 0, 0, 0),
(2, 81, 0, 0, 0, 0),
(2, 82, 0, 0, 0, 0),
(2, 83, 0, 0, 0, 0),
(2, 84, 0, 0, 0, 0),
(2, 85, 0, 0, 0, 0),
(2, 86, 0, 0, 0, 0),
(2, 87, 0, 0, 0, 0),
(2, 88, 0, 0, 0, 0),
(2, 89, 0, 0, 0, 0),
(2, 90, 0, 0, 0, 0),
(2, 91, 0, 0, 0, 0),
(2, 92, 0, 0, 0, 0),
(2, 93, 0, 0, 0, 0),
(2, 94, 1, 1, 1, 1),
(2, 95, 1, 1, 1, 1),
(2, 96, 1, 1, 1, 1),
(2, 97, 0, 0, 0, 0),
(2, 98, 0, 0, 0, 0),
(2, 99, 1, 1, 1, 1),
(2, 100, 1, 1, 1, 1),
(2, 101, 0, 0, 0, 0),
(2, 102, 0, 0, 0, 0),
(2, 103, 0, 0, 0, 0),
(3, 0, 1, 1, 1, 1),
(3, 1, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0),
(3, 5, 1, 0, 0, 0),
(3, 6, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0),
(3, 8, 0, 0, 0, 0),
(3, 9, 1, 1, 1, 1),
(3, 10, 0, 0, 0, 0),
(3, 11, 0, 0, 0, 0),
(3, 12, 0, 0, 0, 0),
(3, 13, 0, 0, 0, 0),
(3, 14, 0, 0, 0, 0),
(3, 15, 1, 0, 0, 0),
(3, 16, 1, 0, 0, 0),
(3, 17, 0, 0, 0, 0),
(3, 18, 0, 0, 0, 0),
(3, 19, 0, 0, 0, 0),
(3, 20, 0, 0, 0, 0),
(3, 21, 1, 1, 1, 1),
(3, 22, 1, 1, 1, 1),
(3, 23, 0, 0, 0, 0),
(3, 24, 0, 0, 0, 0),
(3, 25, 0, 0, 0, 0),
(3, 26, 0, 0, 0, 0),
(3, 27, 0, 0, 0, 0),
(3, 28, 0, 0, 0, 0),
(3, 29, 0, 0, 0, 0),
(3, 30, 0, 0, 0, 0),
(3, 31, 0, 0, 0, 0),
(3, 32, 0, 0, 0, 0),
(3, 33, 0, 0, 0, 0),
(3, 34, 0, 0, 0, 0),
(3, 35, 0, 0, 0, 0),
(3, 36, 0, 0, 0, 0),
(3, 37, 0, 0, 0, 0),
(3, 38, 0, 0, 0, 0),
(3, 39, 0, 0, 0, 0),
(3, 40, 0, 0, 0, 0),
(3, 41, 0, 0, 0, 0),
(3, 42, 0, 0, 0, 0),
(3, 43, 0, 0, 0, 0),
(3, 44, 0, 0, 0, 0),
(3, 45, 0, 0, 0, 0),
(3, 46, 0, 0, 0, 0),
(3, 47, 0, 0, 0, 0),
(3, 48, 0, 0, 0, 0),
(3, 49, 0, 0, 0, 0),
(3, 50, 0, 0, 0, 0),
(3, 51, 0, 0, 0, 0),
(3, 52, 0, 0, 0, 0),
(3, 53, 0, 0, 0, 0),
(3, 54, 0, 0, 0, 0),
(3, 55, 0, 0, 0, 0),
(3, 56, 0, 0, 0, 0),
(3, 57, 0, 0, 0, 0),
(3, 58, 0, 0, 0, 0),
(3, 59, 1, 1, 1, 1),
(3, 60, 0, 0, 0, 0),
(3, 61, 0, 0, 0, 0),
(3, 62, 0, 0, 0, 0),
(3, 63, 0, 0, 0, 0),
(3, 64, 0, 0, 0, 0),
(3, 65, 0, 0, 0, 0),
(3, 66, 0, 0, 0, 0),
(3, 67, 0, 0, 0, 0),
(3, 68, 0, 0, 0, 0),
(3, 69, 0, 0, 0, 0),
(3, 70, 1, 1, 1, 1),
(3, 71, 0, 0, 0, 0),
(3, 72, 0, 0, 0, 0),
(3, 73, 0, 0, 0, 0),
(3, 74, 0, 0, 0, 0),
(3, 75, 0, 0, 0, 0),
(3, 76, 0, 0, 0, 0),
(3, 77, 0, 0, 0, 0),
(3, 78, 0, 0, 0, 0),
(3, 79, 0, 0, 0, 0),
(3, 80, 0, 0, 0, 0),
(3, 81, 0, 0, 0, 0),
(3, 82, 0, 0, 0, 0),
(3, 83, 0, 0, 0, 0),
(3, 84, 0, 0, 0, 0),
(3, 85, 0, 0, 0, 0),
(3, 86, 0, 0, 0, 0),
(3, 87, 0, 0, 0, 0),
(3, 88, 0, 0, 0, 0),
(3, 89, 0, 0, 0, 0),
(3, 90, 0, 0, 0, 0),
(3, 91, 0, 0, 0, 0),
(3, 92, 0, 0, 0, 0),
(3, 93, 0, 0, 0, 0),
(3, 94, 0, 0, 0, 0),
(3, 95, 0, 0, 0, 0),
(3, 96, 0, 0, 0, 0),
(3, 97, 0, 0, 0, 0),
(3, 98, 0, 0, 0, 0),
(3, 99, 0, 0, 0, 0),
(3, 100, 0, 0, 0, 0),
(3, 101, 0, 0, 0, 0),
(3, 102, 0, 0, 0, 0),
(3, 103, 0, 0, 0, 0),
(4, 0, 1, 1, 1, 1),
(4, 1, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 0),
(4, 3, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0),
(4, 5, 1, 0, 0, 0),
(4, 6, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0),
(4, 8, 0, 0, 0, 0),
(4, 9, 1, 1, 1, 1),
(4, 10, 1, 1, 1, 1),
(4, 11, 1, 1, 1, 1),
(4, 12, 0, 0, 0, 0),
(4, 13, 1, 0, 1, 0),
(4, 14, 0, 0, 0, 0),
(4, 15, 0, 0, 0, 0),
(4, 16, 0, 0, 0, 0),
(4, 17, 0, 0, 0, 0),
(4, 18, 0, 0, 0, 0),
(4, 19, 1, 1, 1, 1),
(4, 20, 1, 0, 0, 0),
(4, 21, 1, 1, 1, 1),
(4, 22, 1, 1, 1, 1),
(4, 23, 0, 0, 0, 0),
(4, 24, 0, 0, 0, 0),
(4, 25, 0, 0, 0, 0),
(4, 26, 1, 0, 0, 0),
(4, 27, 0, 0, 0, 0),
(4, 28, 0, 0, 0, 0),
(4, 29, 0, 0, 0, 0),
(4, 30, 1, 1, 1, 1),
(4, 31, 1, 1, 1, 1),
(4, 32, 0, 0, 0, 0),
(4, 33, 0, 0, 0, 0),
(4, 34, 1, 1, 1, 1),
(4, 35, 0, 0, 0, 0),
(4, 36, 1, 1, 1, 1),
(4, 37, 1, 1, 1, 1),
(4, 38, 1, 1, 1, 1),
(4, 39, 1, 1, 1, 1),
(4, 40, 1, 1, 1, 1),
(4, 41, 0, 0, 0, 0),
(4, 42, 0, 0, 0, 0),
(4, 43, 0, 0, 0, 0),
(4, 44, 0, 0, 0, 0),
(4, 45, 0, 0, 0, 0),
(4, 46, 0, 0, 0, 0),
(4, 47, 0, 0, 0, 0),
(4, 48, 0, 0, 0, 0),
(4, 49, 0, 0, 0, 0),
(4, 50, 0, 0, 0, 0),
(4, 51, 0, 0, 0, 0),
(4, 52, 0, 0, 0, 0),
(4, 53, 0, 0, 0, 0),
(4, 54, 0, 0, 0, 0),
(4, 55, 0, 0, 0, 0),
(4, 56, 0, 0, 0, 0),
(4, 57, 0, 0, 0, 0),
(4, 58, 0, 0, 0, 0),
(4, 59, 0, 0, 0, 0),
(4, 60, 1, 0, 1, 0),
(4, 61, 0, 0, 0, 0),
(4, 62, 0, 0, 0, 0),
(4, 63, 0, 0, 0, 0),
(4, 64, 0, 0, 0, 0),
(4, 65, 0, 0, 0, 0),
(4, 66, 0, 0, 0, 0),
(4, 67, 0, 0, 0, 0),
(4, 68, 0, 0, 0, 0),
(4, 69, 0, 0, 0, 0),
(4, 70, 0, 0, 0, 0),
(4, 71, 0, 0, 0, 0),
(4, 72, 0, 0, 0, 0),
(4, 73, 0, 0, 0, 0),
(4, 74, 0, 0, 0, 0),
(4, 75, 0, 0, 0, 0),
(4, 76, 0, 0, 0, 0),
(4, 77, 0, 0, 0, 0),
(4, 78, 0, 0, 0, 0),
(4, 79, 0, 0, 0, 0),
(4, 80, 0, 0, 0, 0),
(4, 81, 0, 0, 0, 0),
(4, 82, 0, 0, 0, 0),
(4, 83, 0, 0, 0, 0),
(4, 84, 1, 1, 1, 1),
(4, 85, 0, 0, 0, 0),
(4, 86, 0, 0, 0, 0),
(4, 87, 0, 0, 0, 0),
(4, 88, 0, 0, 0, 0),
(4, 89, 0, 0, 0, 0),
(4, 90, 0, 0, 0, 0),
(4, 91, 1, 1, 1, 1),
(4, 92, 0, 0, 0, 0),
(4, 93, 1, 1, 1, 1),
(4, 94, 0, 0, 0, 0),
(4, 95, 0, 0, 0, 0),
(4, 96, 0, 0, 0, 0),
(4, 97, 0, 0, 0, 0),
(4, 98, 0, 0, 0, 0),
(4, 99, 1, 0, 0, 0),
(4, 100, 0, 0, 0, 0),
(4, 101, 0, 0, 0, 0),
(4, 102, 0, 0, 0, 0),
(4, 103, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_accessory`
--

CREATE TABLE IF NOT EXISTS `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_address`
--

CREATE TABLE IF NOT EXISTS `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_address`
--

INSERT INTO `ps_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `id_warehouse`, `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`, `deleted`) VALUES
(1, 8, 0, 1, 0, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '75002', 'Paris ', '', '0102030405', '', '', '', '2014-05-11 20:17:22', '2014-05-11 20:17:22', 1, 0),
(2, 21, 32, 0, 0, 0, 0, 'supplier', 'Fashion', 'supplier', 'supplier', '767 Fifth Ave.', '', '10153', 'New York', '', '(212) 336-1440', '', '', '', '2014-05-11 20:17:22', '2014-05-11 20:17:22', 1, 0),
(3, 21, 9, 1, 0, 0, 0, 'My address', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '33133', 'Miami', '', '0102030405', '', '', '', '2014-05-11 20:17:22', '2014-05-11 20:17:22', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_address_format`
--

CREATE TABLE IF NOT EXISTS `ps_address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_address_format`
--

INSERT INTO `ps_address_format` (`id_country`, `format`) VALUES
(1, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(2, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(3, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(4, 'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),
(5, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(6, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(7, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(8, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(9, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(10, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(11, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(12, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(13, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(14, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(15, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(16, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(17, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(18, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(19, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(20, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(21, 'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),
(22, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(23, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(24, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(25, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(26, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(27, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(28, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(29, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(30, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(31, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(32, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(33, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(34, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(35, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(36, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(37, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(38, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(39, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(40, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(41, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(42, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(43, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(44, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(45, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(46, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(47, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(48, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(49, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(50, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(51, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(52, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(53, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(54, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(55, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(56, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(57, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(58, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(59, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(60, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(61, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(62, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(63, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(64, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(65, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(66, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(67, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(68, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(69, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(70, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(71, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(72, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(73, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(74, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(75, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(76, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(77, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(78, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(79, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(80, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(81, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(82, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(83, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(84, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(85, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(86, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(87, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(88, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(89, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(90, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(91, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(92, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(93, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(94, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(95, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(96, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(97, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(98, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(99, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(100, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(101, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(102, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(103, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(104, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(105, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(106, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(107, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(108, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(109, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(110, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(111, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(112, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(113, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(114, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(115, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(116, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(117, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(118, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(119, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(120, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(121, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(122, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(123, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(124, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(125, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(126, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(127, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(128, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(129, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(130, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(131, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(132, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(133, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(134, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(135, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(136, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(137, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(138, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(139, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(140, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(141, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(142, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(143, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(144, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(145, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(146, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(147, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(148, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(149, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(150, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(151, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(152, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(153, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(154, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(155, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(156, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(157, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(158, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(159, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(160, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(161, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(162, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(163, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(164, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(165, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(166, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(167, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(168, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(169, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(170, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(171, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(172, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(173, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(174, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(175, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(176, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(177, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(178, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(179, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(180, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(181, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(182, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(183, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(184, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(185, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(186, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(187, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(188, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(189, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(190, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(191, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(192, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(193, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(194, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(195, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(196, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(197, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(198, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(199, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(200, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(201, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(202, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(203, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(204, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(205, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(206, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(207, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(208, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(209, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(210, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(211, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(212, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(213, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(214, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(215, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(216, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(217, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(218, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(219, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(220, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(221, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(222, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(223, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(224, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(225, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(226, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(227, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(228, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(229, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(230, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(231, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(232, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(233, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(234, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(235, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(236, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(237, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(238, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(239, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(240, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(241, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(242, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(243, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(244, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');

-- --------------------------------------------------------

--
-- Table structure for table `ps_advice`
--

CREATE TABLE IF NOT EXISTS `ps_advice` (
  `id_advice` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1',
  PRIMARY KEY (`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_advice_lang`
--

CREATE TABLE IF NOT EXISTS `ps_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text,
  PRIMARY KEY (`id_advice`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_alias`
--

CREATE TABLE IF NOT EXISTS `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_alias`
--

INSERT INTO `ps_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(1, 'bloose', 'blouse', 1),
(2, 'blues', 'blouse', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `ps_attribute`
--

INSERT INTO `ps_attribute` (`id_attribute`, `id_attribute_group`, `color`, `position`) VALUES
(1, 1, '', 0),
(2, 1, '', 1),
(3, 1, '', 2),
(4, 1, '', 3),
(5, 3, '#AAB2BD', 0),
(6, 3, '#CFC4A6', 1),
(7, 3, '#f5f5dc', 2),
(8, 3, '#ffffff', 3),
(9, 3, '#faebd7', 4),
(10, 3, '#E84C3D', 5),
(11, 3, '#434A54', 6),
(12, 3, '#C19A6B', 7),
(13, 3, '#F39C11', 8),
(14, 3, '#5D9CEC', 9),
(15, 3, '#A0D468', 10),
(16, 3, '#F1C40F', 11),
(17, 3, '#964B00', 12),
(18, 2, '', 0),
(19, 2, '', 1),
(20, 2, '', 2),
(21, 2, '', 3),
(22, 2, '', 4),
(23, 2, '', 5),
(24, 3, '#FCCACD', 13);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_attribute_group`
--

INSERT INTO `ps_attribute_group` (`id_attribute_group`, `is_color_group`, `group_type`, `position`) VALUES
(1, 0, 'select', 0),
(2, 0, 'select', 1),
(3, 1, 'color', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_group_lang`
--

INSERT INTO `ps_attribute_group_lang` (`id_attribute_group`, `id_lang`, `name`, `public_name`) VALUES
(1, 1, 'Size', 'Size'),
(1, 2, 'Size', 'Size'),
(2, 1, 'Shoes Size', 'Size'),
(2, 2, 'Shoes Size', 'Size'),
(3, 1, 'Color', 'Color'),
(3, 2, 'Color', 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group_shop` (
  `id_attribute_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_group_shop`
--

INSERT INTO `ps_attribute_group_shop` (`id_attribute_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_impact`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_lang`
--

INSERT INTO `ps_attribute_lang` (`id_attribute`, `id_lang`, `name`) VALUES
(18, 1, '35'),
(19, 1, '36'),
(20, 1, '37'),
(21, 1, '38'),
(22, 1, '39'),
(23, 1, '40'),
(7, 1, 'Beige'),
(11, 1, 'Black'),
(14, 1, 'Blue'),
(17, 1, 'Brown'),
(12, 1, 'Camel'),
(15, 1, 'Green'),
(5, 1, 'Grey'),
(3, 1, 'L'),
(2, 1, 'M'),
(9, 1, 'Off White'),
(4, 1, 'One size'),
(13, 1, 'Orange'),
(24, 1, 'Pink'),
(10, 1, 'Red'),
(1, 1, 'S'),
(6, 1, 'Taupe'),
(8, 1, 'White'),
(16, 1, 'Yellow'),
(18, 2, '35'),
(19, 2, '36'),
(20, 2, '37'),
(21, 2, '38'),
(22, 2, '39'),
(23, 2, '40'),
(7, 2, 'Beige'),
(11, 2, 'Black'),
(14, 2, 'Blue'),
(17, 2, 'Brown'),
(12, 2, 'Camel'),
(15, 2, 'Green'),
(5, 2, 'Grey'),
(3, 2, 'L'),
(2, 2, 'M'),
(9, 2, 'Off White'),
(4, 2, 'One size'),
(13, 2, 'Orange'),
(24, 2, 'Pink'),
(10, 2, 'Red'),
(1, 2, 'S'),
(6, 2, 'Taupe'),
(8, 2, 'White'),
(16, 2, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_shop` (
  `id_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_shop`
--

INSERT INTO `ps_attribute_shop` (`id_attribute`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_badge`
--

CREATE TABLE IF NOT EXISTS `ps_badge` (
  `id_badge` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `awb` int(11) DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_badge`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `ps_badge`
--

INSERT INTO `ps_badge` (`id_badge`, `id_ps_badge`, `type`, `id_group`, `group_position`, `scoring`, `awb`, `validated`) VALUES
(1, 1, 'feature', 1, 1, 10, 0, 0),
(2, 2, 'feature', 2, 1, 10, 0, 0),
(3, 3, 'feature', 2, 2, 15, 0, 0),
(4, 4, 'feature', 3, 1, 15, 0, 0),
(5, 5, 'feature', 3, 2, 15, 0, 0),
(6, 6, 'feature', 4, 1, 15, 0, 0),
(7, 7, 'feature', 4, 2, 15, 0, 0),
(8, 8, 'feature', 5, 1, 5, 0, 0),
(9, 9, 'feature', 5, 2, 10, 0, 0),
(10, 10, 'feature', 6, 1, 15, 0, 0),
(11, 11, 'feature', 6, 2, 10, 0, 0),
(12, 12, 'feature', 6, 3, 10, 0, 0),
(13, 13, 'feature', 5, 3, 10, 0, 0),
(14, 14, 'feature', 5, 4, 15, 0, 0),
(15, 15, 'feature', 5, 5, 20, 0, 0),
(16, 16, 'feature', 5, 6, 20, 0, 0),
(17, 17, 'achievement', 7, 1, 5, 0, 1),
(18, 18, 'achievement', 7, 2, 10, 0, 0),
(19, 19, 'feature', 8, 1, 15, 0, 0),
(20, 20, 'feature', 8, 2, 15, 0, 0),
(21, 21, 'feature', 9, 1, 15, 0, 0),
(22, 22, 'feature', 10, 1, 10, 0, 0),
(23, 23, 'feature', 10, 2, 10, 0, 0),
(24, 24, 'feature', 10, 3, 10, 0, 0),
(25, 25, 'feature', 10, 4, 10, 0, 0),
(26, 26, 'feature', 10, 5, 10, 0, 0),
(27, 27, 'feature', 4, 3, 10, 0, 0),
(28, 28, 'feature', 3, 3, 10, 0, 0),
(29, 29, 'achievement', 11, 1, 5, 0, 0),
(30, 30, 'achievement', 11, 2, 10, 0, 0),
(31, 31, 'achievement', 11, 3, 15, 0, 0),
(32, 32, 'achievement', 11, 4, 20, 0, 0),
(33, 33, 'achievement', 11, 5, 25, 0, 0),
(34, 34, 'achievement', 11, 6, 30, 0, 0),
(35, 35, 'achievement', 7, 3, 15, 0, 0),
(36, 36, 'achievement', 7, 4, 20, 0, 0),
(37, 37, 'achievement', 7, 5, 25, 0, 0),
(38, 38, 'achievement', 7, 6, 30, 0, 0),
(39, 39, 'achievement', 12, 1, 5, 0, 0),
(40, 40, 'achievement', 12, 2, 10, 0, 0),
(41, 41, 'achievement', 12, 3, 15, 0, 0),
(42, 42, 'achievement', 12, 4, 20, 0, 0),
(43, 43, 'achievement', 12, 5, 25, 0, 0),
(44, 44, 'achievement', 12, 6, 30, 0, 0),
(45, 45, 'achievement', 13, 1, 5, 0, 0),
(46, 46, 'achievement', 13, 2, 10, 0, 0),
(47, 47, 'achievement', 13, 3, 15, 0, 0),
(48, 48, 'achievement', 13, 4, 20, 0, 0),
(49, 49, 'achievement', 13, 5, 25, 0, 0),
(50, 50, 'achievement', 13, 6, 30, 0, 0),
(51, 51, 'achievement', 14, 1, 5, 0, 0),
(52, 52, 'achievement', 14, 2, 10, 0, 0),
(53, 53, 'achievement', 14, 3, 15, 0, 0),
(54, 54, 'achievement', 14, 4, 20, 0, 0),
(55, 55, 'achievement', 14, 5, 25, 0, 0),
(56, 56, 'achievement', 14, 6, 30, 0, 0),
(57, 57, 'achievement', 15, 1, 5, 0, 0),
(58, 58, 'achievement', 15, 2, 10, 0, 0),
(59, 59, 'achievement', 15, 3, 15, 0, 0),
(60, 60, 'achievement', 15, 4, 20, 0, 0),
(61, 61, 'achievement', 15, 5, 25, 0, 0),
(62, 62, 'achievement', 15, 6, 30, 0, 0),
(63, 63, 'achievement', 16, 1, 5, 0, 0),
(64, 64, 'achievement', 16, 2, 10, 0, 0),
(65, 65, 'achievement', 16, 3, 15, 0, 0),
(66, 66, 'achievement', 16, 4, 20, 0, 0),
(67, 67, 'achievement', 16, 5, 25, 0, 0),
(68, 68, 'achievement', 16, 6, 30, 0, 0),
(69, 74, 'international', 22, 1, 10, 0, 0),
(70, 75, 'international', 23, 1, 10, 0, 0),
(71, 78, 'international', 26, 1, 10, 0, 0),
(72, 79, 'international', 27, 1, 10, 0, 0),
(73, 80, 'international', 28, 1, 10, 0, 0),
(74, 81, 'international', 29, 1, 10, 0, 0),
(75, 82, 'international', 30, 1, 10, 0, 0),
(76, 84, 'international', 25, 1, 10, 0, 0),
(77, 85, 'international', 32, 1, 10, 0, 0),
(78, 86, 'international', 33, 1, 10, 0, 0),
(79, 87, 'international', 34, 1, 10, 0, 0),
(80, 88, 'feature', 35, 1, 5, 0, 0),
(81, 2, 'feature', 2, 1, 10, 0, 0),
(82, 4, 'feature', 3, 1, 15, 0, 0),
(83, 6, 'feature', 4, 1, 15, 0, 0),
(84, 8, 'feature', 5, 1, 5, 0, 0),
(85, 10, 'feature', 6, 1, 15, 0, 0),
(86, 12, 'feature', 6, 3, 10, 0, 0),
(87, 14, 'feature', 5, 4, 15, 0, 0),
(88, 16, 'feature', 5, 6, 20, 0, 0),
(89, 18, 'achievement', 7, 2, 10, 0, 0),
(90, 20, 'feature', 8, 2, 15, 0, 0),
(91, 22, 'feature', 10, 1, 10, 0, 0),
(92, 24, 'feature', 10, 3, 10, 0, 0),
(93, 26, 'feature', 10, 5, 10, 0, 0),
(94, 28, 'feature', 3, 3, 10, 0, 0),
(95, 30, 'achievement', 11, 2, 10, 0, 0),
(96, 32, 'achievement', 11, 4, 20, 0, 0),
(97, 34, 'achievement', 11, 6, 30, 0, 0),
(98, 36, 'achievement', 7, 4, 20, 0, 0),
(99, 38, 'achievement', 7, 6, 30, 0, 0),
(100, 40, 'achievement', 12, 2, 10, 0, 0),
(101, 42, 'achievement', 12, 4, 20, 0, 0),
(102, 44, 'achievement', 12, 6, 30, 0, 0),
(103, 46, 'achievement', 13, 2, 10, 0, 0),
(104, 48, 'achievement', 13, 4, 20, 0, 0),
(105, 50, 'achievement', 13, 6, 30, 0, 0),
(106, 52, 'achievement', 14, 2, 10, 0, 0),
(107, 54, 'achievement', 14, 4, 20, 0, 0),
(108, 56, 'achievement', 14, 6, 30, 0, 0),
(109, 58, 'achievement', 15, 2, 10, 0, 0),
(110, 60, 'achievement', 15, 4, 20, 0, 0),
(111, 62, 'achievement', 15, 6, 30, 0, 0),
(112, 64, 'achievement', 16, 2, 10, 0, 0),
(113, 66, 'achievement', 16, 4, 20, 0, 0),
(114, 68, 'achievement', 16, 6, 30, 0, 0),
(115, 82, 'international', 30, 1, 10, 0, 0),
(116, 84, 'international', 25, 1, 10, 0, 0),
(117, 87, 'international', 34, 1, 10, 0, 0),
(118, 88, 'feature', 35, 1, 5, 0, 0),
(119, 89, 'feature', 35, 2, 10, 0, 0),
(120, 90, 'feature', 35, 3, 10, 0, 0),
(121, 91, 'feature', 35, 4, 10, 0, 0),
(122, 92, 'feature', 35, 5, 10, 0, 0),
(123, 93, 'feature', 35, 6, 10, 0, 0),
(124, 94, 'feature', 36, 1, 5, 0, 0),
(125, 95, 'feature', 36, 2, 5, 0, 0),
(126, 96, 'feature', 36, 3, 10, 0, 0),
(127, 97, 'feature', 36, 4, 10, 0, 0),
(128, 98, 'feature', 36, 5, 20, 0, 0),
(129, 99, 'feature', 36, 6, 20, 0, 0),
(130, 100, 'feature', 8, 3, 15, 0, 0),
(131, 101, 'achievement', 37, 1, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_badge_lang`
--

CREATE TABLE IF NOT EXISTS `ps_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_badge`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_badge_lang`
--

INSERT INTO `ps_badge_lang` (`id_badge`, `id_lang`, `name`, `description`, `group_name`) VALUES
(1, 1, 'SEO', 'You enabled the URL rewriting through the tab "Preferences > SEO and URLs".', 'SEO'),
(1, 2, 'SEO', '', ''),
(2, 1, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(3, 1, 'Site Performance', 'You enabled medias servers through the tab "Advanced parameters > Performances".', 'Site Performance'),
(3, 2, 'Site Performance', '', ''),
(4, 1, 'Payment', 'You configured a payment solution on your store.', 'Payment'),
(5, 1, 'Payment', 'You offer two different payment methods to your customers.', 'Payment'),
(5, 2, 'Payment', '', ''),
(6, 1, 'Shipping', 'You configured a carrier on your store.', 'Shipping'),
(7, 1, 'Shipping', 'You offer two shipping solutions (carriers) to your customers.', 'Shipping'),
(7, 2, 'Shipping', '', ''),
(8, 1, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(9, 1, 'Catalog Size', 'You have 10 products within your catalog.', 'Catalog Size'),
(9, 2, 'Catalog Size', '', ''),
(10, 1, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(11, 1, 'Contact information', 'You added a third email address to your contact form.', 'Contact information'),
(11, 2, 'Contact information', '', ''),
(12, 1, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(13, 1, 'Catalog Size', 'You have 100 products within your catalog.', 'Catalog Size'),
(13, 2, 'Catalog Size', '', ''),
(14, 1, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(15, 1, 'Catalog Size', 'You have 10,000 products within your catalog.', 'Catalog Size'),
(15, 2, 'Catalog Size', '', ''),
(16, 1, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(17, 1, 'Days of Experience', 'You just installed PrestaShop!', 'Days of Experience'),
(17, 2, 'Days of Experience', '', ''),
(18, 1, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(19, 1, 'Customization', 'You uploaded your own logo.', 'Customization'),
(19, 2, 'Customization', '', ''),
(20, 1, 'Customization', 'You installed a new template.', 'Customization'),
(21, 1, 'Addons', 'You connected your back-office to the Addons platform using your PrestaShop Addons account.', 'Addons'),
(21, 2, 'Addons', '', ''),
(22, 1, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(23, 1, 'Multistores', 'You manage two stores with the Multistores feature.', 'Multistores'),
(23, 2, 'Multistores', '', ''),
(24, 1, 'Multistores', 'You manage two different groups of stores using the Multistores feature.', 'Multistores'),
(25, 1, 'Multistores', 'You manage five stores with the Multistores feature.', 'Multistores'),
(25, 2, 'Multistores', '', ''),
(26, 1, 'Multistores', 'You manage five different groups of stores using the Multistores feature.', 'Multistores'),
(27, 1, 'Shipping', 'You offer three different shipping solutions (carriers) to your customers.', 'Shipping'),
(27, 2, 'Shipping', '', ''),
(28, 1, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(29, 1, 'Revenue', 'You get this badge when you reach 2000000 IDR in sales.', 'Revenue'),
(29, 2, 'Revenue', '', ''),
(30, 1, 'Revenue', 'You get this badge when you reach 20000 IDR in sales.', 'Revenue'),
(31, 1, 'Revenue', 'You get this badge when you reach 200000 IDR in sales.', 'Revenue'),
(31, 2, 'Revenue', '', ''),
(32, 1, 'Revenue', 'You get this badge when you reach 2000000 IDR in sales.', 'Revenue'),
(33, 1, 'Revenue', 'You get this badge when you reach 20000 IDR in sales.', 'Revenue'),
(33, 2, 'Revenue', '', ''),
(34, 1, 'Revenue', 'You get this badge when you reach 200000 IDR in sales.', 'Revenue'),
(35, 1, 'Days of Experience', 'You installed PrestaShop a month ago!', 'Days of Experience'),
(35, 2, 'Days of Experience', '', ''),
(36, 1, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(37, 1, 'Days of Experience', 'You installed PrestaShop a year ago!', 'Days of Experience'),
(37, 2, 'Days of Experience', '', ''),
(38, 1, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(39, 1, 'Visitors', 'You reached 10 visitors!', 'Visitors'),
(39, 2, 'Visitors', '', ''),
(40, 1, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(41, 1, 'Visitors', 'You reached 1,000 visitors!', 'Visitors'),
(41, 2, 'Visitors', '', ''),
(42, 1, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(43, 1, 'Visitors', 'You reached 100,000 visitors!', 'Visitors'),
(43, 2, 'Visitors', '', ''),
(44, 1, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(45, 1, 'Customer Carts', 'Two carts have been created by visitors.', 'Customer Carts'),
(45, 2, 'Customer Carts', '', ''),
(46, 1, 'Customer Carts', 'Ten carts have been created by visitors.', 'Customer Carts'),
(47, 1, 'Customer Carts', 'A hundred carts have been created by visitors on your store.', 'Customer Carts'),
(47, 2, 'Customer Carts', '', ''),
(48, 1, 'Customer Carts', 'A thousand carts have been created by visitors on your store.', 'Customer Carts'),
(49, 1, 'Customer Carts', '10,000 carts have been created by visitors.', 'Customer Carts'),
(49, 2, 'Customer Carts', '', ''),
(50, 1, 'Customer Carts', '100,000 carts have been created by visitors.', 'Customer Carts'),
(51, 1, 'Orders', 'You received your first order.', 'Orders'),
(51, 2, 'Orders', '', ''),
(52, 1, 'Orders', '10 orders have been placed through your online store.', 'Orders'),
(53, 1, 'Orders', 'You received 100 orders through your online store!', 'Orders'),
(53, 2, 'Orders', '', ''),
(54, 1, 'Orders', 'You received 1,000 orders through your online store, congrats!', 'Orders'),
(55, 1, 'Orders', 'You received 10,000 orders through your online store, cheers!', 'Orders'),
(55, 2, 'Orders', '', ''),
(56, 1, 'Orders', 'You received 100,000 orders through your online store!', 'Orders'),
(57, 1, 'Customer Service Threads', 'You received  your first customer''s message.', 'Customer Service Threads'),
(57, 2, 'Customer Service Threads', '', ''),
(58, 1, 'Customer Service Threads', 'You received 10 messages from your customers.', 'Customer Service Threads'),
(59, 1, 'Customer Service Threads', 'You received 100 messages from your customers.', 'Customer Service Threads'),
(59, 2, 'Customer Service Threads', '', ''),
(60, 1, 'Customer Service Threads', 'You received 1,000 messages from your customers.', 'Customer Service Threads'),
(61, 1, 'Customer Service Threads', 'You received 10,000 messages from your customers.', 'Customer Service Threads'),
(61, 2, 'Customer Service Threads', '', ''),
(62, 1, 'Customer Service Threads', 'You received 100,000 messages from your customers.', 'Customer Service Threads'),
(63, 1, 'Customers', 'You got the first customer registered on your store!', 'Customers'),
(63, 2, 'Customers', '', ''),
(64, 1, 'Customers', 'You have over 10 customers registered on your store.', 'Customers'),
(65, 1, 'Customers', 'You have over 100 customers registered on your store.', 'Customers'),
(65, 2, 'Customers', '', ''),
(66, 1, 'Customers', 'You have over 1,000 customers registered on your store.', 'Customers'),
(67, 1, 'Customers', 'You have over 10,000 customers registered on your store.', 'Customers'),
(67, 2, 'Customers', '', ''),
(68, 1, 'Customers', 'You have over 100,000 customers registered on your store.', 'Customers'),
(69, 1, 'North America', 'You got your first sale in North America', 'North America'),
(69, 2, 'North America', '', ''),
(70, 1, 'Oceania', 'You got your first sale in Oceania', 'Oceania'),
(70, 2, 'Oceania', '', ''),
(71, 1, 'Central Asia', 'You got your first sale in Central Asia', 'Central Asia'),
(71, 2, 'Central Asia', '', ''),
(72, 1, 'Middle East', 'You got your first sale in Middle East', 'Middle East'),
(72, 2, 'Middle East', '', ''),
(73, 1, 'Southern Asia', 'You got your first sale in Southern Asia', 'Southern Asia'),
(73, 2, 'Southern Asia', '', ''),
(74, 1, 'Eastern Asia', 'You got your first sale in Eastern Asia', 'Eastern Asia'),
(74, 2, 'Eastern Asia', '', ''),
(75, 1, 'South Eastern Asia', 'You got your first sale in South Eastern Asia', 'South Eastern Asia'),
(76, 1, 'South America', 'You got your first sale in South America', 'South America'),
(77, 1, 'Europe', 'You got your first sale in  Europe!', 'Europe'),
(77, 2, 'Europe', '', ''),
(78, 1, 'Africa', 'You got your first sale in Africa', 'Africa'),
(78, 2, 'Africa', '', ''),
(79, 1, 'Maghreb', 'You got your first sale in Maghreb', 'Maghreb'),
(81, 1, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(82, 1, 'Payment', 'You configured a payment solution on your store.', 'Payment'),
(83, 1, 'Shipping', 'You configured a carrier on your store.', 'Shipping'),
(84, 1, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(85, 1, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(86, 1, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(87, 1, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(88, 1, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(89, 1, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(90, 1, 'Customization', 'You installed a new template.', 'Customization'),
(91, 1, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(92, 1, 'Multistores', 'You manage two different groups of stores using the Multistores feature.', 'Multistores'),
(93, 1, 'Multistores', 'You manage five different groups of stores using the Multistores feature.', 'Multistores'),
(94, 1, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(95, 1, 'Revenue', 'You get this badge when you reach 20000 IDR in sales.', 'Revenue'),
(96, 1, 'Revenue', 'You get this badge when you reach 2000000 IDR in sales.', 'Revenue'),
(97, 1, 'Revenue', 'You get this badge when you reach 200000 IDR in sales.', 'Revenue'),
(98, 1, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(99, 1, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(100, 1, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(101, 1, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(102, 1, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(103, 1, 'Customer Carts', 'Ten carts have been created by visitors.', 'Customer Carts'),
(104, 1, 'Customer Carts', 'A thousand carts have been created by visitors on your store.', 'Customer Carts'),
(105, 1, 'Customer Carts', '100,000 carts have been created by visitors.', 'Customer Carts'),
(106, 1, 'Orders', '10 orders have been placed through your online store.', 'Orders'),
(107, 1, 'Orders', 'You received 1,000 orders through your online store, congrats!', 'Orders'),
(108, 1, 'Orders', 'You received 100,000 orders through your online store!', 'Orders'),
(109, 1, 'Customer Service Threads', 'You received 10 messages from your customers.', 'Customer Service Threads'),
(110, 1, 'Customer Service Threads', 'You received 1,000 messages from your customers.', 'Customer Service Threads'),
(111, 1, 'Customer Service Threads', 'You received 100,000 messages from your customers.', 'Customer Service Threads'),
(112, 1, 'Customers', 'You have over 10 customers registered on your store.', 'Customers'),
(113, 1, 'Customers', 'You have over 1,000 customers registered on your store.', 'Customers'),
(114, 1, 'Customers', 'You have over 100,000 customers registered on your store.', 'Customers'),
(115, 1, 'South Eastern Asia', 'You got your first sale in South Eastern Asia', 'South Eastern Asia'),
(116, 1, 'South America', 'You got your first sale in South America', 'South America'),
(117, 1, 'Maghreb', 'You got your first sale in Maghreb', 'Maghreb'),
(118, 1, 'Your Team''s Employees', 'First employees accounts added to your shop', 'Your Team''s Employees'),
(119, 1, 'Your Team''s Employees', '3 employees accounts added to your shop', 'Your Team''s Employees'),
(120, 1, 'Your Team''s Employees', '5 employees accounts added to your shop', 'Your Team''s Employees'),
(121, 1, 'Your Team''s Employees', '10 employees accounts added to your shop', 'Your Team''s Employees'),
(122, 1, 'Your Team''s Employees', '20 employees accounts added to your shop', 'Your Team''s Employees'),
(123, 1, 'Your Team''s Employees', '40 employees accounts added to your shop', 'Your Team''s Employees'),
(124, 1, 'Product Pictures', 'First photo added to your catalog', 'Product Pictures'),
(125, 1, 'Product Pictures', '50 photos added to your catalog', 'Product Pictures'),
(126, 1, 'Product Pictures', '100 photos added to your catalog', 'Product Pictures'),
(127, 1, 'Product Pictures', '1000 photos added to your catalog', 'Product Pictures'),
(128, 1, 'Product Pictures', '10000 photos added to your catalog', 'Product Pictures'),
(129, 1, 'Product Pictures', '50000 photos added to your catalog', 'Product Pictures'),
(130, 1, 'Customization', 'First CMS page added to your catalog', 'Customization'),
(131, 1, 'Cart Rules', 'First cart rules configured on your shop', 'Cart Rules');

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int(10) unsigned NOT NULL,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_carrier`
--

INSERT INTO `ps_carrier` (`id_carrier`, `id_reference`, `id_tax_rules_group`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`, `need_range`, `external_module_name`, `shipping_method`, `position`, `max_width`, `max_height`, `max_depth`, `max_weight`, `grade`) VALUES
(1, 1, 0, '0', '', 1, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, 0, 0, '0.000000', 0),
(2, 2, 0, 'My carrier', '', 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 0, '0.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_group`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_group`
--

INSERT INTO `ps_carrier_group` (`id_carrier`, `id_group`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_lang`
--

INSERT INTO `ps_carrier_lang` (`id_carrier`, `id_shop`, `id_lang`, `delay`) VALUES
(1, 1, 1, 'Pick up in-store'),
(2, 1, 1, 'Delivery next day!'),
(1, 1, 2, 'Pick up in-store'),
(2, 1, 2, 'Delivery next day!');

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_shop`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_shop`
--

INSERT INTO `ps_carrier_shop` (`id_carrier`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_tax_rules_group_shop`
--

INSERT INTO `ps_carrier_tax_rules_group_shop` (`id_carrier`, `id_tax_rules_group`, `id_shop`) VALUES
(1, 1, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_zone`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_zone`
--

INSERT INTO `ps_carrier_zone` (`id_carrier`, `id_zone`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart`
--

CREATE TABLE IF NOT EXISTS `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ps_cart`
--

INSERT INTO `ps_cart` (`id_cart`, `id_shop_group`, `id_shop`, `id_carrier`, `delivery_option`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `allow_seperated_package`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 2, '', 1, 1, 1, 1, 1, 1, '-1', 1, 0, '', 0, 0, '2014-05-11 20:17:28', '2014-05-11 20:17:28'),
(2, 1, 1, 2, '', 1, 1, 1, 1, 1, 1, '-1', 1, 0, '', 0, 0, '2014-05-11 20:17:28', '2014-05-11 20:17:28'),
(3, 1, 1, 2, '', 1, 1, 1, 1, 1, 1, '-1', 1, 0, '', 0, 0, '2014-05-11 20:17:28', '2014-05-11 20:17:28'),
(4, 1, 1, 2, '', 1, 1, 1, 1, 1, 1, '769afdbe2aaea279fcc2c9ecc7113bbd', 1, 0, '', 0, 0, '2014-05-11 20:17:28', '2014-05-11 20:17:28'),
(5, 1, 1, 2, 'a:1:{i:3;s:2:"2,";}', 1, 0, 0, 1, 1, 2, '769afdbe2aaea279fcc2c9ecc7113bbd', 0, 0, '', 0, 0, '2014-05-11 20:17:28', '2014-05-11 20:17:28'),
(6, 1, 1, 2, 'a:1:{i:4;s:2:"2,";}', 1, 3, 3, 1, 1, 1, '769afdbe2aaea279fcc2c9ecc7113bbd', 0, 0, '', 0, 0, '2014-05-11 20:17:29', '2014-05-11 20:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_cart_rule` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_product`
--

CREATE TABLE IF NOT EXISTS `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cart_product`
--

INSERT INTO `ps_cart_product` (`id_cart`, `id_product`, `id_address_delivery`, `id_shop`, `id_product_attribute`, `quantity`, `date_add`) VALUES
(1, 3, 0, 1, 13, 1, '0000-00-00 00:00:00'),
(2, 6, 0, 1, 32, 1, '0000-00-00 00:00:00'),
(2, 7, 0, 1, 34, 1, '0000-00-00 00:00:00'),
(4, 3, 0, 1, 13, 1, '0000-00-00 00:00:00'),
(4, 7, 0, 1, 34, 1, '0000-00-00 00:00:00'),
(5, 1, 3, 1, 1, 1, '0000-00-00 00:00:00'),
(5, 3, 3, 1, 13, 1, '0000-00-00 00:00:00'),
(5, 2, 3, 1, 7, 1, '0000-00-00 00:00:00'),
(6, 3, 4, 1, 13, 1, '0000-00-00 00:00:00'),
(6, 7, 4, 1, 34, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule` (
  `id_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `gift_product` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_carrier` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_combination`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_combination` (
  `id_cart_rule_1` int(10) unsigned NOT NULL,
  `id_cart_rule_2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  KEY `id_cart_rule_1` (`id_cart_rule_1`),
  KEY `id_cart_rule_2` (`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_country`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_country` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_group`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_group` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_lang` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule` (
  `id_product_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int(10) unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_group`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_value`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_value` (
  `id_product_rule` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_shop` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category`
--

CREATE TABLE IF NOT EXISTS `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftright` (`nleft`,`nright`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `nleft` (`nleft`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ps_category`
--

INSERT INTO `ps_category` (`id_category`, `id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`, `is_root_category`) VALUES
(1, 0, 1, 0, 1, 22, 1, '2014-05-11 20:15:39', '2014-05-11 20:15:39', 0, 0),
(2, 1, 1, 1, 2, 21, 1, '2014-05-11 20:15:39', '2014-05-11 20:15:39', 0, 1),
(3, 2, 1, 2, 3, 20, 1, '2014-05-11 20:17:29', '2014-05-11 20:17:29', 0, 0),
(4, 3, 1, 3, 4, 11, 1, '2014-05-11 20:17:30', '2014-05-11 20:17:30', 0, 0),
(5, 4, 1, 4, 5, 6, 1, '2014-05-11 20:17:30', '2014-05-11 20:17:30', 0, 0),
(6, 4, 1, 4, 7, 8, 0, '2014-05-11 20:17:32', '2014-05-11 20:17:32', 0, 0),
(7, 4, 1, 4, 9, 10, 1, '2014-05-11 20:17:33', '2014-05-11 20:17:33', 0, 0),
(8, 3, 1, 3, 12, 19, 1, '2014-05-11 20:17:33', '2014-05-11 20:17:33', 0, 0),
(9, 8, 1, 4, 13, 14, 1, '2014-05-11 20:17:34', '2014-05-11 20:17:34', 0, 0),
(10, 8, 1, 4, 15, 16, 1, '2014-05-11 20:17:35', '2014-05-11 20:17:35', 0, 0),
(11, 8, 1, 4, 17, 18, 1, '2014-05-11 20:17:37', '2014-05-11 20:17:37', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_group`
--

CREATE TABLE IF NOT EXISTS `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_group`
--

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(1, 0),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_lang`
--

INSERT INTO `ps_category_lang` (`id_category`, `id_shop`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Root', '', 'root', '', '', ''),
(1, 1, 2, 'Root', '', 'root', '', '', ''),
(2, 1, 1, 'Home', '', 'home', '', '', ''),
(2, 1, 2, 'Home', '', 'home', '', '', ''),
(3, 1, 1, 'Women', '<p><strong>You will find here all woman fashion collections.</strong></p>\r\n<p>This category includes all the basics of your wardrobe and much more:</p>\r\n<p>shoes, accessories, printed t-shirts, feminine dresses, women''s jeans!</p>', 'women', '', '', ''),
(3, 1, 2, 'Women', '<p><strong>You will find here all woman fashion collections.</strong></p>\r\n<p>This category includes all the basics of your wardrobe and much more:</p>\r\n<p>shoes, accessories, printed t-shirts, feminine dresses, women''s jeans!</p>', 'women', '', '', ''),
(4, 1, 1, 'Tops', '<p>Choose from t-shirts, tops, blouses, short sleeves, long sleeves, tank tops, 3/4 sleeves and more.</p>\r\n<p>Find the cut that suits you the best!</p>', 'tops', '', '', ''),
(4, 1, 2, 'Tops', '<p>Choose from t-shirts, tops, blouses, short sleeves, long sleeves, tank tops, 3/4 sleeves and more.</p>\r\n<p>Find the cut that suits you the best!</p>', 'tops', '', '', ''),
(5, 1, 1, 'T-shirts', '<p>The must have of your wardrobe, take a look at our different colors,</p>\r\n<p>shapes and style of our collection!</p>', 'tshirts', '', '', ''),
(5, 1, 2, 'T-shirts', '<p>The must have of your wardrobe, take a look at our different colors,</p>\r\n<p>shapes and style of our collection!</p>', 'tshirts', '', '', ''),
(6, 1, 1, 'Tops', 'Choose the top that best suits you from the wide variety of tops we have. ', 'top', '', '', ''),
(6, 1, 2, 'Tops', 'Choose the top that best suits you from the wide variety of tops we have. ', 'top', '', '', ''),
(7, 1, 1, 'Blouses', 'Match your favorites blouses with the right accessories for the perfect look.', 'blouses', '', '', ''),
(7, 1, 2, 'Blouses', 'Match your favorites blouses with the right accessories for the perfect look.', 'blouses', '', '', ''),
(8, 1, 1, 'Dresses', '<p>Find your favorites dresses from our wide choice of evening, casual or summer dresses!</p>\r\n<p>We offer dresses for every day, every style and every occasion.</p>', 'dresses', '', '', ''),
(8, 1, 2, 'Dresses', '<p>Find your favorites dresses from our wide choice of evening, casual or summer dresses!</p>\r\n<p>We offer dresses for every day, every style and every occasion.</p>', 'dresses', '', '', ''),
(9, 1, 1, 'Casual Dresses', '<p>You are looking for a dress for every day? Take a look at</p>\r\n<p>our selection of dresses to find one that suits you.</p>', 'casual-dresses', '', '', ''),
(9, 1, 2, 'Casual Dresses', '<p>You are looking for a dress for every day? Take a look at</p>\r\n<p>our selection of dresses to find one that suits you.</p>', 'casual-dresses', '', '', ''),
(10, 1, 1, 'Evening Dresses', 'Browse our different dresses to choose the perfect dress for an unforgettable evening!', 'evening-dresses', '', '', ''),
(10, 1, 2, 'Evening Dresses', 'Browse our different dresses to choose the perfect dress for an unforgettable evening!', 'evening-dresses', '', '', ''),
(11, 1, 1, 'Summer Dresses', 'Short dress, long dress, silk dress, printed dress, you will find the perfect dress for summer.', 'summer-dresses', '', '', ''),
(11, 1, 2, 'Summer Dresses', 'Short dress, long dress, silk dress, printed dress, you will find the perfect dress for summer.', 'summer-dresses', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_product`
--

CREATE TABLE IF NOT EXISTS `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_product`
--

INSERT INTO `ps_category_product` (`id_category`, `id_product`, `position`) VALUES
(2, 1, 0),
(2, 2, 1),
(2, 3, 2),
(2, 4, 3),
(2, 5, 4),
(2, 6, 5),
(2, 7, 6),
(3, 1, 0),
(3, 2, 1),
(3, 3, 2),
(3, 4, 3),
(3, 5, 4),
(3, 6, 5),
(3, 7, 6),
(4, 1, 0),
(4, 2, 1),
(5, 1, 0),
(7, 2, 0),
(8, 3, 0),
(8, 4, 1),
(8, 5, 2),
(8, 6, 3),
(8, 7, 4),
(9, 3, 0),
(10, 4, 0),
(11, 5, 0),
(11, 6, 1),
(11, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_shop`
--

CREATE TABLE IF NOT EXISTS `ps_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_shop`
--

INSERT INTO `ps_category_shop` (`id_category`, `id_shop`, `position`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 2),
(7, 1, 3),
(8, 1, 2),
(9, 1, 1),
(10, 1, 2),
(11, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms`
--

CREATE TABLE IF NOT EXISTS `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_cms`
--

INSERT INTO `ps_cms` (`id_cms`, `id_cms_category`, `position`, `active`, `indexation`) VALUES
(1, 1, 0, 1, 0),
(2, 1, 1, 1, 0),
(3, 1, 2, 1, 0),
(4, 1, 3, 1, 0),
(5, 1, 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `location` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_store` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms_block`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_block`
--

INSERT INTO `ps_cms_block` (`id_cms_block`, `id_cms_category`, `location`, `position`, `display_store`) VALUES
(1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_lang` (
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cms_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_block_lang`
--

INSERT INTO `ps_cms_block_lang` (`id_cms_block`, `id_lang`, `name`) VALUES
(1, 1, 'Information'),
(1, 2, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_page`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_page` (
  `id_cms_block_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  `is_category` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_cms_block_page`
--

INSERT INTO `ps_cms_block_page` (`id_cms_block_page`, `id_cms_block`, `id_cms`, `is_category`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_shop` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block`,`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_block_shop`
--

INSERT INTO `ps_cms_block_shop` (`id_cms_block`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category`
--

CREATE TABLE IF NOT EXISTS `ps_cms_category` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_category`
--

INSERT INTO `ps_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 1, 1, '2014-05-11 20:15:41', '2014-05-11 20:15:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_category_lang`
--

INSERT INTO `ps_cms_category_lang` (`id_cms_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', '', 'home', '', '', ''),
(1, 2, 'Home', '', 'home', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_lang`
--

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 2, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>&trade; open-source software.</p>', 'legal-notice'),
(2, 2, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>&trade; open-source software.</p>', 'legal-notice'),
(3, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\n<h3 class="page-subheading">Rule 1</h3>\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class="page-subheading">Rule 2</h3>\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>\n<h3 class="page-subheading">Rule 3</h3>\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>', 'terms-and-conditions-of-use'),
(3, 2, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\n<h3 class="page-subheading">Rule 1</h3>\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class="page-subheading">Rule 2</h3>\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>\n<h3 class="page-subheading">Rule 3</h3>\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>', 'terms-and-conditions-of-use'),
(4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\n<div class="row">\n<div class="col-xs-12 col-sm-4">\n<div class="cms-block">\n<h3 class="page-subheading">Our company</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class="list-1">\n<li><em class="icon-ok"></em>Top quality products</li>\n<li><em class="icon-ok"></em>Best customer service</li>\n<li><em class="icon-ok"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Our team</h3>\n<img title="cms-img" src="../img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" />\n<p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Testimonials</h3>\n<div class="testimonials">\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\n</div>\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\n<div class="testimonials">\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\n</div>\n<p><strong class="dark">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>', 'about-us'),
(4, 2, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\n<div class="row">\n<div class="col-xs-12 col-sm-4">\n<div class="cms-block">\n<h3 class="page-subheading">Our company</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class="list-1">\n<li><em class="icon-ok"></em>Top quality products</li>\n<li><em class="icon-ok"></em>Best customer service</li>\n<li><em class="icon-ok"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Our team</h3>\n<img title="cms-img" src="../img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" />\n<p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Testimonials</h3>\n<div class="testimonials">\n<div class="inner"><span class="before">“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">”</span></div>\n</div>\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\n<div class="testimonials">\n<div class="inner"><span class="before">“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">”</span></div>\n</div>\n<p><strong class="dark">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>', 'about-us'),
(5, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment'),
(5, 2, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cms_shop` (
  `id_cms` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_shop`
--

INSERT INTO `ps_cms_shop` (`id_cms`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_compare`
--

CREATE TABLE IF NOT EXISTS `ps_compare` (
  `id_compare` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_compare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_compare_product`
--

CREATE TABLE IF NOT EXISTS `ps_compare_product` (
  `id_compare` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition`
--

CREATE TABLE IF NOT EXISTS `ps_condition` (
  `id_condition` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_condition`,`id_ps_condition`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `ps_condition`
--

INSERT INTO `ps_condition` (`id_condition`, `id_ps_condition`, `type`, `request`, `operator`, `value`, `result`, `calculation_type`, `calculation_detail`, `validated`, `date_add`, `date_upd`) VALUES
(2, 158, 'install', '', '>=', '90', '', 'time', '2', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(3, 19, 'install', '', '>', '0', '1', 'time', '1', 1, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(4, 40, 'install', '', '>=', '730', '', 'time', '2', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(5, 1, 'configuration', 'PS_REWRITING_SETTINGS', '==', '1', '', 'hook', 'actionAdminMetaControllerUpdate_optionsAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(6, 2, 'configuration', 'PS_SMARTY_FORCE_COMPILE', '!=', '2', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(7, 3, 'configuration', 'PS_CSS_THEME_CACHE', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(8, 4, 'configuration', 'PS_CIPHER_ALGORITHM', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(9, 5, 'configuration', 'PS_MEDIA_SERVERS', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(10, 6, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '0', '', 'hook', 'actionModuleInstallAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(11, 7, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '1', '', 'hook', 'actionModuleInstallAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(12, 8, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '0', '', 'hook', 'actionObjectCarrierAddAfter', 0, '2014-05-13 19:42:55', '2014-05-13 19:42:55'),
(15, 11, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(16, 16, 'configuration', 'PS_SHOP_PHONE', '!=', '0', '', 'hook', 'actionAdminStoresControllerUpdate_optionsAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(17, 17, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '2', '', 'hook', 'actionObjectContactAddAfter', 0, '2014-05-11 20:35:30', '2014-05-11 20:35:30'),
(19, 12, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-11 20:35:30', '2014-05-11 20:35:30'),
(20, 13, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-11 20:35:30', '2014-05-11 20:35:30'),
(21, 14, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(22, 15, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(23, 20, 'install', '', '>=', '7', '', 'time', '1', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(24, 21, 'configuration', 'PS_LOGO', '!=', 'logo.jpg', '', 'hook', 'actionAdminThemesControllerUpdate_optionsAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(25, 22, 'sql', 'SELECT COUNT(*) FROM PREFIX_theme WHERE directory != "default" AND directory != "prestashop" AND directory ! "default-bootstrap"', '>', '0', '', 'hook', 'actionObjectShopUpdateAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(26, 23, 'configuration', 'PS_LOGGED_ON_ADDONS', '==', '1', '', 'time', '1', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(27, 24, 'configuration', 'PS_MULTISHOP_FEATURE_ACTIVE', '==', '1', '', 'hook', 'actionAdminPreferencesControllerUpdate_optionsAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(28, 25, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '1', '', 'hook', 'actionObjectShopAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(29, 28, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '1', '', 'hook', 'actionObjectShopGroupAddAfter', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(30, 26, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '4', '', 'hook', 'actionObjectShopAddAfter', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(31, 27, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '5', '', 'hook', 'actionObjectShopGroupAddAfter 	', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(32, 30, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '2', '', 'hook', 'actionObjectCarrierAddAfter', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(33, 29, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '2', '', 'hook', 'actionModuleInstallAfter', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(34, 31, 'sql', 'SELECT SUM(total_paid_tax_excl / c.conversion_rate)\r\nFROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '2000000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(35, 32, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '20000000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(36, 33, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '200000000', '0', 'time', '1', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(37, 34, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '2000000000', '0', 'time', '7', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(38, 35, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '20000000000', '0', 'time', '7', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(40, 37, 'install', '', '>=', '30', '', 'time', '1', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(41, 38, 'install', '', '>=', '182', '', 'time', '2', 0, '2014-05-11 20:35:31', '2014-05-13 19:41:58'),
(42, 39, 'install', '', '>=', '365', '', 'time', '2', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(43, 41, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10', '2', 'time', '1', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(44, 42, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100', '2', 'time', '1', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(45, 43, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000', '2', 'time', '1', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(46, 44, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10000', '2', 'time', '2', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(47, 45, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100000', '2', 'time', '3', 0, '2014-05-13 19:42:57', '2014-05-13 19:42:57'),
(48, 46, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000000', '2', 'time', '4', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(49, 47, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '2', '', 'hook', 'actionObjectCartAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(50, 48, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '10', '', 'hook', 'actionObjectCartAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(51, 49, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '100', '', 'hook', 'actionObjectCartAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(52, 50, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '1000', '6', 'time', '1', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(53, 51, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '10000', '6', 'time', '4', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(54, 52, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '100000', '6', 'time', '8', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(55, 53, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '1', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(56, 54, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '10', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(57, 55, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '100', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(58, 56, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '1000', '4', 'time', '2', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(59, 57, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '10000', '4', 'time', '4', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(64, 68, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '1000', '0', 'time', '2', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(65, 69, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '10000', '0', 'time', '4', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(66, 70, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100000', '0', 'time', '8', 0, '2014-05-11 20:35:33', '2014-05-11 20:36:03'),
(67, 59, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-11 20:35:33', '2014-05-11 20:35:33'),
(68, 60, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-11 20:35:33', '2014-05-11 20:35:33'),
(69, 61, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-11 20:35:33', '2014-05-11 20:35:33'),
(70, 62, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1000', '0', 'time', '1', 0, '2014-05-11 20:35:33', '2014-05-13 19:41:59'),
(77, 82, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"AF",\r\n"BD",\r\n"BT",\r\n"IN",\r\n"IO",\r\n"LK",\r\n"MV",\r\n"NP",\r\n"PK"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:33', '2014-05-11 20:35:33'),
(80, 86, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BZ",\r\n"CR",\r\n"GT",\r\n"HN",\r\n"MX",\r\n"NI",\r\n"PA",\r\n"SV",\r\n"AG",\r\n"AI",\r\n"AN",\r\n"AW",\r\n"BB",\r\n"BM",\r\n"BS",\r\n"CU",\r\n"DM",\r\n"DO",\r\n"GD",\r\n"GP",\r\n"HT",\r\n"JM",\r\n"KN",\r\n"KY",\r\n"LC",\r\n"MQ",\r\n"MS",\r\n"PR",\r\n"TC",\r\n"TT",\r\n"VC",\r\n"VG",\r\n"VI",\r\n"AR",\r\n"BO",\r\n"BR",\r\n"CL",\r\n"CO",\r\n"EC",\r\n"FK",\r\n"GF",\r\n"GY",\r\n"PE",\r\n"PY",\r\n"SR",\r\n"UY",\r\n"VE"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(81, 87, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BE",\r\n"DE",\r\n"FR",\r\n"FX",\r\n"GB",\r\n"IE",\r\n"LU",\r\n"MC",\r\n"NL",\r\n"IT",\r\n"MT",\r\n"SM",\r\n"VA",\r\n"AD",\r\n"ES",\r\n"GI",\r\n"PT",\r\n"BY",\r\n"EE",\r\n"LT",\r\n"LV",\r\n"MD",\r\n"PL",\r\n"UA",\r\n"AL",\r\n"BA",\r\n"BG",\r\n"GR",\r\n"HR",\r\n"MK",\r\n"RO",\r\n"SI",\r\n"YU",\r\n"RU",\r\n"AT",\r\n"CH",\r\n"CZ",\r\n"HU",\r\n"LI",\r\n"SK",\r\n"DK",\r\n"FI",\r\n"FO",\r\n"IS",\r\n"NO",\r\n"SE",\r\n"SJ"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(82, 88, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BI",\r\n"CF",\r\n"CG",\r\n"RW",\r\n"TD",\r\n"ZR",\r\n"DJ",\r\n"ER",\r\n"ET",\r\n"KE",\r\n"SO",\r\n"TZ",\r\n"UG",\r\n"KM",\r\n"MG",\r\n"MU",\r\n"RE",\r\n"SC",\r\n"YT",\r\n"AO",\r\n"BW",\r\n"LS",\r\n"MW",\r\n"MZ",\r\n"NA",\r\n"SZ",\r\n"ZA",\r\n"ZM",\r\n"ZW",\r\n"BF",\r\n"BJ",\r\n"CI",\r\n"CM",\r\n"CV",\r\n"GA",\r\n"GH",\r\n"GM",\r\n"GN",\r\n"GQ",\r\n"GW",\r\n"LR",\r\n"ML",\r\n"MR",\r\n"NE",\r\n"NG",\r\n"SL",\r\n"SN",\r\n"ST",\r\n"TG"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(84, 90, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '2', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(85, 91, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '3', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(90, 96, 'sql', 'SELECT id_image FROM PREFIX_image WHERE id_image > 26', '>', '0', '', 'hook', 'actionObjectImageAddAfter', 0, '2014-05-11 20:35:34', '2014-05-11 20:35:34'),
(93, 99, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '1000', '', 'time', '2', 0, '2014-05-11 20:35:34', '2014-05-09 20:35:34'),
(94, 100, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '10000', '', 'time', '4', 0, '2014-05-11 20:35:34', '2014-05-07 20:35:34'),
(95, 101, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50000', '', 'time', '8', 0, '2014-05-11 20:35:34', '2014-05-03 20:35:34'),
(96, 102, 'sql', 'SELECT id_cms FROM PREFIX_cms WHERE id_cms > 5', '>', '0', '', 'hook', 'actionObjectCMSAddAfter', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(98, 104, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '10', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(99, 105, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '100', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(104, 110, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(107, 114, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '5000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(108, 112, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(109, 165, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '0', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(110, 166, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '1', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(112, 168, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '9', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-11 20:35:35', '2014-05-11 20:35:35'),
(114, 170, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '49', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-11 20:35:36', '2014-05-11 20:35:36'),
(119, 17, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '2', '', 'hook', 'actionObjectContactAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(120, 12, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(121, 13, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-05-13 19:42:56', '2014-05-13 19:42:56'),
(122, 38, 'install', '', '>=', '182', '', 'time', '2', 0, '2014-05-13 19:42:57', '2014-05-13 19:43:28'),
(123, 70, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100000', '0', 'time', '8', 0, '2014-05-13 19:42:58', '2014-05-13 19:43:28'),
(124, 59, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(125, 60, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-13 19:42:58', '2014-05-13 19:42:58'),
(126, 61, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(127, 62, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1000', '0', 'time', '1', 0, '2014-05-13 19:42:59', '2014-05-13 19:43:29'),
(128, 82, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"AF",\r\n"BD",\r\n"BT",\r\n"IN",\r\n"IO",\r\n"LK",\r\n"MV",\r\n"NP",\r\n"PK"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(129, 86, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BZ",\r\n"CR",\r\n"GT",\r\n"HN",\r\n"MX",\r\n"NI",\r\n"PA",\r\n"SV",\r\n"AG",\r\n"AI",\r\n"AN",\r\n"AW",\r\n"BB",\r\n"BM",\r\n"BS",\r\n"CU",\r\n"DM",\r\n"DO",\r\n"GD",\r\n"GP",\r\n"HT",\r\n"JM",\r\n"KN",\r\n"KY",\r\n"LC",\r\n"MQ",\r\n"MS",\r\n"PR",\r\n"TC",\r\n"TT",\r\n"VC",\r\n"VG",\r\n"VI",\r\n"AR",\r\n"BO",\r\n"BR",\r\n"CL",\r\n"CO",\r\n"EC",\r\n"FK",\r\n"GF",\r\n"GY",\r\n"PE",\r\n"PY",\r\n"SR",\r\n"UY",\r\n"VE"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(130, 87, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BE",\r\n"DE",\r\n"FR",\r\n"FX",\r\n"GB",\r\n"IE",\r\n"LU",\r\n"MC",\r\n"NL",\r\n"IT",\r\n"MT",\r\n"SM",\r\n"VA",\r\n"AD",\r\n"ES",\r\n"GI",\r\n"PT",\r\n"BY",\r\n"EE",\r\n"LT",\r\n"LV",\r\n"MD",\r\n"PL",\r\n"UA",\r\n"AL",\r\n"BA",\r\n"BG",\r\n"GR",\r\n"HR",\r\n"MK",\r\n"RO",\r\n"SI",\r\n"YU",\r\n"RU",\r\n"AT",\r\n"CH",\r\n"CZ",\r\n"HU",\r\n"LI",\r\n"SK",\r\n"DK",\r\n"FI",\r\n"FO",\r\n"IS",\r\n"NO",\r\n"SE",\r\n"SJ"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(131, 88, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BI",\r\n"CF",\r\n"CG",\r\n"RW",\r\n"TD",\r\n"ZR",\r\n"DJ",\r\n"ER",\r\n"ET",\r\n"KE",\r\n"SO",\r\n"TZ",\r\n"UG",\r\n"KM",\r\n"MG",\r\n"MU",\r\n"RE",\r\n"SC",\r\n"YT",\r\n"AO",\r\n"BW",\r\n"LS",\r\n"MW",\r\n"MZ",\r\n"NA",\r\n"SZ",\r\n"ZA",\r\n"ZM",\r\n"ZW",\r\n"BF",\r\n"BJ",\r\n"CI",\r\n"CM",\r\n"CV",\r\n"GA",\r\n"GH",\r\n"GM",\r\n"GN",\r\n"GQ",\r\n"GW",\r\n"LR",\r\n"ML",\r\n"MR",\r\n"NE",\r\n"NG",\r\n"SL",\r\n"SN",\r\n"ST",\r\n"TG"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(132, 90, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '2', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(133, 91, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '3', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-05-13 19:42:59', '2014-05-13 19:42:59'),
(134, 96, 'sql', 'SELECT id_image FROM PREFIX_image WHERE id_image > 26', '>', '0', '', 'hook', 'actionObjectImageAddAfter', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:00'),
(135, 99, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '1000', '23', 'time', '2', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:29'),
(136, 100, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '10000', '23', 'time', '4', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:29'),
(137, 101, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50000', '23', 'time', '8', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:29'),
(138, 102, 'sql', 'SELECT id_cms FROM PREFIX_cms WHERE id_cms > 5', '>', '0', '', 'hook', 'actionObjectCMSAddAfter', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:00'),
(139, 104, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '10', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:00'),
(140, 105, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '100', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:00'),
(141, 110, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:43:00', '2014-05-13 19:43:00'),
(142, 114, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '5000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01'),
(143, 112, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01'),
(144, 165, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '0', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01'),
(145, 166, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '1', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01'),
(146, 168, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '9', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01'),
(147, 170, 'sql', 'SELECT COUNT(s.`id_store`) FROM PREFIX_store s WHERE `latitude` NOT IN (''25.76500500'', ''26.13793600'', ''26.00998700'', ''25.73629600'', ''25.88674000'') AND `longitude` NOT IN (''-80.24379700'', ''-80.13943500'', ''-80.29447200'', ''-80.24479700'', ''-80.16329200'')', '>', '49', '', 'hook', 'actionAdminStoresControllerSaveAfter', 0, '2014-05-13 19:43:01', '2014-05-13 19:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition_advice`
--

CREATE TABLE IF NOT EXISTS `ps_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_condition`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition_badge`
--

CREATE TABLE IF NOT EXISTS `ps_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL,
  PRIMARY KEY (`id_condition`,`id_badge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_condition_badge`
--

INSERT INTO `ps_condition_badge` (`id_condition`, `id_badge`) VALUES
(0, 84),
(0, 86),
(0, 97),
(0, 108),
(0, 109),
(0, 114),
(0, 115),
(0, 117),
(0, 120),
(0, 121),
(0, 122),
(0, 123),
(0, 125),
(0, 126),
(3, 17),
(4, 38),
(4, 99),
(5, 1),
(6, 2),
(6, 81),
(7, 2),
(7, 81),
(8, 2),
(8, 81),
(9, 3),
(10, 4),
(10, 82),
(11, 5),
(12, 6),
(12, 83),
(13, 7),
(14, 8),
(15, 9),
(16, 10),
(16, 85),
(17, 11),
(18, 12),
(19, 13),
(20, 14),
(21, 15),
(22, 16),
(22, 88),
(23, 18),
(23, 89),
(24, 19),
(25, 20),
(25, 90),
(26, 21),
(27, 22),
(27, 91),
(28, 23),
(29, 24),
(29, 92),
(30, 25),
(31, 26),
(31, 93),
(32, 27),
(33, 28),
(33, 94),
(34, 29),
(35, 30),
(35, 95),
(36, 31),
(37, 32),
(37, 96),
(38, 33),
(39, 34),
(40, 35),
(41, 36),
(42, 37),
(43, 39),
(44, 40),
(44, 100),
(45, 41),
(46, 42),
(46, 101),
(47, 43),
(48, 44),
(48, 102),
(49, 45),
(50, 46),
(50, 103),
(51, 47),
(52, 48),
(52, 104),
(53, 49),
(54, 50),
(54, 105),
(55, 51),
(56, 52),
(56, 106),
(57, 53),
(58, 54),
(58, 107),
(59, 55),
(60, 56),
(61, 57),
(62, 58),
(63, 59),
(64, 60),
(64, 110),
(65, 61),
(66, 62),
(67, 63),
(68, 64),
(69, 65),
(70, 66),
(71, 67),
(72, 68),
(73, 69),
(74, 70),
(75, 71),
(76, 72),
(77, 73),
(78, 74),
(79, 75),
(80, 76),
(81, 77),
(82, 78),
(83, 79),
(121, 87),
(122, 98),
(123, 111),
(125, 112),
(127, 113),
(129, 116),
(132, 118),
(133, 119),
(134, 124),
(135, 127),
(136, 128),
(137, 129),
(138, 130);

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration`
--

CREATE TABLE IF NOT EXISTS `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=363 ;

--
-- Dumping data for table `ps_configuration`
--

INSERT INTO `ps_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'PS_LANG_DEFAULT', '1', '2014-05-11 20:15:13', '2014-05-11 20:15:13'),
(2, NULL, NULL, 'PS_VERSION_DB', '1.6.0.6', '2014-05-11 20:15:13', '2014-05-11 20:15:13'),
(3, NULL, NULL, 'PS_CARRIER_DEFAULT', '1', '2014-05-11 20:15:37', '2014-05-11 20:15:37'),
(4, NULL, NULL, 'PS_GROUP_FEATURE_ACTIVE', '1', '2014-05-11 20:15:37', '2014-05-11 20:15:37'),
(5, NULL, NULL, 'PS_SEARCH_INDEXATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, NULL, NULL, 'PS_ONE_PHONE_AT_LEAST', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, NULL, NULL, 'PS_CURRENCY_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, NULL, NULL, 'PS_COUNTRY_DEFAULT', '111', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(9, NULL, NULL, 'PS_REWRITING_SETTINGS', '1', '0000-00-00 00:00:00', '2014-05-11 20:16:08'),
(10, NULL, NULL, 'PS_ORDER_OUT_OF_STOCK', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, NULL, NULL, 'PS_LAST_QTIES', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, NULL, NULL, 'PS_CART_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, NULL, NULL, 'PS_HELPBOX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, NULL, NULL, 'PS_CONDITIONS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, NULL, NULL, 'PS_RECYCLABLE_PACK', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, NULL, NULL, 'PS_GIFT_WRAPPING', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, NULL, NULL, 'PS_GIFT_WRAPPING_PRICE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, NULL, NULL, 'PS_STOCK_MANAGEMENT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, NULL, NULL, 'PS_NAVIGATION_PIPE', '>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, NULL, NULL, 'PS_PRODUCTS_PER_PAGE', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, NULL, NULL, 'PS_PURCHASE_MINIMUM', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, NULL, NULL, 'PS_PRODUCTS_ORDER_WAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, NULL, NULL, 'PS_PRODUCTS_ORDER_BY', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, NULL, NULL, 'PS_DISPLAY_QTIES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, NULL, NULL, 'PS_SHIPPING_HANDLING', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, NULL, NULL, 'PS_SHIPPING_FREE_PRICE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, NULL, NULL, 'PS_SHIPPING_FREE_WEIGHT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, NULL, NULL, 'PS_SHIPPING_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, NULL, NULL, 'PS_TAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, NULL, NULL, 'PS_SHOP_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, NULL, NULL, 'PS_NB_DAYS_NEW_PRODUCT', '20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, NULL, NULL, 'PS_SSL_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, NULL, NULL, 'PS_WEIGHT_UNIT', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, NULL, NULL, 'PS_BLOCK_CART_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, NULL, NULL, 'PS_ORDER_RETURN', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, NULL, NULL, 'PS_ORDER_RETURN_NB_DAYS', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, NULL, NULL, 'PS_MAIL_TYPE', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, NULL, NULL, 'PS_PRODUCT_PICTURE_MAX_SIZE', '8388608', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, NULL, NULL, 'PS_PRODUCT_PICTURE_WIDTH', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, NULL, NULL, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, NULL, NULL, 'PS_INVOICE_PREFIX', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, NULL, NULL, 'PS_INVOICE_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, NULL, NULL, 'PS_DELIVERY_PREFIX', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, NULL, NULL, 'PS_DELIVERY_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, NULL, NULL, 'PS_INVOICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, NULL, NULL, 'PS_PASSWD_TIME_BACK', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, NULL, NULL, 'PS_PASSWD_TIME_FRONT', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, NULL, NULL, 'PS_DISP_UNAVAILABLE_ATTR', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, NULL, NULL, 'PS_SEARCH_MINWORDLEN', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, NULL, NULL, 'PS_SEARCH_BLACKLIST', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, NULL, NULL, 'PS_SEARCH_WEIGHT_PNAME', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, NULL, NULL, 'PS_SEARCH_WEIGHT_REF', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, NULL, NULL, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, NULL, NULL, 'PS_SEARCH_WEIGHT_DESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, NULL, NULL, 'PS_SEARCH_WEIGHT_CNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, NULL, NULL, 'PS_SEARCH_WEIGHT_MNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, NULL, NULL, 'PS_SEARCH_WEIGHT_TAG', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, NULL, NULL, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, NULL, NULL, 'PS_SEARCH_WEIGHT_FEATURE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, NULL, NULL, 'PS_SEARCH_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, NULL, NULL, 'PS_TIMEZONE', 'Asia/Jakarta', '0000-00-00 00:00:00', '2014-05-11 20:16:08'),
(62, NULL, NULL, 'PS_THEME_V11', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, NULL, NULL, 'PRESTASTORE_LIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, NULL, NULL, 'PS_TIN_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, NULL, NULL, 'PS_SHOW_ALL_MODULES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, NULL, NULL, 'PS_BACKUP_ALL', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, NULL, NULL, 'PS_1_3_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, NULL, NULL, 'PS_PRICE_ROUND_MODE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, NULL, NULL, 'PS_1_3_2_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, NULL, NULL, 'PS_CONDITIONS_CMS_ID', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, NULL, NULL, 'TRACKING_DIRECT_TRAFFIC', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, NULL, NULL, 'PS_META_KEYWORDS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, NULL, NULL, 'PS_DISPLAY_JQZOOM', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, NULL, NULL, 'PS_VOLUME_UNIT', 'L', '0000-00-00 00:00:00', '2014-05-11 20:16:12'),
(75, NULL, NULL, 'PS_CIPHER_ALGORITHM', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, NULL, NULL, 'PS_ATTRIBUTE_CATEGORY_DISPLAY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, NULL, NULL, 'PS_CUSTOMER_SERVICE_FILE_UPLOAD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, NULL, NULL, 'PS_CUSTOMER_SERVICE_SIGNATURE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, NULL, NULL, 'PS_BLOCK_BESTSELLERS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, NULL, NULL, 'PS_BLOCK_NEWPRODUCTS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, NULL, NULL, 'PS_BLOCK_SPECIALS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, NULL, NULL, 'PS_STOCK_MVT_REASON_DEFAULT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, NULL, NULL, 'PS_COMPARATOR_MAX_ITEM', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, NULL, NULL, 'PS_ORDER_PROCESS_TYPE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, NULL, NULL, 'PS_SPECIFIC_PRICE_PRIORITIES', 'id_shop;id_currency;id_country;id_group', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, NULL, NULL, 'PS_TAX_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, NULL, NULL, 'PS_SMARTY_FORCE_COMPILE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, NULL, NULL, 'PS_DISTANCE_UNIT', 'km', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, NULL, NULL, 'PS_STORES_DISPLAY_CMS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, NULL, NULL, 'PS_STORES_DISPLAY_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, NULL, NULL, 'PS_STORES_SIMPLIFIED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, NULL, NULL, 'SHOP_LOGO_WIDTH', '350', '0000-00-00 00:00:00', '2014-05-11 20:16:08'),
(93, NULL, NULL, 'SHOP_LOGO_HEIGHT', '99', '0000-00-00 00:00:00', '2014-05-11 20:16:08'),
(94, NULL, NULL, 'EDITORIAL_IMAGE_WIDTH', '530', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, NULL, NULL, 'EDITORIAL_IMAGE_HEIGHT', '228', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, NULL, NULL, 'PS_STATSDATA_CUSTOMER_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, NULL, NULL, 'PS_STATSDATA_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, NULL, NULL, 'PS_STATSDATA_PLUGINS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, NULL, NULL, 'PS_GEOLOCATION_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, NULL, NULL, 'PS_ALLOWED_COUNTRIES', 'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, NULL, NULL, 'PS_GEOLOCATION_BEHAVIOR', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, NULL, NULL, 'PS_LOCALE_LANGUAGE', 'en', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(103, NULL, NULL, 'PS_LOCALE_COUNTRY', 'id', '0000-00-00 00:00:00', '2014-05-11 20:16:08'),
(104, NULL, NULL, 'PS_ATTACHMENT_MAXIMUM_SIZE', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, NULL, NULL, 'PS_SMARTY_CACHE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, NULL, NULL, 'PS_DIMENSION_UNIT', 'cm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, NULL, NULL, 'PS_GUEST_CHECKOUT_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, NULL, NULL, 'PS_DISPLAY_SUPPLIERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, NULL, NULL, 'PS_CATALOG_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, NULL, NULL, 'PS_GEOLOCATION_WHITELIST', '127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, NULL, NULL, 'PS_LOGS_BY_EMAIL', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, NULL, NULL, 'PS_COOKIE_CHECKIP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, NULL, NULL, 'PS_STORES_CENTER_LAT', '25.948969', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, NULL, NULL, 'PS_STORES_CENTER_LONG', '-80.226439', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, NULL, NULL, 'PS_USE_ECOTAX', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, NULL, NULL, 'PS_CANONICAL_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, NULL, NULL, 'PS_IMG_UPDATE_TIME', '1324977642', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, NULL, NULL, 'PS_BACKUP_DROP_TABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, NULL, NULL, 'PS_OS_CHEQUE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, NULL, NULL, 'PS_OS_PAYMENT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, NULL, NULL, 'PS_OS_PREPARATION', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, NULL, NULL, 'PS_OS_SHIPPING', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, NULL, NULL, 'PS_OS_DELIVERED', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, NULL, NULL, 'PS_OS_CANCELED', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, NULL, NULL, 'PS_OS_REFUND', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, NULL, NULL, 'PS_OS_ERROR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, NULL, NULL, 'PS_OS_OUTOFSTOCK', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, NULL, NULL, 'PS_OS_BANKWIRE', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, NULL, NULL, 'PS_OS_PAYPAL', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, NULL, NULL, 'PS_OS_WS_PAYMENT', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, NULL, NULL, 'PS_LEGACY_IMAGES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, NULL, NULL, 'PS_IMAGE_QUALITY', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, NULL, NULL, 'PS_PNG_QUALITY', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, NULL, NULL, 'PS_JPEG_QUALITY', '90', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, NULL, NULL, 'PS_COOKIE_LIFETIME_FO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, NULL, NULL, 'PS_COOKIE_LIFETIME_BO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, NULL, NULL, 'PS_RESTRICT_DELIVERED_COUNTRIES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, NULL, NULL, 'PS_SHOW_NEW_ORDERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, NULL, NULL, 'PS_SHOW_NEW_CUSTOMERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, NULL, NULL, 'PS_SHOW_NEW_MESSAGES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, NULL, NULL, 'PS_FEATURE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, NULL, NULL, 'PS_COMBINATION_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, NULL, NULL, 'PS_SPECIFIC_PRICE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, NULL, NULL, 'PS_SCENE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, NULL, NULL, 'PS_VIRTUAL_PROD_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, NULL, NULL, 'PS_CUSTOMIZATION_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, NULL, NULL, 'PS_CART_RULE_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, NULL, NULL, 'PS_PACK_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, NULL, NULL, 'PS_ALIAS_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, NULL, NULL, 'PS_TAX_ADDRESS_TYPE', 'id_address_delivery', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, NULL, NULL, 'PS_SHOP_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, NULL, NULL, 'PS_CARRIER_DEFAULT_SORT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, NULL, NULL, 'PS_STOCK_MVT_INC_REASON_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, NULL, NULL, 'PS_STOCK_MVT_DEC_REASON_DEFAULT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, NULL, NULL, 'PS_ADVANCED_STOCK_MANAGEMENT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, NULL, NULL, 'PS_ADMINREFRESH_NOTIFICATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_TO', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_FROM', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, NULL, NULL, 'PS_CARRIER_DEFAULT_ORDER', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, NULL, NULL, 'PS_STOCK_MVT_SUPPLY_ORDER', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, NULL, NULL, 'PS_STOCK_CUSTOMER_ORDER_REASON', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, NULL, NULL, 'PS_UNIDENTIFIED_GROUP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, NULL, NULL, 'PS_GUEST_GROUP', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, NULL, NULL, 'PS_CUSTOMER_GROUP', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, NULL, NULL, 'PS_SMARTY_CONSOLE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, NULL, NULL, 'PS_INVOICE_MODEL', 'invoice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, NULL, NULL, 'PS_LIMIT_UPLOAD_IMAGE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, NULL, NULL, 'PS_LIMIT_UPLOAD_FILE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, NULL, NULL, 'MB_PAY_TO_EMAIL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, NULL, NULL, 'MB_SECRET_WORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, NULL, NULL, 'MB_HIDE_LOGIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, NULL, NULL, 'MB_ID_LOGO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, NULL, NULL, 'MB_ID_LOGO_WALLET', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, NULL, NULL, 'MB_PARAMETERS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, NULL, NULL, 'MB_PARAMETERS_2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, NULL, NULL, 'MB_DISPLAY_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, NULL, NULL, 'MB_CANCEL_URL', 'http://www.yoursite.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, NULL, NULL, 'MB_LOCAL_METHODS', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, NULL, NULL, 'MB_INTER_METHODS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, NULL, NULL, 'BANK_WIRE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, NULL, NULL, 'CHEQUE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, NULL, NULL, 'PRODUCTS_VIEWED_NBR', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, NULL, NULL, 'BLOCK_CATEG_DHTML', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, NULL, NULL, 'BLOCK_CATEG_MAX_DEPTH', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, NULL, NULL, 'MANUFACTURER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(186, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(187, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, NULL, NULL, 'NEW_PRODUCTS_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, NULL, NULL, 'PS_TOKEN_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, NULL, NULL, 'PS_STATS_RENDER', 'graphnvd3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, NULL, NULL, 'PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, NULL, NULL, 'PS_STATS_GRID_RENDER', 'gridhtml', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, NULL, NULL, 'BLOCKTAGS_NBR', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, NULL, NULL, 'CHECKUP_DESCRIPTIONS_LT', '100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, NULL, NULL, 'CHECKUP_DESCRIPTIONS_GT', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, NULL, NULL, 'CHECKUP_IMAGES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, NULL, NULL, 'CHECKUP_IMAGES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, NULL, NULL, 'CHECKUP_SALES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, NULL, NULL, 'CHECKUP_SALES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, NULL, NULL, 'CHECKUP_STOCK_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, NULL, NULL, 'CHECKUP_STOCK_GT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, NULL, NULL, 'FOOTER_CMS', '0_3|0_4', '0000-00-00 00:00:00', '2014-05-11 20:19:08'),
(203, NULL, NULL, 'FOOTER_BLOCK_ACTIVATION', '0_3|0_4', '0000-00-00 00:00:00', '2014-05-11 20:19:08'),
(204, NULL, NULL, 'FOOTER_POWEREDBY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, NULL, NULL, 'BLOCKADVERT_LINK', 'http://www.prestashop.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, NULL, NULL, 'BLOCKSTORE_IMG', 'store.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, NULL, NULL, 'BLOCKADVERT_IMG_EXT', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, NULL, NULL, 'MOD_BLOCKTOPMENU_ITEMS', 'CAT3,CAT8,CAT5,LNK1', '0000-00-00 00:00:00', '2014-05-11 20:19:20'),
(209, NULL, NULL, 'MOD_BLOCKTOPMENU_SEARCH', '0', '0000-00-00 00:00:00', '2014-05-11 20:19:20'),
(210, NULL, NULL, 'BLOCKSOCIAL_FACEBOOK', 'http://www.facebook.com/prestashop', '0000-00-00 00:00:00', '2014-05-11 20:18:37'),
(211, NULL, NULL, 'BLOCKSOCIAL_TWITTER', 'http://www.twitter.com/prestashop', '0000-00-00 00:00:00', '2014-05-11 20:18:37'),
(212, NULL, NULL, 'BLOCKSOCIAL_RSS', 'http://www.prestashop.com/blog/en/feed/', '0000-00-00 00:00:00', '2014-05-11 20:18:37'),
(213, NULL, NULL, 'BLOCKCONTACTINFOS_COMPANY', 'My Company', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(214, NULL, NULL, 'BLOCKCONTACTINFOS_ADDRESS', '42 avenue des Champs Elysées\n75000 Paris\nFrance', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(215, NULL, NULL, 'BLOCKCONTACTINFOS_PHONE', '0123-456-789', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(216, NULL, NULL, 'BLOCKCONTACTINFOS_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(217, NULL, NULL, 'BLOCKCONTACT_TELNUMBER', '0123-456-789', '0000-00-00 00:00:00', '2014-05-11 20:19:13'),
(218, NULL, NULL, 'BLOCKCONTACT_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-05-11 20:19:14'),
(219, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-05-11 20:19:19'),
(220, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, NULL, NULL, 'SUPPLIER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-05-11 20:19:19'),
(222, NULL, NULL, 'BLOCK_CATEG_NBR_COLUMN_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, NULL, NULL, 'UPGRADER_BACKUPDB_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, NULL, NULL, 'UPGRADER_BACKUPFILES_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, NULL, NULL, 'BLOCKREINSURANCE_NBBLOCKS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, NULL, NULL, 'HOMESLIDER_WIDTH', '779', '0000-00-00 00:00:00', '2014-05-11 20:19:31'),
(227, NULL, NULL, 'HOMESLIDER_HEIGHT', '300', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, NULL, NULL, 'HOMESLIDER_SPEED', '500', '0000-00-00 00:00:00', '2014-05-11 20:19:31'),
(229, NULL, NULL, 'HOMESLIDER_PAUSE', '3000', '0000-00-00 00:00:00', '2014-05-11 20:19:31'),
(230, NULL, NULL, 'HOMESLIDER_LOOP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, NULL, NULL, 'PS_BASE_DISTANCE_UNIT', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, NULL, NULL, 'PS_SHOP_DOMAIN', 'localhost:8080', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(233, NULL, NULL, 'PS_SHOP_DOMAIN_SSL', 'localhost:8080', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(234, NULL, NULL, 'PS_INSTALL_VERSION', '1.6.0.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, NULL, NULL, 'PS_SHOP_NAME', 'Action Figure', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(236, NULL, NULL, 'PS_SHOP_EMAIL', 'tantanium@live.co.uk', '0000-00-00 00:00:00', '2014-05-11 20:17:09'),
(237, NULL, NULL, 'PS_MAIL_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, NULL, NULL, 'PS_SHOP_ACTIVITY', '0', '0000-00-00 00:00:00', '2014-05-11 20:16:07'),
(239, NULL, NULL, 'PS_LOGO', 'logo.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, NULL, NULL, 'PS_FAVICON', 'favicon.ico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, NULL, NULL, 'PS_STORES_ICON', 'logo_stores.gif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, NULL, NULL, 'PS_ROOT_CATEGORY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, NULL, NULL, 'PS_HOME_CATEGORY', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, NULL, NULL, 'PS_CONFIGURATION_AGREMENT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, NULL, NULL, 'PS_MAIL_SERVER', 'smtp.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, NULL, NULL, 'PS_MAIL_USER', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, NULL, NULL, 'PS_MAIL_PASSWD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, NULL, NULL, 'PS_MAIL_SMTP_ENCRYPTION', 'off', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, NULL, NULL, 'PS_MAIL_SMTP_PORT', '25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, NULL, NULL, 'PS_MAIL_COLOR', '#db3484', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, NULL, NULL, 'NW_SALT', 'YsWheQ5j2rE6mR7J', '0000-00-00 00:00:00', '2014-05-11 20:19:17'),
(252, NULL, NULL, 'PS_PAYMENT_LOGO_CMS_ID', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, NULL, NULL, 'HOME_FEATURED_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, NULL, NULL, 'SEK_MIN_OCCURENCES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, NULL, NULL, 'SEK_FILTER_KW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, NULL, NULL, 'PS_ALLOW_MOBILE_DEVICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, NULL, NULL, 'PS_CUSTOMER_CREATION_EMAIL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, NULL, NULL, 'PS_SMARTY_CONSOLE_KEY', 'SMARTY_DEBUG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, NULL, NULL, 'PS_DASHBOARD_USE_PUSH', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, NULL, NULL, 'PS_ATTRIBUTE_ANCHOR_SEPARATOR', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, NULL, NULL, 'CONF_AVERAGE_PRODUCT_MARGIN', '40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, NULL, NULL, 'PS_DASHBOARD_SIMULATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, NULL, NULL, 'PS_QUICK_VIEW', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, NULL, NULL, 'PS_SC_TWITTER', '1', '2014-05-11 20:18:31', '2014-05-11 20:18:31'),
(265, NULL, NULL, 'PS_SC_FACEBOOK', '1', '2014-05-11 20:18:31', '2014-05-11 20:18:31'),
(266, NULL, NULL, 'PS_SC_GOOGLE', '1', '2014-05-11 20:18:32', '2014-05-11 20:18:32'),
(267, NULL, NULL, 'PS_SC_PINTEREST', '1', '2014-05-11 20:18:32', '2014-05-11 20:18:32'),
(268, NULL, NULL, 'BLOCKBANNER_IMG', NULL, '2014-05-11 20:18:34', '2014-05-11 20:18:34'),
(269, NULL, NULL, 'BLOCKBANNER_LINK', NULL, '2014-05-11 20:18:34', '2014-05-11 20:18:34'),
(270, NULL, NULL, 'BLOCKBANNER_DESC', NULL, '2014-05-11 20:18:34', '2014-05-11 20:18:34'),
(271, NULL, NULL, 'CONF_BANKWIRE_FIXED', '0.2', '2014-05-11 20:18:35', '2014-05-11 20:18:35'),
(272, NULL, NULL, 'CONF_BANKWIRE_VAR', '2', '2014-05-11 20:18:35', '2014-05-11 20:18:35'),
(273, NULL, NULL, 'CONF_BANKWIRE_FIXED_FOREIGN', '0.2', '2014-05-11 20:18:35', '2014-05-11 20:18:35'),
(274, NULL, NULL, 'CONF_BANKWIRE_VAR_FOREIGN', '2', '2014-05-11 20:18:35', '2014-05-11 20:18:35'),
(275, NULL, NULL, 'PS_BLOCK_CART_XSELL_LIMIT', '12', '2014-05-11 20:18:37', '2014-05-11 20:18:37'),
(276, NULL, NULL, 'BLOCKSOCIAL_YOUTUBE', NULL, '2014-05-11 20:18:38', '2014-05-11 20:18:38'),
(277, NULL, NULL, 'BLOCKSOCIAL_GOOGLE_PLUS', NULL, '2014-05-11 20:18:38', '2014-05-11 20:18:38'),
(278, NULL, NULL, 'BLOCKSOCIAL_PINTEREST', NULL, '2014-05-11 20:18:38', '2014-05-11 20:18:38'),
(279, NULL, NULL, 'BLOCK_CATEG_ROOT_CATEGORY', '1', '2014-05-11 20:18:39', '2014-05-11 20:18:39'),
(280, NULL, NULL, 'blockfacebook_url', 'https://www.facebook.com/prestashop', '2014-05-11 20:18:39', '2014-05-11 20:18:39'),
(281, NULL, NULL, 'PS_LAYERED_HIDE_0_VALUES', '1', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(282, NULL, NULL, 'PS_LAYERED_SHOW_QTIES', '1', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(283, NULL, NULL, 'PS_LAYERED_FULL_TREE', '1', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(284, NULL, NULL, 'PS_LAYERED_FILTER_PRICE_USETAX', '1', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(285, NULL, NULL, 'PS_LAYERED_FILTER_CATEGORY_DEPTH', '1', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(286, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_QTY', '0', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(287, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CDT', '0', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(288, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_MNF', '0', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(289, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CAT', '0', '2014-05-11 20:18:41', '2014-05-11 20:18:41'),
(290, NULL, NULL, 'PS_LAYERED_INDEXED', '1', '2014-05-11 20:18:56', '2014-05-11 20:18:56'),
(291, NULL, NULL, 'FOOTER_PRICE-DROP', '1', '2014-05-11 20:19:08', '2014-05-11 20:19:08'),
(292, NULL, NULL, 'FOOTER_NEW-PRODUCTS', '1', '2014-05-11 20:19:08', '2014-05-11 20:19:08'),
(293, NULL, NULL, 'FOOTER_BEST-SALES', '1', '2014-05-11 20:19:08', '2014-05-11 20:19:08'),
(294, NULL, NULL, 'FOOTER_CONTACT', '1', '2014-05-11 20:19:08', '2014-05-11 20:19:08'),
(295, NULL, NULL, 'FOOTER_SITEMAP', '1', '2014-05-11 20:19:08', '2014-05-11 20:19:08'),
(296, NULL, NULL, 'BLOCKCMSINFO_NBBLOCKS', '2', '2014-05-11 20:19:12', '2014-05-11 20:19:12'),
(297, NULL, NULL, 'BLOCKSPECIALS_NB_CACHES', '20', '2014-05-11 20:19:18', '2014-05-11 20:19:18'),
(298, NULL, NULL, 'CONF_CHEQUE_FIXED', '0.2', '2014-05-11 20:19:25', '2014-05-11 20:19:25'),
(299, NULL, NULL, 'CONF_CHEQUE_VAR', '2', '2014-05-11 20:19:25', '2014-05-11 20:19:25'),
(300, NULL, NULL, 'CONF_CHEQUE_FIXED_FOREIGN', '0.2', '2014-05-11 20:19:25', '2014-05-11 20:19:25'),
(301, NULL, NULL, 'CONF_CHEQUE_VAR_FOREIGN', '2', '2014-05-11 20:19:25', '2014-05-11 20:19:25'),
(302, NULL, NULL, 'DASHACTIVITY_CART_ACTIVE', '30', '2014-05-11 20:19:25', '2014-05-11 20:19:25'),
(303, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MIN', '24', '2014-05-11 20:19:26', '2014-05-11 20:19:26'),
(304, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MAX', '48', '2014-05-11 20:19:26', '2014-05-11 20:19:26'),
(305, NULL, NULL, 'DASHACTIVITY_VISITOR_ONLINE', '30', '2014-05-11 20:19:26', '2014-05-11 20:19:26'),
(306, NULL, NULL, 'PS_DASHGOALS_CURRENT_YEAR', '2014', '2014-05-11 20:19:27', '2014-05-11 20:19:27'),
(307, NULL, NULL, 'DASHGOALS_TRAFFIC_01_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(308, NULL, NULL, 'DASHGOALS_CONVERSION_01_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(309, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_01_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(310, NULL, NULL, 'DASHGOALS_TRAFFIC_02_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(311, NULL, NULL, 'DASHGOALS_CONVERSION_02_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(312, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_02_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(313, NULL, NULL, 'DASHGOALS_TRAFFIC_03_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(314, NULL, NULL, 'DASHGOALS_CONVERSION_03_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(315, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_03_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(316, NULL, NULL, 'DASHGOALS_TRAFFIC_04_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(317, NULL, NULL, 'DASHGOALS_CONVERSION_04_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(318, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_04_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(319, NULL, NULL, 'DASHGOALS_TRAFFIC_05_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(320, NULL, NULL, 'DASHGOALS_CONVERSION_05_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(321, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_05_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(322, NULL, NULL, 'DASHGOALS_TRAFFIC_06_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(323, NULL, NULL, 'DASHGOALS_CONVERSION_06_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(324, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_06_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(325, NULL, NULL, 'DASHGOALS_TRAFFIC_07_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(326, NULL, NULL, 'DASHGOALS_CONVERSION_07_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(327, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_07_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(328, NULL, NULL, 'DASHGOALS_TRAFFIC_08_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(329, NULL, NULL, 'DASHGOALS_CONVERSION_08_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(330, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_08_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(331, NULL, NULL, 'DASHGOALS_TRAFFIC_09_2014', '600', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(332, NULL, NULL, 'DASHGOALS_CONVERSION_09_2014', '2', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(333, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_09_2014', '80', '2014-05-11 20:19:28', '2014-05-11 20:19:28'),
(334, NULL, NULL, 'DASHGOALS_TRAFFIC_10_2014', '600', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(335, NULL, NULL, 'DASHGOALS_CONVERSION_10_2014', '2', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(336, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_10_2014', '80', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(337, NULL, NULL, 'DASHGOALS_TRAFFIC_11_2014', '600', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(338, NULL, NULL, 'DASHGOALS_CONVERSION_11_2014', '2', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(339, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_11_2014', '80', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(340, NULL, NULL, 'DASHGOALS_TRAFFIC_12_2014', '600', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(341, NULL, NULL, 'DASHGOALS_CONVERSION_12_2014', '2', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(342, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_12_2014', '80', '2014-05-11 20:19:29', '2014-05-11 20:19:29'),
(343, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_LAST_ORDER', '10', '2014-05-11 20:19:30', '2014-05-11 20:19:30'),
(344, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_BEST_SELLER', '10', '2014-05-11 20:19:30', '2014-05-11 20:19:30'),
(345, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_MOST_VIEWED', '10', '2014-05-11 20:19:30', '2014-05-11 20:19:30'),
(346, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_TOP_SEARCH', '10', '2014-05-11 20:19:30', '2014-05-11 20:19:30'),
(347, NULL, NULL, 'PRODUCTPAYMENTLOGOS_IMG', 'payment-logo.png', '2014-05-11 20:19:35', '2014-05-11 20:19:35'),
(348, NULL, NULL, 'PRODUCTPAYMENTLOGOS_LINK', NULL, '2014-05-11 20:19:35', '2014-05-11 20:19:35'),
(349, NULL, NULL, 'PRODUCTPAYMENTLOGOS_TITLE', NULL, '2014-05-11 20:19:35', '2014-05-11 20:19:35'),
(350, NULL, NULL, 'PS_TC_THEMES', 'a:9:{i:0;s:6:"theme1";i:1;s:6:"theme2";i:2;s:6:"theme3";i:3;s:6:"theme4";i:4;s:6:"theme5";i:5;s:6:"theme6";i:6;s:6:"theme7";i:7;s:6:"theme8";i:8;s:6:"theme9";}', '2014-05-11 20:19:46', '2014-05-11 20:19:46'),
(351, NULL, NULL, 'PS_TC_FONTS', 'a:10:{s:5:"font1";s:9:"Open Sans";s:5:"font2";s:12:"Josefin Slab";s:5:"font3";s:4:"Arvo";s:5:"font4";s:4:"Lato";s:5:"font5";s:7:"Volkorn";s:5:"font6";s:13:"Abril Fatface";s:5:"font7";s:6:"Ubuntu";s:5:"font8";s:7:"PT Sans";s:5:"font9";s:15:"Old Standard TT";s:6:"font10";s:10:"Droid Sans";}', '2014-05-11 20:19:46', '2014-05-11 20:19:46'),
(352, NULL, NULL, 'PS_TC_THEME', NULL, '2014-05-11 20:19:46', '2014-05-11 20:19:46'),
(353, NULL, NULL, 'PS_TC_FONT', NULL, '2014-05-11 20:19:46', '2014-05-11 20:19:46'),
(354, NULL, NULL, 'PS_TC_ACTIVE', '1', '2014-05-11 20:19:46', '2014-05-11 20:19:46'),
(355, NULL, NULL, 'GF_INSTALL_CALC', '1', '2014-05-11 20:20:28', '2014-05-11 20:33:45'),
(356, NULL, NULL, 'GF_CURRENT_LEVEL', '1', '2014-05-11 20:20:28', '2014-05-11 20:20:28'),
(357, NULL, NULL, 'GF_CURRENT_LEVEL_PERCENT', '5', '2014-05-11 20:20:28', '2014-05-11 20:36:04'),
(358, NULL, NULL, 'GF_NOTIFICATION', '0', '2014-05-11 20:20:28', '2014-05-11 20:36:43'),
(359, NULL, NULL, 'PRODUCT_COMMENTS_MINIMAL_TIME', '30', '2014-05-11 20:20:38', '2014-05-11 20:20:38'),
(360, NULL, NULL, 'PRODUCT_COMMENTS_ALLOW_GUESTS', '0', '2014-05-11 20:20:38', '2014-05-11 20:20:38'),
(361, NULL, NULL, 'PRODUCT_COMMENTS_MODERATE', '1', '2014-05-11 20:20:38', '2014-05-11 20:20:38'),
(362, NULL, NULL, 'GF_NOT_VIEWED_BADGE', '17', '2014-05-11 20:33:50', '2014-05-11 20:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration_kpi`
--

CREATE TABLE IF NOT EXISTS `ps_configuration_kpi` (
  `id_configuration_kpi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration_kpi`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ps_configuration_kpi`
--

INSERT INTO `ps_configuration_kpi` (`id_configuration_kpi`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'PERCENT_PRODUCT_STOCK', '86.67%', '2014-05-11 21:41:18', '2014-05-11 21:41:18'),
(2, NULL, NULL, 'DISABLED_PRODUCTS', '0', '2014-05-11 21:41:18', '2014-05-11 21:41:18'),
(3, NULL, NULL, '8020_SALES_CATALOG', '0% of your Catalog', '2014-05-11 21:41:18', '2014-05-11 21:41:18'),
(4, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN', '0%', '2014-05-11 21:41:18', '2014-05-11 21:41:18'),
(5, NULL, NULL, 'PERCENT_PRODUCT_STOCK_EXPIRE', '1399999367', '2014-05-11 21:41:18', '2014-05-13 19:42:47'),
(6, NULL, NULL, '8020_SALES_CATALOG_EXPIRE', '1400028167', '2014-05-11 21:41:18', '2014-05-13 19:42:47'),
(7, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN_EXPIRE', '1400006567', '2014-05-11 21:41:18', '2014-05-13 19:42:47'),
(8, NULL, NULL, 'DISABLED_PRODUCTS_EXPIRE', '1399992167', '2014-05-11 21:41:18', '2014-05-13 19:42:47'),
(9, NULL, NULL, 'DISABLED_CATEGORIES', '1', '2014-05-11 23:11:28', '2014-05-11 23:11:28'),
(10, NULL, NULL, 'DISABLED_CATEGORIES_EXPIRE', '1399994756', '2014-05-11 23:11:28', '2014-05-13 20:25:56'),
(11, NULL, NULL, 'PRODUCTS_PER_CATEGORY', '1', '2014-05-11 23:11:29', '2014-05-11 23:11:29'),
(12, NULL, NULL, 'PRODUCTS_PER_CATEGORY_EXPIRE', '1399991157', '2014-05-11 23:11:29', '2014-05-13 20:25:57'),
(13, NULL, NULL, 'EMPTY_CATEGORIES', '0', '2014-05-11 23:11:29', '2014-05-11 23:11:29'),
(14, NULL, NULL, 'EMPTY_CATEGORIES_EXPIRE', '1399994757', '2014-05-11 23:11:29', '2014-05-13 20:25:57'),
(15, NULL, NULL, 'TOP_CATEGORY', NULL, '2014-05-11 23:11:30', '2014-05-11 23:11:30'),
(16, NULL, NULL, 'TOP_CATEGORY_EXPIRE', NULL, '2014-05-11 23:11:30', '2014-05-11 23:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration_kpi_lang`
--

CREATE TABLE IF NOT EXISTS `ps_configuration_kpi_lang` (
  `id_configuration_kpi` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration_kpi`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_configuration_kpi_lang`
--

INSERT INTO `ps_configuration_kpi_lang` (`id_configuration_kpi`, `id_lang`, `value`, `date_upd`) VALUES
(15, 1, 'T-shirts', '2014-05-13 20:25:57'),
(16, 1, '1400073957', '2014-05-13 20:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration_lang`
--

CREATE TABLE IF NOT EXISTS `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_configuration_lang`
--

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(41, 1, 'IN', NULL),
(43, 1, 'DE', NULL),
(50, 1, 'a|the|of|on|in|and|to', NULL),
(72, 1, '0', NULL),
(78, 1, 'Dear Customer,\r\n\r\nRegards,\r\nCustomer service', NULL),
(268, 1, 'sale70.png', '2014-05-11 20:18:34'),
(268, 2, 'sale70.png', '2014-05-11 20:18:34'),
(269, 1, '', '2014-05-11 20:18:34'),
(269, 2, '', '2014-05-11 20:18:34'),
(270, 1, '', '2014-05-11 20:18:34'),
(270, 2, '', '2014-05-11 20:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections`
--

CREATE TABLE IF NOT EXISTS `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_connections`
--

INSERT INTO `ps_connections` (`id_connections`, `id_shop_group`, `id_shop`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`) VALUES
(1, 1, 1, 1, 1, 2130706433, '2014-05-11 20:17:53', 'http://www.prestashop.com'),
(2, 1, 1, 2, 1, 0, '2014-05-11 20:32:12', 'http://localhost:8080/prestashop/install/index.php'),
(3, 1, 1, 2, 1, 0, '2014-05-13 19:40:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections_page`
--

CREATE TABLE IF NOT EXISTS `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections_source`
--

CREATE TABLE IF NOT EXISTS `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_connections_source`
--

INSERT INTO `ps_connections_source` (`id_connections_source`, `id_connections`, `http_referer`, `request_uri`, `keywords`, `date_add`) VALUES
(1, 2, 'http://localhost:8080/prestashop/install/index.php', 'localhost:8080/prestashop/en/', '', '2014-05-11 20:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact`
--

CREATE TABLE IF NOT EXISTS `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_contact`
--

INSERT INTO `ps_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1, 'tantanium@live.co.uk', 1, 0),
(2, 'tantanium@live.co.uk', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact_lang`
--

CREATE TABLE IF NOT EXISTS `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_contact_lang`
--

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 2, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For any question about a product, an order'),
(2, 2, 'Customer service', 'For any question about a product, an order');

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact_shop`
--

CREATE TABLE IF NOT EXISTS `ps_contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_contact_shop`
--

INSERT INTO `ps_contact_shop` (`id_contact`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_country`
--

CREATE TABLE IF NOT EXISTS `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `ps_country`
--

INSERT INTO `ps_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1, 1, 0, 'DE', 49, 0, 0, 0, 1, 'NNNNN', 1),
(2, 1, 0, 'AT', 43, 0, 0, 0, 1, 'NNNN', 1),
(3, 1, 0, 'BE', 32, 0, 0, 0, 1, 'NNNN', 1),
(4, 2, 0, 'CA', 1, 0, 1, 0, 1, 'LNL NLN', 0),
(5, 3, 0, 'CN', 86, 0, 0, 0, 1, 'NNNNNN', 1),
(6, 1, 0, 'ES', 34, 0, 0, 1, 1, 'NNNNN', 1),
(7, 1, 0, 'FI', 358, 0, 0, 0, 1, 'NNNNN', 1),
(8, 1, 0, 'FR', 33, 0, 0, 0, 1, 'NNNNN', 1),
(9, 1, 0, 'GR', 30, 0, 0, 0, 1, 'NNNNN', 1),
(10, 1, 0, 'IT', 39, 0, 1, 0, 1, 'NNNNN', 1),
(11, 3, 0, 'JP', 81, 0, 1, 0, 1, 'NNN-NNNN', 1),
(12, 1, 0, 'LU', 352, 0, 0, 0, 1, 'NNNN', 1),
(13, 1, 0, 'NL', 31, 0, 0, 0, 1, 'NNNN LL', 1),
(14, 1, 0, 'PL', 48, 0, 0, 0, 1, 'NN-NNN', 1),
(15, 1, 0, 'PT', 351, 0, 0, 0, 1, 'NNNN-NNN', 1),
(16, 1, 0, 'CZ', 420, 0, 0, 0, 1, 'NNN NN', 1),
(17, 1, 0, 'GB', 44, 0, 0, 0, 1, '', 1),
(18, 1, 0, 'SE', 46, 0, 0, 0, 1, 'NNN NN', 1),
(19, 7, 0, 'CH', 41, 0, 0, 0, 1, 'NNNN', 1),
(20, 1, 0, 'DK', 45, 0, 0, 0, 1, 'NNNN', 1),
(21, 2, 0, 'US', 1, 0, 1, 0, 1, 'NNNNN', 0),
(22, 3, 0, 'HK', 852, 0, 0, 0, 0, '', 1),
(23, 7, 0, 'NO', 47, 0, 0, 0, 1, 'NNNN', 1),
(24, 5, 0, 'AU', 61, 0, 0, 0, 1, 'NNNN', 1),
(25, 3, 0, 'SG', 65, 0, 0, 0, 1, 'NNNNNN', 1),
(26, 1, 0, 'IE', 353, 0, 0, 0, 0, '', 1),
(27, 5, 0, 'NZ', 64, 0, 0, 0, 1, 'NNNN', 1),
(28, 3, 0, 'KR', 82, 0, 0, 0, 1, 'NNN-NNN', 1),
(29, 3, 0, 'IL', 972, 0, 0, 0, 1, 'NNNNN', 1),
(30, 4, 0, 'ZA', 27, 0, 0, 0, 1, 'NNNN', 1),
(31, 4, 0, 'NG', 234, 0, 0, 0, 1, '', 1),
(32, 4, 0, 'CI', 225, 0, 0, 0, 1, '', 1),
(33, 4, 0, 'TG', 228, 0, 0, 0, 1, '', 1),
(34, 6, 0, 'BO', 591, 0, 0, 0, 1, '', 1),
(35, 4, 0, 'MU', 230, 0, 0, 0, 1, '', 1),
(36, 1, 0, 'RO', 40, 0, 0, 0, 1, 'NNNNNN', 1),
(37, 1, 0, 'SK', 421, 0, 0, 0, 1, 'NNN NN', 1),
(38, 4, 0, 'DZ', 213, 0, 0, 0, 1, 'NNNNN', 1),
(39, 2, 0, 'AS', 0, 0, 0, 0, 1, '', 1),
(40, 7, 0, 'AD', 376, 0, 0, 0, 1, 'CNNN', 1),
(41, 4, 0, 'AO', 244, 0, 0, 0, 0, '', 1),
(42, 8, 0, 'AI', 0, 0, 0, 0, 1, '', 1),
(43, 2, 0, 'AG', 0, 0, 0, 0, 1, '', 1),
(44, 6, 0, 'AR', 54, 0, 1, 0, 1, 'LNNNN', 1),
(45, 3, 0, 'AM', 374, 0, 0, 0, 1, 'NNNN', 1),
(46, 8, 0, 'AW', 297, 0, 0, 0, 1, '', 1),
(47, 3, 0, 'AZ', 994, 0, 0, 0, 1, 'CNNNN', 1),
(48, 2, 0, 'BS', 0, 0, 0, 0, 1, '', 1),
(49, 3, 0, 'BH', 973, 0, 0, 0, 1, '', 1),
(50, 3, 0, 'BD', 880, 0, 0, 0, 1, 'NNNN', 1),
(51, 2, 0, 'BB', 0, 0, 0, 0, 1, 'CNNNNN', 1),
(52, 7, 0, 'BY', 0, 0, 0, 0, 1, 'NNNNNN', 1),
(53, 8, 0, 'BZ', 501, 0, 0, 0, 0, '', 1),
(54, 4, 0, 'BJ', 229, 0, 0, 0, 0, '', 1),
(55, 2, 0, 'BM', 0, 0, 0, 0, 1, '', 1),
(56, 3, 0, 'BT', 975, 0, 0, 0, 1, '', 1),
(57, 4, 0, 'BW', 267, 0, 0, 0, 1, '', 1),
(58, 6, 0, 'BR', 55, 0, 0, 0, 1, 'NNNNN-NNN', 1),
(59, 3, 0, 'BN', 673, 0, 0, 0, 1, 'LLNNNN', 1),
(60, 4, 0, 'BF', 226, 0, 0, 0, 1, '', 1),
(61, 3, 0, 'MM', 95, 0, 0, 0, 1, '', 1),
(62, 4, 0, 'BI', 257, 0, 0, 0, 1, '', 1),
(63, 3, 0, 'KH', 855, 0, 0, 0, 1, 'NNNNN', 1),
(64, 4, 0, 'CM', 237, 0, 0, 0, 1, '', 1),
(65, 4, 0, 'CV', 238, 0, 0, 0, 1, 'NNNN', 1),
(66, 4, 0, 'CF', 236, 0, 0, 0, 1, '', 1),
(67, 4, 0, 'TD', 235, 0, 0, 0, 1, '', 1),
(68, 6, 0, 'CL', 56, 0, 0, 0, 1, 'NNN-NNNN', 1),
(69, 6, 0, 'CO', 57, 0, 0, 0, 1, 'NNNNNN', 1),
(70, 4, 0, 'KM', 269, 0, 0, 0, 1, '', 1),
(71, 4, 0, 'CD', 242, 0, 0, 0, 1, '', 1),
(72, 4, 0, 'CG', 243, 0, 0, 0, 1, '', 1),
(73, 8, 0, 'CR', 506, 0, 0, 0, 1, 'NNNNN', 1),
(74, 7, 0, 'HR', 385, 0, 0, 0, 1, 'NNNNN', 1),
(75, 8, 0, 'CU', 53, 0, 0, 0, 1, '', 1),
(76, 1, 0, 'CY', 357, 0, 0, 0, 1, 'NNNN', 1),
(77, 4, 0, 'DJ', 253, 0, 0, 0, 1, '', 1),
(78, 8, 0, 'DM', 0, 0, 0, 0, 1, '', 1),
(79, 8, 0, 'DO', 0, 0, 0, 0, 1, '', 1),
(80, 3, 0, 'TL', 670, 0, 0, 0, 1, '', 1),
(81, 6, 0, 'EC', 593, 0, 0, 0, 1, 'CNNNNNN', 1),
(82, 4, 0, 'EG', 20, 0, 0, 0, 0, '', 1),
(83, 8, 0, 'SV', 503, 0, 0, 0, 1, '', 1),
(84, 4, 0, 'GQ', 240, 0, 0, 0, 1, '', 1),
(85, 4, 0, 'ER', 291, 0, 0, 0, 1, '', 1),
(86, 1, 0, 'EE', 372, 0, 0, 0, 1, 'NNNNN', 1),
(87, 4, 0, 'ET', 251, 0, 0, 0, 1, '', 1),
(88, 8, 0, 'FK', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(89, 7, 0, 'FO', 298, 0, 0, 0, 1, '', 1),
(90, 5, 0, 'FJ', 679, 0, 0, 0, 1, '', 1),
(91, 4, 0, 'GA', 241, 0, 0, 0, 1, '', 1),
(92, 4, 0, 'GM', 220, 0, 0, 0, 1, '', 1),
(93, 3, 0, 'GE', 995, 0, 0, 0, 1, 'NNNN', 1),
(94, 4, 0, 'GH', 233, 0, 0, 0, 1, '', 1),
(95, 8, 0, 'GD', 0, 0, 0, 0, 1, '', 1),
(96, 7, 0, 'GL', 299, 0, 0, 0, 1, '', 1),
(97, 7, 0, 'GI', 350, 0, 0, 0, 1, '', 1),
(98, 8, 0, 'GP', 590, 0, 0, 0, 1, '', 1),
(99, 5, 0, 'GU', 0, 0, 0, 0, 1, '', 1),
(100, 8, 0, 'GT', 502, 0, 0, 0, 1, '', 1),
(101, 7, 0, 'GG', 0, 0, 0, 0, 1, 'LLN NLL', 1),
(102, 4, 0, 'GN', 224, 0, 0, 0, 1, '', 1),
(103, 4, 0, 'GW', 245, 0, 0, 0, 1, '', 1),
(104, 6, 0, 'GY', 592, 0, 0, 0, 1, '', 1),
(105, 8, 0, 'HT', 509, 0, 0, 0, 1, '', 1),
(106, 5, 0, 'HM', 0, 0, 0, 0, 1, '', 1),
(107, 7, 0, 'VA', 379, 0, 0, 0, 1, 'NNNNN', 1),
(108, 8, 0, 'HN', 504, 0, 0, 0, 1, '', 1),
(109, 7, 0, 'IS', 354, 0, 0, 0, 1, 'NNN', 1),
(110, 3, 0, 'IN', 91, 0, 0, 0, 1, 'NNN NNN', 1),
(111, 3, 0, 'ID', 62, 1, 1, 0, 1, 'NNNNN', 1),
(112, 3, 0, 'IR', 98, 0, 0, 0, 1, 'NNNNN-NNNNN', 1),
(113, 3, 0, 'IQ', 964, 0, 0, 0, 1, 'NNNNN', 1),
(114, 7, 0, 'IM', 0, 0, 0, 0, 1, 'CN NLL', 1),
(115, 8, 0, 'JM', 0, 0, 0, 0, 1, '', 1),
(116, 7, 0, 'JE', 0, 0, 0, 0, 1, 'CN NLL', 1),
(117, 3, 0, 'JO', 962, 0, 0, 0, 1, '', 1),
(118, 3, 0, 'KZ', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(119, 4, 0, 'KE', 254, 0, 0, 0, 1, '', 1),
(120, 5, 0, 'KI', 686, 0, 0, 0, 1, '', 1),
(121, 3, 0, 'KP', 850, 0, 0, 0, 1, '', 1),
(122, 3, 0, 'KW', 965, 0, 0, 0, 1, '', 1),
(123, 3, 0, 'KG', 996, 0, 0, 0, 1, '', 1),
(124, 3, 0, 'LA', 856, 0, 0, 0, 1, '', 1),
(125, 1, 0, 'LV', 371, 0, 0, 0, 1, 'C-NNNN', 1),
(126, 3, 0, 'LB', 961, 0, 0, 0, 1, '', 1),
(127, 4, 0, 'LS', 266, 0, 0, 0, 1, '', 1),
(128, 4, 0, 'LR', 231, 0, 0, 0, 1, '', 1),
(129, 4, 0, 'LY', 218, 0, 0, 0, 1, '', 1),
(130, 1, 0, 'LI', 423, 0, 0, 0, 1, 'NNNN', 1),
(131, 1, 0, 'LT', 370, 0, 0, 0, 1, 'NNNNN', 1),
(132, 3, 0, 'MO', 853, 0, 0, 0, 0, '', 1),
(133, 7, 0, 'MK', 389, 0, 0, 0, 1, '', 1),
(134, 4, 0, 'MG', 261, 0, 0, 0, 1, '', 1),
(135, 4, 0, 'MW', 265, 0, 0, 0, 1, '', 1),
(136, 3, 0, 'MY', 60, 0, 0, 0, 1, 'NNNNN', 1),
(137, 3, 0, 'MV', 960, 0, 0, 0, 1, '', 1),
(138, 4, 0, 'ML', 223, 0, 0, 0, 1, '', 1),
(139, 1, 0, 'MT', 356, 0, 0, 0, 1, 'LLL NNNN', 1),
(140, 5, 0, 'MH', 692, 0, 0, 0, 1, '', 1),
(141, 8, 0, 'MQ', 596, 0, 0, 0, 1, '', 1),
(142, 4, 0, 'MR', 222, 0, 0, 0, 1, '', 1),
(143, 1, 0, 'HU', 36, 0, 0, 0, 1, 'NNNN', 1),
(144, 4, 0, 'YT', 262, 0, 0, 0, 1, '', 1),
(145, 2, 0, 'MX', 52, 0, 1, 1, 1, 'NNNNN', 1),
(146, 5, 0, 'FM', 691, 0, 0, 0, 1, '', 1),
(147, 7, 0, 'MD', 373, 0, 0, 0, 1, 'C-NNNN', 1),
(148, 7, 0, 'MC', 377, 0, 0, 0, 1, '980NN', 1),
(149, 3, 0, 'MN', 976, 0, 0, 0, 1, '', 1),
(150, 7, 0, 'ME', 382, 0, 0, 0, 1, 'NNNNN', 1),
(151, 8, 0, 'MS', 0, 0, 0, 0, 1, '', 1),
(152, 4, 0, 'MA', 212, 0, 0, 0, 1, 'NNNNN', 1),
(153, 4, 0, 'MZ', 258, 0, 0, 0, 1, '', 1),
(154, 4, 0, 'NA', 264, 0, 0, 0, 1, '', 1),
(155, 5, 0, 'NR', 674, 0, 0, 0, 1, '', 1),
(156, 3, 0, 'NP', 977, 0, 0, 0, 1, '', 1),
(157, 8, 0, 'AN', 599, 0, 0, 0, 1, '', 1),
(158, 5, 0, 'NC', 687, 0, 0, 0, 1, '', 1),
(159, 8, 0, 'NI', 505, 0, 0, 0, 1, 'NNNNNN', 1),
(160, 4, 0, 'NE', 227, 0, 0, 0, 1, '', 1),
(161, 5, 0, 'NU', 683, 0, 0, 0, 1, '', 1),
(162, 5, 0, 'NF', 0, 0, 0, 0, 1, '', 1),
(163, 5, 0, 'MP', 0, 0, 0, 0, 1, '', 1),
(164, 3, 0, 'OM', 968, 0, 0, 0, 1, '', 1),
(165, 3, 0, 'PK', 92, 0, 0, 0, 1, '', 1),
(166, 5, 0, 'PW', 680, 0, 0, 0, 1, '', 1),
(167, 3, 0, 'PS', 0, 0, 0, 0, 1, '', 1),
(168, 8, 0, 'PA', 507, 0, 0, 0, 1, 'NNNNNN', 1),
(169, 5, 0, 'PG', 675, 0, 0, 0, 1, '', 1),
(170, 6, 0, 'PY', 595, 0, 0, 0, 1, '', 1),
(171, 6, 0, 'PE', 51, 0, 0, 0, 1, '', 1),
(172, 3, 0, 'PH', 63, 0, 0, 0, 1, 'NNNN', 1),
(173, 5, 0, 'PN', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(174, 8, 0, 'PR', 0, 0, 0, 0, 1, 'NNNNN', 1),
(175, 3, 0, 'QA', 974, 0, 0, 0, 1, '', 1),
(176, 4, 0, 'RE', 262, 0, 0, 0, 1, '', 1),
(177, 7, 0, 'RU', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(178, 4, 0, 'RW', 250, 0, 0, 0, 1, '', 1),
(179, 8, 0, 'BL', 0, 0, 0, 0, 1, '', 1),
(180, 8, 0, 'KN', 0, 0, 0, 0, 1, '', 1),
(181, 8, 0, 'LC', 0, 0, 0, 0, 1, '', 1),
(182, 8, 0, 'MF', 0, 0, 0, 0, 1, '', 1),
(183, 8, 0, 'PM', 508, 0, 0, 0, 1, '', 1),
(184, 8, 0, 'VC', 0, 0, 0, 0, 1, '', 1),
(185, 5, 0, 'WS', 685, 0, 0, 0, 1, '', 1),
(186, 7, 0, 'SM', 378, 0, 0, 0, 1, 'NNNNN', 1),
(187, 4, 0, 'ST', 239, 0, 0, 0, 1, '', 1),
(188, 3, 0, 'SA', 966, 0, 0, 0, 1, '', 1),
(189, 4, 0, 'SN', 221, 0, 0, 0, 1, '', 1),
(190, 7, 0, 'RS', 381, 0, 0, 0, 1, 'NNNNN', 1),
(191, 4, 0, 'SC', 248, 0, 0, 0, 1, '', 1),
(192, 4, 0, 'SL', 232, 0, 0, 0, 1, '', 1),
(193, 1, 0, 'SI', 386, 0, 0, 0, 1, 'C-NNNN', 1),
(194, 5, 0, 'SB', 677, 0, 0, 0, 1, '', 1),
(195, 4, 0, 'SO', 252, 0, 0, 0, 1, '', 1),
(196, 8, 0, 'GS', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(197, 3, 0, 'LK', 94, 0, 0, 0, 1, 'NNNNN', 1),
(198, 4, 0, 'SD', 249, 0, 0, 0, 1, '', 1),
(199, 8, 0, 'SR', 597, 0, 0, 0, 1, '', 1),
(200, 7, 0, 'SJ', 0, 0, 0, 0, 1, '', 1),
(201, 4, 0, 'SZ', 268, 0, 0, 0, 1, '', 1),
(202, 3, 0, 'SY', 963, 0, 0, 0, 1, '', 1),
(203, 3, 0, 'TW', 886, 0, 0, 0, 1, 'NNNNN', 1),
(204, 3, 0, 'TJ', 992, 0, 0, 0, 1, '', 1),
(205, 4, 0, 'TZ', 255, 0, 0, 0, 1, '', 1),
(206, 3, 0, 'TH', 66, 0, 0, 0, 1, 'NNNNN', 1),
(207, 5, 0, 'TK', 690, 0, 0, 0, 1, '', 1),
(208, 5, 0, 'TO', 676, 0, 0, 0, 1, '', 1),
(209, 6, 0, 'TT', 0, 0, 0, 0, 1, '', 1),
(210, 4, 0, 'TN', 216, 0, 0, 0, 1, '', 1),
(211, 7, 0, 'TR', 90, 0, 0, 0, 1, 'NNNNN', 1),
(212, 3, 0, 'TM', 993, 0, 0, 0, 1, '', 1),
(213, 8, 0, 'TC', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(214, 5, 0, 'TV', 688, 0, 0, 0, 1, '', 1),
(215, 4, 0, 'UG', 256, 0, 0, 0, 1, '', 1),
(216, 1, 0, 'UA', 380, 0, 0, 0, 1, 'NNNNN', 1),
(217, 3, 0, 'AE', 971, 0, 0, 0, 1, '', 1),
(218, 6, 0, 'UY', 598, 0, 0, 0, 1, '', 1),
(219, 3, 0, 'UZ', 998, 0, 0, 0, 1, '', 1),
(220, 5, 0, 'VU', 678, 0, 0, 0, 1, '', 1),
(221, 6, 0, 'VE', 58, 0, 0, 0, 1, '', 1),
(222, 3, 0, 'VN', 84, 0, 0, 0, 1, 'NNNNNN', 1),
(223, 2, 0, 'VG', 0, 0, 0, 0, 1, 'CNNNN', 1),
(224, 2, 0, 'VI', 0, 0, 0, 0, 1, '', 1),
(225, 5, 0, 'WF', 681, 0, 0, 0, 1, '', 1),
(226, 4, 0, 'EH', 0, 0, 0, 0, 1, '', 1),
(227, 3, 0, 'YE', 967, 0, 0, 0, 1, '', 1),
(228, 4, 0, 'ZM', 260, 0, 0, 0, 1, '', 1),
(229, 4, 0, 'ZW', 263, 0, 0, 0, 1, '', 1),
(230, 7, 0, 'AL', 355, 0, 0, 0, 1, 'NNNN', 1),
(231, 3, 0, 'AF', 93, 0, 0, 0, 0, '', 1),
(232, 5, 0, 'AQ', 0, 0, 0, 0, 1, '', 1),
(233, 1, 0, 'BA', 387, 0, 0, 0, 1, '', 1),
(234, 5, 0, 'BV', 0, 0, 0, 0, 1, '', 1),
(235, 5, 0, 'IO', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(236, 1, 0, 'BG', 359, 0, 0, 0, 1, 'NNNN', 1),
(237, 8, 0, 'KY', 0, 0, 0, 0, 1, '', 1),
(238, 3, 0, 'CX', 0, 0, 0, 0, 1, '', 1),
(239, 3, 0, 'CC', 0, 0, 0, 0, 1, '', 1),
(240, 5, 0, 'CK', 682, 0, 0, 0, 1, '', 1),
(241, 6, 0, 'GF', 594, 0, 0, 0, 1, '', 1),
(242, 5, 0, 'PF', 689, 0, 0, 0, 1, '', 1),
(243, 5, 0, 'TF', 0, 0, 0, 0, 1, '', 1),
(244, 7, 0, 'AX', 0, 0, 0, 0, 1, 'NNNNN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_country_lang`
--

CREATE TABLE IF NOT EXISTS `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_country_lang`
--

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(1, 2, 'Germany'),
(2, 1, 'Austria'),
(2, 2, 'Austria'),
(3, 1, 'Belgium'),
(3, 2, 'Belgium'),
(4, 1, 'Canada'),
(4, 2, 'Canada'),
(5, 1, 'China'),
(5, 2, 'China'),
(6, 1, 'Spain'),
(6, 2, 'Spain'),
(7, 1, 'Finland'),
(7, 2, 'Finland'),
(8, 1, 'France'),
(8, 2, 'France'),
(9, 1, 'Greece'),
(9, 2, 'Greece'),
(10, 1, 'Italy'),
(10, 2, 'Italy'),
(11, 1, 'Japan'),
(11, 2, 'Japan'),
(12, 1, 'Luxemburg'),
(12, 2, 'Luxemburg'),
(13, 1, 'Netherlands'),
(13, 2, 'Netherlands'),
(14, 1, 'Poland'),
(14, 2, 'Poland'),
(15, 1, 'Portugal'),
(15, 2, 'Portugal'),
(16, 1, 'Czech Republic'),
(16, 2, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(17, 2, 'United Kingdom'),
(18, 1, 'Sweden'),
(18, 2, 'Sweden'),
(19, 1, 'Switzerland'),
(19, 2, 'Switzerland'),
(20, 1, 'Denmark'),
(20, 2, 'Denmark'),
(21, 1, 'United States'),
(21, 2, 'United States'),
(22, 1, 'HongKong'),
(22, 2, 'HongKong'),
(23, 1, 'Norway'),
(23, 2, 'Norway'),
(24, 1, 'Australia'),
(24, 2, 'Australia'),
(25, 1, 'Singapore'),
(25, 2, 'Singapore'),
(26, 1, 'Ireland'),
(26, 2, 'Ireland'),
(27, 1, 'New Zealand'),
(27, 2, 'New Zealand'),
(28, 1, 'South Korea'),
(28, 2, 'South Korea'),
(29, 1, 'Israel'),
(29, 2, 'Israel'),
(30, 1, 'South Africa'),
(30, 2, 'South Africa'),
(31, 1, 'Nigeria'),
(31, 2, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(32, 2, 'Ivory Coast'),
(33, 1, 'Togo'),
(33, 2, 'Togo'),
(34, 1, 'Bolivia'),
(34, 2, 'Bolivia'),
(35, 1, 'Mauritius'),
(35, 2, 'Mauritius'),
(36, 1, 'Romania'),
(36, 2, 'Romania'),
(37, 1, 'Slovakia'),
(37, 2, 'Slovakia'),
(38, 1, 'Algeria'),
(38, 2, 'Algeria'),
(39, 1, 'American Samoa'),
(39, 2, 'American Samoa'),
(40, 1, 'Andorra'),
(40, 2, 'Andorra'),
(41, 1, 'Angola'),
(41, 2, 'Angola'),
(42, 1, 'Anguilla'),
(42, 2, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(43, 2, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(44, 2, 'Argentina'),
(45, 1, 'Armenia'),
(45, 2, 'Armenia'),
(46, 1, 'Aruba'),
(46, 2, 'Aruba'),
(47, 1, 'Azerbaijan'),
(47, 2, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(48, 2, 'Bahamas'),
(49, 1, 'Bahrain'),
(49, 2, 'Bahrain'),
(50, 1, 'Bangladesh'),
(50, 2, 'Bangladesh'),
(51, 1, 'Barbados'),
(51, 2, 'Barbados'),
(52, 1, 'Belarus'),
(52, 2, 'Belarus'),
(53, 1, 'Belize'),
(53, 2, 'Belize'),
(54, 1, 'Benin'),
(54, 2, 'Benin'),
(55, 1, 'Bermuda'),
(55, 2, 'Bermuda'),
(56, 1, 'Bhutan'),
(56, 2, 'Bhutan'),
(57, 1, 'Botswana'),
(57, 2, 'Botswana'),
(58, 1, 'Brazil'),
(58, 2, 'Brazil'),
(59, 1, 'Brunei'),
(59, 2, 'Brunei'),
(60, 1, 'Burkina Faso'),
(60, 2, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(61, 2, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(62, 2, 'Burundi'),
(63, 1, 'Cambodia'),
(63, 2, 'Cambodia'),
(64, 1, 'Cameroon'),
(64, 2, 'Cameroon'),
(65, 1, 'Cape Verde'),
(65, 2, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(66, 2, 'Central African Republic'),
(67, 1, 'Chad'),
(67, 2, 'Chad'),
(68, 1, 'Chile'),
(68, 2, 'Chile'),
(69, 1, 'Colombia'),
(69, 2, 'Colombia'),
(70, 1, 'Comoros'),
(70, 2, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(71, 2, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(72, 2, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(73, 2, 'Costa Rica'),
(74, 1, 'Croatia'),
(74, 2, 'Croatia'),
(75, 1, 'Cuba'),
(75, 2, 'Cuba'),
(76, 1, 'Cyprus'),
(76, 2, 'Cyprus'),
(77, 1, 'Djibouti'),
(77, 2, 'Djibouti'),
(78, 1, 'Dominica'),
(78, 2, 'Dominica'),
(79, 1, 'Dominican Republic'),
(79, 2, 'Dominican Republic'),
(80, 1, 'East Timor'),
(80, 2, 'East Timor'),
(81, 1, 'Ecuador'),
(81, 2, 'Ecuador'),
(82, 1, 'Egypt'),
(82, 2, 'Egypt'),
(83, 1, 'El Salvador'),
(83, 2, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(84, 2, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(85, 2, 'Eritrea'),
(86, 1, 'Estonia'),
(86, 2, 'Estonia'),
(87, 1, 'Ethiopia'),
(87, 2, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(88, 2, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(89, 2, 'Faroe Islands'),
(90, 1, 'Fiji'),
(90, 2, 'Fiji'),
(91, 1, 'Gabon'),
(91, 2, 'Gabon'),
(92, 1, 'Gambia'),
(92, 2, 'Gambia'),
(93, 1, 'Georgia'),
(93, 2, 'Georgia'),
(94, 1, 'Ghana'),
(94, 2, 'Ghana'),
(95, 1, 'Grenada'),
(95, 2, 'Grenada'),
(96, 1, 'Greenland'),
(96, 2, 'Greenland'),
(97, 1, 'Gibraltar'),
(97, 2, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(98, 2, 'Guadeloupe'),
(99, 1, 'Guam'),
(99, 2, 'Guam'),
(100, 1, 'Guatemala'),
(100, 2, 'Guatemala'),
(101, 1, 'Guernsey'),
(101, 2, 'Guernsey'),
(102, 1, 'Guinea'),
(102, 2, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(103, 2, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(104, 2, 'Guyana'),
(105, 1, 'Haiti'),
(105, 2, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(106, 2, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(107, 2, 'Vatican City State'),
(108, 1, 'Honduras'),
(108, 2, 'Honduras'),
(109, 1, 'Iceland'),
(109, 2, 'Iceland'),
(110, 1, 'India'),
(110, 2, 'India'),
(111, 1, 'Indonesia'),
(111, 2, 'Indonesia'),
(112, 1, 'Iran'),
(112, 2, 'Iran'),
(113, 1, 'Iraq'),
(113, 2, 'Iraq'),
(114, 1, 'Man Island'),
(114, 2, 'Man Island'),
(115, 1, 'Jamaica'),
(115, 2, 'Jamaica'),
(116, 1, 'Jersey'),
(116, 2, 'Jersey'),
(117, 1, 'Jordan'),
(117, 2, 'Jordan'),
(118, 1, 'Kazakhstan'),
(118, 2, 'Kazakhstan'),
(119, 1, 'Kenya'),
(119, 2, 'Kenya'),
(120, 1, 'Kiribati'),
(120, 2, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(121, 2, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(122, 2, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(123, 2, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(124, 2, 'Laos'),
(125, 1, 'Latvia'),
(125, 2, 'Latvia'),
(126, 1, 'Lebanon'),
(126, 2, 'Lebanon'),
(127, 1, 'Lesotho'),
(127, 2, 'Lesotho'),
(128, 1, 'Liberia'),
(128, 2, 'Liberia'),
(129, 1, 'Libya'),
(129, 2, 'Libya'),
(130, 1, 'Liechtenstein'),
(130, 2, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(131, 2, 'Lithuania'),
(132, 1, 'Macau'),
(132, 2, 'Macau'),
(133, 1, 'Macedonia'),
(133, 2, 'Macedonia'),
(134, 1, 'Madagascar'),
(134, 2, 'Madagascar'),
(135, 1, 'Malawi'),
(135, 2, 'Malawi'),
(136, 1, 'Malaysia'),
(136, 2, 'Malaysia'),
(137, 1, 'Maldives'),
(137, 2, 'Maldives'),
(138, 1, 'Mali'),
(138, 2, 'Mali'),
(139, 1, 'Malta'),
(139, 2, 'Malta'),
(140, 1, 'Marshall Islands'),
(140, 2, 'Marshall Islands'),
(141, 1, 'Martinique'),
(141, 2, 'Martinique'),
(142, 1, 'Mauritania'),
(142, 2, 'Mauritania'),
(143, 1, 'Hungary'),
(143, 2, 'Hungary'),
(144, 1, 'Mayotte'),
(144, 2, 'Mayotte'),
(145, 1, 'Mexico'),
(145, 2, 'Mexico'),
(146, 1, 'Micronesia'),
(146, 2, 'Micronesia'),
(147, 1, 'Moldova'),
(147, 2, 'Moldova'),
(148, 1, 'Monaco'),
(148, 2, 'Monaco'),
(149, 1, 'Mongolia'),
(149, 2, 'Mongolia'),
(150, 1, 'Montenegro'),
(150, 2, 'Montenegro'),
(151, 1, 'Montserrat'),
(151, 2, 'Montserrat'),
(152, 1, 'Morocco'),
(152, 2, 'Morocco'),
(153, 1, 'Mozambique'),
(153, 2, 'Mozambique'),
(154, 1, 'Namibia'),
(154, 2, 'Namibia'),
(155, 1, 'Nauru'),
(155, 2, 'Nauru'),
(156, 1, 'Nepal'),
(156, 2, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(157, 2, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(158, 2, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(159, 2, 'Nicaragua'),
(160, 1, 'Niger'),
(160, 2, 'Niger'),
(161, 1, 'Niue'),
(161, 2, 'Niue'),
(162, 1, 'Norfolk Island'),
(162, 2, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(163, 2, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(164, 2, 'Oman'),
(165, 1, 'Pakistan'),
(165, 2, 'Pakistan'),
(166, 1, 'Palau'),
(166, 2, 'Palau'),
(167, 1, 'Palestinian Territories'),
(167, 2, 'Palestinian Territories'),
(168, 1, 'Panama'),
(168, 2, 'Panama'),
(169, 1, 'Papua New Guinea'),
(169, 2, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(170, 2, 'Paraguay'),
(171, 1, 'Peru'),
(171, 2, 'Peru'),
(172, 1, 'Philippines'),
(172, 2, 'Philippines'),
(173, 1, 'Pitcairn'),
(173, 2, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(174, 2, 'Puerto Rico'),
(175, 1, 'Qatar'),
(175, 2, 'Qatar'),
(176, 1, 'Reunion Island'),
(176, 2, 'Reunion Island'),
(177, 1, 'Russian Federation'),
(177, 2, 'Russian Federation'),
(178, 1, 'Rwanda'),
(178, 2, 'Rwanda'),
(179, 1, 'Saint Barthelemy'),
(179, 2, 'Saint Barthelemy'),
(180, 1, 'Saint Kitts and Nevis'),
(180, 2, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(181, 2, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(182, 2, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(183, 2, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(184, 2, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(185, 2, 'Samoa'),
(186, 1, 'San Marino'),
(186, 2, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(187, 2, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(188, 2, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(189, 2, 'Senegal'),
(190, 1, 'Serbia'),
(190, 2, 'Serbia'),
(191, 1, 'Seychelles'),
(191, 2, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(192, 2, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(193, 2, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(194, 2, 'Solomon Islands'),
(195, 1, 'Somalia'),
(195, 2, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(196, 2, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(197, 2, 'Sri Lanka'),
(198, 1, 'Sudan'),
(198, 2, 'Sudan'),
(199, 1, 'Suriname'),
(199, 2, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(200, 2, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(201, 2, 'Swaziland'),
(202, 1, 'Syria'),
(202, 2, 'Syria'),
(203, 1, 'Taiwan'),
(203, 2, 'Taiwan'),
(204, 1, 'Tajikistan'),
(204, 2, 'Tajikistan'),
(205, 1, 'Tanzania'),
(205, 2, 'Tanzania'),
(206, 1, 'Thailand'),
(206, 2, 'Thailand'),
(207, 1, 'Tokelau'),
(207, 2, 'Tokelau'),
(208, 1, 'Tonga'),
(208, 2, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(209, 2, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(210, 2, 'Tunisia'),
(211, 1, 'Turkey'),
(211, 2, 'Turkey'),
(212, 1, 'Turkmenistan'),
(212, 2, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(213, 2, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(214, 2, 'Tuvalu'),
(215, 1, 'Uganda'),
(215, 2, 'Uganda'),
(216, 1, 'Ukraine'),
(216, 2, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(217, 2, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(218, 2, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(219, 2, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(220, 2, 'Vanuatu'),
(221, 1, 'Venezuela'),
(221, 2, 'Venezuela'),
(222, 1, 'Vietnam'),
(222, 2, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(223, 2, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(224, 2, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(225, 2, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(226, 2, 'Western Sahara'),
(227, 1, 'Yemen'),
(227, 2, 'Yemen'),
(228, 1, 'Zambia'),
(228, 2, 'Zambia'),
(229, 1, 'Zimbabwe'),
(229, 2, 'Zimbabwe'),
(230, 1, 'Albania'),
(230, 2, 'Albania'),
(231, 1, 'Afghanistan'),
(231, 2, 'Afghanistan'),
(232, 1, 'Antarctica'),
(232, 2, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(233, 2, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(234, 2, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(235, 2, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(236, 2, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(237, 2, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(238, 2, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(239, 2, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(240, 2, 'Cook Islands'),
(241, 1, 'French Guiana'),
(241, 2, 'French Guiana'),
(242, 1, 'French Polynesia'),
(242, 2, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(243, 2, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(244, 2, 'Åland Islands');

-- --------------------------------------------------------

--
-- Table structure for table `ps_country_shop`
--

CREATE TABLE IF NOT EXISTS `ps_country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_country_shop`
--

INSERT INTO `ps_country_shop` (`id_country`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_currency`
--

CREATE TABLE IF NOT EXISTS `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_currency`
--

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1, 'Rupiah', 'IDR', '360', 'Rp‎', 1, 2, 1, '1.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_currency_shop`
--

CREATE TABLE IF NOT EXISTS `ps_currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_currency_shop`
--

INSERT INTO `ps_currency_shop` (`id_currency`, `id_shop`, `conversion_rate`) VALUES
(1, 1, '1.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer`
--

CREATE TABLE IF NOT EXISTS `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned DEFAULT NULL,
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_customer`
--

INSERT INTO `ps_customer` (`id_customer`, `id_shop_group`, `id_shop`, `id_gender`, `id_default_group`, `id_lang`, `id_risk`, `company`, `siret`, `ape`, `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`, `outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`, `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 1, 3, 1, 0, '', '', '', 'John', 'DOE', 'pub@prestashop.com', '8e59286589812550dd5881b9e3053091', '2014-05-11 07:17:21', '1970-01-15', 1, '', '2013-12-13 08:19:15', 1, '', '0.000000', 0, 0, '297ba229e653cfc4b92e63759b3c1471', '', 1, 0, 0, '2014-05-11 20:17:21', '2014-05-11 20:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_group`
--

CREATE TABLE IF NOT EXISTS `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_customer_group`
--

INSERT INTO `ps_customer_group` (`id_customer`, `id_group`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_message`
--

CREATE TABLE IF NOT EXISTS `ps_customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_message_sync_imap`
--

CREATE TABLE IF NOT EXISTS `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_thread`
--

CREATE TABLE IF NOT EXISTS `ps_customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization`
--

CREATE TABLE IF NOT EXISTS `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization_field`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization_field_lang`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customized_data`
--

CREATE TABLE IF NOT EXISTS `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_date_range`
--

CREATE TABLE IF NOT EXISTS `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_delivery`
--

CREATE TABLE IF NOT EXISTS `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_delivery`
--

INSERT INTO `ps_delivery` (`id_delivery`, `id_shop`, `id_shop_group`, `id_carrier`, `id_range_price`, `id_range_weight`, `id_zone`, `price`) VALUES
(1, 1, 1, 2, 1, 0, 1, '0.000000'),
(2, 1, 1, 2, 1, 0, 2, '0.000000'),
(3, 1, 1, 2, 0, 1, 1, '0.000000'),
(4, 1, 1, 2, 0, 1, 2, '0.000000'),
(5, NULL, NULL, 2, 0, 1, 1, '5.000000'),
(6, NULL, NULL, 2, 0, 1, 2, '5.000000'),
(7, NULL, NULL, 2, 1, 0, 1, '5.000000'),
(8, NULL, NULL, 2, 1, 0, 2, '5.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_employee`
--

CREATE TABLE IF NOT EXISTS `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_employee`
--

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `stats_compare_from`, `stats_compare_to`, `stats_compare_option`, `preselect_date_range`, `bo_color`, `bo_theme`, `bo_css`, `default_tab`, `bo_width`, `bo_menu`, `active`, `optin`, `id_last_order`, `id_last_customer_message`, `id_last_customer`) VALUES
(1, 1, 1, 'Purnama', 'Tantan', 'tantanium@live.co.uk', '19073f3ea47a0e7a2edd68f7f9f39657', '2014-05-11 07:17:09', '2014-04-11', '2014-05-11', '0000-00-00', '0000-00-00', 1, NULL, NULL, 'default', 'admin-theme.css', 1, 0, 1, 1, 0, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_employee_shop`
--

CREATE TABLE IF NOT EXISTS `ps_employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_employee_shop`
--

INSERT INTO `ps_employee_shop` (`id_employee`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature`
--

CREATE TABLE IF NOT EXISTS `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_feature`
--

INSERT INTO `ps_feature` (`id_feature`, `position`) VALUES
(1, 0),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_lang`
--

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(5, 1, 'Compositions'),
(3, 1, 'Depth'),
(1, 1, 'Height'),
(7, 1, 'Properties'),
(6, 1, 'Styles'),
(4, 1, 'Weight'),
(2, 1, 'Width'),
(5, 2, 'Compositions'),
(3, 2, 'Depth'),
(1, 2, 'Height'),
(7, 2, 'Properties'),
(6, 2, 'Styles'),
(4, 2, 'Weight'),
(2, 2, 'Width');

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_product`
--

CREATE TABLE IF NOT EXISTS `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_product`
--

INSERT INTO `ps_feature_product` (`id_feature`, `id_product`, `id_feature_value`) VALUES
(5, 6, 1),
(5, 7, 1),
(5, 4, 3),
(5, 5, 3),
(5, 1, 5),
(5, 2, 5),
(5, 3, 5),
(6, 1, 11),
(6, 2, 11),
(6, 5, 11),
(6, 3, 13),
(6, 6, 13),
(6, 7, 13),
(6, 4, 16),
(7, 1, 17),
(7, 2, 17),
(7, 3, 18),
(7, 4, 19),
(7, 6, 19),
(7, 7, 20),
(7, 5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_shop`
--

CREATE TABLE IF NOT EXISTS `ps_feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_shop`
--

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_value`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ps_feature_value`
--

INSERT INTO `ps_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(1, 5, 0),
(2, 5, 0),
(3, 5, 0),
(4, 5, 0),
(5, 5, 0),
(6, 5, 0),
(7, 5, 0),
(8, 5, 0),
(9, 5, 0),
(10, 6, 0),
(11, 6, 0),
(12, 6, 0),
(13, 6, 0),
(14, 6, 0),
(15, 6, 0),
(16, 6, 0),
(17, 7, 0),
(18, 7, 0),
(19, 7, 0),
(20, 7, 0),
(21, 7, 0),
(22, 1, 1),
(23, 2, 1),
(24, 4, 1),
(25, 3, 1),
(26, 1, 1),
(27, 2, 1),
(28, 4, 1),
(29, 3, 1),
(30, 1, 1),
(31, 2, 1),
(32, 4, 1),
(33, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_value_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_value_lang`
--

INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(1, 1, 'Polyester'),
(1, 2, 'Polyester'),
(2, 1, 'Wool'),
(2, 2, 'Wool'),
(3, 1, 'Viscose'),
(3, 2, 'Viscose'),
(4, 1, 'Elastane'),
(4, 2, 'Elastane'),
(5, 1, 'Cotton'),
(5, 2, 'Cotton'),
(6, 1, 'Silk'),
(6, 2, 'Silk'),
(7, 1, 'Suede'),
(7, 2, 'Suede'),
(8, 1, 'Straw'),
(8, 2, 'Straw'),
(9, 1, 'Leather'),
(9, 2, 'Leather'),
(10, 1, 'Classic'),
(10, 2, 'Classic'),
(11, 1, 'Casual'),
(11, 2, 'Casual'),
(12, 1, 'Military'),
(12, 2, 'Military'),
(13, 1, 'Girly'),
(13, 2, 'Girly'),
(14, 1, 'Rock'),
(14, 2, 'Rock'),
(15, 1, 'Basic'),
(15, 2, 'Basic'),
(16, 1, 'Dressy'),
(16, 2, 'Dressy'),
(17, 1, 'Short Sleeve'),
(17, 2, 'Short Sleeve'),
(18, 1, 'Colorful Dress'),
(18, 2, 'Colorful Dress'),
(19, 1, 'Short Dress'),
(19, 2, 'Short Dress'),
(20, 1, 'Midi Dress'),
(20, 2, 'Midi Dress'),
(21, 1, 'Maxi Dress'),
(21, 2, 'Maxi Dress'),
(22, 1, '2.75 in'),
(22, 2, '2.75 in'),
(23, 1, '2.06 in'),
(23, 2, '2.06 in'),
(24, 1, '49.2 g'),
(24, 2, '49.2 g'),
(25, 1, '0.26 in'),
(25, 2, '0.26 in'),
(26, 1, '1.07 in'),
(26, 2, '1.07 in'),
(27, 1, '1.62 in'),
(27, 2, '1.62 in'),
(28, 1, '15.5 g'),
(28, 2, '15.5 g'),
(29, 1, '0.41 in (clip included)'),
(29, 2, '0.41 in (clip included)'),
(30, 1, '4.33 in'),
(30, 2, '4.33 in'),
(31, 1, '2.76 in'),
(31, 2, '2.76 in'),
(32, 1, '120g'),
(32, 2, '120g'),
(33, 1, '0.31 in'),
(33, 2, '0.31 in');

-- --------------------------------------------------------

--
-- Table structure for table `ps_gender`
--

CREATE TABLE IF NOT EXISTS `ps_gender` (
  `id_gender` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_gender`
--

INSERT INTO `ps_gender` (`id_gender`, `type`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_gender_lang`
--

CREATE TABLE IF NOT EXISTS `ps_gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_gender_lang`
--

INSERT INTO `ps_gender_lang` (`id_gender`, `id_lang`, `name`) VALUES
(1, 1, 'Mr.'),
(1, 2, 'Mr.'),
(2, 1, 'Mrs.'),
(2, 2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group`
--

CREATE TABLE IF NOT EXISTS `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_group`
--

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `show_prices`, `date_add`, `date_upd`) VALUES
(1, '0.00', 0, 1, '2014-05-11 20:15:37', '2014-05-11 20:15:37'),
(2, '0.00', 0, 1, '2014-05-11 20:15:38', '2014-05-11 20:15:38'),
(3, '0.00', 0, 1, '2014-05-11 20:15:38', '2014-05-11 20:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_group_lang`
--

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Visitor'),
(1, 2, 'Visitor'),
(2, 1, 'Guest'),
(2, 2, 'Guest'),
(3, 1, 'Customer'),
(3, 2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_reduction`
--

CREATE TABLE IF NOT EXISTS `ps_group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_group_shop`
--

INSERT INTO `ps_group_shop` (`id_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_guest`
--

CREATE TABLE IF NOT EXISTS `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_guest`
--

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`, `mobile_theme`) VALUES
(1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(2, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_homeslider`
--

INSERT INTO `ps_homeslider` (`id_homeslider_slides`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider_slides`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider_slides` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_homeslider_slides`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_homeslider_slides`
--

INSERT INTO `ps_homeslider_slides` (`id_homeslider_slides`, `position`, `active`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider_slides_lang`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_homeslider_slides_lang`
--

INSERT INTO `ps_homeslider_slides_lang` (`id_homeslider_slides`, `id_lang`, `title`, `description`, `legend`, `url`, `image`) VALUES
(1, 1, 'Sample 1', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-1', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-1.jpg'),
(1, 2, 'Sample 1', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-1', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-1.jpg'),
(2, 1, 'Sample 2', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-2', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-2.jpg'),
(2, 2, 'Sample 2', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-2', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-2.jpg'),
(3, 1, 'Sample 3', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-3', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-3.jpg'),
(3, 2, 'Sample 3', '<h2>EXCEPTEUR<br />OCCAECAT</h2>\n				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique in tortor et dignissim. Quisque non tempor leo. Maecenas egestas sem elit</p>\n				<p><button class="btn btn-default" type="button">Shop now !</button></p>', 'sample-3', 'http://www.prestashop.com/?utm_source=v16_homeslider', 'sample-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook`
--

CREATE TABLE IF NOT EXISTS `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `ps_hook`
--

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1, 'displayPayment', 'Payment', 'This hook displays new elements on the payment page', 1, 1),
(2, 'actionValidateOrder', 'New orders', '', 1, 0),
(3, 'displayMaintenance', 'Maintenance Page', 'This hook displays new elements on the maintenance page', 1, 0),
(4, 'actionPaymentConfirmation', 'Payment confirmation', 'This hook displays new elements after the payment is validated', 1, 0),
(5, 'displayPaymentReturn', 'Payment return', '', 1, 0),
(6, 'actionUpdateQuantity', 'Quantity update', 'Quantity is updated only when a customer effectively places their order', 1, 0),
(7, 'displayRightColumn', 'Right column blocks', 'This hook displays new elements in the right-hand column', 1, 1),
(8, 'displayLeftColumn', 'Left column blocks', 'This hook displays new elements in the left-hand column', 1, 1),
(9, 'displayHome', 'Homepage content', 'This hook displays new elements on the homepage', 1, 1),
(10, 'displayHeader', 'Pages header', 'This hook displays additional elements in the header of your pages', 1, 0),
(11, 'actionCartSave', 'Cart creation and update', 'This hook is displayed when a product is added to the cart or if the cart''s content is modified', 1, 0),
(12, 'actionAuthentication', 'Successful customer authentication', 'This hook is displayed after a customer successfully signs in', 1, 0),
(13, 'actionProductAdd', 'Product creation', 'This hook is displayed after a product is created', 1, 0),
(14, 'actionProductUpdate', 'Product update', 'This hook is displayed after a product has been updated', 1, 0),
(15, 'displayTop', 'Top of pages', 'This hook displays  additional elements at the top of your pages', 1, 0),
(16, 'displayRightColumnProduct', 'New elements on the product page (right column)', 'This hook displays new elements in the right-hand column of the product page', 1, 0),
(17, 'actionProductDelete', 'Product deletion', 'This hook is called when a product is deleted', 1, 0),
(18, 'displayFooterProduct', 'Product footer', 'This hook adds new blocks under the product''s description', 1, 1),
(19, 'displayInvoice', 'Invoice', 'This hook displays new blocks on the invoice (order)', 1, 0),
(20, 'actionOrderStatusUpdate', 'Order status update - Event', 'This hook launches modules when the status of an order changes.', 1, 0),
(21, 'displayAdminOrder', 'Display new elements in the Back Office, tab AdminOrder', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office', 1, 0),
(22, 'displayFooter', 'Footer', 'This hook displays new blocks in the footer', 1, 0),
(23, 'displayPDFInvoice', 'PDF Invoice', 'This hook allows you to display additional information on PDF invoices', 1, 0),
(24, 'displayAdminCustomers', 'Display new elements in the Back Office, tab AdminCustomers', 'This hook launches modules when the AdminCustomers tab is displayed in the Back Office', 1, 0),
(25, 'displayOrderConfirmation', 'Order confirmation page', 'This hook is called within an order''s confirmation page', 1, 0),
(26, 'actionCustomerAccountAdd', 'Successful customer account creation', 'This hook is called when a new customer creates an account successfully', 1, 0),
(27, 'displayCustomerAccount', 'Customer account displayed in Front Office', 'This hook displays new elements on the customer account page', 1, 0),
(28, 'actionOrderSlipAdd', 'Order slip creation', 'This hook is called when a new credit slip is added regarding client order', 1, 0),
(29, 'displayProductTab', 'Tabs on product page', 'This hook is called on the product page''s tab', 1, 0),
(30, 'displayProductTabContent', 'Tabs content on the product page', 'This hook is called on the product page''s tab', 1, 0),
(31, 'displayShoppingCartFooter', 'Shopping cart footer', 'This hook displays some specific information on the shopping cart''s page', 1, 0),
(32, 'displayCustomerAccountForm', 'Customer account creation form', 'This hook displays some information on the form to create a customer account', 1, 0),
(33, 'displayAdminStatsModules', 'Stats - Modules', '', 1, 0),
(34, 'displayAdminStatsGraphEngine', 'Graph engines', '', 1, 0),
(35, 'actionOrderReturn', 'Returned product', 'This hook is displayed when a customer returns a product ', 1, 0),
(36, 'displayProductButtons', 'Product page actions', 'This hook adds new action buttons on the product page', 1, 0),
(37, 'displayBackOfficeHome', 'Administration panel homepage', 'This hook is displayed on the admin panel''s homepage', 1, 0),
(38, 'displayAdminStatsGridEngine', 'Grid engines', '', 1, 0),
(39, 'actionWatermark', 'Watermark', '', 1, 0),
(40, 'actionProductCancel', 'Product cancelled', 'This hook is called when you cancel a product in an order', 1, 0),
(41, 'displayLeftColumnProduct', 'New elements on the product page (left column)', 'This hook displays new elements in the left-hand column of the product page', 1, 0),
(42, 'actionProductOutOfStock', 'Out-of-stock product', 'This hook displays new action buttons if a product is out of stock', 1, 0),
(43, 'actionProductAttributeUpdate', 'Product attribute update', 'This hook is displayed when a product''s attribute is updated', 1, 0),
(44, 'displayCarrierList', 'Extra carrier (module mode)', '', 1, 0),
(45, 'displayShoppingCart', 'Shopping cart - Additional button', 'This hook displays new action buttons within the shopping cart', 1, 0),
(46, 'actionSearch', 'Search', '', 1, 0),
(47, 'displayBeforePayment', 'Redirect during the order process', 'This hook redirects the user to the module instead of displaying payment modules', 1, 0),
(48, 'actionCarrierUpdate', 'Carrier Update', 'This hook is called when a carrier is updated', 1, 0),
(49, 'actionOrderStatusPostUpdate', 'Post update of order status', '', 1, 0),
(50, 'displayCustomerAccountFormTop', 'Block above the form for create an account', 'This hook is displayed above the customer''s account creation form', 1, 0),
(51, 'displayBackOfficeHeader', 'Administration panel header', 'This hook is displayed in the header of the admin panel', 1, 0),
(52, 'displayBackOfficeTop', 'Administration panel hover the tabs', 'This hook is displayed on the roll hover of the tabs within the admin panel', 1, 0),
(53, 'displayBackOfficeFooter', 'Administration panel footer', 'This hook is displayed within the admin panel''s footer', 1, 0),
(54, 'actionProductAttributeDelete', 'Product attribute deletion', 'This hook is displayed when a product''s attribute is deleted', 1, 0),
(55, 'actionCarrierProcess', 'Carrier process', '', 1, 0),
(56, 'actionOrderDetail', 'Order detail', 'This hook is used to set the follow-up in Smarty when an order''s detail is called', 1, 0),
(57, 'displayBeforeCarrier', 'Before carriers list', 'This hook is displayed before the carrier list in Front Office', 1, 0),
(58, 'displayOrderDetail', 'Order detail', 'This hook is displayed within the order''s details in Front Office', 1, 0),
(59, 'actionPaymentCCAdd', 'Payment CC added', '', 1, 0),
(60, 'displayProductComparison', 'Extra product comparison', '', 1, 0),
(61, 'actionCategoryAdd', 'Category creation', 'This hook is displayed when a category is created', 1, 0),
(62, 'actionCategoryUpdate', 'Category modification', 'This hook is displayed when a category is modified', 1, 0),
(63, 'actionCategoryDelete', 'Category deletion', 'This hook is displayed when a category is deleted', 1, 0),
(64, 'actionBeforeAuthentication', 'Before authentication', 'This hook is displayed before the customer''s authentication', 1, 0),
(65, 'displayPaymentTop', 'Top of payment page', 'This hook is displayed at the top of the payment page', 1, 0),
(66, 'actionHtaccessCreate', 'After htaccess creation', 'This hook is displayed after the htaccess creation', 1, 0),
(67, 'actionAdminMetaSave', 'After saving the configuration in AdminMeta', 'This hook is displayed after saving the configuration in AdminMeta', 1, 0),
(68, 'displayAttributeGroupForm', 'Add fields to the form ''attribute group''', 'This hook adds fields to the form ''attribute group''', 1, 0),
(69, 'actionAttributeGroupSave', 'Saving an attribute group', 'This hook is called while saving an attributes group', 1, 0),
(70, 'actionAttributeGroupDelete', 'Deleting attribute group', 'This hook is called while deleting an attributes  group', 1, 0),
(71, 'displayFeatureForm', 'Add fields to the form ''feature''', 'This hook adds fields to the form ''feature''', 1, 0),
(72, 'actionFeatureSave', 'Saving attributes'' features', 'This hook is called while saving an attributes features', 1, 0),
(73, 'actionFeatureDelete', 'Deleting attributes'' features', 'This hook is called while deleting an attributes features', 1, 0),
(74, 'actionProductSave', 'Saving products', 'This hook is called while saving products', 1, 0),
(75, 'actionProductListOverride', 'Assign a products list to a category', 'This hook assigns a products list to a category', 1, 0),
(76, 'displayAttributeGroupPostProcess', 'On post-process in admin attribute group', 'This hook is called on post-process in admin attribute group', 1, 0),
(77, 'displayFeaturePostProcess', 'On post-process in admin feature', 'This hook is called on post-process in admin feature', 1, 0),
(78, 'displayFeatureValueForm', 'Add fields to the form ''feature value''', 'This hook adds fields to the form ''feature value''', 1, 0),
(79, 'displayFeatureValuePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(80, 'actionFeatureValueDelete', 'Deleting attributes'' features'' values', 'This hook is called while deleting an attributes features value', 1, 0),
(81, 'actionFeatureValueSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(82, 'displayAttributeForm', 'Add fields to the form ''attribute value''', 'This hook adds fields to the form ''attribute value''', 1, 0),
(83, 'actionAttributePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(84, 'actionAttributeDelete', 'Deleting an attributes features value', 'This hook is called while deleting an attributes features value', 1, 0),
(85, 'actionAttributeSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(86, 'actionTaxManager', 'Tax Manager Factory', '', 1, 0),
(87, 'displayMyAccountBlock', 'My account block', 'This hook displays extra information within the ''my account'' block"', 1, 0),
(88, 'actionModuleInstallBefore', 'actionModuleInstallBefore', '', 1, 0),
(89, 'actionModuleInstallAfter', 'actionModuleInstallAfter', '', 1, 0),
(90, 'displayHomeTab', 'Home Page Tabs', 'This hook displays new elements on the homepage tabs', 1, 1),
(91, 'displayHomeTabContent', 'Home Page Tabs Content', 'This hook displays new elements on the homepage tabs content', 1, 1),
(92, 'displayTopColumn', 'Top column blocks', 'This hook displays new elements in the top of columns', 1, 1),
(93, 'displayBackOfficeCategory', 'Display new elements in the Back Office, tab AdminCategories', 'This hook launches modules when the AdminCategories tab is displayed in the Back Office', 1, 0),
(94, 'displayProductListFunctionalButtons', 'Display new elements in the Front Office, products list', 'This hook launches modules when the products list is displayed in the Front Office', 1, 0),
(95, 'displayNav', 'Navigation', '', 1, 1),
(96, 'actionObjectProductUpdateAfter', 'actionObjectProductUpdateAfter', '', 0, 0),
(97, 'actionObjectProductDeleteAfter', 'actionObjectProductDeleteAfter', '', 0, 0),
(98, 'displayCompareExtraInformation', 'displayCompareExtraInformation', '', 0, 1),
(99, 'displayBanner', 'displayBanner', '', 0, 1),
(100, 'actionObjectLanguageAddAfter', 'actionObjectLanguageAddAfter', '', 0, 0),
(101, 'actionCartListOverride', 'actionCartListOverride', '', 0, 0),
(102, 'actionAdminMetaControllerUpdate_optionsBefore', 'actionAdminMetaControllerUpdate_optionsBefore', '', 0, 0),
(103, 'actionAdminLanguagesControllerStatusBefore', 'actionAdminLanguagesControllerStatusBefore', '', 0, 0),
(104, 'actionObjectCmsUpdateAfter', 'actionObjectCmsUpdateAfter', '', 0, 0),
(105, 'actionObjectCmsDeleteAfter', 'actionObjectCmsDeleteAfter', '', 0, 0),
(106, 'actionShopDataDuplication', 'actionShopDataDuplication', '', 0, 0),
(107, 'actionAdminStoresControllerUpdate_optionsAfter', 'actionAdminStoresControllerUpdate_optionsAfter', '', 0, 0),
(108, 'actionObjectManufacturerDeleteAfter', 'actionObjectManufacturerDeleteAfter', '', 0, 0),
(109, 'actionObjectManufacturerAddAfter', 'actionObjectManufacturerAddAfter', '', 0, 0),
(110, 'actionObjectManufacturerUpdateAfter', 'actionObjectManufacturerUpdateAfter', '', 0, 0),
(112, 'actionModuleRegisterHookAfter', 'actionModuleRegisterHookAfter', '', 0, 0),
(113, 'actionModuleUnRegisterHookAfter', 'actionModuleUnRegisterHookAfter', '', 0, 0),
(114, 'displayMyAccountBlockfooter', 'My account block', 'Display extra informations inside the "my account" block', 1, 0),
(115, 'displayMobileTopSiteMap', 'displayMobileTopSiteMap', '', 0, 1),
(116, 'actionObjectSupplierDeleteAfter', 'actionObjectSupplierDeleteAfter', '', 0, 0),
(117, 'actionObjectSupplierAddAfter', 'actionObjectSupplierAddAfter', '', 0, 0),
(118, 'actionObjectSupplierUpdateAfter', 'actionObjectSupplierUpdateAfter', '', 0, 0),
(119, 'actionObjectCategoryUpdateAfter', 'actionObjectCategoryUpdateAfter', '', 0, 0),
(120, 'actionObjectCategoryDeleteAfter', 'actionObjectCategoryDeleteAfter', '', 0, 0),
(121, 'actionObjectCategoryAddAfter', 'actionObjectCategoryAddAfter', '', 0, 0),
(122, 'actionObjectCmsAddAfter', 'actionObjectCmsAddAfter', '', 0, 0),
(123, 'actionObjectProductAddAfter', 'actionObjectProductAddAfter', '', 0, 0),
(124, 'dashboardZoneOne', 'dashboardZoneOne', '', 0, 0),
(125, 'dashboardData', 'dashboardData', '', 0, 0),
(126, 'actionObjectOrderAddAfter', 'actionObjectOrderAddAfter', '', 0, 0),
(127, 'actionObjectCustomerAddAfter', 'actionObjectCustomerAddAfter', '', 0, 0),
(128, 'actionObjectCustomerMessageAddAfter', 'actionObjectCustomerMessageAddAfter', '', 0, 0),
(129, 'actionObjectCustomerThreadAddAfter', 'actionObjectCustomerThreadAddAfter', '', 0, 0),
(130, 'actionObjectOrderReturnAddAfter', 'actionObjectOrderReturnAddAfter', '', 0, 0),
(131, 'actionAdminControllerSetMedia', 'actionAdminControllerSetMedia', '', 0, 0),
(132, 'dashboardZoneTwo', 'dashboardZoneTwo', '', 0, 0),
(133, 'displayProductListReviews', 'displayProductListReviews', '', 0, 1),
(134, 'actionAdminMetaControllerUpdate_optionsAfter', 'actionAdminMetaControllerUpdate_optionsAfter', '', 0, 0),
(135, 'actionAdminPerformanceControllerSaveAfter', 'actionAdminPerformanceControllerSaveAfter', '', 0, 0),
(136, 'actionObjectCarrierAddAfter', 'actionObjectCarrierAddAfter', '', 0, 0),
(137, 'actionObjectContactAddAfter', 'actionObjectContactAddAfter', '', 0, 0),
(138, 'actionAdminThemesControllerUpdate_optionsAfter', 'actionAdminThemesControllerUpdate_optionsAfter', '', 0, 0),
(139, 'actionObjectShopUpdateAfter', 'actionObjectShopUpdateAfter', '', 0, 0),
(140, 'actionAdminPreferencesControllerUpdate_optionsAfter', 'actionAdminPreferencesControllerUpdate_optionsAfter', '', 0, 0),
(141, 'actionObjectShopAddAfter', 'actionObjectShopAddAfter', '', 0, 0),
(142, 'actionObjectShopGroupAddAfter', 'actionObjectShopGroupAddAfter', '', 0, 0),
(143, 'actionObjectCartAddAfter', 'actionObjectCartAddAfter', '', 0, 0),
(144, 'actionObjectEmployeeAddAfter', 'actionObjectEmployeeAddAfter', '', 0, 0),
(145, 'actionObjectImageAddAfter', 'actionObjectImageAddAfter', '', 0, 0),
(146, 'actionObjectCartRuleAddAfter', 'actionObjectCartRuleAddAfter', '', 0, 0),
(147, 'actionAdminStoresControllerSaveAfter', 'actionAdminStoresControllerSaveAfter', '', 0, 0),
(148, 'actionAdminWebserviceControllerSaveAfter', 'actionAdminWebserviceControllerSaveAfter', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_alias`
--

CREATE TABLE IF NOT EXISTS `ps_hook_alias` (
  `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `ps_hook_alias`
--

INSERT INTO `ps_hook_alias` (`id_hook_alias`, `alias`, `name`) VALUES
(1, 'payment', 'displayPayment'),
(2, 'newOrder', 'actionValidateOrder'),
(3, 'paymentConfirm', 'actionPaymentConfirmation'),
(4, 'paymentReturn', 'displayPaymentReturn'),
(5, 'updateQuantity', 'actionUpdateQuantity'),
(6, 'rightColumn', 'displayRightColumn'),
(7, 'leftColumn', 'displayLeftColumn'),
(8, 'home', 'displayHome'),
(9, 'header', 'displayHeader'),
(10, 'cart', 'actionCartSave'),
(11, 'authentication', 'actionAuthentication'),
(12, 'addproduct', 'actionProductAdd'),
(13, 'updateproduct', 'actionProductUpdate'),
(14, 'top', 'displayTop'),
(15, 'extraRight', 'displayRightColumnProduct'),
(16, 'deleteproduct', 'actionProductDelete'),
(17, 'productfooter', 'displayFooterProduct'),
(18, 'invoice', 'displayInvoice'),
(19, 'updateOrderStatus', 'actionOrderStatusUpdate'),
(20, 'adminOrder', 'displayAdminOrder'),
(21, 'footer', 'displayFooter'),
(22, 'PDFInvoice', 'displayPDFInvoice'),
(23, 'adminCustomers', 'displayAdminCustomers'),
(24, 'orderConfirmation', 'displayOrderConfirmation'),
(25, 'createAccount', 'actionCustomerAccountAdd'),
(26, 'customerAccount', 'displayCustomerAccount'),
(27, 'orderSlip', 'actionOrderSlipAdd'),
(28, 'productTab', 'displayProductTab'),
(29, 'productTabContent', 'displayProductTabContent'),
(30, 'shoppingCart', 'displayShoppingCartFooter'),
(31, 'createAccountForm', 'displayCustomerAccountForm'),
(32, 'AdminStatsModules', 'displayAdminStatsModules'),
(33, 'GraphEngine', 'displayAdminStatsGraphEngine'),
(34, 'orderReturn', 'actionOrderReturn'),
(35, 'productActions', 'displayProductButtons'),
(36, 'backOfficeHome', 'displayBackOfficeHome'),
(37, 'GridEngine', 'displayAdminStatsGridEngine'),
(38, 'watermark', 'actionWatermark'),
(39, 'cancelProduct', 'actionProductCancel'),
(40, 'extraLeft', 'displayLeftColumnProduct'),
(41, 'productOutOfStock', 'actionProductOutOfStock'),
(42, 'updateProductAttribute', 'actionProductAttributeUpdate'),
(43, 'extraCarrier', 'displayCarrierList'),
(44, 'shoppingCartExtra', 'displayShoppingCart'),
(45, 'search', 'actionSearch'),
(46, 'backBeforePayment', 'displayBeforePayment'),
(47, 'updateCarrier', 'actionCarrierUpdate'),
(48, 'postUpdateOrderStatus', 'actionOrderStatusPostUpdate'),
(49, 'createAccountTop', 'displayCustomerAccountFormTop'),
(50, 'backOfficeHeader', 'displayBackOfficeHeader'),
(51, 'backOfficeTop', 'displayBackOfficeTop'),
(52, 'backOfficeFooter', 'displayBackOfficeFooter'),
(53, 'deleteProductAttribute', 'actionProductAttributeDelete'),
(54, 'processCarrier', 'actionCarrierProcess'),
(55, 'orderDetail', 'actionOrderDetail'),
(56, 'beforeCarrier', 'displayBeforeCarrier'),
(57, 'orderDetailDisplayed', 'displayOrderDetail'),
(58, 'paymentCCAdded', 'actionPaymentCCAdd'),
(59, 'extraProductComparison', 'displayProductComparison'),
(60, 'categoryAddition', 'actionCategoryAdd'),
(61, 'categoryUpdate', 'actionCategoryUpdate'),
(62, 'categoryDeletion', 'actionCategoryDelete'),
(63, 'beforeAuthentication', 'actionBeforeAuthentication'),
(64, 'paymentTop', 'displayPaymentTop'),
(65, 'afterCreateHtaccess', 'actionHtaccessCreate'),
(66, 'afterSaveAdminMeta', 'actionAdminMetaSave'),
(67, 'attributeGroupForm', 'displayAttributeGroupForm'),
(68, 'afterSaveAttributeGroup', 'actionAttributeGroupSave'),
(69, 'afterDeleteAttributeGroup', 'actionAttributeGroupDelete'),
(70, 'featureForm', 'displayFeatureForm'),
(71, 'afterSaveFeature', 'actionFeatureSave'),
(72, 'afterDeleteFeature', 'actionFeatureDelete'),
(73, 'afterSaveProduct', 'actionProductSave'),
(74, 'productListAssign', 'actionProductListOverride'),
(75, 'postProcessAttributeGroup', 'displayAttributeGroupPostProcess'),
(76, 'postProcessFeature', 'displayFeaturePostProcess'),
(77, 'featureValueForm', 'displayFeatureValueForm'),
(78, 'postProcessFeatureValue', 'displayFeatureValuePostProcess'),
(79, 'afterDeleteFeatureValue', 'actionFeatureValueDelete'),
(80, 'afterSaveFeatureValue', 'actionFeatureValueSave'),
(81, 'attributeForm', 'displayAttributeForm'),
(82, 'postProcessAttribute', 'actionAttributePostProcess'),
(83, 'afterDeleteAttribute', 'actionAttributeDelete'),
(84, 'afterSaveAttribute', 'actionAttributeSave'),
(85, 'taxManager', 'actionTaxManager'),
(86, 'myAccountBlock', 'displayMyAccountBlock');

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_module`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_hook_module`
--

INSERT INTO `ps_hook_module` (`id_module`, `id_shop`, `id_hook`, `position`) VALUES
(1, 1, 10, 1),
(1, 1, 16, 1),
(1, 1, 96, 1),
(1, 1, 97, 1),
(1, 1, 98, 1),
(2, 1, 99, 1),
(2, 1, 100, 1),
(3, 1, 1, 1),
(3, 1, 5, 1),
(4, 1, 8, 1),
(4, 1, 13, 1),
(4, 1, 14, 1),
(4, 1, 17, 1),
(4, 1, 49, 1),
(5, 1, 101, 1),
(7, 1, 61, 1),
(7, 1, 62, 1),
(7, 1, 63, 1),
(7, 1, 93, 1),
(7, 1, 102, 1),
(7, 1, 103, 1),
(11, 1, 68, 1),
(11, 1, 69, 1),
(11, 1, 70, 1),
(11, 1, 71, 1),
(11, 1, 72, 1),
(11, 1, 73, 1),
(11, 1, 74, 1),
(11, 1, 75, 1),
(11, 1, 76, 1),
(11, 1, 77, 1),
(11, 1, 78, 1),
(11, 1, 79, 1),
(11, 1, 80, 1),
(11, 1, 81, 1),
(11, 1, 82, 1),
(11, 1, 83, 1),
(11, 1, 84, 1),
(11, 1, 85, 1),
(12, 1, 104, 1),
(12, 1, 105, 1),
(12, 1, 106, 1),
(12, 1, 107, 1),
(16, 1, 108, 1),
(16, 1, 109, 1),
(16, 1, 110, 1),
(17, 1, 112, 1),
(17, 1, 113, 1),
(19, 1, 90, 1),
(19, 1, 91, 1),
(20, 1, 22, 1),
(20, 1, 26, 1),
(22, 1, 15, 1),
(22, 1, 115, 1),
(25, 1, 116, 1),
(25, 1, 117, 1),
(25, 1, 118, 1),
(27, 1, 119, 1),
(27, 1, 120, 1),
(27, 1, 121, 1),
(27, 1, 122, 1),
(27, 1, 123, 1),
(28, 1, 95, 1),
(31, 1, 124, 1),
(31, 1, 125, 1),
(31, 1, 126, 1),
(31, 1, 127, 1),
(31, 1, 128, 1),
(31, 1, 129, 1),
(31, 1, 130, 1),
(31, 1, 131, 1),
(32, 1, 132, 1),
(34, 1, 46, 1),
(35, 1, 34, 1),
(36, 1, 38, 1),
(37, 1, 92, 1),
(40, 1, 33, 1),
(50, 1, 12, 1),
(63, 1, 9, 1),
(63, 1, 51, 1),
(64, 1, 2, 1),
(64, 1, 20, 1),
(64, 1, 89, 1),
(64, 1, 134, 1),
(64, 1, 135, 1),
(64, 1, 136, 1),
(64, 1, 137, 1),
(64, 1, 138, 1),
(64, 1, 139, 1),
(64, 1, 140, 1),
(64, 1, 141, 1),
(64, 1, 142, 1),
(64, 1, 143, 1),
(64, 1, 144, 1),
(64, 1, 145, 1),
(64, 1, 146, 1),
(64, 1, 147, 1),
(64, 1, 148, 1),
(65, 1, 11, 1),
(65, 1, 24, 1),
(65, 1, 27, 1),
(65, 1, 36, 1),
(65, 1, 87, 1),
(65, 1, 94, 1),
(66, 1, 29, 1),
(66, 1, 30, 1),
(66, 1, 60, 1),
(66, 1, 133, 1),
(67, 1, 41, 1),
(2, 1, 10, 2),
(5, 1, 15, 2),
(6, 1, 22, 2),
(7, 1, 8, 2),
(8, 1, 95, 2),
(9, 1, 9, 2),
(11, 1, 61, 2),
(11, 1, 62, 2),
(11, 1, 63, 2),
(18, 1, 112, 2),
(18, 1, 113, 2),
(19, 1, 13, 2),
(19, 1, 14, 2),
(19, 1, 17, 2),
(27, 1, 96, 2),
(27, 1, 97, 2),
(27, 1, 104, 2),
(27, 1, 105, 2),
(27, 1, 106, 2),
(27, 1, 108, 2),
(27, 1, 109, 2),
(27, 1, 110, 2),
(27, 1, 116, 2),
(27, 1, 117, 2),
(27, 1, 118, 2),
(30, 1, 1, 2),
(30, 1, 5, 2),
(32, 1, 49, 2),
(32, 1, 125, 2),
(32, 1, 131, 2),
(33, 1, 132, 2),
(34, 1, 126, 2),
(38, 1, 90, 2),
(38, 1, 91, 2),
(39, 1, 36, 2),
(41, 1, 33, 2),
(50, 1, 26, 2),
(60, 1, 46, 2),
(63, 1, 92, 2),
(63, 1, 100, 2),
(64, 1, 51, 2),
(64, 1, 107, 2),
(64, 1, 122, 2),
(64, 1, 123, 2),
(64, 1, 127, 2),
(64, 1, 129, 2),
(66, 1, 16, 2),
(4, 1, 10, 3),
(4, 1, 90, 3),
(4, 1, 91, 3),
(7, 1, 22, 3),
(10, 1, 95, 3),
(11, 1, 8, 3),
(13, 1, 9, 3),
(23, 1, 13, 3),
(23, 1, 14, 3),
(23, 1, 17, 3),
(27, 1, 15, 3),
(27, 1, 62, 3),
(33, 1, 125, 3),
(33, 1, 131, 3),
(34, 1, 132, 3),
(37, 1, 106, 3),
(42, 1, 33, 3),
(64, 1, 126, 3),
(5, 1, 10, 4),
(12, 1, 8, 4),
(12, 1, 22, 4),
(14, 1, 95, 4),
(28, 1, 15, 4),
(34, 1, 125, 4),
(35, 1, 131, 4),
(38, 1, 13, 4),
(38, 1, 14, 4),
(38, 1, 17, 4),
(38, 1, 62, 4),
(43, 1, 33, 4),
(6, 1, 10, 5),
(16, 1, 8, 5),
(18, 1, 22, 5),
(40, 1, 15, 5),
(44, 1, 33, 5),
(7, 1, 10, 6),
(15, 1, 22, 6),
(17, 1, 8, 6),
(41, 1, 15, 6),
(45, 1, 33, 6),
(8, 1, 10, 7),
(19, 1, 8, 7),
(46, 1, 33, 7),
(50, 1, 22, 7),
(65, 1, 15, 7),
(9, 1, 10, 8),
(21, 1, 8, 8),
(47, 1, 33, 8),
(63, 1, 22, 8),
(10, 1, 10, 9),
(23, 1, 8, 9),
(48, 1, 33, 9),
(11, 1, 10, 10),
(24, 1, 8, 10),
(49, 1, 33, 10),
(12, 1, 10, 11),
(25, 1, 8, 11),
(51, 1, 33, 11),
(14, 1, 10, 12),
(26, 1, 8, 12),
(52, 1, 33, 12),
(15, 1, 10, 13),
(29, 1, 8, 13),
(53, 1, 33, 13),
(16, 1, 10, 14),
(54, 1, 33, 14),
(63, 1, 8, 14),
(17, 1, 10, 15),
(55, 1, 33, 15),
(18, 1, 10, 16),
(56, 1, 33, 16),
(19, 1, 10, 17),
(57, 1, 33, 17),
(20, 1, 10, 18),
(58, 1, 33, 18),
(21, 1, 10, 19),
(59, 1, 33, 19),
(22, 1, 10, 20),
(60, 1, 33, 20),
(23, 1, 10, 21),
(61, 1, 33, 21),
(24, 1, 10, 22),
(62, 1, 33, 22),
(25, 1, 10, 23),
(26, 1, 10, 24),
(28, 1, 10, 25),
(29, 1, 10, 26),
(37, 1, 10, 27),
(38, 1, 10, 28),
(39, 1, 10, 29),
(63, 1, 10, 30),
(65, 1, 10, 31),
(66, 1, 10, 32),
(67, 1, 10, 33);

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_module_exceptions`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_hook_module_exceptions`
--

INSERT INTO `ps_hook_module_exceptions` (`id_hook_module_exceptions`, `id_shop`, `id_module`, `id_hook`, `file_name`) VALUES
(1, 1, 4, 8, 'category'),
(2, 1, 16, 8, 'category'),
(3, 1, 17, 8, 'category'),
(4, 1, 21, 8, 'category'),
(5, 1, 25, 8, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `ps_image`
--

CREATE TABLE IF NOT EXISTS `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ps_image`
--

INSERT INTO `ps_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 2, 1, 0),
(6, 2, 2, 0),
(7, 2, 3, 1),
(8, 3, 1, 1),
(9, 3, 2, 0),
(10, 4, 1, 1),
(11, 4, 2, 0),
(12, 5, 1, 1),
(13, 5, 2, 0),
(14, 5, 3, 0),
(15, 5, 4, 0),
(16, 6, 1, 1),
(17, 6, 2, 0),
(18, 6, 3, 0),
(19, 6, 4, 0),
(20, 7, 1, 1),
(21, 7, 2, 0),
(22, 7, 3, 0),
(23, 7, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_lang`
--

CREATE TABLE IF NOT EXISTS `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_image_lang`
--

INSERT INTO `ps_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(1, 1, ''),
(1, 2, ''),
(2, 1, ''),
(2, 2, ''),
(3, 1, ''),
(3, 2, ''),
(4, 1, ''),
(4, 2, ''),
(5, 1, ''),
(5, 2, ''),
(6, 1, ''),
(6, 2, ''),
(7, 1, ''),
(7, 2, ''),
(8, 1, ''),
(8, 2, ''),
(9, 1, ''),
(9, 2, ''),
(10, 1, ''),
(10, 2, ''),
(11, 1, ''),
(11, 2, ''),
(12, 1, ''),
(12, 2, ''),
(13, 1, ''),
(13, 2, ''),
(14, 1, ''),
(14, 2, ''),
(15, 1, ''),
(15, 2, ''),
(16, 1, ''),
(16, 2, ''),
(17, 1, ''),
(17, 2, ''),
(18, 1, ''),
(18, 2, ''),
(19, 1, ''),
(19, 2, ''),
(20, 1, ''),
(20, 2, ''),
(21, 1, ''),
(21, 2, ''),
(22, 1, ''),
(22, 2, ''),
(23, 1, ''),
(23, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_shop`
--

CREATE TABLE IF NOT EXISTS `ps_image_shop` (
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) NOT NULL,
  KEY `id_image` (`id_image`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_image_shop`
--

INSERT INTO `ps_image_shop` (`id_image`, `id_shop`, `cover`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 1),
(8, 1, 1),
(9, 1, 0),
(10, 1, 1),
(11, 1, 0),
(12, 1, 1),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 1),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(20, 1, 1),
(21, 1, 0),
(22, 1, 0),
(23, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_type`
--

CREATE TABLE IF NOT EXISTS `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_image_type`
--

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(1, 'cart_default', 80, 80, 1, 0, 0, 0, 0, 0),
(2, 'small_default', 98, 98, 1, 0, 1, 1, 0, 0),
(3, 'medium_default', 125, 125, 1, 1, 1, 1, 0, 1),
(4, 'home_default', 250, 250, 1, 0, 0, 0, 0, 0),
(5, 'large_default', 458, 458, 1, 0, 1, 1, 0, 0),
(6, 'thickbox_default', 800, 800, 1, 0, 0, 0, 0, 0),
(7, 'category_default', 870, 217, 0, 1, 0, 0, 0, 0),
(8, 'scene_default', 870, 270, 0, 0, 0, 0, 1, 0),
(9, 'm_scene_default', 161, 58, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_import_match`
--

CREATE TABLE IF NOT EXISTS `ps_import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_info`
--

CREATE TABLE IF NOT EXISTS `ps_info` (
  `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_info`
--

INSERT INTO `ps_info` (`id_info`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_info_lang`
--

CREATE TABLE IF NOT EXISTS `ps_info_lang` (
  `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_info`,`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_info_lang`
--

INSERT INTO `ps_info_lang` (`id_info`, `id_lang`, `text`) VALUES
(1, 1, '<ul>\n<li><em class="icon-truck" id="icon-truck"></em>\n<div class="type-text">\n<h3>Lorem Ipsum</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-phone" id="icon-phone"></em>\n<div class="type-text">\n<h3>Dolor Sit Amet</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-credit-card" id="icon-credit-card"></em>\n<div class="type-text">\n<h3>Ctetur Voluptate</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n</ul>'),
(1, 2, '<ul>\n<li><em class="icon-truck" id="icon-truck"></em>\n<div class="type-text">\n<h3>Lorem Ipsum</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-phone" id="icon-phone"></em>\n<div class="type-text">\n<h3>Dolor Sit Amet</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-credit-card" id="icon-credit-card"></em>\n<div class="type-text">\n<h3>Ctetur Voluptate</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n</ul>'),
(2, 1, '<h3>Custom Block</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>'),
(2, 2, '<h3>Custom Block</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ps_lang`
--

CREATE TABLE IF NOT EXISTS `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_lang`
--

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `date_format_lite`, `date_format_full`, `is_rtl`) VALUES
(1, 'English (English)', 1, 'en', 'en-us', 'm/d/Y', 'm/d/Y H:i:s', 0),
(2, 'Indonesian', 1, 'id', 'id-id', 'Y-m-d', 'Y-m-d H:i:s', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_lang_shop`
--

CREATE TABLE IF NOT EXISTS `ps_lang_shop` (
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_lang_shop`
--

INSERT INTO `ps_lang_shop` (`id_lang`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_category`
--

CREATE TABLE IF NOT EXISTS `ps_layered_category` (
  `id_layered_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_value` int(10) unsigned DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `filter_type` int(10) unsigned NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_layered_category`),
  KEY `id_category` (`id_category`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `ps_layered_category`
--

INSERT INTO `ps_layered_category` (`id_layered_category`, `id_shop`, `id_category`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`) VALUES
(1, 1, 3, NULL, 'category', 1, 0, 0),
(2, 1, 3, 1, 'id_attribute_group', 2, 0, 0),
(3, 1, 3, 3, 'id_attribute_group', 3, 0, 0),
(4, 1, 3, 5, 'id_feature', 4, 0, 0),
(5, 1, 3, 6, 'id_feature', 5, 0, 0),
(6, 1, 3, 7, 'id_feature', 6, 0, 0),
(7, 1, 3, NULL, 'quantity', 7, 0, 0),
(8, 1, 3, NULL, 'manufacturer', 8, 0, 0),
(9, 1, 3, NULL, 'condition', 9, 0, 0),
(10, 1, 3, NULL, 'weight', 10, 0, 0),
(11, 1, 3, NULL, 'price', 11, 0, 0),
(12, 1, 5, NULL, 'category', 1, 0, 0),
(13, 1, 5, 1, 'id_attribute_group', 2, 0, 0),
(14, 1, 5, 3, 'id_attribute_group', 3, 0, 0),
(15, 1, 5, 5, 'id_feature', 4, 0, 0),
(16, 1, 5, 6, 'id_feature', 5, 0, 0),
(17, 1, 5, 7, 'id_feature', 6, 0, 0),
(18, 1, 5, NULL, 'quantity', 7, 0, 0),
(19, 1, 5, NULL, 'manufacturer', 8, 0, 0),
(20, 1, 5, NULL, 'condition', 9, 0, 0),
(21, 1, 5, NULL, 'weight', 10, 0, 0),
(22, 1, 5, NULL, 'price', 11, 0, 0),
(23, 1, 2, NULL, 'category', 1, 0, 0),
(24, 1, 2, 1, 'id_attribute_group', 2, 0, 0),
(25, 1, 2, 3, 'id_attribute_group', 3, 0, 0),
(26, 1, 2, 5, 'id_feature', 4, 0, 0),
(27, 1, 2, 6, 'id_feature', 5, 0, 0),
(28, 1, 2, 7, 'id_feature', 6, 0, 0),
(29, 1, 2, NULL, 'quantity', 7, 0, 0),
(30, 1, 2, NULL, 'manufacturer', 8, 0, 0),
(31, 1, 2, NULL, 'condition', 9, 0, 0),
(32, 1, 2, NULL, 'weight', 10, 0, 0),
(33, 1, 2, NULL, 'price', 11, 0, 0),
(34, 1, 4, NULL, 'category', 1, 0, 0),
(35, 1, 4, 1, 'id_attribute_group', 2, 0, 0),
(36, 1, 4, 3, 'id_attribute_group', 3, 0, 0),
(37, 1, 4, 5, 'id_feature', 4, 0, 0),
(38, 1, 4, 6, 'id_feature', 5, 0, 0),
(39, 1, 4, 7, 'id_feature', 6, 0, 0),
(40, 1, 4, NULL, 'quantity', 7, 0, 0),
(41, 1, 4, NULL, 'manufacturer', 8, 0, 0),
(42, 1, 4, NULL, 'condition', 9, 0, 0),
(43, 1, 4, NULL, 'weight', 10, 0, 0),
(44, 1, 4, NULL, 'price', 11, 0, 0),
(45, 1, 7, NULL, 'category', 1, 0, 0),
(46, 1, 7, 1, 'id_attribute_group', 2, 0, 0),
(47, 1, 7, 3, 'id_attribute_group', 3, 0, 0),
(48, 1, 7, 5, 'id_feature', 4, 0, 0),
(49, 1, 7, 6, 'id_feature', 5, 0, 0),
(50, 1, 7, 7, 'id_feature', 6, 0, 0),
(51, 1, 7, NULL, 'quantity', 7, 0, 0),
(52, 1, 7, NULL, 'manufacturer', 8, 0, 0),
(53, 1, 7, NULL, 'condition', 9, 0, 0),
(54, 1, 7, NULL, 'weight', 10, 0, 0),
(55, 1, 7, NULL, 'price', 11, 0, 0),
(56, 1, 8, NULL, 'category', 1, 0, 0),
(57, 1, 8, 1, 'id_attribute_group', 2, 0, 0),
(58, 1, 8, 3, 'id_attribute_group', 3, 0, 0),
(59, 1, 8, 5, 'id_feature', 4, 0, 0),
(60, 1, 8, 6, 'id_feature', 5, 0, 0),
(61, 1, 8, 7, 'id_feature', 6, 0, 0),
(62, 1, 8, NULL, 'quantity', 7, 0, 0),
(63, 1, 8, NULL, 'manufacturer', 8, 0, 0),
(64, 1, 8, NULL, 'condition', 9, 0, 0),
(65, 1, 8, NULL, 'weight', 10, 0, 0),
(66, 1, 8, NULL, 'price', 11, 0, 0),
(67, 1, 9, NULL, 'category', 1, 0, 0),
(68, 1, 9, 1, 'id_attribute_group', 2, 0, 0),
(69, 1, 9, 3, 'id_attribute_group', 3, 0, 0),
(70, 1, 9, 5, 'id_feature', 4, 0, 0),
(71, 1, 9, 6, 'id_feature', 5, 0, 0),
(72, 1, 9, 7, 'id_feature', 6, 0, 0),
(73, 1, 9, NULL, 'quantity', 7, 0, 0),
(74, 1, 9, NULL, 'manufacturer', 8, 0, 0),
(75, 1, 9, NULL, 'condition', 9, 0, 0),
(76, 1, 9, NULL, 'weight', 10, 0, 0),
(77, 1, 9, NULL, 'price', 11, 0, 0),
(78, 1, 10, NULL, 'category', 1, 0, 0),
(79, 1, 10, 1, 'id_attribute_group', 2, 0, 0),
(80, 1, 10, 3, 'id_attribute_group', 3, 0, 0),
(81, 1, 10, 5, 'id_feature', 4, 0, 0),
(82, 1, 10, 6, 'id_feature', 5, 0, 0),
(83, 1, 10, 7, 'id_feature', 6, 0, 0),
(84, 1, 10, NULL, 'quantity', 7, 0, 0),
(85, 1, 10, NULL, 'manufacturer', 8, 0, 0),
(86, 1, 10, NULL, 'condition', 9, 0, 0),
(87, 1, 10, NULL, 'weight', 10, 0, 0),
(88, 1, 10, NULL, 'price', 11, 0, 0),
(89, 1, 11, NULL, 'category', 1, 0, 0),
(90, 1, 11, 1, 'id_attribute_group', 2, 0, 0),
(91, 1, 11, 3, 'id_attribute_group', 3, 0, 0),
(92, 1, 11, 5, 'id_feature', 4, 0, 0),
(93, 1, 11, 6, 'id_feature', 5, 0, 0),
(94, 1, 11, 7, 'id_feature', 6, 0, 0),
(95, 1, 11, NULL, 'quantity', 7, 0, 0),
(96, 1, 11, NULL, 'manufacturer', 8, 0, 0),
(97, 1, 11, NULL, 'condition', 9, 0, 0),
(98, 1, 11, NULL, 'weight', 10, 0, 0),
(99, 1, 11, NULL, 'price', 11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_filter`
--

CREATE TABLE IF NOT EXISTS `ps_layered_filter` (
  `id_layered_filter` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `filters` text,
  `n_categories` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_layered_filter`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_layered_filter`
--

INSERT INTO `ps_layered_filter` (`id_layered_filter`, `name`, `filters`, `n_categories`, `date_add`) VALUES
(1, 'My template 2014-05-11', 'a:13:{s:10:"categories";a:9:{i:0;i:3;i:1;i:5;i:2;i:2;i:3;i:4;i:4;i:7;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_1";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_5";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_6";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_7";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 9, '2014-05-11 20:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_filter_shop`
--

CREATE TABLE IF NOT EXISTS `ps_layered_filter_shop` (
  `id_layered_filter` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_layered_filter`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_filter_shop`
--

INSERT INTO `ps_layered_filter_shop` (`id_layered_filter`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_friendly_url`
--

CREATE TABLE IF NOT EXISTS `ps_layered_friendly_url` (
  `id_layered_friendly_url` int(11) NOT NULL AUTO_INCREMENT,
  `url_key` varchar(32) NOT NULL,
  `data` varchar(200) NOT NULL,
  `id_lang` int(11) NOT NULL,
  PRIMARY KEY (`id_layered_friendly_url`),
  KEY `id_lang` (`id_lang`),
  KEY `url_key` (`url_key`(5))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `ps_layered_friendly_url`
--

INSERT INTO `ps_layered_friendly_url` (`id_layered_friendly_url`, `url_key`, `data`, `id_lang`) VALUES
(1, '3f1005f8be7881795fc5feddfdba756f', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 1),
(2, 'e22ad4e9f8f445df1283ec3383c55ed8', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 1),
(3, '929674e49248753da273092629bb45ec', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 1),
(4, 'c66ef06ef2ca8b06dd3d19b70727adb7', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 1),
(5, 'eaaa28d2b62b097bb8706dd014c8203b', 'a:1:{s:8:"category";a:1:{i:8;s:1:"8";}}', 1),
(6, '6fc253242f3fe98946ecdd26762e95eb', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 1),
(7, '03c8c4cf29ea8a405778f138021df5df', 'a:1:{s:8:"category";a:1:{i:7;s:1:"7";}}', 1),
(8, '2def08957abfc829e80d5279c5086b73', 'a:1:{s:8:"category";a:1:{i:9;s:1:"9";}}', 1),
(9, '84ce4d36b2b77bb85d2a7aebd27c8a67', 'a:1:{s:8:"category";a:1:{i:10;s:2:"10";}}', 1),
(10, '3f9036e3dcf0507782e3d6a1d3ca1fe1', 'a:1:{s:8:"category";a:1:{i:11;s:2:"11";}}', 1),
(11, 'c4d7335317f2f1ba381e038fb625d918', 'a:1:{s:10:"id_feature";a:1:{i:1;s:3:"5_1";}}', 1),
(12, '18f41c9cab1c150e429f1b670cae3bc1', 'a:1:{s:10:"id_feature";a:1:{i:2;s:3:"5_2";}}', 1),
(13, '823192a052e44927f06b39b32bcef002', 'a:1:{s:10:"id_feature";a:1:{i:3;s:3:"5_3";}}', 1),
(14, '905fe5b57eb2e1353911171da4ee7706', 'a:1:{s:10:"id_feature";a:1:{i:4;s:3:"5_4";}}', 1),
(15, 'ebb42f1bbf0d25b40049c14f1860b952', 'a:1:{s:10:"id_feature";a:1:{i:5;s:3:"5_5";}}', 1),
(16, 'f9a71edd8befbb99baceadc2b2fbe793', 'a:1:{s:10:"id_feature";a:1:{i:6;s:3:"5_6";}}', 1),
(17, 'e195459fb3d97a32e94673db75dcf299', 'a:1:{s:10:"id_feature";a:1:{i:7;s:3:"5_7";}}', 1),
(18, 'b7783cae5eeefc81ff4a69f4ea712ea7', 'a:1:{s:10:"id_feature";a:1:{i:8;s:3:"5_8";}}', 1),
(19, '45f1d9162a9fe2ffcf9f365eace9eeec', 'a:1:{s:10:"id_feature";a:1:{i:9;s:3:"5_9";}}', 1),
(20, '7a04872959f09781f3b883a91c5332c7', 'a:1:{s:10:"id_feature";a:1:{i:10;s:4:"6_10";}}', 1),
(21, '025d11eb379709c8e409a7d712d8e362', 'a:1:{s:10:"id_feature";a:1:{i:11;s:4:"6_11";}}', 1),
(22, 'e224c427b75f7805c14e8b63ca9e4e0c', 'a:1:{s:10:"id_feature";a:1:{i:12;s:4:"6_12";}}', 1),
(23, '677717092975926de02151dd9227864e', 'a:1:{s:10:"id_feature";a:1:{i:13;s:4:"6_13";}}', 1),
(24, '00dff7b63b6f7ddb4b341a9308422730', 'a:1:{s:10:"id_feature";a:1:{i:14;s:4:"6_14";}}', 1),
(25, 'ff721a9727728b15cd4654a462aaeea0', 'a:1:{s:10:"id_feature";a:1:{i:15;s:4:"6_15";}}', 1),
(26, '0327a5c6fbcd99ae1fa8ef01f1e7e100', 'a:1:{s:10:"id_feature";a:1:{i:16;s:4:"6_16";}}', 1),
(27, '58ddd7a988c042c25121ffeb149f3ac7', 'a:1:{s:10:"id_feature";a:1:{i:17;s:4:"7_17";}}', 1),
(28, 'b7248af6c62c1e54b6f13739739e2d17', 'a:1:{s:10:"id_feature";a:1:{i:18;s:4:"7_18";}}', 1),
(29, 'b97d201e9d169f46c2a9e6fa356e40d2', 'a:1:{s:10:"id_feature";a:1:{i:19;s:4:"7_19";}}', 1),
(30, 'de50b73f078d5cde7cc9d8efc61c9e55', 'a:1:{s:10:"id_feature";a:1:{i:20;s:4:"7_20";}}', 1),
(31, '85a3c64761151fe72e5d027e729072a3', 'a:1:{s:10:"id_feature";a:1:{i:21;s:4:"7_21";}}', 1),
(32, '97d9dd08827238b39342d37e16ee7fc3', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 1),
(33, '2f3d5048a6335cac20241e0f8cb5294e', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 1),
(34, '19819345209f29bb2865355fa2cdb800', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"1_3";}}', 1),
(35, '27dd5799da96500f9e0ab61387a556b5', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"1_4";}}', 1),
(36, '6a73ce72468db97129f092fa3d9a0b2e', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"3_5";}}', 1),
(37, 'f1fc935c7d64dfac606eb814dcc6c4a7', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"3_6";}}', 1),
(38, 'f036e061c6e0e9cd6b3c463f72f524a5', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"3_7";}}', 1),
(39, '468a278b79ece55c0ed0d3bd1b2dd01f', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"3_8";}}', 1),
(40, '8996dbd99c9d2240f117ba0d26b39b10', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"3_9";}}', 1),
(41, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 1),
(42, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 1),
(43, '5f556205d67d7c26c2726dba638c2d95', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"3_12";}}', 1),
(44, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"3_13";}}', 1),
(45, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"3_14";}}', 1),
(46, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"3_15";}}', 1),
(47, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"3_16";}}', 1),
(48, '4c4550abfc4eec4c91e558fa9b5171c9', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"3_17";}}', 1),
(49, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:24;s:4:"3_24";}}', 1),
(50, '14ef3952eddf958ec1f628065f6c7689', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 1),
(51, '19e5bdea58716c8f3ff52345d1b5a442', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 1),
(52, '11c2881845b925423888cd329d0c4953', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 1),
(53, '074755ccbf623ca666bd866203d0dec7', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 1),
(54, '70b63b881a45f66c86ea78ace4cfb6a7', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 1),
(55, '7b51d2594a28b8f82cfe82b0c3f161e7', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 1),
(56, '9c39ee72802d4d7170480b787002b4d9', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 2),
(57, 'f5920e3cb27870c6f7a5a30da8677122', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 2),
(58, 'fe3c1095eaa89f16a5e83f735e6a5111', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 2),
(59, '03948e191a50c3a66a68f083a1d9a049', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 2),
(60, 'fd217fa6b8c9cecc8181a3c0b51955a6', 'a:1:{s:8:"category";a:1:{i:8;s:1:"8";}}', 2),
(61, '0e5bc1ea5dd8c0078e8afee8549ae1fd', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 2),
(62, '47f2e68341e5e6cc42edbfbc56feb79a', 'a:1:{s:8:"category";a:1:{i:7;s:1:"7";}}', 2),
(63, '3989c930a64ed9ac7d2e48aa806fcda8', 'a:1:{s:8:"category";a:1:{i:9;s:1:"9";}}', 2),
(64, '14401b1555e9fa78776fb6322d8e1cd1', 'a:1:{s:8:"category";a:1:{i:10;s:2:"10";}}', 2),
(65, '9089ea0dae38e2d1df02c5f0ddc6b925', 'a:1:{s:8:"category";a:1:{i:11;s:2:"11";}}', 2),
(66, 'c4d7335317f2f1ba381e038fb625d918', 'a:1:{s:10:"id_feature";a:1:{i:1;s:3:"5_1";}}', 2),
(67, '18f41c9cab1c150e429f1b670cae3bc1', 'a:1:{s:10:"id_feature";a:1:{i:2;s:3:"5_2";}}', 2),
(68, '823192a052e44927f06b39b32bcef002', 'a:1:{s:10:"id_feature";a:1:{i:3;s:3:"5_3";}}', 2),
(69, '905fe5b57eb2e1353911171da4ee7706', 'a:1:{s:10:"id_feature";a:1:{i:4;s:3:"5_4";}}', 2),
(70, 'ebb42f1bbf0d25b40049c14f1860b952', 'a:1:{s:10:"id_feature";a:1:{i:5;s:3:"5_5";}}', 2),
(71, 'f9a71edd8befbb99baceadc2b2fbe793', 'a:1:{s:10:"id_feature";a:1:{i:6;s:3:"5_6";}}', 2),
(72, 'e195459fb3d97a32e94673db75dcf299', 'a:1:{s:10:"id_feature";a:1:{i:7;s:3:"5_7";}}', 2),
(73, 'b7783cae5eeefc81ff4a69f4ea712ea7', 'a:1:{s:10:"id_feature";a:1:{i:8;s:3:"5_8";}}', 2),
(74, '45f1d9162a9fe2ffcf9f365eace9eeec', 'a:1:{s:10:"id_feature";a:1:{i:9;s:3:"5_9";}}', 2),
(75, '7a04872959f09781f3b883a91c5332c7', 'a:1:{s:10:"id_feature";a:1:{i:10;s:4:"6_10";}}', 2),
(76, '025d11eb379709c8e409a7d712d8e362', 'a:1:{s:10:"id_feature";a:1:{i:11;s:4:"6_11";}}', 2),
(77, 'e224c427b75f7805c14e8b63ca9e4e0c', 'a:1:{s:10:"id_feature";a:1:{i:12;s:4:"6_12";}}', 2),
(78, '677717092975926de02151dd9227864e', 'a:1:{s:10:"id_feature";a:1:{i:13;s:4:"6_13";}}', 2),
(79, '00dff7b63b6f7ddb4b341a9308422730', 'a:1:{s:10:"id_feature";a:1:{i:14;s:4:"6_14";}}', 2),
(80, 'ff721a9727728b15cd4654a462aaeea0', 'a:1:{s:10:"id_feature";a:1:{i:15;s:4:"6_15";}}', 2),
(81, '0327a5c6fbcd99ae1fa8ef01f1e7e100', 'a:1:{s:10:"id_feature";a:1:{i:16;s:4:"6_16";}}', 2),
(82, '58ddd7a988c042c25121ffeb149f3ac7', 'a:1:{s:10:"id_feature";a:1:{i:17;s:4:"7_17";}}', 2),
(83, 'b7248af6c62c1e54b6f13739739e2d17', 'a:1:{s:10:"id_feature";a:1:{i:18;s:4:"7_18";}}', 2),
(84, 'b97d201e9d169f46c2a9e6fa356e40d2', 'a:1:{s:10:"id_feature";a:1:{i:19;s:4:"7_19";}}', 2),
(85, 'de50b73f078d5cde7cc9d8efc61c9e55', 'a:1:{s:10:"id_feature";a:1:{i:20;s:4:"7_20";}}', 2),
(86, '85a3c64761151fe72e5d027e729072a3', 'a:1:{s:10:"id_feature";a:1:{i:21;s:4:"7_21";}}', 2),
(87, '97d9dd08827238b39342d37e16ee7fc3', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 2),
(88, '2f3d5048a6335cac20241e0f8cb5294e', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 2),
(89, '19819345209f29bb2865355fa2cdb800', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"1_3";}}', 2),
(90, '27dd5799da96500f9e0ab61387a556b5', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"1_4";}}', 2),
(91, '6a73ce72468db97129f092fa3d9a0b2e', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"3_5";}}', 2),
(92, 'f1fc935c7d64dfac606eb814dcc6c4a7', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"3_6";}}', 2),
(93, 'f036e061c6e0e9cd6b3c463f72f524a5', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"3_7";}}', 2),
(94, '468a278b79ece55c0ed0d3bd1b2dd01f', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"3_8";}}', 2),
(95, '8996dbd99c9d2240f117ba0d26b39b10', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"3_9";}}', 2),
(96, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 2),
(97, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 2),
(98, '5f556205d67d7c26c2726dba638c2d95', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"3_12";}}', 2),
(99, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"3_13";}}', 2),
(100, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"3_14";}}', 2),
(101, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"3_15";}}', 2),
(102, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"3_16";}}', 2),
(103, '4c4550abfc4eec4c91e558fa9b5171c9', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"3_17";}}', 2),
(104, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:24;s:4:"3_24";}}', 2),
(105, 'bef23bd10d69aa659c7422a0c63256f1', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 2),
(106, '6715ee7580686b313b60e32544109b6c', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 2),
(107, '5a9b5d509c159f36ca8a8dc107908b76', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 2),
(108, 'b77819e1221c4031af9cbae2a33de101', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 2),
(109, 'a898b0e909ef3de03e891ae03cec050e', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 2),
(110, 'c34830b0a964bcb8cfba00edd142aae3', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_group`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_attribute_group`
--

INSERT INTO `ps_layered_indexable_attribute_group` (`id_attribute_group`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_group_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_feature`
--

INSERT INTO `ps_layered_indexable_feature` (`id_feature`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) NOT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature_value_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_price_index`
--

CREATE TABLE IF NOT EXISTS `ps_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_currency`,`id_shop`),
  KEY `id_currency` (`id_currency`),
  KEY `price_min` (`price_min`),
  KEY `price_max` (`price_max`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_price_index`
--

INSERT INTO `ps_layered_price_index` (`id_product`, `id_currency`, `id_shop`, `price_min`, `price_max`) VALUES
(1, 1, 1, 16, 18),
(2, 1, 1, 26, 30),
(3, 1, 1, 25, 29),
(4, 1, 1, 50, 56),
(5, 1, 1, 28, 32),
(6, 1, 1, 30, 34),
(7, 1, 1, 16, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_product_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_layered_product_attribute` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  KEY `id_attribute` (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_product_attribute`
--

INSERT INTO `ps_layered_product_attribute` (`id_attribute`, `id_product`, `id_attribute_group`, `id_shop`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1),
(2, 6, 1, 1),
(2, 7, 1, 1),
(3, 1, 1, 1),
(3, 2, 1, 1),
(3, 3, 1, 1),
(3, 4, 1, 1),
(3, 5, 1, 1),
(3, 6, 1, 1),
(3, 7, 1, 1),
(7, 4, 3, 1),
(8, 2, 3, 1),
(8, 6, 3, 1),
(11, 2, 3, 1),
(11, 5, 3, 1),
(13, 1, 3, 1),
(13, 3, 3, 1),
(13, 5, 3, 1),
(14, 1, 3, 1),
(14, 5, 3, 1),
(15, 7, 3, 1),
(16, 5, 3, 1),
(16, 6, 3, 1),
(16, 7, 3, 1),
(24, 4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_linksmenutop`
--

CREATE TABLE IF NOT EXISTS `ps_linksmenutop` (
  `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_linksmenutop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_linksmenutop`
--

INSERT INTO `ps_linksmenutop` (`id_linksmenutop`, `id_shop`, `new_window`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_linksmenutop_lang`
--

CREATE TABLE IF NOT EXISTS `ps_linksmenutop_lang` (
  `id_linksmenutop` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_linksmenutop_lang`
--

INSERT INTO `ps_linksmenutop_lang` (`id_linksmenutop`, `id_lang`, `id_shop`, `label`, `link`) VALUES
(1, 1, 1, 'Blog', 'http://www.prestashop.com/blog/');

-- --------------------------------------------------------

--
-- Table structure for table `ps_log`
--

CREATE TABLE IF NOT EXISTS `ps_log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_manufacturer`
--

INSERT INTO `ps_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`, `active`) VALUES
(1, 'Fashion Manufacturer', '2014-05-11 20:17:21', '2014-05-11 20:17:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer_lang`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_manufacturer_lang`
--

INSERT INTO `ps_manufacturer_lang` (`id_manufacturer`, `id_lang`, `description`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, '', '', '', '', ''),
(1, 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer_shop`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_manufacturer_shop`
--

INSERT INTO `ps_manufacturer_shop` (`id_manufacturer`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_memcached_servers`
--

CREATE TABLE IF NOT EXISTS `ps_memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_message`
--

CREATE TABLE IF NOT EXISTS `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_message_readed`
--

CREATE TABLE IF NOT EXISTS `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_meta`
--

CREATE TABLE IF NOT EXISTS `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_meta`),
  UNIQUE KEY `page` (`page`),
  KEY `meta_name` (`page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `ps_meta`
--

INSERT INTO `ps_meta` (`id_meta`, `page`, `configurable`) VALUES
(1, '404', 1),
(2, 'best-sales', 1),
(3, 'contact', 1),
(4, 'index', 1),
(5, 'manufacturer', 1),
(6, 'new-products', 1),
(7, 'password', 1),
(8, 'prices-drop', 1),
(9, 'sitemap', 1),
(10, 'supplier', 1),
(11, 'address', 1),
(12, 'addresses', 1),
(13, 'authentication', 1),
(14, 'cart', 1),
(15, 'discount', 1),
(16, 'history', 1),
(17, 'identity', 1),
(18, 'my-account', 1),
(19, 'order-follow', 1),
(20, 'order-slip', 1),
(21, 'order', 1),
(22, 'search', 1),
(23, 'stores', 1),
(24, 'order-opc', 1),
(25, 'guest-tracking', 1),
(26, 'order-confirmation', 1),
(27, 'product', 0),
(28, 'category', 0),
(29, 'cms', 0),
(30, 'module-cheque-payment', 0),
(31, 'module-cheque-validation', 0),
(32, 'module-bankwire-validation', 0),
(33, 'module-bankwire-payment', 0),
(34, 'products-comparison', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_meta_lang`
--

CREATE TABLE IF NOT EXISTS `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_meta_lang`
--

INSERT INTO `ps_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1, 1, 1, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 2, '404 error', 'This page cannot be found', '', 'page-not-found'),
(2, 1, 1, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 2, 'Best sales', 'Our best sales', '', 'best-sales'),
(3, 1, 1, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 2, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(4, 1, 1, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 2, '', 'Shop powered by PrestaShop', '', ''),
(5, 1, 1, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 2, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(6, 1, 1, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 2, 'New products', 'Our new products', '', 'new-products'),
(7, 1, 1, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(7, 1, 2, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(8, 1, 1, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 2, 'Prices drop', 'Our special products', '', 'prices-drop'),
(9, 1, 1, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 2, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(10, 1, 1, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 2, 'Suppliers', 'Suppliers list', '', 'supplier'),
(11, 1, 1, 'Address', '', '', 'address'),
(11, 1, 2, 'Address', '', '', 'address'),
(12, 1, 1, 'Addresses', '', '', 'addresses'),
(12, 1, 2, 'Addresses', '', '', 'addresses'),
(13, 1, 1, 'Login', '', '', 'login'),
(13, 1, 2, 'Login', '', '', 'login'),
(14, 1, 1, 'Cart', '', '', 'cart'),
(14, 1, 2, 'Cart', '', '', 'cart'),
(15, 1, 1, 'Discount', '', '', 'discount'),
(15, 1, 2, 'Discount', '', '', 'discount'),
(16, 1, 1, 'Order history', '', '', 'order-history'),
(16, 1, 2, 'Order history', '', '', 'order-history'),
(17, 1, 1, 'Identity', '', '', 'identity'),
(17, 1, 2, 'Identity', '', '', 'identity'),
(18, 1, 1, 'My account', '', '', 'my-account'),
(18, 1, 2, 'My account', '', '', 'my-account'),
(19, 1, 1, 'Order follow', '', '', 'order-follow'),
(19, 1, 2, 'Order follow', '', '', 'order-follow'),
(20, 1, 1, 'Order slip', '', '', 'order-slip'),
(20, 1, 2, 'Order slip', '', '', 'order-slip'),
(21, 1, 1, 'Order', '', '', 'order'),
(21, 1, 2, 'Order', '', '', 'order'),
(22, 1, 1, 'Search', '', '', 'search'),
(22, 1, 2, 'Search', '', '', 'search'),
(23, 1, 1, 'Stores', '', '', 'stores'),
(23, 1, 2, 'Stores', '', '', 'stores'),
(24, 1, 1, 'Order', '', '', 'quick-order'),
(24, 1, 2, 'Order', '', '', 'quick-order'),
(25, 1, 1, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 2, 'Guest tracking', '', '', 'guest-tracking'),
(26, 1, 1, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 2, 'Order confirmation', '', '', 'order-confirmation'),
(27, 0, 1, NULL, NULL, NULL, ''),
(27, 0, 2, NULL, NULL, NULL, ''),
(28, 0, 1, NULL, NULL, NULL, ''),
(28, 0, 2, NULL, NULL, NULL, ''),
(29, 0, 1, NULL, NULL, NULL, ''),
(29, 0, 2, NULL, NULL, NULL, ''),
(30, 0, 1, NULL, NULL, NULL, ''),
(30, 0, 2, NULL, NULL, NULL, ''),
(31, 0, 1, NULL, NULL, NULL, ''),
(31, 0, 2, NULL, NULL, NULL, ''),
(32, 0, 1, NULL, NULL, NULL, ''),
(32, 0, 2, NULL, NULL, NULL, ''),
(33, 0, 1, NULL, NULL, NULL, ''),
(33, 0, 2, NULL, NULL, NULL, ''),
(34, 1, 1, 'Products Comparison', '', '', 'products-comparison'),
(34, 1, 2, 'Products Comparison', '', '', 'products-comparison');

-- --------------------------------------------------------

--
-- Table structure for table `ps_module`
--

CREATE TABLE IF NOT EXISTS `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `ps_module`
--

INSERT INTO `ps_module` (`id_module`, `name`, `active`, `version`) VALUES
(1, 'socialsharing', 1, '1.2'),
(2, 'blockbanner', 1, '1.3'),
(3, 'bankwire', 1, '0.7'),
(4, 'blockbestsellers', 1, '1.5.2'),
(5, 'blockcart', 1, '1.4'),
(6, 'blocksocial', 1, '1.1'),
(7, 'blockcategories', 1, '2.8'),
(8, 'blockcurrencies', 1, '0.3'),
(9, 'blockfacebook', 1, '1.3'),
(10, 'blocklanguages', 1, '1.3'),
(11, 'blocklayered', 1, '1.10.8'),
(12, 'blockcms', 1, '1.9'),
(13, 'blockcmsinfo', 1, '1.4'),
(14, 'blockcontact', 1, '1.2'),
(15, 'blockcontactinfos', 1, '1.1'),
(16, 'blockmanufacturer', 1, '1.2'),
(17, 'blockmyaccount', 1, '1.3'),
(18, 'blockmyaccountfooter', 1, '1.4'),
(19, 'blocknewproducts', 1, '1.8'),
(20, 'blocknewsletter', 1, '1.6'),
(21, 'blockpaymentlogo', 1, '0.3'),
(22, 'blocksearch', 1, '1.5'),
(23, 'blockspecials', 1, '1.1'),
(24, 'blockstore', 1, '1.1'),
(25, 'blocksupplier', 1, '1.1'),
(26, 'blocktags', 1, '1.2'),
(27, 'blocktopmenu', 1, '1.11'),
(28, 'blockuserinfo', 1, '0.3'),
(29, 'blockviewed', 1, '1.1'),
(30, 'cheque', 1, '2.4'),
(31, 'dashactivity', 1, '0.2'),
(32, 'dashtrends', 1, '0.6'),
(33, 'dashgoals', 1, '0.4'),
(34, 'dashproducts', 1, '0.2'),
(35, 'graphnvd3', 1, '1.1'),
(36, 'gridhtml', 1, '1.1'),
(37, 'homeslider', 1, '1.3.6'),
(38, 'homefeatured', 1, '1.3'),
(39, 'productpaymentlogos', 1, '1.3'),
(40, 'pagesnotfound', 1, '1.2'),
(41, 'sekeywords', 1, '1.1'),
(42, 'statsbestcategories', 1, '1.2'),
(43, 'statsbestcustomers', 1, '1.2'),
(44, 'statsbestproducts', 1, '1.2'),
(45, 'statsbestsuppliers', 1, '1.2'),
(46, 'statsbestvouchers', 1, '1.2'),
(47, 'statscarrier', 1, '1.2'),
(48, 'statscatalog', 1, '1.1'),
(49, 'statscheckup', 1, '1.2'),
(50, 'statsdata', 1, '1.3'),
(51, 'statsequipment', 1, '1.2'),
(52, 'statsforecast', 1, '1.2'),
(53, 'statslive', 1, '1.2'),
(54, 'statsnewsletter', 1, '1.2'),
(55, 'statsorigin', 1, '1.2'),
(56, 'statspersonalinfos', 1, '1.2'),
(57, 'statsproduct', 1, '1.2'),
(58, 'statsregistrations', 1, '1.2'),
(59, 'statssales', 1, '1.2'),
(60, 'statssearch', 1, '1.3'),
(61, 'statsstock', 1, '1.3'),
(62, 'statsvisits', 1, '1.3'),
(63, 'themeconfigurator', 1, '0.8'),
(64, 'gamification', 1, '1.8.9'),
(65, 'blockwishlist', 1, '0.10'),
(66, 'productcomments', 1, '3.3.4'),
(67, 'sendtoafriend', 1, '1.7');

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_access`
--

CREATE TABLE IF NOT EXISTS `ps_module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL,
  `configure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_access`
--

INSERT INTO `ps_module_access` (`id_profile`, `id_module`, `view`, `configure`) VALUES
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1),
(2, 6, 1, 1),
(2, 7, 1, 1),
(2, 8, 1, 1),
(2, 9, 1, 1),
(2, 10, 1, 1),
(2, 11, 1, 1),
(2, 12, 1, 1),
(2, 13, 1, 1),
(2, 14, 1, 1),
(2, 15, 1, 1),
(2, 16, 1, 1),
(2, 17, 1, 1),
(2, 18, 1, 1),
(2, 19, 1, 1),
(2, 20, 1, 1),
(2, 21, 1, 1),
(2, 22, 1, 1),
(2, 23, 1, 1),
(2, 24, 1, 1),
(2, 25, 1, 1),
(2, 26, 1, 1),
(2, 27, 1, 1),
(2, 28, 1, 1),
(2, 29, 1, 1),
(2, 30, 1, 1),
(2, 31, 1, 1),
(2, 32, 1, 1),
(2, 33, 1, 1),
(2, 34, 1, 1),
(2, 35, 1, 1),
(2, 36, 1, 1),
(2, 37, 1, 1),
(2, 38, 1, 1),
(2, 39, 1, 1),
(2, 40, 1, 1),
(2, 41, 1, 1),
(2, 42, 1, 1),
(2, 43, 1, 1),
(2, 44, 1, 1),
(2, 45, 1, 1),
(2, 46, 1, 1),
(2, 47, 1, 1),
(2, 48, 1, 1),
(2, 49, 1, 1),
(2, 50, 1, 1),
(2, 51, 1, 1),
(2, 52, 1, 1),
(2, 53, 1, 1),
(2, 54, 1, 1),
(2, 55, 1, 1),
(2, 56, 1, 1),
(2, 57, 1, 1),
(2, 58, 1, 1),
(2, 59, 1, 1),
(2, 60, 1, 1),
(2, 61, 1, 1),
(2, 62, 1, 1),
(2, 63, 1, 1),
(2, 64, 1, 1),
(2, 65, 1, 1),
(2, 66, 1, 1),
(2, 67, 1, 1),
(3, 1, 1, 0),
(3, 2, 1, 0),
(3, 3, 1, 0),
(3, 4, 1, 0),
(3, 5, 1, 0),
(3, 6, 1, 0),
(3, 7, 1, 0),
(3, 8, 1, 0),
(3, 9, 1, 0),
(3, 10, 1, 0),
(3, 11, 1, 0),
(3, 12, 1, 0),
(3, 13, 1, 0),
(3, 14, 1, 0),
(3, 15, 1, 0),
(3, 16, 1, 0),
(3, 17, 1, 0),
(3, 18, 1, 0),
(3, 19, 1, 0),
(3, 20, 1, 0),
(3, 21, 1, 0),
(3, 22, 1, 0),
(3, 23, 1, 0),
(3, 24, 1, 0),
(3, 25, 1, 0),
(3, 26, 1, 0),
(3, 27, 1, 0),
(3, 28, 1, 0),
(3, 29, 1, 0),
(3, 30, 1, 0),
(3, 31, 1, 0),
(3, 32, 1, 0),
(3, 33, 1, 0),
(3, 34, 1, 0),
(3, 35, 1, 0),
(3, 36, 1, 0),
(3, 37, 1, 0),
(3, 38, 1, 0),
(3, 39, 1, 0),
(3, 40, 1, 0),
(3, 41, 1, 0),
(3, 42, 1, 0),
(3, 43, 1, 0),
(3, 44, 1, 0),
(3, 45, 1, 0),
(3, 46, 1, 0),
(3, 47, 1, 0),
(3, 48, 1, 0),
(3, 49, 1, 0),
(3, 50, 1, 0),
(3, 51, 1, 0),
(3, 52, 1, 0),
(3, 53, 1, 0),
(3, 54, 1, 0),
(3, 55, 1, 0),
(3, 56, 1, 0),
(3, 57, 1, 0),
(3, 58, 1, 0),
(3, 59, 1, 0),
(3, 60, 1, 0),
(3, 61, 1, 0),
(3, 62, 1, 0),
(3, 63, 1, 0),
(3, 64, 1, 0),
(3, 65, 1, 0),
(3, 66, 1, 0),
(3, 67, 1, 0),
(4, 1, 1, 1),
(4, 2, 1, 1),
(4, 3, 1, 1),
(4, 4, 1, 1),
(4, 5, 1, 1),
(4, 6, 1, 1),
(4, 7, 1, 1),
(4, 8, 1, 1),
(4, 9, 1, 1),
(4, 10, 1, 1),
(4, 11, 1, 1),
(4, 12, 1, 1),
(4, 13, 1, 1),
(4, 14, 1, 1),
(4, 15, 1, 1),
(4, 16, 1, 1),
(4, 17, 1, 1),
(4, 18, 1, 1),
(4, 19, 1, 1),
(4, 20, 1, 1),
(4, 21, 1, 1),
(4, 22, 1, 1),
(4, 23, 1, 1),
(4, 24, 1, 1),
(4, 25, 1, 1),
(4, 26, 1, 1),
(4, 27, 1, 1),
(4, 28, 1, 1),
(4, 29, 1, 1),
(4, 30, 1, 1),
(4, 31, 1, 1),
(4, 32, 1, 1),
(4, 33, 1, 1),
(4, 34, 1, 1),
(4, 35, 1, 1),
(4, 36, 1, 1),
(4, 37, 1, 1),
(4, 38, 1, 1),
(4, 39, 1, 1),
(4, 40, 1, 1),
(4, 41, 1, 1),
(4, 42, 1, 1),
(4, 43, 1, 1),
(4, 44, 1, 1),
(4, 45, 1, 1),
(4, 46, 1, 1),
(4, 47, 1, 1),
(4, 48, 1, 1),
(4, 49, 1, 1),
(4, 50, 1, 1),
(4, 51, 1, 1),
(4, 52, 1, 1),
(4, 53, 1, 1),
(4, 54, 1, 1),
(4, 55, 1, 1),
(4, 56, 1, 1),
(4, 57, 1, 1),
(4, 58, 1, 1),
(4, 59, 1, 1),
(4, 60, 1, 1),
(4, 61, 1, 1),
(4, 62, 1, 1),
(4, 63, 1, 1),
(4, 64, 1, 1),
(4, 65, 1, 1),
(4, 66, 1, 1),
(4, 67, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_country`
--

CREATE TABLE IF NOT EXISTS `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_country`
--

INSERT INTO `ps_module_country` (`id_module`, `id_shop`, `id_country`) VALUES
(3, 1, 111),
(30, 1, 111);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_currency`
--

CREATE TABLE IF NOT EXISTS `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_currency`
--

INSERT INTO `ps_module_currency` (`id_module`, `id_shop`, `id_currency`) VALUES
(3, 1, 1),
(30, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_group`
--

CREATE TABLE IF NOT EXISTS `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_group`
--

INSERT INTO `ps_module_group` (`id_module`, `id_shop`, `id_group`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 1, 1),
(2, 1, 2),
(2, 1, 3),
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(4, 1, 1),
(4, 1, 2),
(4, 1, 3),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(6, 1, 1),
(6, 1, 2),
(6, 1, 3),
(7, 1, 1),
(7, 1, 2),
(7, 1, 3),
(8, 1, 1),
(8, 1, 2),
(8, 1, 3),
(9, 1, 1),
(9, 1, 2),
(9, 1, 3),
(10, 1, 1),
(10, 1, 2),
(10, 1, 3),
(11, 1, 1),
(11, 1, 2),
(11, 1, 3),
(12, 1, 1),
(12, 1, 2),
(12, 1, 3),
(13, 1, 1),
(13, 1, 2),
(13, 1, 3),
(14, 1, 1),
(14, 1, 2),
(14, 1, 3),
(15, 1, 1),
(15, 1, 2),
(15, 1, 3),
(16, 1, 1),
(16, 1, 2),
(16, 1, 3),
(17, 1, 1),
(17, 1, 2),
(17, 1, 3),
(18, 1, 1),
(18, 1, 2),
(18, 1, 3),
(19, 1, 1),
(19, 1, 2),
(19, 1, 3),
(20, 1, 1),
(20, 1, 2),
(20, 1, 3),
(21, 1, 1),
(21, 1, 2),
(21, 1, 3),
(22, 1, 1),
(22, 1, 2),
(22, 1, 3),
(23, 1, 1),
(23, 1, 2),
(23, 1, 3),
(24, 1, 1),
(24, 1, 2),
(24, 1, 3),
(25, 1, 1),
(25, 1, 2),
(25, 1, 3),
(26, 1, 1),
(26, 1, 2),
(26, 1, 3),
(27, 1, 1),
(27, 1, 2),
(27, 1, 3),
(28, 1, 1),
(28, 1, 2),
(28, 1, 3),
(29, 1, 1),
(29, 1, 2),
(29, 1, 3),
(30, 1, 1),
(30, 1, 2),
(30, 1, 3),
(31, 1, 1),
(31, 1, 2),
(31, 1, 3),
(32, 1, 1),
(32, 1, 2),
(32, 1, 3),
(33, 1, 1),
(33, 1, 2),
(33, 1, 3),
(34, 1, 1),
(34, 1, 2),
(34, 1, 3),
(35, 1, 1),
(35, 1, 2),
(35, 1, 3),
(36, 1, 1),
(36, 1, 2),
(36, 1, 3),
(37, 1, 1),
(37, 1, 2),
(37, 1, 3),
(38, 1, 1),
(38, 1, 2),
(38, 1, 3),
(39, 1, 1),
(39, 1, 2),
(39, 1, 3),
(40, 1, 1),
(40, 1, 2),
(40, 1, 3),
(41, 1, 1),
(41, 1, 2),
(41, 1, 3),
(42, 1, 1),
(42, 1, 2),
(42, 1, 3),
(43, 1, 1),
(43, 1, 2),
(43, 1, 3),
(44, 1, 1),
(44, 1, 2),
(44, 1, 3),
(45, 1, 1),
(45, 1, 2),
(45, 1, 3),
(46, 1, 1),
(46, 1, 2),
(46, 1, 3),
(47, 1, 1),
(47, 1, 2),
(47, 1, 3),
(48, 1, 1),
(48, 1, 2),
(48, 1, 3),
(49, 1, 1),
(49, 1, 2),
(49, 1, 3),
(50, 1, 1),
(50, 1, 2),
(50, 1, 3),
(51, 1, 1),
(51, 1, 2),
(51, 1, 3),
(52, 1, 1),
(52, 1, 2),
(52, 1, 3),
(53, 1, 1),
(53, 1, 2),
(53, 1, 3),
(54, 1, 1),
(54, 1, 2),
(54, 1, 3),
(55, 1, 1),
(55, 1, 2),
(55, 1, 3),
(56, 1, 1),
(56, 1, 2),
(56, 1, 3),
(57, 1, 1),
(57, 1, 2),
(57, 1, 3),
(58, 1, 1),
(58, 1, 2),
(58, 1, 3),
(59, 1, 1),
(59, 1, 2),
(59, 1, 3),
(60, 1, 1),
(60, 1, 2),
(60, 1, 3),
(61, 1, 1),
(61, 1, 2),
(61, 1, 3),
(62, 1, 1),
(62, 1, 2),
(62, 1, 3),
(63, 1, 1),
(63, 1, 2),
(63, 1, 3),
(64, 1, 1),
(64, 1, 2),
(64, 1, 3),
(65, 1, 1),
(65, 1, 2),
(65, 1, 3),
(66, 1, 1),
(66, 1, 2),
(66, 1, 3),
(67, 1, 1),
(67, 1, 2),
(67, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_preference`
--

CREATE TABLE IF NOT EXISTS `ps_module_preference` (
  `id_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_shop`
--

CREATE TABLE IF NOT EXISTS `ps_module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7',
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_shop`
--

INSERT INTO `ps_module_shop` (`id_module`, `id_shop`, `enable_device`) VALUES
(1, 1, 7),
(2, 1, 7),
(3, 1, 7),
(4, 1, 7),
(5, 1, 7),
(6, 1, 7),
(7, 1, 7),
(8, 1, 7),
(9, 1, 7),
(10, 1, 7),
(11, 1, 7),
(12, 1, 7),
(13, 1, 1),
(14, 1, 7),
(15, 1, 7),
(16, 1, 7),
(17, 1, 7),
(18, 1, 7),
(19, 1, 7),
(20, 1, 7),
(21, 1, 7),
(22, 1, 7),
(23, 1, 7),
(24, 1, 7),
(25, 1, 7),
(26, 1, 7),
(27, 1, 7),
(28, 1, 7),
(29, 1, 7),
(30, 1, 7),
(31, 1, 7),
(32, 1, 7),
(33, 1, 7),
(34, 1, 7),
(35, 1, 7),
(36, 1, 7),
(37, 1, 3),
(38, 1, 7),
(39, 1, 7),
(40, 1, 7),
(41, 1, 7),
(42, 1, 7),
(43, 1, 7),
(44, 1, 7),
(45, 1, 7),
(46, 1, 7),
(47, 1, 7),
(48, 1, 7),
(49, 1, 7),
(50, 1, 7),
(51, 1, 7),
(52, 1, 7),
(53, 1, 7),
(54, 1, 7),
(55, 1, 7),
(56, 1, 7),
(57, 1, 7),
(58, 1, 7),
(59, 1, 7),
(60, 1, 7),
(61, 1, 7),
(62, 1, 7),
(63, 1, 7),
(64, 1, 7),
(65, 1, 7),
(66, 1, 7),
(67, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ps_newsletter`
--

CREATE TABLE IF NOT EXISTS `ps_newsletter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_operating_system`
--

CREATE TABLE IF NOT EXISTS `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_operating_system`
--

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'Windows 7'),
(4, 'Windows 8'),
(5, 'MacOsX'),
(6, 'Linux'),
(7, 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_order_carrier` (
  `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_order_carrier`
--

INSERT INTO `ps_order_carrier` (`id_order_carrier`, `id_order`, `id_carrier`, `id_order_invoice`, `weight`, `shipping_cost_tax_excl`, `shipping_cost_tax_incl`, `tracking_number`, `date_add`) VALUES
(1, 1, 2, 0, '0.000000', '0.000000', '0.000000', '', '2014-05-11 20:18:08'),
(2, 2, 2, 0, '0.000000', '0.000000', '0.000000', '', '2014-05-11 20:18:08'),
(3, 3, 2, 0, '0.000000', '0.000000', '0.000000', '', '2014-05-11 20:18:08'),
(4, 4, 2, 0, '0.000000', '0.000000', '0.000000', '', '2014-05-11 20:18:08'),
(5, 5, 2, 0, '0.000000', '2.000000', '2.080000', '', '2014-05-11 20:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_order_cart_rule` (
  `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ps_order_detail`
--

INSERT INTO `ps_order_detail` (`id_order_detail`, `id_order`, `id_order_invoice`, `id_warehouse`, `id_shop`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_in_stock`, `product_quantity_refunded`, `product_quantity_return`, `product_quantity_reinjected`, `product_price`, `reduction_percent`, `reduction_amount`, `reduction_amount_tax_incl`, `reduction_amount_tax_excl`, `group_reduction`, `product_quantity_discount`, `product_ean13`, `product_upc`, `product_reference`, `product_supplier_reference`, `product_weight`, `tax_computation_method`, `tax_name`, `tax_rate`, `ecotax`, `ecotax_tax_rate`, `discount_quantity_applied`, `download_hash`, `download_nb`, `download_deadline`, `total_price_tax_incl`, `total_price_tax_excl`, `unit_price_tax_incl`, `unit_price_tax_excl`, `total_shipping_price_tax_incl`, `total_shipping_price_tax_excl`, `purchase_supplier_price`, `original_product_price`) VALUES
(1, 1, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 0, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '32.400000', '26.999852', '32.400000', '26.999852', '0.000000', '0.000000', '0.000000', '0.000000'),
(2, 1, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 0, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '31.200000', '25.999852', '31.200000', '25.999852', '0.000000', '0.000000', '0.000000', '0.000000'),
(3, 2, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 0, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '32.400000', '26.999852', '32.400000', '26.999852', '0.000000', '0.000000', '0.000000', '0.000000'),
(4, 2, 0, 0, 1, 6, 32, 'Printed Summer Dress - Color : Yellow, Size : M', 1, 0, 0, 0, 0, '30.502569', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '36.600000', '30.502569', '36.600000', '30.502569', '0.000000', '0.000000', '0.000000', '0.000000'),
(5, 2, 0, 0, 1, 7, 34, 'Printed Chiffon Dress - Color : Yellow, Size : S', 1, 0, 0, 0, 0, '20.501236', '20.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '19.680000', '16.400000', '19.680000', '16.400000', '0.000000', '0.000000', '0.000000', '0.000000'),
(6, 3, 0, 0, 1, 2, 10, 'Blouse - Color : White, Size : M', 1, 0, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '32.400000', '26.999852', '32.400000', '26.999852', '0.000000', '0.000000', '0.000000', '0.000000'),
(7, 3, 0, 0, 1, 6, 32, 'Printed Summer Dress - Color : Yellow, Size : M', 1, 0, 0, 0, 0, '30.502569', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '36.600000', '30.502569', '36.600000', '30.502569', '0.000000', '0.000000', '0.000000', '0.000000'),
(8, 3, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 0, 0, 0, 0, '16.509874', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.509874', '16.509874', '16.509874', '16.400000', '0.000000', '0.000000', '0.000000', '0.000000'),
(9, 4, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 0, 0, 0, 0, '16.509874', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '16.509874', '16.509874', '16.509874', '16.509874', '0.000000', '0.000000', '0.000000', '0.000000'),
(10, 4, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 0, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '25.999852', '25.999852', '25.999852', '25.999852', '0.000000', '0.000000', '0.000000', '0.000000'),
(11, 4, 0, 0, 1, 7, 34, 'Printed Chiffon Dress - Color : Yellow, Size : S', 1, 0, 0, 0, 0, '20.501236', '20.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '19.680000', '16.400000', '19.680000', '16.400000', '0.000000', '0.000000', '0.000000', '0.000000'),
(12, 4, 0, 0, 1, 5, 19, 'Printed Chiffon Dress - Color : Yellow, Size : S', 1, 0, 0, 0, 0, '30.506321', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '30.506321', '30.506321', '30.506321', '30.506321', '0.000000', '0.000000', '0.000000', '0.000000'),
(13, 5, 0, 0, 1, 1, 1, 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', 1, 1, 0, 0, 0, '16.510000', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_12', '', '0.000000', 1, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '17.170000', '16.510000', '17.170000', '16.510000', '0.000000', '0.000000', '4.950000', '16.510000'),
(14, 5, 0, 0, 1, 2, 7, 'Blouse - Color : Black, Size : S', 1, 1, 0, 0, 0, '26.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_14', '', '0.000000', 1, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '28.080000', '27.000000', '28.080000', '27.000000', '0.000000', '0.000000', '8.100000', '26.999852'),
(15, 5, 0, 0, 1, 3, 13, 'Printed Dress - Color : Orange, Size : S', 1, 1, 0, 0, 0, '25.999852', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', 'demo_20', '', '0.000000', 1, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '27.040000', '26.000000', '27.040000', '26.000000', '0.000000', '0.000000', '7.800000', '25.999852');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_detail_tax`
--

CREATE TABLE IF NOT EXISTS `ps_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_history`
--

CREATE TABLE IF NOT EXISTS `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_order_history`
--

INSERT INTO `ps_order_history` (`id_order_history`, `id_employee`, `id_order`, `id_order_state`, `date_add`) VALUES
(1, 0, 1, 8, '2014-05-11 20:18:09'),
(2, 0, 2, 1, '2014-05-11 20:18:09'),
(3, 0, 3, 1, '2014-05-11 20:18:09'),
(4, 0, 4, 8, '2014-05-11 20:18:10'),
(5, 0, 5, 10, '2014-05-11 20:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice` (
  `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discount_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice_payment`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice_tax`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000',
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_message`
--

CREATE TABLE IF NOT EXISTS `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_order_message`
--

INSERT INTO `ps_order_message` (`id_order_message`, `date_add`) VALUES
(1, '2014-05-11 20:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_message_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_message_lang`
--

INSERT INTO `ps_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 2, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_payment`
--

CREATE TABLE IF NOT EXISTS `ps_order_payment` (
  `id_order_payment` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return`
--

CREATE TABLE IF NOT EXISTS `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_order_return_state`
--

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`) VALUES
(1, 'RoyalBlue'),
(2, 'BlueViolet'),
(3, 'LimeGreen'),
(4, 'Crimson'),
(5, '#108510');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_return_state_lang`
--

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 1, 'Waiting for confirmation'),
(1, 2, 'Waiting for confirmation'),
(2, 1, 'Waiting for package'),
(2, 2, 'Waiting for package'),
(3, 1, 'Package received'),
(3, 2, 'Package received'),
(4, 1, 'Return denied'),
(4, 2, 'Return denied'),
(5, 1, 'Return completed'),
(5, 2, 'Return completed');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_slip`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_slip_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `amount_tax_excl` decimal(10,2) DEFAULT NULL,
  `amount_tax_incl` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ps_order_state`
--

INSERT INTO `ps_order_state` (`id_order_state`, `invoice`, `send_email`, `module_name`, `color`, `unremovable`, `hidden`, `logable`, `delivery`, `shipped`, `paid`, `deleted`) VALUES
(1, 0, 1, 'cheque', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(2, 1, 1, '', 'LimeGreen', 1, 0, 1, 0, 0, 1, 0),
(3, 1, 1, '', 'DarkOrange', 1, 0, 1, 1, 0, 1, 0),
(4, 1, 1, '', 'BlueViolet', 1, 0, 1, 1, 1, 1, 0),
(5, 1, 0, '', '#108510', 1, 0, 1, 1, 1, 1, 0),
(6, 0, 1, '', 'Crimson', 1, 0, 0, 0, 0, 0, 0),
(7, 1, 1, '', '#ec2e15', 1, 0, 0, 0, 0, 0, 0),
(8, 0, 1, '', '#8f0621', 1, 0, 0, 0, 0, 0, 0),
(9, 1, 1, '', 'HotPink', 1, 0, 0, 0, 0, 1, 0),
(10, 0, 1, 'bankwire', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(11, 0, 0, '', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(12, 1, 1, '', 'LimeGreen', 1, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_state_lang`
--

INSERT INTO `ps_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1, 1, 'Awaiting cheque payment', 'cheque'),
(1, 2, 'Awaiting cheque payment', 'cheque'),
(2, 1, 'Payment accepted', 'payment'),
(2, 2, 'Payment accepted', 'payment'),
(3, 1, 'Preparation in progress', 'preparation'),
(3, 2, 'Preparation in progress', 'preparation'),
(4, 1, 'Shipped', 'shipped'),
(4, 2, 'Shipped', 'shipped'),
(5, 1, 'Delivered', ''),
(5, 2, 'Delivered', ''),
(6, 1, 'Canceled', 'order_canceled'),
(6, 2, 'Canceled', 'order_canceled'),
(7, 1, 'Refund', 'refund'),
(7, 2, 'Refund', 'refund'),
(8, 1, 'Payment error', 'payment_error'),
(8, 2, 'Payment error', 'payment_error'),
(9, 1, 'On backorder', 'outofstock'),
(9, 2, 'On backorder', 'outofstock'),
(10, 1, 'Awaiting bank wire payment', 'bankwire'),
(10, 2, 'Awaiting bank wire payment', 'bankwire'),
(11, 1, 'Awaiting PayPal payment', ''),
(11, 2, 'Awaiting PayPal payment', ''),
(12, 1, 'Payment remotely accepted', 'payment'),
(12, 2, 'Payment remotely accepted', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `ps_orders`
--

CREATE TABLE IF NOT EXISTS `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_orders`
--

INSERT INTO `ps_orders` (`id_order`, `reference`, `id_shop_group`, `id_shop`, `id_carrier`, `id_lang`, `id_customer`, `id_cart`, `id_currency`, `id_address_delivery`, `id_address_invoice`, `current_state`, `secure_key`, `payment`, `conversion_rate`, `module`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `shipping_number`, `total_discounts`, `total_discounts_tax_incl`, `total_discounts_tax_excl`, `total_paid`, `total_paid_tax_incl`, `total_paid_tax_excl`, `total_paid_real`, `total_products`, `total_products_wt`, `total_shipping`, `total_shipping_tax_incl`, `total_shipping_tax_excl`, `carrier_tax_rate`, `total_wrapping`, `total_wrapping_tax_incl`, `total_wrapping_tax_excl`, `invoice_number`, `delivery_number`, `invoice_date`, `delivery_date`, `valid`, `date_add`, `date_upd`) VALUES
(1, 'XKBKNABJK', 1, 1, 2, 1, 1, 1, 1, 1, 1, 8, '47ce86627c1f3c792a80773c5d2deaf8', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.00', '0.00', '0.00', '61.37', '61.37', '51.14', '0.00', '44.16', '53.00', '7.98', '8.37', '7.00', '20.000', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-05-11 20:18:07', '2014-05-11 20:18:09'),
(2, 'OHSATSERP', 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, '47ce86627c1f3c792a80773c5d2deaf8', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.00', '0.00', '0.00', '75.90', '75.90', '63.25', '0.00', '73.90', '73.90', '2.00', '2.00', '2.00', '20.000', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-05-11 20:18:07', '2014-05-11 20:18:09'),
(3, 'UOYEVOLI', 1, 1, 2, 1, 1, 3, 1, 1, 1, 1, '47ce86627c1f3c792a80773c5d2deaf8', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '0.00', '0.00', '0.00', '76.01', '76.01', '76.01', '0.00', '74.01', '74.01', '2.00', '2.00', '2.00', '20.000', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-05-11 20:18:07', '2014-05-11 20:18:09'),
(4, 'FFATNOMMJ', 1, 1, 2, 1, 1, 4, 1, 1, 1, 8, '47ce86627c1f3c792a80773c5d2deaf8', 'Payment by check', '1.000000', 'cheque', 0, 0, '', 0, '', '30.00', '30.00', '0.00', '87.41', '87.41', '87.41', '0.00', '115.41', '115.41', '2.00', '2.00', '2.00', '20.000', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-05-11 20:18:08', '2014-05-11 20:18:10'),
(5, 'KHWLILZLL', 1, 1, 2, 1, 1, 5, 1, 1, 1, 10, '769afdbe2aaea279fcc2c9ecc7113bbd', 'Bank Wire', '1.000000', 'bankwire', 0, 0, '', 0, '', '0.00', '0.00', '0.00', '74.37', '74.37', '71.51', '0.00', '69.51', '72.29', '2.08', '2.08', '2.00', '4.000', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-05-11 20:18:08', '2014-05-11 20:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `ps_pack`
--

CREATE TABLE IF NOT EXISTS `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_page`
--

CREATE TABLE IF NOT EXISTS `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_page`
--

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ps_page_type`
--

CREATE TABLE IF NOT EXISTS `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_page_type`
--

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(1, 'index');

-- --------------------------------------------------------

--
-- Table structure for table `ps_page_viewed`
--

CREATE TABLE IF NOT EXISTS `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_pagenotfound`
--

CREATE TABLE IF NOT EXISTS `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_pagenotfound`
--

INSERT INTO `ps_pagenotfound` (`id_pagenotfound`, `id_shop`, `id_shop_group`, `request_uri`, `http_referer`, `date_add`) VALUES
(1, 1, 1, '/prestashop/admin', '', '2014-05-13 19:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product`
--

CREATE TABLE IF NOT EXISTS `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_product`
--

INSERT INTO `ps_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_category_default`, `id_shop_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_is_pack`, `cache_has_attachments`, `is_virtual`, `cache_default_attribute`, `date_add`, `date_upd`, `advanced_stock_management`) VALUES
(1, 0, 0, 5, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '16.510000', '4.950000', '', '0.000000', '0.00', 'demo_1', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 1, '2014-05-11 20:17:38', '2014-05-11 20:17:38', 0),
(2, 0, 0, 7, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '26.999852', '8.100000', '', '0.000000', '0.00', 'demo_2', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 7, '2014-05-11 20:17:39', '2014-05-11 20:17:39', 0),
(3, 0, 0, 9, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '25.999852', '7.800000', '', '0.000000', '0.00', 'demo_3', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 13, '2014-05-11 20:17:39', '2014-05-11 20:17:39', 0),
(4, 0, 0, 10, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '50.994153', '15.300000', '', '0.000000', '0.00', 'demo_4', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 16, '2014-05-11 20:17:39', '2014-05-11 20:17:39', 0),
(5, 0, 0, 11, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '30.506321', '9.150000', '', '0.000000', '0.00', 'demo_5', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 19, '2014-05-11 20:17:39', '2014-05-11 20:17:39', 0),
(6, 0, 0, 11, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '30.502569', '9.150000', '', '0.000000', '0.00', 'demo_6', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 31, '2014-05-11 20:17:40', '2014-05-11 20:17:40', 0),
(7, 0, 0, 11, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '20.501236', '6.150000', '', '0.000000', '0.00', 'demo_7', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 34, '2014-05-11 20:17:40', '2014-05-11 20:17:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `ps_product_attribute`
--

INSERT INTO `ps_product_attribute` (`id_product_attribute`, `id_product`, `reference`, `supplier_reference`, `location`, `ean13`, `upc`, `wholesale_price`, `price`, `ecotax`, `quantity`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(2, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(3, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(4, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(5, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(6, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(7, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(8, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(9, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(10, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(11, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(12, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(13, 3, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(14, 3, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(15, 3, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(16, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(17, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(18, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(19, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(20, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(21, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(22, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(23, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(24, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(25, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(26, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(27, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(28, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(29, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(30, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(31, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(32, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(33, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(34, 7, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 1, 1, '0000-00-00'),
(35, 7, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(36, 7, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 100, '0.000000', '0.00', 0, 1, '0000-00-00'),
(37, 7, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(38, 7, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(39, 7, '', '', '', '', '', '6.150000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(40, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(41, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(42, 6, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(43, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(44, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(45, 4, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_combination`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_combination`
--

INSERT INTO `ps_product_attribute_combination` (`id_attribute`, `id_product_attribute`) VALUES
(1, 1),
(13, 1),
(1, 2),
(14, 2),
(2, 3),
(13, 3),
(2, 4),
(14, 4),
(3, 5),
(13, 5),
(3, 6),
(14, 6),
(1, 7),
(11, 7),
(1, 8),
(8, 8),
(2, 9),
(11, 9),
(2, 10),
(8, 10),
(3, 11),
(11, 11),
(3, 12),
(8, 12),
(1, 13),
(13, 13),
(2, 14),
(13, 14),
(3, 15),
(13, 15),
(1, 16),
(7, 16),
(2, 17),
(7, 17),
(3, 18),
(7, 18),
(1, 19),
(16, 19),
(1, 20),
(14, 20),
(1, 21),
(13, 21),
(1, 22),
(11, 22),
(2, 23),
(16, 23),
(2, 24),
(14, 24),
(2, 25),
(13, 25),
(2, 26),
(11, 26),
(3, 27),
(16, 27),
(3, 28),
(14, 28),
(3, 29),
(13, 29),
(3, 30),
(11, 30),
(1, 31),
(16, 31),
(2, 32),
(16, 32),
(3, 33),
(16, 33),
(1, 34),
(16, 34),
(2, 35),
(16, 35),
(3, 36),
(16, 36),
(1, 37),
(15, 37),
(2, 38),
(15, 38),
(3, 39),
(15, 39),
(1, 40),
(8, 40),
(2, 41),
(8, 41),
(3, 42),
(8, 42),
(1, 43),
(24, 43),
(2, 44),
(24, 44),
(3, 45),
(24, 45);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_image`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_image`
--

INSERT INTO `ps_product_attribute_image` (`id_product_attribute`, `id_image`) VALUES
(1, 1),
(3, 1),
(5, 1),
(1, 2),
(3, 2),
(5, 2),
(2, 3),
(4, 3),
(6, 3),
(2, 4),
(4, 4),
(6, 4),
(8, 5),
(10, 5),
(12, 5),
(8, 6),
(10, 6),
(12, 6),
(7, 7),
(9, 7),
(11, 7),
(16, 10),
(17, 10),
(18, 10),
(43, 11),
(44, 11),
(45, 11),
(19, 12),
(23, 12),
(27, 12),
(20, 13),
(24, 13),
(28, 13),
(21, 14),
(25, 14),
(29, 14),
(22, 15),
(26, 15),
(30, 15),
(31, 16),
(32, 16),
(33, 16),
(31, 17),
(32, 17),
(33, 17),
(40, 18),
(41, 18),
(42, 18),
(40, 19),
(41, 19),
(42, 19),
(34, 20),
(35, 20),
(36, 20),
(34, 21),
(35, 21),
(36, 21),
(37, 22),
(38, 22),
(39, 22),
(37, 23),
(38, 23),
(39, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_shop` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_shop`
--

INSERT INTO `ps_product_attribute_shop` (`id_product_attribute`, `id_shop`, `wholesale_price`, `price`, `ecotax`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(2, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(3, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(4, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(5, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(6, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(7, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(8, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(9, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(10, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(11, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(12, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(13, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(14, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(15, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(16, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(17, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(18, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(19, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(20, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(21, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(22, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(23, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(24, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(25, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(26, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(27, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(28, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(29, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(30, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(31, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(32, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(33, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(34, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(35, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(36, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(37, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(38, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(39, 1, '6.150000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(40, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(41, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(42, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(43, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(44, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(45, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment` (
  `id_product_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `grade` float unsigned NOT NULL,
  `validate` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_product_comment`),
  KEY `id_product` (`id_product`),
  KEY `id_customer` (`id_customer`),
  KEY `id_guest` (`id_guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion` (
  `id_product_comment_criterion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_comment_criterion_type` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_product_comment_criterion`
--

INSERT INTO `ps_product_comment_criterion` (`id_product_comment_criterion`, `id_product_comment_criterion_type`, `active`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_category`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_category` (
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_category`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_lang`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_lang` (
  `id_product_comment_criterion` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_comment_criterion_lang`
--

INSERT INTO `ps_product_comment_criterion_lang` (`id_product_comment_criterion`, `id_lang`, `name`) VALUES
(1, 1, 'Quality'),
(1, 2, 'Quality');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_product`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_product` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_grade`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_grade` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `grade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_report`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_report` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_usefulness`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_usefulness` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `usefulness` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_country_tax`
--

CREATE TABLE IF NOT EXISTS `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_download`
--

CREATE TABLE IF NOT EXISTS `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_group_reduction_cache`
--

CREATE TABLE IF NOT EXISTS `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_lang`
--

CREATE TABLE IF NOT EXISTS `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_lang`
--

INSERT INTO `ps_product_lang` (`id_product`, `id_shop`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(1, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Faded short sleeve t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you''re ready for summer!</p>', 'faded-short-sleeve-tshirts', '', '', '', 'Faded Short Sleeve T-shirts', 'In stock', ''),
(1, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Faded short sleeve t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you''re ready for summer!</p>', 'faded-short-sleeve-tshirts', '', '', '', 'Faded Short Sleeve T-shirts', 'In stock', ''),
(2, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Short sleeved blouse with feminine draped sleeve detail.</p>', 'blouse', '', '', '', 'Blouse', 'In stock', ''),
(2, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Short sleeved blouse with feminine draped sleeve detail.</p>', 'blouse', '', '', '', 'Blouse', 'In stock', ''),
(3, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>100% cotton double printed dress. Black and white striped top and orange high waisted skater skirt bottom.</p>', 'printed-dress', '', '', '', 'Printed Dress', 'In stock', ''),
(3, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>100% cotton double printed dress. Black and white striped top and orange high waisted skater skirt bottom.</p>', 'printed-dress', '', '', '', 'Printed Dress', 'In stock', ''),
(4, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Printed evening dress with straight sleeves with black thin waist belt and ruffled linings.</p>', 'printed-dress', '', '', '', 'Printed Dress', 'In stock', ''),
(4, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Printed evening dress with straight sleeves with black thin waist belt and ruffled linings.</p>', 'printed-dress', '', '', '', 'Printed Dress', 'In stock', ''),
(5, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>', 'printed-summer-dress', '', '', '', 'Printed Summer Dress', 'In stock', ''),
(5, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>', 'printed-summer-dress', '', '', '', 'Printed Summer Dress', 'In stock', ''),
(6, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Sleeveless knee-length chiffon dress. V-neckline with elastic under the bust lining.</p>', 'printed-summer-dress', '', '', '', 'Printed Summer Dress', 'In stock', ''),
(6, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Sleeveless knee-length chiffon dress. V-neckline with elastic under the bust lining.</p>', 'printed-summer-dress', '', '', '', 'Printed Summer Dress', 'In stock', ''),
(7, 1, 1, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Printed chiffon knee length dress with tank straps. Deep v-neckline.</p>', 'printed-chiffon-dress', '', '', '', 'Printed Chiffon Dress', 'In stock', ''),
(7, 1, 2, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', '<p>Printed chiffon knee length dress with tank straps. Deep v-neckline.</p>', 'printed-chiffon-dress', '', '', '', 'Printed Chiffon Dress', 'In stock', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_sale`
--

CREATE TABLE IF NOT EXISTS `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_sale`
--

INSERT INTO `ps_product_sale` (`id_product`, `quantity`, `sale_nbr`, `date_upd`) VALUES
(1, 3, 3, '2014-05-11'),
(2, 4, 4, '2014-05-11'),
(3, 3, 3, '2014-05-11'),
(5, 1, 1, '2014-05-11'),
(6, 2, 2, '2014-05-11'),
(7, 2, 2, '2014-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_shop`
--

CREATE TABLE IF NOT EXISTS `ps_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_shop`
--

INSERT INTO `ps_product_shop` (`id_product`, `id_shop`, `id_category_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ecotax`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_default_attribute`, `advanced_stock_management`, `date_add`, `date_upd`) VALUES
(1, 1, 5, 1, 0, 0, '0.000000', 1, '16.510000', '4.950000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 1, 0, '2014-05-11 20:17:38', '2014-05-11 20:17:38'),
(2, 1, 7, 1, 0, 0, '0.000000', 1, '26.999852', '8.100000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 7, 0, '2014-05-11 20:17:39', '2014-05-11 20:17:39'),
(3, 1, 9, 1, 0, 0, '0.000000', 1, '25.999852', '7.800000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 13, 0, '2014-05-11 20:17:39', '2014-05-11 20:17:39'),
(4, 1, 10, 1, 0, 0, '0.000000', 1, '50.994153', '15.300000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 16, 0, '2014-05-11 20:17:39', '2014-05-11 20:17:39'),
(5, 1, 11, 1, 0, 0, '0.000000', 1, '30.506321', '9.150000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 19, 0, '2014-05-11 20:17:39', '2014-05-11 20:17:39'),
(6, 1, 11, 1, 0, 0, '0.000000', 1, '30.502569', '9.150000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 31, 0, '2014-05-11 20:17:40', '2014-05-11 20:17:40'),
(7, 1, 11, 1, 0, 0, '0.000000', 1, '20.501236', '6.150000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 34, 0, '2014-05-11 20:17:40', '2014-05-11 20:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_supplier`
--

CREATE TABLE IF NOT EXISTS `ps_product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_product_supplier`
--

INSERT INTO `ps_product_supplier` (`id_product_supplier`, `id_product`, `id_product_attribute`, `id_supplier`, `product_supplier_reference`, `product_supplier_price_te`, `id_currency`) VALUES
(1, 1, 0, 1, '', '0.000000', 0),
(2, 2, 0, 1, '', '0.000000', 0),
(3, 3, 0, 1, '', '0.000000', 0),
(4, 4, 0, 1, '', '0.000000', 0),
(5, 5, 0, 1, '', '0.000000', 0),
(6, 6, 0, 1, '', '0.000000', 0),
(7, 7, 0, 1, '', '0.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_tag`
--

CREATE TABLE IF NOT EXISTS `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_profile`
--

CREATE TABLE IF NOT EXISTS `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_profile`
--

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `ps_profile_lang`
--

CREATE TABLE IF NOT EXISTS `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_profile_lang`
--

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'SuperAdmin'),
(2, 1, 'SuperAdmin'),
(1, 2, 'Logistician'),
(2, 2, 'Logistician'),
(1, 3, 'Translator'),
(2, 3, 'Translator'),
(1, 4, 'Salesman'),
(2, 4, 'Salesman');

-- --------------------------------------------------------

--
-- Table structure for table `ps_quick_access`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_quick_access`
--

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php?controller=AdminCategories&addcategory'),
(2, 0, 'index.php?controller=AdminProducts&addproduct'),
(3, 0, 'index.php?controller=AdminCartRules&addcart_rule');

-- --------------------------------------------------------

--
-- Table structure for table `ps_quick_access_lang`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_quick_access_lang`
--

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'New category'),
(1, 2, 'New category'),
(2, 1, 'New product'),
(2, 2, 'New product'),
(3, 1, 'New voucher'),
(3, 2, 'New voucher');

-- --------------------------------------------------------

--
-- Table structure for table `ps_range_price`
--

CREATE TABLE IF NOT EXISTS `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_range_price`
--

INSERT INTO `ps_range_price` (`id_range_price`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_range_weight`
--

CREATE TABLE IF NOT EXISTS `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_range_weight`
--

INSERT INTO `ps_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer`
--

CREATE TABLE IF NOT EXISTS `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer_cache`
--

CREATE TABLE IF NOT EXISTS `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer_shop`
--

CREATE TABLE IF NOT EXISTS `ps_referrer_shop` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_request_sql`
--

CREATE TABLE IF NOT EXISTS `ps_request_sql` (
  `id_request_sql` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_required_field`
--

CREATE TABLE IF NOT EXISTS `ps_required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_risk`
--

CREATE TABLE IF NOT EXISTS `ps_risk` (
  `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_risk`
--

INSERT INTO `ps_risk` (`id_risk`, `percent`, `color`) VALUES
(1, 0, 'LimeGreen'),
(2, 35, 'DarkOrange'),
(3, 75, 'Crimson'),
(4, 100, '#ec2e15');

-- --------------------------------------------------------

--
-- Table structure for table `ps_risk_lang`
--

CREATE TABLE IF NOT EXISTS `ps_risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_risk_lang`
--

INSERT INTO `ps_risk_lang` (`id_risk`, `id_lang`, `name`) VALUES
(1, 1, 'None'),
(1, 2, 'None'),
(2, 1, 'Low'),
(2, 2, 'Low'),
(3, 1, 'Medium'),
(3, 2, 'Medium'),
(4, 1, 'High'),
(4, 2, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene`
--

CREATE TABLE IF NOT EXISTS `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_category`
--

CREATE TABLE IF NOT EXISTS `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_lang`
--

CREATE TABLE IF NOT EXISTS `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_products`
--

CREATE TABLE IF NOT EXISTS `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_shop`
--

CREATE TABLE IF NOT EXISTS `ps_scene_shop` (
  `id_scene` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_engine`
--

CREATE TABLE IF NOT EXISTS `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ps_search_engine`
--

INSERT INTO `ps_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_index`
--

CREATE TABLE IF NOT EXISTS `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_search_index`
--

INSERT INTO `ps_search_index` (`id_product`, `id_word`, `weight`) VALUES
(1, 1, 7),
(1, 2, 9),
(2, 2, 3),
(4, 2, 2),
(6, 2, 2),
(1, 3, 9),
(2, 3, 3),
(1, 4, 9),
(1, 5, 10),
(2, 5, 10),
(3, 5, 10),
(4, 5, 10),
(5, 5, 10),
(6, 5, 10),
(7, 5, 10),
(1, 6, 1),
(1, 7, 4),
(2, 7, 3),
(3, 7, 2),
(4, 7, 4),
(5, 7, 4),
(6, 7, 3),
(7, 7, 3),
(1, 8, 1),
(3, 8, 1),
(1, 9, 1),
(5, 9, 1),
(6, 9, 1),
(7, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 2),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(1, 19, 1),
(1, 20, 2),
(2, 20, 1),
(3, 20, 1),
(4, 20, 1),
(5, 20, 1),
(6, 20, 1),
(7, 20, 1),
(1, 21, 1),
(5, 21, 9),
(6, 21, 9),
(7, 21, 3),
(1, 22, 2),
(2, 22, 2),
(3, 22, 2),
(4, 22, 2),
(5, 22, 2),
(6, 22, 2),
(7, 22, 2),
(1, 23, 2),
(2, 23, 2),
(3, 23, 2),
(4, 23, 2),
(5, 23, 2),
(6, 23, 2),
(7, 23, 2),
(1, 24, 1),
(2, 24, 1),
(3, 24, 1),
(4, 24, 1),
(5, 24, 1),
(6, 24, 1),
(7, 24, 1),
(1, 25, 1),
(2, 25, 1),
(3, 25, 1),
(4, 25, 1),
(5, 25, 1),
(6, 25, 1),
(7, 25, 1),
(1, 26, 1),
(2, 26, 1),
(3, 26, 1),
(4, 26, 1),
(5, 26, 1),
(6, 26, 1),
(7, 26, 1),
(1, 27, 1),
(2, 27, 1),
(3, 27, 1),
(4, 27, 1),
(5, 27, 1),
(6, 27, 1),
(7, 27, 1),
(1, 28, 1),
(2, 28, 1),
(3, 28, 1),
(4, 28, 1),
(5, 28, 1),
(6, 28, 1),
(7, 28, 1),
(1, 29, 2),
(2, 29, 2),
(3, 29, 2),
(4, 29, 2),
(5, 29, 2),
(6, 29, 2),
(7, 29, 2),
(1, 30, 1),
(2, 30, 1),
(3, 30, 1),
(4, 30, 1),
(5, 30, 1),
(6, 30, 1),
(7, 30, 1),
(1, 31, 1),
(2, 31, 1),
(3, 31, 1),
(4, 31, 1),
(5, 31, 1),
(6, 31, 1),
(7, 31, 1),
(1, 32, 1),
(2, 32, 1),
(3, 32, 1),
(4, 32, 1),
(5, 32, 1),
(6, 32, 1),
(7, 32, 1),
(1, 33, 1),
(2, 33, 2),
(3, 33, 1),
(4, 33, 1),
(5, 33, 1),
(6, 33, 1),
(7, 33, 1),
(1, 34, 1),
(2, 34, 1),
(3, 34, 1),
(4, 34, 1),
(5, 34, 1),
(6, 34, 1),
(7, 34, 1),
(1, 35, 1),
(2, 35, 1),
(3, 35, 1),
(4, 35, 1),
(5, 35, 1),
(6, 35, 1),
(7, 35, 1),
(1, 36, 1),
(2, 36, 1),
(3, 36, 1),
(4, 36, 1),
(5, 36, 1),
(6, 36, 1),
(7, 36, 1),
(1, 37, 1),
(2, 37, 1),
(3, 37, 1),
(4, 37, 1),
(5, 37, 1),
(6, 37, 1),
(7, 37, 1),
(1, 38, 1),
(2, 38, 1),
(3, 38, 1),
(4, 38, 1),
(5, 38, 1),
(6, 38, 1),
(7, 38, 1),
(1, 39, 1),
(2, 39, 1),
(3, 39, 4),
(4, 39, 4),
(5, 39, 4),
(6, 39, 4),
(7, 39, 4),
(1, 40, 2),
(2, 40, 2),
(3, 40, 2),
(4, 40, 2),
(5, 40, 2),
(6, 40, 2),
(7, 40, 2),
(1, 41, 1),
(2, 41, 1),
(3, 41, 1),
(4, 41, 1),
(5, 41, 1),
(6, 41, 1),
(7, 41, 1),
(1, 42, 1),
(2, 42, 1),
(3, 42, 1),
(4, 42, 1),
(5, 42, 1),
(6, 42, 1),
(7, 42, 1),
(1, 43, 1),
(2, 43, 1),
(3, 43, 1),
(4, 43, 1),
(5, 43, 1),
(6, 43, 1),
(7, 43, 1),
(1, 44, 1),
(2, 44, 1),
(3, 44, 1),
(4, 44, 1),
(5, 44, 1),
(6, 44, 1),
(7, 44, 1),
(1, 45, 1),
(2, 45, 1),
(3, 45, 1),
(4, 45, 1),
(5, 45, 1),
(6, 45, 1),
(7, 45, 1),
(1, 46, 1),
(2, 46, 1),
(3, 46, 1),
(4, 46, 1),
(5, 46, 1),
(6, 46, 1),
(7, 46, 1),
(1, 47, 1),
(2, 47, 1),
(3, 47, 1),
(4, 47, 1),
(5, 47, 1),
(6, 47, 1),
(7, 47, 1),
(1, 48, 1),
(2, 48, 1),
(3, 48, 1),
(4, 48, 1),
(5, 48, 1),
(6, 48, 1),
(7, 48, 1),
(1, 49, 1),
(2, 49, 1),
(3, 49, 1),
(4, 49, 1),
(5, 49, 1),
(6, 49, 1),
(7, 49, 1),
(1, 50, 1),
(2, 50, 1),
(3, 50, 1),
(4, 50, 1),
(5, 50, 1),
(6, 50, 1),
(7, 50, 1),
(1, 51, 1),
(2, 51, 1),
(3, 51, 1),
(4, 51, 1),
(5, 51, 1),
(6, 51, 1),
(7, 51, 1),
(1, 52, 1),
(2, 52, 1),
(3, 52, 1),
(4, 52, 1),
(5, 52, 1),
(6, 52, 1),
(7, 52, 1),
(1, 53, 1),
(2, 53, 1),
(3, 53, 1),
(4, 53, 1),
(5, 53, 1),
(6, 53, 1),
(7, 53, 1),
(1, 54, 1),
(2, 54, 1),
(3, 54, 1),
(4, 54, 1),
(5, 54, 1),
(6, 54, 1),
(7, 54, 1),
(1, 55, 1),
(2, 55, 1),
(3, 55, 1),
(4, 55, 1),
(5, 55, 1),
(6, 55, 1),
(7, 55, 1),
(1, 56, 1),
(2, 56, 1),
(3, 56, 1),
(4, 56, 1),
(5, 56, 1),
(6, 56, 1),
(7, 56, 1),
(1, 57, 1),
(2, 57, 1),
(3, 57, 1),
(4, 57, 1),
(5, 57, 1),
(6, 57, 1),
(7, 57, 1),
(1, 58, 1),
(2, 58, 1),
(3, 58, 1),
(4, 58, 1),
(5, 58, 1),
(6, 58, 1),
(7, 58, 1),
(1, 59, 1),
(2, 59, 1),
(3, 59, 1),
(4, 59, 1),
(5, 59, 1),
(6, 59, 1),
(7, 59, 1),
(1, 60, 1),
(2, 60, 1),
(3, 60, 1),
(4, 60, 1),
(5, 60, 1),
(6, 60, 1),
(7, 60, 1),
(1, 61, 1),
(2, 61, 1),
(3, 61, 1),
(4, 61, 1),
(5, 61, 1),
(6, 61, 1),
(7, 61, 1),
(1, 62, 1),
(2, 62, 1),
(3, 62, 1),
(4, 62, 1),
(5, 62, 1),
(6, 62, 1),
(7, 62, 1),
(1, 63, 1),
(2, 63, 1),
(3, 63, 1),
(4, 63, 1),
(5, 63, 1),
(6, 63, 1),
(7, 63, 1),
(1, 64, 1),
(2, 64, 1),
(3, 64, 1),
(4, 64, 1),
(5, 64, 1),
(6, 64, 1),
(7, 64, 1),
(1, 65, 1),
(2, 65, 1),
(3, 65, 1),
(4, 65, 1),
(5, 65, 1),
(6, 65, 1),
(7, 65, 1),
(1, 66, 1),
(2, 66, 1),
(3, 66, 1),
(4, 66, 1),
(5, 66, 1),
(6, 66, 1),
(7, 66, 1),
(1, 67, 1),
(2, 67, 1),
(3, 67, 1),
(4, 67, 1),
(5, 67, 1),
(6, 67, 1),
(7, 67, 1),
(1, 68, 1),
(2, 68, 1),
(3, 68, 1),
(4, 68, 1),
(5, 68, 1),
(6, 68, 1),
(7, 68, 1),
(1, 69, 1),
(2, 69, 1),
(3, 69, 1),
(4, 69, 1),
(5, 69, 1),
(6, 69, 1),
(7, 69, 1),
(1, 70, 1),
(2, 70, 1),
(3, 70, 1),
(4, 70, 1),
(5, 70, 1),
(6, 70, 1),
(7, 70, 1),
(1, 71, 1),
(2, 71, 1),
(3, 71, 1),
(4, 71, 1),
(5, 71, 1),
(6, 71, 1),
(7, 71, 1),
(1, 72, 1),
(2, 72, 1),
(3, 72, 1),
(4, 72, 1),
(5, 72, 1),
(6, 72, 1),
(7, 72, 1),
(1, 73, 1),
(2, 73, 1),
(3, 73, 1),
(4, 73, 1),
(5, 73, 1),
(6, 73, 1),
(7, 73, 1),
(1, 74, 1),
(2, 74, 1),
(3, 74, 1),
(4, 74, 1),
(5, 74, 1),
(6, 74, 1),
(7, 74, 1),
(1, 75, 1),
(2, 75, 1),
(3, 75, 1),
(4, 75, 1),
(5, 75, 1),
(6, 75, 1),
(7, 75, 1),
(1, 76, 1),
(2, 76, 1),
(3, 76, 1),
(4, 76, 1),
(5, 76, 1),
(6, 76, 1),
(7, 76, 1),
(1, 77, 1),
(2, 77, 1),
(3, 77, 1),
(4, 77, 1),
(5, 77, 1),
(6, 77, 1),
(7, 77, 1),
(1, 78, 1),
(2, 78, 1),
(3, 78, 1),
(4, 78, 1),
(5, 78, 1),
(6, 78, 1),
(7, 78, 1),
(1, 79, 1),
(2, 79, 1),
(3, 79, 1),
(4, 79, 1),
(5, 79, 1),
(6, 79, 1),
(7, 79, 1),
(1, 80, 6),
(3, 80, 7),
(5, 80, 6),
(1, 81, 6),
(5, 81, 6),
(1, 82, 2),
(2, 82, 2),
(3, 82, 3),
(1, 83, 2),
(2, 83, 2),
(3, 83, 3),
(5, 83, 2),
(1, 84, 7),
(1, 85, 9),
(2, 85, 3),
(4, 85, 2),
(6, 85, 2),
(1, 86, 9),
(2, 86, 3),
(1, 87, 9),
(1, 88, 10),
(2, 88, 10),
(3, 88, 10),
(4, 88, 10),
(5, 88, 10),
(6, 88, 10),
(7, 88, 10),
(1, 89, 1),
(1, 90, 4),
(2, 90, 3),
(3, 90, 2),
(4, 90, 4),
(5, 90, 4),
(6, 90, 3),
(7, 90, 3),
(1, 91, 1),
(3, 91, 1),
(1, 92, 1),
(5, 92, 1),
(6, 92, 1),
(7, 92, 1),
(1, 93, 1),
(1, 94, 6),
(2, 94, 4),
(3, 94, 6),
(4, 94, 5),
(5, 94, 5),
(6, 94, 4),
(7, 94, 4),
(1, 95, 1),
(1, 96, 1),
(1, 97, 2),
(1, 98, 1),
(1, 99, 1),
(1, 100, 1),
(1, 101, 1),
(1, 102, 1),
(1, 103, 1),
(1, 104, 2),
(2, 104, 1),
(3, 104, 1),
(4, 104, 1),
(5, 104, 1),
(6, 104, 1),
(7, 104, 1),
(1, 105, 1),
(5, 105, 9),
(6, 105, 9),
(7, 105, 3),
(1, 106, 2),
(2, 106, 2),
(3, 106, 2),
(4, 106, 2),
(5, 106, 2),
(6, 106, 2),
(7, 106, 2),
(1, 107, 2),
(2, 107, 2),
(3, 107, 2),
(4, 107, 2),
(5, 107, 2),
(6, 107, 2),
(7, 107, 2),
(1, 108, 1),
(2, 108, 1),
(3, 108, 1),
(4, 108, 1),
(5, 108, 1),
(6, 108, 1),
(7, 108, 1),
(1, 109, 1),
(2, 109, 1),
(3, 109, 1),
(4, 109, 1),
(5, 109, 1),
(6, 109, 1),
(7, 109, 1),
(1, 110, 1),
(2, 110, 1),
(3, 110, 1),
(4, 110, 1),
(5, 110, 1),
(6, 110, 1),
(7, 110, 1),
(1, 111, 1),
(2, 111, 1),
(3, 111, 1),
(4, 111, 1),
(5, 111, 1),
(6, 111, 1),
(7, 111, 1),
(1, 112, 1),
(2, 112, 1),
(3, 112, 1),
(4, 112, 1),
(5, 112, 1),
(6, 112, 1),
(7, 112, 1),
(1, 113, 2),
(2, 113, 2),
(3, 113, 2),
(4, 113, 2),
(5, 113, 2),
(6, 113, 2),
(7, 113, 2),
(1, 114, 1),
(2, 114, 1),
(3, 114, 1),
(4, 114, 1),
(5, 114, 1),
(6, 114, 1),
(7, 114, 1),
(1, 115, 4),
(2, 115, 4),
(3, 115, 4),
(4, 115, 4),
(5, 115, 7),
(6, 115, 5),
(7, 115, 4),
(1, 116, 1),
(2, 116, 1),
(3, 116, 1),
(4, 116, 1),
(5, 116, 1),
(6, 116, 1),
(7, 116, 1),
(1, 117, 1),
(2, 117, 1),
(3, 117, 1),
(4, 117, 1),
(5, 117, 1),
(6, 117, 1),
(7, 117, 1),
(1, 118, 1),
(2, 118, 2),
(3, 118, 1),
(4, 118, 1),
(5, 118, 1),
(6, 118, 1),
(7, 118, 1),
(1, 119, 1),
(2, 119, 1),
(3, 119, 1),
(4, 119, 1),
(5, 119, 1),
(6, 119, 1),
(7, 119, 1),
(1, 120, 1),
(2, 120, 1),
(3, 120, 1),
(4, 120, 1),
(5, 120, 1),
(6, 120, 1),
(7, 120, 1),
(1, 121, 1),
(2, 121, 1),
(3, 121, 1),
(4, 121, 1),
(5, 121, 1),
(6, 121, 1),
(7, 121, 1),
(1, 122, 1),
(2, 122, 1),
(3, 122, 1),
(4, 122, 1),
(5, 122, 1),
(6, 122, 1),
(7, 122, 1),
(1, 123, 1),
(2, 123, 1),
(3, 123, 1),
(4, 123, 1),
(5, 123, 1),
(6, 123, 1),
(7, 123, 1),
(1, 124, 1),
(2, 124, 1),
(3, 124, 4),
(4, 124, 4),
(5, 124, 4),
(6, 124, 4),
(7, 124, 4),
(1, 125, 2),
(2, 125, 2),
(3, 125, 2),
(4, 125, 2),
(5, 125, 2),
(6, 125, 2),
(7, 125, 2),
(1, 126, 1),
(2, 126, 1),
(3, 126, 1),
(4, 126, 1),
(5, 126, 1),
(6, 126, 1),
(7, 126, 1),
(1, 127, 1),
(2, 127, 1),
(3, 127, 1),
(4, 127, 1),
(5, 127, 1),
(6, 127, 1),
(7, 127, 1),
(1, 128, 1),
(2, 128, 1),
(3, 128, 1),
(4, 128, 1),
(5, 128, 1),
(6, 128, 1),
(7, 128, 1),
(1, 129, 1),
(2, 129, 1),
(3, 129, 1),
(4, 129, 1),
(5, 129, 1),
(6, 129, 1),
(7, 129, 1),
(1, 130, 1),
(2, 130, 1),
(3, 130, 1),
(4, 130, 1),
(5, 130, 1),
(6, 130, 1),
(7, 130, 1),
(1, 131, 1),
(2, 131, 1),
(3, 131, 1),
(4, 131, 1),
(5, 131, 1),
(6, 131, 1),
(7, 131, 1),
(1, 132, 1),
(2, 132, 1),
(3, 132, 1),
(4, 132, 1),
(5, 132, 1),
(6, 132, 1),
(7, 132, 1),
(1, 133, 1),
(2, 133, 1),
(3, 133, 1),
(4, 133, 1),
(5, 133, 1),
(6, 133, 1),
(7, 133, 1),
(1, 134, 1),
(2, 134, 1),
(3, 134, 1),
(4, 134, 1),
(5, 134, 1),
(6, 134, 1),
(7, 134, 1),
(1, 135, 1),
(2, 135, 1),
(3, 135, 1),
(4, 135, 1),
(5, 135, 1),
(6, 135, 1),
(7, 135, 1),
(1, 136, 1),
(2, 136, 1),
(3, 136, 1),
(4, 136, 1),
(5, 136, 1),
(6, 136, 1),
(7, 136, 1),
(1, 137, 1),
(2, 137, 1),
(3, 137, 1),
(4, 137, 1),
(5, 137, 1),
(6, 137, 1),
(7, 137, 1),
(1, 138, 1),
(2, 138, 1),
(3, 138, 1),
(4, 138, 1),
(5, 138, 1),
(6, 138, 1),
(7, 138, 1),
(1, 139, 1),
(2, 139, 1),
(3, 139, 1),
(4, 139, 1),
(5, 139, 1),
(6, 139, 1),
(7, 139, 1),
(1, 140, 1),
(2, 140, 1),
(3, 140, 1),
(4, 140, 1),
(5, 140, 1),
(6, 140, 1),
(7, 140, 1),
(1, 141, 1),
(2, 141, 1),
(3, 141, 1),
(4, 141, 1),
(5, 141, 1),
(6, 141, 1),
(7, 141, 1),
(1, 142, 1),
(2, 142, 1),
(3, 142, 1),
(4, 142, 1),
(5, 142, 1),
(6, 142, 1),
(7, 142, 1),
(1, 143, 1),
(2, 143, 1),
(3, 143, 1),
(4, 143, 1),
(5, 143, 1),
(6, 143, 1),
(7, 143, 1),
(1, 144, 1),
(2, 144, 1),
(3, 144, 1),
(4, 144, 1),
(5, 144, 1),
(6, 144, 1),
(7, 144, 1),
(1, 145, 1),
(2, 145, 1),
(3, 145, 1),
(4, 145, 1),
(5, 145, 1),
(6, 145, 1),
(7, 145, 1),
(1, 146, 1),
(2, 146, 1),
(3, 146, 1),
(4, 146, 1),
(5, 146, 1),
(6, 146, 1),
(7, 146, 1),
(1, 147, 1),
(2, 147, 1),
(3, 147, 1),
(4, 147, 1),
(5, 147, 1),
(6, 147, 1),
(7, 147, 1),
(1, 148, 1),
(2, 148, 1),
(3, 148, 1),
(4, 148, 1),
(5, 148, 1),
(6, 148, 1),
(7, 148, 1),
(1, 149, 1),
(2, 149, 1),
(3, 149, 1),
(4, 149, 1),
(5, 149, 1),
(6, 149, 1),
(7, 149, 1),
(1, 150, 1),
(2, 150, 1),
(3, 150, 1),
(4, 150, 1),
(5, 150, 1),
(6, 150, 1),
(7, 150, 1),
(1, 151, 1),
(2, 151, 1),
(3, 151, 1),
(4, 151, 1),
(5, 151, 1),
(6, 151, 1),
(7, 151, 1),
(1, 152, 1),
(2, 152, 1),
(3, 152, 1),
(4, 152, 1),
(5, 152, 1),
(6, 152, 1),
(7, 152, 1),
(1, 153, 1),
(2, 153, 1),
(3, 153, 1),
(4, 153, 1),
(5, 153, 1),
(6, 153, 1),
(7, 153, 1),
(1, 154, 1),
(2, 154, 1),
(3, 154, 1),
(4, 154, 1),
(5, 154, 1),
(6, 154, 1),
(7, 154, 1),
(1, 155, 1),
(2, 155, 1),
(3, 155, 1),
(4, 155, 1),
(5, 155, 1),
(6, 155, 1),
(7, 155, 1),
(1, 156, 1),
(2, 156, 1),
(3, 156, 1),
(4, 156, 1),
(5, 156, 1),
(6, 156, 1),
(7, 156, 1),
(1, 157, 1),
(2, 157, 1),
(3, 157, 1),
(4, 157, 1),
(5, 157, 1),
(6, 157, 1),
(7, 157, 1),
(1, 158, 1),
(2, 158, 1),
(3, 158, 1),
(4, 158, 1),
(5, 158, 1),
(6, 158, 1),
(7, 158, 1),
(1, 159, 1),
(2, 159, 1),
(3, 159, 1),
(4, 159, 1),
(5, 159, 1),
(6, 159, 1),
(7, 159, 1),
(1, 160, 1),
(2, 160, 1),
(3, 160, 1),
(4, 160, 1),
(5, 160, 1),
(6, 160, 1),
(7, 160, 1),
(1, 161, 1),
(2, 161, 1),
(3, 161, 1),
(4, 161, 1),
(5, 161, 1),
(6, 161, 1),
(7, 161, 1),
(1, 162, 1),
(2, 162, 1),
(3, 162, 1),
(4, 162, 1),
(5, 162, 1),
(6, 162, 1),
(7, 162, 1),
(1, 163, 1),
(2, 163, 1),
(3, 163, 1),
(4, 163, 1),
(5, 163, 1),
(6, 163, 1),
(7, 163, 1),
(1, 164, 1),
(2, 164, 1),
(3, 164, 1),
(4, 164, 1),
(5, 164, 1),
(6, 164, 1),
(7, 164, 1),
(1, 165, 6),
(3, 165, 7),
(5, 165, 6),
(1, 166, 6),
(5, 166, 6),
(1, 167, 2),
(2, 167, 2),
(3, 167, 3),
(1, 168, 2),
(2, 168, 2),
(3, 168, 3),
(5, 168, 2),
(2, 169, 7),
(2, 170, 1),
(2, 171, 1),
(2, 172, 1),
(2, 173, 3),
(2, 174, 6),
(3, 174, 1),
(4, 174, 1),
(5, 174, 6),
(2, 175, 6),
(3, 175, 1),
(6, 175, 6),
(2, 176, 7),
(2, 177, 1),
(2, 178, 1),
(2, 179, 1),
(2, 180, 3),
(2, 181, 6),
(3, 181, 1),
(4, 181, 1),
(5, 181, 6),
(2, 182, 6),
(3, 182, 1),
(6, 182, 6),
(3, 183, 7),
(4, 183, 7),
(5, 183, 7),
(6, 183, 6),
(7, 183, 7),
(3, 184, 9),
(4, 184, 9),
(5, 184, 10),
(6, 184, 9),
(7, 184, 9),
(3, 185, 1),
(3, 186, 1),
(3, 187, 1),
(3, 188, 1),
(3, 189, 1),
(3, 190, 1),
(3, 191, 1),
(3, 192, 1),
(5, 192, 1),
(3, 193, 2),
(6, 193, 2),
(7, 193, 2),
(3, 194, 2),
(3, 195, 7),
(4, 195, 7),
(5, 195, 7),
(6, 195, 6),
(7, 195, 7),
(3, 196, 9),
(4, 196, 9),
(5, 196, 10),
(6, 196, 9),
(7, 196, 9),
(3, 197, 1),
(3, 198, 1),
(3, 199, 1),
(3, 200, 1),
(3, 201, 1),
(3, 202, 1),
(3, 203, 1),
(3, 204, 1),
(5, 204, 1),
(3, 205, 2),
(6, 205, 2),
(7, 205, 2),
(3, 206, 2),
(4, 207, 4),
(4, 208, 1),
(4, 209, 1),
(4, 210, 1),
(5, 210, 1),
(4, 211, 1),
(4, 212, 1),
(4, 213, 1),
(4, 214, 1),
(4, 215, 6),
(4, 216, 6),
(4, 217, 2),
(5, 217, 2),
(4, 218, 2),
(4, 219, 4),
(4, 220, 1),
(4, 221, 1),
(4, 222, 1),
(5, 222, 1),
(4, 223, 1),
(4, 224, 1),
(4, 225, 1),
(4, 226, 1),
(4, 227, 6),
(4, 228, 6),
(4, 229, 2),
(5, 229, 2),
(4, 230, 2),
(5, 231, 1),
(5, 232, 1),
(5, 233, 1),
(7, 233, 1),
(5, 234, 1),
(5, 235, 1),
(6, 235, 1),
(5, 236, 1),
(6, 236, 1),
(5, 237, 1),
(5, 238, 6),
(6, 238, 6),
(7, 238, 6),
(5, 239, 2),
(5, 240, 1),
(5, 241, 1),
(5, 242, 1),
(7, 242, 1),
(5, 243, 1),
(5, 244, 1),
(6, 244, 1),
(5, 245, 1),
(6, 245, 1),
(5, 246, 1),
(5, 247, 6),
(6, 247, 6),
(7, 247, 6),
(5, 248, 2),
(6, 249, 1),
(6, 250, 1),
(7, 250, 1),
(6, 251, 1),
(7, 251, 1),
(6, 252, 1),
(7, 252, 7),
(6, 253, 1),
(6, 254, 1),
(6, 255, 2),
(7, 255, 2),
(6, 256, 1),
(6, 257, 1),
(7, 257, 1),
(6, 258, 1),
(7, 258, 1),
(6, 259, 1),
(7, 259, 7),
(6, 260, 1),
(6, 261, 1),
(6, 262, 2),
(7, 262, 2),
(7, 263, 1),
(7, 264, 1),
(7, 265, 6),
(7, 266, 2),
(7, 267, 1),
(7, 268, 1),
(7, 269, 6),
(7, 270, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_word`
--

CREATE TABLE IF NOT EXISTS `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=271 ;

--
-- Dumping data for table `ps_search_word`
--

INSERT INTO `ps_search_word` (`id_word`, `id_shop`, `id_lang`, `word`) VALUES
(185, 1, 1, '100'),
(30, 1, 1, '2010'),
(74, 1, 1, 'accessories'),
(16, 1, 1, 'accessorize'),
(232, 1, 1, 'adjustable'),
(62, 1, 1, 'all'),
(65, 1, 1, 'are'),
(70, 1, 1, 'attention'),
(63, 1, 1, 'beautiful'),
(24, 1, 1, 'been'),
(215, 1, 1, 'beige'),
(212, 1, 1, 'belt'),
(78, 1, 1, 'belts'),
(174, 1, 1, 'black'),
(169, 1, 1, 'blouse'),
(173, 1, 1, 'blouses'),
(81, 1, 1, 'blue'),
(192, 1, 1, 'bottom'),
(31, 1, 1, 'brand'),
(236, 1, 1, 'bust'),
(83, 1, 1, 'casual'),
(55, 1, 1, 'chic'),
(252, 1, 1, 'chiffon'),
(45, 1, 1, 'collection'),
(28, 1, 1, 'collections'),
(194, 1, 1, 'colorful'),
(14, 1, 1, 'comfortable'),
(53, 1, 1, 'cool'),
(82, 1, 1, 'cotton'),
(25, 1, 1, 'creating'),
(264, 1, 1, 'deep'),
(35, 1, 1, 'delivering'),
(5, 1, 1, 'demo'),
(27, 1, 1, 'designed'),
(34, 1, 1, 'designs'),
(172, 1, 1, 'detail'),
(186, 1, 1, 'double'),
(171, 1, 1, 'draped'),
(184, 1, 1, 'dress'),
(39, 1, 1, 'dresses'),
(218, 1, 1, 'dressy'),
(54, 1, 1, 'easy'),
(253, 1, 1, 'elastic'),
(58, 1, 1, 'elegance'),
(207, 1, 1, 'evening'),
(46, 1, 1, 'every'),
(41, 1, 1, 'evolved'),
(72, 1, 1, 'extends'),
(1, 1, 1, 'faded'),
(22, 1, 1, 'fashion'),
(33, 1, 1, 'feminine'),
(15, 1, 1, 'fit'),
(13, 1, 1, 'for'),
(43, 1, 1, 'full'),
(193, 1, 1, 'girly'),
(69, 1, 1, 'greatest'),
(265, 1, 1, 'green'),
(23, 1, 1, 'has'),
(18, 1, 1, 'hat'),
(77, 1, 1, 'hats'),
(8, 1, 1, 'high'),
(75, 1, 1, 'including'),
(42, 1, 1, 'into'),
(67, 1, 1, 'italy'),
(47, 1, 1, 'item'),
(250, 1, 1, 'knee'),
(251, 1, 1, 'length'),
(254, 1, 1, 'lining'),
(214, 1, 1, 'linings'),
(231, 1, 1, 'long'),
(56, 1, 1, 'looks'),
(66, 1, 1, 'made'),
(68, 1, 1, 'manufactured'),
(12, 1, 1, 'material'),
(239, 1, 1, 'maxi'),
(266, 1, 1, 'midi'),
(79, 1, 1, 'more'),
(9, 1, 1, 'neckline'),
(71, 1, 1, 'now'),
(32, 1, 1, 'offers'),
(80, 1, 1, 'orange'),
(49, 1, 1, 'part'),
(64, 1, 1, 'pieces'),
(216, 1, 1, 'pink'),
(255, 1, 1, 'polyester'),
(183, 1, 1, 'printed'),
(73, 1, 1, 'range'),
(20, 1, 1, 'ready'),
(52, 1, 1, 'result'),
(213, 1, 1, 'ruffled'),
(237, 1, 1, 'ruffles'),
(37, 1, 1, 'separates'),
(6, 1, 1, 'shirt'),
(4, 1, 1, 'shirts'),
(76, 1, 1, 'shoes'),
(2, 1, 1, 'short'),
(60, 1, 1, 'signature'),
(29, 1, 1, 'since'),
(190, 1, 1, 'skater'),
(191, 1, 1, 'skirt'),
(3, 1, 1, 'sleeve'),
(170, 1, 1, 'sleeved'),
(249, 1, 1, 'sleeveless'),
(209, 1, 1, 'sleeves'),
(10, 1, 1, 'soft'),
(38, 1, 1, 'statement'),
(208, 1, 1, 'straight'),
(233, 1, 1, 'straps'),
(17, 1, 1, 'straw'),
(11, 1, 1, 'stretchy'),
(187, 1, 1, 'striped'),
(61, 1, 1, 'style'),
(36, 1, 1, 'stylish'),
(21, 1, 1, 'summer'),
(263, 1, 1, 'tank'),
(210, 1, 1, 'thin'),
(188, 1, 1, 'top'),
(235, 1, 1, 'under'),
(59, 1, 1, 'unmistakable'),
(217, 1, 1, 'viscose'),
(48, 1, 1, 'vital'),
(211, 1, 1, 'waist'),
(189, 1, 1, 'waisted'),
(51, 1, 1, 'wardrobe'),
(44, 1, 1, 'wear'),
(26, 1, 1, 'well'),
(40, 1, 1, 'which'),
(175, 1, 1, 'white'),
(234, 1, 1, 'wiring'),
(7, 1, 1, 'with'),
(50, 1, 1, 'woman'),
(238, 1, 1, 'yellow'),
(19, 1, 1, 'you'),
(57, 1, 1, 'youthful'),
(197, 1, 2, '100'),
(114, 1, 2, '2010'),
(159, 1, 2, 'accessories'),
(100, 1, 2, 'accessorize'),
(241, 1, 2, 'adjustable'),
(147, 1, 2, 'all'),
(94, 1, 2, 'and'),
(150, 1, 2, 'are'),
(155, 1, 2, 'attention'),
(148, 1, 2, 'beautiful'),
(108, 1, 2, 'been'),
(227, 1, 2, 'beige'),
(224, 1, 2, 'belt'),
(163, 1, 2, 'belts'),
(181, 1, 2, 'black'),
(176, 1, 2, 'blouse'),
(180, 1, 2, 'blouses'),
(166, 1, 2, 'blue'),
(204, 1, 2, 'bottom'),
(116, 1, 2, 'brand'),
(245, 1, 2, 'bust'),
(168, 1, 2, 'casual'),
(140, 1, 2, 'chic'),
(259, 1, 2, 'chiffon'),
(130, 1, 2, 'collection'),
(112, 1, 2, 'collections'),
(206, 1, 2, 'colorful'),
(98, 1, 2, 'comfortable'),
(138, 1, 2, 'cool'),
(167, 1, 2, 'cotton'),
(109, 1, 2, 'creating'),
(268, 1, 2, 'deep'),
(120, 1, 2, 'delivering'),
(88, 1, 2, 'demo'),
(111, 1, 2, 'designed'),
(119, 1, 2, 'designs'),
(179, 1, 2, 'detail'),
(198, 1, 2, 'double'),
(178, 1, 2, 'draped'),
(196, 1, 2, 'dress'),
(124, 1, 2, 'dresses'),
(230, 1, 2, 'dressy'),
(139, 1, 2, 'easy'),
(260, 1, 2, 'elastic'),
(143, 1, 2, 'elegance'),
(219, 1, 2, 'evening'),
(131, 1, 2, 'every'),
(126, 1, 2, 'evolved'),
(157, 1, 2, 'extends'),
(84, 1, 2, 'faded'),
(106, 1, 2, 'fashion'),
(118, 1, 2, 'feminine'),
(99, 1, 2, 'fit'),
(97, 1, 2, 'for'),
(128, 1, 2, 'full'),
(205, 1, 2, 'girly'),
(154, 1, 2, 'greatest'),
(269, 1, 2, 'green'),
(107, 1, 2, 'has'),
(102, 1, 2, 'hat'),
(162, 1, 2, 'hats'),
(91, 1, 2, 'high'),
(160, 1, 2, 'including'),
(127, 1, 2, 'into'),
(152, 1, 2, 'italy'),
(132, 1, 2, 'item'),
(257, 1, 2, 'knee'),
(258, 1, 2, 'length'),
(261, 1, 2, 'lining'),
(226, 1, 2, 'linings'),
(240, 1, 2, 'long'),
(141, 1, 2, 'looks'),
(151, 1, 2, 'made'),
(153, 1, 2, 'manufactured'),
(96, 1, 2, 'material'),
(248, 1, 2, 'maxi'),
(270, 1, 2, 'midi'),
(164, 1, 2, 'more'),
(92, 1, 2, 'neckline'),
(156, 1, 2, 'now'),
(117, 1, 2, 'offers'),
(165, 1, 2, 'orange'),
(134, 1, 2, 'part'),
(149, 1, 2, 'pieces'),
(228, 1, 2, 'pink'),
(262, 1, 2, 'polyester'),
(195, 1, 2, 'printed'),
(158, 1, 2, 'range'),
(104, 1, 2, 'ready'),
(137, 1, 2, 'result'),
(225, 1, 2, 'ruffled'),
(246, 1, 2, 'ruffles'),
(122, 1, 2, 'separates'),
(89, 1, 2, 'shirt'),
(87, 1, 2, 'shirts'),
(161, 1, 2, 'shoes'),
(85, 1, 2, 'short'),
(145, 1, 2, 'signature'),
(113, 1, 2, 'since'),
(202, 1, 2, 'skater'),
(203, 1, 2, 'skirt'),
(86, 1, 2, 'sleeve'),
(177, 1, 2, 'sleeved'),
(256, 1, 2, 'sleeveless'),
(221, 1, 2, 'sleeves'),
(93, 1, 2, 'soft'),
(123, 1, 2, 'statement'),
(220, 1, 2, 'straight'),
(242, 1, 2, 'straps'),
(101, 1, 2, 'straw'),
(95, 1, 2, 'stretchy'),
(199, 1, 2, 'striped'),
(146, 1, 2, 'style'),
(121, 1, 2, 'stylish'),
(105, 1, 2, 'summer'),
(267, 1, 2, 'tank'),
(115, 1, 2, 'the'),
(222, 1, 2, 'thin'),
(200, 1, 2, 'top'),
(244, 1, 2, 'under'),
(144, 1, 2, 'unmistakable'),
(229, 1, 2, 'viscose'),
(133, 1, 2, 'vital'),
(223, 1, 2, 'waist'),
(201, 1, 2, 'waisted'),
(136, 1, 2, 'wardrobe'),
(129, 1, 2, 'wear'),
(110, 1, 2, 'well'),
(125, 1, 2, 'which'),
(182, 1, 2, 'white'),
(243, 1, 2, 'wiring'),
(90, 1, 2, 'with'),
(135, 1, 2, 'woman'),
(247, 1, 2, 'yellow'),
(103, 1, 2, 'you'),
(142, 1, 2, 'youthful');

-- --------------------------------------------------------

--
-- Table structure for table `ps_sekeyword`
--

CREATE TABLE IF NOT EXISTS `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop`
--

CREATE TABLE IF NOT EXISTS `ps_shop` (
  `id_shop` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) unsigned NOT NULL DEFAULT '1',
  `id_theme` int(1) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop`
--

INSERT INTO `ps_shop` (`id_shop`, `id_shop_group`, `name`, `id_category`, `id_theme`, `active`, `deleted`) VALUES
(1, 1, 'Action Figure', 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop_group`
--

CREATE TABLE IF NOT EXISTS `ps_shop_group` (
  `id_shop_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop_group`
--

INSERT INTO `ps_shop_group` (`id_shop_group`, `name`, `share_customer`, `share_order`, `share_stock`, `active`, `deleted`) VALUES
(1, 'Default', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop_url`
--

CREATE TABLE IF NOT EXISTS `ps_shop_url` (
  `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop_url`
--

INSERT INTO `ps_shop_url` (`id_shop_url`, `id_shop`, `domain`, `domain_ssl`, `physical_uri`, `virtual_uri`, `main`, `active`) VALUES
(1, 1, 'localhost:8080', 'localhost:8080', '/prestashop/', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_specific_price`
--

INSERT INTO `ps_specific_price` (`id_specific_price`, `id_specific_price_rule`, `id_cart`, `id_product`, `id_shop`, `id_shop_group`, `id_currency`, `id_country`, `id_group`, `id_customer`, `id_product_attribute`, `price`, `from_quantity`, `reduction`, `reduction_type`, `from`, `to`) VALUES
(1, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, '-1.000000', 1, '0.050000', 'percentage', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '-1.000000', 1, '0.200000', 'percentage', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_priority`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule` (
  `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule_condition`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule_condition_group`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_state`
--

CREATE TABLE IF NOT EXISTS `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

--
-- Dumping data for table `ps_state`
--

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 44, 6, 'Buenos Aires', 'B', 0, 1),
(100, 44, 6, 'Catamarca', 'K', 0, 1),
(101, 44, 6, 'Chaco', 'H', 0, 1),
(102, 44, 6, 'Chubut', 'U', 0, 1),
(103, 44, 6, 'Ciudad de Buenos Aires', 'C', 0, 1),
(104, 44, 6, 'Córdoba', 'X', 0, 1),
(105, 44, 6, 'Corrientes', 'W', 0, 1),
(106, 44, 6, 'Entre Ríos', 'E', 0, 1),
(107, 44, 6, 'Formosa', 'P', 0, 1),
(108, 44, 6, 'Jujuy', 'Y', 0, 1),
(109, 44, 6, 'La Pampa', 'L', 0, 1),
(110, 44, 6, 'La Rioja', 'F', 0, 1),
(111, 44, 6, 'Mendoza', 'M', 0, 1),
(112, 44, 6, 'Misiones', 'N', 0, 1),
(113, 44, 6, 'Neuquén', 'Q', 0, 1),
(114, 44, 6, 'Río Negro', 'R', 0, 1),
(115, 44, 6, 'Salta', 'A', 0, 1),
(116, 44, 6, 'San Juan', 'J', 0, 1),
(117, 44, 6, 'San Luis', 'D', 0, 1),
(118, 44, 6, 'Santa Cruz', 'Z', 0, 1),
(119, 44, 6, 'Santa Fe', 'S', 0, 1),
(120, 44, 6, 'Santiago del Estero', 'G', 0, 1),
(121, 44, 6, 'Tierra del Fuego', 'V', 0, 1),
(122, 44, 6, 'Tucumán', 'T', 0, 1),
(123, 10, 1, 'Agrigento', 'AG', 0, 1),
(124, 10, 1, 'Alessandria', 'AL', 0, 1),
(125, 10, 1, 'Ancona', 'AN', 0, 1),
(126, 10, 1, 'Aosta', 'AO', 0, 1),
(127, 10, 1, 'Arezzo', 'AR', 0, 1),
(128, 10, 1, 'Ascoli Piceno', 'AP', 0, 1),
(129, 10, 1, 'Asti', 'AT', 0, 1),
(130, 10, 1, 'Avellino', 'AV', 0, 1),
(131, 10, 1, 'Bari', 'BA', 0, 1),
(132, 10, 1, 'Barletta-Andria-Trani', 'BT', 0, 1),
(133, 10, 1, 'Belluno', 'BL', 0, 1),
(134, 10, 1, 'Benevento', 'BN', 0, 1),
(135, 10, 1, 'Bergamo', 'BG', 0, 1),
(136, 10, 1, 'Biella', 'BI', 0, 1),
(137, 10, 1, 'Bologna', 'BO', 0, 1),
(138, 10, 1, 'Bolzano', 'BZ', 0, 1),
(139, 10, 1, 'Brescia', 'BS', 0, 1),
(140, 10, 1, 'Brindisi', 'BR', 0, 1),
(141, 10, 1, 'Cagliari', 'CA', 0, 1),
(142, 10, 1, 'Caltanissetta', 'CL', 0, 1),
(143, 10, 1, 'Campobasso', 'CB', 0, 1),
(144, 10, 1, 'Carbonia-Iglesias', 'CI', 0, 1),
(145, 10, 1, 'Caserta', 'CE', 0, 1),
(146, 10, 1, 'Catania', 'CT', 0, 1),
(147, 10, 1, 'Catanzaro', 'CZ', 0, 1),
(148, 10, 1, 'Chieti', 'CH', 0, 1),
(149, 10, 1, 'Como', 'CO', 0, 1),
(150, 10, 1, 'Cosenza', 'CS', 0, 1),
(151, 10, 1, 'Cremona', 'CR', 0, 1),
(152, 10, 1, 'Crotone', 'KR', 0, 1),
(153, 10, 1, 'Cuneo', 'CN', 0, 1),
(154, 10, 1, 'Enna', 'EN', 0, 1),
(155, 10, 1, 'Fermo', 'FM', 0, 1),
(156, 10, 1, 'Ferrara', 'FE', 0, 1),
(157, 10, 1, 'Firenze', 'FI', 0, 1),
(158, 10, 1, 'Foggia', 'FG', 0, 1),
(159, 10, 1, 'Forlì-Cesena', 'FC', 0, 1),
(160, 10, 1, 'Frosinone', 'FR', 0, 1),
(161, 10, 1, 'Genova', 'GE', 0, 1),
(162, 10, 1, 'Gorizia', 'GO', 0, 1),
(163, 10, 1, 'Grosseto', 'GR', 0, 1),
(164, 10, 1, 'Imperia', 'IM', 0, 1),
(165, 10, 1, 'Isernia', 'IS', 0, 1),
(166, 10, 1, 'L''Aquila', 'AQ', 0, 1),
(167, 10, 1, 'La Spezia', 'SP', 0, 1),
(168, 10, 1, 'Latina', 'LT', 0, 1),
(169, 10, 1, 'Lecce', 'LE', 0, 1),
(170, 10, 1, 'Lecco', 'LC', 0, 1),
(171, 10, 1, 'Livorno', 'LI', 0, 1),
(172, 10, 1, 'Lodi', 'LO', 0, 1),
(173, 10, 1, 'Lucca', 'LU', 0, 1),
(174, 10, 1, 'Macerata', 'MC', 0, 1),
(175, 10, 1, 'Mantova', 'MN', 0, 1),
(176, 10, 1, 'Massa', 'MS', 0, 1),
(177, 10, 1, 'Matera', 'MT', 0, 1),
(178, 10, 1, 'Medio Campidano', 'VS', 0, 1),
(179, 10, 1, 'Messina', 'ME', 0, 1),
(180, 10, 1, 'Milano', 'MI', 0, 1),
(181, 10, 1, 'Modena', 'MO', 0, 1),
(182, 10, 1, 'Monza e della Brianza', 'MB', 0, 1),
(183, 10, 1, 'Napoli', 'NA', 0, 1),
(184, 10, 1, 'Novara', 'NO', 0, 1),
(185, 10, 1, 'Nuoro', 'NU', 0, 1),
(186, 10, 1, 'Ogliastra', 'OG', 0, 1),
(187, 10, 1, 'Olbia-Tempio', 'OT', 0, 1),
(188, 10, 1, 'Oristano', 'OR', 0, 1),
(189, 10, 1, 'Padova', 'PD', 0, 1),
(190, 10, 1, 'Palermo', 'PA', 0, 1),
(191, 10, 1, 'Parma', 'PR', 0, 1),
(192, 10, 1, 'Pavia', 'PV', 0, 1),
(193, 10, 1, 'Perugia', 'PG', 0, 1),
(194, 10, 1, 'Pesaro-Urbino', 'PU', 0, 1),
(195, 10, 1, 'Pescara', 'PE', 0, 1),
(196, 10, 1, 'Piacenza', 'PC', 0, 1),
(197, 10, 1, 'Pisa', 'PI', 0, 1),
(198, 10, 1, 'Pistoia', 'PT', 0, 1),
(199, 10, 1, 'Pordenone', 'PN', 0, 1),
(200, 10, 1, 'Potenza', 'PZ', 0, 1),
(201, 10, 1, 'Prato', 'PO', 0, 1),
(202, 10, 1, 'Ragusa', 'RG', 0, 1),
(203, 10, 1, 'Ravenna', 'RA', 0, 1),
(204, 10, 1, 'Reggio Calabria', 'RC', 0, 1),
(205, 10, 1, 'Reggio Emilia', 'RE', 0, 1),
(206, 10, 1, 'Rieti', 'RI', 0, 1),
(207, 10, 1, 'Rimini', 'RN', 0, 1),
(208, 10, 1, 'Roma', 'RM', 0, 1),
(209, 10, 1, 'Rovigo', 'RO', 0, 1),
(210, 10, 1, 'Salerno', 'SA', 0, 1),
(211, 10, 1, 'Sassari', 'SS', 0, 1),
(212, 10, 1, 'Savona', 'SV', 0, 1),
(213, 10, 1, 'Siena', 'SI', 0, 1),
(214, 10, 1, 'Siracusa', 'SR', 0, 1),
(215, 10, 1, 'Sondrio', 'SO', 0, 1),
(216, 10, 1, 'Taranto', 'TA', 0, 1),
(217, 10, 1, 'Teramo', 'TE', 0, 1),
(218, 10, 1, 'Terni', 'TR', 0, 1),
(219, 10, 1, 'Torino', 'TO', 0, 1),
(220, 10, 1, 'Trapani', 'TP', 0, 1),
(221, 10, 1, 'Trento', 'TN', 0, 1),
(222, 10, 1, 'Treviso', 'TV', 0, 1),
(223, 10, 1, 'Trieste', 'TS', 0, 1),
(224, 10, 1, 'Udine', 'UD', 0, 1),
(225, 10, 1, 'Varese', 'VA', 0, 1),
(226, 10, 1, 'Venezia', 'VE', 0, 1),
(227, 10, 1, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(228, 10, 1, 'Vercelli', 'VC', 0, 1),
(229, 10, 1, 'Verona', 'VR', 0, 1),
(230, 10, 1, 'Vibo Valentia', 'VV', 0, 1),
(231, 10, 1, 'Vicenza', 'VI', 0, 1),
(232, 10, 1, 'Viterbo', 'VT', 0, 1),
(233, 111, 3, 'Aceh', 'AC', 0, 1),
(234, 111, 3, 'Bali', 'BA', 0, 1),
(235, 111, 3, 'Bangka', 'BB', 0, 1),
(236, 111, 3, 'Banten', 'BT', 0, 1),
(237, 111, 3, 'Bengkulu', 'BE', 0, 1),
(238, 111, 3, 'Central Java', 'JT', 0, 1),
(239, 111, 3, 'Central Kalimantan', 'KT', 0, 1),
(240, 111, 3, 'Central Sulawesi', 'ST', 0, 1),
(241, 111, 3, 'Coat of arms of East Java', 'JI', 0, 1),
(242, 111, 3, 'East kalimantan', 'KI', 0, 1),
(243, 111, 3, 'East Nusa Tenggara', 'NT', 0, 1),
(244, 111, 3, 'Lambang propinsi', 'GO', 0, 1),
(245, 111, 3, 'Jakarta', 'JK', 0, 1),
(246, 111, 3, 'Jambi', 'JA', 0, 1),
(247, 111, 3, 'Lampung', 'LA', 0, 1),
(248, 111, 3, 'Maluku', 'MA', 0, 1),
(249, 111, 3, 'North Maluku', 'MU', 0, 1),
(250, 111, 3, 'North Sulawesi', 'SA', 0, 1),
(251, 111, 3, 'North Sumatra', 'SU', 0, 1),
(252, 111, 3, 'Papua', 'PA', 0, 1),
(253, 111, 3, 'Riau', 'RI', 0, 1),
(254, 111, 3, 'Lambang Riau', 'KR', 0, 1),
(255, 111, 3, 'Southeast Sulawesi', 'SG', 0, 1),
(256, 111, 3, 'South Kalimantan', 'KS', 0, 1),
(257, 111, 3, 'South Sulawesi', 'SN', 0, 1),
(258, 111, 3, 'South Sumatra', 'SS', 0, 1),
(259, 111, 3, 'West Java', 'JB', 0, 1),
(260, 111, 3, 'West Kalimantan', 'KB', 0, 1),
(261, 111, 3, 'West Nusa Tenggara', 'NB', 0, 1),
(262, 111, 3, 'Lambang Provinsi Papua Barat', 'PB', 0, 1),
(263, 111, 3, 'West Sulawesi', 'SR', 0, 1),
(264, 111, 3, 'West Sumatra', 'SB', 0, 1),
(265, 111, 3, 'Yogyakarta', 'YO', 0, 1),
(266, 11, 3, 'Aichi', '23', 0, 1),
(267, 11, 3, 'Akita', '05', 0, 1),
(268, 11, 3, 'Aomori', '02', 0, 1),
(269, 11, 3, 'Chiba', '12', 0, 1),
(270, 11, 3, 'Ehime', '38', 0, 1),
(271, 11, 3, 'Fukui', '18', 0, 1),
(272, 11, 3, 'Fukuoka', '40', 0, 1),
(273, 11, 3, 'Fukushima', '07', 0, 1),
(274, 11, 3, 'Gifu', '21', 0, 1),
(275, 11, 3, 'Gunma', '10', 0, 1),
(276, 11, 3, 'Hiroshima', '34', 0, 1),
(277, 11, 3, 'Hokkaido', '01', 0, 1),
(278, 11, 3, 'Hyogo', '28', 0, 1),
(279, 11, 3, 'Ibaraki', '08', 0, 1),
(280, 11, 3, 'Ishikawa', '17', 0, 1),
(281, 11, 3, 'Iwate', '03', 0, 1),
(282, 11, 3, 'Kagawa', '37', 0, 1),
(283, 11, 3, 'Kagoshima', '46', 0, 1),
(284, 11, 3, 'Kanagawa', '14', 0, 1),
(285, 11, 3, 'Kochi', '39', 0, 1),
(286, 11, 3, 'Kumamoto', '43', 0, 1),
(287, 11, 3, 'Kyoto', '26', 0, 1),
(288, 11, 3, 'Mie', '24', 0, 1),
(289, 11, 3, 'Miyagi', '04', 0, 1),
(290, 11, 3, 'Miyazaki', '45', 0, 1),
(291, 11, 3, 'Nagano', '20', 0, 1),
(292, 11, 3, 'Nagasaki', '42', 0, 1),
(293, 11, 3, 'Nara', '29', 0, 1),
(294, 11, 3, 'Niigata', '15', 0, 1),
(295, 11, 3, 'Oita', '44', 0, 1),
(296, 11, 3, 'Okayama', '33', 0, 1),
(297, 11, 3, 'Okinawa', '47', 0, 1),
(298, 11, 3, 'Osaka', '27', 0, 1),
(299, 11, 3, 'Saga', '41', 0, 1),
(300, 11, 3, 'Saitama', '11', 0, 1),
(301, 11, 3, 'Shiga', '25', 0, 1),
(302, 11, 3, 'Shimane', '32', 0, 1),
(303, 11, 3, 'Shizuoka', '22', 0, 1),
(304, 11, 3, 'Tochigi', '09', 0, 1),
(305, 11, 3, 'Tokushima', '36', 0, 1),
(306, 11, 3, 'Tokyo', '13', 0, 1),
(307, 11, 3, 'Tottori', '31', 0, 1),
(308, 11, 3, 'Toyama', '16', 0, 1),
(309, 11, 3, 'Wakayama', '30', 0, 1),
(310, 11, 3, 'Yamagata', '06', 0, 1),
(311, 11, 3, 'Yamaguchi', '35', 0, 1),
(312, 11, 3, 'Yamanashi', '19', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_statssearch`
--

CREATE TABLE IF NOT EXISTS `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock`
--

CREATE TABLE IF NOT EXISTS `ps_stock` (
  `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_available`
--

CREATE TABLE IF NOT EXISTS `ps_stock_available` (
  `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `ps_stock_available`
--

INSERT INTO `ps_stock_available` (`id_stock_available`, `id_product`, `id_product_attribute`, `id_shop`, `id_shop_group`, `quantity`, `depends_on_stock`, `out_of_stock`) VALUES
(1, 1, 0, 1, 0, 1799, 0, 2),
(2, 2, 0, 1, 0, 1799, 0, 2),
(3, 3, 0, 1, 0, 899, 0, 2),
(4, 4, 0, 1, 0, 900, 0, 2),
(5, 5, 0, 1, 0, 3600, 0, 2),
(6, 6, 0, 1, 0, 900, 0, 2),
(7, 7, 0, 1, 0, 1800, 0, 2),
(8, 1, 1, 1, 0, 299, 0, 2),
(9, 1, 2, 1, 0, 300, 0, 2),
(10, 1, 3, 1, 0, 300, 0, 2),
(11, 1, 4, 1, 0, 300, 0, 2),
(12, 1, 5, 1, 0, 300, 0, 2),
(13, 1, 6, 1, 0, 300, 0, 2),
(14, 2, 7, 1, 0, 299, 0, 2),
(15, 2, 8, 1, 0, 300, 0, 2),
(16, 2, 9, 1, 0, 300, 0, 2),
(17, 2, 10, 1, 0, 300, 0, 2),
(18, 2, 11, 1, 0, 300, 0, 2),
(19, 2, 12, 1, 0, 300, 0, 2),
(20, 3, 13, 1, 0, 299, 0, 2),
(21, 3, 14, 1, 0, 300, 0, 2),
(22, 3, 15, 1, 0, 300, 0, 2),
(23, 4, 16, 1, 0, 300, 0, 2),
(24, 4, 17, 1, 0, 300, 0, 2),
(25, 4, 18, 1, 0, 300, 0, 2),
(26, 5, 19, 1, 0, 300, 0, 2),
(27, 5, 20, 1, 0, 300, 0, 2),
(28, 5, 21, 1, 0, 300, 0, 2),
(29, 5, 22, 1, 0, 300, 0, 2),
(30, 5, 23, 1, 0, 300, 0, 2),
(31, 5, 24, 1, 0, 300, 0, 2),
(32, 5, 25, 1, 0, 300, 0, 2),
(33, 5, 26, 1, 0, 300, 0, 2),
(34, 5, 27, 1, 0, 300, 0, 2),
(35, 5, 28, 1, 0, 300, 0, 2),
(36, 5, 29, 1, 0, 300, 0, 2),
(37, 5, 30, 1, 0, 300, 0, 2),
(38, 6, 31, 1, 0, 300, 0, 2),
(39, 6, 32, 1, 0, 300, 0, 2),
(40, 6, 33, 1, 0, 300, 0, 2),
(41, 7, 34, 1, 0, 300, 0, 2),
(42, 7, 35, 1, 0, 300, 0, 2),
(43, 7, 36, 1, 0, 300, 0, 2),
(44, 7, 37, 1, 0, 300, 0, 2),
(45, 7, 38, 1, 0, 300, 0, 2),
(46, 7, 39, 1, 0, 300, 0, 2),
(47, 6, 40, 1, 0, 0, 0, 2),
(48, 6, 41, 1, 0, 0, 0, 2),
(49, 6, 42, 1, 0, 0, 0, 2),
(50, 4, 43, 1, 0, 0, 0, 2),
(51, 4, 44, 1, 0, 0, 0, 2),
(52, 4, 45, 1, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt` (
  `id_stock_mvt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_supply_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt_reason`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_stock_mvt_reason`
--

INSERT INTO `ps_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`, `deleted`) VALUES
(1, 1, '2014-05-11 20:15:55', '2014-05-11 20:15:55', 0),
(2, -1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(3, -1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(4, -1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(5, 1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(6, -1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(7, 1, '2014-05-11 20:15:56', '2014-05-11 20:15:56', 0),
(8, 1, '2014-05-11 20:15:57', '2014-05-11 20:15:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt_reason_lang`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_stock_mvt_reason_lang`
--

INSERT INTO `ps_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1, 1, 'Increase'),
(1, 2, 'Increase'),
(2, 1, 'Decrease'),
(2, 2, 'Decrease'),
(3, 1, 'Customer Order'),
(3, 2, 'Customer Order'),
(4, 1, 'Regulation following an inventory of stock'),
(4, 2, 'Regulation following an inventory of stock'),
(5, 1, 'Regulation following an inventory of stock'),
(5, 2, 'Regulation following an inventory of stock'),
(6, 1, 'Transfer to another warehouse'),
(6, 2, 'Transfer to another warehouse'),
(7, 1, 'Transfer from another warehouse'),
(7, 2, 'Transfer from another warehouse'),
(8, 1, 'Supply Order'),
(8, 2, 'Supply Order');

-- --------------------------------------------------------

--
-- Table structure for table `ps_store`
--

CREATE TABLE IF NOT EXISTS `ps_store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_store`
--

INSERT INTO `ps_store` (`id_store`, `id_country`, `id_state`, `name`, `address1`, `address2`, `city`, `postcode`, `latitude`, `longitude`, `hours`, `phone`, `fax`, `email`, `note`, `active`, `date_add`, `date_upd`) VALUES
(1, 21, 9, 'Dade County', '3030 SW 8th St Miami', '', 'Miami', ' 33135', '25.76500500', '-80.24379700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-05-11 20:18:17', '2014-05-11 20:18:17'),
(2, 21, 9, 'E Fort Lauderdale', '1000 Northeast 4th Ave Fort Lauderdale', '', 'Miami', ' 33304', '26.13793600', '-80.13943500', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-05-11 20:18:17', '2014-05-11 20:18:17'),
(3, 21, 9, 'Pembroke Pines', '11001 Pines Blvd Pembroke Pines', '', 'Miami', '33026', '26.00998700', '-80.29447200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-05-11 20:18:18', '2014-05-11 20:18:18'),
(4, 21, 9, 'Coconut Grove', '2999 SW 32nd Avenue', '', 'Miami', ' 33133', '25.73629600', '-80.24479700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-05-11 20:18:18', '2014-05-11 20:18:18'),
(5, 21, 9, 'N Miami/Biscayne', '12055 Biscayne Blvd', '', 'Miami', '33181', '25.88674000', '-80.16329200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-05-11 20:18:18', '2014-05-11 20:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `ps_store_shop`
--

CREATE TABLE IF NOT EXISTS `ps_store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_store_shop`
--

INSERT INTO `ps_store_shop` (`id_store`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier`
--

CREATE TABLE IF NOT EXISTS `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_supplier`
--

INSERT INTO `ps_supplier` (`id_supplier`, `name`, `date_add`, `date_upd`, `active`) VALUES
(1, 'Fashion Supplier', '2014-05-11 20:17:21', '2014-05-11 20:17:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supplier_lang`
--

INSERT INTO `ps_supplier_lang` (`id_supplier`, `id_lang`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, '', '', '', ''),
(1, 2, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier_shop`
--

CREATE TABLE IF NOT EXISTS `ps_supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supplier_shop`
--

INSERT INTO `ps_supplier_shop` (`id_supplier`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order` (
  `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_detail`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_detail` (
  `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_history`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_history` (
  `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_receipt_history`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_state`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_state` (
  `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ps_supply_order_state`
--

INSERT INTO `ps_supply_order_state` (`id_supply_order_state`, `delivery_note`, `editable`, `receipt_state`, `pending_receipt`, `enclosed`, `color`) VALUES
(1, 0, 1, 0, 0, 0, '#faab00'),
(2, 1, 0, 0, 0, 0, '#273cff'),
(3, 0, 0, 0, 1, 0, '#ff37f5'),
(4, 0, 0, 1, 1, 0, '#ff3e33'),
(5, 0, 0, 1, 0, 1, '#00d60c'),
(6, 0, 0, 0, 0, 1, '#666666');

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supply_order_state_lang`
--

INSERT INTO `ps_supply_order_state_lang` (`id_supply_order_state`, `id_lang`, `name`) VALUES
(1, 1, '1 - Creation in progress'),
(1, 2, '1 - Creation in progress'),
(2, 1, '2 - Order validated'),
(2, 2, '2 - Order validated'),
(3, 1, '3 - Pending receipt'),
(3, 2, '3 - Pending receipt'),
(4, 1, '4 - Order received in part'),
(4, 2, '4 - Order received in part'),
(5, 1, '5 - Order received completely'),
(5, 2, '5 - Order received completely'),
(6, 1, '6 - Order canceled'),
(6, 2, '6 - Order canceled');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab`
--

CREATE TABLE IF NOT EXISTS `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `ps_tab`
--

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`, `active`, `hide_host_mode`) VALUES
(1, 0, 'AdminDashboard', '', 0, 1, 0),
(2, -1, 'AdminCms', '', 0, 1, 0),
(3, -1, 'AdminCmsCategories', '', 1, 1, 0),
(4, -1, 'AdminAttributeGenerator', '', 2, 1, 0),
(5, -1, 'AdminSearch', '', 3, 1, 0),
(6, -1, 'AdminLogin', '', 4, 1, 0),
(7, -1, 'AdminShop', '', 5, 1, 0),
(8, -1, 'AdminShopUrl', '', 6, 1, 0),
(9, 0, 'AdminCatalog', '', 1, 1, 0),
(10, 0, 'AdminParentOrders', '', 2, 1, 0),
(11, 0, 'AdminParentCustomer', '', 3, 1, 0),
(12, 0, 'AdminPriceRule', '', 4, 1, 0),
(13, 0, 'AdminParentModules', '', 5, 1, 0),
(14, 0, 'AdminParentShipping', '', 6, 1, 0),
(15, 0, 'AdminParentLocalization', '', 7, 1, 0),
(16, 0, 'AdminParentPreferences', '', 8, 1, 0),
(17, 0, 'AdminTools', '', 9, 1, 0),
(18, 0, 'AdminAdmin', '', 10, 1, 0),
(19, 0, 'AdminParentStats', '', 11, 1, 0),
(20, 0, 'AdminStock', '', 12, 1, 0),
(21, 9, 'AdminProducts', '', 0, 1, 0),
(22, 9, 'AdminCategories', '', 1, 1, 0),
(23, 9, 'AdminTracking', '', 2, 1, 0),
(24, 9, 'AdminAttributesGroups', '', 3, 1, 0),
(25, 9, 'AdminFeatures', '', 4, 1, 0),
(26, 9, 'AdminManufacturers', '', 5, 1, 0),
(27, 9, 'AdminSuppliers', '', 6, 1, 0),
(28, 9, 'AdminTags', '', 7, 1, 0),
(29, 9, 'AdminAttachments', '', 8, 1, 0),
(30, 10, 'AdminOrders', '', 0, 1, 0),
(31, 10, 'AdminInvoices', '', 1, 1, 0),
(32, 10, 'AdminReturn', '', 2, 1, 0),
(33, 10, 'AdminDeliverySlip', '', 3, 1, 0),
(34, 10, 'AdminSlip', '', 4, 1, 0),
(35, 10, 'AdminStatuses', '', 5, 1, 0),
(36, 10, 'AdminOrderMessage', '', 6, 1, 0),
(37, 11, 'AdminCustomers', '', 0, 1, 0),
(38, 11, 'AdminAddresses', '', 1, 1, 0),
(39, 11, 'AdminGroups', '', 2, 1, 0),
(40, 11, 'AdminCarts', '', 3, 1, 0),
(41, 11, 'AdminCustomerThreads', '', 4, 1, 0),
(42, 11, 'AdminContacts', '', 5, 1, 0),
(43, 11, 'AdminGenders', '', 6, 1, 0),
(44, 11, 'AdminOutstanding', '', 7, 0, 0),
(45, 12, 'AdminCartRules', '', 0, 1, 0),
(46, 12, 'AdminSpecificPriceRule', '', 1, 1, 0),
(47, 12, 'AdminMarketing', '', 2, 1, 0),
(48, 14, 'AdminCarriers', '', 0, 1, 0),
(49, 14, 'AdminShipping', '', 1, 1, 0),
(50, 14, 'AdminCarrierWizard', '', 2, 1, 0),
(51, 15, 'AdminLocalization', '', 0, 1, 0),
(52, 15, 'AdminLanguages', '', 1, 1, 0),
(53, 15, 'AdminZones', '', 2, 1, 0),
(54, 15, 'AdminCountries', '', 3, 1, 0),
(55, 15, 'AdminStates', '', 4, 1, 0),
(56, 15, 'AdminCurrencies', '', 5, 1, 0),
(57, 15, 'AdminTaxes', '', 6, 1, 0),
(58, 15, 'AdminTaxRulesGroup', '', 7, 1, 0),
(59, 15, 'AdminTranslations', '', 8, 1, 0),
(60, 13, 'AdminModules', '', 0, 1, 0),
(61, 13, 'AdminAddonsCatalog', '', 1, 1, 0),
(62, 13, 'AdminModulesPositions', '', 2, 1, 0),
(63, 13, 'AdminPayment', '', 3, 1, 0),
(64, 16, 'AdminPreferences', '', 0, 1, 0),
(65, 16, 'AdminOrderPreferences', '', 1, 1, 0),
(66, 16, 'AdminPPreferences', '', 2, 1, 0),
(67, 16, 'AdminCustomerPreferences', '', 3, 1, 0),
(68, 16, 'AdminThemes', '', 4, 1, 0),
(69, 16, 'AdminMeta', '', 5, 1, 0),
(70, 16, 'AdminCmsContent', '', 6, 1, 0),
(71, 16, 'AdminImages', '', 7, 1, 0),
(72, 16, 'AdminStores', '', 8, 1, 0),
(73, 16, 'AdminSearchConf', '', 9, 1, 0),
(74, 16, 'AdminMaintenance', '', 10, 1, 0),
(75, 16, 'AdminGeolocation', '', 11, 1, 0),
(76, 17, 'AdminInformation', '', 0, 1, 0),
(77, 17, 'AdminPerformance', '', 1, 1, 0),
(78, 17, 'AdminEmails', '', 2, 1, 0),
(79, 17, 'AdminShopGroup', '', 3, 0, 0),
(80, 17, 'AdminImport', '', 4, 1, 0),
(81, 17, 'AdminBackup', '', 5, 1, 0),
(82, 17, 'AdminRequestSql', '', 6, 1, 0),
(83, 17, 'AdminLogs', '', 7, 1, 0),
(84, 17, 'AdminWebservice', '', 8, 1, 0),
(85, 18, 'AdminAdminPreferences', '', 0, 1, 0),
(86, 18, 'AdminQuickAccesses', '', 1, 1, 0),
(87, 18, 'AdminEmployees', '', 2, 1, 0),
(88, 18, 'AdminProfiles', '', 3, 1, 0),
(89, 18, 'AdminAccess', '', 4, 1, 0),
(90, 18, 'AdminTabs', '', 5, 1, 0),
(91, 19, 'AdminStats', '', 0, 1, 0),
(92, 19, 'AdminSearchEngines', '', 1, 1, 0),
(93, 19, 'AdminReferrers', '', 2, 1, 0),
(94, 20, 'AdminWarehouses', '', 0, 1, 0),
(95, 20, 'AdminStockManagement', '', 1, 1, 0),
(96, 20, 'AdminStockMvt', '', 2, 1, 0),
(97, 20, 'AdminStockInstantState', '', 3, 1, 0),
(98, 20, 'AdminStockCover', '', 4, 1, 0),
(99, 20, 'AdminSupplyOrders', '', 5, 1, 0),
(100, 20, 'AdminStockConfiguration', '', 6, 1, 0),
(101, -1, 'AdminBlockCategories', 'blockcategories', 7, 1, 0),
(102, -1, 'AdminDashgoals', 'dashgoals', 8, 1, 0),
(103, 18, 'AdminGamification', 'gamification', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_advice`
--

CREATE TABLE IF NOT EXISTS `ps_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  PRIMARY KEY (`id_tab`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tab_lang`
--

INSERT INTO `ps_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1, 1, 'Dashboard'),
(1, 2, 'Dasbor'),
(2, 1, 'CMS Pages'),
(2, 2, 'Halaman CMS'),
(3, 1, 'CMS Categories'),
(3, 2, 'Kategori CMS'),
(4, 1, 'Combinations Generator'),
(4, 2, 'Pembuat kombinasi'),
(5, 1, 'Search'),
(5, 2, 'Cari'),
(6, 1, 'Login'),
(6, 2, 'Login:'),
(7, 1, 'Shops'),
(7, 2, 'Toko'),
(8, 1, 'Shop URLs'),
(8, 2, 'URL Toko'),
(9, 1, 'Catalog'),
(9, 2, 'Katalog'),
(10, 1, 'Orders'),
(10, 2, 'Pembelian'),
(11, 1, 'Customers'),
(11, 2, 'Pelanggan'),
(12, 1, 'Price Rules'),
(12, 2, 'Voucher'),
(13, 1, 'Modules'),
(13, 2, 'Modul'),
(14, 1, 'Shipping'),
(14, 2, 'Pengiriman'),
(15, 1, 'Localization'),
(15, 2, 'Lokalisasi'),
(16, 1, 'Preferences'),
(16, 2, 'Preferensi'),
(17, 1, 'Advanced Parameters'),
(17, 2, 'Parameter lanjutan'),
(18, 1, 'Administration'),
(18, 2, 'Administrasi'),
(19, 1, 'Stats'),
(19, 2, 'Statistik'),
(20, 1, 'Stock'),
(20, 2, 'Stok'),
(21, 1, 'Products'),
(21, 2, 'Produk'),
(22, 1, 'Categories'),
(22, 2, 'Kategori'),
(23, 1, 'Monitoring'),
(23, 2, 'Monitoring'),
(24, 1, 'Product Attributes'),
(24, 2, 'Atribut produk'),
(25, 1, 'Product Features'),
(25, 2, 'Fitur produk'),
(26, 1, 'Manufacturers'),
(26, 2, 'Brand'),
(27, 1, 'Suppliers'),
(27, 2, 'Pemasok'),
(28, 1, 'Tags'),
(28, 2, 'Tag'),
(29, 1, 'Attachments'),
(29, 2, 'Lampiran'),
(30, 1, 'Orders'),
(30, 2, 'Pembelian'),
(31, 1, 'Invoices'),
(31, 2, 'Invoice'),
(32, 1, 'Merchandise Returns'),
(32, 2, 'Retur barang'),
(33, 1, 'Delivery Slips'),
(33, 2, 'Nota pengiriman'),
(34, 1, 'Credit Slips'),
(34, 2, 'Nota kredit'),
(35, 1, 'Statuses'),
(35, 2, 'Status'),
(36, 1, 'Order Messages'),
(36, 2, 'Pesan'),
(37, 1, 'Customers'),
(37, 2, 'Pelanggan'),
(38, 1, 'Addresses'),
(38, 2, 'Alamat'),
(39, 1, 'Groups'),
(39, 2, 'Grup'),
(40, 1, 'Shopping Carts'),
(40, 2, 'Daftar belanja'),
(41, 1, 'Customer Service'),
(41, 2, 'Layanan Pelanggan'),
(42, 1, 'Contacts'),
(42, 2, 'Kontak'),
(43, 1, 'Titles'),
(43, 2, 'Judul'),
(44, 1, 'Outstanding'),
(44, 2, 'Outstanding'),
(45, 1, 'Cart Rules'),
(45, 2, 'Aturan harga'),
(46, 1, 'Catalog Price Rules'),
(46, 2, 'Aturan harga produk'),
(47, 1, 'Marketing'),
(47, 2, 'Marketing'),
(48, 1, 'Carriers'),
(48, 2, 'Kurir'),
(49, 1, 'Preferences'),
(49, 2, 'Preferensi'),
(50, 1, 'Carrier'),
(50, 2, 'Kurir'),
(51, 1, 'Localization'),
(51, 2, 'Lokalisasi'),
(52, 1, 'Languages'),
(52, 2, 'Bahasa'),
(53, 1, 'Zones'),
(53, 2, 'Zona'),
(54, 1, 'Countries'),
(54, 2, 'Negara'),
(55, 1, 'States'),
(55, 2, 'Negara Bagian'),
(56, 1, 'Currencies'),
(56, 2, 'Mata Uang'),
(57, 1, 'Taxes'),
(57, 2, 'Pajak-Pajak'),
(58, 1, 'Tax Rules'),
(58, 2, 'Aturan pajak'),
(59, 1, 'Translations'),
(59, 2, 'Terjemahan'),
(60, 1, 'Modules'),
(60, 2, 'Modul'),
(61, 1, 'Modules & Themes Catalog'),
(61, 2, 'Katalog modul dan theme'),
(62, 1, 'Positions'),
(62, 2, 'Posisi'),
(63, 1, 'Payment'),
(63, 2, 'Pembayaran'),
(64, 1, 'General'),
(64, 2, 'Umum'),
(65, 1, 'Orders'),
(65, 2, 'Pembelian'),
(66, 1, 'Products'),
(66, 2, 'Produk'),
(67, 1, 'Customers'),
(67, 2, 'Pelanggan'),
(68, 1, 'Themes'),
(68, 2, 'Theme'),
(69, 1, 'SEO & URLs'),
(69, 2, 'SEO & URL'),
(70, 1, 'CMS'),
(70, 2, 'CMS'),
(71, 1, 'Images'),
(71, 2, 'Gambar'),
(72, 1, 'Store Contacts'),
(72, 2, 'Kontak toko'),
(73, 1, 'Search'),
(73, 2, 'Cari'),
(74, 1, 'Maintenance'),
(74, 2, 'Pemeliharaan'),
(75, 1, 'Geolocation'),
(75, 2, 'Geolocation'),
(76, 1, 'Configuration Information'),
(76, 2, 'Informasi konfigurasi'),
(77, 1, 'Performance'),
(77, 2, 'Performansi'),
(78, 1, 'E-mail'),
(78, 2, 'Email'),
(79, 1, 'Multistore'),
(79, 2, 'Multistore'),
(80, 1, 'CSV Import'),
(80, 2, 'Impor CSV'),
(81, 1, 'DB Backup'),
(81, 2, 'Backup database'),
(82, 1, 'SQL Manager'),
(82, 2, 'SQL Manager'),
(83, 1, 'Logs'),
(83, 2, 'Log'),
(84, 1, 'Webservice'),
(84, 2, 'Webservice'),
(85, 1, 'Preferences'),
(85, 2, 'Preferensi'),
(86, 1, 'Quick Access'),
(86, 2, 'Akses cepat'),
(87, 1, 'Employees'),
(87, 2, 'Karyawan'),
(88, 1, 'Profiles'),
(88, 2, 'Profil'),
(89, 1, 'Permissions'),
(89, 2, 'Hak akses'),
(90, 1, 'Menus'),
(90, 2, 'Menu'),
(91, 1, 'Stats'),
(91, 2, 'Statistik'),
(92, 1, 'Search Engines'),
(92, 2, 'Mesin pencari'),
(93, 1, 'Referrers'),
(93, 2, 'Acuan'),
(94, 1, 'Warehouses'),
(94, 2, 'Gudang'),
(95, 1, 'Stock Management'),
(95, 2, 'Manajemen stok'),
(96, 1, 'Stock Movement'),
(96, 2, 'Perpindahan stok'),
(97, 1, 'Instant Stock Status'),
(97, 2, 'Status Instant stock'),
(98, 1, 'Stock Coverage'),
(98, 2, 'Ketersediaan stok'),
(99, 1, 'Supply orders'),
(99, 2, 'Supply order'),
(100, 1, 'Configuration'),
(100, 2, 'Konfigurasi'),
(101, 1, 'BlockCategories'),
(101, 2, 'BlockCategories'),
(102, 1, 'Dashgoals'),
(102, 2, 'Dashgoals'),
(103, 1, 'Merchant Expertise'),
(103, 2, 'Merchant Expertise');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_module_preference`
--

CREATE TABLE IF NOT EXISTS `ps_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_tag`
--

CREATE TABLE IF NOT EXISTS `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax`
--

CREATE TABLE IF NOT EXISTS `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_tax`
--

INSERT INTO `ps_tax` (`id_tax`, `rate`, `active`, `deleted`) VALUES
(1, '10.000', 1, 0),
(2, '5.000', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tax_lang`
--

INSERT INTO `ps_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1, 1, 'PPN ID 10%'),
(1, 2, 'PPN ID 10%'),
(2, 1, 'PPN ID 5%'),
(2, 2, 'PPN ID 5%');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rule`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_tax_rule`
--

INSERT INTO `ps_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `zipcode_from`, `zipcode_to`, `id_tax`, `behavior`, `description`) VALUES
(1, 1, 111, 0, '0', '0', 1, 0, ''),
(2, 2, 111, 0, '0', '0', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rules_group`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_tax_rules_group`
--

INSERT INTO `ps_tax_rules_group` (`id_tax_rules_group`, `name`, `active`) VALUES
(1, 'ID Standard Rate (10%)', 1),
(2, 'ID Reduced Rate (5%)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tax_rules_group_shop`
--

INSERT INTO `ps_tax_rules_group_shop` (`id_tax_rules_group`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_theme`
--

CREATE TABLE IF NOT EXISTS `ps_theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_theme`
--

INSERT INTO `ps_theme` (`id_theme`, `name`, `directory`, `responsive`, `default_left_column`, `default_right_column`, `product_per_page`) VALUES
(1, 'default-bootstrap', 'default-bootstrap', 1, 1, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ps_theme_meta`
--

CREATE TABLE IF NOT EXISTS `ps_theme_meta` (
  `id_theme_meta` int(11) NOT NULL AUTO_INCREMENT,
  `id_theme` int(11) NOT NULL,
  `id_meta` int(10) unsigned NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_theme_meta`),
  UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`),
  KEY `id_theme` (`id_theme`),
  KEY `id_meta` (`id_meta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `ps_theme_meta`
--

INSERT INTO `ps_theme_meta` (`id_theme_meta`, `id_theme`, `id_meta`, `left_column`, `right_column`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 0, 0),
(4, 1, 4, 0, 0),
(5, 1, 5, 1, 0),
(6, 1, 6, 1, 0),
(7, 1, 7, 0, 0),
(8, 1, 8, 1, 0),
(9, 1, 9, 1, 0),
(10, 1, 10, 0, 0),
(11, 1, 11, 0, 0),
(12, 1, 12, 0, 0),
(13, 1, 13, 0, 0),
(14, 1, 14, 0, 0),
(15, 1, 15, 0, 0),
(16, 1, 16, 0, 0),
(17, 1, 17, 0, 0),
(18, 1, 18, 0, 0),
(19, 1, 19, 0, 0),
(20, 1, 20, 0, 0),
(21, 1, 21, 0, 0),
(22, 1, 22, 1, 0),
(23, 1, 23, 0, 0),
(24, 1, 24, 0, 0),
(25, 1, 25, 0, 0),
(26, 1, 26, 0, 0),
(27, 1, 28, 1, 0),
(28, 1, 29, 0, 0),
(29, 1, 27, 0, 0),
(30, 1, 30, 0, 0),
(31, 1, 31, 0, 0),
(32, 1, 32, 0, 0),
(33, 1, 33, 0, 0),
(34, 1, 34, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_theme_specific`
--

CREATE TABLE IF NOT EXISTS `ps_theme_specific` (
  `id_theme` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `entity` int(11) unsigned NOT NULL,
  `id_object` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_themeconfigurator`
--

CREATE TABLE IF NOT EXISTS `ps_themeconfigurator` (
  `id_item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `item_order` int(10) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hook` varchar(100) DEFAULT NULL,
  `url` text,
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `image_w` varchar(10) DEFAULT NULL,
  `image_h` varchar(10) DEFAULT NULL,
  `html` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ps_themeconfigurator`
--

INSERT INTO `ps_themeconfigurator` (`id_item`, `id_shop`, `id_lang`, `item_order`, `title`, `title_use`, `hook`, `url`, `target`, `image`, `image_w`, `image_h`, `html`, `active`) VALUES
(1, 1, 1, 1, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img1.jpg', '383', '267', '', 1),
(2, 1, 1, 2, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img2.jpg', '383', '267', '', 1),
(3, 1, 1, 3, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img3.jpg', '383', '267', '', 1),
(4, 1, 1, 4, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img4.jpg', '383', '142', '', 1),
(5, 1, 1, 5, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img5.jpg', '777', '142', '', 1),
(6, 1, 1, 6, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img6.jpg', '381', '219', '', 1),
(7, 1, 1, 7, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img7.jpg', '381', '219', '', 1),
(8, 1, 2, 1, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img1.jpg', '383', '267', '', 1),
(9, 1, 2, 2, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img2.jpg', '383', '267', '', 1),
(10, 1, 2, 3, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img3.jpg', '383', '267', '', 1),
(11, 1, 2, 4, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img4.jpg', '383', '142', '', 1),
(12, 1, 2, 5, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img5.jpg', '777', '142', '', 1),
(13, 1, 2, 6, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img6.jpg', '381', '219', '', 1),
(14, 1, 2, 7, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img7.jpg', '381', '219', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_timezone`
--

CREATE TABLE IF NOT EXISTS `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=561 ;

--
-- Dumping data for table `ps_timezone`
--

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse` (
  `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_product_location`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_product_location` (
  `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_shop`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_web_browser`
--

CREATE TABLE IF NOT EXISTS `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ps_web_browser`
--

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Safari iPad'),
(3, 'Firefox'),
(4, 'Opera'),
(5, 'IE 6'),
(6, 'IE 7'),
(7, 'IE 8'),
(8, 'IE 9'),
(9, 'IE 10'),
(10, 'IE 11'),
(11, 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_account`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_account_shop`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_permission`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist` (
  `id_wishlist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `counter` int(10) unsigned DEFAULT NULL,
  `id_shop` int(10) unsigned DEFAULT '1',
  `id_shop_group` int(10) unsigned DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_wishlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_email`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_email` (
  `id_wishlist` int(10) unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_product`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_product` (
  `id_wishlist_product` int(10) NOT NULL AUTO_INCREMENT,
  `id_wishlist` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_wishlist_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_product_cart`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_product_cart` (
  `id_wishlist_product` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_zone`
--

CREATE TABLE IF NOT EXISTS `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_zone`
--

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Europe', 1),
(2, 'North America', 1),
(3, 'Asia', 1),
(4, 'Africa', 1),
(5, 'Oceania', 1),
(6, 'South America', 1),
(7, 'Europe (non-EU)', 1),
(8, 'Central America/Antilla', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_zone_shop`
--

CREATE TABLE IF NOT EXISTS `ps_zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_zone_shop`
--

INSERT INTO `ps_zone_shop` (`id_zone`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);
--
-- Database: `shop_action_figure`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE IF NOT EXISTS `login_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(18) NOT NULL,
  `password` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kel` enum('male','female') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id_admin`, `username`, `password`, `email`, `nama`, `jenis_kel`, `alamat`) VALUES
(1, 'tantan', 'tantan', 'tantan', 'tantan', 'male', 'jogja'),
(2, 'admin', 'admin', 'admin@tantan.com', 'admin', 'male', 'Internet');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `Agama` enum('islam','kristen','protestan','hindu','buddha') NOT NULL DEFAULT 'islam',
  `jenis_kel` enum('pria','wanita') NOT NULL DEFAULT 'pria',
  `kewenagaraan` char(15) NOT NULL DEFAULT 'Indonesia',
  `nama_user` varchar(25) NOT NULL,
  `pass_user` varchar(25) NOT NULL,
  `level` enum('user') NOT NULL DEFAULT 'user',
  `alamat` char(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id_user`, `Agama`, `jenis_kel`, `kewenagaraan`, `nama_user`, `pass_user`, `level`, `alamat`) VALUES
(1, 'islam', 'pria', 'Indonesia', 'wahyu', '1234567890', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_item_transaksi` (
  `kode_transaksi` varchar(13) NOT NULL,
  `kode_barang_transaksi` varchar(15) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) NOT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `nama_kategori` (`nama_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `deskripsi`, `parent`) VALUES
(1, 'Gundam', '<p>Semua Produk seri anime <strong>gundam</strong></p>', NULL),
(2, 'Ships', 'Action figure model kapal perang', NULL),
(3, 'Super Deformed', 'Produk Gundam edisi kecil', 1),
(4, 'High Grade', '<p>Gundam standard dengan scale rata-rata <strong>1/144</strong></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengirim`
--

CREATE TABLE IF NOT EXISTS `tbl_pengirim` (
  `id_pengirim` varchar(5) NOT NULL,
  `nama_pengirim` char(25) NOT NULL,
  `alamat_pengirim` char(50) NOT NULL,
  `tlp_pengirim` varchar(15) NOT NULL,
  PRIMARY KEY (`id_pengirim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `rilis` date NOT NULL,
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `depth` int(11) DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_produk`),
  UNIQUE KEY `kode_produk` (`kode_produk`),
  KEY `id_kategori` (`id_kategori`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `deskripsi`, `id_kategori`, `id_supplier`, `harga`, `stok`, `rilis`, `width`, `height`, `depth`, `weight`) VALUES
(1, 'PPGN-001', 'Gundam Amazing Exia', '<p><strong>Gundam Amazing Exia</strong></p>', 4, 1, 250000, 5, '2014-04-01', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_status_transaksi` (
  `no_trans` varchar(13) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `status` enum('batal','sukses','proses') NOT NULL DEFAULT 'proses',
  `pengirim` varchar(5) NOT NULL,
  `no_resi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE IF NOT EXISTS `tbl_supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(30) NOT NULL,
  `deskripsi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`),
  UNIQUE KEY `nama_supplier` (`nama_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `deskripsi`) VALUES
(1, 'Bandai', '<p>Pemasok Besar Toys dari seri-seri terkenal terutama dari seri gundam</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
  `kode_transaksi` varchar(13) NOT NULL,
  `id_pengirim` varchar(5) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `no_rekening` varchar(16) NOT NULL,
  `id_admin` varchar(4) NOT NULL,
  PRIMARY KEY (`kode_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD CONSTRAINT `tbl_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`),
  ADD CONSTRAINT `tbl_produk_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`);
--
-- Database: `sisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE IF NOT EXISTS `bagian` (
  `BAGIAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_BAGIAN` varchar(255) DEFAULT NULL,
  `NILAI_MINIMUM` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`BAGIAN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`BAGIAN_ID`, `NAMA_BAGIAN`, `NILAI_MINIMUM`) VALUES
(2, 'Bagian Customer', '0.20'),
(3, 'Bagian Produksi', '0.20'),
(4, 'Bagian Marketing', '0.20');

-- --------------------------------------------------------

--
-- Table structure for table `calon_pegawai`
--

CREATE TABLE IF NOT EXISTS `calon_pegawai` (
  `CAPEG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_CAPEG` varchar(255) DEFAULT NULL,
  `STATUS_PEGAWAI` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CAPEG_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `calon_pegawai`
--

INSERT INTO `calon_pegawai` (`CAPEG_ID`, `NAMA_CAPEG`, `STATUS_PEGAWAI`) VALUES
(1, 'Ronald Renaldi', 'Gagal'),
(2, 'Yoga Kurniawan', 'Gagal'),
(3, 'orang baru', 'Gagal'),
(4, 'orang keren', 'Gagal'),
(5, 'gak jelas', 'Gagal'),
(6, 'ronald renaldi baru', NULL),
(7, 'aha', NULL),
(8, 'baru banget', 'Diterima di Bagian Produksi'),
(9, 'tel', 'Diterima di Bagian Produksi'),
(10, 'we', 'Diterima di Bagian Produksi');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `KRITERIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KRITERIA` varchar(255) DEFAULT NULL,
  `PRIORITAS_KRITERIA` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`KRITERIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`KRITERIA_ID`, `NAMA_KRITERIA`, `PRIORITAS_KRITERIA`) VALUES
(2, 'tes psikologi', '0.084'),
(3, 'tes akademik', '0.113'),
(4, 'tes kepribadian', '0.182'),
(5, 'tes wawancara', '0.207'),
(6, 'tes pengetahuan', '0.415');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_pegawai_per_pertanyaan`
--

CREATE TABLE IF NOT EXISTS `nilai_pegawai_per_pertanyaan` (
  `NILAI_PEG_PERTANYAAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERTANYAAN_ID` int(11) DEFAULT NULL,
  `CAPEG_ID` int(11) DEFAULT NULL,
  `NILAI` int(11) DEFAULT NULL,
  PRIMARY KEY (`NILAI_PEG_PERTANYAAN_ID`),
  KEY `FK_RELATIONSHIP_7` (`CAPEG_ID`),
  KEY `FK_RELATIONSHIP_9` (`PERTANYAAN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=661 ;

--
-- Dumping data for table `nilai_pegawai_per_pertanyaan`
--

INSERT INTO `nilai_pegawai_per_pertanyaan` (`NILAI_PEG_PERTANYAAN_ID`, `PERTANYAAN_ID`, `CAPEG_ID`, `NILAI`) VALUES
(1, 5, 1, 0),
(2, 6, 1, 0),
(3, 7, 1, 0),
(4, 8, 1, 0),
(5, 9, 1, 0),
(6, 10, 1, 0),
(7, 11, 1, 0),
(8, 12, 1, 0),
(9, 13, 1, 0),
(10, 14, 1, 0),
(11, 15, 1, 0),
(12, 16, 1, 0),
(13, 17, 1, 0),
(14, 18, 1, 0),
(15, 19, 1, 0),
(16, 20, 1, 0),
(17, 21, 1, 0),
(18, 22, 1, 0),
(19, 23, 1, 0),
(20, 24, 1, 0),
(21, 25, 1, 0),
(22, 26, 1, 0),
(23, 27, 1, 0),
(24, 28, 1, 0),
(25, 29, 1, 0),
(26, 30, 1, 0),
(27, 31, 1, 0),
(28, 32, 1, 0),
(29, 33, 1, 0),
(30, 34, 1, 0),
(31, 35, 1, 0),
(32, 36, 1, 0),
(33, 37, 1, 0),
(34, 38, 1, 0),
(35, 39, 1, 0),
(36, 40, 1, 0),
(37, 41, 1, 0),
(38, 42, 1, 0),
(39, 43, 1, 0),
(40, 44, 1, 0),
(41, 45, 1, 0),
(42, 46, 1, 0),
(43, 47, 1, 0),
(44, 48, 1, 0),
(45, 49, 1, 0),
(46, 50, 1, 0),
(47, 52, 1, 0),
(48, 53, 1, 0),
(49, 54, 1, 0),
(50, 55, 1, 0),
(51, 56, 1, 0),
(52, 57, 1, 0),
(53, 58, 1, 0),
(54, 59, 1, 0),
(55, 60, 1, 0),
(56, 61, 1, 0),
(57, 62, 1, 0),
(58, 63, 1, 0),
(59, 64, 1, 0),
(60, 65, 1, 0),
(61, 66, 1, 0),
(62, 67, 1, 0),
(63, 68, 1, 0),
(64, 69, 1, 0),
(65, 70, 1, 0),
(66, 71, 1, 0),
(67, 5, 2, 0),
(68, 6, 2, 0),
(69, 7, 2, 0),
(70, 8, 2, 0),
(71, 9, 2, 0),
(72, 10, 2, 0),
(73, 11, 2, 0),
(74, 12, 2, 0),
(75, 13, 2, 0),
(76, 14, 2, 0),
(77, 15, 2, 0),
(78, 16, 2, 0),
(79, 17, 2, 0),
(80, 18, 2, 0),
(81, 19, 2, 0),
(82, 20, 2, 0),
(83, 21, 2, 0),
(84, 22, 2, 0),
(85, 23, 2, 0),
(86, 24, 2, 0),
(87, 25, 2, 0),
(88, 26, 2, 0),
(89, 27, 2, 0),
(90, 28, 2, 0),
(91, 29, 2, 0),
(92, 30, 2, 0),
(93, 31, 2, 0),
(94, 32, 2, 0),
(95, 33, 2, 0),
(96, 34, 2, 0),
(97, 35, 2, 0),
(98, 36, 2, 0),
(99, 37, 2, 0),
(100, 38, 2, 0),
(101, 39, 2, 0),
(102, 40, 2, 0),
(103, 41, 2, 0),
(104, 42, 2, 0),
(105, 43, 2, 0),
(106, 44, 2, 0),
(107, 45, 2, 0),
(108, 46, 2, 0),
(109, 47, 2, 0),
(110, 48, 2, 0),
(111, 49, 2, 0),
(112, 50, 2, 0),
(113, 52, 2, 0),
(114, 53, 2, 0),
(115, 54, 2, 0),
(116, 55, 2, 0),
(117, 56, 2, 0),
(118, 57, 2, 0),
(119, 58, 2, 0),
(120, 59, 2, 0),
(121, 60, 2, 0),
(122, 61, 2, 0),
(123, 62, 2, 0),
(124, 63, 2, 0),
(125, 64, 2, 0),
(126, 65, 2, 0),
(127, 66, 2, 0),
(128, 67, 2, 0),
(129, 68, 2, 0),
(130, 69, 2, 0),
(131, 70, 2, 0),
(132, 71, 2, 0),
(133, 5, 3, 0),
(134, 6, 3, 0),
(135, 7, 3, 0),
(136, 8, 3, 0),
(137, 9, 3, 0),
(138, 10, 3, 0),
(139, 11, 3, 0),
(140, 12, 3, 0),
(141, 13, 3, 0),
(142, 14, 3, 0),
(143, 15, 3, 0),
(144, 16, 3, 0),
(145, 17, 3, 0),
(146, 18, 3, 0),
(147, 19, 3, 0),
(148, 20, 3, 0),
(149, 21, 3, 0),
(150, 22, 3, 0),
(151, 23, 3, 0),
(152, 24, 3, 0),
(153, 25, 3, 0),
(154, 26, 3, 0),
(155, 27, 3, 0),
(156, 28, 3, 0),
(157, 29, 3, 0),
(158, 30, 3, 0),
(159, 31, 3, 0),
(160, 32, 3, 0),
(161, 33, 3, 0),
(162, 34, 3, 0),
(163, 35, 3, 0),
(164, 36, 3, 0),
(165, 37, 3, 0),
(166, 38, 3, 0),
(167, 39, 3, 0),
(168, 40, 3, 0),
(169, 41, 3, 0),
(170, 42, 3, 0),
(171, 43, 3, 0),
(172, 44, 3, 0),
(173, 45, 3, 0),
(174, 46, 3, 0),
(175, 47, 3, 0),
(176, 48, 3, 0),
(177, 49, 3, 0),
(178, 50, 3, 0),
(179, 52, 3, 0),
(180, 53, 3, 0),
(181, 54, 3, 0),
(182, 55, 3, 0),
(183, 56, 3, 0),
(184, 57, 3, 0),
(185, 58, 3, 0),
(186, 59, 3, 0),
(187, 60, 3, 0),
(188, 61, 3, 0),
(189, 62, 3, 0),
(190, 63, 3, 0),
(191, 64, 3, 0),
(192, 65, 3, 0),
(193, 66, 3, 0),
(194, 67, 3, 0),
(195, 68, 3, 0),
(196, 69, 3, 0),
(197, 70, 3, 0),
(198, 71, 3, 0),
(199, 5, 4, 0),
(200, 6, 4, 0),
(201, 7, 4, 0),
(202, 8, 4, 0),
(203, 9, 4, 0),
(204, 10, 4, 0),
(205, 11, 4, 0),
(206, 12, 4, 0),
(207, 13, 4, 0),
(208, 14, 4, 0),
(209, 15, 4, 0),
(210, 16, 4, 0),
(211, 17, 4, 0),
(212, 18, 4, 0),
(213, 19, 4, 0),
(214, 20, 4, 0),
(215, 21, 4, 0),
(216, 22, 4, 0),
(217, 23, 4, 0),
(218, 24, 4, 0),
(219, 25, 4, 0),
(220, 26, 4, 0),
(221, 27, 4, 0),
(222, 28, 4, 0),
(223, 29, 4, 0),
(224, 30, 4, 0),
(225, 31, 4, 0),
(226, 32, 4, 0),
(227, 33, 4, 0),
(228, 34, 4, 0),
(229, 35, 4, 0),
(230, 36, 4, 0),
(231, 37, 4, 0),
(232, 38, 4, 0),
(233, 39, 4, 0),
(234, 40, 4, 0),
(235, 41, 4, 0),
(236, 42, 4, 0),
(237, 43, 4, 0),
(238, 44, 4, 0),
(239, 45, 4, 0),
(240, 46, 4, 0),
(241, 47, 4, 0),
(242, 48, 4, 0),
(243, 49, 4, 0),
(244, 50, 4, 0),
(245, 52, 4, 0),
(246, 53, 4, 0),
(247, 54, 4, 0),
(248, 55, 4, 0),
(249, 56, 4, 0),
(250, 57, 4, 0),
(251, 58, 4, 0),
(252, 59, 4, 0),
(253, 60, 4, 0),
(254, 61, 4, 0),
(255, 62, 4, 0),
(256, 63, 4, 0),
(257, 64, 4, 0),
(258, 65, 4, 0),
(259, 66, 4, 0),
(260, 67, 4, 0),
(261, 68, 4, 0),
(262, 69, 4, 0),
(263, 70, 4, 0),
(264, 71, 4, 0),
(265, 5, 5, 0),
(266, 6, 5, 0),
(267, 7, 5, 0),
(268, 8, 5, 0),
(269, 9, 5, 0),
(270, 10, 5, 0),
(271, 11, 5, 0),
(272, 12, 5, 0),
(273, 13, 5, 0),
(274, 14, 5, 0),
(275, 15, 5, 0),
(276, 16, 5, 0),
(277, 17, 5, 0),
(278, 18, 5, 0),
(279, 19, 5, 0),
(280, 20, 5, 0),
(281, 21, 5, 0),
(282, 22, 5, 0),
(283, 23, 5, 0),
(284, 24, 5, 0),
(285, 25, 5, 0),
(286, 26, 5, 0),
(287, 27, 5, 0),
(288, 28, 5, 0),
(289, 29, 5, 0),
(290, 30, 5, 0),
(291, 31, 5, 0),
(292, 32, 5, 0),
(293, 33, 5, 0),
(294, 34, 5, 0),
(295, 35, 5, 0),
(296, 36, 5, 0),
(297, 37, 5, 0),
(298, 38, 5, 0),
(299, 39, 5, 0),
(300, 40, 5, 0),
(301, 41, 5, 0),
(302, 42, 5, 0),
(303, 43, 5, 0),
(304, 44, 5, 0),
(305, 45, 5, 0),
(306, 46, 5, 0),
(307, 47, 5, 0),
(308, 48, 5, 0),
(309, 49, 5, 0),
(310, 50, 5, 0),
(311, 52, 5, 0),
(312, 53, 5, 0),
(313, 54, 5, 0),
(314, 55, 5, 0),
(315, 56, 5, 0),
(316, 57, 5, 0),
(317, 58, 5, 0),
(318, 59, 5, 0),
(319, 60, 5, 0),
(320, 61, 5, 0),
(321, 62, 5, 0),
(322, 63, 5, 0),
(323, 64, 5, 0),
(324, 65, 5, 0),
(325, 66, 5, 0),
(326, 67, 5, 0),
(327, 68, 5, 0),
(328, 69, 5, 0),
(329, 70, 5, 0),
(330, 71, 5, 0),
(331, 5, 6, 80),
(332, 6, 6, 80),
(333, 7, 6, 80),
(334, 8, 6, 80),
(335, 9, 6, 80),
(336, 10, 6, 80),
(337, 11, 6, 80),
(338, 12, 6, 80),
(339, 13, 6, 80),
(340, 14, 6, 80),
(341, 15, 6, 80),
(342, 16, 6, 80),
(343, 17, 6, 80),
(344, 18, 6, 80),
(345, 19, 6, 80),
(346, 20, 6, 80),
(347, 21, 6, 80),
(348, 22, 6, 80),
(349, 23, 6, 80),
(350, 24, 6, 80),
(351, 25, 6, 80),
(352, 26, 6, 80),
(353, 27, 6, 0),
(354, 28, 6, 0),
(355, 29, 6, 0),
(356, 30, 6, 0),
(357, 31, 6, 0),
(358, 32, 6, 0),
(359, 33, 6, 0),
(360, 34, 6, 0),
(361, 35, 6, 0),
(362, 36, 6, 0),
(363, 37, 6, 0),
(364, 38, 6, 0),
(365, 39, 6, 0),
(366, 40, 6, 0),
(367, 41, 6, 0),
(368, 42, 6, 0),
(369, 43, 6, 0),
(370, 44, 6, 0),
(371, 45, 6, 0),
(372, 46, 6, 0),
(373, 47, 6, 0),
(374, 48, 6, 0),
(375, 49, 6, 0),
(376, 50, 6, 0),
(377, 52, 6, 0),
(378, 53, 6, 0),
(379, 54, 6, 0),
(380, 55, 6, 0),
(381, 56, 6, 0),
(382, 57, 6, 0),
(383, 58, 6, 0),
(384, 59, 6, 0),
(385, 60, 6, 0),
(386, 61, 6, 0),
(387, 62, 6, 0),
(388, 63, 6, 0),
(389, 64, 6, 0),
(390, 65, 6, 0),
(391, 66, 6, 0),
(392, 67, 6, 0),
(393, 68, 6, 0),
(394, 69, 6, 0),
(395, 70, 6, 0),
(396, 71, 6, 0),
(397, 5, 7, NULL),
(398, 6, 7, NULL),
(399, 7, 7, NULL),
(400, 8, 7, NULL),
(401, 9, 7, NULL),
(402, 10, 7, NULL),
(403, 11, 7, NULL),
(404, 12, 7, NULL),
(405, 13, 7, NULL),
(406, 14, 7, NULL),
(407, 15, 7, NULL),
(408, 16, 7, NULL),
(409, 17, 7, NULL),
(410, 18, 7, NULL),
(411, 19, 7, NULL),
(412, 20, 7, NULL),
(413, 21, 7, NULL),
(414, 22, 7, NULL),
(415, 23, 7, NULL),
(416, 24, 7, NULL),
(417, 25, 7, NULL),
(418, 26, 7, NULL),
(419, 27, 7, NULL),
(420, 28, 7, NULL),
(421, 29, 7, NULL),
(422, 30, 7, NULL),
(423, 31, 7, NULL),
(424, 32, 7, NULL),
(425, 33, 7, NULL),
(426, 34, 7, NULL),
(427, 35, 7, NULL),
(428, 36, 7, NULL),
(429, 37, 7, NULL),
(430, 38, 7, NULL),
(431, 39, 7, NULL),
(432, 40, 7, NULL),
(433, 41, 7, NULL),
(434, 42, 7, NULL),
(435, 43, 7, NULL),
(436, 44, 7, NULL),
(437, 45, 7, NULL),
(438, 46, 7, NULL),
(439, 47, 7, NULL),
(440, 48, 7, NULL),
(441, 49, 7, NULL),
(442, 50, 7, NULL),
(443, 52, 7, NULL),
(444, 53, 7, NULL),
(445, 54, 7, NULL),
(446, 55, 7, NULL),
(447, 56, 7, NULL),
(448, 57, 7, NULL),
(449, 58, 7, NULL),
(450, 59, 7, NULL),
(451, 60, 7, NULL),
(452, 61, 7, NULL),
(453, 62, 7, NULL),
(454, 63, 7, NULL),
(455, 64, 7, NULL),
(456, 65, 7, NULL),
(457, 66, 7, NULL),
(458, 67, 7, NULL),
(459, 68, 7, NULL),
(460, 69, 7, NULL),
(461, 70, 7, NULL),
(462, 71, 7, NULL),
(463, 5, 8, 80),
(464, 6, 8, 80),
(465, 7, 8, 80),
(466, 8, 8, 80),
(467, 9, 8, 80),
(468, 10, 8, 80),
(469, 11, 8, 80),
(470, 12, 8, 80),
(471, 13, 8, 80),
(472, 14, 8, 80),
(473, 15, 8, 80),
(474, 16, 8, 80),
(475, 17, 8, 80),
(476, 18, 8, 80),
(477, 19, 8, 80),
(478, 20, 8, 80),
(479, 21, 8, 80),
(480, 22, 8, 80),
(481, 23, 8, 80),
(482, 24, 8, 80),
(483, 25, 8, 80),
(484, 26, 8, 80),
(485, 27, 8, 0),
(486, 28, 8, 0),
(487, 29, 8, 0),
(488, 30, 8, 0),
(489, 31, 8, 0),
(490, 32, 8, 0),
(491, 33, 8, 0),
(492, 34, 8, 0),
(493, 35, 8, 0),
(494, 36, 8, 0),
(495, 37, 8, 0),
(496, 38, 8, 0),
(497, 39, 8, 0),
(498, 40, 8, 0),
(499, 41, 8, 0),
(500, 42, 8, 0),
(501, 43, 8, 0),
(502, 44, 8, 0),
(503, 45, 8, 0),
(504, 46, 8, 0),
(505, 47, 8, 0),
(506, 48, 8, 0),
(507, 49, 8, 0),
(508, 50, 8, 0),
(509, 52, 8, 0),
(510, 53, 8, 0),
(511, 54, 8, 0),
(512, 55, 8, 0),
(513, 56, 8, 0),
(514, 57, 8, 0),
(515, 58, 8, 0),
(516, 59, 8, 0),
(517, 60, 8, 0),
(518, 61, 8, 0),
(519, 62, 8, 0),
(520, 63, 8, 0),
(521, 64, 8, 0),
(522, 65, 8, 0),
(523, 66, 8, 0),
(524, 67, 8, 0),
(525, 68, 8, 0),
(526, 69, 8, 0),
(527, 70, 8, 0),
(528, 71, 8, 0),
(529, 5, 9, 0),
(530, 6, 9, 0),
(531, 7, 9, 0),
(532, 8, 9, 0),
(533, 9, 9, 0),
(534, 10, 9, 0),
(535, 11, 9, 0),
(536, 12, 9, 0),
(537, 13, 9, 0),
(538, 14, 9, 0),
(539, 15, 9, 0),
(540, 16, 9, 0),
(541, 17, 9, 0),
(542, 18, 9, 0),
(543, 19, 9, 0),
(544, 20, 9, 0),
(545, 21, 9, 0),
(546, 22, 9, 0),
(547, 23, 9, 0),
(548, 24, 9, 0),
(549, 25, 9, 0),
(550, 26, 9, 0),
(551, 27, 9, 0),
(552, 28, 9, 0),
(553, 29, 9, 0),
(554, 30, 9, 0),
(555, 31, 9, 0),
(556, 32, 9, 0),
(557, 33, 9, 0),
(558, 34, 9, 0),
(559, 35, 9, 0),
(560, 36, 9, 0),
(561, 37, 9, 0),
(562, 38, 9, 0),
(563, 39, 9, 0),
(564, 40, 9, 0),
(565, 41, 9, 0),
(566, 42, 9, 0),
(567, 43, 9, 0),
(568, 44, 9, 0),
(569, 45, 9, 0),
(570, 46, 9, 0),
(571, 47, 9, 0),
(572, 48, 9, 0),
(573, 49, 9, 80),
(574, 50, 9, 80),
(575, 52, 9, 80),
(576, 53, 9, 80),
(577, 54, 9, 0),
(578, 55, 9, 80),
(579, 56, 9, 80),
(580, 57, 9, 80),
(581, 58, 9, 80),
(582, 59, 9, 80),
(583, 60, 9, 80),
(584, 61, 9, 80),
(585, 62, 9, 80),
(586, 63, 9, 80),
(587, 64, 9, 8),
(588, 65, 9, 0),
(589, 66, 9, 80),
(590, 67, 9, 80),
(591, 68, 9, 80),
(592, 69, 9, 80),
(593, 70, 9, 80),
(594, 71, 9, 80),
(595, 5, 10, 0),
(596, 6, 10, 0),
(597, 7, 10, 0),
(598, 8, 10, 0),
(599, 9, 10, 0),
(600, 10, 10, 0),
(601, 11, 10, 0),
(602, 12, 10, 0),
(603, 13, 10, 0),
(604, 14, 10, 0),
(605, 15, 10, 0),
(606, 16, 10, 0),
(607, 17, 10, 0),
(608, 18, 10, 0),
(609, 19, 10, 0),
(610, 20, 10, 0),
(611, 21, 10, 0),
(612, 22, 10, 0),
(613, 23, 10, 0),
(614, 24, 10, 0),
(615, 25, 10, 0),
(616, 26, 10, 0),
(617, 27, 10, 0),
(618, 28, 10, 0),
(619, 29, 10, 0),
(620, 30, 10, 0),
(621, 31, 10, 0),
(622, 32, 10, 0),
(623, 33, 10, 0),
(624, 34, 10, 0),
(625, 35, 10, 0),
(626, 36, 10, 0),
(627, 37, 10, 0),
(628, 38, 10, 0),
(629, 39, 10, 0),
(630, 40, 10, 0),
(631, 41, 10, 0),
(632, 42, 10, 0),
(633, 43, 10, 0),
(634, 44, 10, 0),
(635, 45, 10, 0),
(636, 46, 10, 0),
(637, 47, 10, 0),
(638, 48, 10, 0),
(639, 49, 10, 0),
(640, 50, 10, 0),
(641, 52, 10, 0),
(642, 53, 10, 0),
(643, 54, 10, 0),
(644, 55, 10, 0),
(645, 56, 10, 0),
(646, 57, 10, 0),
(647, 58, 10, 0),
(648, 59, 10, 0),
(649, 60, 10, 0),
(650, 61, 10, 0),
(651, 62, 10, 0),
(652, 63, 10, 0),
(653, 64, 10, 0),
(654, 65, 10, 0),
(655, 66, 10, 0),
(656, 67, 10, 0),
(657, 68, 10, 0),
(658, 69, 10, 0),
(659, 70, 10, 0),
(660, 71, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE IF NOT EXISTS `penilaian` (
  `PENILAIAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `KRITERIA_ID` int(11) DEFAULT NULL,
  `SUBKRITERIA_ID` int(11) DEFAULT NULL,
  `BAGIAN_ID` int(11) DEFAULT NULL,
  `CAPEG_ID` int(11) DEFAULT NULL,
  `TOTAL_NILAI` decimal(10,3) NOT NULL,
  PRIMARY KEY (`PENILAIAN_ID`),
  KEY `FK_RELATIONSHIP_1` (`KRITERIA_ID`),
  KEY `FK_RELATIONSHIP_2` (`CAPEG_ID`),
  KEY `FK_RELATIONSHIP_3` (`SUBKRITERIA_ID`),
  KEY `FK_RELATIONSHIP_4` (`BAGIAN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`PENILAIAN_ID`, `KRITERIA_ID`, `SUBKRITERIA_ID`, `BAGIAN_ID`, `CAPEG_ID`, `TOTAL_NILAI`) VALUES
(76, 3, 15, 3, 4, '0.000'),
(77, 2, 10, 3, 4, '0.000'),
(78, 4, 20, 3, 4, '0.000'),
(79, 5, 25, 3, 4, '0.000'),
(80, 6, 30, 3, 4, '0.000'),
(81, 3, 15, 4, 4, '0.000'),
(82, 2, 10, 4, 4, '0.000'),
(83, 4, 20, 4, 4, '0.000'),
(84, 5, 25, 4, 4, '0.000'),
(85, 6, 30, 4, 4, '0.000'),
(86, 3, 15, 2, 4, '0.000'),
(87, 2, 10, 2, 4, '0.000'),
(88, 4, 20, 2, 4, '0.000'),
(89, 5, 25, 2, 4, '0.000'),
(90, 6, 30, 2, 4, '0.000'),
(91, 3, 15, 3, 5, '0.000'),
(92, 2, 10, 3, 5, '0.000'),
(93, 4, 20, 3, 5, '0.000'),
(94, 5, 25, 3, 5, '0.000'),
(95, 6, 30, 3, 5, '0.000'),
(96, 3, 15, 4, 5, '0.000'),
(97, 2, 10, 4, 5, '0.000'),
(98, 4, 20, 4, 5, '0.000'),
(99, 5, 25, 4, 5, '0.000'),
(100, 6, 30, 4, 5, '0.000'),
(101, 3, 15, 2, 5, '0.000'),
(102, 2, 10, 2, 5, '0.000'),
(103, 4, 20, 2, 5, '0.000'),
(104, 5, 25, 2, 5, '0.000'),
(105, 6, 30, 2, 5, '0.000'),
(121, 3, 15, 3, 1, '0.000'),
(122, 2, 10, 3, 1, '0.000'),
(123, 4, 20, 3, 1, '0.000'),
(124, 5, 25, 3, 1, '0.000'),
(125, 6, 30, 3, 1, '0.000'),
(126, 3, 15, 4, 1, '0.000'),
(127, 2, 10, 4, 1, '0.000'),
(128, 4, 20, 4, 1, '0.000'),
(129, 5, 25, 4, 1, '0.000'),
(130, 6, 30, 4, 1, '0.000'),
(131, 3, 15, 2, 1, '0.000'),
(132, 2, 10, 2, 1, '0.000'),
(133, 4, 20, 2, 1, '0.000'),
(134, 5, 25, 2, 1, '0.000'),
(135, 6, 30, 2, 1, '0.000'),
(136, 3, 15, 3, 2, '0.000'),
(137, 2, 10, 3, 2, '0.000'),
(138, 4, 20, 3, 2, '0.000'),
(139, 5, 25, 3, 2, '0.000'),
(140, 6, 30, 3, 2, '0.000'),
(141, 3, 15, 4, 2, '0.000'),
(142, 2, 10, 4, 2, '0.000'),
(143, 4, 20, 4, 2, '0.000'),
(144, 5, 25, 4, 2, '0.000'),
(145, 6, 30, 4, 2, '0.000'),
(146, 3, 15, 2, 2, '0.000'),
(147, 2, 10, 2, 2, '0.000'),
(148, 4, 20, 2, 2, '0.000'),
(149, 5, 25, 2, 2, '0.000'),
(150, 6, 30, 2, 2, '0.000'),
(151, 3, 15, 3, 3, '0.000'),
(152, 2, 10, 3, 3, '0.000'),
(153, 4, 20, 3, 3, '0.000'),
(154, 5, 25, 3, 3, '0.000'),
(155, 6, 30, 3, 3, '0.000'),
(156, 3, 15, 4, 3, '0.000'),
(157, 2, 10, 4, 3, '0.000'),
(158, 4, 20, 4, 3, '0.000'),
(159, 5, 25, 4, 3, '0.000'),
(160, 6, 30, 4, 3, '0.000'),
(161, 3, 15, 2, 3, '0.000'),
(162, 2, 10, 2, 3, '0.000'),
(163, 4, 20, 2, 3, '0.000'),
(164, 5, 25, 2, 3, '0.000'),
(165, 6, 30, 2, 3, '0.000'),
(256, 3, 12, 3, 6, '0.014'),
(257, 2, 7, 3, 6, '0.011'),
(258, 4, 19, 3, 6, '0.039'),
(259, 5, 24, 3, 6, '0.045'),
(260, 6, 29, 3, 6, '0.089'),
(261, 3, 15, 4, 6, '0.049'),
(262, 2, 10, 4, 6, '0.036'),
(263, 4, 20, 4, 6, '0.079'),
(264, 5, 25, 4, 6, '0.090'),
(265, 6, 30, 4, 6, '0.180'),
(266, 3, 15, 2, 6, '0.049'),
(267, 2, 10, 2, 6, '0.036'),
(268, 4, 20, 2, 6, '0.079'),
(269, 5, 25, 2, 6, '0.090'),
(270, 6, 30, 2, 6, '0.180'),
(286, 3, 12, 3, 8, '0.014'),
(287, 2, 7, 3, 8, '0.011'),
(288, 4, 19, 3, 8, '0.039'),
(289, 5, 24, 3, 8, '0.045'),
(290, 6, 29, 3, 8, '0.089'),
(291, 3, 15, 4, 8, '0.049'),
(292, 2, 10, 4, 8, '0.036'),
(293, 4, 20, 4, 8, '0.079'),
(294, 5, 25, 4, 8, '0.090'),
(295, 6, 30, 4, 8, '0.180'),
(296, 3, 15, 2, 8, '0.049'),
(297, 2, 10, 2, 8, '0.036'),
(298, 4, 20, 2, 8, '0.079'),
(299, 5, 25, 2, 8, '0.090'),
(300, 6, 30, 2, 8, '0.180'),
(316, 3, 15, 3, 9, '0.049'),
(317, 2, 10, 3, 9, '0.036'),
(318, 4, 20, 3, 9, '0.079'),
(319, 5, 25, 3, 9, '0.090'),
(320, 6, 30, 3, 9, '0.180'),
(321, 3, 15, 4, 9, '0.049'),
(322, 2, 10, 4, 9, '0.036'),
(323, 4, 20, 4, 9, '0.079'),
(324, 5, 25, 4, 9, '0.090'),
(325, 6, 30, 4, 9, '0.180'),
(326, 3, 12, 2, 9, '0.014'),
(327, 2, 8, 2, 9, '0.014'),
(328, 4, 19, 2, 9, '0.039'),
(329, 5, 24, 2, 9, '0.045'),
(330, 6, 29, 2, 9, '0.089'),
(331, 3, 15, 3, 10, '0.049'),
(332, 2, 10, 3, 10, '0.036'),
(333, 4, 20, 3, 10, '0.079'),
(334, 5, 25, 3, 10, '0.090'),
(335, 6, 30, 3, 10, '0.180'),
(336, 3, 15, 4, 10, '0.049'),
(337, 2, 10, 4, 10, '0.036'),
(338, 4, 20, 4, 10, '0.079'),
(339, 5, 25, 4, 10, '0.090'),
(340, 6, 30, 4, 10, '0.180'),
(341, 3, 15, 2, 10, '0.049'),
(342, 2, 10, 2, 10, '0.036'),
(343, 4, 20, 2, 10, '0.079'),
(344, 5, 25, 2, 10, '0.090'),
(345, 6, 30, 2, 10, '0.180');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE IF NOT EXISTS `pertanyaan` (
  `PERTANYAAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAGIAN_ID` int(11) DEFAULT NULL,
  `KRITERIA_ID` int(11) DEFAULT NULL,
  `NAMA_PERTANYAAN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERTANYAAN_ID`),
  KEY `FK_RELATIONSHIP_5` (`KRITERIA_ID`),
  KEY `FK_RELATIONSHIP_8` (`BAGIAN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`PERTANYAAN_ID`, `BAGIAN_ID`, `KRITERIA_ID`, `NAMA_PERTANYAAN`) VALUES
(5, 3, 3, 'tes verbal atau bahasa'),
(6, 3, 3, 'tes numerik atau angka'),
(7, 3, 3, 'tes logika'),
(8, 3, 3, 'tes spasial atau gambar'),
(9, 3, 2, 'Test kecerdasan'),
(10, 3, 2, 'Tes kepribadian'),
(11, 3, 2, 'Tes bakat'),
(12, 3, 2, 'Tes minat'),
(13, 3, 2, 'Tes prestasi'),
(14, 3, 4, 'kedewasaan emosi'),
(15, 3, 4, 'kesukaan bergaul'),
(16, 3, 4, 'tanggung jawab'),
(17, 3, 4, 'penyesuaian diri'),
(18, 3, 5, 'prestasi akademik'),
(19, 3, 5, 'kualitas pribadi'),
(20, 3, 5, 'pengalaman kerja dalam bidang produksi'),
(21, 3, 5, 'kompetensi komunikasi'),
(22, 3, 5, 'orientasi karier'),
(23, 3, 6, 'kemampuan dalam melaksanakan tugas produksi'),
(24, 3, 6, 'bertanggung jawab atas pekerjaan'),
(25, 3, 6, 'kemampuan bekerja individu atau team'),
(26, 3, 6, 'ketepatan waktu dalam meyelesaikan tugas'),
(27, 4, 3, 'tes verbal atau bahasa'),
(28, 4, 3, 'tes numerik atau angka'),
(29, 4, 3, 'tes logika'),
(30, 4, 3, 'tes spasial atau gambar'),
(31, 4, 2, 'tes kecerdasan'),
(32, 4, 2, 'Tes kepribadian'),
(33, 4, 2, 'Tes bakat'),
(34, 4, 2, 'Tes minat'),
(35, 4, 2, 'Tes Prestasi'),
(36, 4, 4, 'kedewasaan emosi'),
(37, 4, 4, 'kesukaan bergaul'),
(38, 4, 4, 'tanggung jawab'),
(39, 4, 4, 'penyesuaian diri'),
(40, 4, 5, 'prestasi akademik'),
(41, 4, 5, 'kualitas pribadi'),
(42, 4, 5, 'pengalaman kerja dalam bidang marketing'),
(43, 4, 5, 'kompetensi komunikasi'),
(44, 4, 5, 'orientasi karier'),
(45, 4, 6, 'Kecakapan Berbicara'),
(46, 4, 6, 'Keandalan dalam melaksanakan tugas'),
(47, 4, 6, 'inisiatif'),
(48, 4, 6, 'kreatif'),
(49, 2, 3, 'tes verbal atau bahasa'),
(50, 2, 3, 'tes numerik atau angka'),
(52, 2, 3, 'tes logika'),
(53, 2, 3, 'tes spasial atau gambar'),
(54, 2, 2, 'Test kecerdasan'),
(55, 2, 2, 'Tes kepribadian'),
(56, 2, 2, 'Tes bakat'),
(57, 2, 2, 'Tes minat'),
(58, 2, 2, 'Tes Prestasi'),
(59, 2, 4, 'kedewasaan emosi'),
(60, 2, 4, 'kesukaan bergaul'),
(61, 2, 4, 'tanggung jawab'),
(62, 2, 4, 'penyesuaian diri'),
(63, 2, 5, 'prestasi akademik'),
(64, 2, 5, 'kualitas pribadi'),
(65, 2, 5, 'pengalaman kerja dalam bidang customer'),
(66, 2, 5, 'kompetensi komunikasi'),
(67, 2, 5, 'orientasi karier'),
(68, 2, 6, 'kemampuan dalam melayani pelanggan'),
(69, 2, 6, 'bertanggung jawab atas pekerjaan'),
(70, 2, 6, 'dapat melaksankan tugas dengan cukup'),
(71, 2, 6, 'dedikasi');

-- --------------------------------------------------------

--
-- Table structure for table `role_pengguna`
--

CREATE TABLE IF NOT EXISTS `role_pengguna` (
  `KODEROLE` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(255) NOT NULL,
  PRIMARY KEY (`KODEROLE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role_pengguna`
--

INSERT INTO `role_pengguna` (`KODEROLE`, `ROLE`) VALUES
(1, 'ADMIN'),
(2, 'HRD');

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE IF NOT EXISTS `subkriteria` (
  `SUBKRITERIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `KRITERIA_ID` int(11) NOT NULL,
  `NAMA_SUBKRITERIA` varchar(255) DEFAULT NULL,
  `PRIORITAS_SUBKRITERIA` decimal(10,3) DEFAULT NULL,
  `BOBOT` int(11) DEFAULT NULL,
  PRIMARY KEY (`SUBKRITERIA_ID`),
  KEY `KRITERIA_ID` (`KRITERIA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`SUBKRITERIA_ID`, `KRITERIA_ID`, `NAMA_SUBKRITERIA`, `PRIORITAS_SUBKRITERIA`, `BOBOT`) VALUES
(6, 2, 'sangat bagus', '0.062', 5),
(7, 2, 'baik', '0.125', 4),
(8, 2, 'cukup', '0.164', 3),
(9, 2, 'kurang', '0.215', 2),
(10, 2, 'sangat kurang', '0.433', 1),
(11, 3, 'sangat bagus', '0.062', 5),
(12, 3, 'baik', '0.125', 4),
(13, 3, 'cukup', '0.164', 3),
(14, 3, 'kurang', '0.215', 2),
(15, 3, 'sangat kurang', '0.433', 1),
(16, 4, 'sangat bagus', '0.062', 5),
(17, 4, 'baik', '0.125', 4),
(18, 4, 'cukup', '0.164', 3),
(19, 4, 'kurang', '0.215', 2),
(20, 4, 'sangat kurang', '0.433', 1),
(21, 5, 'sangat bagus', '0.062', 5),
(22, 5, 'baik', '0.125', 4),
(23, 5, 'cukup', '0.164', 3),
(24, 5, 'kurang', '0.215', 2),
(25, 5, 'sangat kurang', '0.433', 1),
(26, 6, 'sangat bagus', '0.062', 5),
(27, 6, 'baik', '0.125', 4),
(28, 6, 'cukup', '0.164', 3),
(29, 6, 'kurang', '0.215', 2),
(30, 6, 'sangat kurang', '0.433', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(255) DEFAULT NULL,
  `KODEROLE` int(11) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `KODEROLE` (`KODEROLE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERID`, `NAMA`, `KODEROLE`, `USERNAME`, `PASSWORD`) VALUES
(3, 'Administrator', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'HRD', 2, 'hrd', '4bf31e6f4b818056eaacb83dff01c9b8');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai_pegawai_per_pertanyaan`
--
ALTER TABLE `nilai_pegawai_per_pertanyaan`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`CAPEG_ID`) REFERENCES `calon_pegawai` (`CAPEG_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`PERTANYAAN_ID`) REFERENCES `pertanyaan` (`PERTANYAAN_ID`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`KRITERIA_ID`) REFERENCES `kriteria` (`KRITERIA_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`CAPEG_ID`) REFERENCES `calon_pegawai` (`CAPEG_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`SUBKRITERIA_ID`) REFERENCES `subkriteria` (`SUBKRITERIA_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`BAGIAN_ID`) REFERENCES `bagian` (`BAGIAN_ID`);

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`KRITERIA_ID`) REFERENCES `kriteria` (`KRITERIA_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`BAGIAN_ID`) REFERENCES `bagian` (`BAGIAN_ID`);

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`KRITERIA_ID`) REFERENCES `kriteria` (`KRITERIA_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`KODEROLE`) REFERENCES `role_pengguna` (`KODEROLE`);
--
-- Database: `sistempakar-bayes`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE IF NOT EXISTS `diagnosa` (
  `id_diagnosa` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ket` varchar(250) NOT NULL,
  PRIMARY KEY (`id_diagnosa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `ket`) VALUES
(001, 'Lemas'),
(002, 'Sesak  Nafas'),
(003, 'Demam'),
(004, 'Pendarahan'),
(005, 'Pitichiae'),
(006, 'Trombosito penia'),
(007, 'Denyut Nadi Tinggi'),
(008, 'Anemia'),
(009, 'hepatomegali'),
(010, 'splenomegali'),
(011, 'Limfadenopati  Leher'),
(012, 'BB turun'),
(013, 'Letargi'),
(014, 'Nyeri Dada/Sendi'),
(015, 'Anoreksia'),
(016, 'Keringat  Berlebih'),
(017, 'Infeksi Mulut  /Saluran Nafas'),
(018, 'Hematuria'),
(019, 'Organomegali'),
(020, 'Hilang Nafsu  makan'),
(021, 'Sakit  Kepala'),
(022, 'Muntah'),
(023, 'Gelisah'),
(024, 'Perut Kembung'),
(025, 'Leukemia');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hasil`
--
CREATE TABLE IF NOT EXISTS `hasil` (
`id_rule` int(4) unsigned zerofill
,`id_gejala` int(3) unsigned zerofill
,`aksi` int(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE IF NOT EXISTS `konsultasi` (
  `id_pasien` varchar(150) NOT NULL,
  `id_diagnosa` int(3) unsigned zerofill NOT NULL,
  `aksi` int(11) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `id_pasien` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `umur` int(11) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pesan` longtext NOT NULL,
  `waktu` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_rule` int(4) unsigned zerofill NOT NULL,
  `id_gejala` int(3) unsigned zerofill NOT NULL,
  `aksi` int(1) NOT NULL,
  KEY `id_rule` (`id_rule`),
  KEY `id_gejala` (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_gejala`, `aksi`) VALUES
(0001, 001, 1),
(0001, 002, 0),
(0001, 003, 1),
(0001, 004, 0),
(0001, 005, 1),
(0001, 006, 1),
(0001, 007, 0),
(0001, 008, 1),
(0001, 009, 0),
(0001, 010, 0),
(0001, 011, 1),
(0001, 012, 0),
(0001, 013, 1),
(0001, 014, 1),
(0001, 015, 0),
(0001, 016, 0),
(0001, 017, 0),
(0001, 018, 1),
(0001, 019, 1),
(0001, 020, 1),
(0001, 021, 1),
(0001, 022, 1),
(0001, 023, 0),
(0001, 024, 0),
(0001, 025, 1),
(0002, 001, 1),
(0002, 002, 1),
(0002, 003, 1),
(0002, 004, 1),
(0002, 005, 1),
(0002, 006, 0),
(0002, 007, 0),
(0002, 008, 1),
(0002, 009, 0),
(0002, 010, 0),
(0002, 011, 1),
(0002, 012, 0),
(0002, 013, 0),
(0002, 014, 0),
(0002, 015, 1),
(0002, 016, 1),
(0002, 017, 1),
(0002, 018, 0),
(0002, 019, 0),
(0002, 020, 1),
(0002, 021, 1),
(0002, 022, 1),
(0002, 023, 1),
(0002, 024, 0),
(0002, 025, 0),
(0003, 001, 1),
(0003, 002, 0),
(0003, 003, 1),
(0003, 004, 1),
(0003, 005, 0),
(0003, 006, 1),
(0003, 007, 0),
(0003, 008, 0),
(0003, 009, 0),
(0003, 010, 1),
(0003, 011, 1),
(0003, 012, 1),
(0003, 013, 1),
(0003, 014, 1),
(0003, 015, 0),
(0003, 016, 1),
(0003, 017, 1),
(0003, 018, 1),
(0003, 019, 1),
(0003, 020, 0),
(0003, 021, 0),
(0003, 022, 1),
(0003, 023, 1),
(0003, 024, 1),
(0003, 025, 0),
(0004, 001, 0),
(0004, 002, 0),
(0004, 003, 0),
(0004, 004, 0),
(0004, 005, 1),
(0004, 006, 1),
(0004, 007, 0),
(0004, 008, 0),
(0004, 009, 1),
(0004, 010, 1),
(0004, 011, 0),
(0004, 012, 1),
(0004, 013, 0),
(0004, 014, 0),
(0004, 015, 0),
(0004, 016, 1),
(0004, 017, 1),
(0004, 018, 0),
(0004, 019, 0),
(0004, 020, 1),
(0004, 021, 1),
(0004, 022, 1),
(0004, 023, 0),
(0004, 024, 1),
(0004, 025, 0),
(0005, 001, 0),
(0005, 002, 1),
(0005, 003, 0),
(0005, 004, 0),
(0005, 005, 1),
(0005, 006, 1),
(0005, 007, 0),
(0005, 008, 0),
(0005, 009, 1),
(0005, 010, 0),
(0005, 011, 0),
(0005, 012, 1),
(0005, 013, 1),
(0005, 014, 0),
(0005, 015, 1),
(0005, 016, 0),
(0005, 017, 0),
(0005, 018, 1),
(0005, 019, 0),
(0005, 020, 1),
(0005, 021, 0),
(0005, 022, 0),
(0005, 023, 0),
(0005, 024, 0),
(0005, 025, 0),
(0006, 001, 1),
(0006, 002, 1),
(0006, 003, 1),
(0006, 004, 0),
(0006, 005, 0),
(0006, 006, 0),
(0006, 007, 1),
(0006, 008, 1),
(0006, 009, 0),
(0006, 010, 1),
(0006, 011, 0),
(0006, 012, 0),
(0006, 013, 0),
(0006, 014, 1),
(0006, 015, 1),
(0006, 016, 1),
(0006, 017, 1),
(0006, 018, 0),
(0006, 019, 1),
(0006, 020, 1),
(0006, 021, 0),
(0006, 022, 1),
(0006, 023, 1),
(0006, 024, 1),
(0006, 025, 0),
(0007, 001, 0),
(0007, 002, 1),
(0007, 003, 1),
(0007, 004, 0),
(0007, 005, 1),
(0007, 006, 0),
(0007, 007, 1),
(0007, 008, 0),
(0007, 009, 1),
(0007, 010, 1),
(0007, 011, 0),
(0007, 012, 0),
(0007, 013, 1),
(0007, 014, 1),
(0007, 015, 1),
(0007, 016, 0),
(0007, 017, 0),
(0007, 018, 1),
(0007, 019, 1),
(0007, 020, 0),
(0007, 021, 1),
(0007, 022, 0),
(0007, 023, 1),
(0007, 024, 0),
(0007, 025, 0),
(0008, 001, 1),
(0008, 002, 1),
(0008, 003, 0),
(0008, 004, 1),
(0008, 005, 0),
(0008, 006, 0),
(0008, 007, 0),
(0008, 008, 1),
(0008, 009, 1),
(0008, 010, 0),
(0008, 011, 1),
(0008, 012, 0),
(0008, 013, 0),
(0008, 014, 1),
(0008, 015, 0),
(0008, 016, 0),
(0008, 017, 1),
(0008, 018, 0),
(0008, 019, 0),
(0008, 020, 1),
(0008, 021, 0),
(0008, 022, 1),
(0008, 023, 1),
(0008, 024, 1),
(0008, 025, 0),
(0009, 001, 1),
(0009, 002, 1),
(0009, 003, 1),
(0009, 004, 1),
(0009, 005, 0),
(0009, 006, 1),
(0009, 007, 0),
(0009, 008, 1),
(0009, 009, 1),
(0009, 010, 0),
(0009, 011, 1),
(0009, 012, 1),
(0009, 013, 1),
(0009, 014, 1),
(0009, 015, 1),
(0009, 016, 1),
(0009, 017, 1),
(0009, 018, 0),
(0009, 019, 1),
(0009, 020, 0),
(0009, 021, 1),
(0009, 022, 1),
(0009, 023, 1),
(0009, 024, 1),
(0009, 025, 1),
(0010, 001, 1),
(0010, 002, 0),
(0010, 003, 0),
(0010, 004, 0),
(0010, 005, 1),
(0010, 006, 1),
(0010, 007, 1),
(0010, 008, 1),
(0010, 009, 0),
(0010, 010, 0),
(0010, 011, 0),
(0010, 012, 1),
(0010, 013, 0),
(0010, 014, 1),
(0010, 015, 1),
(0010, 016, 1),
(0010, 017, 1),
(0010, 018, 1),
(0010, 019, 1),
(0010, 020, 0),
(0010, 021, 0),
(0010, 022, 1),
(0010, 023, 0),
(0010, 024, 0),
(0010, 025, 0),
(0011, 001, 1),
(0011, 002, 1),
(0011, 003, 1),
(0011, 004, 0),
(0011, 005, 1),
(0011, 006, 0),
(0011, 007, 1),
(0011, 008, 1),
(0011, 009, 1),
(0011, 010, 0),
(0011, 011, 0),
(0011, 012, 1),
(0011, 013, 0),
(0011, 014, 1),
(0011, 015, 1),
(0011, 016, 0),
(0011, 017, 1),
(0011, 018, 1),
(0011, 019, 0),
(0011, 020, 1),
(0011, 021, 0),
(0011, 022, 0),
(0011, 023, 1),
(0011, 024, 0),
(0011, 025, 1),
(0012, 001, 1),
(0012, 002, 1),
(0012, 003, 0),
(0012, 004, 1),
(0012, 005, 0),
(0012, 006, 1),
(0012, 007, 1),
(0012, 008, 0),
(0012, 009, 1),
(0012, 010, 1),
(0012, 011, 1),
(0012, 012, 1),
(0012, 013, 1),
(0012, 014, 1),
(0012, 015, 0),
(0012, 016, 0),
(0012, 017, 1),
(0012, 018, 0),
(0012, 019, 1),
(0012, 020, 0),
(0012, 021, 0),
(0012, 022, 0),
(0012, 023, 0),
(0012, 024, 1),
(0012, 025, 1),
(0013, 001, 0),
(0013, 002, 0),
(0013, 003, 1),
(0013, 004, 1),
(0013, 005, 1),
(0013, 006, 0),
(0013, 007, 0),
(0013, 008, 0),
(0013, 009, 1),
(0013, 010, 1),
(0013, 011, 1),
(0013, 012, 0),
(0013, 013, 1),
(0013, 014, 0),
(0013, 015, 1),
(0013, 016, 0),
(0013, 017, 0),
(0013, 018, 1),
(0013, 019, 0),
(0013, 020, 1),
(0013, 021, 1),
(0013, 022, 0),
(0013, 023, 0),
(0013, 024, 1),
(0013, 025, 0),
(0014, 001, 1),
(0014, 002, 1),
(0014, 003, 1),
(0014, 004, 1),
(0014, 005, 0),
(0014, 006, 1),
(0014, 007, 0),
(0014, 008, 0),
(0014, 009, 0),
(0014, 010, 0),
(0014, 011, 1),
(0014, 012, 1),
(0014, 013, 0),
(0014, 014, 1),
(0014, 015, 0),
(0014, 016, 1),
(0014, 017, 1),
(0014, 018, 0),
(0014, 019, 0),
(0014, 020, 0),
(0014, 021, 1),
(0014, 022, 1),
(0014, 023, 0),
(0014, 024, 1),
(0014, 025, 1),
(0015, 001, 0),
(0015, 002, 0),
(0015, 003, 1),
(0015, 004, 0),
(0015, 005, 0),
(0015, 006, 1),
(0015, 007, 1),
(0015, 008, 1),
(0015, 009, 1),
(0015, 010, 1),
(0015, 011, 0),
(0015, 012, 1),
(0015, 013, 1),
(0015, 014, 1),
(0015, 015, 1),
(0015, 016, 1),
(0015, 017, 0),
(0015, 018, 0),
(0015, 019, 0),
(0015, 020, 1),
(0015, 021, 1),
(0015, 022, 0),
(0015, 023, 1),
(0015, 024, 0),
(0015, 025, 1),
(0016, 001, 0),
(0016, 002, 0),
(0016, 003, 0),
(0016, 004, 1),
(0016, 005, 0),
(0016, 006, 1),
(0016, 007, 0),
(0016, 008, 0),
(0016, 009, 1),
(0016, 010, 1),
(0016, 011, 0),
(0016, 012, 0),
(0016, 013, 1),
(0016, 014, 1),
(0016, 015, 1),
(0016, 016, 1),
(0016, 017, 0),
(0016, 018, 1),
(0016, 019, 1),
(0016, 020, 1),
(0016, 021, 0),
(0016, 022, 1),
(0016, 023, 0),
(0016, 024, 1),
(0016, 025, 1),
(0017, 001, 0),
(0017, 002, 0),
(0017, 003, 1),
(0017, 004, 0),
(0017, 005, 1),
(0017, 006, 0),
(0017, 007, 1),
(0017, 008, 1),
(0017, 009, 1),
(0017, 010, 0),
(0017, 011, 0),
(0017, 012, 0),
(0017, 013, 1),
(0017, 014, 0),
(0017, 015, 0),
(0017, 016, 0),
(0017, 017, 0),
(0017, 018, 0),
(0017, 019, 0),
(0017, 020, 1),
(0017, 021, 0),
(0017, 022, 0),
(0017, 023, 0),
(0017, 024, 1),
(0017, 025, 1),
(0018, 001, 1),
(0018, 002, 1),
(0018, 003, 0),
(0018, 004, 0),
(0018, 005, 0),
(0018, 006, 0),
(0018, 007, 1),
(0018, 008, 1),
(0018, 009, 0),
(0018, 010, 1),
(0018, 011, 1),
(0018, 012, 0),
(0018, 013, 0),
(0018, 014, 1),
(0018, 015, 1),
(0018, 016, 1),
(0018, 017, 1),
(0018, 018, 1),
(0018, 019, 0),
(0018, 020, 0),
(0018, 021, 1),
(0018, 022, 1),
(0018, 023, 1),
(0018, 024, 0),
(0018, 025, 0),
(0019, 001, 1),
(0019, 002, 1),
(0019, 003, 1),
(0019, 004, 1),
(0019, 005, 1),
(0019, 006, 1),
(0019, 007, 1),
(0019, 008, 1),
(0019, 009, 0),
(0019, 010, 0),
(0019, 011, 1),
(0019, 012, 0),
(0019, 013, 1),
(0019, 014, 0),
(0019, 015, 1),
(0019, 016, 0),
(0019, 017, 0),
(0019, 018, 1),
(0019, 019, 1),
(0019, 020, 1),
(0019, 021, 1),
(0019, 022, 0),
(0019, 023, 1),
(0019, 024, 0),
(0019, 025, 1),
(0020, 001, 0),
(0020, 002, 0),
(0020, 003, 1),
(0020, 004, 1),
(0020, 005, 1),
(0020, 006, 0),
(0020, 007, 1),
(0020, 008, 1),
(0020, 009, 0),
(0020, 010, 0),
(0020, 011, 1),
(0020, 012, 1),
(0020, 013, 0),
(0020, 014, 0),
(0020, 015, 1),
(0020, 016, 1),
(0020, 017, 0),
(0020, 018, 1),
(0020, 019, 1),
(0020, 020, 0),
(0020, 021, 1),
(0020, 022, 1),
(0020, 023, 1),
(0020, 024, 1),
(0020, 025, 1),
(0021, 001, 0),
(0021, 002, 0),
(0021, 003, 0),
(0021, 004, 0),
(0021, 005, 0),
(0021, 006, 1),
(0021, 007, 0),
(0021, 008, 1),
(0021, 009, 0),
(0021, 010, 1),
(0021, 011, 1),
(0021, 012, 1),
(0021, 013, 0),
(0021, 014, 0),
(0021, 015, 0),
(0021, 016, 0),
(0021, 017, 0),
(0021, 018, 1),
(0021, 019, 0),
(0021, 020, 0),
(0021, 021, 1),
(0021, 022, 0),
(0021, 023, 0),
(0021, 024, 1),
(0021, 025, 1),
(0022, 001, 1),
(0022, 002, 0),
(0022, 003, 1),
(0022, 004, 0),
(0022, 005, 1),
(0022, 006, 1),
(0022, 007, 1),
(0022, 008, 0),
(0022, 009, 1),
(0022, 010, 1),
(0022, 011, 0),
(0022, 012, 0),
(0022, 013, 1),
(0022, 014, 1),
(0022, 015, 0),
(0022, 016, 1),
(0022, 017, 0),
(0022, 018, 0),
(0022, 019, 0),
(0022, 020, 1),
(0022, 021, 0),
(0022, 022, 0),
(0022, 023, 0),
(0022, 024, 0),
(0022, 025, 0),
(0023, 001, 1),
(0023, 002, 1),
(0023, 003, 1),
(0023, 004, 0),
(0023, 005, 0),
(0023, 006, 0),
(0023, 007, 0),
(0023, 008, 0),
(0023, 009, 1),
(0023, 010, 1),
(0023, 011, 0),
(0023, 012, 0),
(0023, 013, 1),
(0023, 014, 1),
(0023, 015, 0),
(0023, 016, 1),
(0023, 017, 0),
(0023, 018, 0),
(0023, 019, 1),
(0023, 020, 1),
(0023, 021, 1),
(0023, 022, 0),
(0023, 023, 0),
(0023, 024, 0),
(0023, 025, 0),
(0024, 001, 0),
(0024, 002, 0),
(0024, 003, 1),
(0024, 004, 1),
(0024, 005, 0),
(0024, 006, 0),
(0024, 007, 1),
(0024, 008, 1),
(0024, 009, 0),
(0024, 010, 0),
(0024, 011, 0),
(0024, 012, 1),
(0024, 013, 1),
(0024, 014, 0),
(0024, 015, 0),
(0024, 016, 1),
(0024, 017, 1),
(0024, 018, 0),
(0024, 019, 1),
(0024, 020, 1),
(0024, 021, 1),
(0024, 022, 1),
(0024, 023, 0),
(0024, 024, 0),
(0024, 025, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_login`
--

CREATE TABLE IF NOT EXISTS `tbl_user_login` (
  `id_user_login` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `stts` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_user_login`
--

INSERT INTO `tbl_user_login` (`id_user_login`, `username`, `password`, `nama_lengkap`, `stts`) VALUES
(11, 'h4nk', '21232f297a57a5a743894a0e4a801fc3', 'Harry Setya Hadi', 'administrator');

-- --------------------------------------------------------

--
-- Structure for view `hasil`
--
DROP TABLE IF EXISTS `hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil` AS select `rule`.`id_rule` AS `id_rule`,`rule`.`id_gejala` AS `id_gejala`,`rule`.`aksi` AS `aksi` from `rule` where (`rule`.`id_gejala` = '025') order by `rule`.`id_rule`;
--
-- Database: `siswabaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `psb_2013`
--

CREATE TABLE IF NOT EXISTS `psb_2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `tempatlahir` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgllahir` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `asal` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kasek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nem` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `noijazah` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `namaortu` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `psb_2013`
--

INSERT INTO `psb_2013` (`id`, `nama`, `nis`, `tempatlahir`, `tgllahir`, `asal`, `kasek`, `nem`, `noijazah`, `namaortu`, `pekerjaan`, `telp`) VALUES
(1, 'Achmad Yani', '321654', 'Semarang', '25 Januari  1988', 'SMP 2 Karangsari', 'M. RAHAYU', '80', 'SMP/243/2013', 'KARYONO', 'Wiraswasta', '024 3265978'),
(2, 'RAHMA', '456789', 'Jakarta', '12 Juni  1997', 'SMP Negeri Poncol', 'TRIMURTI', '85', '123/SMp/2013', 'DARJO', 'Swasta', '024.563.7896');
--
-- Database: `test`
--
--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_address`
--

CREATE TABLE IF NOT EXISTS `shop_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `language` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `parent_id`, `title`, `description`, `language`) VALUES
(1, 0, 'Primary Articles', NULL, NULL),
(2, 0, 'Secondary Articles', NULL, NULL),
(3, 1, 'Red Primary Articles', NULL, NULL),
(4, 1, 'Green Primary Articles', NULL, NULL),
(5, 2, 'Red Secondary Articles', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_customer`
--

CREATE TABLE IF NOT EXISTS `shop_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_image`
--

CREATE TABLE IF NOT EXISTS `shop_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Image_Products` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shop_image`
--

INSERT INTO `shop_image` (`id`, `title`, `filename`, `product_id`) VALUES
(1, 'gambar1', 'cendrawasih-paradiscudae.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE IF NOT EXISTS `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `ordering_date` int(11) NOT NULL,
  `delivery_date` int(11) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `status` enum('new','in_progress','done','cancelled') NOT NULL DEFAULT 'new',
  `ordering_done` tinyint(1) DEFAULT NULL,
  `ordering_confirmed` tinyint(1) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `comment` text,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_position`
--

CREATE TABLE IF NOT EXISTS `shop_order_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `specifications` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment_method`
--

CREATE TABLE IF NOT EXISTS `shop_payment_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_payment_method`
--

INSERT INTO `shop_payment_method` (`id`, `title`, `description`, `tax_id`, `price`) VALUES
(1, 'cash', 'You pay cash', 1, 0),
(2, 'advance Payment', 'You pay in advance, we deliver', 1, 0),
(3, 'cash on delivery', 'You pay when we deliver', 1, 0),
(4, 'invoice', 'We deliver and send a invoice', 1, 0),
(5, 'paypal', 'You pay by paypal', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_specification`
--

CREATE TABLE IF NOT EXISTS `shop_product_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `input_type` enum('none','select','textfield','image') NOT NULL DEFAULT 'select',
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_product_specification`
--

INSERT INTO `shop_product_specification` (`id`, `title`, `input_type`, `required`) VALUES
(1, 'Weight', 'none', 1),
(2, 'Color', 'select', 0),
(3, 'Some random attribute', 'none', 0),
(4, 'Material', 'none', 1),
(5, 'Specific number', 'textfield', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_variation`
--

CREATE TABLE IF NOT EXISTS `shop_product_variation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `specification_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price_adjustion` float NOT NULL,
  `weight_adjustion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shop_product_variation`
--

INSERT INTO `shop_product_variation` (`id`, `product_id`, `specification_id`, `position`, `title`, `price_adjustion`, `weight_adjustion`) VALUES
(1, 1, 1, 2, 'variation1', 3, 0),
(2, 1, 1, 3, 'variation2', 6, 0),
(3, 1, 2, 4, 'variation3', 9, 0),
(4, 1, 5, 1, 'please enter a number here', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE IF NOT EXISTS `shop_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `status` int(10) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `keywords` varchar(255) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `specifications` text,
  PRIMARY KEY (`product_id`),
  KEY `fk_products_category` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`product_id`, `category_id`, `status`, `tax_id`, `title`, `description`, `keywords`, `price`, `language`, `specifications`) VALUES
(1, 1, 0, 1, 'Demonstration of Article with variations', 'Hello, World!', NULL, '19.99', NULL, NULL),
(2, 1, 0, 2, 'Another Demo Article with less Tax', '!!', NULL, '29.99', NULL, NULL),
(3, 2, 0, 1, 'Demo3', '', NULL, '', NULL, NULL),
(4, 4, 0, 1, 'Demo4', '', NULL, '7, 55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_shipping_method`
--

CREATE TABLE IF NOT EXISTS `shop_shipping_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weight_range` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`,`weight_range`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shop_shipping_method`
--

INSERT INTO `shop_shipping_method` (`id`, `weight_range`, `title`, `description`, `tax_id`, `price`) VALUES
(1, '1-5', 'Delivery by postal Service', 'We deliver by Postal Service. 2.99 units of money are charged for that', 1, 2.99),
(1, '5-10', 'Delivery by postal Service', 'We deliver by Postal Service. 2.99 units of money are charged for that', 1, 2.99);

-- --------------------------------------------------------

--
-- Table structure for table `shop_tax`
--

CREATE TABLE IF NOT EXISTS `shop_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shop_tax`
--

INSERT INTO `shop_tax` (`id`, `title`, `percent`) VALUES
(1, '19%', 19),
(2, '7%', 7);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop_image`
--
ALTER TABLE `shop_image`
  ADD CONSTRAINT `fk_Image_Products` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `fk_order_customer1` FOREIGN KEY (`customer_id`) REFERENCES `shop_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');
--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-09-16 14:53:29', '2014-09-16 14:53:29', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/wp', 'yes'),
(2, 'home', 'http://localhost:8080/wp', 'yes'),
(3, 'blogname', 'sparkling', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tantanium@live.co.uk', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'writter', 'yes'),
(42, 'stylesheet', 'writter', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:11:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:6:{i:1410886532;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"adcb9b75260590ff6058773ddcb9ddd6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:4;}}}}i:1410886626;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c9059feef497c200e69cb9956a81f005";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:5;}}}}i:1410895080;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410922437;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410965648;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.0";s:12:"last_checked";i:1410879428;}', 'yes'),
(100, '_site_transient_timeout_theme_roots', '1410881377', 'yes'),
(101, '_site_transient_theme_roots', 'a:5:{s:6:"sahifa";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:7:"writter";s:7:"/themes";}', 'yes'),
(102, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1410879598;}', 'yes'),
(103, '_transient_random_seed', 'bbe133c8ee5984ed34a7244dc8a5fb75', 'yes'),
(105, '_transient_timeout_plugin_slugs', '1410965750', 'no'),
(106, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(107, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1410922450', 'no'),
(108, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(109, 'can_compress_scripts', '1', 'yes'),
(111, '_transient_is_multi_author', '0', 'yes'),
(112, '_transient_twentyfourteen_category_count', '1', 'yes'),
(113, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1410879428;}', 'yes'),
(114, 'wpseo', 'a:18:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:0;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:19:"tracking_popup_done";b:0;s:7:"version";s:3:"1.6";s:11:"alexaverify";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:15:"pinterestverify";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:0;}', 'yes'),
(115, 'wpseo_permalinks', 'a:10:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:15:"force_transport";s:7:"default";s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(116, 'wpseo_titles', 'a:58:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page Not Found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(117, 'wpseo_social', 'a:15:{s:9:"fb_admins";a:0:{}s:6:"fbapps";a:0:{}s:12:"fbconnectkey";s:32:"3fc9a708159ad22c2030fad178c3fc0d";s:13:"facebook_site";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:14:"plus-publisher";s:0:"";s:7:"twitter";b:0;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:10:"fbadminapp";i:0;}', 'yes'),
(118, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(119, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(120, 'wpseo_xml', 'a:17:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"xml_ping_yahoo";b:0;s:12:"xml_ping_ask";b:0;s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(121, 'recently_activated', 'a:0:{}', 'yes'),
(122, '_site_transient_timeout_wporg_theme_feature_list', '1410890207', 'yes'),
(123, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(124, 'WP_CLIENT_KEY', '', 'yes'),
(125, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1410879599;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(126, 'current_theme', 'Writter', 'yes'),
(127, 'theme_mods_writter', 'a:1:{i:0;b:0;}', 'yes'),
(128, 'theme_switched', 'twentyfourteen', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_attached_file', '2014/09/writter_wp_1.0.1.zip'),
(5, 5, '_wp_attachment_context', 'upgrader');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-09-16 14:53:29', '2014-09-16 14:53:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-09-16 14:53:29', '2014-09-16 14:53:29', '', 0, 'http://localhost:8080/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2014-09-16 14:53:29', '2014-09-16 14:53:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8080/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-09-16 14:53:29', '2014-09-16 14:53:29', '', 0, 'http://localhost:8080/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-09-16 14:54:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-09-16 14:54:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wp/?p=3', 0, 'post', '', 0),
(5, 1, '2014-09-16 14:57:06', '2014-09-16 14:57:06', 'http://localhost:8080/wp/wp-content/uploads/2014/09/writter_wp_1.0.1.zip', 'writter_wp_1.0.1.zip', '', 'private', 'open', 'open', '', 'writter_wp_1-0-1-zip', '', '', '2014-09-16 14:57:06', '2014-09-16 14:57:06', '', 0, 'http://localhost:8080/wp/wp-content/uploads/2014/09/writter_wp_1.0.1.zip', 0, 'attachment', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tantanium'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"b76f37ac44ce22a40ad40ba52b6ec8e5e730707f91b69c500a7e7f97b9e9552a";i:1412088847;}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, '_yoast_wpseo_profile_updated', '1410879599');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tantanium', '$P$BZKCaWkWPSUflRY4ir9Zm6L//lIetd0', 'tantanium', 'tantanium@live.co.uk', '', '2014-09-16 14:53:28', '', 0, 'tantanium');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
