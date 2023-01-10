-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 06:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_spx`
--

-- --------------------------------------------------------

--
-- Table structure for table `mekanik`
--

CREATE TABLE `mekanik` (
  `no_mekanik` int(3) UNSIGNED NOT NULL,
  `nama_mekanik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mekanik`
--

INSERT INTO `mekanik` (`no_mekanik`, `nama_mekanik`) VALUES
(1, 'None'),
(2, 'Lukman'),
(3, 'Ivan'),
(4, 'Muhidin'),
(5, 'Irhas Prabu'),
(6, 'Tamher Firman'),
(7, 'Manto Gurning');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `no_request` int(5) NOT NULL,
  `nopol` varchar(8) NOT NULL,
  `tipe_unit` varchar(8) NOT NULL,
  `nama_driver` varchar(30) NOT NULL,
  `nama_mekanik` varchar(12) NOT NULL,
  `km_unit` varchar(6) NOT NULL,
  `keluhan` varchar(200) NOT NULL,
  `tanggal_pengajuan` varchar(12) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`no_request`, `nopol`, `tipe_unit`, `nama_driver`, `nama_mekanik`, `km_unit`, `keluhan`, `tanggal_pengajuan`, `status`) VALUES
(23, 'B1234ABC', 'Blindvan', 'Superco', 'None', '3200', 'servis rutin', '12-Jan-2023', 'Requested'),
(24, 'B9256NCF', 'Blindvan', 'Oishi Popcorn', 'Irhas Prabu', '420', 'KONSLET RINGAN,GANTI BAN LUAR,BOX BOCOR,SERVICE RUTIN', '28-Jan-2023', 'Open'),
(25, 'B9697SCI', 'CDE', 'Macchiato', 'Muhidin', '15511', 'KONSLET RINGAN,GANTI BAN LUAR,BOX BOCOR,SERVICE RUTIN', '14-Mar-2023', 'Open'),
(26, 'AA1234AA', 'Blindvan', 'Martabak Manis Keju Dobel', 'None', '900', 'Lapar kepengan martabak manis', '12-Apr-2023', 'Requested');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `no_tiket` int(5) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tipe_unit` varchar(10) NOT NULL,
  `nama_driver` varchar(30) NOT NULL,
  `nama_mekanik` varchar(30) DEFAULT NULL,
  `km_unit` varchar(6) NOT NULL,
  `keluhan` varchar(200) NOT NULL,
  `tanggal_servis` varchar(15) DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`no_tiket`, `nopol`, `tipe_unit`, `nama_driver`, `nama_mekanik`, `km_unit`, `keluhan`, `tanggal_servis`, `status`) VALUES
