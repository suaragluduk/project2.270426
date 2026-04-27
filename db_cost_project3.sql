-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2026 at 06:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cost_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost_groups`
--

CREATE TABLE `cost_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `created_by_role` enum('admin','karyawan') NOT NULL DEFAULT 'admin',
  `created_by_user` varchar(100) DEFAULT 'Sistem',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cost_groups`
--

INSERT INTO `cost_groups` (`id`, `group_name`, `created_by_role`, `created_by_user`, `created_at`) VALUES
(1, 'Transport', 'admin', 'Sistem', '2026-02-19 04:15:04'),
(5, 'Hotel & Meal', 'admin', 'Sistem', '2026-02-19 04:15:04'),
(6, 'Alat Berat', 'admin', 'Sistem', '2026-02-19 04:15:04'),
(7, 'Sparepart', 'admin', 'Sistem', '2026-02-19 04:15:04'),
(8, 'Mobilisasi', 'admin', 'Sistem', '2026-02-19 04:15:04'),
(21, 'Tiket', 'karyawan', 'ica', '2026-02-19 04:35:18'),
(22, 'Alat Berat', 'karyawan', 'nuri', '2026-02-19 04:42:03'),
(23, 'Biaya Orang Pihak Ke 3', 'karyawan', 'nuri', '2026-02-20 07:06:27'),
(24, 'Uang Makan', 'karyawan', 'nuri', '2026-02-20 07:11:34'),
(25, 'Makan', 'karyawan', 'nuri', '2026-02-20 07:11:50'),
(26, 'Jajanan', 'karyawan', 'nuri', '2026-02-20 07:12:46'),
(27, 'Laundry', 'karyawan', 'nuri', '2026-02-20 07:13:12'),
(28, 'Penginapan', 'karyawan', 'nuri', '2026-02-20 07:26:16'),
(29, 'Transport', 'karyawan', 'nuri', '2026-02-20 07:34:25'),
(31, 'Gaji', 'admin', 'mario', '2026-03-04 04:57:53'),
(32, 'Medical', 'karyawan', 'nuri', '2026-03-11 08:54:42'),
(33, 'Entertain', 'karyawan', 'nuri', '2026-03-12 04:49:43'),
(34, 'Uang Kru Hari Raya', 'karyawan', 'nuri', '2026-03-12 08:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `cost_parameters`
--

CREATE TABLE `cost_parameters` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `parameter_name` varchar(150) NOT NULL,
  `created_by_user` varchar(100) DEFAULT 'Sistem',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by_user` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cost_parameters`
--

INSERT INTO `cost_parameters` (`id`, `group_id`, `parameter_name`, `created_by_user`, `created_at`, `updated_by_user`, `updated_at`) VALUES
(1, 1, 'Tiket Pesawat', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(25, 5, 'Uang Makan', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(31, 5, 'Hotel', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(32, 5, 'laundry', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(34, 1, 'Tiket Speedboat', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(35, 1, 'Taxi', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(36, 1, 'Toll & Parkir', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(37, 6, 'Pompa', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(38, 6, 'Lowboy Trailer', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(39, 6, 'Crane 50T', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(40, 6, 'Mob - Demob Crane 50T', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(41, 6, 'Crane 25T', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(42, 6, 'Mob - Demob Crane 25T', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(43, 7, 'Lubricator O-ring', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(49, 7, 'Flow Cup Rubber', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(50, 7, 'H.Temp Grease', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(51, 7, 'BOP O-ring', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(52, 7, 'Coverall', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(53, 7, 'Contingency', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(54, 8, 'Wireline Unit', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(57, 8, 'Pompa', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(58, 8, 'Crane', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(59, 8, 'Lowbed', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(60, 8, 'Scaffolding', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(61, 8, 'Others', 'Sistem', '2026-02-19 04:15:04', NULL, NULL),
(79, 21, 'Pesawat', 'ica', '2026-02-19 04:35:28', NULL, NULL),
(80, 22, 'Crane 50t', 'nuri', '2026-02-19 04:42:26', 'nuri', '2026-02-19 04:42:37'),
(81, 21, 'Kapal Laut', 'mario', '2026-02-19 05:20:23', 'mario', '2026-02-19 05:20:40'),
(82, 23, 'Upah Driver Pendamping', 'nuri', '2026-02-20 07:09:57', NULL, NULL),
(83, 25, 'Makan Kru Pagi & Siang', 'nuri', '2026-02-20 07:12:14', 'nuri', '2026-02-23 06:20:51'),
(84, 23, 'Uang Jaga & Pengawalan Log#02', 'nuri', '2026-02-20 07:22:34', 'nuri', '2026-02-20 07:25:08'),
(85, 28, 'Penginapan (hotel)', 'nuri', '2026-02-20 07:28:32', NULL, NULL),
(86, 26, 'Jajanan & Lain2', 'nuri', '2026-02-20 07:32:08', NULL, NULL),
(87, 27, 'Laundry', 'nuri', '2026-02-20 07:33:18', NULL, NULL),
(88, 29, 'Transport', 'nuri', '2026-02-20 07:34:44', NULL, NULL),
(89, 24, 'Uang Makan Supir & Kru', 'nuri', '2026-02-20 07:58:59', NULL, NULL),
(90, 23, 'Tiket Pulang Driver Pendamping', 'nuri', '2026-02-20 08:12:46', NULL, NULL),
(93, 23, 'Handling Vehicle (cargo In)', 'nuri', '2026-02-23 06:34:12', 'nuri', '2026-02-23 06:38:45'),
(94, 23, 'Mcu Crew Atpp', 'nuri', '2026-02-23 06:41:11', 'nuri', '2026-02-23 06:42:26'),
(95, 23, 'Sertifikasi Ebtke Mobil Crane (atpp)', 'nuri', '2026-02-23 06:42:10', NULL, NULL),
(96, 31, 'Gaji Bulanan Sudah Include Bonus Dll', 'mario', '2026-03-04 04:58:11', NULL, NULL),
(97, 25, 'Makan Crew Se', 'nuri', '2026-03-11 08:44:38', NULL, NULL),
(98, 25, 'Makan Malam', 'nuri', '2026-03-11 08:44:51', 'nuri', '2026-03-11 08:50:52'),
(99, 32, 'Medical Ke Dokter', 'nuri', '2026-03-11 08:55:09', NULL, NULL),
(100, 32, 'Urut', 'nuri', '2026-03-11 08:55:18', NULL, NULL),
(101, 26, 'Beli Perlengkapan', 'nuri', '2026-03-11 08:57:47', NULL, NULL),
(102, 32, 'Obat', 'nuri', '2026-03-11 08:59:35', NULL, NULL),
(103, 29, 'Beli Oli', 'nuri', '2026-03-12 04:45:09', NULL, NULL),
(104, 23, 'Uang Tips', 'nuri', '2026-03-12 04:48:24', NULL, NULL),
(105, 33, 'Entertain', 'nuri', '2026-03-12 04:50:11', NULL, NULL),
(106, 23, 'Biaya Pengawalan', 'nuri', '2026-03-12 07:50:45', NULL, NULL),
(107, 25, 'Makan Kru Crane', 'nuri', '2026-03-12 07:51:38', NULL, NULL),
(108, 34, 'Uang Kru Hari Raya', 'nuri', '2026-03-12 08:02:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parameter_fields`
--

