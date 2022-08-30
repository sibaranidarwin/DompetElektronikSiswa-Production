-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 04:08 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'admin',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `id_sekolah`, `nama`, `email`, `level`, `password`) VALUES
(1, 1, 'darwin', 'fakesibarani11@gmail.com', 'admin', '04dc6f0101c50951f1dc52d846fb0abf'),
(3, 2, 'Darwin Sibarani', 'fakesibarani1@gmail.com', 'admin', '040cddce8ed5b188e3aa12719ac8afb6'),
(5, 3, 'Darwin', 'baligee@gmail.com', 'admin', '1dbbfd9d075c68a78355657f7e5cdf34'),
(7, 18, 'ffff', 'yoi@gmail.com', 'admin', '8221483180f27dc4b18ff6b538802e83');

-- --------------------------------------------------------

--
-- Table structure for table `admin_journal`
--

CREATE TABLE `admin_journal` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_admin` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `nilai` bigint(20) NOT NULL,
  `ext_1` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_journal`
--

INSERT INTO `admin_journal` (`id`, `id_sekolah`, `tanggal`, `id_admin`, `code`, `nilai`, `ext_1`) VALUES
(1, 1, '2021-09-13 16:01:30', 1, 'login', 0, ''),
(2, 1, '2021-09-13 16:06:44', 1, 'create_kantin', 0, ''),
(3, 1, '2021-09-13 16:53:25', 1, 'login', 0, ''),
(4, 1, '2021-09-13 16:53:50', 1, 'setor_tunai_siswa', 10000, '1'),
(5, 2, '2021-09-21 16:14:38', 3, 'login', 0, ''),
(6, 2, '2021-09-21 16:17:29', 3, 'login', 0, ''),
(7, 2, '2021-09-21 16:17:57', 3, 'setor_tunai_siswa', 10000, '2'),
(8, 2, '2021-09-21 16:18:26', 3, 'create_kantin', 0, ''),
(9, 2, '2021-09-21 16:19:11', 3, 'generate_qr_kantin', 0, '1'),
(10, 2, '2021-09-21 16:20:15', 3, 'create_donation', 0, '1'),
(11, 2, '2021-09-24 06:33:20', 3, 'login', 0, ''),
(12, 3, '2021-10-06 02:42:52', 5, 'login', 0, ''),
(13, 3, '2021-10-06 06:21:17', 5, 'create_donation', 0, '2'),
(14, 3, '2021-10-06 06:22:26', 5, 'login', 0, ''),
(15, 3, '2021-11-02 06:35:05', 5, 'login', 0, ''),
(16, 3, '2021-11-03 03:31:00', 5, 'login', 0, ''),
(17, 3, '2021-11-03 03:52:12', 5, 'login', 0, ''),
(18, 3, '2021-11-03 04:30:40', 5, 'create_kantin', 0, ''),
(19, 3, '2021-11-03 06:18:06', 5, 'login', 0, ''),
(20, 3, '2021-11-03 06:50:58', 5, 'change_donation_status', 0, '2'),
(21, 3, '2021-11-03 06:51:03', 5, 'change_donation_status', 1, '2'),
(22, 3, '2021-11-03 06:51:05', 5, 'change_donation_status', 0, '2'),
(23, 3, '2021-11-03 06:54:09', 5, 'change_donation_status', 1, '2'),
(24, 3, '2021-11-03 07:23:36', 5, 'login', 0, ''),
(25, 3, '2021-11-03 07:24:37', 5, 'setor_tunai_siswa', 100000, '3'),
(26, 3, '2021-11-03 07:25:12', 5, 'login', 0, ''),
(27, 3, '2021-11-03 07:45:50', 5, 'tarik_tunai_siswa', 100000, '3'),
(28, 3, '2021-11-03 08:07:51', 5, 'login', 0, ''),
(29, 3, '2021-11-03 10:49:13', 5, 'login', 0, ''),
(30, 3, '2021-11-03 12:36:34', 5, 'login', 0, ''),
(31, 3, '2021-11-03 12:39:44', 5, 'generate_qr_kantin', 0, '2'),
(32, 3, '2021-11-03 12:41:56', 5, 'setor_tunai_siswa', 10000000, '3'),
(33, 3, '2021-11-03 12:44:16', 5, 'login', 0, ''),
(34, 3, '2021-11-03 12:46:01', 5, 'tarik_spp', 120000, '5'),
(35, 3, '2021-11-12 08:59:12', 5, 'login', 0, ''),
(36, 3, '2021-11-12 09:29:41', 5, 'login', 0, ''),
(37, 3, '2021-11-13 02:33:27', 5, 'login', 0, ''),
(38, 3, '2021-11-13 02:34:42', 5, 'login', 0, ''),
(39, 3, '2021-11-13 03:10:25', 5, 'login', 0, ''),
(40, 3, '2021-11-13 05:00:11', 5, 'login', 0, ''),
(41, 3, '2021-11-13 06:29:56', 5, 'login', 0, ''),
(42, 3, '2021-11-13 07:27:42', 5, 'login', 0, ''),
(43, 3, '2021-11-13 08:11:42', 5, 'login', 0, ''),
(44, 3, '2021-11-14 04:50:14', 5, 'login', 0, ''),
(45, 3, '2021-11-14 08:52:04', 5, 'login', 0, ''),
(46, 3, '2021-11-14 08:53:47', 5, 'login', 0, ''),
(47, 3, '2021-11-14 08:56:12', 5, 'login', 0, ''),
(48, 3, '2021-11-14 12:18:30', 5, 'login', 0, ''),
(49, 3, '2021-11-14 13:09:49', 5, 'login', 0, ''),
(50, 3, '2021-11-14 14:23:06', 5, 'login', 0, ''),
(51, 3, '2021-11-14 14:41:31', 5, 'login', 0, ''),
(52, 3, '2021-11-14 17:07:41', 5, 'edit_siswa', 0, '3'),
(53, 3, '2021-11-15 01:26:05', 5, 'login', 0, ''),
(54, 3, '2021-11-15 02:09:00', 5, 'login', 0, ''),
(55, 3, '2021-11-15 02:28:46', 5, 'change_donation_status', 0, '2'),
(56, 3, '2021-11-15 02:29:00', 5, 'change_donation_status', 1, '2'),
(57, 3, '2021-11-15 02:50:57', 5, 'create_donation', 0, '3'),
(58, 3, '2021-11-15 02:51:17', 5, 'change_donation_status', 0, '2'),
(59, 3, '2021-11-15 02:54:05', 5, 'change_donation_status', 1, '2'),
(60, 3, '2021-11-15 02:55:14', 5, 'change_donation_status', 0, '3'),
(61, 3, '2021-11-15 02:57:15', 5, 'change_donation_status', 1, '3'),
(62, 3, '2021-11-15 03:59:54', 5, 'login', 0, ''),
(63, 3, '2021-11-15 04:00:56', 5, 'create_donation', 0, '4'),
(64, 3, '2021-11-15 04:01:17', 5, 'change_donation_status', 0, '4'),
(65, 3, '2021-11-15 04:01:20', 5, 'change_donation_status', 1, '4'),
(66, 3, '2021-11-15 04:01:23', 5, 'change_donation_status', 0, '4'),
(67, 3, '2021-11-15 04:03:09', 5, 'login', 0, ''),
(68, 3, '2021-11-15 04:04:02', 5, 'change_donation_status', 0, '3'),
(69, 3, '2021-11-15 04:04:05', 5, 'change_donation_status', 1, '3'),
(70, 3, '2021-11-15 04:05:14', 5, 'login', 0, ''),
(71, 3, '2021-11-15 04:15:47', 5, 'login', 0, ''),
(72, 3, '2021-11-15 08:56:31', 5, 'login', 0, ''),
(73, 3, '2021-11-15 09:00:16', 5, 'login', 0, ''),
(74, 3, '2021-11-15 09:21:03', 5, 'login', 0, ''),
(75, 3, '2021-11-15 09:57:43', 5, 'login', 0, ''),
(76, 3, '2021-11-15 10:05:47', 5, 'login', 0, ''),
(77, 3, '2021-11-15 10:15:39', 5, 'login', 0, ''),
(78, 3, '2021-11-15 10:51:14', 5, 'login', 0, ''),
(79, 3, '2021-11-15 10:51:52', 5, 'create_donation', 0, '5'),
(80, 3, '2021-11-23 15:04:52', 5, 'login', 0, ''),
(81, 3, '2021-11-23 16:44:43', 5, 'login', 0, ''),
(82, 3, '2021-11-29 14:43:15', 5, 'login', 0, ''),
(83, 3, '2021-11-30 06:43:18', 5, 'login', 0, ''),
(84, 1, '2021-11-30 07:38:07', 1, 'login', 0, ''),
(85, 1, '2021-11-30 07:39:10', 1, 'login', 0, ''),
(86, 3, '2021-11-30 07:44:02', 5, 'login', 0, ''),
(87, 1, '2021-11-30 07:57:24', 1, 'create_kantin', 0, ''),
(88, 1, '2021-11-30 08:04:18', 1, 'generate_qr_kantin', 0, '3'),
(89, 3, '2021-11-30 08:57:53', 5, 'login', 0, ''),
(90, 3, '2021-11-30 10:49:48', 5, 'login', 0, ''),
(91, 3, '2021-12-02 18:06:58', 5, 'login', 0, ''),
(92, 18, '2021-12-02 18:14:26', 7, 'login', 0, ''),
(93, 3, '2021-12-05 15:03:42', 5, 'login', 0, ''),
(94, 3, '2021-12-05 15:04:57', 5, 'create_donation', 0, '11'),
(95, 3, '2021-12-05 15:05:55', 5, 'change_donation_status', 0, '11'),
(96, 3, '2021-12-05 15:06:28', 5, 'generate_qr_kantin', 0, '10'),
(97, 3, '2021-12-05 15:18:03', 5, 'login', 0, ''),
(98, 3, '2021-12-05 15:20:32', 5, 'login', 0, ''),
(99, 3, '2021-12-05 15:40:08', 5, 'login', 0, ''),
(100, 3, '2021-12-05 19:54:40', 5, 'login', 0, ''),
(101, 3, '2021-12-06 02:34:42', 5, 'login', 0, ''),
(102, 3, '2021-12-06 02:38:07', 5, 'login', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `posted_by` int(11) DEFAULT NULL COMMENT 'id admin',
  `target_donasi` bigint(20) DEFAULT NULL,
  `terkumpul` bigint(20) NOT NULL DEFAULT 0,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `id_sekolah`, `judul`, `deskripsi`, `posted_by`, `target_donasi`, `terkumpul`, `status`) VALUES
