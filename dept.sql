-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 07:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `nomor` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jumlah_pegawai` int(11) DEFAULT NULL,
  `lokasi` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`nomor`, `nama`, `jumlah_pegawai`, `lokasi`) VALUES
(1102, 'IT', 30, 'Surabaya'),
(1103, 'Administrasi', 10, 'Bangkalan'),
(1104, 'Human Resource', 20, 'Sidoarjo'),
(1105, 'Kantin', 30, 'Bangkalan');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nomor_ktp` int(11) NOT NULL,
  `nama_depan` varchar(25) DEFAULT NULL,
  `nama_belakang` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  `nomor_ktp_pimpinan` int(11) DEFAULT NULL,
  `nomor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nomor_ktp`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `alamat`, `gaji`, `nomor_ktp_pimpinan`, `nomor`) VALUES
(1103, 'Eni', 'Wahyuni', 'P', 'Sidoarjo', 250000, 1103, 12),
(1104, 'Ani', 'Wahyuna', 'P', 'Sidoarjo', 270000, 1103, 12),
(1105, 'Andi', 'Rosandi', 'L', 'Sukabumi', 325000, 1102, 11),
(1106, 'Rita', 'Kurniasih', 'P', 'Bandung', 315000, 1103, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nomor_ktp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
