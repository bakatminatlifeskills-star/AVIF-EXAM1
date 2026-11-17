-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 05:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zyacbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_soal_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `jawaban_benar` tinyint(1) NOT NULL DEFAULT 0,
  `jawaban_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`jawaban_id`, `jawaban_soal_id`, `jawaban_detail`, `jawaban_benar`, `jawaban_aktif`) VALUES
(186, 57, '<p>1 Syawal</p>\r\n', 1, 1),
(187, 57, '<p>1 Agustus</p>', 0, 1),
(188, 57, '<p>1 Januari</p>', 0, 1),
(189, 57, '<p>1 Desember</p>', 0, 1),
(190, 57, '<p>14 Februari</p>', 0, 1),
(191, 56, '<p>Nazril Irham</p>', 1, 1),
(192, 56, '<p>Joko Susilo</p>', 0, 1),
(193, 56, '<p>Wahyu Saputra</p>\r\n', 0, 1),
(194, 56, '<p>Aril Piterpen</p>', 0, 1),
(195, 56, 'Joko Wow', 0, 1),
(196, 55, '<p>Soekarno</p>', 1, 1),
(197, 55, '<p>Soeharto</p>\r\n', 0, 1),
(198, 55, '<p>Susilo Bambang Yudhoyono</p>\r\n', 0, 1),
(199, 55, '<p>BJ. Habibie</p>\r\n', 0, 1),
(200, 55, '<p>Joko Widodo</p>\r\n', 0, 1),
(201, 54, '<p>Sun East Mall</p>', 1, 1),
(202, 54, '<p>Matahari</p>', 0, 1),
(203, 54, '<p>Bulan</p>', 0, 1),
(204, 54, '<p>Tanah Abang</p>', 0, 1),
(205, 54, '<p>Tanah Lempong</p>', 0, 1),
(206, 53, '<p>Sekolah Menengah Kejuruan</p>', 1, 1),
(207, 53, '<p>Sekolah Menengah Kejujuran</p>', 0, 1),
(208, 53, '<p>Sekolah Maju Sendiri</p>', 0, 1),
(209, 53, '<p>Sekolah Mak Ku</p>', 0, 1),
(210, 53, '<p>Sekolah Memilih Kekasih</p>', 0, 1),
(211, 64, 'Akhirnya aku menemukanmu', 1, 1),
(212, 64, 'Akhir dirimu', 0, 1),
(213, 64, 'Susahnya jadi dia', 0, 1),
(214, 64, 'Jones', 0, 1),
(215, 64, 'Josan - Jomblo Pas Pasan', 0, 1),
(621, 161, '<p>Aksi bela Jomblo</p>\r\n', 1, 1),
(622, 161, '<p>Aksi bela cewek</p>\r\n', 0, 1),
(623, 161, '<p>14 Februari</p>\r\n', 0, 1),
(624, 161, '<p>Hari Valentine</p>\r\n', 0, 1),
(625, 161, '<p>Turun ke jalan</p>\r\n', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_konfigurasi`
--

