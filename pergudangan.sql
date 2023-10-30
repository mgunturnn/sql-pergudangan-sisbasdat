-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 07:45 AM
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
-- Database: `pergudangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `Nama`) VALUES
(1, 'baju'),
(2, 'Celana'),
(3, 'Sepatu'),
(4, 'Topi'),
(5, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Id_karyawan` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `Telp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Id_karyawan`, `Nama`, `Alamat`, `Telp`) VALUES
(1, 'John Doe', 'Jl. Raya No. 123', '08123456789'),
(2, 'Jane Smith', 'Jl. Setiabudi No. 456', '08234567890'),
(3, 'Mike Johnson', 'Jl. Sudirman No. 789', '08345678901'),
(4, 'Mike Johnson', 'Jl. Sudirman No. 789', '08456789012'),
(5, 'Tom Wilson', 'Jl. HR Rasuna Said No. 22', '08567890123');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_pelanggan` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `Telp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id_pelanggan`, `Nama`, `Alamat`, `Telp`) VALUES
(1, 'Alice Smith', 'Jl. Merdeka No. 123', '08123456789'),
(2, 'Bob Johnson', 'Jl. Pahlawan No. 456', '08234567890'),
(3, 'Charlie Lee', 'Jl. Diponegoro No. 789', '08345678901'),
(4, 'Diana Wilson', 'Jl. Gajah Mada No. 111', '08456789012'),
(5, 'Edward Brown', 'Jl. Ahmad Yani No. 222', '08567890123');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `Id_pesan` int(10) NOT NULL,
  `Tgl` date NOT NULL,
  `Jumlah` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`Id_pesan`, `Tgl`, `Jumlah`) VALUES
(1, '2023-03-01', '10'),
(2, '2023-03-05', '25'),
(3, '2023-03-10', '15'),
(4, '2023-03-15', '20'),
(5, '2023-03-20', '30');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `Id_stok` int(10) NOT NULL,
  `Jumlah_barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`Id_stok`, `Jumlah_barang`) VALUES
(1, '100'),
(2, '200'),
(3, '150'),
(4, '75'),
(5, '300');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_transaksi` int(10) NOT NULL,
  `Tgl_masuk` date NOT NULL,
  `Tgl_keluar` date NOT NULL,
  `Jumlah_masuk` varchar(25) NOT NULL,
  `Jumlah_keluar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Id_transaksi`, `Tgl_masuk`, `Tgl_keluar`, `Jumlah_masuk`, `Jumlah_keluar`) VALUES
(1, '2023-03-01', '2023-03-03', '50', '10'),
(2, '2023-03-04', '2023-03-07', '100', '25'),
(3, '2023-03-08', '2023-03-11', '75', '15'),
(4, '2023-03-12', '2023-03-15', '90', '20'),
(5, '2023-03-16', '2023-03-19', '150', '30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id_karyawan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_pelanggan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`Id_pesan`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`Id_stok`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
