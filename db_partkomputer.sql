-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 04:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_partkomputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(11) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `hrg_beli` varchar(15) NOT NULL,
  `harga_jual` varchar(15) NOT NULL,
  `stok` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `kd_barang`, `kd_kategori`, `nm_barang`, `hrg_beli`, `harga_jual`, `stok`) VALUES
(1, 'V-001', 'KT-01', 'RTX 4080', '500000', '1000000', '7'),
(2, 'V-002', 'KT-01', 'Radeon 6600', '700000', '1200000', '9'),
(3, 'M-001', 'KT-05', 'HDD Sata 1TB', '50000', '70000', '10'),
(4, 'P-001', 'KT-04', 'Intel Core i9', '1000000', '2000000', '3'),
(5, 'R-001', 'KT-02', 'Ram HyperX 4GB DDR5', '60000', '100000', '6'),
(6, 'R-002', 'KT-02', 'Ram Kingston 8GB', '50000', '80000', '13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_pembelian`
--

CREATE TABLE `tbl_dtl_pembelian` (
  `id` int(11) NOT NULL,
  `kd_dtl_pembelian` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `kd_pembelian` varchar(10) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `harga_satuan` varchar(15) NOT NULL,
  `jmlh_barang` varchar(4) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dtl_pembelian`
--

INSERT INTO `tbl_dtl_pembelian` (`id`, `kd_dtl_pembelian`, `kd_barang`, `kd_pembelian`, `nm_barang`, `harga_satuan`, `jmlh_barang`, `total_harga`) VALUES
(1, 'DPJ-01', 'V-002', 'PJ-01', 'Radeon 6600', '1200000', '2', '2400000'),
(2, 'DPJ-02', 'P-001', 'PJ-02', 'Intel Core i9', '2000000', '1', '2000000'),
(3, 'DPJ-03', 'R-001', 'PJ-03', 'Ram HyperX 4GB DDR5', '100000', '2', '200000'),
(4, 'DPJ-04', 'V-001', 'PJ-04', 'RTX 4080', '1000000', '1', '1000000'),
(5, 'DPJ-05', 'M-001', 'PJ-05', 'HDD Sata 1TB', '70000', '3', '210000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dtl_penjualan`
--

CREATE TABLE `tbl_dtl_penjualan` (
  `id` int(11) NOT NULL,
  `kd_dtl_penjualan` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `kd_penjualan` varchar(10) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `harga_satuan` varchar(15) NOT NULL,
  `jmlh_barang` varchar(4) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dtl_penjualan`
--

INSERT INTO `tbl_dtl_penjualan` (`id`, `kd_dtl_penjualan`, `kd_barang`, `kd_penjualan`, `nm_barang`, `harga_satuan`, `jmlh_barang`, `total_harga`) VALUES
(1, 'DPM-01', 'V-001', 'PM-01', 'RTX 4080', '500000', '10', '5000000'),
(2, 'DPM-02', 'V-002', 'PM-02', 'Radeon 6600', '700000', '15', '10500000'),
(3, 'DPM-03', 'M-001', 'PM-03', 'HDD Sata 1TB', '50000', '15', '750000'),
(4, 'DPM-04', 'P-001', 'PM-04', 'Intel Core i9', '1000000', '20', '20000000'),
(5, 'DPM-05', 'R-001', 'PM-05', 'Ram HyperX 4GB DDR5', '60000', '10', '6000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id` int(11) NOT NULL,
  `kd_karyawan` varchar(10) NOT NULL,
  `nm_karyawan` varchar(25) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id`, `kd_karyawan`, `nm_karyawan`, `jk`, `tgl_lahir`, `alamat`, `no_hp`, `email`) VALUES
(1, 'KW-01', 'Budi', 'Laki-laki', '1995-07-12', 'Jl. Handil Bakti', '087621267625', 'budi@gmail.com'),
(2, 'KW-02', 'Bara', 'Laki-laki', '1997-10-30', 'Jl. HKSN', '089918822876', 'bara@gmail.com'),
(3, 'KW-03', 'Bayu', 'Laki-laki', '1999-02-21', 'Jl. Pal 1', '081527769182', 'bayu@gmail.com'),
(4, 'KW-04', 'Gisya', 'Perempuan', '1998-05-15', 'Jl. Hiu Putih', '081277251008', 'agis@gmail.com'),
(5, 'KW-05', 'Yakin', 'Laki-laki', '1999-08-06', 'Jl. Sungai Jingah', '085176288825', 'akin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `nm_kategori` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `kd_kategori`, `nm_kategori`) VALUES
(1, 'KT-01', 'VGA'),
(2, 'KT-02', 'RAM'),
(3, 'KT-03', 'Monitor'),
(4, 'KT-04', 'Processor'),
(5, 'KT-05', 'Memory');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kustomer`
--

CREATE TABLE `tbl_kustomer` (
  `id` int(11) NOT NULL,
  `kd_kustomer` varchar(10) NOT NULL,
  `nm_kustomer` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kustomer`
--

INSERT INTO `tbl_kustomer` (`id`, `kd_kustomer`, `nm_kustomer`, `alamat`, `no_hp`, `email`) VALUES
(1, 'K-01', 'Ibek', 'Jl. Sungai Jingah', '081234544434', 'ibek@gmail.com'),
(2, 'K-02', 'Jebar', 'Jl. Sungai Jingah', '083145443323', 'jbr69@gmail.com'),
(3, 'K-03', 'Medot', 'Jl. Sungai Jingah', '085177675432', 'smedot@gmail.com'),
(4, 'K-04', 'Riswan', 'Jl. Sungai Jingah', '081108876453', 'gerimbing@gmail.com'),
(5, 'K-05', 'Rasyid', 'Jl. Sungai Jingah', '087789364453', 'rasyidd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id` int(11) NOT NULL,
  `kd_pembelian` varchar(10) NOT NULL,
  `kd_supplier` varchar(10) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `no_faktur` varchar(10) NOT NULL,
  `jmlh_barang` varchar(4) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id`, `kd_pembelian`, `kd_supplier`, `tgl_pembelian`, `no_faktur`, `jmlh_barang`, `total_harga`) VALUES
(1, 'PM-01', 'S-01', '2020-02-28', 'ABC123F', '10', '5000000'),
(2, 'PM-02', 'S-02', '2020-05-12', 'DEF345K', '15', '7000000'),
(3, 'PM-03', 'S-03', '2020-07-16', 'HIJ789L', '15', '6000000'),
(4, 'PM-04', 'S-04', '2020-01-10', 'JHG872L', '20', '20000000'),
(5, 'PM-05', 'S-05', '2020-09-09', 'AFH826G', '10', '6500000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id` int(11) NOT NULL,
  `kd_penjualan` varchar(10) NOT NULL,
  `kd_kustomer` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `kd_karyawan` varchar(10) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `no_faktur` varchar(10) NOT NULL,
  `total_harga` varchar(15) NOT NULL,
  `metode_pembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id`, `kd_penjualan`, `kd_kustomer`, `kd_barang`, `kd_karyawan`, `tgl_penjualan`, `no_faktur`, `total_harga`, `metode_pembayaran`) VALUES
(1, 'PJ-01', 'K-02', 'V-002', 'KW-03', '2021-10-12', '123ABC1', '4400000', 'Cash'),
(2, 'PJ-02', 'K-04', 'P-001', 'KW-01', '2021-10-15', '345DEF7', '2000000', 'Cash'),
(3, 'PJ-03', 'K-01', 'R-001', 'KW-04', '2021-11-14', '678HIJ8', '100000', 'Debit'),
(4, 'PJ-04', 'K-05', 'V-001', 'KW-02', '2021-09-11', '897IKJ2', '1000000', 'Cash'),
(5, 'PJ-05', 'K-03', 'M-001', 'KW-05', '2021-09-05', '172ALJ9', '70000', 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `kd_supplier` varchar(10) NOT NULL,
  `nm_supplier` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id`, `kd_supplier`, `nm_supplier`, `alamat`, `no_hp`, `email`) VALUES
(1, 'S-01', 'AT Computer', 'Jl. Sultan Adam', '09976544453', 'atcom@gmail.com'),
(2, 'S-02', 'Info Computer', 'Jl. Sutoyo S', '087528871542', 'infocom@gmail.com'),
(3, 'S-03', 'Aneka Computer', 'Jl. Sungai Mesa', '081187985426', 'anekacom@gmail.com'),
(4, 'S-04', 'Golded IT Store', 'Jl. Vetran', '085367852413', 'goldencom@gmail.com'),
(5, 'S-05', 'Bandung Computer', 'Jl. Kampung Melayu', '089582761552', 'bandungcom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `level` enum('Karyawan','Staff') NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `email`, `level`, `status`) VALUES
(1, 'budi69', '12345678', 'budi@gmail.com', 'Karyawan', 1),
(2, 'bara007', 'baraarab', 'bara@gmail.com', 'Karyawan', 1),
(3, 'bayu911', 'babayo123', 'bayu@gmail.com', 'Karyawan', 1),
(4, 'agis27', 'upinipin', 'agis@gmail.com', 'Karyawan', 1),
(5, 'akin29', 'kinyakin', 'akin@gmail.com', 'Staff', 1),
(6, 'rakaaa', 'fatrix', 'raka@gmail.com', 'Karyawan', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dtl_pembelian`
--
ALTER TABLE `tbl_dtl_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dtl_penjualan`
--
ALTER TABLE `tbl_dtl_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_dtl_pembelian`
--
ALTER TABLE `tbl_dtl_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_dtl_penjualan`
--
ALTER TABLE `tbl_dtl_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