CREATE TABLE `cbt_konfigurasi` (
  `konfigurasi_id` int(11) NOT NULL,
  `konfigurasi_kode` varchar(50) NOT NULL,
  `konfigurasi_isi` varchar(500) NOT NULL,
  `konfigurasi_keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_konfigurasi`
--

INSERT INTO `cbt_konfigurasi` (`konfigurasi_id`, `konfigurasi_kode`, `konfigurasi_isi`, `konfigurasi_keterangan`) VALUES
(1, 'link_login_operator', 'ya', 'Menampilkan Link Login Operator'),
(2, 'cbt_nama', 'UJIAN SEMESTER I - MA RAUDHATUL MUJAWWIDIN', 'Nama Penyelenggara ZYACBT'),
(3, 'cbt_keterangan', 'MA RAUDHATUL MUJAWWIDIN', 'Keterangan Penyelenggara ZYACBT'),
(4, 'cbt_mobile_lock_xambro', 'tidak', 'Melakukan Lock pada browser mobile agar menggunakan Xambro Saja'),
(5, 'cbt_informasi', '<p>Silahkan pilih Tes yang diikuti dari daftar tes yang tersedia dibawah ini. Apabila tes tidak muncul, silahkan menghubungi Operator yang bertugas.</p>\r\n', 'Informasi yang diberika di Dashboard peserta tes\''),
(6, 'proteksi_multilogin', 'ya', 'Proteksi MultiLogin Peserta Tes'),
(7, 'cbt_tutuptes_logout', 'tidak', 'Menutup Tes Peserta saat Peserta Logout');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_modul`
--

CREATE TABLE `cbt_modul` (
  `modul_id` bigint(20) UNSIGNED NOT NULL,
  `modul_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modul_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_modul`
--

INSERT INTO `cbt_modul` (`modul_id`, `modul_nama`, `modul_aktif`) VALUES
(9, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sessions`
--

CREATE TABLE `cbt_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cbt_sessions`
--

INSERT INTO `cbt_sessions` (`id`, `ip_address`, `timestamp`, `data`, `ts`) VALUES
('02n520lu7uqh5ld16pg1r57qm9h6nqql', '::1', 1606472077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437313738393b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2020-11-27 10:09:49'),
('29mg5j491i2f6bk9agmkg5bngsa9a0aq', '::1', 1606518662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531383635383b6362745f7465735f74616e64617c733a32313a22405a5941434254406c75746669405a594143425440223b6362745f7465735f757365725f69647c733a353a226c75746669223b6362745f7465735f6e616d617c733a32323a224d7568616d6d6164204c75746669616c2048616b696d223b6362745f7465735f67726f75707c733a353a225849204d4d223b6362745f7465735f67726f75705f69647c733a313a2235223b, '2020-11-27 23:10:58'),
('5838spvgc3q9qfu61cgl95fpd75qspjp', '::1', 1606471329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437313137373b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2020-11-27 09:59:37'),
('7npm7lqqmsk18fdb4956gufcsqfd9gma', '::1', 1732077137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323037363937303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2024-11-20 04:29:30'),
('9mhnljubqj8cfrnd76p86g5nrflqtgeo', '::1', 1606518654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363531383539313b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2020-11-27 23:09:51'),
('ddgk67laetcv5lle10ku62s846ailrcf', '::1', 1732076970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323037363937303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2024-11-20 04:24:22'),
('ucfl95ugml7nvp9f11jijich7e3qb5ib', '::1', 1606472579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323531313b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b, '2020-11-27 10:21:52'),
('ui7cue08at95kuue8fa2c4pf5tib2a9i', '::1', 1606472428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363437323136303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b6362745f7465735f74616e64617c733a32313a22405a5941434254406c75746669405a594143425440223b6362745f7465735f757365725f69647c733a353a226c75746669223b6362745f7465735f6e616d617c733a32323a224d7568616d6d6164204c75746669616c2048616b696d223b6362745f7465735f67726f75707c733a353a225849204d4d223b6362745f7465735f67726f75705f69647c733a313a2235223b, '2020-11-27 10:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `soal_topik_id` bigint(20) UNSIGNED NOT NULL,
  `soal_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `soal_tipe` smallint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=Pilihan ganda, 2=essay, 3=jawaban singkat',
  `soal_kunci` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kunci untuk soal jawaban singkat',
  `soal_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `soal_aktif` tinyint(1) NOT NULL DEFAULT 0,
  `soal_audio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soal_audio_play` int(11) NOT NULL DEFAULT 0,
  `soal_timer` smallint(10) DEFAULT NULL,
  `soal_inline_answers` tinyint(1) NOT NULL DEFAULT 0,
  `soal_auto_next` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`) VALUES
(53, 7, 'Apakah kepanjangan dari SMK ?', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(54, 7, '<p>Nama salah satu Mall yang ada di kota genteng adalah ...<br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(55, 7, '<p>Siapakah nama tokoh berikut ?</p><p><img src=\"[base_url]uploads/topik_7/soekarno.jpg\" style=\"max-width: 600px;\"><br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(56, 7, '<p>Siapakah vokalis band NOAH ?<br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(57, 7, '<p>Tanggal berapakah hari raya Idul Fitri ?</p>\r\n', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(61, 7, 'Jelaskan apa yang dimaksud dengan Jomblo ?', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(62, 7, '<p>PT. Tiar Perkasa ingin melebarkan sayap usaha di bidang kuliner.</p><p>Dari pernyataan tersebut, sebutkan siapa kekasih mas Tiar ?</p>', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(63, 7, '<p>Jelaskan kenapa Liverpool FC susah sekali untuk juara Premiere Leage !</p>\r\n', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(64, 7, '<p>Apakah judul lagu berikut ini?</p>', 1, NULL, 1, 1, 'naff_-_akhirnya_ku_menemukanmu.mp3', 1, NULL, 0, 0),
(161, 7, '<p>Jelaskan arti poster dibawah ini ?</p>\r\n\r\n<p><img src=\"[base_url]uploads/topik_7/5a49b252e7aea.jpeg\" style=\"height: 502px; width: 459px;\" /></p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(214, 7, '<p>Berapakah 5x10 ?</p>\r\n', 3, '50', 1, 1, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `tes_id` bigint(20) UNSIGNED NOT NULL,
  `tes_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tes_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `tes_intro` int(11) NOT NULL DEFAULT 0 COMMENT '0=Tidak Aktif, 1=Aktif',
  `tes_intro_isi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tes_begin_time` datetime DEFAULT NULL,
  `tes_end_time` datetime DEFAULT NULL,
  `tes_duration_time` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `tes_ip_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `tes_results_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_detail_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_score_right` decimal(10,2) DEFAULT 1.00,
  `tes_score_wrong` decimal(10,2) DEFAULT 0.00,
  `tes_score_unanswered` decimal(10,2) DEFAULT 0.00,
  `tes_max_score` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tes_token` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tesgrup`
--

CREATE TABLE `cbt_tesgrup` (
  `tstgrp_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tstgrp_grup_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal`
--

CREATE TABLE `cbt_tes_soal` (
  `tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_soal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_jawaban_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_nilai` decimal(10,2) DEFAULT NULL,
  `tessoal_creation_time` datetime DEFAULT NULL,
  `tessoal_display_time` datetime DEFAULT NULL,
  `tessoal_change_time` datetime DEFAULT NULL,
  `tessoal_reaction_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_ragu` int(1) NOT NULL DEFAULT 0 COMMENT '1=ragu, 0=tidak ragu',
  `tessoal_order` smallint(6) NOT NULL DEFAULT 1,
  `tessoal_num_answers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_audio_play` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal_jawaban`
--

CREATE TABLE `cbt_tes_soal_jawaban` (
  `soaljawaban_tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_selected` smallint(6) NOT NULL DEFAULT -1,
  `soaljawaban_order` smallint(6) NOT NULL DEFAULT 1,
  `soaljawaban_position` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_token`
--

CREATE TABLE `cbt_tes_token` (
  `token_id` int(11) NOT NULL,
  `token_isi` varchar(20) NOT NULL,
  `token_user_id` int(11) NOT NULL,
  `token_ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_aktif` int(11) NOT NULL DEFAULT 1 COMMENT 'Umur Token dalam menit, 1 = 1 hari penuh',
  `token_tes_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_tes_token`
--

INSERT INTO `cbt_tes_token` (`token_id`, `token_isi`, `token_user_id`, `token_ts`, `token_aktif`, `token_tes_id`) VALUES
(12, '299403', 5, '2019-12-12 02:53:22', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_topik_set`
--

CREATE TABLE `cbt_tes_topik_set` (
  `tset_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tset_topik_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tipe` smallint(6) NOT NULL DEFAULT 1,
  `tset_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `tset_jumlah` smallint(6) NOT NULL DEFAULT 1,
  `tset_jawaban` smallint(6) NOT NULL DEFAULT 0,
  `tset_acak_jawaban` int(11) NOT NULL DEFAULT 1,
  `tset_acak_soal` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_user`
--

CREATE TABLE `cbt_tes_user` (
  `tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_user_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_status` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tesuser_creation_time` datetime NOT NULL,
  `tesuser_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tesuser_token` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_topik`
--

CREATE TABLE `cbt_topik` (
  `topik_id` bigint(20) UNSIGNED NOT NULL,
  `topik_modul_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `topik_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `topik_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `topik_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_topik`
--

INSERT INTO `cbt_topik` (`topik_id`, `topik_modul_id`, `topik_nama`, `topik_detail`, `topik_aktif`) VALUES
(7, 9, 'Soal Uji Coba', 'Kumpulan Soal untuk Uji Coba ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_login` int(11) NOT NULL DEFAULT 0 COMMENT '0=Tidak Login, 1=Login',
  `user_login_date` date DEFAULT NULL,
  `user_grup_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_detail` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`user_id`, `user_login`, `user_login_date`, `user_grup_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_birthdate`, `user_birthplace`, `user_level`, `user_detail`) VALUES
(112, 0, NULL, 6, 'USG241X11', 'ARI1X11', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ADIRLA FIANDARI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(113, 0, NULL, 6, 'USG241X12', 'SNO1X12', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AHMAD ADI SUTRISNO', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(114, 0, NULL, 6, 'USG241X13', 'URI1X13', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AJI MASYURI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(115, 0, NULL, 6, 'USG241X14', 'SAH1X14', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ALIF SUFYAN FEBRYANSAH', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(116, 0, NULL, 6, 'USG241X15', 'YAS1X15', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'JINGGA RACHEL AYU NINGTYAS', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(117, 0, NULL, 6, 'USG241X16', 'LLA1X16', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'KEISYA ERBY FEBILLA', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(118, 0, NULL, 6, 'USG241X17', 'UQI1X17', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'KEYSA ANA QOTUL KHULUQI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(119, 0, NULL, 6, 'USG241X18', 'FIA1X18', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LUTHFI ALIFIA', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(120, 0, NULL, 6, 'USG241X19', 'HIM1X19', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'M. JAGUAR BRILIANT IBRAHIM', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(121, 0, NULL, 6, 'USG241X20', 'MAD1X20', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NABIL FAIZAL ACHMAD', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(122, 0, NULL, 6, 'USG241X21', 'TUL1X21', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RAHMA HIDAYATUL', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(123, 0, NULL, 6, 'USG241X22', 'INI1X22', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RIRIN ANGGRAINI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(124, 0, NULL, 6, 'USG241X23', 'TRI1X23', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SALSA ANISA PUTRI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(125, 0, NULL, 6, 'USG241X24', 'ISA1X24', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SANIATUL CHOIRUNNISA', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(126, 0, NULL, 6, 'USG241X25', 'NTI1X25', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'UCI NOVRIANTI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(127, 0, NULL, 6, 'USG241X26', 'YAI1X26', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'UNTUNG APRIYAI', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(128, 0, NULL, 6, 'USG241X27', 'RUM1X27', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'YUANDA SETIA NINGRUM', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(129, 0, NULL, 6, 'USG241X28', 'A Z1X28', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ZAHRA SALWA Z', NULL, NULL, 1, 'RUANG 1, SERVER 1'),
(130, 0, NULL, 7, 'USG241X29', 'STA1X29', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AIRA EKA WASISTA', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(131, 0, NULL, 7, 'USG241X30', 'ANI1X30', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AIRIN ASFIANA RAMADHANI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(132, 0, NULL, 7, 'USG241X31', 'BAH1X31', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ANGGI HASYAROBAH', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(133, 0, NULL, 7, 'USG241X32', 'DIN1X32', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'HAFIDZ KHOIRUDIN', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(134, 0, NULL, 7, 'USG241X33', 'NIS1X33', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ANISA RENGGANIS', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(135, 0, NULL, 7, 'USG241X34', 'RUM1X34', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'CAHYA SEKAR ARUM', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(136, 0, NULL, 7, 'USG241X35', 'DRI1X35', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DAFFI SODRI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(137, 0, NULL, 7, 'USG241X36', 'AMA1X36', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'FARID YOGA PRATAMA', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(138, 0, NULL, 7, 'USG241X37', 'ATI1X37', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'FEBRIANA TUSOFA PRASETIA WATI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(139, 0, NULL, 7, 'USG241X38', 'YAH1X38', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'FIRMAN ALAMSYAH', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(140, 0, NULL, 7, 'USG241X39', 'JAH1X39', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'INTAN NUR KHATIJAH', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(141, 0, NULL, 7, 'USG241X40', 'NTI1X40', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ISNAINI IRMAYANTI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(142, 0, NULL, 7, 'USG241X41', 'ANI1X41', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LISCA SUCI RAMADANI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(143, 0, NULL, 7, 'USG241X42', 'FIQ1X42', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LUTFIANA NABILASYAFIQ', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(144, 0, NULL, 7, 'USG241X43', 'LNI1X43', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MELA AFRIYALNI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(145, 0, NULL, 7, 'USG241X44', 'ILI1X44', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUHAMMAD AZHAR ASADILI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(146, 0, NULL, 7, 'USG241X45', 'LMA1X45', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NADIA SALMA', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(147, 0, NULL, 7, 'USG241X46', 'LFA1X46', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NAILA ZULFA', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(148, 0, NULL, 7, 'USG241X47', 'INI1X47', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NURMAINI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(149, 0, NULL, 7, 'USG241X48', 'TRI1X48', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'PRISMA FAINEZHA PUTRI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(150, 0, NULL, 7, 'USG241X49', 'ANI1X49', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'PUTRI ANGGUN CAHYANI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(151, 0, NULL, 7, 'USG241X50', 'IWI1X50', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WULAN PRATIWI', NULL, NULL, 1, 'RUANG 2, SERVER 1'),
(152, 0, NULL, 9, 'USG242XI1', 'ILA2XI1', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AULIA SALSABILA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(153, 0, NULL, 9, 'USG242XI2', 'NTO2XI2', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'BAGAS NURDIANTO', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(154, 0, NULL, 9, 'USG242XI3', 'R R2XI3', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'BRIEYAN SEPTIAR R', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(155, 0, NULL, 9, 'USG242XI4', 'HAT2XI4', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'CHANDY ISNA SHOLIHAT', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(156, 0, NULL, 9, 'USG242XI5', 'TYO2XI5', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DENDY PRASETYO', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(157, 0, NULL, 9, 'USG242XI6', 'NAH2XI6', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'EKA NURJANAH', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(158, 0, NULL, 9, 'USG242XI7', 'ANI2XI7', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ELLIYA RAMADHANI', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(159, 0, NULL, 9, 'USG242XI8', 'LIA2XI8', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'FRISKA AMELIA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(160, 0, NULL, 9, 'USG242XI9', 'INI2XI9', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'HANNY QURROTU AINI', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(161, 0, NULL, 9, 'USG242XI10', 'TANXI10', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'INTAN', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(162, 0, NULL, 9, 'USG242XI11', 'NIAXI11', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MARLENI AGUSTIN YUSNIA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(163, 0, NULL, 9, 'USG242XI12', 'ANAXI12', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MARSELLA PUTRI LIANA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(164, 0, NULL, 9, 'USG242XI13', 'HIDXI13', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUHAMMAD NUR IHSAN WAHID', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(165, 0, NULL, 9, 'USG242XI14', 'MANXI14', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUJI BURRAHMAN', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(166, 0, NULL, 9, 'USG242XI15', 'ANAXI15', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NIA SILVIANA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(167, 0, NULL, 9, 'USG242XI16', 'RMAXI16', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NURUL LIYA FARMA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(168, 0, NULL, 9, 'USG242XI17', 'ANAXI17', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NUZULI NURI DIYANA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(169, 0, NULL, 9, 'USG242XI18', 'TRIXI18', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RARAS MEGIA PUTRI', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(170, 0, NULL, 9, 'USG242XI19', 'AINXI19', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RIFA QUROTUAIN', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(171, 0, NULL, 9, 'USG242XI20', 'ILAXI20', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SHELLY ARDILA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(172, 0, NULL, 9, 'USG242XI21', 'ATIXI21', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WATI', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(173, 0, NULL, 9, 'USG242XI22', 'ARIXI22', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WULANSARI', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(174, 0, NULL, 9, 'USG242XI23', 'ZKYXI23', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'YURISMA CATUR RIZKY', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(175, 0, NULL, 9, 'USG242XI24', 'TRAXI24', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ZEEKE STEVIE SYAPUTRA', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(176, 0, NULL, 9, 'USG242XI25', 'ZANXI25', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RIZQI FAUZAN', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(177, 0, NULL, 9, 'USG242XI26', 'ROQXI26', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'M. ANNAJMUSTSAQIB AL MUBAROQ', NULL, NULL, 1, 'RUANG 3,SERVER 3'),
(178, 0, NULL, 8, 'USG242XI27', 'MANXI27', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'A. FADHIL ILMAN', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(179, 0, NULL, 8, 'USG242XI28', 'INIXI28', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ABDUL AZIZ DAROINI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(180, 0, NULL, 8, 'USG242XI29', 'ALIXI29', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AGUS ROFI ASFALI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(181, 0, NULL, 8, 'USG242XI30', 'ANIXI30', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AHAD SYABANI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(182, 0, NULL, 8, 'USG242XI31', 'MINXI31', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AKRIMAH AMIN', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(183, 0, NULL, 8, 'USG242XI32', 'NAHXI32', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DEWI MIFTAKHUL JANAH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(184, 0, NULL, 8, 'USG242XI33', 'WANXI33', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'FERI KURNIAWAN', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(185, 0, NULL, 8, 'USG242XI34', 'AFYXI34', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'GABIL MUHAIMIN ANNAFY', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(186, 0, NULL, 8, 'USG242XI35', 'STUXI35', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'GIOVANI ANGESTU', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(187, 0, NULL, 8, 'USG242XI36', 'TYAXI36', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'GUSLIAN ADITYA', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(188, 0, NULL, 8, 'USG242XI37', 'ARIXI37', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'HESTI SEPTIA WULANDARI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(189, 0, NULL, 8, 'USG242XI38', 'IRIXI38', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'HUSAIRI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(190, 0, NULL, 8, 'USG242XI39', 'LEHXI39', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'IQBAR MUHAMMAD SHALEH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(191, 0, NULL, 8, 'USG242XI40', 'TRIXI40', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LAILA ANNURIA PUTRI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(192, 0, NULL, 8, 'USG242XI41', 'M HXI41', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NEHA AHSANA M H', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(193, 0, NULL, 8, 'USG242XI42', 'MAHXI42', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NUR AZIZATUL ROHMAH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(194, 0, NULL, 8, 'USG242XI43', 'NAHXI43', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RAUDHATUL KHASANAH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(195, 0, NULL, 8, 'USG242XI44', 'ATAXI44', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RINZI ALIN TALATA', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(196, 0, NULL, 8, 'USG242XI45', 'INIXI45', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SASKIA MILA ROHMINI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(197, 0, NULL, 8, 'USG242XI46', 'LIAXI46', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SELA AMALIA', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(198, 0, NULL, 8, 'USG242XI47', 'LIAXI47', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SHAFILLA FIRDA AULIA', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(199, 0, NULL, 8, 'USG242XI48', 'ROHXI48', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SITI SALATIN MUNAWAROH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(200, 0, NULL, 8, 'USG242XI49', 'ARIXI49', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SUCI BELLA PRAWESWARI', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(201, 0, NULL, 8, 'USG242XI50', 'MANXI50', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WAHYU RAHMAN', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(202, 0, NULL, 8, 'USG242XI51', 'IAHXI51', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'HIFMATUL ALIAH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(203, 0, NULL, 8, 'USG242XI52', 'YAHXI52', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LIVIA BIDAYAH', NULL, NULL, 1, 'RUANG 4, SERVER 3'),
(204, 0, NULL, 10, 'USG241XII1', 'TNOXII1', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ADY PRAYIETNO', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(205, 0, NULL, 10, 'USG241XII2', 'ARIXII2', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ASRI VILA SARI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(206, 0, NULL, 10, 'USG241XII3', 'UTIXII3', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AYU NING TYASTUTI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(207, 0, NULL, 10, 'USG241XII4', 'NTOXII4', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'CATUR CAHYO YULIANTO', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(208, 0, NULL, 10, 'USG241XII5', 'TRIXII5', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DEVIA ANNASTASYA PUTRI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(209, 0, NULL, 10, 'USG241XII6', 'ZAHXII6', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'EGNES NUR AZIZAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(210, 0, NULL, 10, 'USG241XII7', 'KIAXII7', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ERVINA ZASKIA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(211, 0, NULL, 10, 'USG241XII8', 'FAHXII8', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'IKA ALIEF AFFIFAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(212, 0, NULL, 10, 'USG241XII9', 'INIXII9', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LINA ANGGRAINI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(213, 0, NULL, 10, 'USG241XII10', 'LINII10', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LUNA DEVIANTI ENGLIN', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(214, 0, NULL, 10, 'USG241XII11', 'ANIII11', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NADIA AYU RAMADANI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(215, 0, NULL, 10, 'USG241XII12', 'ANIII12', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'OKTAVIAN DWI RAMADHANI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(216, 0, NULL, 10, 'USG241XII13', 'DIAII13', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SALMA AULIA MUFIDIA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(217, 0, NULL, 10, 'USG241XII14', 'TRIII14', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SHOLIKHAH ANGGUN SAPUTRI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(218, 0, NULL, 10, 'USG241XII15', 'NAHII15', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SITI WIRDATUL JANNAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(219, 0, NULL, 10, 'USG241XII16', 'ARAII16', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SUCI SAHARA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(220, 0, NULL, 10, 'USG241XII17', 'NASII17', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WAFIQ AZIZAH MUANAS', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(221, 0, NULL, 10, 'USG241XII18', 'HIDII18', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'WAHYU NUR WAHID', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(222, 0, NULL, 10, 'USG241XII19', 'GARII19', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ZAZSYA WIANDA JUNILAWATI SIREGAR', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(223, 0, NULL, 11, 'USG241XII20', 'YAHII20', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DEVA NURWENI HIDAYAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(224, 0, NULL, 11, 'USG241XII21', 'LYAII21', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AFRIANA AINI ULYA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(225, 0, NULL, 11, 'USG241XII22', 'LIAII22', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'BELINDA ISMU AULIA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(226, 0, NULL, 11, 'USG241XII23', 'IZHII23', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DAFFA NUR HAFIZH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(227, 0, NULL, 11, 'USG241XII24', 'IYOII24', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DINAR RAHMAWATU SETIYO', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(228, 0, NULL, 11, 'USG241XII25', 'HMAII25', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'DITHA NAILA RAHMA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(229, 0, NULL, 11, 'USG241XII26', 'ANIII26', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ELSHINTA SUSMIANI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(230, 0, NULL, 11, 'USG241XII27', 'AMAII27', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'KHOLIP PUTRO PRATAMA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(231, 0, NULL, 11, 'USG241XII28', 'YAHII28', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'KHUSNUL AZZAHRA KHOIRIYAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(232, 0, NULL, 11, 'USG241XII29', 'ANAII29', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LIKEN FEBRIANA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(233, 0, NULL, 11, 'USG241XII30', 'ARIII30', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'LINDA PERMATASARI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(234, 0, NULL, 11, 'USG241XII31', 'LAHII31', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUHAMMAD REIFAN ABDILAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(235, 0, NULL, 11, 'USG241XII32', 'HRAII32', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUTHI ZAHRA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(236, 0, NULL, 11, 'USG241XII33', 'ITAII33', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NARINDRA FIQRI PUTRA NURITA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(237, 0, NULL, 11, 'USG241XII34', 'ARIII34', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NENISAH MILA SARI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(238, 0, NULL, 11, 'USG241XII35', 'LAHII35', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NOVA ALFADILAH', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(239, 0, NULL, 11, 'USG241XII36', 'ANAII36', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NUR AZIS AKROM MAULANA', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(240, 0, NULL, 11, 'USG241XII37', 'ARIII37', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RETNO WULANDARI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(241, 0, NULL, 11, 'USG241XII38', 'NTIII38', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'VITA APRILIANTI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(242, 0, NULL, 11, 'USG241XII39', 'INIII39', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'YURI ESKA ANDINI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(243, 0, NULL, 11, 'USG241XII40', 'ANIII40', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ALIFIAH RAMADHANI', NULL, NULL, 1, 'RUANG 5, SERVER 2'),
(244, 0, NULL, 12, 'USG241XII41', 'YAHII41', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ADYA AYU ALFIYAH', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(245, 0, NULL, 12, 'USG241XII42', 'BBIII42', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AHMAD FADLI ROBBI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(246, 0, NULL, 12, 'USG241XII43', 'A SII43', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ALDO PRATAMA S', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(247, 0, NULL, 12, 'USG241XII44', 'AYUII44', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'AMELIA RAHAYU', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(248, 0, NULL, 12, 'USG241XII45', 'MAHII45', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'ASSYIFA USSALAMAH', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(249, 0, NULL, 12, 'USG241XII46', 'SIHII46', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'KAROMAH RENO ASIH', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(250, 0, NULL, 12, 'USG241XII47', 'YANII47', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'M. KEVIN AGUSTIYAN', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(251, 0, NULL, 12, 'USG241XII48', 'MANII48', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'M. SALMAN', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(252, 0, NULL, 12, 'USG241XII49', 'TRIII49', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MEYGI SAPUTRI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(253, 0, NULL, 12, 'USG241XII50', 'ORIII50', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUHAMMAD IMAM ANSHORI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(254, 0, NULL, 12, 'USG241XII51', 'AKIII51', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'MUHAMMAD KHUSNUL ZAKI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(255, 0, NULL, 12, 'USG241XII52', 'SNIII52', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NAYLA DIVA ARDINI RANA LISNI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(256, 0, NULL, 12, 'USG241XII53', 'ANAII53', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'NUR ROIHANA', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(257, 0, NULL, 12, 'USG241XII54', 'TRAII54', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'RAIHAN HADI SAPUTRA', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(258, 0, NULL, 12, 'USG241XII55', 'ARIII55', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SEKAR AYU WULAN NDHARI', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(259, 0, NULL, 12, 'USG241XII56', 'TRAII56', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'SUNANDA BIMA SAPUTRA', NULL, NULL, 1, 'RUANG 7, SERVER 4'),
(260, 0, NULL, 12, 'USG241XII57', 'KASII57', 'maromu@gmail.com', '2024-11-20 04:27:28', NULL, 'YOGA AJI PAMUNGKAS', NULL, NULL, 1, 'RUANG 7, SERVER 4');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_grup`
--

CREATE TABLE `cbt_user_grup` (
  `grup_id` bigint(20) UNSIGNED NOT NULL,
  `grup_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user_grup`
--

INSERT INTO `cbt_user_grup` (`grup_id`, `grup_nama`) VALUES
(6, 'X1'),
(7, 'X2'),
(9, 'XI IPA'),
(8, 'XI IPS'),
(10, 'XII IPA 1'),
(11, 'XII IPA 2'),
(12, 'XII IPS');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `opsi1` varchar(75) NOT NULL,
  `opsi2` varchar(75) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `opsi1`, `opsi2`, `keterangan`, `level`, `ts`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Achmad Lutfi', '', '', '', 'admin', '2015-07-29 18:12:03'),
(4, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'Operator', '', '', 'Operator', 'operator-soal', '2018-03-30 12:58:55'),
(5, 'joko', '97c358728f7f947c9a279ba9be88308395c7cc3a', 'Joko', '', '', 'Haloo', 'admin', '2019-12-12 02:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE `user_akses` (
  `id` int(11) NOT NULL,
  `level` varchar(75) NOT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `add` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true',
  `edit` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_akses`
--

INSERT INTO `user_akses` (`id`, `level`, `kode_menu`, `add`, `edit`) VALUES
(254, 'operator-soal', 'modul-daftar', 1, 1),
(255, 'operator-soal', 'modul-filemanager', 1, 1),
(256, 'operator-soal', 'modul-import', 1, 1),
(257, 'operator-soal', 'modul-soal', 1, 1),
(258, 'operator-soal', 'modul-topik', 1, 1),
(259, 'operator-tes', 'tes-hasil-operator', 1, 1),
(260, 'operator-tes', 'tes-token', 1, 1),
(481, 'admin', 'laporan-analisis-butir-soal', 1, 1),
(482, 'admin', 'peserta-kartu', 1, 1),
(483, 'admin', 'peserta-group', 1, 1),
(484, 'admin', 'peserta-daftar', 1, 1),
(485, 'admin', 'modul-daftar', 1, 1),
(486, 'admin', 'tes-daftar', 1, 1),
(487, 'admin', 'tool-backup', 1, 1),
(488, 'admin', 'tes-evaluasi', 1, 1),
(489, 'admin', 'tool-exportimport-soal', 1, 1),
(490, 'admin', 'modul-filemanager', 1, 1),
(491, 'admin', 'tes-hasil', 1, 1),
(492, 'admin', 'peserta-import', 1, 1),
(493, 'admin', 'modul-import', 1, 1),
(494, 'admin', 'modul-import-word', 1, 1),
(496, 'admin', 'user_level', 1, 1),
(497, 'admin', 'user_menu', 1, 1),
(498, 'admin', 'user_atur', 1, 1),
(499, 'admin', 'user-zyacbt', 1, 1),
(500, 'admin', 'laporan-rekap', 1, 1),
(501, 'admin', 'modul-soal', 1, 1),
(502, 'admin', 'tes-tambah', 1, 1),
(503, 'admin', 'tes-token', 1, 1),
(504, 'admin', 'modul-topik', 1, 1),
(505, 'admin', 'peserta-reset', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `keterangan`) VALUES
(1, 'admin', 'Administrator'),
(7, 'operator-soal', 'Operator Soal'),
(8, 'operator-tes', 'Operator Tes');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `log` varchar(250) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT 1 COMMENT '0=parent, 1=child',
  `parent` varchar(50) DEFAULT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '#',
  `icon` varchar(75) NOT NULL DEFAULT 'fa fa-circle-o',
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `tipe`, `parent`, `kode_menu`, `nama_menu`, `url`, `icon`, `urutan`) VALUES
(1, 0, '', 'user', 'Pengaturan', '#', 'fa fa-user', 20),
(3, 1, 'user', 'user_atur', 'Pengaturan User', 'manager/useratur', 'fa fa-circle-o', 5),
(4, 1, 'user', 'user_level', 'Pengaturan Level', 'manager/userlevel', 'fa fa-circle-o', 6),
(5, 1, 'user', 'user_menu', 'Pengaturan Menu', 'manager/usermenu', 'fa fa-circle-o', 7),
(6, 0, '', 'modul', 'Data Modul', '#', 'fa fa-book', 2),
(7, 1, 'modul', 'modul-daftar', 'Daftar Soal', 'manager/modul_daftar', 'fa fa-circle-o', 6),
(8, 1, 'modul', 'modul-topik', 'Topik', 'manager/modul_topik', 'fa fa-circle-o', 2),
(10, 0, '', 'peserta', 'Data Peserta', '#', 'fa fa-users', 3),
(11, 1, 'peserta', 'peserta-daftar', 'Daftar Peserta', 'manager/peserta_daftar', 'fa fa-circle-o', 2),
(12, 1, 'peserta', 'peserta-group', 'Daftar Group', 'manager/peserta_group', 'fa fa-circle-o', 1),
(13, 1, 'peserta', 'peserta-import', 'Import Data Peserta', 'manager/peserta_import', 'fa fa-circle-o', 3),
(14, 0, '', 'tes', 'Data Tes', '#', 'fa fa-tasks', 4),
(15, 1, 'tes', 'tes-tambah', 'Tambah Tes', 'manager/tes_tambah', 'fa fa-circle-o', 1),
(16, 1, 'tes', 'tes-daftar', 'Daftar Tes', 'manager/tes_daftar', 'fa fa-circle-o', 2),
(17, 1, 'tes', 'tes-hasil', 'Hasil Tes', 'manager/tes_hasil', 'fa fa-circle-o', 6),
(18, 1, 'modul', 'modul-soal', 'Soal', 'manager/modul_soal', 'fa fa-circle-o', 3),
(19, 1, 'tes', 'tes-token', 'Token', 'manager/tes_token', 'fa fa-circle-o', 8),
(22, 1, 'modul', 'modul-filemanager', 'File Manager', 'manager/modul_filemanager', 'fa fa-circle-o', 7),
(24, 1, 'modul', 'modul-import', 'Import Soal Spreadsheet', 'manager/modul_import', 'fa fa-circle-o', 4),
(25, 1, 'tes', 'tes-evaluasi', 'Evaluasi Tes', 'manager/tes_evaluasi', 'fa fa-circle-o', 5),
(28, 1, 'tes', 'tes-hasil-operator', 'Hasil Tes Operator', 'manager/tes_hasil_operator', 'fa fa-circle-o', 10),
(30, 0, '', 'tool', 'Tool', '#', 'fa fa-wrench', 6),
(31, 1, 'tool', 'tool-backup', 'Database', 'manager/tool_backup', 'fa fa-database', 1),
(32, 1, 'tes-laporan', 'laporan-rekap', 'Rekap Hasil Tes', 'manager/laporan_rekap_hasil', 'fa fa-circle-o', 7),
(33, 1, 'tool', 'tool-exportimport-soal', 'Export / Import Soal', 'manager/tool_exportimport_soal', 'fa fa-circle-o', 2),
(34, 1, 'user', 'user-zyacbt', 'Pengaturan ZYACBT', 'manager/pengaturan_zyacbt', 'fa fa-circle-o', 1),
(37, 1, 'peserta', 'peserta-kartu', 'Cetak Kartu', 'manager/peserta_kartu', 'fa fa-circle-o', 5),
(38, 0, '', 'tes-laporan', 'Laporan', '#', 'fa fa-print', 5),
(41, 1, 'tes-laporan', 'laporan-analisis-butir-soal', 'Analisis Butir Soal', 'manager/laporan_analisis_butir_soal', 'fa fa-circle-o', 1),
(42, 1, 'tes-laporan', 'laporan-analisis-soal', 'Analisis Soal', 'manager/laporan_analisis_soal', 'fa fa-circle-o', 2),
(43, 1, 'modul', 'modul-import-word', 'Import Soal Word', 'manager/modul_import_word', 'fa fa-circle-o', 5),
(44, 1, 'peserta', 'peserta-reset', 'Reset Login', 'manager/peserta_reset', 'fa fa-circle-o', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`jawaban_id`),
  ADD KEY `p_answer_question_id` (`jawaban_soal_id`);

--
-- Indexes for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  ADD PRIMARY KEY (`konfigurasi_id`),
  ADD UNIQUE KEY `konfigurasi_kode` (`konfigurasi_kode`);

--
-- Indexes for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  ADD PRIMARY KEY (`modul_id`),
  ADD UNIQUE KEY `ak_module_name` (`modul_nama`);

--
-- Indexes for table `cbt_sessions`
--
ALTER TABLE `cbt_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `p_question_subject_id` (`soal_topik_id`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`tes_id`),
  ADD UNIQUE KEY `ak_test_name` (`tes_nama`);

--
-- Indexes for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD PRIMARY KEY (`tstgrp_tes_id`,`tstgrp_grup_id`),
  ADD KEY `p_tstgrp_test_id` (`tstgrp_tes_id`),
  ADD KEY `p_tstgrp_group_id` (`tstgrp_grup_id`);

--
-- Indexes for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD PRIMARY KEY (`tessoal_id`),
  ADD UNIQUE KEY `ak_testuser_question` (`tessoal_tesuser_id`,`tessoal_soal_id`),
  ADD KEY `p_testlog_question_id` (`tessoal_soal_id`),
  ADD KEY `p_testlog_testuser_id` (`tessoal_tesuser_id`);

--
-- Indexes for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD PRIMARY KEY (`soaljawaban_tessoal_id`,`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_answer_id` (`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_testlog_id` (`soaljawaban_tessoal_id`);

--
-- Indexes for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token_user_id` (`token_user_id`);

--
-- Indexes for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD PRIMARY KEY (`tset_id`),
  ADD KEY `p_tsubset_test_id` (`tset_tes_id`),
  ADD KEY `tsubset_subject_id` (`tset_topik_id`);

--
-- Indexes for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD PRIMARY KEY (`tesuser_id`),
  ADD UNIQUE KEY `ak_testuser` (`tesuser_tes_id`,`tesuser_user_id`,`tesuser_status`),
  ADD KEY `p_testuser_user_id` (`tesuser_user_id`),
  ADD KEY `p_testuser_test_id` (`tesuser_tes_id`);

--
-- Indexes for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD PRIMARY KEY (`topik_id`),
  ADD UNIQUE KEY `ak_subject_name` (`topik_modul_id`,`topik_nama`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ak_user_name` (`user_name`),
  ADD KEY `user_groups_id` (`user_grup_id`),
  ADD KEY `user_detail` (`user_detail`);

--
-- Indexes for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  ADD PRIMARY KEY (`grup_id`),
  ADD UNIQUE KEY `group_name` (`grup_nama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akses_kode_menu` (`kode_menu`),
  ADD KEY `akses_level` (`level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level` (`level`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_menu` (`kode_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `jawaban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  MODIFY `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  MODIFY `modul_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `soal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `tes_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  MODIFY `tessoal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  MODIFY `tset_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  MODIFY `tesuser_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  MODIFY `topik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  MODIFY `grup_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_akses`
--
ALTER TABLE `user_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD CONSTRAINT `cbt_jawaban_ibfk_1` FOREIGN KEY (`jawaban_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD CONSTRAINT `cbt_soal_ibfk_1` FOREIGN KEY (`soal_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD CONSTRAINT `cbt_tesgrup_ibfk_1` FOREIGN KEY (`tstgrp_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tesgrup_ibfk_2` FOREIGN KEY (`tstgrp_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD CONSTRAINT `cbt_tes_soal_ibfk_1` FOREIGN KEY (`tessoal_tesuser_id`) REFERENCES `cbt_tes_user` (`tesuser_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_ibfk_2` FOREIGN KEY (`tessoal_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_1` FOREIGN KEY (`soaljawaban_tessoal_id`) REFERENCES `cbt_tes_soal` (`tessoal_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_2` FOREIGN KEY (`soaljawaban_jawaban_id`) REFERENCES `cbt_jawaban` (`jawaban_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD CONSTRAINT `cbt_tes_token_ibfk_1` FOREIGN KEY (`token_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_1` FOREIGN KEY (`tset_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_2` FOREIGN KEY (`tset_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD CONSTRAINT `cbt_tes_user_ibfk_1` FOREIGN KEY (`tesuser_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_user_ibfk_2` FOREIGN KEY (`tesuser_user_id`) REFERENCES `cbt_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD CONSTRAINT `cbt_topik_ibfk_1` FOREIGN KEY (`topik_modul_id`) REFERENCES `cbt_modul` (`modul_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD CONSTRAINT `cbt_user_ibfk_1` FOREIGN KEY (`user_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD CONSTRAINT `user_akses_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `user_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_akses_ibfk_3` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
