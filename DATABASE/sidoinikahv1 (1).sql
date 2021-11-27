-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 08:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidoinikahv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adat`
--

CREATE TABLE `adat` (
  `idAdat` int(11) NOT NULL,
  `penjelasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adat`
--

INSERT INTO `adat` (`idAdat`, `penjelasan`) VALUES
(1, 'Pernikahan kami menggunakan adat jawa dan sunda yang dipadukan dengan nuansa modern..');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `idCerita` int(11) NOT NULL,
  `judulCerita` varchar(30) NOT NULL,
  `isiCerita` text NOT NULL,
  `gambarCerita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`idCerita`, `judulCerita`, `isiCerita`, `gambarCerita`) VALUES
(1, 'Pertama Bertemu', 'Aku bertemu di pinggir jalan kota bandung', '682906642.jpg'),
(2, 'Pertama Kali Jalan', 'Setelah pertemuan itu aku mengajak kamu jalan-jalan ke kota bandung dengan menggunakan sepeda ontel.', '7a83d66b5963c87248fd12fdd9e007bc.jpg'),
(3, 'Mulai Jatuh Cinta', 'Hari demi hari, aku makin jatuh cinta kepada wanita itu lalu aku memberanikan diri untuk pergi ke kedua orang tuamu dan melamarmu', 'cinta-hubungan-boys-ini-lho-5-inspirasi-cara-melamar-wanita-yang-romantis-111016.jpg'),
(4, 'Menikah', 'Dan pada akhirnya kaulah yang menjadi putri di hatiku dan pada hari ini aku akan menikah denganmu', 'pesona-citra-kirana-dan-rezky-aditya-di-akad-nikah-cerah-nan-elegan-3VfbMf4ata.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_wa`
--

CREATE TABLE `data_wa` (
  `ID_MSG` bigint(255) NOT NULL,
  `NO_WA` varchar(300) NOT NULL DEFAULT '',
  `FORMAT_WA` varchar(900) DEFAULT NULL,
  `ISI_WA` varchar(900) DEFAULT NULL,
  `TGL_INPUT` datetime DEFAULT NULL,
  `TGL_KIRIM` datetime DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `VAR_1` varchar(300) DEFAULT NULL,
  `VAR_2` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_wa`
--

INSERT INTO `data_wa` (`ID_MSG`, `NO_WA`, `FORMAT_WA`, `ISI_WA`, `TGL_INPUT`, `TGL_KIRIM`, `STATUS`, `VAR_1`, `VAR_2`) VALUES
(2147483736, '+6282120191493', '  Hallo [Var_1]', '  Hallo Angga Fantiyaaaa || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:00:48', '2020-06-11 19:01:31', 'SENT', 'Angga Fantiyaaaa', 'Padalarang'),
(2147483737, '+6281809121771', '  Hallo [Var_1]', '  Hallo Fantiya || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:01:11', '2020-06-11 19:01:32', 'SENT', 'Fantiya', 'Bandung Bagian Barat'),
(2147483738, '+6282120191493', '  Kepada YTH. [VAR_1], yang berada di [VAR_2] kami mengundang ke acara pernikahan kami yang dilaksanakan di Gedung Sasana Krida Unjani. Terima Kasih.', '  Kepada YTH. Fantiya, yang berada di Cimahi kami mengundang ke acara pernikahan kami yang dilaksanakan di Gedung Sasana Krida Unjani. Terima Kasih. || Untuk Info Lebih Lanjut Klik http://weddinginvitation.masuk.web.id/ || Pesan dikirim Oleh Wedding Invitation || Develop By Angga & Devi & Fandi || Tubes Tekweb', '2020-06-11 19:05:03', '2020-06-11 19:05:18', 'SENT', 'Fantiya', 'Cimahi'),
(2147483739, '+628123456789', NULL, NULL, '2021-11-22 09:38:50', NULL, NULL, 'Rakhmat', 'Malang'),
(2147483740, '+628123456789', NULL, NULL, '2021-11-22 09:49:31', NULL, NULL, 'Rakhmat D', 'Disini'),
(2147483741, '+628123456789', NULL, NULL, '2021-11-22 10:01:57', NULL, NULL, 'Rakhmat Dq', 'Jl Mujamil No 15, RT 01 RW 02'),
(2147483742, '+62912188812', NULL, NULL, '2021-11-22 10:39:54', NULL, NULL, 'Aik', 'Banyuwangi'),
(2147483743, '+62812991291', NULL, NULL, '2021-11-25 17:33:06', NULL, NULL, 'iqwbal', 'malang'),
(2147483744, '+628123456789', NULL, NULL, '2021-11-25 23:05:17', NULL, NULL, 'tress', 'Disini'),
(2147483745, '+628123456789', NULL, NULL, '2021-11-26 12:38:49', NULL, NULL, 'samid', 'Malang'),
(2147483746, '+628123456789', NULL, NULL, '2021-11-26 12:54:49', NULL, NULL, 'Rakhmat Dq', 'tanggerang'),
(2147483747, '+628123456789', NULL, NULL, '2021-11-26 12:56:05', NULL, NULL, 'Rakhmat D', 'Malang'),
(2147483748, '+628123456789', NULL, NULL, '2021-11-26 12:56:48', NULL, NULL, 'samidd', 'Malang');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `idGalery` int(11) NOT NULL,
  `judulPhoto` text NOT NULL,
  `namaFile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`idGalery`, `judulPhoto`, `namaFile`) VALUES
(18, 'Prewedding', 'sampel  4-173.jpg'),
(19, '', 'sampel  4-225 (1).jpg'),
(20, '', 'sampel  4-242 (1).jpg'),
(21, '', 'sampel  4-180.jpg'),
(23, '', 'sampel  4-198.jpg'),
(26, '', 'sampel  4-192 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `idPesan` int(11) NOT NULL,
  `namaPengirim` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`idPesan`, `namaPengirim`, `isi`) VALUES
(6, 'Angga', 'Semoga menjadi keluarga sakinah mawahdah warohmah'),
(7, 'Devi', 'Cepet punya anak yah'),
(8, 'Hermawan', 'Samawa Yah Kaka'),
(9, 'Angga', 'Semoga Menjadi Keluarga Yang Sakinah Mawadah Warohmah'),
(10, 'mid', 'tetet');

-- --------------------------------------------------------

--
-- Table structure for table `resepsi`
--

CREATE TABLE `resepsi` (
  `idResepsi` int(11) NOT NULL,
  `namaPria` varchar(30) NOT NULL,
  `namaWanita` varchar(30) NOT NULL,
  `tglResepsi` date NOT NULL,
  `jamResepsi` time NOT NULL,
  `alamatResepsi` text NOT NULL,
  `namaGedung` text NOT NULL,
  `fileGambar` text NOT NULL,
  `gambarGedung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resepsi`
--

INSERT INTO `resepsi` (`idResepsi`, `namaPria`, `namaWanita`, `tglResepsi`, `jamResepsi`, `alamatResepsi`, `namaGedung`, `fileGambar`, `gambarGedung`) VALUES
(1, 'Farhandinka', 'Maycindi', '2021-12-07', '16:00:22', 'Jl. Pangestu no. 11 RT 31 RW 12, Tlasih, Kepuharjo Kecamatan Karangploso', 'Rumah Mempelai Wanita', 'Untitled-1.jpg', 'gedung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `idSambutan` int(11) NOT NULL,
  `pembukaSambutan` text NOT NULL,
  `isiSambutan` text NOT NULL,
  `penutupSambutan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`idSambutan`, `pembukaSambutan`, `isiSambutan`, `penutupSambutan`) VALUES
(1, 'Assalamualaikum Wr. Wb', 'Dengan Nama Allah Yang Maha Pengasih lagi Maha Penyayang. Kami dengan senang hati mengumumkan pernikahan kami kepada Anda, keluarga dan teman-teman kami', 'Sekian dari saya, kurang lebihnya mohon maaf. Atas perhatiannya saya ucapkan terima kasih. Wassalamualaikum Wr. Wb.');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `idSosmed` int(11) NOT NULL,
  `ig` text NOT NULL,
  `twitter` text NOT NULL,
  `fb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`idSosmed`, `ig`, `twitter`, `fb`) VALUES
(1, 'https://www.instagram.com/mycodingxd', 'https://twitter.com/mycodingxd', 'https://www.facebook.com/mycodingxd');

-- --------------------------------------------------------

--
-- Table structure for table `tamuundangan`
--

CREATE TABLE `tamuundangan` (
  `idTamu` int(11) NOT NULL,
  `nama` varchar(90) NOT NULL,
  `noTelp` varchar(14) NOT NULL,
  `alamat` text NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamuundangan`
--

INSERT INTO `tamuundangan` (`idTamu`, `nama`, `noTelp`, `alamat`, `action`) VALUES
(59, 'Angga Fantiya Hermawan', '+6289640065487', 'Padalarang', ''),
(74, 'Devi Fajar Wati', '+6262628584621', 'Majalengka', ''),
(78, 'Fandi Adi Prasetyo', '+6285233715185', 'Cimahi', ''),
(79, 'Angga', '+6289640065487', 'Bandung Barat Bagian barat', ''),
(80, 'Angga Fantiya Hermawan .S.kom', '+6289640065487', 'Padalarang', ''),
(82, 'Angga', '+6282120191493', 'Padalarang', ''),
(83, 'Devi', '+6283804285842', 'Majalengka', ''),
(92, 'Ang', '+6282120191493', 'cs', ''),
(93, 'Angga', '+6282120191493', 'Coba', ''),
(101, 'Angga Fantiyaaaa', '+6282120191493', 'Padalarang', ''),
(102, 'Fantiya', '+6281809121771', 'Bandung Bagian Barat', ''),
(103, 'Fantiya', '+6282120191493', 'Cimahi', ''),
(104, 'Rakhmat', '+6262812345678', 'tanggerang', ''),
(105, 'Rakhmat D', '+6262812345678', 'Disini', 'datang'),
(106, 'Rakhmat Dq', '+628123456789', 'Jl Mujamil No 15, RT 01 RW 02', 'datang'),
(107, 'Aik', '+62912188812', 'Banyuwangi', 'daatng'),
(108, 'iqwbal', '+62812991291', 'malang', 'datang'),
(109, 'tress', '+628123456789', 'Disini', 'datang'),
(110, 'samid', '+628123456789', 'Malang', 'Hadir'),
(111, 'Rakhmat Dq', '+628123456789', 'tanggerang', 'Tidak Hadir'),
(112, 'Rakhmat D', '+628123456789', 'Malang', 'Hadir'),
(113, 'samidd', '+628123456789', 'Malang', 'Hadir');

--
-- Triggers `tamuundangan`
--
DELIMITER $$
CREATE TRIGGER `insertDataWa` AFTER INSERT ON `tamuundangan` FOR EACH ROW INSERT INTO data_wa 
SET
NO_WA = NEW.noTelp,
TGL_INPUT = CURRENT_TIMESTAMP(),
VAR_1 = NEW.nama,
VAR_2 = NEW.alamat
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenisKelamin` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `noTelp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `nama`, `jenisKelamin`, `alamat`, `noTelp`, `email`, `password`) VALUES
(1, 'Admin', 'L', 'Padang', '085361273485', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adat`
--
ALTER TABLE `adat`
  ADD PRIMARY KEY (`idAdat`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`idCerita`);

--
-- Indexes for table `data_wa`
--
ALTER TABLE `data_wa`
  ADD PRIMARY KEY (`ID_MSG`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`idGalery`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idPesan`);

--
-- Indexes for table `resepsi`
--
ALTER TABLE `resepsi`
  ADD PRIMARY KEY (`idResepsi`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`idSambutan`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`idSosmed`);

--
-- Indexes for table `tamuundangan`
--
ALTER TABLE `tamuundangan`
  ADD PRIMARY KEY (`idTamu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adat`
--
ALTER TABLE `adat`
  MODIFY `idAdat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `idCerita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_wa`
--
ALTER TABLE `data_wa`
  MODIFY `ID_MSG` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483749;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `idGalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `idPesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resepsi`
--
ALTER TABLE `resepsi`
  MODIFY `idResepsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `idSambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `idSosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tamuundangan`
--
ALTER TABLE `tamuundangan`
  MODIFY `idTamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