(1, 2, 'Bencana Alam', 'Terjadi bencana alam di salah satu rumah kawan kita. ', 3, 1, 0, 'open'),
(5, 3, 'Bencana Alam', 'Membantu teman', 5, 300000, 0, 'open'),
(18, 3, 'ss', 'ss', NULL, NULL, 0, 'open'),
(19, 3, 'ssss', 'sssss', NULL, NULL, 0, 'close');

-- --------------------------------------------------------

--
-- Table structure for table `donation_disbursement`
--

CREATE TABLE `donation_disbursement` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `amout` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kantin`
--

CREATE TABLE `kantin` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `saldo` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kantin`
--

INSERT INTO `kantin` (`id`, `id_sekolah`, `nama`, `deskripsi`, `saldo`) VALUES
(2, 2, 'Kantin Bu Sry', 'Memiliki Peralatan sekolah', 0),
(3, 3, 'Kantin Pak Budi', 'Menyediakan Berbagai makanan', 0),
(4, 1, 'wisnu', 'sss', 0),
(5, 1, 'ssss', 'ssssss', 0),
(17, 3, 'wisnu', 'enak', 0),
(18, 3, 'wisnuu', 'kkk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kantin_transaction`
--

CREATE TABLE `kantin_transaction` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kantin_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `qr_id` int(11) NOT NULL,
  `jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_kantin`
--

CREATE TABLE `pemilik_kantin` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'kantin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik_kantin`
--

INSERT INTO `pemilik_kantin` (`id`, `id_sekolah`, `nama`, `email`, `password`, `level`) VALUES
(1, 3, 'Bersih', 'bersih@gmail.com', 'b84e8c8e297dc8a63a1df288e6f263a4', 'kantin');

-- --------------------------------------------------------

--
-- Table structure for table `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL COMMENT 'Nilai QR',
  `judul` varchar(255) NOT NULL,
  `tetap` tinyint(1) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_kantin` int(11) NOT NULL,
  `nilai` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qrcode`
--

INSERT INTO `qrcode` (`id`, `id_sekolah`, `unique_id`, `judul`, `tetap`, `generated_by`, `created_at`, `id_kantin`, `nilai`) VALUES
(1, 2, 'JSrXZa1rbR', 'Buku', 1, 3, '2021-09-21 16:19:11', 2, 2000),
(2, 3, 'SmVlnvz8sJ', 'Buku', 0, 5, '2021-11-03 12:39:44', 3, 10000),
(3, 1, 'd4tKrcSO7q', 'sss', 0, 1, '2021-11-30 08:04:18', 5, 12),
(4, 1, 'fIMm94nop6', 'Buku', 0, 1, '2021-11-30 08:07:32', 5, 233),
(8, 3, 'ugu', 'op', 0, 5, '2021-12-05 20:35:18', 17, 0),
(10, 3, 'GQxBufkn1A', 'ss', 1, 5, '2021-12-05 15:06:28', 17, 14),
(27, 3, '2BpzYUCLbF', 'Bukuuu', 1, 1, '2021-12-06 02:34:00', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `npsn` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL COMMENT 'Negeri / Swasta',
  `bentuk_pendidikan` varchar(255) NOT NULL COMMENT 'SMK / SMA',
  `nama_sekolah` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `biaya_spp` bigint(20) NOT NULL,
  `saldo` bigint(20) NOT NULL,
  `kode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `npsn`, `status`, `bentuk_pendidikan`, `nama_sekolah`, `email`, `alamat`, `biaya_spp`, `saldo`, `kode`) VALUES