CREATE TABLE `parameter_fields` (
  `id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `field_label` varchar(100) NOT NULL,
  `field_type` enum('text','number') NOT NULL,
  `field_role` enum('general','multiplier','price','extra') DEFAULT 'general',
  `created_by_user` varchar(100) DEFAULT 'Sistem',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by_user` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parameter_fields`
--

INSERT INTO `parameter_fields` (`id`, `parameter_id`, `field_label`, `field_type`, `field_role`, `created_by_user`, `created_at`, `updated_by_user`, `updated_at`) VALUES
(1, 1, 'Deskripsi', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(4, 1, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(5, 1, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(81, 25, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(82, 25, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(83, 25, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(84, 31, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(85, 31, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(86, 31, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(87, 32, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(88, 32, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(89, 32, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(93, 34, 'Deskripsi', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(94, 34, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(95, 34, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(96, 35, 'Deskripsi', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(97, 35, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(98, 35, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(99, 36, 'Deskripsi', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(100, 36, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(101, 36, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(102, 37, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(103, 37, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(104, 37, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(105, 38, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(106, 38, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(107, 38, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(108, 39, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(109, 39, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(110, 39, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(111, 40, 'Qty Mobilisasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(112, 40, 'Harga Mobilisasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(114, 40, 'Qty Demob', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(115, 40, 'Harga Demob', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(116, 41, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(117, 41, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(118, 41, 'Durasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(119, 42, 'Qty Mobilisasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(120, 42, 'Harga Mobilisasi', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(121, 42, 'Qty Demob', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(122, 42, 'Harga Demob', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(123, 43, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(124, 43, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(125, 49, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(126, 49, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(127, 50, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(128, 50, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(129, 51, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(130, 51, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(131, 52, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(132, 52, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(133, 53, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(134, 53, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(135, 54, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(136, 54, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(137, 54, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(138, 57, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(139, 57, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(140, 57, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(141, 58, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(142, 58, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(143, 58, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(144, 59, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(145, 59, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(146, 59, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(147, 60, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(148, 60, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(149, 60, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(150, 61, 'Qty', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(151, 61, 'Harga', 'number', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(152, 61, 'Shipper / Nama Logistik', 'text', 'general', 'Sistem', '2026-02-19 04:15:05', NULL, NULL),
(178, 79, 'Deskripsi', 'text', 'general', 'ica', '2026-02-19 04:36:01', NULL, NULL),
(179, 79, 'Harga', 'number', 'price', 'ica', '2026-02-19 04:36:01', NULL, NULL),
(180, 79, 'Jumlah Penumpang', 'number', 'multiplier', 'ica', '2026-02-19 04:36:01', NULL, NULL),
(181, 80, 'Deskripsi', 'text', 'general', 'nuri', '2026-02-19 04:43:13', NULL, NULL),
(182, 80, 'Harga', 'number', 'price', 'nuri', '2026-02-19 04:43:13', NULL, NULL),
(183, 80, 'Durasi', 'number', 'multiplier', 'nuri', '2026-02-19 04:43:13', NULL, NULL),
(184, 81, 'Deskripsi', 'text', 'general', 'mario', '2026-02-19 05:20:23', NULL, NULL),
(185, 81, 'Harga', 'number', 'price', 'mario', '2026-02-19 05:20:23', NULL, NULL),
(186, 81, 'Jumlah Penumpang', 'number', 'multiplier', 'mario', '2026-02-19 05:20:23', NULL, NULL),
(187, 96, 'Nama Orang', 'text', 'general', 'mario', '2026-03-04 04:58:39', NULL, NULL),
(188, 96, 'Total Yang Di Transfer', 'number', 'price', 'mario', '2026-03-04 04:58:39', NULL, NULL),
(189, 96, 'Durasi', 'number', 'multiplier', 'mario', '2026-03-04 04:58:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(150) NOT NULL,
  `customer_name` varchar(150) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'Duration in days',
  `contract_number` varchar(100) DEFAULT NULL,
  `pic_sabs` varchar(100) DEFAULT NULL,
  `pic_customer` varchar(100) DEFAULT NULL,
  `contract_doc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `customer_name`, `location`, `duration`, `contract_number`, `pic_sabs`, `pic_customer`, `contract_doc`, `created_at`, `is_deleted`) VALUES