(2, 'B9073SCL', 'CDD BOX', 'Erfan Alif Yanuar', 'None', '30452', 'Kopling agak seret dan berat,SERVICE RUTIN,KOPLING KERAS/BERAT', '10-3-2022', 'Closed'),
(3, 'B9769SCJ', 'CDD BOX', 'Dorisman abadi', 'Lukman', '70537', 'Rem buang kanan,LAMPU KABIN MATI,GANTI BAN DALAM,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN', '10-3-2022', 'Closed'),
(4, 'B9728SCJ', 'CDD BOX', 'Andi Suryadi', 'None', '61638', 'TAMBAH AIR ACCU,', '10-4-2022', 'Closed'),
(5, 'B9114SCJ', 'CDD BOX', 'Muhammad syahlan albasyir', 'Ivan', '161373', 'TAMBAH MINYAK REM,SERVICE RUTIN', '10-5-2022', 'Closed'),
(6, 'B9735SCJ', 'CDD BOX', 'YURI SATOTO', 'Tamher Firman', '60870', 'Tidak ada,STEL REM / REM DALAM /KERAS,SERVICE RUTIN', '10-6-2022', 'Closed'),
(7, 'B9902SCI', 'CDE BOX', 'RAHAJI', 'Tamher Firman', '56999', 'Rem angin tidak berfungi,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,GIGI SUSAH MASUK', '10-7-2022', 'Closed'),
(8, 'B9607SCJ', 'CDE BOX', 'Muhamad Lutfi Hidayat', 'Lukman', '79694', 'GANTI BAN LUAR,REM BUNYI', '10-10-2022', 'Closed'),
(9, 'B9924SCK', 'CDE BOX', 'Darwis angelina', 'Manto Gurning', '18576', 'Tambah cooler,rem dalem+bunyi,sporing balance,,BAUT KENDOR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG', '10-10-2022', 'Closed'),
(10, 'B9376SCJ', 'CDD BOX', 'M FIRDAUS RAKA SYIFFA', 'Tamher Firman', '135885', 'GANTI BAN LUAR', '10-10-2022', 'Closed'),
(11, 'B9907SCK', 'CDD BOX', 'MUSAR', 'Tamher Firman', '67538', 'Minta spooring,GANTI BAN LUAR,TAMBAH AIR ACCU,SERVICE RUTIN,', '10-11-2022', 'Closed'),
(12, 'B9058SCJ', 'CDD BOX', 'Nopi erwoto saputro', 'Muhidin', '147305', 'Persneling keras,KONSLET RINGAN,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,STIR OLENG,KOPLING KERAS/BERAT', '10-12-2022', 'Closed'),
(13, 'B9013SCL', 'CDE BOX', 'MULYANA', 'Manto Gurning', '10603', 'Servis berkala dan cek filter udara cek filter oli dan cek filter solar,TAMBAH AIR ACCU,SERVICE RUTIN,', '10-12-2022', 'Closed'),
(14, 'B9948SCK', 'CDE BOX', 'Rama Zaelani', 'Muhidin', '6361', 'SERVICE RUTIN,Service berkala', '13-10-2022', 'Closed'),
(15, 'B9075SCJ', 'CDE BOX', 'Febrian', 'Lukman', '52081', 'KONSLET RINGAN,GANTI ACCU,,Kurang air accu', '17-10-2022', 'Closed'),
(16, 'B9491SCJ', 'CDE BOX', 'Rama Zaelani', 'Muhidin', '65772', 'STEL REM / REM DALAM /KERAS,KOPLING KERAS/BERAT,', '17-10-2022', 'Closed'),
(17, 'B9903SCJ', '#N/A', 'Wahyu setyobudi', 'Lukman', '121377', 'Tenaga agak kurang di tanjakan ,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,TAMBAH AIR ACCU', '17-10-2022', 'Closed'),
(18, 'B9783SCJ', 'CDD BOX', 'Ricky Wijaya', 'Manto Gurning', '44135', 'REM BUNYI,SERVICE RUTIN,STIR OLENG,,', '18-10-2022', 'Closed'),
(19, 'B9134SCL', 'CDD BOX', 'Asep Nurrojidin', 'Manto Gurning', '42294', 'LAMPU BESAR/UTAMA MATI,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK DEPAN BUNYI,KOPLING KERAS/BERAT,', '18-10-2022', 'Closed'),
(20, 'B9944SCJ', 'CDD BOX', 'Bachtiar Manatha', 'Manto Gurning', '40475', 'BAUT KENDOR,STEL REM / REM DALAM /KERAS,KACA PINTU,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,* Stel Rem Kurang pakem\n* Cek Kaki2 banting kiri\n* Cek pintu kanan kaca pintu selip\n* Minta Filter Angin', '19-10-2022', 'Closed'),
(21, 'B9242SCJ', 'CDE BOX', 'TRIANTO', 'Irhas Prabu', '62060', 'LAMPU BESAR/UTAMA MATI,GANTI BAN LUAR,REM BUNYI,TAMBAH AIR ACCU,MESIN PINCANG/MBREBET,SHOCK BELAKANG BUNYI,', '19-10-2022', 'Closed'),
(22, 'B9103SCK', 'CDD BOX', 'YURI SATOTO', 'Tamher Firman', '76681', 'BOX BOCOR,', '21-10-2022', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `no_unit` int(4) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tipe_unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`no_unit`, `nopol`, `tipe_unit`) VALUES
(1, 'B1234ABC', 'Blindvan'),
(2, 'B2222ABC', 'CDD'),
(3, 'D1234DD', 'CDE'),
(4, 'B9695ALI', 'Blindvan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no_user` int(2) NOT NULL,
  `username` varchar(8) DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no_user`, `username`, `nama_user`, `password`) VALUES
(1, 'ali', 'Aulia Arif Dwi M', 'admin12'),
(2, 'iadhisti', 'Ines Adhisti', 'admin20'),
(3, 'riyanto', 'Riyanto Panjaitan', 'ucok1'),
(4, 'husni', 'Husni Umar', 'husni12'),
(5, 'fikri', 'Fikri', 'fikri12'),
(6, 'unyung', 'unyung20', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`no_mekanik`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`no_request`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`no_tiket`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`no_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mekanik`
--
ALTER TABLE `mekanik`
  MODIFY `no_mekanik` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `no_request` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `no_tiket` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `no_unit` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