(1, '12413', 'negeri', 'SMA', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'ZUwk1i42dN'),
(2, '123556', 'negeri', 'SMA', 'SMA N 1 MEDAN ', 'fakesibarani11@gmail.com', 'Medan', 100000, 0, '1RY8vJMKee'),
(3, '1231', 'negeri', 'SMA', 'SMA N 1 Balige ', 'balige@gmail.com', 'Balige', 120000, 120000, 'c5QZ9iHj0Y'),
(4, '123', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'z8uCTfFGYN'),
(5, '123', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'nxO8YSgkR0'),
(6, '123', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'jKHavcnAX6'),
(7, '123', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'qCJoeuh6yt'),
(8, '122', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'yh0hquuNTG'),
(9, '122', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'iX1ZU8vkuq'),
(10, '122', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'kCi2apZllt'),
(11, '122', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'VnLClA61av'),
(15, '12', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'PTyogmZzd4'),
(16, '12', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'GZBoGXREpz'),
(17, '12', 'negeri', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, 'ZCGDU9i4Ix'),
(18, '1233', 'swasta', 'SMP', 'SMA Porsea', 'porsea@gmail.com', 'Porsea', 0, 0, '0IsVTPp7OH');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `tanggal_pendaftaran` timestamp NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(255) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'siswa',
  `tingkatan` enum('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII') NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `saldo` bigint(20) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `id_sekolah`, `tanggal_pendaftaran`, `nama`, `kelamin`, `email`, `level`, `tingkatan`, `jurusan`, `kelas`, `nisn`, `saldo`, `password`) VALUES
