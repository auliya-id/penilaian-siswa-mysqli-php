-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 10:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_27280223_mnovalnurauliya`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `kd_absen` int(11) NOT NULL,
  `nm_bulan` varchar(255) NOT NULL,
  `nis` int(11) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `jml_hadir` int(11) NOT NULL,
  `alfa` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`kd_absen`, `nm_bulan`, `nis`, `nm_siswa`, `jml_hadir`, `alfa`, `izin`, `sakit`) VALUES
(1, 'Januari', 981234, 'Sinta Elifiera', 27, 0, 0, 0),
(2, 'Februari', 981234, 'Sinta Elifiera', 22, 1, 1, 2),
(3, 'Maret', 981234, 'Sinta Elifiera', 26, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`) VALUES
('admin', '$2y$10$xkF1oNK7l.RPJH1kssDMHeSStexfYkafy8tNj36CccQZa8ZGKd3Ku', 'User Admin');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` int(11) NOT NULL,
  `nm_guru` varchar(255) NOT NULL,
  `tmp_lahir_guru` varchar(255) NOT NULL,
  `tgl_lahir_guru` date NOT NULL,
  `jkel_guru` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(255) NOT NULL,
  `kd_matpel` int(11) NOT NULL,
  `nm_matpel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `nm_guru`, `tmp_lahir_guru`, `tgl_lahir_guru`, `jkel_guru`, `alamat`, `telp`, `kd_matpel`, `nm_matpel`) VALUES
(239767564, 'MUHAMMAD NUR', 'SURABAYA', '2001-12-11', 'Laki - Laki', 'Jl. Guru Jason Saragih No. 03', '089765456765', 1, 'Ilmu Pengetahuan Alam'),
(247483647, 'NOVAL AULIYA', 'MOJOKERTO', '2000-11-20', 'Laki - Laki', 'Jl Kenangan', '085715909068', 2, 'Pendidikan Agama'),
(875674876, 'DHORA AMMIMA', 'SIDOARJO', '1994-02-19', 'Laki - Laki', 'Jl Bangsal', '087234874842', 5, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kd_kelas` int(11) NOT NULL,
  `nm_kelas` varchar(255) NOT NULL,
  `jml_siswa` int(11) NOT NULL,
  `thn_ajaran` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nm_guru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kd_kelas`, `nm_kelas`, `jml_siswa`, `thn_ajaran`, `nip`, `nm_guru`) VALUES
(1, 'Kelas 7 A', 24, '2022/2023', 239767564, 'MUHAMMAD NUR'),
(2, 'Kelas 7 B', 24, '2022/2023', 247483647, 'NOVAL AULIYA'),
(3, 'Kelas 8 A', 24, '2022/2023', 875674876, 'DHORA AMMIMA');

-- --------------------------------------------------------

--
-- Table structure for table `matpel`
--

CREATE TABLE `matpel` (
  `kd_matpel` int(11) NOT NULL,
  `nm_matpel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matpel`
--

INSERT INTO `matpel` (`kd_matpel`, `nm_matpel`) VALUES
(1, 'Ilmu Pengetahuan Alam'),
(2, 'Pendidikan Agama'),
(3, 'Ilmu Pengetahuan Sosial'),
(4, 'Bahasa Indonesia'),
(5, 'Bahasa Inggris'),
(6, 'Bahasa Mandarin');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `kd_nilai` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `kd_matpel` int(11) NOT NULL,
  `nm_matpel` varchar(255) NOT NULL,
  `uts_sem_ganjil` int(11) NOT NULL,
  `uas_sem_ganjil` int(11) NOT NULL,
  `uts_sem_genap` int(11) NOT NULL,
  `uas_sem_genap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`kd_nilai`, `nis`, `nm_siswa`, `kd_matpel`, `nm_matpel`, `uts_sem_ganjil`, `uas_sem_ganjil`, `uts_sem_genap`, `uas_sem_genap`) VALUES
(1, 456123, 'Rosid Qumaidi', 1, 'Ilmu Pengetahuan Alam', 90, 78, 90, 89),
(2, 456123, 'Rosid Qumaidi', 2, 'Pendidikan Agama', 89, 98, 90, 89),
(3, 456123, 'Rosid Qumaidi', 3, 'Ilmu Pengetahuan Sosial', 90, 89, 90, 100),
(4, 456123, 'Rosid Qumaidi', 4, 'Bahasa Indonesia', 99, 89, 88, 78);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `tmp_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(255) NOT NULL,
  `nm_wali` varchar(255) NOT NULL,
  `kd_kelas` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nm_siswa`, `tmp_lahir`, `tgl_lahir`, `jkel`, `alamat`, `telp`, `nm_wali`, `kd_kelas`, `username`, `password`) VALUES
(456123, 'Rosid Qumaidi', 'Mojokerto', '2002-08-23', 'Laki - Laki', 'Jl. Depati Said', '085654765764', 'NOVAL AULIYA', 1, 'rosid', '$2y$10$Sisb/GdgN940RNEZrQKC2.nFTkHgX2gFCqYJc8n5VfQL9HDuTHyLS'),
(876345, 'Adim Gozali', 'Bondowoso', '2002-12-13', 'Laki - Laki', 'Jl. Gatot Subroto No.Kav. 40-41', '087342834342', 'MUHAMMAD NUR', 2, 'adim', '$2y$10$fvhVnItJWpvD65F1BjZPauR7bRygqAK5ViJPOlHOHZhhzbnIAjNzK'),
(981234, 'Sinta Elifiera', 'Bogor', '2003-05-23', 'Perempuan', 'Jl. Depati Said', '083474843842', 'DHORA AMMIMA', 3, 'sinta', '$2y$10$XMLcisy6cYHnh7ldbKB5X.0wvRnkDNz6ykMAZXkJUR3Xn9wNDoWBS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`kd_absen`),
  ADD UNIQUE KEY `kd_absen` (`kd_absen`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `kd_matpel` (`kd_matpel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kd_kelas`),
  ADD UNIQUE KEY `kd_kelas` (`kd_kelas`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `matpel`
--
ALTER TABLE `matpel`
  ADD PRIMARY KEY (`kd_matpel`),
  ADD UNIQUE KEY `kd_matpel` (`kd_matpel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kd_nilai`),
  ADD UNIQUE KEY `kd_nilai` (`kd_nilai`),
  ADD KEY `kd_matpel` (`kd_matpel`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `kd_kelas` (`kd_kelas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`kd_matpel`) REFERENCES `matpel` (`kd_matpel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kd_matpel`) REFERENCES `matpel` (`kd_matpel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kd_kelas`) REFERENCES `kelas` (`kd_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
