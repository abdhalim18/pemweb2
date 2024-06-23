-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Menguasai React JS', 'menguasai-react-js', 'Rohi Abdulloh', 'Self Publishing', 'buku1.jpg', '0000-00-00 00:00:00', '2024-06-17 14:50:19'),
(2, 'Learn JavaScript', 'Learn_JavaScript', 'Engin Arslan', 'Apress', 'buku2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Buku Sakti HTML, CSS & JS', 'buku-sakti-html-css-js', 'Adam Saputra', 'Star up', 'buku3.jpg', '2024-06-09 14:56:20', '2024-06-09 15:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-06-17-145421', 'App\\Database\\Migrations\\Penulis', 'default', 'App', 1718636186, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ajeng Oliva Lailasari', 'Ds. Bakin No. 246, Malang 90379, NTT', 'maryati.alika@kusmawati.co.id', '(+62) 804 4247 ', '1986-01-11 05:18:35', '2024-06-17 15:00:27'),
(2, 'Cengkal Caturangga Prakasa', 'Dk. Suryo No. 505, Bandung 35843, Sumsel', 'jpermata@mayasari.sch.id', '(+62) 20 0092 6', '2014-07-13 09:11:58', '2024-06-17 15:00:27'),
(3, 'Ulya Janet Nuraini S.E.I', 'Jln. Sutarto No. 291, Probolinggo 38510, Kepri', 'zdabukke@riyanti.net', '0835 933 313', '2020-05-29 04:31:45', '2024-06-17 15:00:27'),
(4, 'Puji Usamah', 'Ki. Sumpah Pemuda No. 42, Bogor 96482, Gorontalo', 'amaryadi@yahoo.co.id', '(+62) 577 0203 ', '2008-09-05 02:23:27', '2024-06-17 15:00:27'),
(5, 'Maryadi Rajasa', 'Kpg. Orang No. 484, Bandung 21458, Sulut', 'xsaptono@wibisono.sch.id', '027 7705 2826', '2020-03-15 15:07:19', '2024-06-17 15:00:27'),
(6, 'Halima Pudjiastuti', 'Jln. Pasir Koja No. 344, Mojokerto 84185, Jateng', 'prasetya.hutagalung@pangestu.org', '0709 0628 0191', '2010-11-18 05:08:17', '2024-06-17 15:00:27'),
(7, 'Gantar Wasita M.M.', 'Psr. Salatiga No. 319, Bima 59476, Jambi', 'puji04@gmail.com', '0929 0293 065', '1985-09-21 18:05:13', '2024-06-17 15:00:27'),
(8, 'Tina Agustina', 'Ki. M.T. Haryono No. 735, Bima 71842, DKI', 'zizi88@pradana.web.id', '0421 7970 7233', '2006-11-28 22:31:46', '2024-06-17 15:00:27'),
(9, 'Bakianto Jefri Wacana', 'Ki. Yohanes No. 644, Bandung 64489, Kaltara', 'laksmiwati.ella@gmail.co.id', '0421 4206 9989', '2002-10-01 15:39:15', '2024-06-17 15:00:27'),
(10, 'Candrakanta Hutapea', 'Kpg. Basoka Raya No. 834, Bau-Bau 37755, Banten', 'tira.farida@gmail.com', '(+62) 763 3600 ', '1996-06-25 12:08:09', '2024-06-17 15:00:28'),
(11, 'Nabila Puspasari', 'Psr. Juanda No. 831, Lubuklinggau 72693, Gorontalo', 'halimah.titi@padmasari.net', '020 4351 3453', '1987-01-17 05:11:10', '2024-06-17 15:00:28'),
(12, 'Prasetyo Jailani', 'Ki. Jaksa No. 911, Administrasi Jakarta Utara 88882, Bali', 'hartati.raditya@irawan.id', '(+62) 647 8051 ', '1980-08-31 04:50:51', '2024-06-17 15:00:28'),
(13, 'Yosef Haryanto S.IP', 'Ds. Tentara Pelajar No. 474, Denpasar 26215, Sulut', 'flaksita@wastuti.mil.id', '(+62) 710 2438 ', '1992-03-03 08:10:31', '2024-06-17 15:00:28'),
(14, 'Viktor Sitorus M.Farm', 'Dk. Moch. Toha No. 620, Surabaya 48038, Sulbar', 'nwidiastuti@yolanda.biz', '(+62) 815 861 5', '2000-07-01 09:37:22', '2024-06-17 15:00:28'),
(15, 'Cawisadi Siregar', 'Psr. Gardujati No. 991, Administrasi Jakarta Selatan 45450, Papua', 'titin.kurniawan@sihombing.web.id', '(+62) 651 6795 ', '1970-09-04 23:57:44', '2024-06-17 15:00:28'),
(16, 'Karna Kuswoyo', 'Psr. Salatiga No. 401, Sungai Penuh 71975, Bali', 'saadat06@tamba.sch.id', '0466 1961 4567', '2023-06-29 07:31:44', '2024-06-17 15:00:28'),
(17, 'Rahmi Keisha Yulianti', 'Kpg. Kyai Mojo No. 424, Tanjungbalai 95187, NTT', 'galur05@yahoo.co.id', '0223 1555 830', '1998-08-12 10:27:13', '2024-06-17 15:00:28'),
(18, 'Tri Kurniawan', 'Ki. Flora No. 323, Sibolga 53093, Sumut', 'banara57@halim.biz', '0593 8338 7406', '1999-09-26 00:22:00', '2024-06-17 15:00:28'),
(19, 'Darsirah Hutapea', 'Gg. Raden Saleh No. 15, Cirebon 28205, Kalteng', 'salsabila.usada@halimah.net', '(+62) 451 1595 ', '2011-07-13 16:36:38', '2024-06-17 15:00:28'),
(20, 'Hardi Harjaya Pranowo S.Pt', 'Gg. Wahidin Sudirohusodo No. 776, Malang 15530, Sumut', 'kamila18@dabukke.my.id', '0380 8120 9609', '1997-05-24 12:42:32', '2024-06-17 15:00:28'),
(21, 'Bakiono Gada Waluyo M.Kom.', 'Dk. Raden Saleh No. 885, Administrasi Jakarta Selatan 32866, Jateng', 'hasna.pratiwi@yahoo.com', '(+62) 968 9773 ', '2013-10-18 15:11:42', '2024-06-17 15:00:28'),
(22, 'Daru Iswahyudi M.M.', 'Jln. Achmad No. 586, Pangkal Pinang 47883, Maluku', 'psiregar@fujiati.co.id', '(+62) 683 6686 ', '1975-01-25 10:18:29', '2024-06-17 15:00:28'),
(23, 'Upik Daruna Suwarno', 'Gg. Setia Budi No. 374, Denpasar 65170, Aceh', 'wardaya48@yuniar.or.id', '(+62) 368 6098 ', '1973-12-08 20:04:24', '2024-06-17 15:00:28'),
(24, 'Queen Nurdiyanti', 'Ds. Babadan No. 733, Makassar 74893, DKI', 'aprasetyo@yahoo.com', '(+62) 957 1922 ', '1977-07-03 07:01:49', '2024-06-17 15:00:28'),
(25, 'Rusman Narpati M.TI.', 'Dk. Bazuka Raya No. 609, Banjar 79656, Babel', 'ooktaviani@yahoo.com', '(+62) 763 4666 ', '2022-05-23 12:38:19', '2024-06-17 15:00:29'),
(26, 'Kayla Handayani', 'Ds. Abdul Muis No. 701, Bogor 56912, Sumbar', 'mlaksmiwati@gmail.co.id', '0815 0462 8588', '2016-03-01 12:09:59', '2024-06-17 15:00:29'),
(27, 'Ibrani Mangunsong', 'Jr. Industri No. 690, Tangerang 87466, Jateng', 'purnawati.darmana@habibi.mil.id', '0876 6309 862', '2000-10-05 00:40:09', '2024-06-17 15:00:29'),
(28, 'Emin Suwarno', 'Dk. Dahlia No. 453, Madiun 97976, Babel', 'ade03@yahoo.co.id', '(+62) 601 5181 ', '1992-11-09 13:14:16', '2024-06-17 15:00:29'),
(29, 'Kairav Sihombing M.TI.', 'Dk. Abdullah No. 446, Gorontalo 72254, Riau', 'victoria08@gmail.com', '023 1494 1087', '1973-10-18 12:43:40', '2024-06-17 15:00:29'),
(30, 'Martana Marpaung S.T.', 'Ki. Pasteur No. 521, Mojokerto 49665, Sumut', 'fnurdiyanti@astuti.ac.id', '(+62) 202 9604 ', '1971-04-25 06:54:38', '2024-06-17 15:00:29'),
(31, 'Banara Mangunsong', 'Kpg. Ahmad Dahlan No. 987, Sawahlunto 75552, Bengkulu', 'haryanti.sabar@yahoo.com', '0622 2257 7308', '2015-07-31 11:15:09', '2024-06-17 15:00:29'),
(32, 'Vivi Maimunah Wijayanti', 'Jln. Tubagus Ismail No. 739, Bandar Lampung 80917, Sumbar', 'dpratiwi@maheswara.co', '0746 4522 378', '1973-06-06 02:09:26', '2024-06-17 15:00:29'),
(33, 'Cakrawangsa Balidin Prabowo S.Psi', 'Dk. Nanas No. 283, Administrasi Jakarta Timur 81483, Sumbar', 'daru.puspasari@winarsih.id', '(+62) 581 1075 ', '1995-02-20 03:59:30', '2024-06-17 15:00:29'),
(34, 'Fitriani Laksmiwati', 'Dk. Imam No. 219, Subulussalam 33106, Jabar', 'nurdiyanti.unggul@yuliarti.web.id', '0642 1939 076', '2016-08-16 07:21:52', '2024-06-17 15:00:29'),
(35, 'Usyi Nova Puspasari', 'Ki. R.E. Martadinata No. 864, Madiun 87813, Sumut', 'pangestu.estiawan@prasasta.biz.id', '(+62) 607 6655 ', '2012-04-29 00:20:46', '2024-06-17 15:00:29'),
(36, 'Viman Kurniawan', 'Jr. Yap Tjwan Bing No. 967, Prabumulih 72915, Pabar', 'fwidiastuti@siregar.desa.id', '0603 4888 077', '1995-05-24 18:41:40', '2024-06-17 15:00:29'),
(37, 'Laras Yulianti', 'Dk. Pelajar Pejuang 45 No. 267, Mojokerto 23983, Sulbar', 'jbudiyanto@maryadi.biz', '0341 9563 991', '1978-05-25 00:16:26', '2024-06-17 15:00:29'),
(38, 'Sadina Hastuti', 'Ki. Pintu Besar Selatan No. 323, Singkawang 25967, DKI', 'riyanti.naradi@gmail.com', '(+62) 681 1678 ', '1991-11-29 17:47:43', '2024-06-17 15:00:29'),
(39, 'Ani Permata', 'Jln. PHH. Mustofa No. 441, Medan 84077, Sumut', 'wirda.haryanti@usamah.biz', '(+62) 526 7744 ', '2008-07-04 19:26:21', '2024-06-17 15:00:29'),
(40, 'Bagas Dongoran', 'Psr. Ekonomi No. 387, Pekanbaru 22598, Malut', 'hasna.wibowo@puspita.co.id', '0335 4832 704', '1978-10-19 13:40:25', '2024-06-17 15:00:29'),
(41, 'Muhammad Sihombing', 'Kpg. Bakau Griya Utama No. 92, Mataram 38036, Sumbar', 'slamet00@yahoo.co.id', '0266 4867 4804', '1974-07-07 01:22:00', '2024-06-17 15:00:29'),
(42, 'Tiara Zulaika', 'Jln. Kalimalang No. 690, Jambi 26178, Bengkulu', 'saragih.prasetya@novitasari.ac.id', '(+62) 772 3455 ', '1999-02-03 04:25:40', '2024-06-17 15:00:30'),
(43, 'Bala Januar', 'Jln. Basoka No. 439, Mataram 53877, Kalbar', 'dwi71@gmail.com', '0424 2692 699', '1989-03-22 00:29:51', '2024-06-17 15:00:30'),
(44, 'Ade Purnawati', 'Dk. Baiduri No. 490, Tebing Tinggi 10549, DIY', 'hsinaga@gmail.com', '(+62) 803 327 9', '2007-09-13 05:47:14', '2024-06-17 15:00:30'),
(45, 'Queen Usada', 'Gg. Basket No. 564, Serang 65924, Aceh', 'khartati@permadi.ac.id', '(+62) 705 0722 ', '1973-12-27 21:47:28', '2024-06-17 15:00:30'),
(46, 'Maimunah Wulandari', 'Psr. Bambu No. 72, Ternate 14141, Sumbar', 'ina09@yahoo.com', '0900 6870 7561', '2019-11-11 07:31:00', '2024-06-17 15:00:30'),
(47, 'Rina Yessi Hastuti', 'Gg. Orang No. 525, Tasikmalaya 55189, Lampung', 'budiyanto.yulia@widiastuti.asia', '0828 4814 2987', '2018-09-16 02:06:41', '2024-06-17 15:00:30'),
(48, 'Devi Dian Mayasari', 'Dk. Raden No. 879, Tomohon 30787, Maluku', 'saputra.martani@budiyanto.tv', '(+62) 689 2323 ', '1975-02-15 10:33:21', '2024-06-17 15:00:30'),
(49, 'Tantri Maryati', 'Psr. Sukabumi No. 181, Palopo 29545, Sulteng', 'niyaga.wibisono@mansur.net', '(+62) 397 6077 ', '1973-03-28 21:33:58', '2024-06-17 15:00:30'),
(50, 'Jayadi Reza Permadi S.E.', 'Ds. Raya Ujungberung No. 366, Solok 62051, Jateng', 'cwibowo@gmail.co.id', '(+62) 792 6500 ', '1976-12-24 21:36:35', '2024-06-17 15:00:30'),
(51, 'Dewi Purnawati', 'Jr. Katamso No. 687, Pagar Alam 75361, Babel', 'rahmawati.prabowo@gmail.com', '(+62) 933 9399 ', '2012-10-07 01:42:20', '2024-06-17 15:00:30'),
(52, 'Cager Hutapea M.M.', 'Ds. Ketandan No. 901, Pekanbaru 45706, Malut', 'panca50@maryadi.co', '(+62) 837 4357 ', '2001-12-02 00:53:51', '2024-06-17 15:00:30'),
(53, 'Saadat Wijaya S.E.I', 'Psr. Camar No. 145, Bukittinggi 21334, Kalteng', 'kusmawati.prima@prasasta.or.id', '(+62) 846 2408 ', '1987-08-09 01:37:14', '2024-06-17 15:00:30'),
(54, 'Karja Dabukke', 'Jr. Abdul. Muis No. 97, Administrasi Jakarta Barat 17110, Sumbar', 'asmianto.astuti@kurniawan.id', '020 9921 1861', '1997-10-18 07:31:46', '2024-06-17 15:00:30'),
(55, 'Maryanto Prayoga', 'Psr. Baranang Siang Indah No. 573, Mataram 74017, Maluku', 'faizah.sudiati@yahoo.co.id', '021 1994 954', '2001-03-10 22:35:37', '2024-06-17 15:00:30'),
(56, 'Gawati Hasanah', 'Psr. R.E. Martadinata No. 981, Bontang 90585, Kalbar', 'zulaika.gamblang@astuti.tv', '025 0325 1623', '1980-03-14 03:50:02', '2024-06-17 15:00:30'),
(57, 'Amalia Nuraini', 'Ds. Bayam No. 230, Samarinda 91958, Kalsel', 'kayla94@yuliarti.asia', '0482 0211 249', '2020-08-15 12:48:12', '2024-06-17 15:00:30'),
(58, 'Satya Mahendra M.Farm', 'Gg. Bakin No. 530, Mojokerto 59038, Maluku', 'mulyani.anastasia@mayasari.org', '0894 476 388', '1990-10-04 14:46:07', '2024-06-17 15:00:30'),
(59, 'Zizi Farah Novitasari', 'Jln. Baranangsiang No. 103, Administrasi Jakarta Utara 63631, Sulsel', 'thutasoit@yahoo.co.id', '(+62) 25 6840 3', '1994-09-04 00:54:35', '2024-06-17 15:00:31'),
(60, 'Hari Rudi Hidayanto', 'Jr. PHH. Mustofa No. 70, Subulussalam 78612, Kaltim', 'laksmiwati.patricia@gmail.co.id', '(+62) 445 6677 ', '2006-06-25 00:09:39', '2024-06-17 15:00:31'),
(61, 'Irwan Cakrabuana Uwais', 'Psr. Gajah Mada No. 686, Gorontalo 45558, DIY', 'zulaika.gamani@halimah.com', '0727 3953 613', '2017-04-05 14:22:12', '2024-06-17 15:00:31'),
(62, 'Jaya Megantara', 'Gg. Bagis Utama No. 288, Sibolga 42846, DIY', 'saragih.heryanto@yuniar.in', '0541 9895 5090', '1988-05-31 15:31:06', '2024-06-17 15:00:31'),
(63, 'Wani Yuliarti', 'Ki. Kiaracondong No. 517, Surakarta 98952, Sumut', 'cornelia.lazuardi@yahoo.co.id', '(+62) 818 9975 ', '1982-03-04 08:46:15', '2024-06-17 15:00:31'),
(64, 'Patricia Suryatmi', 'Psr. Moch. Toha No. 320, Subulussalam 40644, Bali', 'dnugroho@handayani.desa.id', '023 9861 267', '2003-10-24 21:06:27', '2024-06-17 15:00:31'),
(65, 'Artawan Tamba S.IP', 'Dk. Sutami No. 395, Palu 24293, Aceh', 'titin53@yahoo.com', '0744 8564 504', '2001-05-13 05:18:45', '2024-06-17 15:00:31'),
(66, 'Maya Kasiyah Uyainah S.E.', 'Gg. Jamika No. 588, Salatiga 59003, Sulteng', 'eluh.salahudin@yahoo.co.id', '0208 7874 4700', '1990-04-05 06:16:48', '2024-06-17 15:00:31'),
(67, 'Jagapati Haryanto', 'Ds. Gedebage Selatan No. 268, Sukabumi 14745, Bengkulu', 'ujailani@ramadan.co', '(+62) 299 2370 ', '2017-04-23 06:08:16', '2024-06-17 15:00:31'),
(68, 'Putri Puspasari', 'Ds. Sampangan No. 52, Yogyakarta 93366, Kalbar', 'kariman.firmansyah@yahoo.co.id', '0241 1979 9372', '1995-05-07 15:50:41', '2024-06-17 15:00:32'),
(69, 'Tirta Najmudin', 'Ki. Suprapto No. 33, Palembang 38384, Aceh', 'jyuliarti@yahoo.com', '(+62) 325 1385 ', '2012-01-11 20:10:05', '2024-06-17 15:00:32'),
(70, 'Ratih Mardhiyah', 'Ki. R.E. Martadinata No. 716, Cilegon 35826, Sumsel', 'rrahayu@gmail.com', '(+62) 604 2489 ', '1993-06-28 23:49:21', '2024-06-17 15:00:32'),
(71, 'Gading Situmorang', 'Ki. Wahid Hasyim No. 802, Administrasi Jakarta Timur 45208, Sumut', 'puspasari.kemba@laksita.or.id', '(+62) 661 4951 ', '1985-10-16 12:25:53', '2024-06-17 15:00:32'),
(72, 'Rina Oktaviani', 'Jr. Achmad Yani No. 931, Banda Aceh 60982, Kaltim', 'tpudjiastuti@yahoo.com', '(+62) 746 1176 ', '1991-12-02 16:47:36', '2024-06-17 15:00:32'),
(73, 'Azalea Halima Mayasari', 'Gg. B.Agam Dlm No. 817, Banjar 45628, Gorontalo', 'mahdi.farida@winarno.com', '0256 2601 8030', '2015-03-29 02:17:46', '2024-06-17 15:00:32'),
(74, 'Mahmud Jono Tarihoran M.M.', 'Jln. Pasirkoja No. 196, Banda Aceh 88138, Bengkulu', 'nwinarsih@farida.mil.id', '0581 0588 459', '2007-12-08 09:19:40', '2024-06-17 15:00:32'),
(75, 'Mujur Daru Narpati', 'Kpg. Camar No. 33, Tidore Kepulauan 32268, DKI', 'ega.usamah@setiawan.org', '(+62) 222 9953 ', '1971-06-07 04:50:26', '2024-06-17 15:00:33'),
(76, 'Betania Halimah', 'Jr. Gatot Subroto No. 330, Gorontalo 33139, Malut', 'mandasari.karsa@zulaika.net', '(+62) 959 8659 ', '2011-04-17 04:04:11', '2024-06-17 15:00:33'),
(77, 'Lalita Winarsih M.Farm', 'Ki. Jaksa No. 60, Tarakan 41807, Banten', 'hsaefullah@marbun.biz', '(+62) 281 8577 ', '1975-08-27 22:53:23', '2024-06-17 15:00:33'),
(78, 'Cawisono Prakasa', 'Ds. Jakarta No. 940, Padangsidempuan 41469, Gorontalo', 'zizi.wahyuni@gmail.com', '0881 8643 7626', '2010-09-15 07:51:36', '2024-06-17 15:00:33'),
(79, 'Salwa Hani Usamah S.Pt', 'Ki. Ciwastra No. 563, Padangsidempuan 17651, Bali', 'pangestu.labuh@yahoo.com', '0829 0820 6478', '2001-07-07 07:26:51', '2024-06-17 15:00:33'),
(80, 'Raharja Gangsa Maulana', 'Jln. Sampangan No. 550, Banjar 57166, Babel', 'oktaviani.balijan@usada.mil.id', '0373 5121 9675', '1973-01-10 01:54:43', '2024-06-17 15:00:33'),
(81, 'Daru Budiyanto S.Psi', 'Ki. Yos No. 745, Medan 16651, Kaltara', 'mnovitasari@yahoo.com', '(+62) 389 8181 ', '1971-09-14 09:26:07', '2024-06-17 15:00:33'),
(82, 'Nasim Paiman Sitompul', 'Ds. Lumban Tobing No. 889, Tasikmalaya 39475, Sumbar', 'harsanto.zulkarnain@laksmiwati.info', '0538 7128 6254', '2018-12-19 21:36:20', '2024-06-17 15:00:33'),
(83, 'Vicky Handayani', 'Jr. Bakit  No. 571, Palembang 91580, Banten', 'ikusumo@widodo.web.id', '(+62) 232 0275 ', '2005-02-24 01:49:16', '2024-06-17 15:00:33'),
(84, 'Laila Salsabila Hassanah', 'Psr. Fajar No. 822, Bandung 27189, Bali', 'jati01@gmail.com', '(+62) 307 6987 ', '1983-07-17 21:29:11', '2024-06-17 15:00:33'),
(85, 'Tri Cagak Budiyanto', 'Gg. Sukajadi No. 186, Denpasar 67191, Jabar', 'nandriani@sitompul.co', '(+62) 769 5621 ', '1986-11-19 06:27:13', '2024-06-17 15:00:34'),
(86, 'Atmaja Gunarto', 'Psr. Panjaitan No. 494, Batu 64547, Sultra', 'gunarto.wardi@wijayanti.co', '0999 5857 5595', '2012-11-02 20:03:40', '2024-06-17 15:00:34'),
(87, 'Violet Ulya Lailasari', 'Kpg. Cemara No. 395, Pasuruan 78894, Babel', 'panca67@yahoo.co.id', '(+62) 959 1344 ', '1971-04-25 06:33:15', '2024-06-17 15:00:34'),
(88, 'Dagel Jailani', 'Kpg. Pasteur No. 557, Semarang 38803, Jatim', 'usamah.keisha@gmail.co.id', '0891 0304 7093', '2013-06-19 16:11:36', '2024-06-17 15:00:34'),
(89, 'Lala Utami S.E.I', 'Kpg. Urip Sumoharjo No. 849, Bima 42841, Bali', 'makara.mulyani@yahoo.com', '0847 5658 7818', '2007-07-22 20:11:25', '2024-06-17 15:00:34'),
(90, 'Gabriella Gabriella Rahmawati', 'Ki. Ters. Jakarta No. 761, Administrasi Jakarta Barat 49529, Sulteng', 'smardhiyah@suwarno.name', '0673 7831 7851', '1989-10-29 17:12:10', '2024-06-17 15:00:34'),
(91, 'Dina Wijayanti', 'Ki. Supomo No. 340, Surabaya 44878, Sulsel', 'diah89@mardhiyah.desa.id', '0718 3007 3760', '1988-06-13 07:42:55', '2024-06-17 15:00:34'),
(92, 'Harsana Adikara Winarno', 'Kpg. Laswi No. 752, Tangerang Selatan 22132, Lampung', 'titi21@permata.tv', '0748 2182 6762', '1974-02-07 11:43:40', '2024-06-17 15:00:34'),
(93, 'Karja Dongoran', 'Dk. Lada No. 959, Malang 93092, NTB', 'ganep.samosir@sitorus.co', '(+62) 27 1059 3', '1973-11-29 17:45:44', '2024-06-17 15:00:34'),
(94, 'Cornelia Uyainah', 'Dk. Bakau No. 388, Administrasi Jakarta Pusat 19654, Sulsel', 'iswahyudi.raden@yahoo.co.id', '(+62) 653 3378 ', '1987-05-10 11:14:08', '2024-06-17 15:00:34'),
(95, 'Kusuma Cakrabuana Prabowo', 'Ki. Suniaraja No. 266, Batam 24504, Maluku', 'zsusanti@yahoo.com', '(+62) 842 7681 ', '2010-02-01 19:46:49', '2024-06-17 15:00:34'),
(96, 'Tami Safitri', 'Ki. Juanda No. 863, Bukittinggi 98984, DKI', 'ynajmudin@halimah.mil.id', '(+62) 765 0618 ', '2001-12-27 21:06:18', '2024-06-17 15:00:34'),
(97, 'Queen Siska Sudiati S.Gz', 'Ki. Untung Suropati No. 304, Batam 70875, Pabar', 'halima.saputra@puspita.mil.id', '(+62) 786 3683 ', '2009-09-06 04:01:23', '2024-06-17 15:00:34'),
(98, 'Vino Sitorus S.Kom', 'Ds. Qrisdoren No. 701, Malang 67169, Bengkulu', 'bajragin99@yahoo.co.id', '(+62) 224 4049 ', '2003-07-04 20:53:40', '2024-06-17 15:00:35'),
(99, 'Prasetyo Sitorus', 'Jr. Baing No. 932, Tegal 82316, Sumbar', 'novitasari.nurul@yahoo.co.id', '0688 0314 730', '1990-05-10 16:39:22', '2024-06-17 15:00:35'),
(100, 'Ajiman Mustofa', 'Jln. Flores No. 728, Lhokseumawe 10637, NTB', 'vpermata@rahayu.name', '0247 3697 367', '2017-08-02 22:40:35', '2024-06-17 15:00:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