(1, 1, '2021-09-13 16:08:12', 'mikael', 'laki-laki', 'michaelsinaga2001@gmail.com', 'siswa', 'X', 'Ipa', '        3 SMA', '114133', 10000, '8a2f1b65feaf7ffc8d519caab922bc58'),
(2, 2, '2021-09-21 16:15:47', 'Kumpul Simamora', 'laki-laki', 'simamora12@gmail.com', 'siswa', 'X', 'Ipa', 'x', '13456', 10000, '0a4a113b96f8ea881c0af9d36311b113'),
(3, 3, '2021-10-06 06:23:19', 'Bayu', 'laki-laki', 'liana@gmail.com', 'siswa', 'X', 'Ipa', '         3 SMA', '12343242', 9550000, 'b74b3b13586c95f2121a47d70742810c'),
(4, 1, '2021-11-13 03:04:12', 'darwin', 'laki-laki', 'sibaranidarwin32@gmail.com', 'siswa', 'X', 'Ipa', '        3 SMA', '1231', 0, 'b4817ae3f2fb90fa480bdc1c975eb411'),
(13, 3, '2021-11-30 09:04:21', 'wisnuu', 'laki-laki', 'wisnuuu@gmail.com', 'siswa', 'X', 'Ipa', '       3 SMA', '123411', 0, '74a9ce5756466cec3fd883d3119a2008'),
(14, 3, '2021-11-30 09:27:58', 'jakob', 'laki-laki', 'jakob@gmail.com', 'siswa', 'X', 'Ipa', 'x', '123', 0, '9f65a1b44064aee55d59ab7cad16045f'),
(15, 3, '2021-11-30 10:17:33', 'dark', 'laki-laki', 'dark@gmail.com', 'siswa', 'X', 'Ipa', '       3 SMA', '1212', 0, 'd4fc901849f808fd02fcf5adc1097c9d');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_donation`
--

CREATE TABLE `siswa_donation` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `donation_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_transaction`
--

CREATE TABLE `siswa_transaction` (
  `id` bigint(20) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `kredit` bigint(20) NOT NULL,
  `debit` bigint(20) NOT NULL,
  `tipe` varchar(255) NOT NULL COMMENT 'tipe transasi (spp/donasi/dll)',
  `jenis` enum('masuk','keluar') NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'tanggal transaksi',
  `siswa_id` int(11) NOT NULL,
  `metode` varchar(255) NOT NULL COMMENT 'metode pembayaran (transfer nisn/qrcode)',
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_transaction`
--