(4, 'sekincau', 'Star Energy', 'Lampung', 60, 'skc-01', 'ayub', 'merry', '', '2026-02-19 05:16:36', 1),
(5, 'hamiding', 'star energy', 'hamiding - halmahera utara', 90, 'hmd-01', 'ayub', 'merry', '', '2026-02-19 05:17:20', 0),
(6, 'Inspeksi Pressure Chamber', 'Pge', 'Lahendong', 3, '117/PGE242/2026-SO', 'Iyan & Asep', 'Pak Theo', '1777263625_SPK dan PO Jasa Pengecekan Unit Pressure Chamber.pdf', '2026-04-27 04:20:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_costs`
--

CREATE TABLE `project_costs` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `dynamic_values` text DEFAULT NULL COMMENT 'Simpan JSON',
  `total_cost` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by_user` varchar(100) DEFAULT 'Sistem',
  `updated_by_user` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_costs`
--

INSERT INTO `project_costs` (`id`, `project_id`, `parameter_id`, `dynamic_values`, `total_cost`, `created_at`, `created_by_user`, `updated_by_user`, `updated_at`) VALUES
(37, 4, 79, '{\"Deskripsi\":\"Tiket Jakarta Ternate\",\"Harga\":\"2500000\",\"Jumlah Penumpang\":\"6\"}', 15000000.00, '2026-02-19 09:37:35', 'ica', NULL, NULL),
(38, 4, 79, '{\"Deskripsi\":\"Tiket Pesawat Ternate Jakarta\",\"Harga\":\"2600000\",\"Jumlah Penumpang\":\"6\"}', 15600000.00, '2026-02-19 09:37:58', 'ica', NULL, NULL),
(39, 4, 80, '{\"Deskripsi\":\"Sewa Crane Dari Atpp\",\"Harga\":\"175000000\",\"Durasi\":\"2\"}', 350000000.00, '2026-02-19 09:38:20', 'ica', NULL, NULL),
(40, 5, 82, '[]', 2100000.00, '2026-02-20 07:23:48', 'nuri', NULL, NULL),
(42, 5, 86, '[]', 1514700.00, '2026-02-20 07:56:16', 'nuri', 'nuri', '2026-02-23 06:19:23'),
(43, 5, 85, '[]', 13237136.00, '2026-02-20 07:57:14', 'nuri', 'nuri', '2026-02-23 06:29:17'),
(45, 5, 87, '[]', 212700.00, '2026-02-20 07:57:51', 'nuri', NULL, NULL),
(46, 5, 89, '[]', 14200000.00, '2026-02-20 07:59:23', 'nuri', NULL, NULL),
(47, 5, 84, '[]', 3500000.00, '2026-02-20 08:00:07', 'nuri', NULL, NULL),
(48, 5, 81, '{\"Deskripsi\":\"Penyebrangan Log#02 Tobelo-bitung & Makassar-tj. Priok\",\"Harga\":\"24300000\",\"Jumlah Penumpang\":\"\"}', 24300000.00, '2026-02-20 08:02:58', 'nuri', NULL, NULL),
(49, 5, 90, '[]', 1000000.00, '2026-02-20 08:13:05', 'nuri', NULL, NULL),
(50, 5, 80, '{\"Deskripsi\":\"Sewa Crane Ke Atpp\",\"Harga\":\"687410000\",\"Durasi\":\"\"}', 687410000.00, '2026-02-23 04:08:58', 'nuri', 'nuri', '2026-02-23 04:10:20'),
(51, 5, 88, '[]', 46446300.00, '2026-02-23 04:17:18', 'nuri', 'nuri', '2026-02-23 06:27:29'),
(52, 5, 83, '[]', 475602.00, '2026-02-23 06:21:12', 'nuri', NULL, NULL),
(53, 5, 79, '{\"Deskripsi\":\"Tiket Pesawat 6 Orang\",\"Harga\":\"35944502\",\"Jumlah Penumpang\":\"\"}', 35944502.00, '2026-02-23 06:25:32', 'nuri', NULL, NULL),
(55, 5, 93, '[]', 60695000.00, '2026-02-23 06:39:13', 'nuri', NULL, NULL),
(56, 5, 94, '[]', 16130601.00, '2026-02-23 06:43:01', 'nuri', 'nuri', '2026-02-23 06:43:20'),
(57, 5, 95, '[]', 36000000.00, '2026-02-23 06:43:36', 'nuri', NULL, NULL),
(59, 5, 96, '{\"Nama Orang\":\"Rikobasten\",\"Total Yang Di Transfer\":\"65601000\",\"Durasi\":\"1\"}', 65601000.00, '2026-03-05 03:23:00', 'mario', NULL, NULL),
(60, 5, 96, '{\"Nama Orang\":\"Faujan Askuri\",\"Total Yang Di Transfer\":\"6690000\",\"Durasi\":\"1\"}', 6690000.00, '2026-03-05 03:59:40', 'mario', NULL, NULL),
(61, 5, 96, '{\"Nama Orang\":\"Jefri\",\"Total Yang Di Transfer\":\"5600000\",\"Durasi\":\"1\"}', 5600000.00, '2026-03-05 04:00:07', 'mario', NULL, NULL),
(62, 5, 96, '{\"Nama Orang\":\"Mario\",\"Total Yang Di Transfer\":\"7000000\",\"Durasi\":\"1\"}', 7000000.00, '2026-03-05 04:00:19', 'mario', NULL, NULL),
(63, 5, 96, '{\"Nama Orang\":\"Suripno\",\"Total Yang Di Transfer\":\"70300000\",\"Durasi\":\"1\"}', 70300000.00, '2026-03-05 04:00:44', 'mario', NULL, NULL),
(64, 5, 96, '{\"Nama Orang\":\"Novie Andi\",\"Total Yang Di Transfer\":\"41860000\",\"Durasi\":\"1\"}', 41860000.00, '2026-03-05 04:01:14', 'mario', NULL, NULL),
(65, 5, 96, '{\"Nama Orang\":\"Ayub\",\"Total Yang Di Transfer\":\"53400000\",\"Durasi\":\"1\"}', 53400000.00, '2026-03-05 04:01:31', 'mario', NULL, NULL),
(66, 5, 96, '{\"Nama Orang\":\"Zakky\",\"Total Yang Di Transfer\":\"12800000\",\"Durasi\":\"1\"}', 12800000.00, '2026-03-05 04:02:07', 'mario', NULL, NULL),
(67, 5, 96, '{\"Nama Orang\":\"Iman Nugraha\",\"Total Yang Di Transfer\":\"30109100\",\"Durasi\":\"1\"}', 30109100.00, '2026-03-05 04:02:43', 'mario', NULL, NULL),
(68, 5, 96, '{\"Nama Orang\":\"Purwanto\",\"Total Yang Di Transfer\":\"10975000\",\"Durasi\":\"1\"}', 10975000.00, '2026-03-05 04:03:04', 'mario', NULL, NULL),
(69, 5, 88, '[]', 300000.00, '2026-03-11 07:29:46', 'nuri', NULL, NULL),
(70, 5, 88, '[]', 2852000.00, '2026-03-11 07:30:16', 'nuri', NULL, NULL),
(71, 5, 98, '[]', 106000.00, '2026-03-11 08:45:21', 'nuri', NULL, NULL),
(72, 5, 86, '[]', 150000.00, '2026-03-11 08:46:36', 'nuri', NULL, NULL),
(73, 5, 86, '[]', 40000.00, '2026-03-11 08:46:53', 'nuri', NULL, NULL),
(74, 5, 88, '[]', 300000.00, '2026-03-11 08:47:10', 'nuri', NULL, NULL),
(75, 5, 81, '{\"Deskripsi\":\"Kapal Cepat Dari Ternate Ke Sofifi\",\"Harga\":\"512000\",\"Jumlah Penumpang\":\"\"}', 512000.00, '2026-03-11 08:48:05', 'nuri', NULL, NULL),
(76, 5, 83, '[]', 195000.00, '2026-03-11 08:48:34', 'nuri', NULL, NULL),
(77, 5, 88, '[]', 1130000.00, '2026-03-11 08:49:10', 'nuri', NULL, NULL),
(78, 5, 83, '[]', 210000.00, '2026-03-11 08:49:39', 'nuri', NULL, NULL),
(79, 5, 86, '[]', 694000.00, '2026-03-11 08:50:18', 'nuri', NULL, NULL),
(80, 5, 98, '[]', 292000.00, '2026-03-11 08:51:24', 'nuri', NULL, NULL),
(81, 5, 86, '[]', 120000.00, '2026-03-11 08:51:48', 'nuri', NULL, NULL),
(82, 5, 86, '[]', 30000.00, '2026-03-11 08:52:06', 'nuri', NULL, NULL),
(83, 5, 83, '[]', 200000.00, '2026-03-11 08:52:26', 'nuri', NULL, NULL),
(84, 5, 86, '[]', 60000.00, '2026-03-11 08:52:44', 'nuri', NULL, NULL),
(85, 5, 86, '[]', 415000.00, '2026-03-11 08:53:02', 'nuri', NULL, NULL),
(86, 5, 83, '[]', 200000.00, '2026-03-11 08:53:18', 'nuri', NULL, NULL),
(87, 5, 83, '[]', 170000.00, '2026-03-11 08:53:34', 'nuri', NULL, NULL),
(88, 5, 86, '[]', 80000.00, '2026-03-11 08:53:50', 'nuri', NULL, NULL),
(89, 5, 97, '[]', 836000.00, '2026-03-11 08:54:09', 'nuri', NULL, NULL),
(90, 5, 99, '[]', 199000.00, '2026-03-11 08:55:36', 'nuri', NULL, NULL),
(91, 5, 88, '[]', 750044.00, '2026-03-11 08:55:53', 'nuri', NULL, NULL),
(92, 5, 86, '[]', 339100.00, '2026-03-11 08:56:09', 'nuri', NULL, NULL),
(93, 5, 86, '[]', 150000.00, '2026-03-11 08:56:26', 'nuri', NULL, NULL),
(94, 5, 83, '[]', 225000.00, '2026-03-11 08:56:40', 'nuri', NULL, NULL),
(95, 5, 86, '[]', 300000.00, '2026-03-11 08:56:53', 'nuri', NULL, NULL),
(96, 5, 86, '[]', 345000.00, '2026-03-11 08:57:04', 'nuri', NULL, NULL),
(97, 5, 101, '[]', 230000.00, '2026-03-11 08:58:09', 'nuri', NULL, NULL),
(98, 5, 83, '[]', 180000.00, '2026-03-11 08:58:34', 'nuri', NULL, NULL),
(99, 5, 83, '[]', 210000.00, '2026-03-11 08:58:48', 'nuri', NULL, NULL),
(100, 5, 86, '[]', 350000.00, '2026-03-11 08:59:03', 'nuri', NULL, NULL),
(101, 5, 102, '[]', 51000.00, '2026-03-11 08:59:54', 'nuri', NULL, NULL),
(102, 5, 86, '[]', 270000.00, '2026-03-11 09:00:08', 'nuri', NULL, NULL),
(103, 5, 86, '[]', 350000.00, '2026-03-11 09:00:22', 'nuri', NULL, NULL),
(104, 5, 83, '[]', 180000.00, '2026-03-11 09:00:35', 'nuri', NULL, NULL),
(105, 5, 102, '[]', 22000.00, '2026-03-11 09:00:49', 'nuri', NULL, NULL),
(106, 5, 86, '[]', 105000.00, '2026-03-11 09:01:01', 'nuri', NULL, NULL),
(107, 5, 100, '[]', 400000.00, '2026-03-11 09:01:17', 'nuri', NULL, NULL),
(108, 5, 88, '[]', 450140.00, '2026-03-11 09:01:33', 'nuri', NULL, NULL),
(109, 5, 101, '[]', 355000.00, '2026-03-11 09:01:48', 'nuri', NULL, NULL),
(110, 5, 83, '[]', 80000.00, '2026-03-11 09:02:11', 'nuri', NULL, NULL),
(111, 5, 103, '[]', 598000.00, '2026-03-12 04:45:22', 'nuri', NULL, NULL),
(112, 5, 101, '[]', 2300000.00, '2026-03-12 04:45:50', 'nuri', NULL, NULL),
(113, 5, 86, '[]', 90000.00, '2026-03-12 04:46:02', 'nuri', NULL, NULL),
(114, 5, 86, '[]', 200000.00, '2026-03-12 04:46:41', 'nuri', NULL, NULL),
(115, 5, 86, '[]', 281000.00, '2026-03-12 04:47:01', 'nuri', NULL, NULL),
(116, 5, 86, '[]', 80000.00, '2026-03-12 04:47:17', 'nuri', NULL, NULL),
(117, 5, 83, '[]', 190000.00, '2026-03-12 04:47:28', 'nuri', NULL, NULL),
(118, 5, 86, '[]', 300000.00, '2026-03-12 04:47:46', 'nuri', NULL, NULL),
(119, 5, 104, '[]', 300000.00, '2026-03-12 04:48:38', 'nuri', NULL, NULL),
(120, 5, 86, '[]', 23900.00, '2026-03-12 04:48:59', 'nuri', NULL, NULL),
(121, 5, 105, '[]', 450000.00, '2026-03-12 04:50:45', 'nuri', NULL, NULL),
(122, 5, 101, '[]', 58000.00, '2026-03-12 04:50:59', 'nuri', NULL, NULL),
(123, 5, 102, '[]', 74000.00, '2026-03-12 04:51:11', 'nuri', NULL, NULL),
(124, 5, 89, '[]', 6000000.00, '2026-03-12 04:51:26', 'nuri', NULL, NULL),
(125, 5, 103, '[]', 2240000.00, '2026-03-12 04:51:51', 'nuri', NULL, NULL),
(126, 5, 83, '[]', 180000.00, '2026-03-12 04:52:04', 'nuri', NULL, NULL),
(127, 5, 86, '[]', 270000.00, '2026-03-12 04:52:17', 'nuri', NULL, NULL),
(128, 5, 101, '[]', 70000.00, '2026-03-12 04:52:32', 'nuri', NULL, NULL),
(129, 5, 86, '[]', 173100.00, '2026-03-12 04:52:47', 'nuri', NULL, NULL),
(130, 5, 101, '[]', 130000.00, '2026-03-12 04:52:59', 'nuri', NULL, NULL),
(131, 5, 83, '[]', 240000.00, '2026-03-12 04:53:12', 'nuri', NULL, NULL),
(132, 5, 86, '[]', 180000.00, '2026-03-12 04:53:33', 'nuri', NULL, NULL),
(133, 5, 97, '[]', 715000.00, '2026-03-12 04:53:41', 'nuri', NULL, NULL),
(134, 5, 88, '[]', 700000.00, '2026-03-12 04:54:28', 'nuri', NULL, NULL),
(135, 5, 105, '[]', 5000000.00, '2026-03-12 04:54:44', 'nuri', NULL, NULL),
(136, 5, 86, '[]', 202000.00, '2026-03-12 04:54:59', 'nuri', NULL, NULL),
(137, 5, 97, '[]', 491000.00, '2026-03-12 04:55:15', 'nuri', NULL, NULL),
(138, 5, 88, '[]', 450140.00, '2026-03-12 04:55:29', 'nuri', NULL, NULL),
(139, 5, 83, '[]', 180000.00, '2026-03-12 04:55:39', 'nuri', NULL, NULL),
(140, 5, 86, '[]', 100000.00, '2026-03-12 04:56:44', 'nuri', NULL, NULL),
(141, 5, 105, '[]', 200000.00, '2026-03-12 04:56:53', 'nuri', NULL, NULL),
(142, 5, 101, '[]', 270000.00, '2026-03-12 04:57:08', 'nuri', NULL, NULL),
(143, 5, 101, '[]', 135000.00, '2026-03-12 04:57:22', 'nuri', NULL, NULL),
(144, 5, 102, '[]', 18000.00, '2026-03-12 04:57:39', 'nuri', NULL, NULL),
(145, 5, 86, '[]', 71900.00, '2026-03-12 04:57:57', 'nuri', NULL, NULL),
(146, 5, 86, '[]', 350000.00, '2026-03-12 04:58:05', 'nuri', NULL, NULL),
(147, 5, 83, '[]', 200000.00, '2026-03-12 04:58:16', 'nuri', NULL, NULL),
(148, 5, 86, '[]', 130000.00, '2026-03-12 04:58:28', 'nuri', NULL, NULL),
(149, 5, 86, '[]', 155000.00, '2026-03-12 04:58:47', 'nuri', NULL, NULL),
(150, 5, 101, '[]', 100000.00, '2026-03-12 04:58:56', 'nuri', NULL, NULL),
(151, 5, 86, '[]', 46200.00, '2026-03-12 04:59:09', 'nuri', NULL, NULL),
(152, 5, 83, '[]', 200000.00, '2026-03-12 04:59:19', 'nuri', NULL, NULL),
(153, 5, 86, '[]', 435000.00, '2026-03-12 04:59:32', 'nuri', NULL, NULL),
(154, 5, 86, '[]', 80000.00, '2026-03-12 04:59:48', 'nuri', NULL, NULL),
(155, 5, 83, '[]', 200000.00, '2026-03-12 05:00:03', 'nuri', NULL, NULL),
(156, 5, 86, '[]', 135000.00, '2026-03-12 05:00:14', 'nuri', NULL, NULL),
(157, 5, 86, '[]', 358000.00, '2026-03-12 05:00:25', 'nuri', NULL, NULL),
(158, 5, 86, '[]', 170000.00, '2026-03-12 05:00:37', 'nuri', NULL, NULL),
(159, 5, 86, '[]', 202000.00, '2026-03-12 05:00:48', 'nuri', NULL, NULL),
(160, 5, 86, '[]', 32500.00, '2026-03-12 05:00:59', 'nuri', NULL, NULL),
(161, 5, 86, '[]', 79000.00, '2026-03-12 05:01:12', 'nuri', NULL, NULL),
(162, 5, 86, '[]', 10500.00, '2026-03-12 05:01:28', 'nuri', NULL, NULL),
(163, 5, 101, '[]', 41500.00, '2026-03-12 05:01:43', 'nuri', NULL, NULL),
(164, 5, 83, '[]', 200000.00, '2026-03-12 05:01:54', 'nuri', NULL, NULL),
(165, 5, 86, '[]', 220000.00, '2026-03-12 05:02:13', 'nuri', NULL, NULL),
(166, 5, 86, '[]', 150000.00, '2026-03-12 05:02:22', 'nuri', NULL, NULL),
(167, 5, 83, '[]', 175000.00, '2026-03-12 05:02:35', 'nuri', NULL, NULL),
(168, 5, 87, '[]', 2180000.00, '2026-03-12 05:02:48', 'nuri', NULL, NULL),
(169, 5, 86, '[]', 450000.00, '2026-03-12 05:03:02', 'nuri', NULL, NULL),
(170, 5, 97, '[]', 690000.00, '2026-03-12 05:03:14', 'nuri', NULL, NULL),
(171, 5, 88, '[]', 937200.00, '2026-03-12 05:03:30', 'nuri', NULL, NULL),
(172, 5, 83, '[]', 225000.00, '2026-03-12 05:03:42', 'nuri', NULL, NULL),
(173, 5, 86, '[]', 240000.00, '2026-03-12 05:03:58', 'nuri', NULL, NULL),
(174, 5, 86, '[]', 90000.00, '2026-03-12 05:04:11', 'nuri', NULL, NULL),
(175, 5, 102, '[]', 50000.00, '2026-03-12 05:04:26', 'nuri', NULL, NULL),
(176, 5, 83, '[]', 200000.00, '2026-03-12 05:04:38', 'nuri', NULL, NULL),
(177, 5, 86, '[]', 25400.00, '2026-03-12 05:04:49', 'nuri', NULL, NULL),
(178, 5, 86, '[]', 40000.00, '2026-03-12 05:05:23', 'nuri', NULL, NULL),
(179, 5, 101, '[]', 230000.00, '2026-03-12 05:05:23', 'nuri', NULL, NULL),
(180, 5, 101, '[]', 250000.00, '2026-03-12 05:05:42', 'nuri', NULL, NULL),
(181, 5, 97, '[]', 597000.00, '2026-03-12 05:05:54', 'nuri', NULL, NULL),
(182, 5, 105, '[]', 85000.00, '2026-03-12 05:06:12', 'nuri', NULL, NULL),
(183, 5, 101, '[]', 376500.00, '2026-03-12 05:06:34', 'nuri', NULL, NULL),
(184, 5, 86, '[]', 270000.00, '2026-03-12 05:11:24', 'nuri', NULL, NULL),
(185, 5, 101, '[]', 182500.00, '2026-03-12 05:11:24', 'nuri', NULL, NULL),
(186, 5, 86, '[]', 256000.00, '2026-03-12 05:11:48', 'nuri', NULL, NULL),
(187, 5, 86, '[]', 257900.00, '2026-03-12 05:11:57', 'nuri', NULL, NULL),
(188, 5, 83, '[]', 200000.00, '2026-03-12 05:12:08', 'nuri', NULL, NULL),
(189, 5, 89, '[]', 10000000.00, '2026-03-12 05:12:21', 'nuri', NULL, NULL),
(190, 5, 83, '[]', 200000.00, '2026-03-12 05:12:37', 'nuri', NULL, NULL),
(191, 5, 105, '[]', 700000.00, '2026-03-12 05:12:51', 'nuri', NULL, NULL),
(192, 5, 83, '[]', 200000.00, '2026-03-12 05:13:00', 'nuri', NULL, NULL),
(193, 5, 87, '[]', 550000.00, '2026-03-12 05:13:16', 'nuri', NULL, NULL),
(194, 5, 86, '[]', 80000.00, '2026-03-12 05:13:28', 'nuri', NULL, NULL),
(195, 5, 86, '[]', 346000.00, '2026-03-12 05:13:38', 'nuri', NULL, NULL),
(196, 5, 83, '[]', 200000.00, '2026-03-12 05:13:50', 'nuri', NULL, NULL),
(197, 5, 101, '[]', 150200.00, '2026-03-12 05:14:14', 'nuri', NULL, NULL),
(198, 5, 101, '[]', 230000.00, '2026-03-12 05:14:31', 'nuri', NULL, NULL),
(199, 5, 101, '[]', 280000.00, '2026-03-12 05:14:42', 'nuri', NULL, NULL),
(200, 5, 101, '[]', 57000.00, '2026-03-12 05:14:53', 'nuri', NULL, NULL),
(201, 5, 86, '[]', 64600.00, '2026-03-12 05:15:04', 'nuri', NULL, NULL),
(202, 5, 83, '[]', 200000.00, '2026-03-12 05:15:17', 'nuri', NULL, NULL),
(203, 5, 105, '[]', 25000.00, '2026-03-12 05:15:28', 'nuri', NULL, NULL),
(204, 5, 105, '[]', 30000.00, '2026-03-12 05:15:40', 'nuri', NULL, NULL),
(205, 5, 86, '[]', 125000.00, '2026-03-12 05:15:58', 'nuri', NULL, NULL),
(206, 5, 86, '[]', 48000.00, '2026-03-12 05:16:10', 'nuri', NULL, NULL),
(207, 5, 88, '[]', 866200.00, '2026-03-12 05:16:25', 'nuri', NULL, NULL),
(208, 5, 83, '[]', 200000.00, '2026-03-12 05:16:40', 'nuri', NULL, NULL),
(209, 5, 83, '[]', 200000.00, '2026-03-12 05:16:51', 'nuri', NULL, NULL),
(210, 5, 86, '[]', 124500.00, '2026-03-12 05:17:03', 'nuri', NULL, NULL),
(211, 5, 86, '[]', 320000.00, '2026-03-12 05:17:15', 'nuri', NULL, NULL),
(212, 5, 102, '[]', 424000.00, '2026-03-12 05:17:45', 'nuri', NULL, NULL),
(213, 5, 83, '[]', 200000.00, '2026-03-12 05:17:56', 'nuri', NULL, NULL),
(214, 5, 86, '[]', 115000.00, '2026-03-12 05:18:15', 'nuri', NULL, NULL),
(215, 5, 83, '[]', 200000.00, '2026-03-12 05:18:24', 'nuri', NULL, NULL),
(216, 5, 86, '[]', 235000.00, '2026-03-12 05:18:46', 'nuri', NULL, NULL),
(217, 5, 88, '[]', 200000.00, '2026-03-12 05:19:12', 'nuri', NULL, NULL),
(218, 5, 103, '[]', 2240000.00, '2026-03-12 05:19:29', 'nuri', NULL, NULL),
(219, 5, 83, '[]', 200000.00, '2026-03-12 05:19:43', 'nuri', NULL, NULL),
(220, 5, 97, '[]', 451000.00, '2026-03-12 05:19:55', 'nuri', NULL, NULL),
(221, 5, 101, '[]', 1035000.00, '2026-03-12 05:20:10', 'nuri', NULL, NULL),
(222, 5, 89, '[]', 10000000.00, '2026-03-12 05:20:25', 'nuri', NULL, NULL),
(223, 5, 87, '[]', 1200000.00, '2026-03-12 05:20:34', 'nuri', NULL, NULL),
(224, 5, 83, '[]', 200000.00, '2026-03-12 05:23:19', 'nuri', NULL, NULL),
(225, 5, 86, '[]', 240000.00, '2026-03-12 05:23:33', 'nuri', NULL, NULL),
(226, 5, 88, '[]', 27000000.00, '2026-03-12 05:23:48', 'nuri', NULL, NULL),
(227, 5, 85, '[]', 7000000.00, '2026-03-12 05:24:03', 'nuri', NULL, NULL),
(228, 5, 105, '[]', 160000.00, '2026-03-12 05:24:21', 'nuri', NULL, NULL),
(229, 5, 83, '[]', 200000.00, '2026-03-12 05:24:33', 'nuri', NULL, NULL),
(230, 5, 86, '[]', 103200.00, '2026-03-12 05:25:18', 'nuri', NULL, NULL),
(231, 5, 83, '[]', 200000.00, '2026-03-12 05:25:28', 'nuri', NULL, NULL),
(232, 5, 88, '[]', 994000.00, '2026-03-12 05:25:40', 'nuri', NULL, NULL),
(233, 5, 105, '[]', 1250000.00, '2026-03-12 05:26:36', 'nuri', NULL, NULL),
(234, 5, 88, '[]', 2500000.00, '2026-03-12 05:27:02', 'nuri', NULL, NULL),
(235, 5, 86, '[]', 65056.00, '2026-03-12 05:27:14', 'nuri', NULL, NULL),
(236, 5, 83, '[]', 200000.00, '2026-03-12 05:27:25', 'nuri', NULL, NULL),
(237, 5, 105, '[]', 852000.00, '2026-03-12 05:27:37', 'nuri', NULL, NULL),
(238, 5, 86, '[]', 49950.00, '2026-03-12 05:27:52', 'nuri', NULL, NULL),
(239, 5, 83, '[]', 200000.00, '2026-03-12 05:28:03', 'nuri', NULL, NULL),
(240, 5, 86, '[]', 425000.00, '2026-03-12 05:28:14', 'nuri', NULL, NULL),
(241, 5, 102, '[]', 240000.00, '2026-03-12 05:28:29', 'nuri', NULL, NULL),
(242, 5, 86, '[]', 540000.00, '2026-03-12 05:28:41', 'nuri', NULL, NULL),
(243, 5, 83, '[]', 200000.00, '2026-03-12 05:28:58', 'nuri', NULL, NULL),
(244, 5, 83, '[]', 200000.00, '2026-03-12 05:29:11', 'nuri', NULL, NULL),
(245, 5, 101, '[]', 250000.00, '2026-03-12 05:29:28', 'nuri', NULL, NULL),
(246, 5, 101, '[]', 580000.00, '2026-03-12 05:29:40', 'nuri', NULL, NULL),
(247, 5, 86, '[]', 270000.00, '2026-03-12 05:29:51', 'nuri', NULL, NULL),
(248, 5, 102, '[]', 62543.00, '2026-03-12 05:30:11', 'nuri', NULL, NULL),
(249, 5, 83, '[]', 200000.00, '2026-03-12 05:30:22', 'nuri', NULL, NULL),
(250, 5, 86, '[]', 605000.00, '2026-03-12 05:30:39', 'nuri', NULL, NULL),
(251, 5, 83, '[]', 200000.00, '2026-03-12 05:30:50', 'nuri', NULL, NULL),
(252, 5, 86, '[]', 109000.00, '2026-03-12 05:31:02', 'nuri', NULL, NULL),
(253, 5, 86, '[]', 92100.00, '2026-03-12 05:31:15', 'nuri', NULL, NULL),
(254, 5, 86, '[]', 360000.00, '2026-03-12 05:31:29', 'nuri', NULL, NULL),
(255, 5, 88, '[]', 922000.00, '2026-03-12 05:31:40', 'nuri', NULL, NULL),
(256, 5, 83, '[]', 200000.00, '2026-03-12 05:31:51', 'nuri', NULL, NULL),
(257, 5, 99, '[]', 800000.00, '2026-03-12 05:32:15', 'nuri', NULL, NULL),
(258, 5, 86, '[]', 255000.00, '2026-03-12 05:32:32', 'nuri', NULL, NULL),
(259, 5, 89, '[]', 10000000.00, '2026-03-12 05:32:43', 'nuri', NULL, NULL),
(260, 5, 87, '[]', 1250000.00, '2026-03-12 05:32:59', 'nuri', NULL, NULL),
(261, 5, 83, '[]', 200000.00, '2026-03-12 05:33:13', 'nuri', NULL, NULL),
(262, 5, 101, '[]', 450000.00, '2026-03-12 05:33:29', 'nuri', NULL, NULL),
(263, 5, 86, '[]', 42000.00, '2026-03-12 05:33:46', 'nuri', NULL, NULL),
(264, 5, 86, '[]', 75000.00, '2026-03-12 07:48:05', 'nuri', NULL, NULL),
(265, 5, 83, '[]', 200000.00, '2026-03-12 07:48:31', 'nuri', NULL, NULL),
(266, 5, 86, '[]', 410000.00, '2026-03-12 07:48:42', 'nuri', NULL, NULL),
(267, 5, 86, '[]', 270000.00, '2026-03-12 07:48:53', 'nuri', NULL, NULL),
(268, 5, 83, '[]', 200000.00, '2026-03-12 07:49:03', 'nuri', NULL, NULL),
(269, 5, 97, '[]', 466000.00, '2026-03-12 07:49:28', 'nuri', NULL, NULL),
(270, 5, 86, '[]', 215500.00, '2026-03-12 07:49:35', 'nuri', NULL, NULL),
(271, 5, 106, '[]', 2500000.00, '2026-03-12 07:51:06', 'nuri', NULL, NULL),
(272, 5, 83, '[]', 200000.00, '2026-03-12 07:51:17', 'nuri', NULL, NULL),
(273, 5, 107, '[]', 375000.00, '2026-03-12 07:51:54', 'nuri', NULL, NULL),
(274, 5, 88, '[]', 930000.00, '2026-03-12 07:52:08', 'nuri', NULL, NULL),
(275, 5, 86, '[]', 540000.00, '2026-03-12 07:52:24', 'nuri', NULL, NULL),
(276, 5, 86, '[]', 417000.00, '2026-03-12 07:52:44', 'nuri', NULL, NULL),
(277, 5, 83, '[]', 200000.00, '2026-03-12 07:52:58', 'nuri', NULL, NULL),
(278, 5, 107, '[]', 415000.00, '2026-03-12 07:53:16', 'nuri', NULL, NULL),
(279, 5, 86, '[]', 82500.00, '2026-03-12 07:53:24', 'nuri', NULL, NULL),
(280, 5, 86, '[]', 368000.00, '2026-03-12 07:53:36', 'nuri', NULL, NULL),
(281, 5, 101, '[]', 375000.00, '2026-03-12 07:53:53', 'nuri', NULL, NULL),
(282, 5, 88, '[]', 550000.00, '2026-03-12 07:54:24', 'nuri', NULL, NULL),
(283, 5, 83, '[]', 200000.00, '2026-03-12 07:54:37', 'nuri', NULL, NULL),
(284, 5, 107, '[]', 420000.00, '2026-03-12 07:54:52', 'nuri', NULL, NULL),
(285, 5, 86, '[]', 415000.00, '2026-03-12 07:55:03', 'nuri', NULL, NULL),
(286, 5, 86, '[]', 284200.00, '2026-03-12 07:55:21', 'nuri', NULL, NULL),
(287, 5, 83, '[]', 200000.00, '2026-03-12 07:55:31', 'nuri', NULL, NULL),
(288, 5, 107, '[]', 375000.00, '2026-03-12 07:55:48', 'nuri', NULL, NULL),
(289, 5, 86, '[]', 470000.00, '2026-03-12 07:55:57', 'nuri', NULL, NULL),
(290, 5, 83, '[]', 200000.00, '2026-03-12 07:56:12', 'nuri', NULL, NULL),
(291, 5, 107, '[]', 375000.00, '2026-03-12 07:56:26', 'nuri', NULL, NULL),
(292, 5, 86, '[]', 332000.00, '2026-03-12 07:56:40', 'nuri', NULL, NULL),
(293, 5, 88, '[]', 2500000.00, '2026-03-12 07:56:55', 'nuri', NULL, NULL),
(294, 5, 88, '[]', 198000.00, '2026-03-12 07:57:36', 'nuri', NULL, NULL),
(295, 5, 103, '[]', 2240000.00, '2026-03-12 07:57:52', 'nuri', NULL, NULL),
(296, 5, 83, '[]', 200000.00, '2026-03-12 07:58:11', 'nuri', NULL, NULL),
(297, 5, 107, '[]', 375000.00, '2026-03-12 07:58:30', 'nuri', NULL, NULL),
(298, 5, 86, '[]', 600000.00, '2026-03-12 07:58:41', 'nuri', NULL, NULL),
(299, 5, 83, '[]', 200000.00, '2026-03-12 07:59:05', 'nuri', NULL, NULL),
(300, 5, 107, '[]', 375000.00, '2026-03-12 07:59:05', 'nuri', NULL, NULL),
(301, 5, 89, '[]', 10000000.00, '2026-03-12 07:59:18', 'nuri', NULL, NULL),
(302, 5, 105, '[]', 620000.00, '2026-03-12 07:59:35', 'nuri', NULL, NULL),
(303, 5, 86, '[]', 50000.00, '2026-03-12 07:59:45', 'nuri', NULL, NULL),
(304, 5, 101, '[]', 80500.00, '2026-03-12 08:00:06', 'nuri', NULL, NULL),
(305, 5, 101, '[]', 171000.00, '2026-03-12 08:00:20', 'nuri', NULL, NULL),
(306, 5, 105, '[]', 750000.00, '2026-03-12 08:00:34', 'nuri', NULL, NULL),
(307, 5, 88, '[]', 945000.00, '2026-03-12 08:00:46', 'nuri', NULL, NULL),
(308, 5, 86, '[]', 200000.00, '2026-03-12 08:00:59', 'nuri', NULL, NULL),
(309, 5, 83, '[]', 200000.00, '2026-03-12 08:01:23', 'nuri', NULL, NULL),
(310, 5, 107, '[]', 375000.00, '2026-03-12 08:01:23', 'nuri', NULL, NULL),
(311, 5, 108, '[]', 2000000.00, '2026-03-12 08:04:30', 'nuri', NULL, NULL),
(312, 5, 86, '[]', 360000.00, '2026-03-12 08:05:27', 'nuri', NULL, NULL),
(313, 5, 83, '[]', 200000.00, '2026-03-12 08:05:53', 'nuri', NULL, NULL),
(314, 5, 107, '[]', 375000.00, '2026-03-12 08:05:53', 'nuri', NULL, NULL),
(315, 5, 86, '[]', 710090.00, '2026-03-12 08:06:09', 'nuri', NULL, NULL),
(316, 5, 87, '[]', 840000.00, '2026-03-12 08:06:20', 'nuri', NULL, NULL),
(317, 5, 87, '[]', 1300000.00, '2026-03-12 08:06:31', 'nuri', NULL, NULL),
(318, 5, 83, '[]', 200000.00, '2026-03-12 08:06:49', 'nuri', NULL, NULL),
(319, 5, 107, '[]', 375000.00, '2026-03-12 08:06:49', 'nuri', NULL, NULL),
(320, 5, 83, '[]', 200000.00, '2026-03-12 08:07:10', 'nuri', NULL, NULL),
(321, 5, 107, '[]', 375000.00, '2026-03-12 08:07:10', 'nuri', NULL, NULL),
(322, 5, 86, '[]', 180000.00, '2026-03-12 08:07:40', 'nuri', NULL, NULL),
(323, 5, 83, '[]', 200000.00, '2026-03-12 08:07:59', 'nuri', NULL, NULL),
(324, 5, 107, '[]', 375000.00, '2026-03-12 08:07:59', 'nuri', NULL, NULL),
(325, 5, 88, '[]', 788000.00, '2026-03-12 08:08:16', 'nuri', NULL, NULL),
(326, 5, 86, '[]', 83800.00, '2026-03-12 08:08:28', 'nuri', NULL, NULL),
(327, 5, 86, '[]', 31200.00, '2026-03-12 08:08:43', 'nuri', NULL, NULL),
(328, 5, 83, '[]', 200000.00, '2026-03-12 08:09:07', 'nuri', NULL, NULL),
(329, 5, 107, '[]', 375000.00, '2026-03-12 08:09:07', 'nuri', NULL, NULL),
(330, 5, 86, '[]', 420000.00, '2026-03-12 08:09:22', 'nuri', NULL, NULL),
(331, 5, 83, '[]', 200000.00, '2026-03-12 08:09:38', 'nuri', NULL, NULL),
(332, 5, 107, '[]', 375000.00, '2026-03-12 08:09:38', 'nuri', NULL, NULL),
(333, 5, 86, '[]', 36000.00, '2026-03-12 08:09:55', 'nuri', NULL, NULL),
(334, 5, 105, '[]', 2500000.00, '2026-03-12 08:10:12', 'nuri', NULL, NULL),
(335, 5, 88, '[]', 120000.00, '2026-03-12 08:10:30', 'nuri', NULL, NULL),
(336, 5, 83, '[]', 200000.00, '2026-03-12 08:11:00', 'nuri', NULL, NULL),
(337, 5, 107, '[]', 375000.00, '2026-03-12 08:11:00', 'nuri', NULL, NULL),
(338, 5, 86, '[]', 310000.00, '2026-03-12 08:11:13', 'nuri', NULL, NULL),
(339, 5, 83, '[]', 200000.00, '2026-03-12 08:11:27', 'nuri', NULL, NULL),
(340, 5, 107, '[]', 375000.00, '2026-03-12 08:11:27', 'nuri', NULL, NULL),
(341, 5, 86, '[]', 190000.00, '2026-03-12 08:11:44', 'nuri', NULL, NULL),
(342, 5, 89, '[]', 10000000.00, '2026-03-12 08:11:54', 'nuri', NULL, NULL),
(343, 5, 86, '[]', 350000.00, '2026-03-12 08:12:05', 'nuri', NULL, NULL),
(344, 5, 83, '[]', 200000.00, '2026-03-12 08:12:24', 'nuri', NULL, NULL),
(345, 5, 107, '[]', 375000.00, '2026-03-12 08:12:24', 'nuri', NULL, NULL),
(346, 5, 86, '[]', 140000.00, '2026-03-12 08:12:39', 'nuri', NULL, NULL),
(347, 5, 86, '[]', 400000.00, '2026-03-12 08:12:56', 'nuri', NULL, NULL),
(348, 5, 83, '[]', 200000.00, '2026-03-12 08:13:13', 'nuri', NULL, NULL),
(349, 5, 107, '[]', 375000.00, '2026-03-12 08:13:13', 'nuri', NULL, NULL),
(350, 5, 87, '[]', 1200000.00, '2026-03-12 08:13:28', 'nuri', NULL, NULL),
(351, 5, 87, '[]', 1400000.00, '2026-03-12 08:13:36', 'nuri', NULL, NULL),
(352, 5, 83, '[]', 200000.00, '2026-03-12 08:13:59', 'nuri', NULL, NULL),
(353, 5, 107, '[]', 375000.00, '2026-03-12 08:13:59', 'nuri', NULL, NULL),
(354, 5, 88, '[]', 952000.00, '2026-03-12 08:14:17', 'nuri', NULL, NULL),
(355, 5, 83, '[]', 200000.00, '2026-03-12 08:14:41', 'nuri', NULL, NULL),
(356, 5, 107, '[]', 375000.00, '2026-03-12 08:14:41', 'nuri', NULL, NULL),
(357, 5, 88, '[]', 71000.00, '2026-03-12 08:15:01', 'nuri', NULL, NULL),
(358, 5, 105, '[]', 500000.00, '2026-03-12 08:15:17', 'nuri', NULL, NULL),
(359, 5, 83, '[]', 200000.00, '2026-03-12 08:15:31', 'nuri', NULL, NULL),
(360, 5, 107, '[]', 375000.00, '2026-03-12 08:15:31', 'nuri', NULL, NULL),
(361, 5, 88, '[]', 27000000.00, '2026-03-12 08:15:48', 'nuri', NULL, NULL),
(362, 5, 85, '[]', 7000000.00, '2026-03-12 08:16:01', 'nuri', NULL, NULL),
(363, 5, 86, '[]', 356000.00, '2026-03-12 08:16:16', 'nuri', NULL, NULL),
(364, 5, 83, '[]', 200000.00, '2026-03-12 08:16:32', 'nuri', NULL, NULL),
(365, 5, 107, '[]', 375000.00, '2026-03-12 08:16:32', 'nuri', NULL, NULL),
(366, 5, 88, '[]', 300000.00, '2026-03-12 08:16:51', 'nuri', NULL, NULL),
(367, 5, 83, '[]', 200000.00, '2026-03-12 08:17:14', 'nuri', NULL, NULL),
(368, 5, 107, '[]', 375000.00, '2026-03-12 08:17:14', 'nuri', NULL, NULL),
(369, 5, 86, '[]', 560000.00, '2026-03-12 08:17:43', 'nuri', NULL, NULL),
(370, 5, 86, '[]', 405000.00, '2026-03-12 08:17:57', 'nuri', NULL, NULL),
(371, 5, 86, '[]', 389000.00, '2026-03-12 08:18:12', 'nuri', NULL, NULL),
(372, 5, 83, '[]', 200000.00, '2026-03-12 08:18:26', 'nuri', NULL, NULL),
(373, 5, 107, '[]', 375000.00, '2026-03-12 08:18:26', 'nuri', NULL, NULL),
(374, 5, 101, '[]', 1050000.00, '2026-03-12 08:18:53', 'nuri', NULL, NULL),
(375, 5, 101, '[]', 126627.00, '2026-03-12 08:19:16', 'nuri', NULL, NULL),
(376, 5, 105, '[]', 630000.00, '2026-03-12 08:19:36', 'nuri', NULL, NULL),
(377, 5, 97, '[]', 289000.00, '2026-03-12 08:19:47', 'nuri', NULL, NULL),
(378, 5, 86, '[]', 376600.00, '2026-03-12 08:19:58', 'nuri', NULL, NULL),
(379, 5, 83, '[]', 200000.00, '2026-03-12 08:20:24', 'nuri', NULL, NULL),
(380, 5, 107, '[]', 375000.00, '2026-03-12 08:20:24', 'nuri', 'nuri', '2026-03-12 08:20:33'),
(381, 5, 97, '[]', 180000.00, '2026-03-12 08:20:52', 'nuri', NULL, NULL),
(382, 5, 88, '[]', 855000.00, '2026-03-12 08:21:03', 'nuri', NULL, NULL),
(383, 5, 83, '[]', 200000.00, '2026-03-12 08:21:24', 'nuri', NULL, NULL),
(384, 5, 107, '[]', 455000.00, '2026-03-12 08:21:24', 'nuri', NULL, NULL),
(385, 5, 86, '[]', 180000.00, '2026-03-12 08:21:52', 'nuri', NULL, NULL),
(386, 5, 101, '[]', 170000.00, '2026-03-12 08:21:52', 'nuri', NULL, NULL),
(387, 5, 104, '[]', 300000.00, '2026-03-12 08:22:32', 'nuri', NULL, NULL),
(388, 5, 101, '[]', 4310000.00, '2026-03-12 08:22:47', 'nuri', NULL, NULL),
(389, 5, 101, '[]', 1585000.00, '2026-03-12 08:23:15', 'nuri', NULL, NULL),
(390, 5, 86, '[]', 346000.00, '2026-03-12 08:23:39', 'nuri', NULL, NULL),
(391, 5, 87, '[]', 630000.00, '2026-03-12 08:23:50', 'nuri', NULL, NULL),
(392, 5, 87, '[]', 900000.00, '2026-03-12 08:24:01', 'nuri', NULL, NULL),
(393, 5, 89, '[]', 10000000.00, '2026-03-12 08:24:13', 'nuri', NULL, NULL),
(394, 5, 83, '[]', 200000.00, '2026-03-12 08:24:37', 'nuri', NULL, NULL),
(395, 5, 107, '[]', 500000.00, '2026-03-12 08:24:37', 'nuri', NULL, NULL),
(396, 5, 83, '[]', 200000.00, '2026-03-12 08:24:57', 'nuri', NULL, NULL),
(397, 5, 86, '[]', 94000.00, '2026-03-12 08:25:12', 'nuri', NULL, NULL),
(398, 5, 86, '[]', 70100.00, '2026-03-12 08:25:28', 'nuri', NULL, NULL),
(399, 5, 88, '[]', 950000.00, '2026-03-12 08:25:45', 'nuri', NULL, NULL),
(400, 5, 88, '[]', 200000.00, '2026-03-12 08:25:56', 'nuri', NULL, NULL),
(401, 5, 85, '[]', 1100000.00, '2026-03-12 08:26:13', 'nuri', NULL, NULL),
(402, 5, 98, '[]', 185000.00, '2026-03-12 08:26:25', 'nuri', NULL, NULL),
(403, 5, 88, '[]', 200000.00, '2026-03-12 08:26:38', 'nuri', NULL, NULL),
(404, 5, 83, '[]', 420000.00, '2026-03-12 08:26:59', 'nuri', NULL, NULL),
(405, 5, 83, '[]', 540000.00, '2026-03-12 08:27:17', 'nuri', NULL, NULL),
(406, 5, 88, '[]', 871000.00, '2026-03-12 08:27:32', 'nuri', NULL, NULL),
(407, 5, 88, '[]', 25500.00, '2026-03-12 08:27:46', 'nuri', NULL, NULL),
(408, 5, 89, '[]', 6000000.00, '2026-03-12 08:33:13', 'nuri', NULL, NULL),
(409, 5, 88, '[]', 308500.00, '2026-03-13 03:42:53', 'nuri', NULL, NULL),
(410, 5, 88, '[]', 400000.00, '2026-03-13 03:43:04', 'nuri', NULL, NULL),
(411, 5, 83, '[]', 138000.00, '2026-03-13 03:43:39', 'nuri', NULL, NULL),
(412, 5, 83, '[]', 265000.00, '2026-03-13 03:51:16', 'nuri', NULL, NULL),
(413, 5, 86, '[]', 36000.00, '2026-03-13 03:51:27', 'nuri', NULL, NULL),
(414, 5, 98, '[]', 178000.00, '2026-03-13 03:52:12', 'nuri', NULL, NULL),
(415, 5, 88, '[]', 30000.00, '2026-03-13 03:52:26', 'nuri', NULL, NULL),
(416, 5, 88, '[]', 34000.00, '2026-03-13 03:52:43', 'nuri', NULL, NULL),
(417, 5, 88, '[]', 34000.00, '2026-03-13 03:52:59', 'nuri', NULL, NULL),
(418, 5, 98, '[]', 63000.00, '2026-03-13 03:53:20', 'nuri', NULL, NULL),
(419, 5, 85, '[]', 714734.00, '2026-03-13 03:53:33', 'nuri', NULL, NULL),
(420, 5, 98, '[]', 110000.00, '2026-03-13 03:53:52', 'nuri', NULL, NULL),
(421, 5, 98, '[]', 55000.00, '2026-03-13 03:54:17', 'nuri', NULL, NULL),
(422, 5, 85, '[]', 1400000.00, '2026-03-13 03:54:29', 'nuri', NULL, NULL),
(423, 5, 86, '[]', 170700.00, '2026-03-13 03:54:44', 'nuri', NULL, NULL),
(424, 5, 81, '{\"Deskripsi\":\"Tiket Pelabuhan Semut Ternate-sofifi\",\"Harga\":\"63000\",\"Jumlah Penumpang\":\"3\"}', 189000.00, '2026-03-13 03:55:36', 'nuri', 'nuri', '2026-03-13 05:07:57'),
(425, 5, 88, '[]', 2500000.00, '2026-03-13 03:56:12', 'nuri', NULL, NULL),
(426, 5, 85, '[]', 350000.00, '2026-03-13 03:56:25', 'nuri', NULL, NULL),
(427, 5, 83, '[]', 250000.00, '2026-03-13 03:56:43', 'nuri', NULL, NULL),
(428, 5, 98, '[]', 190000.00, '2026-03-13 03:57:00', 'nuri', NULL, NULL),
(429, 5, 86, '[]', 55200.00, '2026-03-13 03:57:12', 'nuri', NULL, NULL),
(430, 5, 87, '[]', 250000.00, '2026-03-13 03:57:20', 'nuri', NULL, NULL),
(431, 5, 88, '[]', 1700000.00, '2026-03-13 03:57:49', 'nuri', NULL, NULL),
(432, 5, 85, '[]', 603668.00, '2026-03-13 03:58:08', 'nuri', NULL, NULL),
(433, 5, 88, '[]', 1200000.00, '2026-03-13 03:58:21', 'nuri', NULL, NULL),
(434, 5, 86, '[]', 107900.00, '2026-03-13 03:58:35', 'nuri', NULL, NULL),
(435, 5, 86, '[]', 17900.00, '2026-03-13 03:58:54', 'nuri', NULL, NULL),
(436, 5, 83, '[]', 110000.00, '2026-03-13 03:59:02', 'nuri', NULL, NULL),
(437, 5, 81, '{\"Deskripsi\":\"Tiket Speed Boat Sofifi-ternate\",\"Harga\":\"60000\",\"Jumlah Penumpang\":\"3\"}', 180000.00, '2026-03-13 04:02:13', 'nuri', NULL, NULL),
(438, 5, 88, '[]', 60000.00, '2026-03-13 05:09:11', 'nuri', NULL, NULL),
(439, 5, 88, '[]', 500000.00, '2026-03-13 05:09:26', 'nuri', NULL, NULL),
(440, 5, 88, '[]', 103000.00, '2026-03-13 05:11:07', 'nuri', NULL, NULL),
(441, 5, 85, '[]', 792540.00, '2026-03-13 05:11:50', 'nuri', NULL, NULL),
(442, 5, 98, '[]', 93500.00, '2026-03-13 05:12:11', 'nuri', NULL, NULL),
(443, 5, 83, '[]', 190000.00, '2026-03-13 05:12:39', 'nuri', NULL, NULL),
(444, 5, 98, '[]', 150000.00, '2026-03-13 05:13:14', 'nuri', NULL, NULL),
(445, 5, 83, '[]', 103000.00, '2026-03-13 05:13:56', 'nuri', NULL, NULL),
(446, 5, 88, '[]', 150000.00, '2026-03-13 05:14:24', 'nuri', NULL, NULL),
(447, 5, 88, '[]', 1321204.00, '2026-03-13 05:15:03', 'nuri', NULL, NULL),
(448, 5, 101, '[]', 30000.00, '2026-03-13 05:19:35', 'nuri', NULL, NULL),
(449, 5, 83, '[]', 50000.00, '2026-03-13 05:19:53', 'nuri', NULL, NULL),
(450, 5, 88, '[]', 40000.00, '2026-03-13 05:20:18', 'nuri', NULL, NULL),
(451, 5, 88, '[]', 140000.00, '2026-03-13 05:20:50', 'nuri', NULL, NULL),
(452, 5, 98, '[]', 50000.00, '2026-03-13 05:21:02', 'nuri', NULL, NULL),
(453, 5, 86, '[]', 57400.00, '2026-03-13 05:21:28', 'nuri', NULL, NULL),
(454, 5, 88, '[]', 84500.00, '2026-03-13 05:22:12', 'nuri', NULL, NULL),
(455, 5, 79, '{\"Deskripsi\":\"Tiket Peaswat Manado-jakarta (syukur)\",\"Harga\":\"1195110\",\"Jumlah Penumpang\":\"1\"}', 1195110.00, '2026-03-13 05:23:13', 'nuri', NULL, NULL),
(456, 5, 83, '[]', 100000.00, '2026-03-13 05:23:40', 'nuri', NULL, NULL),
(457, 5, 88, '[]', 170000.00, '2026-03-13 05:23:58', 'nuri', NULL, NULL),
(458, 5, 83, '[]', 50000.00, '2026-03-13 05:24:46', 'nuri', NULL, NULL),
(459, 5, 88, '[]', 40000.00, '2026-03-13 05:24:56', 'nuri', NULL, NULL),
(460, 5, 83, '[]', 50000.00, '2026-03-13 05:25:15', 'nuri', NULL, NULL),
(461, 5, 98, '[]', 50000.00, '2026-03-13 05:25:35', 'nuri', NULL, NULL),
(462, 5, 88, '[]', 204000.00, '2026-03-13 05:25:54', 'nuri', NULL, NULL),
(463, 5, 79, '{\"Deskripsi\":\"Tiket Pesawat Manado-jakarta (jefri)\",\"Harga\":\"1231200\",\"Jumlah Penumpang\":\"1\"}', 1231200.00, '2026-03-13 05:26:42', 'nuri', NULL, NULL),
(464, 5, 83, '[]', 125000.00, '2026-03-13 05:27:07', 'nuri', NULL, NULL),
(465, 5, 83, '[]', 2165197.00, '2026-03-13 05:39:49', 'nuri', NULL, NULL),
(466, 5, 79, '{\"Deskripsi\":\"Tiket Jakarta-manado (mario)\",\"Harga\":\"1585900\",\"Jumlah Penumpang\":\"1\"}', 1585900.00, '2026-03-13 05:40:33', 'nuri', NULL, NULL),
(467, 5, 81, '{\"Deskripsi\":\"Tiket Bitung-tobelo (mario)\",\"Harga\":\"249720\",\"Jumlah Penumpang\":\"1\"}', 249720.00, '2026-03-13 05:44:17', 'nuri', NULL, NULL),
(468, 5, 79, '{\"Deskripsi\":\"Tiket Pesawat Ternate-makasar (mario)\",\"Harga\":\"1283928\",\"Jumlah Penumpang\":\"1\"}', 1283928.00, '2026-03-13 05:47:19', 'nuri', NULL, NULL),
(469, 5, 88, '[]', 2065000.00, '2026-03-13 05:47:31', 'nuri', NULL, NULL),
(470, 5, 85, '[]', 1000000.00, '2026-03-13 05:47:44', 'nuri', NULL, NULL),
(471, 5, 79, '{\"Deskripsi\":\"Tiket Upg-cgk (mario)\",\"Harga\":\"1775356\",\"Jumlah Penumpang\":\"1\"}', 1775356.00, '2026-03-13 05:49:11', 'nuri', NULL, NULL),
(473, 5, 85, '[]', 7185353.00, '2026-03-13 05:52:12', 'nuri', NULL, NULL),
(474, 5, 83, '[]', 99000.00, '2026-03-13 05:52:23', 'nuri', NULL, NULL),
(475, 5, 87, '[]', 99000.00, '2026-03-13 05:52:50', 'nuri', NULL, NULL),
(476, 5, 99, '[]', 1784575.00, '2026-03-13 05:53:16', 'nuri', NULL, NULL),
(477, 6, 79, '{\"Deskripsi\":\"Jakarta Manado\",\"Harga\":\"8936700\",\"Jumlah Penumpang\":\"1\"}', 8936700.00, '2026-04-27 04:21:27', 'ica', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','karyawan') DEFAULT 'karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `role`) VALUES
(2, 'admin', '$2y$10$.bSsDNsRjck6QisKH6.QdetSBRsJKyexywpDvT37IFUGioSdB.12a', '2026-01-13 08:53:10', 'admin'),
(3, 'mario', '$2y$10$JGUnVe3GDmsLGkDbOtDdU.NDNFjp83X0lVY10cSALPfWBye6JCvmm', '2026-01-13 08:55:45', 'admin'),
(4, 'nuri', '$2y$10$3HeqPb0/TTsX/W8SD/OWeez8hTLWJLuaZ0PjEfdFZwbpoNEqNkiqO', '2026-02-10 04:29:26', 'karyawan'),
(5, 'ica', '$2y$10$7Nzn7sDP5A./tkZgbWI65.dy5iWrTegXQOcMYnYPDf2jKIeW6pNOS', '2026-02-10 04:52:47', 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cost_groups`
--
ALTER TABLE `cost_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_parameters`
--
ALTER TABLE `cost_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `parameter_fields`
--
ALTER TABLE `parameter_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_costs`
--
ALTER TABLE `project_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `parameter_id` (`parameter_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cost_groups`
--
ALTER TABLE `cost_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cost_parameters`
--
ALTER TABLE `cost_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `parameter_fields`
--
ALTER TABLE `parameter_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_costs`
--
ALTER TABLE `project_costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cost_parameters`
--
ALTER TABLE `cost_parameters`
  ADD CONSTRAINT `cost_parameters_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `cost_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parameter_fields`
--
ALTER TABLE `parameter_fields`
  ADD CONSTRAINT `parameter_fields_ibfk_1` FOREIGN KEY (`parameter_id`) REFERENCES `cost_parameters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_costs`
--
ALTER TABLE `project_costs`
  ADD CONSTRAINT `project_costs_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_costs_ibfk_2` FOREIGN KEY (`parameter_id`) REFERENCES `cost_parameters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
