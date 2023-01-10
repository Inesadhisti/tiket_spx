-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 04:23 PM
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
(1, 'Lukman'),
(2, 'Ivan'),
(3, 'Muhidin'),
(4, 'Irhas Prabu'),
(5, 'Tamher Firman'),
(11, 'Manto Gurning');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `no_request` int(5) NOT NULL,
  `nopol` varchar(8) NOT NULL,
  `tipe_unit` varchar(8) NOT NULL,
  `nama_driver` varchar(30) NOT NULL,
  `km_unit` varchar(6) NOT NULL,
  `keluhan` varchar(200) NOT NULL,
  `tanggal_pengajuan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`no_request`, `nopol`, `tipe_unit`, `nama_driver`, `km_unit`, `keluhan`, `tanggal_pengajuan`) VALUES
(1, 'B1234ABC', 'CDD', 'Superco', '3200', 'servis rutin', '12-Jan-2023'),
(2, 'B9256NCF', 'Blindvan', 'Oishi Popcorn', '420', 'KONSLET RINGAN,GANTI BAN LUAR,BOX BOCOR,SERVICE RUTIN', '28-Jan-2023'),
(3, 'AA1234AA', 'Blindvan', 'Rambo', '200', 'Kurang Asin', '30-Jan-2023');

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
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`no_tiket`, `nopol`, `tipe_unit`, `nama_driver`, `nama_mekanik`, `km_unit`, `keluhan`, `tanggal_servis`, `status`) VALUES
(2, 'B9073SCL', 'CDD BOX', 'Erfan Alif Yanuar', 'Lukman', '30452', 'Kopling agak seret dan berat,SERVICE RUTIN,KOPLING KERAS/BERAT', '10-3-2022', 'Open'),
(3, 'B9769SCJ', 'CDD BOX', 'Dorisman abadi', 'Lukman', '70537', 'Rem buang kanan,LAMPU KABIN MATI,GANTI BAN DALAM,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN', '10-3-2022', 'Closed'),
(4, 'B9728SCJ', 'CDD BOX', 'Andi Suryadi', 'Lukman Lukmen', '61638', 'TAMBAH AIR ACCU,', '10-4-2022', 'Open'),
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
(22, 'B9103SCK', 'CDD BOX', 'YURI SATOTO', 'Tamher Firman', '76681', 'BOX BOCOR,', '21-10-2022', 'Closed'),
(23, 'B9556SCJ', 'CDE BOX', 'DEDE SUPRIYADI', 'Ivan', '46276', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,', '21-10-2022', 'Closed'),
(24, 'B9789SCJ', 'CDD BOX', 'Abdul Muis', 'Muhidin', '100328', 'KARET WIPER,GANTI BAN LUAR,BOX BOCOR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,Pintu box bocor', '24-10-2022', 'Closed'),
(25, 'B9034SCJ', 'CDE BOX', 'Syahrul Febriansyah', 'Irhas Prabu', '79311', 'REM BUNYI,SERVICE RUTIN,', '24-10-2022', 'Closed'),
(26, 'B9674SCJ', 'CDD BOX', 'Syahrul Febriansyah', 'Manto Gurning', '121617', 'GANTI BAN LUAR,', '25-10-2022', 'Closed'),
(27, 'B9516SCJ', 'CDE BOX', 'Taufik heriyanto', 'Ivan', '95060', 'REM BUNYI,SERVICE RUTIN,', '25-10-2022', 'Closed'),
(28, 'B9582SCJ', 'CDE BOX', 'Sultan', 'Ivan', '64054', 'LAMPU REM MATI,REM BUNYI,PINTU TAMBAH AIR ACCU,SERVICE RUTIN,Minta tolong Kep di servis di Dan Mogot Cengkareng kep', '26-10-2022', 'Closed'),
(29, 'B9719SCI', 'BLINDVAN', 'Ahmad badawi', 'Manto Gurning', '72336', 'GANTI ACCU,SERVICE RUTIN,', '26-10-2022', 'Closed'),
(30, 'B9177SCJ', 'CDD BOX', 'Pikri Rizkiyansyah', 'Tamher Firman', '136705', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,ganti filter solar atas dan bawah sama filter oli', '31-10-2022', 'Closed'),
(31, 'B9411NCF', 'BLINDVAN', 'HARI CAHYONO', 'Irhas Prabu', '96804', 'GANTI BAN LUAR,DOOR LOCK/KUCI PINTU,1. Ban sudah tipis harus di ganti ( ganti 2 ban depan + 1 ban serep\n2. Kunci pintu depan rusak', '31-10-2022', 'Closed'),
(32, 'B9334SCJ', 'CDD BOX', 'Ronal hasanudin', 'Lukman', '235088', 'LAMPU BOX MATI,GANTI BAN LUAR,Lampu utama sebelah kanan mati,lampu rem mati', '11-1-2022', 'Closed'),
(33, 'B9739NCG', '#N/A', 'setiawan rahman syah', 'Lukman', '529176', 'GANTI BAUT RODA,BOCOR,STEL REM / REM DALAM /KERAS,DOOR LOCK/KUCI PINTU,SERVICE RUTIN,STIR OLENG,KOPLING KERAS/BERAT,Baut roda hilang 1', '11-1-2022', 'Closed'),
(34, 'B9057SCL', 'CDD BOX', 'MOJO RIO HADI', 'Muhidin', '36406', 'STIR OLENG,Steer banting bantung kekiri', '11-2-2022', 'Closed'),
(35, 'B9126SCK', '#N/A', 'SAMUDI', 'Ivan', '78640', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,', '11-3-2022', 'Closed'),
(36, 'B9429NCF', 'BLINDVAN', 'YUSUF', 'Tamher Firman', '102219', 'KEROPOS,STEL REM / REM DALAM /KERAS,JOK/KURSI,MESIN BUNYI/KASAR,STIR OLENG,audio mati tidak ada suaranya dan pintu belakang berisik', '11-3-2022', 'Closed'),
(37, 'B9782SCJ', 'CDD BOX', 'Doni Darmawan', 'Muhidin', '53721', 'BAUT KENDOR,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,', '11-4-2022', 'Closed'),
(38, 'B9045SCK', 'CDE BOX', 'Khaerul Umam', 'Irhas Prabu', '61351', 'LAMPU KABIN MATI,STEL REM / REM DALAM /KERAS,Rem dalem + service filter udara', '11-4-2022', 'Closed'),
(39, 'B9972SCK', 'CDD BOX', 'Dendi Ruswandi', 'Irhas Prabu', '60594', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,Seter goyang parah.rem dalem dan membuang ke kiri.servis rutin', '11-7-2022', 'Closed'),
(40, 'B9902SCI', 'CDE BOX', 'Jajanghaerudin', 'Tamher Firman', '59557', 'LAMPU REM MATI,GANTI BAN LUAR,BAUT KENDOR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK BELAKANG BUNYI,KOPLING KERAS/BERAT,', '11-8-2022', 'Closed'),
(41, 'B9061SCL', 'CDD BOX', 'Aris Munandar', 'Ivan', '34938', 'GANTI BAN LUAR,TAMBAH AIR ACCU,TAMBAH OLI MESIN,Ganti filter solar atas', '11-8-2022', 'Closed'),
(42, 'B9073SCL', 'CDD BOX', 'Dimas Muhammad fatkhur rohhim', 'Tamher Firman', '43412', 'TAMBAH MINYAK REM,SERVICE RUTIN,KOPLING KERAS/BERAT,kadang2 Kopling Seret ketika Jalan pelan(Boros dan tenaga kurang', '11-9-2022', 'Closed'),
(43, 'B9519NCF', 'BLINDVAN', 'sudrajat iswanto', 'Lukman', '34490', 'TAMBAH AIR ACCU,Cek kaki-kaki, mobil Boros', '11-9-2022', 'Closed'),
(44, 'B9952SCJ', 'CDD BOX', 'ANDRI BUDIANA', 'Manto Gurning', '70188', 'KARET WIPER,BOX BOCOR,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,STIR OLENG,', '11-10-2022', 'Closed'),
(45, 'B9055SCK', 'CDE BOX', 'SUBUR', 'Ivan', '35811', 'STEL REM / REM DALAM /KERAS,KACA PINTU,TAMBAH AIR ACCU,SERVICE RUTIN,Ganti filter,stel rem bawah,atas,kaca pintu kanan tdk bsa dtutup full', '11-11-2022', 'Closed'),
(46, 'B9543SCJ', 'CDE BOX', 'Rifqi Hasty Saputra', 'Muhidin', '62949', 'LAMPU REM MATI,REM BUNYI,SERVICE RUTIN,LAMPU BOX MATI 1', '14-11-2022', 'Closed'),
(47, 'B9089SCK', 'CDD BOX', 'Rudy Wijaya', 'Tamher Firman', '64746', 'SERVICE RUTIN,Lari nya berat', '14-11-2022', 'Closed'),
(48, 'B9281SCK', 'CDD BOX', 'Fachrudin', 'Muhidin', '19934', 'TAMBAH AIR ACCU,SERVICE RUTIN,service berkala. ganti oli+filter oli. tembak stempet. air accu', '15-11-2022', 'Closed'),
(49, 'B9103SCK', 'CDD BOX', 'Ahmad fauzi2', 'Manto Gurning', '82300', 'KARET WIPER,GANTI BAN LUAR,TAMBAH AIR ACCU,SERVICE RUTIN,', '15-11-2022', 'Closed'),
(50, 'B9065SCL', 'CDD BOX', 'SAMUDI', 'Tamher Firman', '42563', 'GANTI BAN LUAR,TAMBAH AIR ACCU,SERVICE RUTIN,STIR BUNYI,KOPLING KERAS/BERAT,Setir bunyi saat parkir,kopling agak keras,dan ban depan sudah tidak aman untuk ketebalan 30% dan sudah bergelombang', '16-11-2022', 'Closed'),
(51, 'B9549SCJ', 'CDE BOX', 'Aja warja', 'Irhas Prabu', '82979', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,Ban kanan belakang botak ban kiri belakang udah mulai gundul ban setir sebelah kiri mulai tipis', '16-11-2022', 'Closed'),
(52, 'B9455SCJ', '#N/A', 'ALGHANIY SADAD', 'Lukman', '186987', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,Ngefeet/grease', '17-11-2022', 'Closed'),
(53, 'B9071SCL', 'CDD BOX', 'Ujang supriadi', 'Manto Gurning', '65090', 'KARET WIPER,Servis berkala ganti oli, filter solar filter udara & karet wiper', '17-11-2022', 'Closed'),
(54, 'B9304NCG', 'BLINDVAN', 'Yogie adam pratama', 'Muhidin', '138768', 'KOPLING DALAM,Kipas ac bunyi berisik', '18-11-2022', 'Closed'),
(55, 'B9931SCJ', '#N/A', 'HENDI', 'Ivan', '164181', 'SERVICE RUTIN,', '18-11-2022', 'Closed'),
(56, 'B9623SCJ', 'CDE BOX', 'Parid mukti', 'Muhidin', '53594', 'GANTI BAN LUAR,REM BUNYI,TAMBAH AIR ACCU,SERVICE RUTIN,Lampu belakang sebelah kanan mati', '18-11-2022', 'Closed'),
(57, 'B9975SCJ', 'CDE BOX', 'Slamet Suwito', 'Tamher Firman', '66798', 'BOX BOCOR,Box nya bocor rembes dari atas', '21-11-2022', 'Closed'),
(58, 'B9819SCJ', 'CDD BOX', 'Dwi Mulyanto', 'Tamher Firman', '80816', 'GANTI BAN LUAR,TAMBAH AIR ACCU,STIR OLENG,', '21-11-2022', 'Closed'),
(59, 'B9465SCI', 'BLINDVAN', 'Andika', 'Irhas Prabu', '73186', 'GANTI BAN LUAR,', '23-11-2022', 'Closed'),
(60, 'B9960SCK', 'CDD BOX', 'Cito', 'Lukman', '33844', 'Pintu Box susah ditutup, pengait pengunci box patah', '24-11-2022', 'Closed'),
(61, 'B9780SCJ', 'CDD BOX', 'Egi prabowo', 'Tamher Firman', '168943', 'KONSLET RINGAN,STIR OLENG,KOPLING KERAS/BERAT,', '24-11-2022', 'Closed'),
(62, 'B9422SCK', '#N/A', 'Susanto', 'Lukman', '102745', 'LAMPU SEIN MATI,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,permintaan ganti ban luar kiri belakang 2pcs, lampu sein belakang mati, rem dalam', '25-11-2022', 'Closed'),
(63, 'B9014SCJ', 'CDD BOX', 'Muhamad sugandi', 'Irhas Prabu', '219385', 'GANTI BAN LUAR,Klakson mati', '25-11-2022', 'Closed'),
(64, 'B9495SCJ', 'CDE BOX', 'IRMANSAH', 'Irhas Prabu', '50497', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,GANTI ACCU,Accu tekor | ban kiri depan botak', '28-11-2022', 'Closed'),
(65, 'B9275SCK', 'CDD BOX', 'SURYA DARMA', 'Irhas Prabu', '40003', 'REM BUNYI,TAMBAH AIR ACCU,SERVICE RUTIN,', '29-11-2022', 'Closed'),
(66, 'B9139SCJ', 'CDD BOX', 'Al Fikri', 'Ivan', '186665', 'Lampu rem belakang mati,STIR OLENG', '30-11-2022', 'Closed'),
(67, 'B9495SCJ', 'CDE BOX', 'Cahyo Agus prastia budi', 'Ivan', '50497', 'TAMBAH MINYAK REM,GANTI ACCU,', '12-1-2022', 'Closed'),
(68, 'B9134SXT', '#N/A', 'Dede karnadinata', 'Manto Gurning', '101649', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR BUNYI,Ban depan sebelah kirin gundul dan ban serep bocor dan gundul', '12-1-2022', 'Closed'),
(69, 'B9975SCJ', 'CDE BOX', 'Siswoyo', 'Lukman', '67704', 'BOX BOCOR,REM BUNYI,Terlalu boros solar', '12-1-2022', 'Closed'),
(70, 'B9510SCJ', 'CDE BOX', 'Indra pratama', 'Irhas Prabu', '63472', 'SERVICE RUTIN,STIR OLENG,KOPLING KERAS/BERAT,GANTI FILTER SOLAR (ATAS / BAWAH), GANTI FILTER OLI & GANTI FILTER UDARA', '12-5-2022', 'Closed'),
(71, 'B9140SXT', '#N/A', 'Rizki', 'Manto Gurning', '105697', 'LAMPU BESAR/UTAMA MATI,GANTI ACCU,Aki tekor saat parkir lama/mesin tidak dihidupkan lama , sama setel bospom agar irit.', '12-5-2022', 'Closed'),
(72, 'B9018SCK', 'CDD BOX', 'VRELLANDY PASCARIYANTO', 'Tamher Firman', '100262', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,vet roda2/kaki', '12-5-2022', 'Closed'),
(73, 'B9994SCJ', 'CDE BOX', 'YANDI SAPRIADI', 'Muhidin', '50052', 'SERVICE RUTIN,', '12-5-2022', 'Closed'),
(74, 'B9097SCK', 'CDD BOX', 'Rony romansyah', 'Ivan', '20008', 'TAMBAH MINYAK REM,TAMBAH AIR ACCU,SERVICE RUTIN,servis,filter solar atas bawah minta di ganti,tenaga agak kempos', '12-5-2022', 'Closed'),
(75, 'B9617SCJ', 'CDE BOX', 'Syahrizal Hidayatullah', 'Ivan', '40309', 'TAMBAH AIR ACCU,', '12-5-2022', 'Closed'),
(76, 'B9792SCJ', 'CDD BOX', 'Ardhian norma laksana', 'Manto Gurning', '104678', 'KARET WIPER,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK BELAKANG BUNYI,Ban luar 2 yang halus,Ganti filter solar/filter udara/pelampung solar eror/servis berkala', '12-5-2022', 'Closed'),
(77, 'B9784SCK', 'CDD BOX', 'ZAKA MUWAFFAQ', 'Muhidin', '62855', 'LAMPU REM MATI,SERVICE RUTIN,Lampu rem belakang sebelah kanan mati', '12-5-2022', 'Closed'),
(78, 'B9442SCI', 'CDE BOX', 'Chrisdo Yerenia Christanto W', 'Ivan', '110981', 'KARET WIPER,GANTI BAN LUAR,REM BOX BOCOR,GAGANG SPION,Ganti ban depan kanan kiri dan servis rem, rem di injak terlalu dalam', '12-5-2022', 'Closed'),
(79, 'B9991SCJ', 'CDD BOX', 'Linardi hendrawan', 'Tamher Firman', '66793', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,KOPLING KERAS/BERAT,Minyak rem , rem bunyi ,', '12-5-2022', 'Closed'),
(80, 'B9117SCK', 'CDD BOX', 'ANALTRI', 'Irhas Prabu', '59882', 'BOX BOCOR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,Setel rem + vet', '12-6-2022', 'Closed'),
(81, 'B9914SCJ', '#N/A', 'Nanda Budi Prasetyo', 'Manto Gurning', '97552', 'GANTI BAN LUAR,', '12-6-2022', 'Closed'),
(82, 'B9786SCJ', 'CDD BOX', 'Andi kurniawan', 'Ivan', '46250', 'TAMBAH MINYAK REM,SERVICE RUTIN,SHOCK DEPAN BUNYI,GIGI SUSAH MASUK,', '12-6-2022', 'Closed'),
(83, 'B9077SCJ', 'CDE BOX', 'Sopan ginting', 'Irhas Prabu', '74849', 'SERVICE RUTIN,', '12-8-2022', 'Closed'),
(84, 'B9548SCJ', 'CDE BOX', 'M. AZMI', 'Muhidin', '74478', 'LAMPU REM MATI,GANTI BAN LUAR,TAMBAH AIR ACCU,SERVICE RUTIN,Ban depan Penjol tidak rata gundul nya', '12-8-2022', 'Closed'),
(85, 'B9059SCL', 'CDD BOX', 'PRIYO SASONO', 'Irhas Prabu', '34331', 'TAMBAH OLI MESIN,Lampu kabut mati', '12-8-2022', 'Closed'),
(86, 'B9970SCI', 'CDD BOX', 'MASHUDA', 'Muhidin', '66518', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,', '12-8-2022', 'Closed'),
(87, 'B9705SCI', 'CDD BOX', 'Adi purnawan', 'Muhidin', '75534', 'LAMPU BOX MATI,GANTI BAN DALAM,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,1.ganti ari coler radiator sudah lama\n2.lampu box mati', '12-8-2022', 'Closed'),
(88, 'B9697SCI', 'CDD BOX', 'H.SYAHRIR', 'Ivan', '218456', 'MESIN PINCANG/MBREBET,HANDLE GIGI KERAS,Filter solar kotor mobil sering brebet/mati', '12-9-2022', 'Closed'),
(89, 'B9924SCK', 'CDE BOX', 'Jefri julian', 'Manto Gurning', '39993', 'BAUT KENDOR,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,STIR OLENG,KOPLING DALAM,Ganti kampas rem,ganti karet wiper,ganti oli,sporing balance,baut box kendor,kopling dalam', '12-9-2022', 'Closed'),
(90, 'B9902SCI', 'CDE BOX', 'Deki Satria', 'Ivan', '62097', 'LAMPU SEIN MATI,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,MESIN BUNYI/KASAR,KOPLING KERAS/BERAT,klason mati', '12-12-2022', 'Closed'),
(91, 'B9787SCJ', 'CDD BOX', 'Muhammad Shuly Triyandi', 'Irhas Prabu', '28628', 'GANTI BAN DALAM,', '12-12-2022', 'Closed'),
(92, 'B9359NCF', 'CDE BOX', 'Muhammad Ghazali', 'Irhas Prabu', '112841', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,DOOR LOCK/KUCI PINTU,GANTI KEPALA ACUU,SERVICE RUTIN,SHOCK DEPAN BUNYI,HANDLE GIGI KERAS,Filter Solar Bocor rembes,baut nya selek,minta ganti 1 set rumahanny', '12-12-2022', 'Closed'),
(93, 'B9849SCK', 'CDD BOX', 'Andri Wibisana', 'Tamher Firman', '69948', 'Oli kurang,', '12-12-2022', 'Closed'),
(94, 'B9065SCL', 'CDD BOX', 'BAMBANG SUTRISNO', 'Muhidin', '53213', 'STEP BELAKANG PATAH,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK DEPAN BUNYI,Servis Berkala, Ganti oli mesin, oli Gardan, tenaga ngempossss, step belakang patah,', '12-12-2022', 'Closed'),
(95, 'B9728SCK', 'CDD BOX', 'fendy prastyo', 'Ivan', '76370', 'KARET WIPER,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SERVICE BERKALA,GANTI OLI,GANTI FILTER OLI,GANTI FILTER SOLAR,GANTI FILTER UDARA,LAMPU FOGLAMP DEPAN KANAN KIRI MATI,GANTI KARET W', '12-12-2022', 'Closed'),
(96, 'B9101SCJ', 'CDD BOX', 'Martinus', 'Muhidin', '207555', 'LAMPU REM MATI,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,Ban belakang sebelah kiri 2 sudah botak,lampu rem sebelah kiri,fog lamp kiri kanan,lampu utama sebelah kiri,audio off', '12-12-2022', 'Closed'),
(97, 'B9034SCK', 'CDD BOX', 'Chairul Anwar', 'Tamher Firman', '106686', 'TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,Ganti filter solar atas bawah filter udara', '12-12-2022', 'Closed'),
(98, 'B9121SCL', 'CDD BOX', 'Muhadi', 'Lukman', '48535', 'STIR OLENG,Stir oleng, tierod & kingpen kendor, pengecekan kaki kaki', '12-12-2022', 'Closed'),
(99, 'B9770SCJ', 'CDD BOX', 'Faqih Setya Aji', 'Tamher Firman', '65120', 'TAMBAH AIR ACCU,Pilih mesin kurang', '12-12-2022', 'Closed'),
(100, 'B9134SCL', 'CDD BOX', 'Hernanda Tri Putra Leksana', 'Manto Gurning', '60036', 'TAMBAH AIR ACCU,SERVICE RUTIN,PER PATAH,Servis berskala,ganti filter oli,ganti filter solar atas bawah,,lampu kabut mati satu.....\n\nuntuk Pengajuan perbaikan per kaki-kaki yang sudah parah,sopring n b', '12-12-2022', 'Closed'),
(101, 'B9780SCJ', 'CDD BOX', 'Hermawan1', 'Tamher Firman', '173753', 'LAMPU REM MATI,GANTI BAN LUAR,TAMBAH AIR ACCU,SHOCK BELAKANG BUNYI,Ganti ban luar belakang kanan yg bagian luar dan ban serep', '13-12-2022', 'Closed'),
(102, 'B9544SCJ', 'CDE BOX', 'SLAMET ARI MARYADI', 'Muhidin', '107624', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,STIR BERAT,KOPLING KERAS/BERAT,', '13-12-2022', 'Closed'),
(103, 'B9710SCK', 'CDD BOX', 'Fitriadi', 'Irhas Prabu', '88406', 'STEL REM / REM DALAM /KERAS,MESIN PINCANG/MBREBET,STIR OLENG,', '13-12-2022', 'Closed'),
(104, 'L9195BA', 'BLINDVAN', 'Chairul Anwar', 'Tamher Firman', '233003', 'LAMPU BESAR/UTAMA MATI,TAMBAL BAN,BOX BOCOR,STEL REM / REM DALAM /KERAS,KANCINGAN KABIN,TAMBAH AIR ACCU,MESIN BUNYI/KASAR,STIR BERAT,HANDLE GIGI KERAS,Lampu Utama Mati sebelah kiri, Suara Mesin Kasar,', '15-12-2022', 'Closed'),
(105, 'B9728SCJ', 'CDD BOX', 'Sutrisno', 'Tamher Firman', '71860', 'TAMBAH AIR ACCU,SERVICE RUTIN,', '15-12-2022', 'Closed'),
(106, 'B9070NCF', 'CDE BOX', 'Joko saputro', 'Irhas Prabu', '98780', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,STIR BERAT,Ban belakang botak', '16-12-2022', 'Closed'),
(107, 'B9030SCK', 'CDD BOX', 'Arian Akbar R', 'Lukman', '81583', 'LAMPU BOX BOCOR MATI,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,', '16-12-2022', 'Closed'),
(108, 'B9946SCJ', 'CDD BOX', 'Muhammad Reza Fadillah', 'Lukman', '102476', 'GANTI BAN LUAR,', '19-12-2022', 'Closed'),
(109, 'B9543NCF', 'BLINDVAN', 'Fitri setia pratama', 'Lukman', '89391', 'SERVICE RUTIN,', '19-12-2022', 'Closed'),
(110, 'B9334SCJ', 'CDD BOX', 'MOCH DWI PRASETIYO', 'Ivan', '250307', 'LAMPU REM MATI,GANTI BAN LUAR,SERVICE RUTIN,STIR OLENG,Service berkala, Ganti oli mesin, ganti filter oli & solar , ganti ban 2pcs', '19-12-2022', 'Closed'),
(111, 'B9789SCJ', 'CDD BOX', 'IBRA NOVIARDI', 'Ivan', '112464', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,KOPLING DALAM,Ban depan habis tidak rata', '19-12-2022', 'Closed'),
(112, 'B9570SCJ', 'CDE BOX', 'Wahyudin', 'Manto Gurning', '52507', 'KARET WIPER,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,', '19-12-2022', 'Closed'),
(113, 'B9012SCL', 'CDD BOX', 'NANANG HADI SAPUTRA', 'Lukman', '41878', 'REM BUNYI,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK DEPAN BUNYI,Lampu kabut mati', '19-12-2022', 'Closed'),
(114, 'B9031SCK', 'CDE BOX', 'Ali Nafia', 'Lukman', '33930', 'KEROPOS,REM BUNYI,Pintu box engsel pada keropos', '19-12-2022', 'Closed'),
(115, 'B9338SCJ', 'CDD BOX', 'BERHART MARULI', 'Lukman', '168623', 'STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK BELAKANG BUNYI,Lampu foglamp mati , ganti filter solar atas bawah , full vet , cek filter udara , ( tune up )', '19-12-2022', 'Closed'),
(116, 'B9558SCJ', 'CDE BOX', 'Mohammad rokim', 'Muhidin', '48697', 'SERVICE RUTIN,Mesin tidak bertenaga, suara sedikit kasar , dan terlalu boros', '20-12-2022', 'Closed'),
(117, 'B9089SCK', 'CDD BOX', 'EKO NUGROHO PUJI SUSANTO', 'Muhidin', '73448', 'LAMPU SEIN MATI,', '20-12-2022', 'Closed'),
(118, 'B9125SCL', 'CDD BOX', 'Hendri Yanto', 'Manto Gurning', '69499', 'KARET WIPER,GANTI BAN LUAR,TAMBAH MINYAK REM,TAMBAH AIR ACCU,SERVICE RUTIN,Service rutin sama ganti ban luar yang belakang sebelah kanan sama depan kanan kiri', '20-12-2022', 'Closed'),
(119, 'B9798SCJ', 'CDD BOX', 'Muhamad sukron', 'Manto Gurning', '93338', 'LAMPU BESAR/UTAMA MATI,', '20-12-2022', 'Closed'),
(120, 'B9061SCL', 'CDD BOX', 'Riagus mardikan', 'Muhidin', '46778', 'GANTI BAN LUAR,TAMBAH AIR ACCU,SERVICE RUTIN,', '21-12-2022', 'Closed'),
(121, 'B9211SCL', 'CDD BOX', 'YANTO', 'Ivan', '101736', 'STEL REM / REM DALAM /KERAS,SERVICE RUTIN,KOPLING KERAS/BERAT,Perlu servis besar ganti oli, filter oli filter solar atas bawah saringan udara ( MOBIL NGEMPOS BANGET GAK ADA TENAGA BUAT NANJAK.)', '21-12-2022', 'Closed'),
(122, 'B9491SCJ', 'CDE BOX', 'Dafif reza setyoso', 'Lukman', '109753', 'LAMPU REM MATI,REM BUNYI,SERVICE RUTIN,Service berkala, Karena kilometer sudah lewat dll.', '21-12-2022', 'Closed'),
(123, 'B9931SCJ', '#N/A', 'MAULANA AI\'NUL YAQIN', 'Irhas Prabu', '179420', 'GANTI BAN LUAR,Setel rem sudah dalam dan ganti ban 2 kanan belakang dan stip', '21-12-2022', 'Closed'),
(124, 'B9556SCJ', 'CDE BOX', 'AFRIZAL', 'Ivan', '41754', 'GANTI BAN LUAR,REM BUNYI,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,BAN DEPAN KEMBANG TIDAK RATA', '21-12-2022', 'Closed'),
(125, 'B9036SCJ', 'CDE BOX', 'M.ADE IRVAN', 'Lukman', '83i45', 'LAMPU PLAT NO MATI,GANTI BAN DALAM,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,Minta di Ganti ban dalam pentilnya rusak gk bisa di pakai', '21-12-2022', 'Closed'),
(126, 'B9735SCJ', 'CDD BOX', 'RONALD ADIANSYAH', 'Manto Gurning', '57682', 'GANTI BAN LUAR,STIR BUNYI,Setir geter', '22-12-2022', 'Closed'),
(127, 'B9113SCL', 'CDD BOX', 'Muhamad Adi fauzi', 'Lukman', '77681', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,PENGGANTIAN BAN LUAR KANAN 2 KIRI 2 SEREP 1', '22-12-2022', 'Closed'),
(128, 'B9780SCK', 'CDD BOX', 'Muhammad Rizki', 'Irhas Prabu', '118725', 'KARET WIPER,TAMBAH AIR ACCU,TAMBAH OLI MESIN,Karet wiper, dan servis berkala', '22-12-2022', 'Closed'),
(129, 'B9942SCJ', 'CDD BOX', 'Muhamad Hatta', 'Ivan', '74781', 'LAMPU REM MATI,STEL REM / REM DALAM /KERAS,TAMBAH AIR ACCU,SERVICE RUTIN,SHOCK BELAKANG BUNYI,', '22-12-2022', 'Closed'),
(130, 'B9782SCJ', 'CDD BOX', 'Lutfi Kalbuadi', 'Lukman', '65203', 'BAUT KENDOR,', '22-12-2022', 'Closed'),
(131, 'B9958SCK', 'CDD BOX', 'Reizky alfahris', 'Tamher Firman', '41538', 'LAMPU BOX MATI,GANTI BAN LUAR,DOOR LOCK/KUCI PINTU,TAMBAH AIR ACCU,SERVICE RUTIN,LAMPU BEMPER DEPAN MATI, LAMPU BOK BELAKANG KANAN MATI, KACA PINTU SEBELAH KANAN SUSAH NAIK TURUN', '22-12-2022', 'Closed'),
(132, 'B9550SCJ', 'CDE BOX', 'Kadek Randi darmada', 'Lukman', '40077', 'LAMPU REM MATI,GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,STIR BUNYI,Lampu bok atas belakang sebelah kanan mati dan ban belakang kiri dan kanan tolong di ganti ya pak', '22-12-2022', 'Closed'),
(133, 'B9186SCH', 'BLINDVAN', 'Usmanto', 'Manto Gurning', '146826', 'SERVICE RUTIN,', '22-12-2022', 'Closed'),
(134, 'B9968SCI', 'CDD BOX', 'Anzhar abdullah keneddy', 'Lukman', '162319', 'STEP BELAKANG PATAH,STEL REM / REM DALAM /KERAS,Pengunci pintu belakang box patah harus dilas ulang dan rem indikator vacum nyala keluar angin pas di rem', '22-12-2022', 'Closed'),
(135, 'B9075SCJ', 'CDE BOX', 'Eno gagah absara pribadi', 'Tamher Firman', '52550', 'LAMPU REM MATI,GANTI BAN LUAR,TAMBAH AIR ACCU,SHOCK DEPAN BUNYI,Ban Luar gundul dan Ban dalem bocor', '23-12-2022', 'Closed'),
(136, 'B9773SCJ', 'CDD BOX', 'Hafid Hasan Agus Tri Prasetyo', 'Irhas Prabu', '99481', 'TAMBAH AIR ACCU,SERVICE RUTIN,Ganti filter udara', '23-12-2022', 'Closed'),
(137, 'B9071SCL', 'CDD BOX', 'Moch Andik Nur Rozi', 'Manto Gurning', '82367', 'GANTI BAN DALAM,Km kelewat 6000 , Ban dalem serep mnta ganti', '23-12-2022', 'Closed'),
(138, 'B9028SCM', 'BLINDVAN', 'ISHAK', 'Muhidin', '10051', 'Air Radiator coolant sudah sedikit, perlu ditambahkan,', '26-12-2022', 'Closed'),
(139, 'B9726SCJ', 'CDD BOX', 'feri ardiyanto', 'Tamher Firman', '83506', 'LAMPU PLAT NO MATI,TAMBAH AIR ACCU,SERVICE RUTIN,Di stater kadang 2 mati.. Strom tidak nyangkut, lampu beper depan 2 mati.', '26-12-2022', 'Closed'),
(140, 'B9105SCJ', 'CDE BOX', 'KHOLID', 'Ivan', '65588', 'TAMBAH AIR ACCU,SERVICE RUTIN,', '26-12-2022', 'Closed'),
(141, 'B9516SCJ', 'CDE BOX', 'Dimas Prasetyo', 'Lukman', '106890', 'LAMPU PLAT NO MATI,REM BUNYI,TAMBAH AIR ACCU,Ganti kampas rem', '26-12-2022', 'Closed'),
(142, 'B9081SCJ', 'CDE BOX', 'Muhammad hadi', 'Manto Gurning', '87208', 'LAMPU REM MATI,GANTI ACCU,SERVICE RUTIN,Ganti accu dan ganti oli service berkala', '26-12-2022', 'Closed'),
(143, 'B9972SCK', 'CDD BOX', 'Mohammad fithoni', 'Ivan', '90355', 'STEP BELAKANG PATAH,REM BUNYI,SERVICE RUTIN,Stir Bergetar kecepatan, ngerem stir lari ke kanan', '26-12-2022', 'Closed'),
(144, 'B9422SCK', '#N/A', 'Mohamad Khoirul Anam', 'Lukman', '108379', 'SERVICE RUTIN,Cek filter udara ganti bila perlu cek filter solar atas bawah ganti bila perlu Inveten', '26-12-2022', 'Closed'),
(145, 'B9114SCJ', 'CDD BOX', 'Mohamad Khoirul Anam', 'Muhidin', '163402', 'LAMPU BESAR/UTAMA MATI,TAMBAH OLI MESIN,Oli mesin berkurang banyak dan perlu di ganti oli dan lampu utama sebelah kanan putus', '27-12-2022', 'Closed'),
(146, 'B9541SCJ', 'CDE BOX', 'Santoso', 'Ivan', '63483', 'GANTI BAN LUAR,Ganti ban depan kanan sama belakang kiri', '27-12-2022', 'Open'),
(147, 'B9735NCG', 'L300 BOX', 'Muhamad nurkamal', 'Manto Gurning', '68022', 'WIPER MATI,TAMBAH AIR ACCU,SERVICE RUTIN,STIR OLENG,- Servis rutin Ganti Oli mesin\n- cek oli transmisi\n- minyak power setering kurang', '27-12-2022', 'Closed'),
(148, 'B9672SCJ', 'CDD BOX', 'FIKRI RIZKI KUSNANSYAH', 'Irhas Prabu', '112173', 'GANTI BAN LUAR,Sepion kabin patah/layar kamera mundur rusak BAN BELAKANG GUNDUL SEMUA 5 BUAH DENGAN BAN CADANGAN MINTA PERGANTIAN BAN 5 BUAH MINTA SEGERA D PROSES', '27-12-2022', 'Open'),
(149, 'B9242SCJ', 'CDE BOX', 'Muhammad Zakariya', 'Irhas Prabu', '67266', 'GANTI BAN DALAM,Ban dalam TDK bisa di pakai bocor 5 lobamg', '28-12-2022', 'Closed'),
(150, 'B9601SCJ', 'CDE BOX', 'AKHMAD FAUZY AKBAR', 'Irhas Prabu', '63185', 'GANTI BAN LUAR,Ganti Ban Luar 2 PCS . Bagian belakang kiri dan ban stip / cadangan', '28-12-2022', 'Closed'),
(151, 'B9139SCJ', 'CDD BOX', 'JAMES PAUL SETYAWAN', 'Muhidin', '192816', 'GANTI BAN LUAR,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,Service berkala dan pergantian ban luar', '28-12-2022', 'Open'),
(152, 'B9905SCK', 'CDD BOX', 'IMAM WAHYUDI', 'Irhas Prabu', '42459', 'LAMPU REM MATI,GANTI BAN LUAR,Ban belakang sebelah kanan gundul', '28-12-2022', 'Closed'),
(153, 'B9103SCK', 'CDD BOX', 'Oman permana', 'Tamher Firman', '94196', 'LAMPU REM MATI,,', '29-12-2022', 'Closed'),
(154, 'B9256NCF', 'BLINDVAN', 'PENDI', 'Lukman', '98991', 'KONSLET RINGAN,GANTI BAN LUAR,BOX BOCOR,SERVICE RUTIN', '29-12-2022', 'Open'),
(155, 'B9013SCL', 'CDE BOX', 'Indra jaya saputra', 'Muhidin', '20136', 'STEL REM / REM DALAM /KERAS,SERVICE RUTIN,SHOCK DEPAN BUNYI,,Filter solar.filter oli.filter udara kotor/ganti', '29-12-2022', 'Open'),
(156, 'B9045SCK', 'CDE BOX', 'Farhan kurniawan', 'Irhas Prabu', '64494', 'KONSLET BERAT,STEP BELAKANG PATAH,STEL REM / REM DALAM /KERAS,SERVICE RUTIN,HANDLE GIGI KERAS', '30-12-2022', 'Open'),
(157, 'B9697SCI', 'Blindvan', 'Rambo', 'Lukman', '420', 'KONSLET RINGAN,GANTI BAN LUAR,BOX BOCOR,SERVICE RUTIN', '03-01-2023', 'Open');

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
  MODIFY `no_mekanik` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `no_request` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `no_tiket` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

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