INSERT INTO `siswa_transaction` (`id`, `id_sekolah`, `kredit`, `debit`, `tipe`, `jenis`, `tanggal`, `siswa_id`, `metode`, `deskripsi`) VALUES
(1, 1, 10000, 10000, 'topup', 'masuk', '2021-09-13 23:53:50', 1, 'teller', 'Setor Tunai'),
(2, 2, 10000, 10000, 'topup', 'masuk', '2021-09-21 23:17:57', 2, 'teller', 'Setor Tunai'),
(3, 3, 100000, 100000, 'topup', 'masuk', '2021-11-03 14:24:37', 3, 'teller', 'fhbkj'),
(4, 3, 100000, 0, 'tarik', 'keluar', '2021-11-03 14:45:50', 3, 'teller', 'Tarik Tunai'),
(5, 3, 10000000, 10000000, 'topup', 'masuk', '2021-11-03 19:41:55', 3, 'teller', 'Setor Tunai'),
(7, 3, 10000, 9870000, 'donation', 'keluar', '2021-11-03 19:43:40', 3, 'direct', 'Donasi Bencana Alam Rumah Bernard Pane'),
(9, 3, 180000, 9570000, 'donation', 'keluar', '2021-11-09 16:00:05', 3, 'direct', 'Donasi Bencana Alam Rumah Bernard Pane'),
(10, 3, 10000, 9560000, 'donation', 'keluar', '2021-11-09 16:00:20', 3, 'direct', 'Donasi Bencana Alam Rumah Bernard Pane'),
(11, 3, 10000, 9550000, 'donation', 'keluar', '2021-11-09 16:00:29', 3, 'direct', 'Donasi Bencana Alam Rumah Bernard Pane');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `status_pembayaran` tinyint(1) DEFAULT 0,
  `tanggal_pembayaran` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `id_sekolah`, `id_siswa`, `bulan`, `status_pembayaran`, `tanggal_pembayaran`) VALUES
