-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 05:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inii`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nik` char(7) NOT NULL,
  `namaDosen` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `koor` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nik`, `namaDosen`, `email`, `koor`) VALUES
('0605200', 'Jessy Friska Sitinjak', 'jessy.sitinjak@students.ukdw.ac.id', 0),
('1705200', 'Maytha Sitio', 'maytha.sitio@students.ukdw.ac.id', 1),
('2512200', 'Andreas Baikhati', 'andreas.mahendra@students.ukdw.ac.id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kp`
--

CREATE TABLE `kp` (
  `idKp` int(2) NOT NULL,
  `idReg` int(2) DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `tools` varchar(200) DEFAULT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `lembaga` varchar(30) DEFAULT NULL,
  `pimpinan` varchar(30) DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `dokKp` varchar(12) DEFAULT NULL,
  `statusUjiKp` char(1) DEFAULT '0',
  `nik` char(7) DEFAULT NULL,
  `pengajuanUjian` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kp`
--

INSERT INTO `kp` (`idKp`, `idReg`, `judul`, `tools`, `spesifikasi`, `lembaga`, `pimpinan`, `noTelp`, `alamat`, `fax`, `dokKp`, `statusUjiKp`, `nik`, `pengajuanUjian`) VALUES
(15, 43, 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', '72180195.pdf', '1', '0605200', '1'),
(16, 46, 'sistem kerja indomaret', 'aaaa', 'aaaa', 'indomaret', 'andreas', '12345', 'sagan utara', '12345', '72180195.pdf', '0', NULL, '0'),
(17, 49, 'alfamart', 'alfamart', 'alfamart', 'alfamart', 'alfamart', '12312123', 'sagan utara', '123123123', '72180195.pdf', '1', '2512200', '1'),
(18, 52, 'da', 'da', 'da', 'da', 'da', '123', 'da', '123', '72180195.pdf', '0', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `email`) VALUES
('1234', 'a', 'a@si.ukdw.ac.id'),
('72180195', 'Andreas Widya Mahendra', 'andreas.widya@si.ukdw.ac.id'),
('72180238', 'Maytha Walvinata Sitio', 'maytha.walvinata@si.ukdw.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_06_144748_add_field_socialite_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `idPeriode` int(2) NOT NULL,
  `semester` varchar(5) DEFAULT NULL,
  `tahun` varchar(9) DEFAULT NULL,
  `mulaiKp` date DEFAULT NULL,
  `akhirKp` date NOT NULL,
  `aktif` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`idPeriode`, `semester`, `tahun`, `mulaiKp`, `akhirKp`, `aktif`) VALUES
(7, 'Genap', '2022', '2021-05-01', '2021-05-27', '0'),
(8, 'Genap', '2021', '2021-05-04', '2021-06-30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `prakp`
--

CREATE TABLE `prakp` (
  `idPraKp` int(2) NOT NULL,
  `idReg` int(2) DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `tools` varchar(200) DEFAULT NULL,
  `spesifikasi` varchar(200) DEFAULT NULL,
  `lembaga` varchar(30) DEFAULT NULL,
  `pimpinan` varchar(30) DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `dokPraKp` varchar(12) DEFAULT NULL,
  `statusPraKp` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prakp`
--

INSERT INTO `prakp` (`idPraKp`, `idReg`, `judul`, `tools`, `spesifikasi`, `lembaga`, `pimpinan`, `noTelp`, `alamat`, `fax`, `dokPraKp`, `statusPraKp`) VALUES
(11, 42, 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', 'asda', '72180195.pdf', '1'),
(12, 45, 'sistem kerja indomaret', 'aaaa', 'aaaa', 'indomaret', 'andreas', '12345', 'sagan utara', '12345', '72180195.pdf', '0'),
(13, NULL, 'Sistem Kerja Alfamart', 'a', '', 'a', '', '12345', '', '12345', '', '0'),
(14, NULL, 'Judul', 'Tools', '', 'Lembaga', '', 'No Telp', '', 'No Telp', '', '0'),
(15, 48, 'alfamart', 'alfamart', 'alfamart', 'alfamart', 'alfamart', '123123123', 'sagan utara', '123123123', '72180195.pdf', '0'),
(16, 51, 'da', 'da', 'da', 'da', 'da', '123', 'da', '123', '72180195.pdf', '0');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `idReg` int(2) NOT NULL,
  `idPeriode` int(2) DEFAULT NULL,
  `nim` char(8) DEFAULT NULL,
  `semester` varchar(5) DEFAULT NULL,
  `tahun` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`idReg`, `idPeriode`, `nim`, `semester`, `tahun`) VALUES
(39, 7, '72180195', 'Genap', '2022'),
(40, 8, '72180195', 'Genap', '2021'),
(41, 8, '72180195', 'Genap', '2021'),
(42, 8, '72180195', 'Genap', '2021'),
(43, 8, '72180195', 'Genap', '2021'),
(44, 8, '72180195', 'Genap', '2021'),
(45, 8, '72180195', 'Genap', '2021'),
(46, 8, '72180195', 'Genap', '2021'),
(47, 8, '72180195', 'Genap', '2021'),
(48, 8, '72180195', 'Genap', '2021'),
(49, 8, '72180195', 'Genap', '2021'),
(50, 8, '72180195', 'Genap', '2021'),
(51, 8, '72180195', 'Genap', '2021'),
(52, 8, '72180195', 'Genap', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `idRuang` int(2) NOT NULL,
  `namaRuang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`idRuang`, `namaRuang`) VALUES
(1, 'Asrama Dedo'),
(2, 'Kos Andreas'),
(3, 'Rumah Baocah'),
(4, 'Kos Riswan'),
(5, 'Kos David');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `idSurat` int(2) NOT NULL,
  `idReg` int(2) DEFAULT NULL,
  `lembaga` varchar(30) DEFAULT NULL,
  `pimpinan` varchar(30) DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `dokSurat` varchar(12) DEFAULT NULL,
  `statusSurat` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`idSurat`, `idReg`, `lembaga`, `pimpinan`, `noTelp`, `alamat`, `fax`, `dokSurat`, `statusSurat`) VALUES
(20, 39, 'asda', 'asdsa', 'asda', 'asda', 'asda', '72180195.pdf', '0'),
(21, 40, 'asda', 'asda', 'asda', 'asda', 'asda', '72180195.pdf', '1'),
(22, 41, 'tes', 'tes', 'tes', 'tes', 'tes', '72180195.pdf', '0'),
(23, NULL, 'z', 'z', '', 'z', '', '', '0'),
(24, 44, 'indomaret', 'andreas', '1234567', 'sagan utara', '12345', '72180195.pdf', '0'),
(25, NULL, 'alfamart', 'mahendra', '', 'sagan selatan', '', '', '0'),
(26, 47, 'alfamart', 'alfamart', '123123123123', 'sagan utara', '123123123', '72180195.pdf', '0'),
(27, 50, 'da', 'da', '123', 'da', '123', '72180195.pdf', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `idUjian` int(2) NOT NULL,
  `idRuang` int(2) DEFAULT NULL,
  `idKp` int(2) DEFAULT NULL,
  `nim` char(8) DEFAULT NULL,
  `nik` char(7) DEFAULT NULL,
  `tglUjian` date DEFAULT NULL,
  `jamUjian` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`idUjian`, `idRuang`, `idKp`, `nim`, `nik`, `tglUjian`, `jamUjian`) VALUES
(16, 1, 15, '72180195', '0605200', '2021-06-06', '13:00:00'),
(17, NULL, 17, '72180195', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `socialite_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialite_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `socialite_id`, `socialite_name`, `photo`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'https://lh5.googleusercontent.com/-f8WAo-wNz54/AAAAAAAAAAI/AAAAAAAAAaI/AMZuucm0ROkPVDXaoBZJlVB8B8Q9QTf6zQ/s96-c/photo.jpg', 'Andreas Widya Mahendra', 'andreas.widya@si.ukdw.ac.id', NULL, NULL, 'DrhW559H5oSQ1z2MkETOB4kl5Nm6KTwLvjwLI2nvfr29jDy08gHEDeGQcAKC', '2021-04-23 04:04:16', '2021-04-23 04:04:16'),
(9, NULL, NULL, 'https://lh3.googleusercontent.com/-3Ri2D-n9Svs/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucm6tUpQCBcxrd66rwqTo0jAxkmMEg/s96-c/photo.jpg', 'Hero Man', 'heroman.hero84@gmail.com', NULL, NULL, 'qsq4UbXl2RybUJ4TvKJwDeFB2n8znxRqkZvjqhof9sMcXjAQcXUiRgNqaRPH', '2021-04-25 07:18:42', '2021-04-25 07:18:42'),
(10, NULL, NULL, NULL, 'jong jek siang', 'jongjek@staff.ukdw.ac.id', NULL, '$2y$10$VLKAZmVmp1oFw5SffCkKeuOqY0rcq7EY1TIfdoQ5pQV1/he90CQCi', NULL, '2021-04-25 13:02:02', '2021-04-25 13:02:02'),
(11, NULL, NULL, NULL, 'jong jek', 'jongjek@si.ukdw.ac.id', NULL, '$2y$10$aVHir8hylIzHTOk8W5teJ.h9aHP9nP.moCkw0B2qDksIPGAS5poMS', NULL, '2021-04-25 13:10:15', '2021-04-25 13:10:15'),
(12, NULL, NULL, 'https://lh3.googleusercontent.com/-JipjtdBnFFM/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclHnizqGvu8v3wBBqpLDBH1rMrVdw/s96-c/photo.jpg', 'andreas mahendra', 'andreas.mahendra@gmail.com', NULL, NULL, 'xX2wiJu6G7g3dZ9u0cDNlBwrcAVqU40sxS3yCluy41IMKv4m6J48VAmRMlDY', '2021-04-28 03:41:57', '2021-04-28 03:41:57'),
(13, NULL, NULL, NULL, 'a', 'a@si.ukdw.ac.id', NULL, '$2y$10$C4PBiB4YyQmHvwFgnU8/7eENIqf5VwJ8lQPYtCaanWvpF3F8tUVFu', NULL, '2021-04-28 03:55:31', '2021-04-28 03:55:31'),
(14, NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJzc4h9E0G8HdGYrV3pWoqQU3BjPfiAhm_xYxqTL=s96-c', 'Andreas Mahendra', 'andreas.mahendra@students.ukdw.ac.id', NULL, NULL, 'BRFJpRfDjuLHycVSAANRJ3xuwHKN4ftvOus94pwAUbDMcGdLTAY07ztGOH4E', '2021-06-01 13:19:45', '2021-06-01 13:19:45'),
(15, NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJyAArCachZyLAmquCAUG1UPPXkQ7UUeR05-4hWc=s96-c', 'Maytha Walvinata Sitio', 'maytha.walvinata@si.ukdw.ac.id', NULL, NULL, 'DBewGpa4xozYc88B9PFpvIFM7FNysJNImrfPJdTPMDBlfXQ7skI4HUIhX7uz', '2021-06-01 21:57:29', '2021-06-01 21:57:29'),
(16, NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJynm1EwhjLz4Wo7wy-jWfjSNAwlxP2IVxbY2EA-=s96-c', 'Maytha Sitio', 'maytha.sitio@students.ukdw.ac.id', NULL, NULL, 'M9U4xsQkZ7aptTFcGZQXH0fvWGSp4GHvXbrifUYuuikJ6minAOHDfSFj5FOq', '2021-06-02 02:25:36', '2021-06-02 02:25:36'),
(17, NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJwIKBx76dbNBieBny3Se_psn8HvNweM-0zuo_Wj=s96-c', 'Jessy Sitinjak', 'jessy.sitinjak@students.ukdw.ac.id', NULL, NULL, 'Yd0DFfJQtdDHZXQ2IsGS8fRKTx2AkaFOqzE5XWehFtlrR90zE1kk1IbHaeov', '2021-06-02 23:02:15', '2021-06-02 23:02:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kp`
--
ALTER TABLE `kp`
  ADD PRIMARY KEY (`idKp`),
  ADD KEY `FK_idRegistrasi_2` (`idReg`),
  ADD KEY `FK_nik_2` (`nik`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`idPeriode`);

--
-- Indexes for table `prakp`
--
ALTER TABLE `prakp`
  ADD PRIMARY KEY (`idPraKp`),
  ADD KEY `FK_idRegistrasi` (`idReg`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`idReg`),
  ADD KEY `FK_idPeriode` (`idPeriode`),
  ADD KEY `FK_nim` (`nim`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`idRuang`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`idSurat`),
  ADD KEY `FK_idReg` (`idReg`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`idUjian`),
  ADD KEY `FK_idRuang` (`idRuang`),
  ADD KEY `FK_idKp_2` (`idKp`),
  ADD KEY `FK_nim_3` (`nim`),
  ADD KEY `FK_nik` (`nik`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kp`
--
ALTER TABLE `kp`
  MODIFY `idKp` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `idPeriode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prakp`
--
ALTER TABLE `prakp`
  MODIFY `idPraKp` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `idReg` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `idRuang` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `idSurat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `idUjian` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kp`
--
ALTER TABLE `kp`
  ADD CONSTRAINT `FK_idRegistrasi_2` FOREIGN KEY (`idReg`) REFERENCES `registrasi` (`idReg`),
  ADD CONSTRAINT `FK_nik_2` FOREIGN KEY (`nik`) REFERENCES `dosen` (`nik`);

--
-- Constraints for table `prakp`
--
ALTER TABLE `prakp`
  ADD CONSTRAINT `FK_idRegistrasi` FOREIGN KEY (`idReg`) REFERENCES `registrasi` (`idReg`);

--
-- Constraints for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD CONSTRAINT `FK_idPeriode` FOREIGN KEY (`idPeriode`) REFERENCES `periode` (`idPeriode`),
  ADD CONSTRAINT `FK_nim` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `FK_idReg` FOREIGN KEY (`idReg`) REFERENCES `registrasi` (`idReg`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `FK_idKp_2` FOREIGN KEY (`idKp`) REFERENCES `kp` (`idKp`),
  ADD CONSTRAINT `FK_idRuang` FOREIGN KEY (`idRuang`) REFERENCES `ruang` (`idRuang`),
  ADD CONSTRAINT `FK_nik` FOREIGN KEY (`nik`) REFERENCES `dosen` (`nik`),
  ADD CONSTRAINT `FK_nim_3` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
