-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 03:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `id_booking`, `id_buku`) VALUES
(1, '05052020001', 5),
(2, '05052020001', 2),
(3, '05052020001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 5, 1, 2, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 4, 5, 0, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 4, 1, 2, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 5, 0, 0, 'img1557404775.jpg'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 5, 0, 0, 'img1557404853.jpg'),
(22, 'Bulan', 10, 'Tere Liye', 'Gramedia Pustaka Utama', 2015, '9786020301129', 20, 0, 0, 'img1673790581.jpeg'),
(23, 'Matahari', 10, 'Tere Liye', 'Gramedia Pustaka Utama', 2015, '9786020332116', 22, 0, 0, 'img1673790665.jpeg'),
(24, 'Pendidikan Jasmani Olahraga Dan Kesehatan', 11, 'Hardiyanto', 'Gramedia Pustaka Utama', 2023, '9786023584307', 21, 0, 0, 'img1673790858.png'),
(25, 'Anak Sekolah Buat Pantun', 13, 'Ahmad Basyuni Lubis', 'penerbitmitragrup', 2019, '9786029414288', 30, 0, 0, ''),
(26, 'Guru Patimpus Kesatria Pendiri Madan', 15, 'Sahril', 'penerbitmitragrup', 2016, '9786022456506', 26, 0, 0, ''),
(27, 'Asal Mula Tanjung Sari', 14, 'Farizal Nasution', 'penerbitmitragrup', 2012, '9786022450863', 34, 0, 0, ''),
(28, 'Lelaki Di Nada Minor', 10, 'Drs.Tunggul Simamora', 'penerbitmitragrup', 2016, '9786022454533', 31, 0, 0, ''),
(29, 'Tumbuhan', 16, 'Herry Kristoni', 'PT.REMAJAROSDAKARYA', 2009, '9796929619', 34, 0, 0, 'img1673791667.jpg'),
(30, 'Vertebrata', 16, 'Tamara Nur Mutiah', 'PT.REMAJAROSDAKARYA', 2009, '9796929554', 21, 0, 0, 'img1673791745.jpg'),
(31, 'Predator', 16, 'Tamara Nur Mutiah', 'PT.REMAJAROSDAKARYA', 2010, '9796929643', 23, 0, 0, 'img1673791854.jpg'),
(32, 'Mamalia', 16, 'Sari Pusparini Soleh', 'PT.REMAJAROSDAKARYA', 2009, '9796929526', 26, 0, 0, 'img1673791982.jpg'),
(33, 'Hutan Hujan Tropis', 16, 'M. Yusuf Zulfikar', 'penerbitmitragrup', 2010, '9789796920099', 14, 0, 0, 'img1673792092.jpg'),
(34, 'Jamur', 16, 'Herry Kristoni', 'PT.REMAJAROSDAKARYA', 2010, '9789796920044', 12, 0, 0, 'img1673792165.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('19052020001', 2, 5000),
('19052020002', 2, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Novel'),
(11, 'Jasmani'),
(13, 'Pantun'),
(14, 'Cerita Rakyat'),
(15, 'Sejarah'),
(16, 'Ensiklopedia');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Utility'),
(5, 'Buku'),
(6, 'Anggota'),
(7, 'Laporan');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') CHARACTER SET utf8mb4 NOT NULL,
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('19052020001', '2020-05-19', '19052020001', 22, '2020-05-22', '0000-00-00', 'Pinjam', 0),
('19052020002', '2020-05-19', '19052020001', 23, '2020-05-22', '0000-00-00', 'Pinjam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Imam Nawawi', '', 'imam.imw@gmail.com', 'default.jpg', '202cb962ac59075b964b07152d234b70', 2, 1, 1554218983),
(2, 'juki', '', 'juki33@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(3, 'Inui', 'Shibuya', 'inui@gmail.com', 'default.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 2, 1, 1554219788),
(4, 'Hanagaki Takemichi', 'Tokyo', 'hanagaki@gmail.com', 'pro1557648081.jpg', '$2y$10$237zpGsuPlkDaH0z0kMhKOcP.1pmMx8cxrUXGgh2ErFPQZ5Eb8p72', 2, 1, 1557609676),
(5, 'Hannma Shuji', 'Tokyo', 'Shujihannma@gmail.com', 'default.jpg', '$2y$10$pVXQd4Hs4yrtWjIjhyngge2tsG5nWbL.B956XbElPOM0Q0EsSip.a', 2, 1, 1563868032),
(6, 'Andriansah', '', 'andriansah@gmail.com', 'default.jpg', '$2y$10$perspnO9EwfN24C1UnIlVuJl9WfZazMq.KynnKNcTdqprkVSfcmiC', 2, 1, 1563868080),
(7, 'Imam Khotib', '', 'imamkhotib0@gmail.com', 'default.jpg', '$2y$10$G6Z.Bq1htczywNfgmC0Ti.WTidif/a7ztpgMOyj1r7v6UWJzDSOmW', 2, 1, 1564436443),
(8, 'mutiara', '', 'mutiarahmap20@gmail.com', 'default.jpg', '$2y$10$0u8p/r9zvGx0I2bfc0JQL.QTL27LU.QH8cWaUwWknepOoIep7o45O', 2, 1, 1584608443),
(9, 'Anton', 'warureja', 'antonn@gmail.com', 'default.jpg', '123', 2, 1, 1),
(10, 'Novi', 'Jl. Cinta Sejati', 'ss@gmail.com', 'default.jpg', '$2y$10$R4glmP01mz1wEhx9et8X7Om7U99LCMX3Z65FYu60hTaYq9fH5SBsG', 2, 1, 1589889628),
(11, 'Muhammad Rafly', 'Jl. Cinta Sejati', 'Rafly@gmail.com', 'default.jpg', '$2y$10$UZNz39NeFyjkskY/gxDf3elY49WTkO3/J0typZ3e2HiAQtuxGo/56', 2, 1, 1589891581),
(12, 'Muhamad Gunawan', 'wangandawa', 'gunawantegal3@gmail.com', 'pro1626626565.jpg', '$2y$10$rIdTq/qWmzl.rztsGhSv0OFR45aTKcXNCM19vp3EqqnHtRtHWlgD6', 2, 1, 1626625497),
(13, 'Firdha Ilmianita', 'Tegal', 'Firdha12@gmail.com', 'default.jpg', '$2y$10$u4jIewhrLWSaqklhLGkzneBm6GrNXAX5WpPv17S4RQXKihR9pX6nW', 2, 1, 0),
(14, 'yulianto', 'Tegal', 'yulianto@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 1, 1, 1563868032),
(15, 'bagas', 'Tegal', 'bagas@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(16, 'cadis', 'Seul', 'cadis@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(17, 'dani', 'Slawi', 'dani@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(18, 'sari', 'Tegal', 'roti@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(19, 'wati', 'Bandung', 'ronaldo@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(20, 'kiki', 'Pekalongan', 'kaka@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(21, 'Mentari', 'Tegal', 'tari@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(22, 'sumi', 'Jatilawang', 'sumi1@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(23, 'sarikato', 'Semarang', 'skato@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(24, 'tika', 'Tegal', 'tikaaa@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(25, 'nana', 'Slawi', 'nanaaa@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(26, 'tejo', 'Tegal', 'tejo21@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(27, 'zaki', 'Guci', 'zaki@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(28, 'joko', 'brebes', 'kojo22@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(29, 'Galuh', 'Slawi', 'galuh@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(30, 'farah', 'Slawi', 'far11@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(31, 'Husni', 'Slawi', 'husni@gmail.com', 'default.jpg', '$2y$10$vqKCZNZZAcnomADQpzy7eea/IlgDjTViAZ1HBe8/9qTb0EA/rvvaO', 2, 1, 0),
(38, 'Jumanah', 'Tegal', 'jum@gmail.com', 'default.jpg', '$2y$10$O84Kpe/TvcMTE8wvd8TB..yHhpH2lVNFnRDDoM.m.BIa9VVJLTYc6', 2, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
