-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 04:29 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Kode_Bank` int(11) NOT NULL,
  `Kode_Cabang_Bank` int(11) NOT NULL,
  `Nama_Bank` varchar(50) NOT NULL,
  `Alamat_Bank` varchar(50) NOT NULL,
  `TLP_Bank` int(11) NOT NULL,
  `Fax_Bank` int(11) NOT NULL,
  `Email_Bank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_cabang`
--

CREATE TABLE `bank_cabang` (
  `Kode_Bank_Cabang` int(11) NOT NULL,
  `Alamat_Bank_Cabang` varchar(50) NOT NULL,
  `TLPN_Bank_Cabang` int(11) NOT NULL,
  `Fax_Bank_Cabang` int(11) NOT NULL,
  `Email_Bank_Cabang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `Kode_job` int(11) NOT NULL,
  `Nama_job` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `No_KTP` int(11) NOT NULL,
  `Kode_Job` int(11) NOT NULL,
  `Kode_Agama` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamata` varchar(50) NOT NULL,
  `Tangal_lahir` date NOT NULL,
  `Jenis_kelamin` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah_rek`
--

CREATE TABLE `nasabah_rek` (
  `Kode_rek` int(11) NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `kode_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `Kode_petugas` int(11) NOT NULL,
  `Nama_petugas` varchar(50) NOT NULL,
  `Alamat_petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sandi`
--

CREATE TABLE `sandi` (
  `Kode_sandi` int(11) NOT NULL,
  `Nama_sandi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabungan`
--

CREATE TABLE `tabungan` (
  `Kode_transaksi` int(11) NOT NULL,
  `Kode_rek` int(11) NOT NULL,
  `Kode_sandi` int(11) NOT NULL,
  `Kode_petugas` int(11) NOT NULL,
  `TGL_transaksi` date NOT NULL,
  `Debet` varchar(50) NOT NULL,
  `Kredit` varchar(50) NOT NULL,
  `Saldo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Kode_Bank`);

--
-- Indexes for table `bank_cabang`
--
ALTER TABLE `bank_cabang`
  ADD PRIMARY KEY (`Kode_Bank_Cabang`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`Kode_job`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`No_KTP`);

--
-- Indexes for table `nasabah_rek`
--
ALTER TABLE `nasabah_rek`
  ADD PRIMARY KEY (`Kode_rek`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`Kode_petugas`);

--
-- Indexes for table `sandi`
--
ALTER TABLE `sandi`
  ADD PRIMARY KEY (`Kode_sandi`);

--
-- Indexes for table `tabungan`
--
ALTER TABLE `tabungan`
  ADD PRIMARY KEY (`Kode_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
