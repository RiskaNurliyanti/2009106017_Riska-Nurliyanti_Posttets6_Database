-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 09:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_tanaman_polaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanaman` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `waktu_req` date NOT NULL,
  `pembayaran` varchar(10) NOT NULL,
  `nama_file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `nama`, `email`, `tanaman`, `jumlah`, `telepon`, `alamat`, `keterangan`, `waktu_req`, `pembayaran`, `nama_file`) VALUES
(71, 'Udin', 'udin@gmail.com', 'Faux', 2, '081234567811', 'barubaru', 'abcd', '2022-11-02', 'OVO', 'budi.jpg'),
(72, 'Fathia', 'fathia@gmail.com', 'Peace Lily', 3, '081234567810', 'Jl. Antasari', 'abdc', '2022-10-30', 'Gopay', 'fathia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanaman` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `waktu_req` date NOT NULL,
  `pembayaran` varchar(10) NOT NULL,
  `statusbayar` varchar(15) NOT NULL,
  `nama_file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `nama`, `email`, `tanaman`, `jumlah`, `telepon`, `alamat`, `keterangan`, `waktu_req`, `pembayaran`, `statusbayar`, `nama_file`) VALUES
(1, 'budi.jpg', 'udin@gmail.com', 'Faux', 2, '081234567811', 'barubaru', 'abcd', '2022-10-27', 'OVO', 'Lunas', 'budi.jpg'),
(2, 'fathia.jpg', 'fathia@gmail.com', 'Peace Lily', 3, '081234567810', 'Jl. Antasari', 'abdc', '2022-10-30', 'Gopay', '', 'fathia.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
