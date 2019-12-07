-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2019 pada 09.55
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_las`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(4) NOT NULL,
  `judul` varchar(20) DEFAULT NULL,
  `pengarang` varchar(15) DEFAULT NULL,
  `jml_buku` int(11) DEFAULT NULL,
  `kode_penerbit` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `jml_buku`, `kode_penerbit`) VALUES
('BD01', 'dBase III plus', 'Epsi B', 5, '01'),
('BD04', 'Clipper', 'Ahmad G', 4, '02'),
('FI01', 'Fisika', 'Sutrisno', 10, '04'),
('S001', 'DOS', 'M. Urip', 10, '01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(9) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `kota` varchar(15) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kel` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `nama`, `alamat`, `kota`, `tgl_lahir`, `jenis_kel`) VALUES
('123010001', 'Ifan', 'Jl Babarsari', '', '1980-07-27', 'L'),
('123010002', 'Adi', 'Jl Janti', '', '1979-06-28', 'L'),
('123010003', 'Ayu', 'Jl Pemuda', 'Klaten', '1981-05-10', 'P'),
('123010004', 'Yulia', 'Jl Veteran', 'Sleman', '1970-04-15', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `kode_penerbit` varchar(2) NOT NULL,
  `nm_penerbit` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`kode_penerbit`, `nm_penerbit`) VALUES
('01', 'Piksi ITB'),
('02', 'Ganesha'),
('03', 'Epsilon'),
('04', 'Gramedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `tgl_pinjam` date DEFAULT NULL,
  `NIM` varchar(9) DEFAULT NULL,
  `kode_buku` varchar(4) DEFAULT NULL,
  `tgl_hrs_kembali` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`tgl_pinjam`, `NIM`, `kode_buku`, `tgl_hrs_kembali`, `tgl_kembali`) VALUES
('2003-04-20', '123010001', 'S001', '2003-04-23', '2003-04-23'),
('2003-04-20', '123010002', 'BD01', '2003-04-23', '2003-04-22'),
('2003-04-20', '123010003', 'BD04', '2003-04-23', '2003-04-24'),
('2003-04-21', '123010003', 'FI01', '2003-04-24', '2003-04-25'),
('2003-04-21', '123010004', 'S001', '2003-04-24', '2003-04-25'),
('2003-04-21', '123010001', 'BD01', '2003-04-24', '2003-04-24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `fkkode_penerbit` (`kode_penerbit`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`kode_penerbit`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD KEY `fkNIM` (`NIM`),
  ADD KEY `fkkode_buku` (`kode_buku`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fkkode_penerbit` FOREIGN KEY (`kode_penerbit`) REFERENCES `penerbit` (`kode_penerbit`);

--
-- Ketidakleluasaan untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `fkNIM` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `fkkode_buku` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
