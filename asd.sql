-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2019 pada 20.40
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `reg-no` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `size` int(11) NOT NULL,
  `deck` varchar(50) NOT NULL,
  `no-pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `emp-no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tel-no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `garage`
--

CREATE TABLE `garage` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `req-no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `route`
--

CREATE TABLE `route` (
  `route-no` varchar(50) NOT NULL,
  `avg-pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stage`
--

CREATE TABLE `stage` (
  `stage-no` varchar(50) NOT NULL,
  `route-no` varchar(50) NOT NULL,
  `emp-no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `town`
--

CREATE TABLE `town` (
  `name` varchar(50) NOT NULL,
  `stage-no` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`reg-no`),
  ADD KEY `q` (`no-pass`);

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`emp-no`);

--
-- Indeks untuk tabel `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`address`),
  ADD KEY `t` (`req-no`);

--
-- Indeks untuk tabel `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route-no`);

--
-- Indeks untuk tabel `stage`
--
ALTER TABLE `stage`
  ADD KEY `w` (`stage-no`),
  ADD KEY `e` (`route-no`),
  ADD KEY `r` (`emp-no`);

--
-- Indeks untuk tabel `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`stage-no`),
  ADD KEY `y` (`address`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `q` FOREIGN KEY (`no-pass`) REFERENCES `route` (`route-no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `garage`
--
ALTER TABLE `garage`
  ADD CONSTRAINT `t` FOREIGN KEY (`req-no`) REFERENCES `bus` (`reg-no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `e` FOREIGN KEY (`route-no`) REFERENCES `driver` (`emp-no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r` FOREIGN KEY (`emp-no`) REFERENCES `town` (`stage-no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `w` FOREIGN KEY (`stage-no`) REFERENCES `route` (`route-no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `town`
--
ALTER TABLE `town`
  ADD CONSTRAINT `y` FOREIGN KEY (`address`) REFERENCES `garage` (`address`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