(1, 1, 1, 'januari', 0, NULL),
(2, 1, 1, 'februari', 0, NULL),
(3, 1, 1, 'maret', 0, NULL),
(4, 1, 1, 'april', 0, NULL),
(5, 1, 1, 'mei', 0, NULL),
(6, 1, 1, 'juni', 0, NULL),
(7, 1, 1, 'juli', 0, NULL),
(8, 1, 1, 'agustus', 0, NULL),
(9, 1, 1, 'september', 0, NULL),
(10, 1, 1, 'oktober', 0, NULL),
(11, 1, 1, 'november', 0, NULL),
(12, 1, 1, 'desember', 0, NULL),
(13, 2, 2, 'januari', 0, NULL),
(14, 2, 2, 'februari', 0, NULL),
(15, 2, 2, 'maret', 0, NULL),
(16, 2, 2, 'april', 0, NULL),
(17, 2, 2, 'mei', 0, NULL),
(18, 2, 2, 'juni', 0, NULL),
(19, 2, 2, 'juli', 0, NULL),
(20, 2, 2, 'agustus', 0, NULL),
(21, 2, 2, 'september', 0, NULL),
(22, 2, 2, 'oktober', 0, NULL),
(23, 2, 2, 'november', 0, NULL),
(24, 2, 2, 'desember', 0, NULL),
(25, 3, 3, 'januari', 0, NULL),
(26, 3, 3, 'februari', 0, NULL),
(27, 3, 3, 'maret', 0, NULL),
(28, 3, 3, 'april', 0, NULL),
(29, 3, 3, 'mei', 0, NULL),
(30, 3, 3, 'juni', 0, NULL),
(31, 3, 3, 'juli', 1, '2021-11-09 08:58:58'),
(32, 3, 3, 'agustus', 0, NULL),
(33, 3, 3, 'september', 0, NULL),
(34, 3, 3, 'oktober', 0, NULL),
(35, 3, 3, 'november', 1, '2021-11-03 12:43:18'),
(36, 3, 3, 'desember', 0, NULL),
(37, 1, 4, 'januari', 0, NULL),
(38, 1, 4, 'februari', 0, NULL),
(39, 1, 4, 'maret', 0, NULL),
(40, 1, 4, 'april', 0, NULL),
(41, 1, 4, 'mei', 0, NULL),
(42, 1, 4, 'juni', 0, NULL),
(43, 1, 4, 'juli', 0, NULL),
(44, 1, 4, 'agustus', 0, NULL),
(45, 1, 4, 'september', 0, NULL),
(46, 1, 4, 'oktober', 0, NULL),
(47, 1, 4, 'november', 0, NULL),
(48, 1, 4, 'desember', 0, NULL),
(49, 3, 13, 'januari', 0, NULL),
(50, 3, 13, 'februari', 0, NULL),
(51, 3, 13, 'maret', 0, NULL),
(52, 3, 13, 'april', 0, NULL),
(53, 3, 13, 'mei', 0, NULL),
(54, 3, 13, 'juni', 0, NULL),
(55, 3, 13, 'juli', 0, NULL),
(56, 3, 13, 'agustus', 0, NULL),
(57, 3, 13, 'september', 0, NULL),
(58, 3, 13, 'oktober', 0, NULL),
(59, 3, 13, 'november', 0, NULL),
(60, 3, 13, 'desember', 0, NULL),
(61, 3, 14, 'januari', 0, NULL),
(62, 3, 14, 'februari', 0, NULL),
(63, 3, 14, 'maret', 0, NULL),
(64, 3, 14, 'april', 0, NULL),
(65, 3, 14, 'mei', 0, NULL),
(66, 3, 14, 'juni', 0, NULL),
(67, 3, 14, 'juli', 0, NULL),
(68, 3, 14, 'agustus', 0, NULL),
(69, 3, 14, 'september', 0, NULL),
(70, 3, 14, 'oktober', 0, NULL),
(71, 3, 14, 'november', 0, NULL),
(72, 3, 14, 'desember', 0, NULL),
(73, 3, 15, 'januari', 0, NULL),
(74, 3, 15, 'februari', 0, NULL),
(75, 3, 15, 'maret', 0, NULL),
(76, 3, 15, 'april', 0, NULL),
(77, 3, 15, 'mei', 0, NULL),
(78, 3, 15, 'juni', 0, NULL),
(79, 3, 15, 'juli', 0, NULL),
(80, 3, 15, 'agustus', 0, NULL),
(81, 3, 15, 'september', 0, NULL),
(82, 3, 15, 'oktober', 0, NULL),
(83, 3, 15, 'november', 0, NULL),
(84, 3, 15, 'desember', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tata_usaha`
--

CREATE TABLE `tata_usaha` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL DEFAULT 'tatausaha'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tata_usaha`
--

INSERT INTO `tata_usaha` (`id`, `id_sekolah`, `nama`, `email`, `password`, `level`) VALUES
(2, 3, 'Budi', 'budi@gmail.com', 'b24f2bed06efba6fc863e96606ad6c23', 'tata_usaha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `admin_journal`
--
ALTER TABLE `admin_journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posted_by` (`posted_by`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `donation_disbursement`
--
ALTER TABLE `donation_disbursement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idadmin` (`idadmin`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `kantin`
--
ALTER TABLE `kantin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `kantin_transaction`
--
ALTER TABLE `kantin_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `pemilik_kantin`
--
ALTER TABLE `pemilik_kantin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `id_kantin` (`id_kantin`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `siswa_donation`
--
ALTER TABLE `siswa_donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donation_id` (`donation_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `siswa_transaction`
--
ALTER TABLE `siswa_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `tata_usaha`
--
ALTER TABLE `tata_usaha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_journal`
--
ALTER TABLE `admin_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `donation_disbursement`
--
ALTER TABLE `donation_disbursement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kantin`
--
ALTER TABLE `kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kantin_transaction`
--
ALTER TABLE `kantin_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemilik_kantin`
--
ALTER TABLE `pemilik_kantin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `siswa_donation`
--
ALTER TABLE `siswa_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa_transaction`
--
ALTER TABLE `siswa_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tata_usaha`
--
ALTER TABLE `tata_usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `pihak_kantin_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `admin_journal`
--
ALTER TABLE `admin_journal`
  ADD CONSTRAINT `admin_journal_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `admin_journal_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `donation_disbursement`
--
ALTER TABLE `donation_disbursement`
  ADD CONSTRAINT `donation_disbursement_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `donation_disbursement_ibfk_2` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `kantin`
--
ALTER TABLE `kantin`
  ADD CONSTRAINT `kantin_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `kantin_transaction`
--
ALTER TABLE `kantin_transaction`
  ADD CONSTRAINT `kantin_transaction_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `pemilik_kantin`
--
ALTER TABLE `pemilik_kantin`
  ADD CONSTRAINT `pemilik_kantin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `qrcode` (`generated_by`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemilik_kantin_ibfk_2` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD CONSTRAINT `qrcode_ibfk_1` FOREIGN KEY (`id_kantin`) REFERENCES `kantin` (`id`),
  ADD CONSTRAINT `qrcode_ibfk_2` FOREIGN KEY (`generated_by`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `qrcode_ibfk_3` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `siswa_donation`
--
ALTER TABLE `siswa_donation`
  ADD CONSTRAINT `siswa_donation_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `siswa_donation_ibfk_2` FOREIGN KEY (`donation_id`) REFERENCES `donation` (`id`),
  ADD CONSTRAINT `siswa_donation_ibfk_3` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `siswa_transaction`
--
ALTER TABLE `siswa_transaction`
  ADD CONSTRAINT `siswa_transaction_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `siswa_transaction_ibfk_2` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`);

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `spp_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `tata_usaha`
--
ALTER TABLE `tata_usaha`
  ADD CONSTRAINT `tata_usaha_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
