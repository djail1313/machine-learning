-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2017 at 10:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machine_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `system_id`, `name`, `description`, `free`, `created_at`, `updated_at`) VALUES
(3, 2, 'Mata nyeri hebat', NULL, NULL, '2017-06-05 12:23:39', '2017-06-05 12:23:39'),
(4, 2, 'Mata menonjol', NULL, NULL, '2017-06-05 12:23:46', '2017-06-05 12:23:46'),
(5, 2, 'Penglihatan kabur', NULL, NULL, '2017-06-05 12:23:54', '2017-06-05 12:23:54'),
(6, 2, 'Peka terhadap cahaya', NULL, NULL, '2017-06-05 12:24:01', '2017-06-05 12:24:01'),
(7, 2, 'Mata merah', NULL, NULL, '2017-06-05 12:24:07', '2017-06-05 12:24:07'),
(8, 2, 'Mata berair', NULL, NULL, '2017-06-05 12:24:39', '2017-06-05 12:24:39'),
(9, 2, 'Mata perih', NULL, NULL, '2017-06-05 12:24:43', '2017-06-05 12:24:43'),
(10, 2, 'Mata gatal', NULL, NULL, '2017-06-05 12:24:49', '2017-06-05 12:24:49'),
(11, 2, 'Kelopak Mata membengkak', NULL, NULL, '2017-06-05 12:24:55', '2017-06-05 12:24:55'),
(12, 2, 'Mata ungu', NULL, NULL, '2017-06-05 12:25:02', '2017-06-05 12:25:02'),
(13, 2, 'Mata sakit', NULL, NULL, '2017-06-05 12:25:10', '2017-06-05 12:25:10'),
(14, 2, 'Air mata berlebihan', NULL, NULL, '2017-06-05 12:25:17', '2017-06-05 12:25:17'),
(15, 2, 'Mata tegang', NULL, NULL, '2017-06-05 12:25:24', '2017-06-05 12:25:24'),
(16, 2, 'Mata meradang', NULL, NULL, '2017-06-05 12:25:30', '2017-06-05 12:25:30'),
(17, 2, 'Mata kering', NULL, NULL, '2017-06-05 12:25:42', '2017-06-05 12:25:42'),
(18, 2, 'Mata iritasi', NULL, NULL, '2017-06-05 12:25:48', '2017-06-05 12:25:48'),
(19, 2, 'Mata nyeri bila ditekan', NULL, NULL, '2017-06-05 12:25:53', '2017-06-05 12:25:53'),
(20, 2, 'Demam', NULL, NULL, '2017-06-05 12:25:58', '2017-06-05 12:25:58'),
(21, 2, 'Menekan kedipan berlebihan', NULL, NULL, '2017-06-05 12:26:04', '2017-06-05 12:26:04'),
(22, 2, 'Sel batang retina sulit berdaptasi diruang yang remang-remang', NULL, NULL, '2017-06-05 12:26:12', '2017-06-05 12:26:12'),
(23, 2, 'Pada siang hari penglihatan menurun', NULL, NULL, '2017-06-05 12:26:21', '2017-06-05 12:26:21'),
(24, 2, 'Tidak dapat melihat pada lingkungan yang kurang bercahaya', NULL, NULL, '2017-06-05 12:26:27', '2017-06-05 12:26:27'),
(25, 2, 'Pergerakan mata terbatas', NULL, NULL, '2017-06-05 12:26:37', '2017-06-05 12:26:37'),
(26, 2, 'Mata tampak mengkilat', NULL, NULL, '2017-06-05 12:26:44', '2017-06-05 12:26:44'),
(27, 2, 'Bola mata membengkak dan tampak berkabut', NULL, NULL, '2017-06-05 12:27:17', '2017-06-05 12:27:17'),
(28, 2, 'Sumber cahaya akan berwarna pelangi bila memandang lampu neon', NULL, NULL, '2017-06-05 12:27:25', '2017-06-05 12:27:25'),
(29, 2, 'Penglihatan yang tadinya kabur lamakelamaan menjadi normal', NULL, NULL, '2017-06-05 12:27:31', '2017-06-05 12:27:31'),
(30, 2, 'Malam hari kesulitan melihat', NULL, NULL, '2017-06-05 12:27:41', '2017-06-05 12:27:41'),
(31, 2, 'Siang hari ketajaman mata menurun', NULL, NULL, '2017-06-05 12:27:48', '2017-06-05 12:27:48'),
(32, 2, 'Mata silau akan cahaya', NULL, NULL, '2017-06-05 12:27:53', '2017-06-05 12:27:53'),
(33, 2, 'Sering ganti kacamata', NULL, NULL, '2017-06-05 12:28:02', '2017-06-05 12:28:02'),
(34, 2, 'Penglihatan ganda pada salah satu sisi mata', NULL, NULL, '2017-06-05 12:28:14', '2017-06-05 12:28:14'),
(35, 2, 'Lensa mata membengkak', NULL, NULL, '2017-06-05 12:28:21', '2017-06-05 12:28:21'),
(36, 2, 'Berbentuk keropeng pada kelopak mata ketika bangun pada siang hari', NULL, NULL, '2017-06-05 12:28:28', '2017-06-05 12:28:28'),
(37, 2, 'Penglihatan menurun pada ruang gelap', NULL, NULL, '2017-06-05 12:28:35', '2017-06-05 12:28:35'),
(38, 2, 'Penglihatan menurun pada malam hari', NULL, NULL, '2017-06-05 12:28:40', '2017-06-05 12:28:40'),
(39, 2, 'Keluarnya cairan kotoran dari mata', NULL, NULL, '2017-06-05 12:28:45', '2017-06-05 12:28:45'),
(40, 2, 'Berbaliknya bulu mata', NULL, NULL, '2017-06-05 12:28:51', '2017-06-05 12:28:51'),
(41, 2, 'Pembengkakan kelenjar getah bening didepan telinga', NULL, NULL, '2017-06-05 12:28:56', '2017-06-05 12:28:56'),
(42, 2, 'Munculnya garis parutan pada kornea', NULL, NULL, '2017-06-05 12:29:03', '2017-06-05 12:29:03'),
(43, 2, 'Komplikasi pada,telinga,hidung dan tenggorokan', NULL, NULL, '2017-06-05 12:29:07', '2017-06-05 12:29:07'),
(44, 2, 'Mata mempersempit, perubahan bentuk', NULL, NULL, '2017-06-05 12:29:26', '2017-06-05 12:29:26'),
(45, 2, 'Benjolan pada mata bagian atas atau bawah', NULL, NULL, '2017-06-05 12:29:33', '2017-06-05 12:29:33'),
(46, 2, 'Gangguan penglihatan pada salah satu mata', NULL, NULL, '2017-06-05 12:29:39', '2017-06-05 12:29:39'),
(47, 2, 'Garis mata lurus terlihat bergelombang', NULL, NULL, '2017-06-05 12:29:46', '2017-06-05 12:29:46'),
(48, 2, 'Mata tidak nyeri', NULL, NULL, '2017-06-05 12:29:52', '2017-06-05 12:29:52'),
(49, 2, 'Mata melihat melayang-layang', NULL, NULL, '2017-06-05 12:29:57', '2017-06-05 12:29:57'),
(50, 2, 'Mata melihat kilatan cahaya', NULL, NULL, '2017-06-05 12:30:03', '2017-06-05 12:30:03'),
(51, 2, 'Seperti ada benda asing di mata', NULL, NULL, '2017-06-05 12:30:09', '2017-06-05 12:30:09'),
(52, 2, 'Sakit kepala', NULL, NULL, '2017-06-05 12:30:17', '2017-06-05 12:30:17'),
(53, 2, 'Riwayat penyakit menular seksual pada ibu', NULL, NULL, '2017-06-05 12:30:22', '2017-06-05 12:30:22'),
(54, 2, 'Mata membengkak', NULL, NULL, '2017-06-05 12:30:27', '2017-06-05 12:30:27'),
(55, 3, 'Buah lunak', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(56, 3, 'Buah berair', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(57, 3, 'Buah berintik menonjol seperti kutil', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(58, 3, 'Bercak buah kecil berair', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(59, 3, 'Bercak buah seperti luka', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(60, 3, 'Bercak buah warna hijau muda', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(61, 3, 'Bercak buah warna hijau seperti terendam air panas', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(62, 3, 'nekrosis berbentuk cincin pada buah', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(63, 3, 'Buah lebih kecil ukurannya', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(64, 3, 'Bentuk buah menjadi abnormal', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(65, 3, 'Buah berbentuk warna putih ', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(66, 3, 'Garis-garis dan titik nekrosis pada buah', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(67, 3, 'Produksi buah lebih sedikit', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(68, 3, 'Terdapat pola mozaik di buah pada saat panen', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(69, 3, 'Produksi buah menurun', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(70, 3, 'Buah yang dihasilkan kecil ', 'Buah', NULL, '2017-06-06 08:19:59', '2017-06-06 08:19:59'),
(71, 3, 'Tampak bercak yang berbentuk cincin pada buah', 'Buah', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(72, 3, 'Buah berbentuk tidak normal', 'Buah', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(73, 3, 'Buah matang secara prematur', 'Buah', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(74, 3, 'Buah terdapat garis lurus ', 'Buah', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(75, 3, 'bercak buah nekrotik', 'Buah', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(76, 3, 'bercak daun  bentuk melingkar', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(77, 3, 'Daun layu', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(78, 3, 'Bercak daun berwarna kecoklatan', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(79, 3, 'Pucuk  Daun berwarna coklat', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(80, 3, 'Daun menguning', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(81, 3, 'Terdapat luka pada daun berbentuk lingkaran kecil diameter < 3mm dengan warna putih ditengahnya dan sekelilingnya gelap', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(82, 3, 'Daun muda mendadak gugur', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(83, 3, 'Daun warna hijau tua', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(84, 3, 'Bercak daun klorosis', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(85, 3, 'Daun berubah menjadi kuning', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(86, 3, 'daun warna kuning terang sampai putih', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(87, 3, 'Daun bercak berpola berwarna hijau gelap', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(88, 3, 'Daun hijau kusam seperti kulit', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(89, 3, 'Belang daun disertai dengan tulang daun yang lebih hijau ', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(90, 3, 'Garis-garis dan titik nekrosis pada daun', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(91, 3, 'Daun mejadi klorosis di sepanjang tulang daun utama', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(92, 3, 'Daun menjadi keriting ', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(93, 3, 'Tulang daun membesar', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(94, 3, 'Tepi daun yang tua menggulung ke atas ', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(95, 3, 'Tulang daun memucat', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(96, 3, 'Daun muncul mozaik', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(97, 3, 'Bercak klorotik yang berkembang menjadi mozaik ', 'Daun', NULL, '2017-06-06 08:20:00', '2017-06-06 08:20:00'),
(98, 3, 'Bagian tepi daun menjadi keriting mengarah ke atas seperti bentuk kapal', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(99, 3, 'Mozaik warna keemasan yang sangat terang pada daun', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(100, 3, 'Daun menjadi keriting  mengarah ke atas dengan warna kuning terang', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(101, 3, 'daun warna kuning', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(102, 3, 'Bercak daun berbentuk bulatan kecil', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(103, 3, 'Terdapat luka pada daun melebar berbentuk lingkaran', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(104, 3, 'Gugur daun', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(105, 3, 'Daun menjadi keriting ke atas', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(106, 3, 'ukuran daun mengecil ', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(107, 3, 'perubahan bentuk daun', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(108, 3, 'nekrosis pada jaringan daun', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(109, 3, 'daun muda menjadi keriting', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(110, 3, 'Daun menjadi kerdil', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(111, 3, 'Daun berbentuk cincin', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(112, 3, 'daun yang tumbuh di tepi menjadi hijau pucat-kuning terang', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(113, 3, 'Terdapat luka pada daun melebar tidak berbentuk ', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(114, 3, 'daun berbentuk abnormal', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(115, 3, 'Daun menjadi klorosis', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(116, 3, 'Daun menjadi klorosis sistematik disertai dengan nekrosis sistematik ', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(117, 3, 'Daun berbentuk tidak normal', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(118, 3, 'Daun belang', 'Daun', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(119, 3, 'Batang terlihat tak berwarna', 'Batang', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(120, 3, 'Batang berwarna perak abu-abu', 'Batang', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(121, 3, 'Bercak batang melebar', 'Batang', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(122, 3, 'Batang muda roboh', 'Batang', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(123, 3, 'Batang warna coklat tua', 'Batang', NULL, '2017-06-06 08:20:01', '2017-06-06 08:20:01'),
(124, 3, 'Jaringan pada pangkal batang berwarna coklat', 'Batang', NULL, '2017-06-06 08:20:02', '2017-06-06 08:20:02'),
(125, 3, 'Noda berwarna coklat pada jaringan pembuluh kayu', 'Batang', NULL, '2017-06-06 08:20:02', '2017-06-06 08:20:02'),
(126, 3, 'Garis-garis dan titik nekrosis pada batang', 'Batang', NULL, '2017-06-06 08:20:02', '2017-06-06 08:20:02'),
(127, 4, 'PPP', NULL, NULL, '2017-06-06 08:31:04', '2017-06-06 08:31:04'),
(128, 4, 'OOO', NULL, NULL, '2017-06-06 08:31:12', '2017-06-06 08:31:12'),
(129, 4, 'LLL', NULL, NULL, '2017-06-06 08:31:17', '2017-06-06 08:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `datasets`
--

CREATE TABLE `datasets` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `data_class_id` int(10) UNSIGNED DEFAULT NULL,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datasets`
--

INSERT INTO `datasets` (`id`, `system_id`, `data_class_id`, `free`, `created_at`, `updated_at`) VALUES
(9, 2, 3, NULL, '2017-06-05 12:31:27', '2017-06-05 12:31:27'),
(10, 2, 4, NULL, '2017-06-05 12:33:22', '2017-06-05 12:33:22'),
(11, 2, 5, NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(12, 2, 6, NULL, '2017-06-05 12:35:07', '2017-06-05 12:35:07'),
(13, 2, 7, NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(14, 2, 8, NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(15, 2, 9, NULL, '2017-06-05 12:38:48', '2017-06-05 12:38:48'),
(16, 2, 10, NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(17, 2, 11, NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(18, 2, 12, NULL, '2017-06-05 12:44:43', '2017-06-05 12:44:43'),
(19, 2, 13, NULL, '2017-06-05 12:45:11', '2017-06-05 12:45:11'),
(20, 2, 14, NULL, '2017-06-05 12:45:55', '2017-06-05 12:45:55'),
(21, 2, 15, NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(22, 2, 16, NULL, '2017-06-05 12:49:28', '2017-06-05 12:49:28'),
(23, 2, 17, NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(24, 4, 47, NULL, '2017-06-06 08:31:40', '2017-06-06 08:31:40'),
(25, 4, 48, NULL, '2017-06-06 08:31:51', '2017-06-06 08:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `data_classes`
--

CREATE TABLE `data_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_classes`
--

INSERT INTO `data_classes` (`id`, `system_id`, `name`, `description`, `free`, `created_at`, `updated_at`) VALUES
(3, 2, 'Xerophtalmania', NULL, NULL, '2017-06-05 12:21:00', '2017-06-05 12:21:00'),
(4, 2, 'Selulitis Orbitalitas', NULL, NULL, '2017-06-05 12:21:09', '2017-06-05 12:21:09'),
(5, 2, 'Glaukoma', NULL, NULL, '2017-06-05 12:21:16', '2017-06-05 12:21:16'),
(6, 2, 'Dakriosistitis', NULL, NULL, '2017-06-05 12:21:24', '2017-06-05 12:21:24'),
(7, 2, 'Katarak', NULL, NULL, '2017-06-05 12:21:29', '2017-06-05 12:21:29'),
(8, 2, 'Konjungtivitis', NULL, NULL, '2017-06-05 12:21:36', '2017-06-05 12:21:36'),
(9, 2, 'Retinitis Pigmentosa', NULL, NULL, '2017-06-05 12:21:50', '2017-06-05 12:21:50'),
(10, 2, 'Trakoma', NULL, NULL, '2017-06-05 12:21:56', '2017-06-05 12:21:56'),
(11, 2, 'Oveitis', NULL, NULL, '2017-06-05 12:22:04', '2017-06-05 12:22:04'),
(12, 2, 'Hordeolum', NULL, NULL, '2017-06-05 12:22:14', '2017-06-05 12:22:14'),
(13, 2, 'Degenerasi Makula', NULL, NULL, '2017-06-05 12:22:24', '2017-06-05 12:22:24'),
(14, 2, 'Ablasio Retina', NULL, NULL, '2017-06-05 12:22:31', '2017-06-05 12:22:31'),
(15, 2, 'Pterygium', NULL, NULL, '2017-06-05 12:22:37', '2017-06-05 12:22:37'),
(16, 2, 'Miopi', NULL, NULL, '2017-06-05 12:22:43', '2017-06-05 12:22:43'),
(17, 2, 'Oftalmia Neonatorium', NULL, NULL, '2017-06-05 12:22:56', '2017-06-05 12:22:56'),
(18, 3, 'Busuk Lunak (Erwinia carotovora pv. carotovora)', 'Busuk lunak bakteri merupakan penyakit yang terjadi pada waktu panen atau setelah panen. Pada musim penghujan, percikan air dari tanah ke buah dan kelembaban tinggi memicu terjadinya busuk lunak. Kerusakan akan berkurang bilamana panen dilakukan pada musim kemarau. Pencucian buah dapat dilakukan dengan larutan Khlor berdosis rendah dan buah harus segera dikeringkan.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(19, 3, 'Bercak Daun Bakteri (Xanthomonas campestris pv. Pesicatoria)', 'Penyakit busuk bercak ini terjadi pada cuaca lembab dan hangat, bakteri bersifat tular tanahdan dapat bertahan di tumpukan sampah daun diatas tanah. Pemilihan benih yang sehat dan sanitasi yang baik serta rotasi tanaman mampu mengurangi penyakt ini.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(20, 3, 'Layu Bakteri (Ralstonia solanacearum)', 'Bakteri layu pada cabai terjadi di daerah iklim tropis dan terutama di daerah dengan curah hujan cukup tinggi. Serangan penyakit ini dapat dikurangi dengan cara rotasi lahan dengan tanaman yang tidak tergolong dalam keluarga terung-terungan (non-solanaceous).', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(21, 3, 'Antraknosa (Colletotrichum gloeosporioides, C. capsici, C. acutatum, dan C. coccodes)', 'Penyakit ini telah menyebar luas di daerah-daerah pertanaman cabai yang kondisinya sangat lembab atau bercurah hujan tinggi. Buah cabai yang masih muda pun dapat terserang, tetapi umumnya gejala tidak terlalu nampak hingga cabai menjadi sangat matang dan warna cabai dapat menjadi merah merata. Tindakan untuk membersihkan (sanitasi) biji dan benih serta pergantian tanaman atau rotasi adalah bagian terpenting bagi pencegahan penyakit ini. Pemakaian fungisida yang tepat dan akurat dapat digunakan untuk mengurangi penyakit ini.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(22, 3, 'Bercak Daun Cercospora (Cercospora capsici)', 'Penyakit ini sangat umum dan dapat menyebabkan kerusakan yang parah pada saat musim hujan atau lembab. Fungisida dapat digunakan untuk mengendalikan penyakit ini sebelum penyakit berkembang lebih parah.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(23, 3, 'Hawar daun choanephora (Choanephora cucurditarum)', 'Penyakit ini menyebabkan kerusakan yang sangat parah pada pertumbuhan tanaman cabai selama musim hujan di daerah tropis.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(24, 3, 'Layu Fusarium (Fusarium oxysporum f. sp. Capsici)', 'Suhu tinggi dan keadaan tanah basah menjadi tempat yang sesuai untuk berkembangnya penyakit ini. Penyakit layu jenis ini lebih sering terjadi pada bagian lahan yang drainasenya tidak bagus. Tidak terdapat cukup informasi untuk membedakan layu fusarium dengan jenis penyakit lain yang disebabkan oleh fusarium.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(25, 3, 'Bercak daun abu-abu (Stemphylium solani)', 'Penyakit ini lebih merusak pada persemaian yang dapat menyebabkan gugur daun yang sangat nyata dan bercak yang melebar pada batang. Bercak pada batang menyebabkan tanaman menjadi rapuh dan tanaman mudah patah sesaat setelah dipindahkan ke lahan. Meskipun bercak-bercak pada daun dapat terlihat diberbagai tingkat pertumbuhan tanaman, pada umumnya jumlahnya tidak terlalu banyak dan tidak menyebabkan masalah sulit di lahan.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(26, 3, 'Kapang abu-abu (Botrytis cinerea)', 'Penyakit ini sangat menyukai lahan dengan curah hujan tinggi dan tingkat kelembaban tinggi. Busuk pasca panen oleh penyakit ini dimulai dari kerusakan pada buah selama penyimpanan pada suhu rendah.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(27, 3, 'Hawar daun Phytophthora (Phytophthora capsici)', 'Penyakit ini disebabkan oleh cendawan yang dapat bertahan hidup pada sisa-sisa tanaman inang, didalam tanah dan menginfeksi tanaman lain seperti mentimun, tomat dan terung. Daerah yang terinfeksi akan meluas oleh curah hujan yang cukup lama atau kelebihan pengairan. Cara mengatasinya dengan menanam cabai pada gundukan lahan yang tinggi, sistem pengairan yang baik dan penggunaan fungisida yang tepat.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(28, 3, 'Embun tepung (Leveillula taurica)', 'Penyakit ini mudah terjadi pada tanaman cabai yang berada pada iklim panas baik kering maupun lembab tetapi sangat jarang terjadi pada suhu dingin. Penggunaan fungisida yang tepat diperlukan untuk pengendalian penyakit dimana periode panyakit cukup besar.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(29, 3, 'Busuk pangkal akar (Sclerotium rolfsii)', 'Tersebar luas di daerah perikliman hangat. Tanah dengan tingkat kelembaban tinggi dan suhu panas sangat mendukung perkembangan penyakit ini. Pembajakan tanah secara dalam untuk mengubur sclerotia beserta sisa-sisa tanaman dan menunggu supaya sisa-sisa tanaman terurai sebelum penanaman ulang cabai dapat mengurangi penyakit ini. Pemberian fungisida pada tanah atau fumingan tertentu terbukti memberi keuntungan di beberapa daerah yang terserang penyakit ini.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(30, 3, 'Layu verticillium (Verticillium albo-atrum, v.dahliae)', 'Cendawan ini dapat bertahan hidup dalam jangka waktu yang lama tetapi bila lahan ditanami secara bergantian dengan tanaman yang tidak rentan selama 3-4 tahun akan sangat membantu mengendalikan keberadaan penyakit ini.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(31, 3, 'Virus mozaik alfalfa (ditularkan oleh kutu daun) ', 'Penyakit ini sering ditemukan pada tanaman cabai yang ditanam berdekatan dengan alfalfa, semangi atau jenis tanaman polong lainnya. Secara umum tidak dianggap menjadi ancaman besar bagi produksi cabai.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(32, 3, 'Virus belang tulang daun cabai (ditularkan oleh kutu daun)', 'Virus jenis ini pada umumnya menyerang tanaman golongan solanaceae atau terung-terungan', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(33, 3, 'Virus mozaik ketimun (Cucumovirus)', 'Serangan hebat seringkali terjadi bilamana pertanaman cabai berada dekat lahan tanaman yang rentan seperti ketimun, paria, melon dan labu.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(34, 3, 'Virus belang cabai (Potivirus)', 'Virus ini tampaknya hanya terbatas menyerang tanaman dari keluarga terung-terungan. Sering menginfeksi tanaman bersama-sama dengan virus-virus jenis lain pada cabai.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(35, 3, 'Virus mozaik parah cabai (Potivirus)', 'Satu-satunya spesies tanaman yang terserang secara sistematik ole penyakit ini adalah anggota keluarga terung-terungan.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(36, 3, 'Virus belang tulang daun paprika (Potivirus)', 'Virus ini juga menyebabkan penyakit pada tanaman tomat dan terung.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(37, 3, 'Virus y kentang (Potivirus)', '', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(38, 3, 'Virus etch tembakau (Potivirus)', '', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(39, 3, 'Virus keriting pucuk (Geminivirus)', 'Tanaman yang terinfeksi pada fase pertumbuhan ini biasanya tidak dapat bertahan.', NULL, '2017-06-06 08:19:04', '2017-06-06 08:19:04'),
(40, 3, 'Virus belang paprika', 'Tanaman yang terinfeksi pada stadium awal jelas akan mengalami kekerdilan.', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(41, 3, 'Virus belang ringan paprika', 'Salah satu tindakan untuk mengurangi penyakit ini biji cabai dapat direndam dalam 10% larutan trisodium fosfat selama 2 jam', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(42, 3, 'Virus mozaik tembakau', 'Untuk mengurangi virus infeksi penyakit ini biji cabai dapat direndam dalam 10% larutan trisodium fosfat selama 2 jam', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(43, 3, 'Virus layu dan bercak buah tomat (ditularkan oleh Thrips)', '', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(44, 3, 'Virus keriting cabai', 'Virus ini disebabkan oleh kutu kebul (Bemisia tabaci)', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(45, 3, 'Virus mozaik keemasan serrano', 'Di lapangan penularan dari tanaman ke tanaman cabai dapat terjadi secara mekanis', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(46, 3, 'Geminivirus cabai texas', '', NULL, '2017-06-06 08:19:05', '2017-06-06 08:19:05'),
(47, 4, 'A', NULL, NULL, '2017-06-06 08:30:26', '2017-06-06 08:30:26'),
(48, 4, 'B', NULL, NULL, '2017-06-06 08:30:31', '2017-06-06 08:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `matrix_datasets`
--

CREATE TABLE `matrix_datasets` (
  `id` int(10) UNSIGNED NOT NULL,
  `dataset_id` int(10) UNSIGNED NOT NULL,
  `data_class_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value` text,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrix_datasets`
--

INSERT INTO `matrix_datasets` (`id`, `dataset_id`, `data_class_id`, `attribute_id`, `value`, `free`, `created_at`, `updated_at`) VALUES
(13, 9, 3, 22, '1', NULL, '2017-06-05 12:31:27', '2017-06-05 12:31:27'),
(14, 9, 3, 23, '1', NULL, '2017-06-05 12:31:27', '2017-06-05 12:31:27'),
(15, 9, 3, 24, '1', NULL, '2017-06-05 12:31:27', '2017-06-05 12:31:27'),
(16, 10, 4, 3, '1', NULL, '2017-06-05 12:33:22', '2017-06-05 12:33:22'),
(17, 10, 4, 4, '1', NULL, '2017-06-05 12:33:22', '2017-06-05 12:33:22'),
(18, 10, 4, 25, '1', NULL, '2017-06-05 12:33:22', '2017-06-05 12:33:22'),
(19, 10, 4, 11, '1', NULL, '2017-06-05 12:33:22', '2017-06-05 12:33:22'),
(20, 10, 4, 26, '1', NULL, '2017-06-05 12:33:23', '2017-06-05 12:33:23'),
(21, 10, 4, 7, '1', NULL, '2017-06-05 12:33:23', '2017-06-05 12:33:23'),
(22, 10, 4, 12, '1', NULL, '2017-06-05 12:33:23', '2017-06-05 12:33:23'),
(23, 10, 4, 20, '1', NULL, '2017-06-05 12:33:23', '2017-06-05 12:33:23'),
(24, 10, 4, 27, '1', NULL, '2017-06-05 12:33:23', '2017-06-05 12:33:23'),
(25, 11, 5, 28, '1', NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(26, 11, 5, 13, '1', NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(27, 11, 5, 54, '1', NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(28, 11, 5, 29, '1', NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(29, 11, 5, 21, '1', NULL, '2017-06-05 12:34:26', '2017-06-05 12:34:26'),
(30, 12, 6, 14, '1', NULL, '2017-06-05 12:35:07', '2017-06-05 12:35:07'),
(31, 12, 6, 3, '1', NULL, '2017-06-05 12:35:07', '2017-06-05 12:35:07'),
(32, 12, 6, 54, '1', NULL, '2017-06-05 12:35:07', '2017-06-05 12:35:07'),
(33, 13, 7, 30, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(34, 13, 7, 23, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(35, 13, 7, 32, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(36, 13, 7, 33, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(37, 13, 7, 34, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(38, 13, 7, 3, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(39, 13, 7, 35, '1', NULL, '2017-06-05 12:36:27', '2017-06-05 12:36:27'),
(40, 14, 8, 8, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(41, 14, 8, 3, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(42, 14, 8, 10, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(43, 14, 8, 5, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(44, 14, 8, 6, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(45, 14, 8, 36, '1', NULL, '2017-06-05 12:37:37', '2017-06-05 12:37:37'),
(46, 15, 9, 37, '1', NULL, '2017-06-05 12:38:48', '2017-06-05 12:38:48'),
(47, 15, 9, 38, '1', NULL, '2017-06-05 12:38:48', '2017-06-05 12:38:48'),
(48, 15, 9, 11, '1', NULL, '2017-06-05 12:38:48', '2017-06-05 12:38:48'),
(49, 16, 10, 39, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(50, 16, 10, 11, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(51, 16, 10, 40, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(52, 16, 10, 41, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(53, 16, 10, 42, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(54, 16, 10, 43, '1', NULL, '2017-06-05 12:43:00', '2017-06-05 12:43:00'),
(55, 17, 11, 16, '1', NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(56, 17, 11, 8, '1', NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(57, 17, 11, 6, '1', NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(58, 17, 11, 44, '1', NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(59, 17, 11, 45, '1', NULL, '2017-06-05 12:44:04', '2017-06-05 12:44:04'),
(60, 18, 12, 7, '1', NULL, '2017-06-05 12:44:43', '2017-06-05 12:44:43'),
(61, 18, 12, 3, '1', NULL, '2017-06-05 12:44:43', '2017-06-05 12:44:43'),
(62, 18, 12, 8, '1', NULL, '2017-06-05 12:44:43', '2017-06-05 12:44:43'),
(63, 18, 12, 6, '1', NULL, '2017-06-05 12:44:43', '2017-06-05 12:44:43'),
(64, 19, 13, 46, '1', NULL, '2017-06-05 12:45:11', '2017-06-05 12:45:11'),
(65, 19, 13, 47, '1', NULL, '2017-06-05 12:45:11', '2017-06-05 12:45:11'),
(66, 19, 13, 48, '1', NULL, '2017-06-05 12:45:11', '2017-06-05 12:45:11'),
(67, 20, 14, 49, '1', NULL, '2017-06-05 12:45:55', '2017-06-05 12:45:55'),
(68, 20, 14, 50, '1', NULL, '2017-06-05 12:45:56', '2017-06-05 12:45:56'),
(69, 20, 14, 5, '1', NULL, '2017-06-05 12:45:56', '2017-06-05 12:45:56'),
(70, 20, 14, 15, '1', NULL, '2017-06-05 12:45:56', '2017-06-05 12:45:56'),
(71, 21, 15, 45, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(72, 21, 15, 7, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(73, 21, 15, 18, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(74, 21, 15, 17, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(75, 21, 15, 8, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(76, 21, 15, 51, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(77, 21, 15, 5, '1', NULL, '2017-06-05 12:48:05', '2017-06-05 12:48:05'),
(78, 22, 16, 3, '1', NULL, '2017-06-05 12:49:28', '2017-06-05 12:49:28'),
(79, 22, 16, 9, '1', NULL, '2017-06-05 12:49:28', '2017-06-05 12:49:28'),
(80, 22, 16, 14, '1', NULL, '2017-06-05 12:49:28', '2017-06-05 12:49:28'),
(81, 22, 16, 52, '1', NULL, '2017-06-05 12:49:28', '2017-06-05 12:49:28'),
(82, 23, 17, 7, '1', NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(83, 23, 17, 11, '1', NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(84, 23, 17, 19, '1', NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(85, 23, 17, 53, '1', NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(86, 23, 17, 5, '1', NULL, '2017-06-05 12:50:40', '2017-06-05 12:50:40'),
(87, 24, 47, 127, '1', NULL, '2017-06-06 08:31:40', '2017-06-06 08:31:40'),
(88, 24, 47, 128, '1', NULL, '2017-06-06 08:31:40', '2017-06-06 08:31:40'),
(89, 25, 48, 128, '1', NULL, '2017-06-06 08:31:51', '2017-06-06 08:31:51'),
(90, 25, 48, 129, '1', NULL, '2017-06-06 08:31:51', '2017-06-06 08:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_05_001924_create_systems_table', 1),
(4, '2017_06_05_002309_create_data_classes_table', 1),
(5, '2017_06_05_002441_create_attributes_table', 1),
(6, '2017_06_05_003906_create_nb_conditional_probabilities_table', 1),
(7, '2017_06_05_112829_create_datasets_table', 1),
(8, '2017_06_05_113039_create_matrix_datasets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nb_conditional_probabilities`
--

CREATE TABLE `nb_conditional_probabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `data_class_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value` text,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nb_conditional_probabilities`
--

INSERT INTO `nb_conditional_probabilities` (`id`, `system_id`, `data_class_id`, `attribute_id`, `value`, `free`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 3, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(2, 2, 3, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(3, 2, 3, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(4, 2, 3, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(5, 2, 3, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(6, 2, 3, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(7, 2, 3, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:42', '2017-06-06 06:50:42'),
(8, 2, 3, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(9, 2, 3, 11, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(10, 2, 3, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(11, 2, 3, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(12, 2, 3, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(13, 2, 3, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(14, 2, 3, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(15, 2, 3, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(16, 2, 3, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(17, 2, 3, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(18, 2, 3, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(19, 2, 3, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(20, 2, 3, 22, '0.08427672955974844', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(21, 2, 3, 23, '0.08427672955974844', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(22, 2, 3, 24, '0.08427672955974844', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(23, 2, 3, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(24, 2, 3, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(25, 2, 3, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(26, 2, 3, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(27, 2, 3, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:43', '2017-06-06 06:50:43'),
(28, 2, 3, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(29, 2, 3, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(30, 2, 3, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(31, 2, 3, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(32, 2, 3, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(33, 2, 3, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(34, 2, 3, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(35, 2, 3, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(36, 2, 3, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(37, 2, 3, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(38, 2, 3, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(39, 2, 3, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(40, 2, 3, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(41, 2, 3, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(42, 2, 3, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(43, 2, 3, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(44, 2, 3, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(45, 2, 3, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(46, 2, 3, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(47, 2, 3, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(48, 2, 3, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:44', '2017-06-06 06:50:44'),
(49, 2, 3, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(50, 2, 3, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(51, 2, 3, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(52, 2, 3, 54, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(53, 2, 4, 3, '0.08427672955974844', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(54, 2, 4, 4, '0.08427672955974844', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(55, 2, 4, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(56, 2, 4, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(57, 2, 4, 7, '0.08427672955974844', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(58, 2, 4, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(59, 2, 4, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(60, 2, 4, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(61, 2, 4, 11, '0.08427672955974844', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(62, 2, 4, 12, '0.08427672955974844', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(63, 2, 4, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(64, 2, 4, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(65, 2, 4, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(66, 2, 4, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:45', '2017-06-06 06:50:45'),
(67, 2, 4, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(68, 2, 4, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(69, 2, 4, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(70, 2, 4, 20, '0.08427672955974844', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(71, 2, 4, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(72, 2, 4, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(73, 2, 4, 23, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(74, 2, 4, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(75, 2, 4, 25, '0.08427672955974844', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(76, 2, 4, 26, '0.08427672955974844', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(77, 2, 4, 27, '0.08427672955974844', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(78, 2, 4, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(79, 2, 4, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(80, 2, 4, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(81, 2, 4, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(82, 2, 4, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(83, 2, 4, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(84, 2, 4, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(85, 2, 4, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(86, 2, 4, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(87, 2, 4, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(88, 2, 4, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(89, 2, 4, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:46', '2017-06-06 06:50:46'),
(90, 2, 4, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(91, 2, 4, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(92, 2, 4, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(93, 2, 4, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(94, 2, 4, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(95, 2, 4, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(96, 2, 4, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(97, 2, 4, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(98, 2, 4, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(99, 2, 4, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(100, 2, 4, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(101, 2, 4, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(102, 2, 4, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(103, 2, 4, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(104, 2, 4, 54, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(105, 2, 5, 3, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(106, 2, 5, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(107, 2, 5, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(108, 2, 5, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(109, 2, 5, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(110, 2, 5, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(111, 2, 5, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(112, 2, 5, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:47', '2017-06-06 06:50:47'),
(113, 2, 5, 11, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(114, 2, 5, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(115, 2, 5, 13, '0.08427672955974844', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(116, 2, 5, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(117, 2, 5, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(118, 2, 5, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(119, 2, 5, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(120, 2, 5, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(121, 2, 5, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(122, 2, 5, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(123, 2, 5, 21, '0.08427672955974844', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(124, 2, 5, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(125, 2, 5, 23, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(126, 2, 5, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(127, 2, 5, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(128, 2, 5, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(129, 2, 5, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(130, 2, 5, 28, '0.08427672955974844', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(131, 2, 5, 29, '0.08427672955974844', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(132, 2, 5, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:48', '2017-06-06 06:50:48'),
(133, 2, 5, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(134, 2, 5, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(135, 2, 5, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(136, 2, 5, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(137, 2, 5, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(138, 2, 5, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(139, 2, 5, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(140, 2, 5, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(141, 2, 5, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(142, 2, 5, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(143, 2, 5, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(144, 2, 5, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(145, 2, 5, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(146, 2, 5, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(147, 2, 5, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(148, 2, 5, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(149, 2, 5, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(150, 2, 5, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(151, 2, 5, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(152, 2, 5, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:49', '2017-06-06 06:50:49'),
(153, 2, 5, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(154, 2, 5, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(155, 2, 5, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(156, 2, 5, 54, '0.08427672955974844', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(157, 2, 6, 3, '0.08427672955974844', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(158, 2, 6, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(159, 2, 6, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(160, 2, 6, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(161, 2, 6, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(162, 2, 6, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(163, 2, 6, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(164, 2, 6, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(165, 2, 6, 11, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(166, 2, 6, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(167, 2, 6, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(168, 2, 6, 14, '0.08427672955974844', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(169, 2, 6, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(170, 2, 6, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(171, 2, 6, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:50', '2017-06-06 06:50:50'),
(172, 2, 6, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(173, 2, 6, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(174, 2, 6, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(175, 2, 6, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(176, 2, 6, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(177, 2, 6, 23, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(178, 2, 6, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(179, 2, 6, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(180, 2, 6, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(181, 2, 6, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(182, 2, 6, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(183, 2, 6, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(184, 2, 6, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(185, 2, 6, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(186, 2, 6, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(187, 2, 6, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(188, 2, 6, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(189, 2, 6, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(190, 2, 6, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:51', '2017-06-06 06:50:51'),
(191, 2, 6, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(192, 2, 6, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(193, 2, 6, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(194, 2, 6, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(195, 2, 6, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(196, 2, 6, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(197, 2, 6, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(198, 2, 6, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(199, 2, 6, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(200, 2, 6, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(201, 2, 6, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(202, 2, 6, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(203, 2, 6, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(204, 2, 6, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(205, 2, 6, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(206, 2, 6, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(207, 2, 6, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(208, 2, 6, 54, '0.08427672955974844', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(209, 2, 7, 3, '0.08427672955974844', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(210, 2, 7, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:52', '2017-06-06 06:50:52'),
(211, 2, 7, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(212, 2, 7, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(213, 2, 7, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(214, 2, 7, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(215, 2, 7, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(216, 2, 7, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(217, 2, 7, 11, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(218, 2, 7, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(219, 2, 7, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(220, 2, 7, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(221, 2, 7, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(222, 2, 7, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(223, 2, 7, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(224, 2, 7, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(225, 2, 7, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(226, 2, 7, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(227, 2, 7, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(228, 2, 7, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:53', '2017-06-06 06:50:53'),
(229, 2, 7, 23, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(230, 2, 7, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(231, 2, 7, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(232, 2, 7, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(233, 2, 7, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(234, 2, 7, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(235, 2, 7, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(236, 2, 7, 30, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(237, 2, 7, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(238, 2, 7, 32, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(239, 2, 7, 33, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(240, 2, 7, 34, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(241, 2, 7, 35, '0.08427672955974844', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(242, 2, 7, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(243, 2, 7, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(244, 2, 7, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(245, 2, 7, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(246, 2, 7, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(247, 2, 7, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(248, 2, 7, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:54', '2017-06-06 06:50:54'),
(249, 2, 7, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(250, 2, 7, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(251, 2, 7, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(252, 2, 7, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(253, 2, 7, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(254, 2, 7, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(255, 2, 7, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(256, 2, 7, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(257, 2, 7, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(258, 2, 7, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(259, 2, 7, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(260, 2, 7, 54, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(261, 2, 8, 3, '0.08427672955974844', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(262, 2, 8, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:55', '2017-06-06 06:50:55'),
(263, 2, 8, 5, '0.08427672955974844', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(264, 2, 8, 6, '0.08427672955974844', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(265, 2, 8, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(266, 2, 8, 8, '0.08427672955974844', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(267, 2, 8, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(268, 2, 8, 10, '0.08427672955974844', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(269, 2, 8, 11, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(270, 2, 8, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(271, 2, 8, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(272, 2, 8, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(273, 2, 8, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(274, 2, 8, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(275, 2, 8, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(276, 2, 8, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(277, 2, 8, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(278, 2, 8, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:56', '2017-06-06 06:50:56'),
(279, 2, 8, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(280, 2, 8, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(281, 2, 8, 23, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(282, 2, 8, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(283, 2, 8, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(284, 2, 8, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(285, 2, 8, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(286, 2, 8, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(287, 2, 8, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(288, 2, 8, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(289, 2, 8, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(290, 2, 8, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(291, 2, 8, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(292, 2, 8, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(293, 2, 8, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(294, 2, 8, 36, '0.08427672955974844', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(295, 2, 8, 37, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(296, 2, 8, 38, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(297, 2, 8, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(298, 2, 8, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(299, 2, 8, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(300, 2, 8, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(301, 2, 8, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(302, 2, 8, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:57', '2017-06-06 06:50:57'),
(303, 2, 8, 45, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(304, 2, 8, 46, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(305, 2, 8, 47, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(306, 2, 8, 48, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(307, 2, 8, 49, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(308, 2, 8, 50, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(309, 2, 8, 51, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(310, 2, 8, 52, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(311, 2, 8, 53, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(312, 2, 8, 54, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(313, 2, 9, 3, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(314, 2, 9, 4, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(315, 2, 9, 5, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(316, 2, 9, 6, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(317, 2, 9, 7, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(318, 2, 9, 8, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(319, 2, 9, 9, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(320, 2, 9, 10, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(321, 2, 9, 11, '0.08427672955974844', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(322, 2, 9, 12, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(323, 2, 9, 13, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(324, 2, 9, 14, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(325, 2, 9, 15, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(326, 2, 9, 16, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(327, 2, 9, 17, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(328, 2, 9, 18, '0.06540880503144654', NULL, '2017-06-06 06:50:58', '2017-06-06 06:50:58'),
(329, 2, 9, 19, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(330, 2, 9, 20, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(331, 2, 9, 21, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(332, 2, 9, 22, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(333, 2, 9, 23, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(334, 2, 9, 24, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(335, 2, 9, 25, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(336, 2, 9, 26, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(337, 2, 9, 27, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(338, 2, 9, 28, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(339, 2, 9, 29, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(340, 2, 9, 30, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(341, 2, 9, 31, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(342, 2, 9, 32, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(343, 2, 9, 33, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(344, 2, 9, 34, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(345, 2, 9, 35, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(346, 2, 9, 36, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(347, 2, 9, 37, '0.08427672955974844', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(348, 2, 9, 38, '0.08427672955974844', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(349, 2, 9, 39, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(350, 2, 9, 40, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(351, 2, 9, 41, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(352, 2, 9, 42, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(353, 2, 9, 43, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(354, 2, 9, 44, '0.06540880503144654', NULL, '2017-06-06 06:50:59', '2017-06-06 06:50:59'),
(355, 2, 9, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(356, 2, 9, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(357, 2, 9, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(358, 2, 9, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(359, 2, 9, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(360, 2, 9, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(361, 2, 9, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(362, 2, 9, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(363, 2, 9, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(364, 2, 9, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(365, 2, 10, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(366, 2, 10, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:00', '2017-06-06 06:51:00'),
(367, 2, 10, 5, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(368, 2, 10, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(369, 2, 10, 7, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(370, 2, 10, 8, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(371, 2, 10, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(372, 2, 10, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(373, 2, 10, 11, '0.08427672955974844', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(374, 2, 10, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(375, 2, 10, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(376, 2, 10, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(377, 2, 10, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(378, 2, 10, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(379, 2, 10, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(380, 2, 10, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(381, 2, 10, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(382, 2, 10, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(383, 2, 10, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(384, 2, 10, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(385, 2, 10, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(386, 2, 10, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(387, 2, 10, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(388, 2, 10, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:01', '2017-06-06 06:51:01'),
(389, 2, 10, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(390, 2, 10, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(391, 2, 10, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(392, 2, 10, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(393, 2, 10, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(394, 2, 10, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(395, 2, 10, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(396, 2, 10, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(397, 2, 10, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(398, 2, 10, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(399, 2, 10, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(400, 2, 10, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(401, 2, 10, 39, '0.08427672955974844', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(402, 2, 10, 40, '0.08427672955974844', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(403, 2, 10, 41, '0.08427672955974844', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(404, 2, 10, 42, '0.08427672955974844', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(405, 2, 10, 43, '0.08427672955974844', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(406, 2, 10, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(407, 2, 10, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(408, 2, 10, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(409, 2, 10, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(410, 2, 10, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(411, 2, 10, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(412, 2, 10, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(413, 2, 10, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:02', '2017-06-06 06:51:02'),
(414, 2, 10, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(415, 2, 10, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(416, 2, 10, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(417, 2, 11, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(418, 2, 11, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(419, 2, 11, 5, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(420, 2, 11, 6, '0.08427672955974844', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(421, 2, 11, 7, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(422, 2, 11, 8, '0.08427672955974844', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(423, 2, 11, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(424, 2, 11, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(425, 2, 11, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(426, 2, 11, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(427, 2, 11, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(428, 2, 11, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(429, 2, 11, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(430, 2, 11, 16, '0.08427672955974844', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(431, 2, 11, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(432, 2, 11, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(433, 2, 11, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(434, 2, 11, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(435, 2, 11, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(436, 2, 11, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:03', '2017-06-06 06:51:03'),
(437, 2, 11, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(438, 2, 11, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(439, 2, 11, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(440, 2, 11, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(441, 2, 11, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(442, 2, 11, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(443, 2, 11, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(444, 2, 11, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(445, 2, 11, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(446, 2, 11, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(447, 2, 11, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(448, 2, 11, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(449, 2, 11, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(450, 2, 11, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(451, 2, 11, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(452, 2, 11, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(453, 2, 11, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(454, 2, 11, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(455, 2, 11, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(456, 2, 11, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(457, 2, 11, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(458, 2, 11, 44, '0.08427672955974844', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(459, 2, 11, 45, '0.08427672955974844', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(460, 2, 11, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:04', '2017-06-06 06:51:04'),
(461, 2, 11, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(462, 2, 11, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(463, 2, 11, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(464, 2, 11, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(465, 2, 11, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(466, 2, 11, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(467, 2, 11, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(468, 2, 11, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(469, 2, 12, 3, '0.08427672955974844', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(470, 2, 12, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(471, 2, 12, 5, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(472, 2, 12, 6, '0.08427672955974844', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(473, 2, 12, 7, '0.08427672955974844', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(474, 2, 12, 8, '0.08427672955974844', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(475, 2, 12, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(476, 2, 12, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(477, 2, 12, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(478, 2, 12, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(479, 2, 12, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(480, 2, 12, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(481, 2, 12, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(482, 2, 12, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(483, 2, 12, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(484, 2, 12, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(485, 2, 12, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(486, 2, 12, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(487, 2, 12, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(488, 2, 12, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(489, 2, 12, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(490, 2, 12, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:05', '2017-06-06 06:51:05'),
(491, 2, 12, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(492, 2, 12, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(493, 2, 12, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(494, 2, 12, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(495, 2, 12, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(496, 2, 12, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(497, 2, 12, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(498, 2, 12, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(499, 2, 12, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(500, 2, 12, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(501, 2, 12, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(502, 2, 12, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(503, 2, 12, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(504, 2, 12, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(505, 2, 12, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(506, 2, 12, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(507, 2, 12, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(508, 2, 12, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(509, 2, 12, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(510, 2, 12, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(511, 2, 12, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(512, 2, 12, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(513, 2, 12, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(514, 2, 12, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(515, 2, 12, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:06', '2017-06-06 06:51:06'),
(516, 2, 12, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(517, 2, 12, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(518, 2, 12, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(519, 2, 12, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(520, 2, 12, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(521, 2, 13, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(522, 2, 13, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(523, 2, 13, 5, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(524, 2, 13, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(525, 2, 13, 7, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(526, 2, 13, 8, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(527, 2, 13, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(528, 2, 13, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(529, 2, 13, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(530, 2, 13, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(531, 2, 13, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(532, 2, 13, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(533, 2, 13, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(534, 2, 13, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(535, 2, 13, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(536, 2, 13, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(537, 2, 13, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(538, 2, 13, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(539, 2, 13, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(540, 2, 13, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(541, 2, 13, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(542, 2, 13, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(543, 2, 13, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(544, 2, 13, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:07', '2017-06-06 06:51:07'),
(545, 2, 13, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(546, 2, 13, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(547, 2, 13, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(548, 2, 13, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(549, 2, 13, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(550, 2, 13, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(551, 2, 13, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(552, 2, 13, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(553, 2, 13, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08');
INSERT INTO `nb_conditional_probabilities` (`id`, `system_id`, `data_class_id`, `attribute_id`, `value`, `free`, `created_at`, `updated_at`) VALUES
(554, 2, 13, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(555, 2, 13, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(556, 2, 13, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(557, 2, 13, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(558, 2, 13, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(559, 2, 13, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(560, 2, 13, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(561, 2, 13, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(562, 2, 13, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(563, 2, 13, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(564, 2, 13, 46, '0.08427672955974844', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(565, 2, 13, 47, '0.08427672955974844', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(566, 2, 13, 48, '0.08427672955974844', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(567, 2, 13, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(568, 2, 13, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(569, 2, 13, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:08', '2017-06-06 06:51:08'),
(570, 2, 13, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(571, 2, 13, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(572, 2, 13, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(573, 2, 14, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(574, 2, 14, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(575, 2, 14, 5, '0.08427672955974844', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(576, 2, 14, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(577, 2, 14, 7, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(578, 2, 14, 8, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(579, 2, 14, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(580, 2, 14, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(581, 2, 14, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(582, 2, 14, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(583, 2, 14, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(584, 2, 14, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(585, 2, 14, 15, '0.08427672955974844', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(586, 2, 14, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(587, 2, 14, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(588, 2, 14, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(589, 2, 14, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(590, 2, 14, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(591, 2, 14, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(592, 2, 14, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(593, 2, 14, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(594, 2, 14, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:09', '2017-06-06 06:51:09'),
(595, 2, 14, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(596, 2, 14, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(597, 2, 14, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(598, 2, 14, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(599, 2, 14, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(600, 2, 14, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(601, 2, 14, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(602, 2, 14, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(603, 2, 14, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(604, 2, 14, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(605, 2, 14, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(606, 2, 14, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(607, 2, 14, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(608, 2, 14, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(609, 2, 14, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(610, 2, 14, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(611, 2, 14, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(612, 2, 14, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(613, 2, 14, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(614, 2, 14, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(615, 2, 14, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(616, 2, 14, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(617, 2, 14, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(618, 2, 14, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(619, 2, 14, 49, '0.08427672955974844', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(620, 2, 14, 50, '0.08427672955974844', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(621, 2, 14, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:10', '2017-06-06 06:51:10'),
(622, 2, 14, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(623, 2, 14, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(624, 2, 14, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(625, 2, 15, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(626, 2, 15, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(627, 2, 15, 5, '0.08427672955974844', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(628, 2, 15, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(629, 2, 15, 7, '0.08427672955974844', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(630, 2, 15, 8, '0.08427672955974844', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(631, 2, 15, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(632, 2, 15, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(633, 2, 15, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(634, 2, 15, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(635, 2, 15, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(636, 2, 15, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(637, 2, 15, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(638, 2, 15, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(639, 2, 15, 17, '0.08427672955974844', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(640, 2, 15, 18, '0.08427672955974844', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(641, 2, 15, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(642, 2, 15, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(643, 2, 15, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(644, 2, 15, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(645, 2, 15, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(646, 2, 15, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(647, 2, 15, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(648, 2, 15, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:11', '2017-06-06 06:51:11'),
(649, 2, 15, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(650, 2, 15, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(651, 2, 15, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(652, 2, 15, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(653, 2, 15, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(654, 2, 15, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(655, 2, 15, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(656, 2, 15, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(657, 2, 15, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(658, 2, 15, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(659, 2, 15, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(660, 2, 15, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(661, 2, 15, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(662, 2, 15, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(663, 2, 15, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(664, 2, 15, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(665, 2, 15, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(666, 2, 15, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(667, 2, 15, 45, '0.08427672955974844', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(668, 2, 15, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:12', '2017-06-06 06:51:12'),
(669, 2, 15, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(670, 2, 15, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(671, 2, 15, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(672, 2, 15, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(673, 2, 15, 51, '0.08427672955974844', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(674, 2, 15, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(675, 2, 15, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(676, 2, 15, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(677, 2, 16, 3, '0.08427672955974844', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(678, 2, 16, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(679, 2, 16, 5, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(680, 2, 16, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(681, 2, 16, 7, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(682, 2, 16, 8, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(683, 2, 16, 9, '0.08427672955974844', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(684, 2, 16, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(685, 2, 16, 11, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(686, 2, 16, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(687, 2, 16, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(688, 2, 16, 14, '0.08427672955974844', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(689, 2, 16, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(690, 2, 16, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(691, 2, 16, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(692, 2, 16, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:13', '2017-06-06 06:51:13'),
(693, 2, 16, 19, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(694, 2, 16, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(695, 2, 16, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(696, 2, 16, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(697, 2, 16, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(698, 2, 16, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(699, 2, 16, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(700, 2, 16, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(701, 2, 16, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(702, 2, 16, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(703, 2, 16, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(704, 2, 16, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(705, 2, 16, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(706, 2, 16, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(707, 2, 16, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(708, 2, 16, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(709, 2, 16, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(710, 2, 16, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(711, 2, 16, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(712, 2, 16, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(713, 2, 16, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(714, 2, 16, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(715, 2, 16, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(716, 2, 16, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(717, 2, 16, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(718, 2, 16, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:14', '2017-06-06 06:51:14'),
(719, 2, 16, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(720, 2, 16, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(721, 2, 16, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(722, 2, 16, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(723, 2, 16, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(724, 2, 16, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(725, 2, 16, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(726, 2, 16, 52, '0.08427672955974844', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(727, 2, 16, 53, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(728, 2, 16, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(729, 2, 17, 3, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(730, 2, 17, 4, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(731, 2, 17, 5, '0.08427672955974844', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(732, 2, 17, 6, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(733, 2, 17, 7, '0.08427672955974844', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(734, 2, 17, 8, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(735, 2, 17, 9, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(736, 2, 17, 10, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(737, 2, 17, 11, '0.08427672955974844', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(738, 2, 17, 12, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(739, 2, 17, 13, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(740, 2, 17, 14, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(741, 2, 17, 15, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(742, 2, 17, 16, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(743, 2, 17, 17, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(744, 2, 17, 18, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(745, 2, 17, 19, '0.08427672955974844', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(746, 2, 17, 20, '0.06540880503144654', NULL, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(747, 2, 17, 21, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(748, 2, 17, 22, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(749, 2, 17, 23, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(750, 2, 17, 24, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(751, 2, 17, 25, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(752, 2, 17, 26, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(753, 2, 17, 27, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(754, 2, 17, 28, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(755, 2, 17, 29, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(756, 2, 17, 30, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(757, 2, 17, 31, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(758, 2, 17, 32, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(759, 2, 17, 33, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(760, 2, 17, 34, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(761, 2, 17, 35, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(762, 2, 17, 36, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(763, 2, 17, 37, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(764, 2, 17, 38, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(765, 2, 17, 39, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(766, 2, 17, 40, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(767, 2, 17, 41, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(768, 2, 17, 42, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(769, 2, 17, 43, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(770, 2, 17, 44, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(771, 2, 17, 45, '0.06540880503144654', NULL, '2017-06-06 06:51:16', '2017-06-06 06:51:16'),
(772, 2, 17, 46, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(773, 2, 17, 47, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(774, 2, 17, 48, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(775, 2, 17, 49, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(776, 2, 17, 50, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(777, 2, 17, 51, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(778, 2, 17, 52, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(779, 2, 17, 53, '0.08427672955974844', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(780, 2, 17, 54, '0.06540880503144654', NULL, '2017-06-06 06:51:17', '2017-06-06 06:51:17'),
(787, 4, 47, 127, '0.625', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02'),
(788, 4, 47, 128, '0.625', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02'),
(789, 4, 47, 129, '0.375', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02'),
(790, 4, 48, 127, '0.375', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02'),
(791, 4, 48, 128, '0.625', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02'),
(792, 4, 48, 129, '0.625', NULL, '2017-06-06 08:33:02', '2017-06-06 08:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `free` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `description`, `free`, `created_at`, `updated_at`) VALUES
(2, 'Penyakit Mata', 'Sistem Pakar Diagnosis Penyakit Mata', NULL, '2017-06-05 05:41:55', '2017-06-06 08:32:25'),
(3, 'Penyakit Tanaman Cabai', 'Penyakit Tanaman Cabai', NULL, '2017-06-06 08:18:10', '2017-06-06 08:18:10'),
(4, 'TEst', NULL, NULL, '2017-06-06 08:30:07', '2017-06-06 08:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_system_id_foreign` (`system_id`);

--
-- Indexes for table `datasets`
--
ALTER TABLE `datasets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datasets_system_id_foreign` (`system_id`),
  ADD KEY `datasets_data_class_id_foreign` (`data_class_id`);

--
-- Indexes for table `data_classes`
--
ALTER TABLE `data_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_classes_system_id_foreign` (`system_id`);

--
-- Indexes for table `matrix_datasets`
--
ALTER TABLE `matrix_datasets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrix_datasets_dataset_id_foreign` (`dataset_id`),
  ADD KEY `matrix_datasets_attribute_id_foreign` (`attribute_id`),
  ADD KEY `matrix_datasets_data_class_id_foreign` (`data_class_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nb_conditional_probabilities`
--
ALTER TABLE `nb_conditional_probabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nb_conditional_probabilities_system_id_foreign` (`system_id`),
  ADD KEY `nb_conditional_probabilities_data_class_id_foreign` (`data_class_id`),
  ADD KEY `nb_conditional_probabilities_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `datasets`
--
ALTER TABLE `datasets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `data_classes`
--
ALTER TABLE `data_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `matrix_datasets`
--
ALTER TABLE `matrix_datasets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nb_conditional_probabilities`
--
ALTER TABLE `nb_conditional_probabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;
--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_system_id_foreign` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `datasets`
--
ALTER TABLE `datasets`
  ADD CONSTRAINT `datasets_data_class_id_foreign` FOREIGN KEY (`data_class_id`) REFERENCES `data_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `datasets_system_id_foreign` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_classes`
--
ALTER TABLE `data_classes`
  ADD CONSTRAINT `data_classes_system_id_foreign` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrix_datasets`
--
ALTER TABLE `matrix_datasets`
  ADD CONSTRAINT `matrix_datasets_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrix_datasets_data_class_id_foreign` FOREIGN KEY (`data_class_id`) REFERENCES `data_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrix_datasets_dataset_id_foreign` FOREIGN KEY (`dataset_id`) REFERENCES `datasets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nb_conditional_probabilities`
--
ALTER TABLE `nb_conditional_probabilities`
  ADD CONSTRAINT `nb_conditional_probabilities_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nb_conditional_probabilities_data_class_id_foreign` FOREIGN KEY (`data_class_id`) REFERENCES `data_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nb_conditional_probabilities_system_id_foreign` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
