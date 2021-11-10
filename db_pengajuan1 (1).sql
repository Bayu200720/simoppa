-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2021 at 04:29 PM
-- Server version: 10.2.36-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengajuan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `tahun` int(4) NOT NULL,
  `id_satker` int(50) NOT NULL,
  `mak` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nominal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `tahun`, `id_satker`, `mak`, `keterangan`, `nominal`) VALUES
(7, 2020, 6, '3038.001.051.A.521211', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Bahan', 0),
(8, 2020, 6, '3038.001.051.A.521213', 'Penerbitan e_jurnal Ilmiah MTI-Honor Output Kegiatan', 0),
(9, 2020, 6, '3038.001.051.A.521219', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Barang Non Operasional Lainnya', 0),
(10, 2020, 6, '3038.001.051.A.521811', 'Penerbitan e_jurnal Ilmiah MTI-Belanja Barang Persediaan Barang Konsumsi', 0),
(11, 2020, 6, '3038.001.051.A.524119', 'Penerbitan e_jurnal Ilmiah MTI-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(12, 2020, 6, '3038.001.051.B.521211', 'Penerbitan e-jurnal DIAKOM-Belanja Bahan', 0),
(13, 2020, 6, '3038.001.051.B.521213', 'Penerbitan e-jurnal DIAKOM-Honor Output Kegiatan', 0),
(14, 2020, 6, '3038.001.051.B.521219', 'Penerbitan e-jurnal DIAKOM-Belanja Barang Non Operasional Lainnya', 0),
(15, 2020, 6, '3038.001.051.B.521811', 'Penerbitan e-jurnal DIAKOM-Belanja Barang Persediaan Barang Konsumsi', 0),
(16, 2020, 6, '3038.001.051.B.524119', 'Penerbitan e-jurnal DIAKOM-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(17, 2020, 6, '3038.001.051.C.521211', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Belanja Bahan', 0),
(18, 2020, 6, '3038.001.051.C.522151', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Belanja Jasa Profesi', 0),
(19, 2020, 6, '3038.001.051.C.524119', 'Penjaminan Mutu, Pemrosesan dan Pemeliharaan Akreditasi e-Jurnal -Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(20, 2020, 6, '3038.001.052.A.521211', 'Knowledge Sharing dan Penulisan KTI-Belanja Bahan', 0),
(21, 2020, 6, '3038.001.052.A.521219', 'Knowledge Sharing dan Penulisan KTI-Belanja Barang Non Operasional Lainnya', 0),
(22, 2020, 6, '3038.001.052.A.522151', 'Knowledge Sharing dan Penulisan KTI-Belanja Jasa Profesi', 0),
(23, 2020, 6, '3038.001.052.A.524114', 'Knowledge Sharing dan Penulisan KTI-Paket Meeting Dalam Kota', 0),
(24, 2020, 6, '3038.001.052.A.524119', 'Knowledge Sharing dan Penulisan KTI-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(25, 2020, 6, '3038.001.052.A.5241211', 'Knowledge Sharing dan Penulisan KTI-Belanja Perjalanan Luar Negeri', 0),
(26, 2020, 6, '3038.001.052.B.521211', 'Penyelenggaraan Konferensi Internasional-Belanja Bahan', 0),
(27, 2020, 6, '3038.001.052.B.521213', 'Penyelenggaraan Konferensi Internasional-Honor Output Kegiatan', 0),
(28, 2020, 6, '3038.001.052.B.521219', 'Penyelenggaraan Konferensi Internasional-Belanja Barang Non Operasional Lainnya', 0),
(29, 2020, 6, '3038.001.052.B.521811', 'Penyelenggaraan Konferensi Internasional-Belanja Barang Persediaan Barang Konsumsi', 0),
(30, 2020, 6, '3038.001.052.B.522151', 'Penyelenggaraan Konferensi Internasional-Belanja Jasa Profesi', 0),
(31, 2020, 6, '3038.001.052.B.524111', 'Penyelenggaraan Konferensi Internasional-Belanja Perjalanan Biasa', 0),
(32, 2020, 6, '3038.001.052.B.524114', 'Penyelenggaraan Konferensi Internasional-Paket Meeting Dalam Kota', 0),
(33, 2020, 6, '3038.001.052.B.524119', 'Penyelenggaraan Konferensi Internasional-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(34, 2020, 6, '3038.002.051.A.521211', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Bahan', 0),
(35, 2020, 6, '3038.002.051.A.521811', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Barang Persediaan Barang Konsumsi', 0),
(36, 2020, 6, '3038.002.051.A.521219', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Barang Non Operasional Lainnya', 0),
(37, 2020, 6, '3038.002.051.A.522151', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Belanja Jasa Profesi', 0),
(38, 2020, 6, '3038.002.051.A.524119', 'Penatalaksanaan proses dan/Pemeliharaan Akreditasi-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(39, 2020, 6, '3038.002.052.A.521211', 'Asesmen dan Penjaminan Mutu-Belanja Bahan', 0),
(40, 2020, 6, '3038.002.052.A.521811', 'Asesmen dan Penjaminan Mutu-Belanja Barang Persediaan Barang Konsumsi', 0),
(41, 2020, 6, '3038.002.052.A.522151', 'Asesmen dan Penjaminan Mutu-Belanja Jasa Profesi', 0),
(42, 2020, 6, '3038.002.052.A.524119', 'Asesmen dan Penjaminan Mutu-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(43, 2020, 6, '3038.967.051.A.521211', 'Penelitian Jangka Panjang 1 (survei)-Belanja Bahan', 0),
(44, 2020, 6, '3038.967.051.A.521213', 'Penelitian Jangka Panjang 1 (survei)-Honor Output Kegiatan', 0),
(45, 2020, 6, '3038.967.051.A.521811', 'Penelitian Jangka Panjang 1 (survei)-Belanja Barang Persediaan Barang Konsumsi', 0),
(46, 2020, 6, '3038.967.051.A.522151', 'Penelitian Jangka Panjang 1 (survei)-Belanja Jasa Profesi', 0),
(47, 2020, 6, '3038.967.051.A.524111', 'Penelitian Jangka Panjang 1 (survei)-Belanja Perjalanan Biasa', 0),
(48, 2020, 6, '3038.967.051.A.524114', 'Penelitian Jangka Panjang 1 (survei)-Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(49, 2020, 6, '3038.967.051.A.524119', 'Penelitian Jangka Panjang 1 (survei)-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(50, 2020, 6, '3038.967.051.B.521211', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Bahan', 0),
(51, 2020, 6, '3038.967.051.B.521213', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Honor Output Kegiatan', 0),
(52, 2020, 6, '3038.967.051.B.521811', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Barang Persediaan Barang Konsumsi', 0),
(53, 2020, 6, '3038.967.051.B.522151', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Jasa Profesi', 0),
(54, 2020, 6, '3038.967.051.B.524111', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Perjalanan Biasa', 0),
(55, 2020, 6, '3038.967.051.B.524114', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(56, 2020, 6, '3038.967.051.B.524119', 'Penelitian Jangka Panjang 2 (kualitatif-wawancara mendalam)-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(57, 2020, 6, '3038.967.051.C.521211', 'Survei Penggunaan TIK -Belanja Bahan', 0),
(58, 2020, 6, '3038.967.051.C.521213', 'Survei Penggunaan TIK -Honor Output Kegiatan', 0),
(59, 2020, 6, '3038.967.051.C.521219', 'Survei Penggunaan TIK -Belanja Barang Non Operasional Lainnya', 0),
(60, 2020, 6, '3038.967.051.C.521811', 'Survei Penggunaan TIK -Belanja Barang Persediaan Barang Konsumsi', 0),
(61, 2020, 6, '3038.967.051.C.522151', 'Survei Penggunaan TIK -Belanja Jasa Profesi', 0),
(62, 2020, 6, '3038.967.051.C.524111', 'Survei Penggunaan TIK -Belanja Perjalanan Biasa', 0),
(63, 2020, 6, '3038.967.051.C.524114', 'Survei Penggunaan TIK -Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(64, 2020, 6, '3038.967.051.C.524119', 'Survei Penggunaan TIK -Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(65, 2020, 6, '3038.967.051.D.521211', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Bahan', 0),
(66, 2020, 6, '3038.967.051.D.521213', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Honor Output Kegiatan', 0),
(67, 2020, 6, '3038.967.051.D.521811', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Barang Persediaan Barang Konsumsi', 0),
(68, 2020, 6, '3038.967.051.D.522151', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Jasa Profesi', 0),
(69, 2020, 6, '3038.967.051.D.524111', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Perjalanan Biasa', 0),
(70, 2020, 6, '3038.967.051.D.524114', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(71, 2020, 6, '3038.967.051.D.524119', 'Studi Singkat Aktual Bidang APTIKA dan IKP 1-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(72, 2020, 6, '3038.967.051.E.521211', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Bahan', 0),
(73, 2020, 6, '3038.967.051.E.521213', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Honor Output Kegiatan', 0),
(74, 2020, 6, '3038.967.051.E.521811', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Barang Persediaan Barang Konsumsi', 0),
(75, 2020, 6, '3038.967.051.E.522151', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Jasa Profesi', 0),
(76, 2020, 6, '3038.967.051.E.524111', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Perjalanan Biasa', 0),
(77, 2020, 6, '3038.967.051.E.524114', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(78, 2020, 6, '3038.967.051.E.524119', 'Studi Singkat Aktual Bidang APTIKA IKP 2-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(79, 2020, 6, '3038.967.051.F.521211', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Bahan', 0),
(80, 2020, 6, '3038.967.051.F.521811', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Barang Persediaan Barang Konsumsi', 0),
(81, 2020, 6, '3038.967.051.F.522151', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Jasa Profesi', 0),
(82, 2020, 6, '3038.967.051.F.524111', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Biasa', 0),
(83, 2020, 6, '3038.967.051.F.524114', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Dinas Paket Meeting Dalam Kota', 0),
(84, 2020, 6, '3038.967.051.F.524119', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Beban Perjalanan Dinas Paket Meeting Luar Kota', 0),
(85, 2020, 6, '3038.967.051.F.5241211', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Perjalanan Luar Negeri', 0),
(86, 2020, 6, '3038.967.051.070.521211', 'Penyusunan Laporan-Belanja Bahan', 0),
(87, 2020, 6, '3038.967.051.070.521811', 'Penyusunan Laporan-Belanja Barang Persediaan Barang Konsumsi', 0),
(88, 2020, 6, '3038.967.051.070.522151', 'Penyusunan Laporan-Belanja Jasa Profesi', 0),
(89, 2020, 6, '3038.967.051.070.522191', 'Penyusunan Laporan-Belanja Jasa Lainnya', 0),
(90, 2020, 6, '3038.967.051.F.521219', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian-Belanja Barang Non Operasional Lainnya', 0),
(92, 2020, 4, '4146.007.001.G.521211', 'TA&CTA - Belanja Bahan (RM)', 0),
(93, 2020, 4, '4146.007.001.G.521213', 'TA&CTA - Belanja Honor Output Kegiatan (RM)', 0),
(94, 2020, 4, '4146.007.001.G.521219', 'TA&CTA - Belanja Barang Non Operasional Lainnya (RM)', 0),
(95, 2020, 4, '4146.007.001.G.522151', 'TA&CTA - Beban Jasa Profesi (RM)', 0),
(96, 2020, 4, '4146.007.001.G.521811', 'TA&CTA - Belanja Barang Persediaan Barang Konsumsi', 0),
(97, 2020, 4, '4146.007.001.G.522191', 'TA&CTA - Beban Jasa Lainnya (RM)', 0),
(98, 2020, 4, '4146.007.001.G.524111', 'TA&CTA - Belanja Perjalanan Biasa (RM)', 0),
(99, 2020, 4, '4146.007.001.G.524114', 'TA&CTA - Belanja Perjalanan Dinas Paket Meeting Dalam Kota (RM)', 0),
(100, 2020, 4, '4146.007.001.G.524119', 'TA&CTA - Belanja Perjalanan Lainnya (RM)', 0),
(101, 2020, 4, '4146.007.001.G.526312', 'TA&CTA - Belanja Barang untuk Bantuan Lainnya yang memiliki Karakteristik Banper (uang) (RM)', 0),
(102, 2020, 4, '4146.007.001.G.522141', 'TA&CTA - Belanja Sewa (RM)', 0),
(103, 2020, 4, '4146.007.001.G.524113', 'TA&CTA - Belanja Perjalanan Dinas Dalam Kota', 0),
(104, 2020, 4, '4146.007.001.G.521131', 'TA&CTA - Belanja Barang Operasional - Penanganan Pandemi COVID-', 0),
(105, 2020, 4, '	4146.007.001.G.524115', 'TA&CTA - Belanja Perjalanan Biasa-Penanganan Pandemi Covid-19', 0),
(106, 2021, 4, '4146.007.001.051.G. 522192', 'TA&CTA - Belanja Jasa - Penanganan Pandemi Covid-19 (RM)', 0),
(107, 2021, 0, '4146.007.001.G.524115', 'belanja perjalanan dinas', 0),
(263, 2021, 6, '4498.ABO.001.051.A.521211\r\n\r\n', 'Penelitian Jangka Panjang - Belanja Bahan ', 0),
(264, 2021, 6, '4498.ABO.001.051.A.521213', 'Penelitian Jangka Panjang - Belanja Honor Output Kegiatan ', 0),
(265, 2021, 6, '4498.ABO.001.051.A.521811', 'Penelitian Jangka Panjang - Belanja Barang Persediaan Barang Konsumsi ', 0),
(266, 2021, 6, '4498.ABO.001.051.A.522151', 'Penelitian Jangka Panjang - Belanja Jasa Profesi ', 0),
(267, 2021, 6, '4498.ABO.001.051.A.522191', 'Penelitian Jangka Panjang - Belanja Jasa Lainnya ', 0),
(268, 2021, 6, '4498.ABO.001.051.A.524111', 'Penelitian Jangka Panjang - Belanja Perjalanan Dinas Biasa ', 0),
(269, 2021, 6, '4498.ABO.001.051.A.524114', 'Penelitian Jangka Panjang - Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(270, 2021, 6, '4498.ABO.001.051.A.524119', 'Penelitian Jangka Panjang - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(271, 2021, 6, '4498.ABO.001.051.B.521211', 'Survei Pengunaan TIK- Belanja Bahan ', 0),
(272, 2021, 6, '4498.ABO.001.051.B.521213', 'Survei Pengunaan TIK- Belanja Honor Output Kegiatan ', 0),
(273, 2021, 6, '4498.ABO.001.051.B.521219', 'Survei Pengunaan TIK- Belanja Barang Non Operasional Lainnya ', 0),
(274, 2021, 6, '4498.ABO.001.051.B.521811', 'Survei Pengunaan TIK- Belanja Barang Persediaan Barang Konsumsi ', 0),
(275, 2021, 6, '4498.ABO.001.051.B.522141', 'Survei Pengunaan TIK- Belanja Sewa ', 0),
(276, 2021, 6, '4498.ABO.001.051.B.522151', 'Survei Pengunaan TIK- Belanja Jasa Profesi ', 0),
(277, 2021, 6, '4498.ABO.001.051.B.522191', 'Survei Pengunaan TIK- Belanja Jasa Lainnya ', 0),
(278, 2021, 6, '4498.ABO.001.051.B.524111', 'Survei Pengunaan TIK- Belanja Perjalanan Dinas Biasa ', 0),
(279, 2021, 6, '4498.ABO.001.051.B.524114', 'Survei Pengunaan TIK- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(280, 2021, 6, '4498.ABO.001.051.B.524119', 'Survei Pengunaan TIK- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(281, 2021, 6, '4498.ABO.001.051.C.521211', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Bahan ', 0),
(282, 2021, 6, '4498.ABO.001.051.C.521213', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Honor Output Kegiatan ', 0),
(283, 2021, 6, '4498.ABO.001.051.C.522151', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Jasa Profesi ', 0),
(284, 2021, 6, '4498.ABO.001.051.C.524111', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Perjalanan Dinas Biasa ', 0),
(285, 2021, 6, '4498.ABO.001.051.C.524114', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(286, 2021, 6, '4498.ABO.001.051.C.524119', 'Studi Singkat Aktual Bidang Aplikasi Informatika dan IKP- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(287, 2021, 6, '4498.ABO.001.051.D.521211', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Bahan ', 0),
(288, 2021, 6, '4498.ABO.001.051.D.521219', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Barang Non Operasional Lainnya ', 0),
(289, 2021, 6, '4498.ABO.001.051.D.521811', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Barang Persediaan Barang Konsumsi ', 0),
(290, 2021, 6, '4498.ABO.001.051.D.522151', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Jasa Profesi ', 0),
(291, 2021, 6, '4498.ABO.001.051.D.524111', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Perjalanan Dinas Biasa ', 0),
(292, 2021, 6, '4498.ABO.001.051.D.524114', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(293, 2021, 6, '4498.ABO.001.051.D.524119', 'Penyusunan Program, Kerjasama dan Evaluasi Penelitian- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(294, 2021, 6, '4498.ABO.001.070.A.521211', 'Penyusunan Laporan Penelitian dan Berkala- Belanja Bahan ', 0),
(295, 2021, 6, '4498.ABO.001.070.A.521811', 'Penyusunan Laporan Penelitian dan Berkala- Belanja Barang Persediaan Barang Konsumsi ', 0),
(296, 2021, 6, '4498.ABO.001.070.A.522191', 'Penyusunan Laporan Penelitian dan Berkala- Belanja Jasa Lainnya ', 0),
(297, 2021, 6, '4498.ABO.001.070.A.524119', 'Penyusunan Laporan Penelitian dan Berkala- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(298, 2021, 6, '4498.ADE.001.051.A.521211', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Bahan ', 0),
(299, 2021, 6, '4498.ADE.001.051.A.521213', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Honor Output Kegiatan ', 0),
(300, 2021, 6, '4498.ADE.001.051.A.521219', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Barang Non Operasional Lainnya ', 0),
(301, 2021, 6, '4498.ADE.001.051.A.521811', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Barang Persediaan Barang Konsumsi ', 0),
(302, 2021, 6, '4498.ADE.001.051.A.522151', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Jasa Profesi ', 0),
(303, 2021, 6, '4498.ADE.001.051.A.524119', 'Penatalaksanaan proses dan pemeliharaan akreditasi- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(304, 2021, 6, '4498.ADE.001.052.A.521211', 'Penjaminan Mutu- Belanja Bahan ', 0),
(305, 2021, 6, '4498.ADE.001.052.A.522151', 'Penjaminan Mutu- Belanja Jasa Profesi ', 0),
(306, 2021, 6, '4498.ADE.001.052.A.524119', 'Penjaminan Mutu- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(307, 2021, 6, '4498.DDA.001.051.A.521211', 'Penerbitan e-Jurnal Ilmiah MTI - Belanja Bahan ', 0),
(308, 2021, 6, '4498.DDA.001.051.A.521213', 'Penerbitan e-Jurnal Ilmiah MTI - Belanja Honor Output Kegiatan ', 0),
(309, 2021, 6, '4498.DDA.001.051.A.521219', 'Penerbitan e-Jurnal Ilmiah MTI - Belanja Barang Non Operasional Lainnya ', 0),
(310, 2021, 6, '4498.DDA.001.051.A.524119', 'Penerbitan e-Jurnal Ilmiah MTI - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(311, 2021, 6, '4498.DDA.001.051.B.521211', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Bahan ', 0),
(312, 2021, 6, '4498.DDA.001.051.B.521213', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Honor Output Kegiatan ', 0),
(313, 2021, 6, '4498.DDA.001.051.B.521219', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Barang Non Operasional Lainnya ', 0),
(314, 2021, 6, '4498.DDA.001.051.B.524119', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(315, 2021, 6, '4498.DDA.001.051.C.521211', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Bahan ', 0),
(316, 2021, 6, '4498.DDA.001.051.C.521213', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Honor Output Kegiatan ', 0),
(317, 2021, 6, '4498.DDA.001.051.C.522151', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Jasa Profesi ', 0),
(318, 2021, 6, '4498.DDA.001.051.C.524119', ' Penerbitan e-Jurnal Ilmiah DIAKOM - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(319, 2021, 6, '4498.DDA.001.052.A.521211', 'Knowledge Sharing dan Penulisan KTI- Belanja Bahan ', 0),
(320, 2021, 6, '4498.DDA.001.052.A.521213', 'Knowledge Sharing dan Penulisan KTI- Belanja Honor Output Kegiatan ', 0),
(321, 2021, 6, '4498.DDA.001.052.A.521219', 'Knowledge Sharing dan Penulisan KTI- Belanja Barang Non Operasional Lainnya ', 0),
(322, 2021, 6, '4498.DDA.001.052.A.522151', 'Knowledge Sharing dan Penulisan KTI- Belanja Jasa Profesi ', 0),
(323, 2021, 6, '4498.DDA.001.052.A.524114', 'Knowledge Sharing dan Penulisan KTI- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(324, 2021, 6, '4498.DDA.001.052.A.524119', 'Knowledge Sharing dan Penulisan KTI- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(325, 2021, 6, '4498.DDA.001.052.A.524211', 'Knowledge Sharing dan Penulisan KTI- Belanja Perjalanan Dinas Biasa - Luar Negeri ', 0),
(326, 2021, 6, '4498.DDA.001.052.B.521211', ' Penyelenggaraan Konferensi Internasional - Belanja Bahan ', 0),
(327, 2021, 6, '4498.DDA.001.052.B.521213', ' Penyelenggaraan Konferensi Internasional - Belanja Honor Output Kegiatan ', 0),
(328, 2021, 6, '4498.DDA.001.052.B.521219', ' Penyelenggaraan Konferensi Internasional - Belanja Barang Non Operasional Lainnya ', 0),
(329, 2021, 6, '4498.DDA.001.052.B.521811', ' Penyelenggaraan Konferensi Internasional - Belanja Barang Persediaan Barang Konsumsi ', 0),
(330, 2021, 6, '4498.DDA.001.052.B.522151', ' Penyelenggaraan Konferensi Internasional - Belanja Jasa Profesi ', 0),
(331, 2021, 6, '4498.DDA.001.052.B.524111', ' Penyelenggaraan Konferensi Internasional - Belanja Perjalanan Dinas Biasa ', 0),
(332, 2021, 6, '4498.DDA.001.052.B.524114', ' Penyelenggaraan Konferensi Internasional - Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(333, 2021, 6, '4498.DDA.001.052.B.524119', ' Penyelenggaraan Konferensi Internasional - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(334, 2021, 6, '4498.DDA.001.052.C.521211', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Bahan ', 0),
(335, 2021, 6, '4498.DDA.001.052.C.521213', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Honor Output Kegiatan ', 0),
(336, 2021, 6, '4498.DDA.001.052.C.521219', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Barang Non Operasional Lainnya ', 0),
(337, 2021, 6, '4498.DDA.001.052.C.521811', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Barang Persediaan Barang Konsumsi ', 0),
(338, 2021, 6, '4498.DDA.001.052.C.522151', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Jasa Profesi ', 0),
(339, 2021, 6, '4498.DDA.001.052.C.524111', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Perjalanan Dinas Biasa ', 0),
(340, 2021, 6, '4498.DDA.001.052.C.524114', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(341, 2021, 6, '4498.DDA.001.052.C.524119', 'Penyelenggaraan Publikasi Hasil Penelitian- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(342, 2021, 6, '4498.DDA.001.052.D.521211', ' Policy Brief/Buletin - Belanja Bahan ', 0),
(343, 2021, 6, '4498.DDA.001.052.D.521213', ' Policy Brief/Buletin - Belanja Honor Output Kegiatan ', 0),
(344, 2021, 6, '4498.DDA.001.052.D.521811', ' Policy Brief/Buletin - Belanja Barang Persediaan Barang Konsumsi ', 0),
(345, 2021, 6, '4498.DDA.001.052.D.524119', ' Policy Brief/Buletin - Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(346, 2021, 6, '4498.PBO.001.051.A.521211', 'Kajian Big Data Pemerintah- Belanja Bahan ', 0),
(347, 2021, 6, '4498.PBO.001.051.A.521213', 'Kajian Big Data Pemerintah- Belanja Honor Output Kegiatan ', 0),
(348, 2021, 6, '4498.PBO.001.051.A.521219', 'Kajian Big Data Pemerintah- Belanja Barang Non Operasional Lainnya ', 0),
(349, 2021, 6, '4498.PBO.001.051.A.521811', 'Kajian Big Data Pemerintah- Belanja Barang Persediaan Barang Konsumsi ', 0),
(350, 2021, 6, '4498.PBO.001.051.A.522151', 'Kajian Big Data Pemerintah- Belanja Jasa Profesi ', 0),
(351, 2021, 6, '4498.PBO.001.051.A.522191', 'Kajian Big Data Pemerintah- Belanja Jasa Lainnya ', 0),
(352, 2021, 6, '4498.PBO.001.051.A.524111', 'Kajian Big Data Pemerintah- Belanja Perjalanan Dinas Biasa ', 0),
(353, 2021, 6, '4498.PBO.001.051.A.524114', 'Kajian Big Data Pemerintah- Belanja Perjalanan Dinas Paket Meeting Dalam ', 0),
(354, 2021, 6, '4498.PBO.001.051.A.524119', 'Kajian Big Data Pemerintah- Belanja Perjalanan Dinas Paket Meeting Luar Kota ', 0),
(355, 2021, 6, '4498.PBO.001.051.A.524211', 'Kajian Big Data Pemerintah- Belanja Perjalanan Dinas Biasa - Luar Negeri ', 0),
(357, 2021, 8, '222', 'coba ', 0),
(358, 2021, 1, '11111', 'perjalanan dinas biasa 1', 0),
(359, 2021, 6, '1121', 'perjadin ', 0),
(365, 2021, 6, '2021', 'coba masukkin data udah diapus', 0),
(366, 2021, 5, '3123123', 'paket meeting pusdikalt', 0),
(367, 2021, 2, '131231', 'perjadin', 0),
(368, 2021, 3, '12131', 'perjadin', 2000000),
(370, 2021, 4, '131312', 'paket meeting', 5000000),
(371, 2021, 10, '001', 'jasa profesi', 2000000),
(372, 2021, 15, '1212', 'perjadin', 2000000),
(373, 2021, 14, '31313', 'perjadin', 2000000),
(375, 2021, 10, '111111111111111111', 'Panjar TUP', 3000000),
(376, 2021, 1, '1313', 'keuangan mak', 3000000),
(377, 0, 0, 'mak', 'keterangan', 0),
(378, 2021, 6, '4498.DDA.001.052.A.52121119', 'Knowledge Sharing dan Penulisan KTI- Belanja Bahan byy', 2000000),
(379, 2021, 17, '4498.DDA.001.052.A.5211199', 'bayyy- paket meting', 3000000),
(381, 0, 0, '', '', 0),
(456, 2021, 6, '111111', 'wkeeee', 2000000),
(457, 2021, 16, '22222', 'cobaaa', 3000000),
(458, 2021, 3, '333333', 'perjadinnn', 5000000),
(459, 2021, 3, '444444', 'okkk', 3000000),
(468, 2021, 18, '1111', 'mak b siswa', 2000000),
(469, 2021, 14, '123123', 'mak perkantoran', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengajuan`
--

CREATE TABLE `detail_pengajuan` (
  `id` int(11) NOT NULL,
  `no_sptjb` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `id_akun` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `pph` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `keterangan_verifikasi` varchar(255) NOT NULL,
  `id_sptjb_api` int(128) NOT NULL,
  `tanggal_dp` date DEFAULT NULL,
  `id_pencairan` int(128) NOT NULL,
  `file_pj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pengajuan`
--

INSERT INTO `detail_pengajuan` (`id`, `no_sptjb`, `nominal`, `id_akun`, `keterangan`, `id_pengajuan`, `pph`, `ppn`, `keterangan_verifikasi`, `id_sptjb_api`, `tanggal_dp`, `id_pencairan`, `file_pj`) VALUES
(1, '001', 20000000, '366', 'Paket Meeting', 1, 400000, 0, '', 0, '2021-04-28', 0, ''),
(2, '1/sptjb', 3000000, '372', 'pemakaian', 4, 0, 0, '', 0, '2021-04-28', 0, ''),
(3, '2/sptjb', 3000000, '372', 'pemakaian', 3, 0, 0, 'Ok', 0, '2021-04-28', 0, ''),
(4, '1/sptjb', 3000000, '456', 'pemakaian', 5, 0, 0, '', 0, '2021-04-28', 0, ''),
(5, '2/sptjb', 2000000, '355', 'pemakaian', 7, 0, 0, '', 0, '2021-04-28', 0, ''),
(6, '1/sptjb', 3000000, '353', 'pemakaian', 8, 0, 0, '', 0, '2021-04-28', 0, ''),
(7, '1/sptjb', 3000000, '366', 'ok', 9, 0, 0, '', 0, '2021-04-29', 0, ''),
(8, '1/sptjb', 2000000, '350', 'honor narsum', 10, 100000, 0, '', 0, '2021-04-29', 0, ''),
(9, '1/sptjb', 3000000, '350', 'paket meting', 17, 0, 0, 'lengkap', 0, '2021-04-29', 0, ''),
(10, '01/SPTB/', 900000, '371', 'Honor narasumber kegiatan ...', 11, 135000, 0, '', 0, '2021-04-23', 0, ''),
(11, '195/GU', 7731000, '87', '', 17, 120000, 0, 'lengkap', 0, '2021-04-29', 0, ''),
(12, '196/GU', 6000000, '87', '', 17, 0, 0, '', 0, '2021-04-29', 0, ''),
(13, '01/SPTB/', 900000, '375', 'Honor narasumber kegiatan ...', 22, 45000, 0, '', 0, '2021-04-28', 0, ''),
(14, '02/SPTB', 900000, '371', 'Honor narasumber kegiatan ...', 24, 135000, 0, '', 0, '2021-04-29', 0, ''),
(16, '195/GU', 7731000, '87', '', 23, 120000, 0, 'OK', 0, '2021-02-11', 0, ''),
(17, '196/GU', 8000000, '87', '', 23, 0, 0, 'OK', 0, '2021-02-11', 0, ''),
(22, '04/SPTB', 1000000, '371', 'Honor narasumber kegiatan ...', 27, 150000, 0, '', 0, '2021-04-29', 0, ''),
(23, '71/sptjb', 9770000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(24, '70/sptjb', 11546000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(25, '68/sptjb', 9825000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(26, '67/sptjb', 7513000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(27, '66/sptjb', 16200000, '', '', 25, 2430000, 0, '', 0, '2021-04-29', 0, ''),
(28, '64/sptjb', 473000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(29, '63/sptjb', 27950000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(30, '62/sptjb', 8460000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(31, '61/sptjb', 11369000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(32, '60/sptjb', 6550000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(33, '59/sptjb', 14970000, '', '', 25, 0, 0, '', 0, '2021-04-29', 0, ''),
(34, '1/sptjb', 3000000, '98', 'pemakaian', 43, 0, 0, '', 0, '2021-04-29', 7, ''),
(35, '195/GU', 7731000, '87', '', 7, 120000, 0, '', 0, '2021-04-29', 0, ''),
(36, '194/GU', 4000000, '87', '', 7, 0, 0, '', 0, '2021-04-29', 0, ''),
(37, '2/sptjb', 2000000, '102', 'ok', 44, 0, 0, '', 0, '2021-04-29', 7, ''),
(38, '2/sptjb', 2000000, '104', 'pemakaian', 31, 0, 0, '', 0, '2021-04-29', 8, '-29-04-2021-225859-Manual Guide - User BPP.pdf'),
(39, '1/sptjb', 3000000, '106', 'ok', 30, 0, 0, '', 0, '2021-04-29', 0, ''),
(40, '1/sptjb', 3000000, '367', 'pemakaian', 31, 0, 0, '', 0, '2021-04-29', 9, '-29-04-2021-231657-0016 - Kominfo Ibu Fitri  6 May 2021.pdf'),
(41, '1/sptjb', 3000000, '370', 'honor narsum ....', 32, 150000, 0, '', 0, '2021-04-30', 0, ''),
(42, '01/PPP/SPP-LS/BLSDM/2021', 6000000, '459', 'Perjalana Dinas Paket Meeting Luar Kota Kegiatan Penyusunan Administrasi Kerjasma', 37, 120000, 0, '', 0, '2021-01-27', 0, ''),
(43, '001/UMUM', 8515000, '370', 'Perjalanan Dinas Paket Meeting Luar Kota', 33, 0, 0, '', 0, '2021-01-20', 0, ''),
(44, '12', 299900, '367', 'perjadin', 35, 0, 0, '', 0, '2021-04-30', 0, ''),
(45, '44/SPP-LS/BLSDM-2/2019', 21000000, '468', 'Pembayaran Paket Meeting Kegiatan Evaluasi Penyelenggaraan Beasiswa S2 DN', 34, 420000, 0, '', 0, '2021-04-30', 0, ''),
(46, '1/sptjb', 3000000, '458', 'honor narsum ....', 36, 0, 0, '', 0, '2021-04-30', 0, ''),
(47, '02/PPP/SPP-GU/BLSDM/2021', 5000000, '458', 'perjalanan dinas kegiatan kerjasama', 44, 0, 0, '', 0, '2021-04-30', 10, ''),
(48, '1/sptjb', 3000000, '469', 'honor narsum ....', 43, 150000, 0, '', 0, '2021-04-30', 14, '-30-04-2021-110751-realisasi april.pdf'),
(49, '01', 500000, '106', 'persediaan', 43, 0, 0, '', 0, '2021-04-21', 12, ''),
(50, '12', 299900, '367', 'perjadin', 44, 0, 0, '', 0, '2021-04-30', 13, ''),
(51, '455455', 10000000, '469', 'Jamuan', 0, 0, 0, '', 0, '2021-04-30', 15, '-30-04-2021-124712-SPTB Covid.pdf'),
(52, '13', 1000000, '367', 'perjadin', 0, 0, 0, '', 0, '2021-04-30', 16, ''),
(53, '455455', 12000000, '469', 'Perjadin', 38, 0, 0, 'nilai pengajuan tidak sesuai dengan dokumen pengajuan pertanggungjawaban', 0, '2021-04-30', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengajuan_pum`
--

CREATE TABLE `detail_pengajuan_pum` (
  `id` int(11) NOT NULL,
  `id_pengajuan_pum` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `nominal` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pengajuan_pum`
--

INSERT INTO `detail_pengajuan_pum` (`id`, `id_pengajuan_pum`, `id_akun`, `nominal`) VALUES
(1, 1, 106, 5000000),
(2, 2, 106, 7000000),
(3, 3, 367, 3000000),
(4, 4, 458, 3000000),
(5, 5, 459, 100300000),
(6, 6, 370, 8515000),
(7, 4, 458, 2000000),
(8, 7, 367, 299900),
(9, 8, 469, 90000000),
(10, 9, 469, 3000000),
(11, 9, 373, 12000000),
(12, 10, 367, 20000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(128) NOT NULL,
  `id_detail_pengajuan` int(128) NOT NULL,
  `id_transaksi_api` int(128) NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `nominal` int(128) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `id_penerima` varchar(128) NOT NULL,
  `pph` int(128) NOT NULL,
  `ppn` int(128) NOT NULL,
  `jenis` varchar(125) NOT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `id_detail_pengajuan`, `id_transaksi_api`, `uraian`, `nominal`, `penerima`, `id_penerima`, `pph`, `ppn`, `jenis`, `tanggal_transaksi`) VALUES
(1, 1, 0, 'Paket Meeting', 10000000, 'liko', '1001', 500000, 0, '', '2021-04-28'),
(2, 22, 0, 'Honor narasumber kegiatan ...', 1000000, 'Irwansyah', '1777777', 150000, 0, '', '2021-04-29'),
(3, 41, 0, 'honor narsum ....', 3000000, 'anonim', '2131332', 150000, 0, '', '2021-04-30'),
(4, 41, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'Anonim', '1.23131E+11', 4000000, 200, '', '2021-04-19'),
(5, 41, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'budi', '555555555', 4000000, 3000, '', '2021-04-20'),
(6, 41, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'badu', '222222222', 4000000, 4000, '', '2021-04-21'),
(7, 41, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'ipin', '3333333333', 4000000, 100, '', '2021-04-22'),
(8, 39, 0, 'honor narsum ....', 3000000, 'Badar Agung Nugroho', '1010501008000015', 150000, 0, '', '2021-04-30'),
(9, 45, 0, 'Pembayaran Paket Meeting Kegiatan Evaluasi Penyelenggaraan Beasiswa S2 DN', 21000000, 'PT. Bandung Indah Permai (Crowne Plaza)', 'Dian Astika', 420000, 0, '', '2021-04-30'),
(10, 48, 0, 'honor narsum ....', 3000000, 'asep', '13123', 150000, 0, '', '2021-04-30'),
(11, 49, 0, 'persediaan', 350000, 'Zamen', '', 0, 0, '', '2021-04-21'),
(12, 49, 0, 'cetak', 100000, 'toko anugrah', '123', 0, 0, '', '2021-04-16'),
(13, 51, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'Anonim', '1.23131E+11', 4000000, 200, '', '2021-04-30'),
(14, 51, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'budi', '555555555', 4000000, 3000, '', '2021-04-30'),
(15, 51, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'badu', '222222222', 4000000, 4000, '', '0000-00-00'),
(16, 51, 0, 'Perjalanan dinas rapat bmn jakarta-depok', 655000, 'ipin', '3333333333', 4000000, 100, '', '0000-00-00'),
(17, 53, 0, 'Perjadin', 3000000, 'Sapri', '86', 0, 0, '', '2021-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `komentar` varchar(800) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`id`, `id_pengajuan`, `komentar`, `id_user`, `tahun`) VALUES
(1, 17, 'vsfsd', 8, 2021),
(2, 10, 'sudah di perbaiki', 8, 2021),
(3, 44, 'ada yg kurang', 6, 2021),
(4, 44, 'woke', 6, 2021),
(5, 38, 'ok', 6, 2021),
(6, 44, 'fs', 6, 2021),
(7, 10, 'coba di cek ya', 8, 2021),
(8, 10, 'oke', 6, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `keterangan`) VALUES
(1, 'LS'),
(2, 'GU'),
(3, 'kontrak'),
(6, 'TUP');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pengajuan`
--

CREATE TABLE `jenis_pengajuan` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_pengajuan`
--

INSERT INTO `jenis_pengajuan` (`id`, `keterangan`, `link`) VALUES
(1, 'Perjalanan Dinas Dalam Negeri', 'v_pd_dn'),
(2, 'Perjalanan dinas Luar Negeri', 'v_pd_ln'),
(3, 'Honor', 'v_honor'),
(4, 'Jasa Profesi', 'v_jasprof'),
(5, 'Pengadan < 50 Juta', 'v_pengadaankurang50'),
(6, 'GU', 'detail_pengajuan'),
(7, 'TUP', 'detail_pengajuan');

-- --------------------------------------------------------

--
-- Table structure for table `k_cair`
--

CREATE TABLE `k_cair` (
  `id` int(11) NOT NULL,
  `time_add` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `k_cair`
--

INSERT INTO `k_cair` (`id`, `time_add`) VALUES
(3, '2021-04-28 16:08:13'),
(4, '2021-04-28 16:21:50'),
(5, '2021-04-28 19:49:53'),
(6, '2021-04-29 03:33:12'),
(7, '2021-04-29 05:02:38'),
(8, '2021-04-29 15:57:31'),
(9, '2021-04-29 16:15:08'),
(10, '2021-04-30 06:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `master_panjar`
--

CREATE TABLE `master_panjar` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_panjar`
--

INSERT INTO `master_panjar` (`id`, `name`) VALUES
(1, 'Panjar GU'),
(2, 'Panjar TUP');

-- --------------------------------------------------------

--
-- Table structure for table `nodin`
--

CREATE TABLE `nodin` (
  `id` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `p_pengajuan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_satker` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_nodin` varchar(255) NOT NULL,
  `status_pengajuan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `approvel_atasan` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nodin`
--

INSERT INTO `nodin` (`id`, `id_jenis`, `p_pengajuan`, `tanggal`, `id_satker`, `id_user`, `no_nodin`, `status_pengajuan`, `tahun`, `approvel_atasan`) VALUES
(1, 2, 'Liko', '2021-04-28', 5, 3, '0001', 1, 2021, 1),
(2, 6, 'anonim', '2021-04-28', 15, 44, '0001', 1, 2021, 1),
(3, 1, 'anonim', '2021-04-28', 15, 33, '0002', 1, 2021, 1),
(4, 6, 'bayu', '2021-04-28', 6, 8, '0001', 1, 2021, 1),
(5, 2, 'bayu', '2021-04-28', 6, 8, '002', 1, 2021, 1),
(6, 1, 'bayu', '2021-04-28', 6, 8, '003', 1, 2021, 1),
(7, 6, 'anonim', '2021-04-29', 5, 3, '002', 1, 2021, 1),
(8, 1, 'bayu', '2021-04-29', 6, 8, '001', 1, 2021, 1),
(10, 6, 'Sri Isnur Wulandari', '2021-04-29', 10, 14, '01', 0, 2021, 0),
(11, 2, 'Liko', '2021-04-29', 1, 7, '001', 1, 2021, 1),
(12, 2, 'Liko', '2021-04-29', 3, 20, '002', 0, 2021, 0),
(14, 2, 'bayu', '2021-04-29', 6, 8, '2', 1, 2021, 1),
(17, 1, 'Sri Isnur Wulandari', '2021-04-29', 10, 14, '02', 0, 2021, 0),
(18, 2, 'Ali Musthafa Kamil', '2021-04-14', 16, 49, '314/BLSDM.4/KU.01.02/04/2021', 1, 2021, 1),
(19, 1, 'Sri Isnur Wulandari', '2021-04-29', 10, 14, '04', 1, 2021, 1),
(20, 2, 'Rudy', '2021-04-29', 15, 33, '00012', 0, 2021, 0),
(22, 6, 'Sri Isnur Wulandari', '2021-04-29', 10, 14, '03', 1, 2021, 1),
(24, 1, 'Sakiyah', '2019-03-19', 5, 3, '30011', 0, 2021, 0),
(25, 1, 'anonim', '2021-04-29', 4, 15, '1', 1, 2021, 1),
(28, 1, 'Andhika Putri Dwi Jayanti', '2021-01-25', 4, 15, '1', 0, 2021, 2),
(29, 1, 'Kunto Wibisono', '2021-04-30', 14, 19, '14/BLSDM.1.3/KU.01.06/03/2021', 1, 2021, 1),
(31, 1, 'Annisa Rahayu W', '2021-02-18', 18, 41, '2/BLSDM.1.TPSDM/04/2021', 0, 0, 0),
(32, 1, 'Sutia Ningsih', '2021-04-30', 2, 18, '13', 1, 2021, 1),
(33, 6, 'Evi Noviyani', '2021-04-16', 3, 20, '09/BLSDM.1.PPL/UM.01.01/04/2021', 0, 2021, 0),
(34, 1, 'Evi Noviyani', '2021-04-27', 3, 20, '02/BLSDM.1.PPL/UM.01.01/01/2021', 1, 2021, 1),
(35, 2, 'Sutia Ningsih', '2021-04-30', 2, 18, '14', 0, 2021, 0),
(36, 6, 'Annisa Rahayu W', '2021-01-28', 18, 41, '1/BLSDM.1.TPSDM/04/2021', 0, 0, 0),
(37, 6, 'aldy', '2021-04-30', 1, 7, '1', 0, 2021, 0),
(38, 6, 'aa', '2021-04-14', 1, 7, '111', 1, 2021, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pencairan`
--

CREATE TABLE `pencairan` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_satker` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `spm` varchar(10) NOT NULL,
  `pengembalian` int(128) NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pencairan`
--

INSERT INTO `pencairan` (`id`, `id_pengajuan`, `nominal`, `keterangan`, `tanggal`, `id_satker`, `status`, `spm`, `pengembalian`, `tanggal_pengembalian`) VALUES
(1, 5, 3000000, 'Pengajuan', '2021-04-28', 6, 0, '500001', 0, NULL),
(2, 7, 2000000, 'Pengajuan', '2021-04-28', 6, 4, 'Panjar GU', 0, NULL),
(3, 8, 3000000, 'Pengajuan', '2021-04-28', 6, 3, '70001', 0, NULL),
(4, 1, 19600000, 'Pengajuan', '2021-04-28', 5, 5, '1', 0, NULL),
(5, 10, 1900000, 'Pengajuan', '2021-04-29', 6, 6, '50005', 0, NULL),
(6, 23, 15611000, 'Pengajuan', '2021-04-14', 16, 7, '60038', 0, NULL),
(7, 0, 5000000, '', '2021-04-29', 4, 8, 'GU', 0, NULL),
(8, 0, 3000000, '', '2021-04-29', 4, 8, 'TUP', 0, NULL),
(9, 0, 3000000, '', '2021-04-29', 2, 9, 'GU', 0, NULL),
(10, 0, 5000000, '', '2021-04-30', 3, 0, 'GU', 0, NULL),
(11, 0, 100300000, '', '2021-04-30', 3, 0, 'TUP', 0, NULL),
(12, 0, 8515000, '', '2021-04-30', 4, 0, 'GU', 0, NULL),
(13, 0, 299900, '', '2021-04-30', 2, 0, 'GU', 0, NULL),
(14, 0, 90000000, '', '2021-04-30', 14, 0, 'TUP', 0, NULL),
(15, 0, 15000000, '', '2021-04-29', 14, 0, 'GU', 0, NULL),
(16, 0, 20000000, '', '2021-04-30', 2, 0, 'TUP', 0, NULL),
(18, 38, 12000000, 'Pengajuan', '2021-04-30', 14, 0, '12323', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `SPM` int(11) NOT NULL,
  `status_verifikasi` int(11) NOT NULL,
  `status_kppn` int(11) NOT NULL,
  `status_spm` int(11) NOT NULL,
  `status_sp2d` int(11) NOT NULL,
  `upload` varchar(255) NOT NULL,
  `id_nodin` int(11) NOT NULL,
  `sp2d` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verifikasi_kasubbag_v` varchar(50) NOT NULL,
  `id_jenis_pengajuan` int(11) NOT NULL,
  `penolakan_kppn` varchar(255) NOT NULL,
  `file_spm` varchar(100) NOT NULL,
  `file_sp2d` varchar(255) NOT NULL,
  `upload_adk` varchar(255) NOT NULL,
  `upload_pertanggungjawaban` varchar(255) NOT NULL,
  `status_pengambilan_uang` int(1) NOT NULL,
  `upload_kekurangan` varchar(225) NOT NULL,
  `status_pj` int(10) NOT NULL,
  `upload_adk_spm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `SPM`, `status_verifikasi`, `status_kppn`, `status_spm`, `status_sp2d`, `upload`, `id_nodin`, `sp2d`, `created_at`, `verifikasi_kasubbag_v`, `id_jenis_pengajuan`, `penolakan_kppn`, `file_spm`, `file_sp2d`, `upload_adk`, `upload_pertanggungjawaban`, `status_pengambilan_uang`, `upload_kekurangan`, `status_pj`, `upload_adk_spm`) VALUES
(1, 1, 24, 21, 5, 7, '1-28-04-2021-194122-Dokumen Testing Kosong.pdf', 1, '10001', '2021-04-28 19:57:20', '1', 6, '', '1-29-04-2021-015659-Dokumen Testing Kosong.pdf', '1-29-04-2021-024819-Dokumen Testing Kosong.pdf', '', '1-29-04-2021-025720-Dokumen Testing Kosong.pdf', 1, '', 1, '1-29-04-2021-015705-Dokumen Testing Kosong.pdf'),
(3, 50002, 6, 0, 0, 0, '', 2, '', '2021-04-29 00:13:22', '1', 7, '', '', '', '', '', 0, '', 0, ''),
(4, 50003, 12, 0, 0, 0, '', 3, '', '2021-04-29 00:17:46', '1', 3, '', '', '', '', '', 0, '', 0, ''),
(5, 500001, 6, 21, 5, 7, '500001-28-04-2021-224952-meiko.pdf', 4, '', '2021-04-28 15:57:03', '1', 7, '', '', '', '500001-28-04-2021-225011-z66429720210128.spp', '', 1, '', 0, '500001-28-04-2021-225613-meiko.pdf'),
(7, 60001, 6, 21, 5, 7, '60001-28-04-2021-230234-meiko.pdf', 5, '', '2021-04-28 16:04:34', '1', 6, '', '', '', '60001-28-04-2021-230258-z66429720210202.spp', '', 1, '', 0, ''),
(8, 70001, 12, 21, 5, 7, '70001-28-04-2021-230546-narsum pak iwan.pdf', 6, '', '2021-04-29 04:39:44', '1', 4, '', '', '', '', '', 1, '', 59, ''),
(9, 10001, 6, 0, 0, 0, '10001-29-04-2021-055702-meiko.pdf', 7, '', '2021-04-28 22:59:01', '', 7, '', '', '', '', '10001-29-04-2021-055901-narsum pak iwan.pdf', 0, '', 1, ''),
(10, 50005, 12, 21, 5, 7, '50005-29-04-2021-100522-narsum pak iwan.pdf', 8, '', '2021-04-29 03:36:52', '1', 4, '', '50005-29-04-2021-102731-z66429720210128.spp', '', '50005-29-04-2021-100551-z66429720210128.spp', '50005-29-04-2021-103652-meiko.pdf', 1, '', 1, '50005-29-04-2021-102953-meiko.pdf'),
(11, 50012, 0, 0, 0, 0, '', 10, '', '2021-04-29 03:34:03', '', 7, '', '', '', '', '', 0, '', 0, ''),
(17, 50010, 6, 0, 5, 0, '50010-29-04-2021-105722-narsum pak iwan.pdf', 14, '', '2021-04-29 04:11:56', '1', 6, '', '50010-29-04-2021-110908-50005-29-04-2021-102731-z66429720210128.spp', '', '50010-29-04-2021-105900-50005-29-04-2021-102731-z66429720210128.spp', '', 0, '', 0, '50010-29-04-2021-111123-meiko.pdf'),
(22, 50014, 0, 0, 0, 0, '', 17, '', '2021-04-29 04:17:21', '', 1, '', '', '', '', '', 0, '', 0, ''),
(23, 60038, 24, 21, 5, 7, '60038-29-04-2021-112423-NODIN.pdf', 18, '210181302007778', '2021-04-29 05:08:18', '1', 6, '', '60038-29-04-2021-115515-z66429720210426.spm', '60038-29-04-2021-120151-Daftar SP2D Satker (18).pdf', '60038-29-04-2021-112516-z66429720210423.spp', '60038-29-04-2021-112723-Manual Guide - User BPP.pdf', 1, '', 1, '60038-29-04-2021-115525-SPM_60038.pdf'),
(24, 50007, 6, 0, 0, 0, '50007-29-04-2021-113245-Nodin Pengajuan UPpdf.pdf', 19, '', '2021-04-29 04:57:30', '', 4, '', '50007-29-04-2021-114918-ST-Undangan Digitalisasi Belanja Pegawai.pdf', '', '50007-29-04-2021-113330-z66429720210325.spp', '50007-29-04-2021-113400-LS 6.pdf', 0, '', 1, '50007-29-04-2021-114938-ST-Undangan Digitalisasi Belanja Pegawai.pdf'),
(25, 70004, 0, 0, 0, 0, '', 20, '', '2021-04-29 04:33:44', '', 6, '', '', '', '', '', 0, '', 0, ''),
(27, 50016, 4, 0, 0, 0, '50016-29-04-2021-113826-SPP TUP1.pdf', 22, '', '2021-04-30 03:12:50', '', 7, '', '', '', '50016-29-04-2021-113843-z66429720210326.spp', '', 0, '', 0, ''),
(29, 30011, 0, 0, 0, 0, '30011-29-04-2021-124445-latih_1.pdf', 24, '', '2021-04-29 05:44:45', '', 1, '', '', '', '', '', 0, '', 0, ''),
(30, 10000, 4, 0, 0, 0, '10000-29-04-2021-230205-Manual Guide - User BPP.pdf', 25, '', '2021-04-30 03:23:44', '', 3, '', '', '', '10000-30-04-2021-100356-z66429720210128.spp', '', 0, '', 0, ''),
(31, 100001, 6, 0, 0, 0, '100001-29-04-2021-231907-realisasi april.pdf', 11, '', '2021-04-29 16:22:37', '', 6, '', '', '', '', '', 0, '', 0, ''),
(32, 500011, 0, 0, 0, 0, '', 26, '', '2021-04-30 02:52:41', '', 4, '', '', '', '', '', 0, '', 0, ''),
(33, 10008, 0, 0, 0, 0, '10008-30-04-2021-102709-02-dok-LS-bag-umum.pdf', 28, '', '2021-04-30 03:27:22', '', 1, '', '', '', '10008-30-04-2021-102722-04-SPP 10008 LS Umum.pdf', '', 0, '', 0, ''),
(34, 20052, 0, 0, 0, 0, '', 31, '', '2021-04-30 03:17:15', '', 1, '', '', '', '', '', 0, '', 0, ''),
(35, 300013, 4, 0, 0, 0, '300013-30-04-2021-102434-SPTJB 23 Nov 2020 No169 SPP.pdf', 32, '', '2021-04-30 03:40:02', '', 3, '', '', '', '', '', 0, '', 0, ''),
(36, 20001, 0, 0, 0, 0, '', 33, '', '2021-04-30 03:02:05', '', 7, '', '', '', '', '', 0, '', 0, ''),
(37, 20006, 0, 0, 0, 0, '20006-30-04-2021-102153-PPK & BP OK - dok LS_PPP_260121 (signed).pdf', 34, '', '2021-04-30 03:21:53', '', 1, '', '', '', '', '', 0, '', 0, ''),
(38, 12323, 12, 21, 5, 21, '12323-30-04-2021-130510-2. Service  PC', 29, '11111111111122222', '2021-05-01 06:10:38', '1', 1, '', '12323-30-04-2021-131601-z66429720210423.rar', '12323-01-05-2021-130717-realisasi april.pdf', '', '', 1, '', 0, '12323-30-04-2021-131514-10127-10133.rar'),
(41, 20068, 0, 0, 0, 0, '', 36, '', '2021-04-30 03:53:43', '', 6, '', '', '', '', '', 0, '', 0, ''),
(43, 1000001, 0, 0, 0, 0, '', 37, '', '2021-04-30 04:10:35', '', 7, '', '', '', '', '', 0, '', 0, ''),
(44, 222, 0, 0, 0, 0, '', 38, '', '2021-04-30 04:14:40', '', 7, '', '', '', '', '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_pum`
--

CREATE TABLE `pengajuan_pum` (
  `id` int(11) NOT NULL,
  `id_detail_pengajuanPum` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(11) NOT NULL,
  `jenis_pengajuan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL,
  `id_satker` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pencairan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan_pum`
--

INSERT INTO `pengajuan_pum` (`id`, `id_detail_pengajuanPum`, `tanggal`, `status`, `jenis_pengajuan`, `no`, `id_satker`, `tahun`, `id_user`, `status_pencairan`) VALUES
(1, 0, '2021-04-29', 1, 'GU', 1, 4, 2021, 0, 1),
(2, 0, '2021-04-29', 1, 'TUP', 2, 4, 2021, 0, 1),
(3, 0, '2021-04-29', 1, 'GU', 1, 2, 2021, 0, 1),
(4, 0, '2021-04-30', 1, 'GU', 1, 3, 2021, 0, 1),
(5, 0, '2021-04-30', 1, 'TUP', 9, 3, 2021, 0, 1),
(6, 0, '2021-04-30', 1, 'GU', 2, 4, 2021, 0, 1),
(7, 0, '2021-04-30', 1, 'GU', 14, 2, 2021, 0, 1),
(8, 0, '2021-04-30', 1, 'TUP', 14, 14, 2021, 0, 1),
(9, 0, '2021-04-30', 1, 'GU', 14, 14, 2021, 0, 1),
(10, 0, '2021-04-30', 1, 'TUP', 15, 2, 2021, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `satker`
--

CREATE TABLE `satker` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `prefik` varchar(255) NOT NULL,
  `ppk` varchar(255) NOT NULL,
  `nip_ppk` varchar(128) NOT NULL,
  `pimpinan` varchar(50) NOT NULL,
  `nip_pimpinan` varchar(20) NOT NULL,
  `bpp` varchar(50) NOT NULL,
  `nip_bpp` varchar(128) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jabatan_pimpinan` varchar(128) NOT NULL,
  `kode_satker` varchar(128) NOT NULL,
  `DIPA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satker`
--

INSERT INTO `satker` (`id`, `keterangan`, `prefik`, `ppk`, `nip_ppk`, `pimpinan`, `nip_pimpinan`, `bpp`, `nip_bpp`, `ttd`, `tahun`, `jabatan_pimpinan`, `kode_satker`, `DIPA`) VALUES
(1, 'Keuangan', 'BLSDM.1', 'Ani Ratnasari', '12121', 'Haryati', '3123123', 'Aldy Saputra', '13123', '', 2021, 'dasd', '', ''),
(2, 'Kepegawaian', 'BLSDM.1', 'Ani Ratnasari', '212321', 'Haryati', '131231', 'Sutia Ningsih', '31231', '', 2021, '', '', ''),
(3, 'PPP', 'BLSDM.1', '', '0', '0', '0', 'nisa', '0', '', 2021, '', '', ''),
(4, 'Umum', 'BLSDM.1', 'Ani Ratnasari', '2147483647', 'Haryati', '2147483647', 'Andhika Putri Dwi Jayanti', '2147483647', '', 2021, 'Pejabat Pembuat Komitmen', '', ''),
(5, 'pusdiklat', 'BLSDM.5', 'Beny Adhi', '2147483647', 'Usuluddin ', '2147483647', 'Sakiyah', '2147483647', '', 2021, 'kepala pusdiklat', '', ''),
(6, 'Puslitbang Aptika dan IKP', 'BLSDM.3', 'Fitri Widyaningsih', '197505032014072004', 'Bonnie M. Thamrin Wahid', '197505032014072001', 'Annisa Muthia Yana Ariyanti', '197505032014072002', 'lidya', 2021, 'Pejabat Pembuat Komitmen', '664297', '5 Desember 2019  DIPA-059.06.1.664297/2020'),
(10, 'Puslitbang SDPPPI', 'BLSDM.2', 'Seno Tribroto, S.Si', '22222', 'Ir. Bonnie M. Thamrin Wahid MT', '2147483647', 'Sri Isnur Wulandari', '2147483647', '', 2021, 'Kepala Puslitbang SDPPPI', '', ''),
(14, 'Layanan Perkantoran ', 'Perkantoran', 'Ani Ratnaari', '0', 'Haryati', '0', 'Aldy Muhammad Sapura', '0', '', 2021, '', '', ''),
(15, 'Proserti2', 'BLSDM.4', 'Zufrial Aristama', '19900513', 'Hedi M. Idris', '19650122', 'Rudy', '19770305', '', 2021, 'Kapusbang Proserti', '', ''),
(16, 'Proserti1', 'BLSDM.4', 'Arif Suryanto Putro', '2147483647', 'Hedi M. Idris', '2147483647', 'Ali Musthafa Kamil', '2147483647', '', 2021, 'Kapusbang Proserti', '', ''),
(17, 'Proserti3', '/SPD/BLSDM.3/2021', 'anonim', '111111111', 'Hedi', '2147483647', 'aa', '312333333', '', 2021, 'Kapus', '', ''),
(18, 'B Siswa', '/BLSDM.1.TPSDM/01/2021', 'Hendra Fatadona, S.Si, MM', '198009162008031003', 'Hendra Fatadona, S.Si, MM', '198009162008031003', 'Annisa Rahayu Wulandari ', '198209222005012013 ', '', 0, 'Koordinator Bagian Perencanaan Program dan Pelaporan', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_satker` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `ttd` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `tahun` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `name`, `id_satker`, `jabatan`, `user_level`, `username`, `password`, `last_login`, `image`, `status`, `ttd`, `email`, `tahun`) VALUES
(1, '195408131983121001', 'aldy', 1, 'Bendahara Pengeluaran', 1, 'admin', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 12:40:08', '', 1, '', '', 0),
(3, '197410051994032002', 'Sakiyah', 5, 'ANALIS PENGELOLAAN KEUANGAN APBN AHLI MUDA', 6, 'Pusdiklat', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:41:47', '', 1, '', 'aki001@kominfo.go.id', 2021),
(4, '199611012018121001', 'Handi', 1, 'Staff', 2, 'Handi', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 13:07:46', '', 1, 'handi', 'Hand007@kominfo.go.id', 2021),
(5, '199108012014032002', 'Ana', 1, 'Staff', 3, 'Anaspm', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 13:08:13', '', 1, '', 'example', 2021),
(6, '199108012014032002', 'Priyo', 1, 'Staff', 2, 'Priyo', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 12:41:37', '', 1, '', 'example', 2021),
(7, '199705192018121001', 'Muhammad Aldy Saputra', 1, 'Bendahara', 5, 'Aldy', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 13:10:58', '', 1, '', 'Muha155@kominfo.go.id', 2021),
(8, '199108012014032001', 'Bayu Yudo Numboro', 6, 'Staff Adminsitasi', 6, 'Aptika', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 12:50:49', 'no_image.jpg', 1, '', 'Bayuyudo20@gmail.com', 2021),
(12, '198402092009011003', 'Hendri Jamaludin', 2, 'Sub Koordinator Verifikasi', 7, 'Hendri', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 12:57:48', '', 1, 'hendri', 'Subang1984@gmail.com', 2021),
(14, 'Example', 'wulan', 10, 'Bpp', 6, 'Sdp3i', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 11:49:35', '', 1, '', 'srii005@kominfo.go.id', 2021),
(15, '198708212009122001', 'Andhika Putri Dwi Jayanti ', 4, 'Analis Kebijakan Barang Milik Negara', 6, 'Umum', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 13:14:18', '', 1, '', 'Andh002@kominfo.go.id', 2021),
(18, '393172017011920003', 'Sutia Ningsih', 2, 'staf administrasi kepegawaian', 6, 'Kepegawaian', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 09:42:36', '', 1, '', 'suti009@fellow.kominfo.go.id', 2021),
(19, '1312312', 'Kunto Wibisono', 14, 'example', 6, 'Perkantoran', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 12:59:13', '', 1, '', 'example', 2021),
(20, '198511212014072004', 'Evi Noviyani ', 3, ' JFU ANALIS MONITORING, EVALUASI DAN PELAPORAN ', 6, 'Evi', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 12:40:07', '', 1, '', 'Evi.evonk@yahoo.com', 2021),
(21, 'dadas', 'Dani', 1, 'dasda', 4, 'Dani', '12dea96fec20593566ab75692c9949596833adc9', '2021-05-01 13:02:08', '', 1, '', 'example', 2021),
(22, '', 'Dimas Bagus', 1, '', 2, 'dimas', '12dea96fec20593566ab75692c9949596833adc9', '2021-03-16 10:00:13', '', 1, '', '', 0),
(23, '', 'Vita', 1, '', 2, 'vita', '12dea96fec20593566ab75692c9949596833adc9', '2021-03-15 23:54:35', '', 1, '', '', 0),
(24, '', 'Amel', 1, '', 2, 'amel', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 11:38:02', '', 1, '', '', 0),
(25, '393173025412961001', 'Icha', 1, 'staf keuangan', 2, 'Icha', '12dea96fec20593566ab75692c9949596833adc9', '2021-03-16 09:59:22', '', 1, '', 'ichaernisa@gmail.com', 24),
(26, '', 'Lisah', 1, '', 2, 'lisahverif', '12dea96fec20593566ab75692c9949596833adc9', '0000-00-00 00:00:00', '', 1, '', '', 0),
(27, '', 'Ana', 1, '', 2, 'Anaverif', '12dea96fec20593566ab75692c9949596833adc9', '0000-00-00 00:00:00', '', 1, '', '', 0),
(28, '', 'dewi', 1, '', 2, 'dewi', '12dea96fec20593566ab75692c9949596833adc9', '0000-00-00 00:00:00', '', 1, '', '', 0),
(29, '', 'Lina', 1, '', 2, 'lina', '12dea96fec20593566ab75692c9949596833adc9', '0000-00-00 00:00:00', '', 1, '', '', 0),
(30, '', 'pimpinan', 1, '', 8, 'pimpinan', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-28 19:54:33', '', 1, '', '', 0),
(31, '198010062006042003', 'PPK Puslitbang Aptika dan IKP', 6, 'Pejabat Pembuat Komitmen', 8, 'Fitri Widyaningsih', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:21:39', '', 1, '', 'fitri002@kominfo.go.id', 2021),
(32, '', 'zufrial', 15, '', 8, 'zufrial', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:13:50', '', 1, '', '', 0),
(33, 'example', 'rudy', 15, 'example', 6, 'rudy', '8b69ca2533ec2c937e2f842f80ef2773af6375fc', '2021-04-29 11:14:40', '', 1, '', 'example', 2021),
(34, '', 'seno', 10, '', 8, 'seno', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 11:49:12', '', 1, '', '', 0),
(35, '', 'pimpinan', 5, '', 8, 'pimpinanpusdiklat', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 05:57:43', '', 1, '', '', 0),
(36, '', 'fitri', 6, '', 8, 'fitri', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:59:34', '', 1, '', '', 0),
(37, '', 'Pimpinan PPP', 3, '', 8, 'pimpinanppp', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 10:54:51', '', 1, '', '', 0),
(38, 'example', 'Ppkses', 1, 'example', 8, 'Ppkses', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 11:17:07', '', 1, '', 'example', 2021),
(39, '', 'Tpsdm', 18, '', 6, 'Tpsdm', '12dea96fec20593566ab75692c9949596833adc9', '2021-03-24 09:37:36', '', 1, '', '', 0),
(40, '196508061992031003', 'Agus Haryono', 2, 'Koordinator Kepegawaian dan Organisasi', 8, 'koorkepeg', 'a7a49e6425c3898df67cf7d9809c4d99704a51c0', '2021-04-30 11:43:39', '', 1, '', 'agus094@kominfo.go.id', 2021),
(41, '198209222005012013', 'Annisa Rahayu Wulandari', 18, 'Subkoordinator Perencanaan Program Dan Anggaran', 6, 'Bsiswa', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 09:36:32', '', 1, '', 'anni002@kominfo.go.id', 2021),
(42, 'example', 'BPP Keuangan', 1, 'example', 6, 'Bppkeuangan', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-27 12:09:30', '', 1, '', 'example', 2021),
(43, '', 'pimpinanumum', 4, '', 8, 'pimpinanumum', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 10:55:46', '', 1, '', '', 0),
(45, '122333333', 'multyvano', 17, 'example', 6, 'multyvano', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-28 22:37:55', '', 1, '', 'example', 2021),
(46, '198209102008031003', 'Beny Adhi', 5, 'PENGEMBANG TEKNOLOGI PEMBELAJARAN AHLI MUDA', 8, 'Ppusdiklat', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:13:37', '', 1, '', 'beny001@kominfo.go.id', 0),
(47, '', 'baso', 17, '', 8, 'baso', '12dea96fec20593566ab75692c9949596833adc9', '0000-00-00 00:00:00', '', 1, '', '', 0),
(48, '', 'arif', 16, '', 8, 'arif', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 11:33:04', '', 1, '', '', 0),
(49, '198103122009121002', 'Ali', 16, 'BPP', 6, 'Ali', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-29 10:02:33', '', 1, '', 'alim003@kominfo.go.id', 2021),
(50, '', 'pimpinan perkantoran', 14, '', 8, 'pimpinanperkantoran', '12dea96fec20593566ab75692c9949596833adc9', '2021-04-30 12:53:54', '', 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'verifikator', 2, 1),
(3, 'spm', 3, 1),
(4, 'kppn', 4, 1),
(5, 'bendahara', 5, 1),
(6, 'bpp', 6, 1),
(10, 'Kasubbag Verifikasi', 7, 1),
(11, 'pimpinan', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id` int(11) NOT NULL,
  `rkakl` varchar(55) NOT NULL,
  `kode_anggaran` varchar(55) NOT NULL,
  `spp` varchar(55) NOT NULL,
  `sptb` varchar(55) NOT NULL,
  `daftar_nominatif` varchar(55) NOT NULL,
  `st` varchar(55) NOT NULL,
  `sp2d` varchar(55) NOT NULL,
  `rincian` varchar(55) NOT NULL,
  `pengeluaran_rill` varchar(55) NOT NULL,
  `tanda_tiba` varchar(55) NOT NULL,
  `tiket_pesawat` varchar(55) NOT NULL,
  `boardingpass` varchar(55) NOT NULL,
  `spd` varchar(55) NOT NULL,
  `invoice_hotel` varchar(55) NOT NULL,
  `lapgas` varchar(55) NOT NULL,
  `undangan` varchar(55) NOT NULL,
  `sp_setneg` varchar(55) NOT NULL,
  `visa_paspor` varchar(55) NOT NULL,
  `nd_pengajuan` varchar(55) NOT NULL,
  `sk` varchar(55) NOT NULL,
  `ssp` varchar(55) NOT NULL,
  `sktjm_kpa` varchar(55) NOT NULL,
  `sk_honor` varchar(55) NOT NULL,
  `tanda_terima_honor` varchar(55) NOT NULL,
  `jadwal_kegiatan` varchar(55) NOT NULL,
  `absensi` varchar(55) NOT NULL,
  `materi_narsum` varchar(55) NOT NULL,
  `faktur_pajak` varchar(55) NOT NULL,
  `npwp` varchar(55) NOT NULL,
  `no_rek` varchar(55) NOT NULL,
  `kwitansi` varchar(55) NOT NULL,
  `alamat_lengkap_penyedia` varchar(55) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `status_pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verifikasi`
--

INSERT INTO `verifikasi` (`id`, `rkakl`, `kode_anggaran`, `spp`, `sptb`, `daftar_nominatif`, `st`, `sp2d`, `rincian`, `pengeluaran_rill`, `tanda_tiba`, `tiket_pesawat`, `boardingpass`, `spd`, `invoice_hotel`, `lapgas`, `undangan`, `sp_setneg`, `visa_paspor`, `nd_pengajuan`, `sk`, `ssp`, `sktjm_kpa`, `sk_honor`, `tanda_terima_honor`, `jadwal_kegiatan`, `absensi`, `materi_narsum`, `faktur_pajak`, `npwp`, `no_rek`, `kwitansi`, `alamat_lengkap_penyedia`, `id_pengajuan`, `status_pengajuan`) VALUES
(108, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 77, '1'),
(109, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 88, '1'),
(123, '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', 89, '1'),
(124, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 90, '1'),
(125, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 91, '1'),
(126, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 92, '1'),
(127, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', 98, '1'),
(128, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 101, '1'),
(129, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 103, '1'),
(130, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 97, ''),
(131, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 93, ''),
(132, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 115, '1'),
(133, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 118, '1'),
(134, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 108, ''),
(135, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 122, '1'),
(136, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 126, ''),
(137, '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 127, '1'),
(140, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 134, ''),
(141, '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 137, '1'),
(142, '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 139, '1'),
(143, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 104, ''),
(144, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 142, '1'),
(146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 148, ''),
(149, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 161, '1'),
(150, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 164, '1'),
(151, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 167, '1'),
(152, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 168, '1'),
(153, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 177, '1'),
(154, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 170, ''),
(155, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 180, '1'),
(156, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 183, '1'),
(157, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 182, '1'),
(158, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 186, '1'),
(159, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 189, '1'),
(160, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 190, '1'),
(161, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, '1'),
(162, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7, '1'),
(163, '1', '1', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', 8, '1'),
(167, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '1'),
(168, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9, '1'),
(169, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, ''),
(170, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 4, '1'),
(171, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 10, '1'),
(172, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, '1'),
(173, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, '1'),
(174, '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 24, '0'),
(175, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 31, ''),
(177, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 27, ''),
(178, '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', 30, '1'),
(179, '1', '1', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 35, ''),
(180, '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 38, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mak` (`mak`);

--
-- Indexes for table `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pengajuan_pum`
--
ALTER TABLE `detail_pengajuan_pum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_pengajuan`
--
ALTER TABLE `jenis_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_cair`
--
ALTER TABLE `k_cair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_panjar`
--
ALTER TABLE `master_panjar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodin`
--
ALTER TABLE `nodin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pencairan`
--
ALTER TABLE `pencairan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SPM` (`SPM`);

--
-- Indexes for table `pengajuan_pum`
--
ALTER TABLE `pengajuan_pum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satker`
--
ALTER TABLE `satker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- Indexes for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT for table `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `detail_pengajuan_pum`
--
ALTER TABLE `detail_pengajuan_pum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_pengajuan`
--
ALTER TABLE `jenis_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `k_cair`
--
ALTER TABLE `k_cair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_panjar`
--
ALTER TABLE `master_panjar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nodin`
--
ALTER TABLE `nodin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pencairan`
--
ALTER TABLE `pencairan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pengajuan_pum`
--
ALTER TABLE `pengajuan_pum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `satker`
--
ALTER TABLE `satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
