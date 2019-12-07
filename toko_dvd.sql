-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2019 pada 01.02
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
-- Database: `toko_dvd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id_film` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `nama_gmb` varchar(100) NOT NULL,
  `sutradara` varchar(100) NOT NULL,
  `pemain_utama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `thn_terbit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id_film`, `judul`, `jenis`, `nama_gmb`, `sutradara`, `pemain_utama`, `harga`, `thn_terbit`) VALUES
(7, 'The Shawshank Redemption', 'Drama', 'img/TheShawshankRedemption.jpg', 'Frank Darabont', ' Tim Robbins, Morgan Freeman, Bob Gunton', 93000, 1994),
(8, 'The Godfather', 'Crime', 'img/TheGodfather.jpg', 'Francis Ford Coppola', ' Marlon Brando, Al Pacino, James Caan', 92000, 1972),
(9, 'The Godfather: Part II', 'Crime', 'img/TheGodfatherPartII.jpg', 'Francis Ford Coppola', ' Al Pacino, Robert De Niro, Robert Duvall', 90000, 1974),
(10, 'The Dark Knight', 'Action', 'img/TheDarkKnight.jpg', 'Christopher Nolan', ' Christian Bale, Heath Ledger, Aaron Eckhart', 90000, 2008),
(11, '12 Angry Men', 'Drama', 'img/12AngryMen.jpg', 'Sidney Lumet', ' Henry Fonda, Lee J. Cobb, Martin Balsam', 89000, 1957),
(12, 'Schindlers List', 'Biography', 'img/SchindlersList.jpg', 'Steven Spielberg', ' Liam Neeson, Ralph Fiennes, Ben Kingsley', 89000, 1993),
(13, 'The Lord of the Rings: The Return of the King', 'Adventure', 'img/TheLordoftheRingsTheReturnoftheKing.jpg', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 89000, 2003),
(14, 'Pulp Fiction', 'Crime', 'img/PulpFiction.jpg', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', 89000, 1994),
(15, 'Fight Club', 'Drama', 'img/FightClub.jpg', 'David Fincher', ' Brad Pitt, Edward Norton, Meat Loaf', 88000, 1999),
(16, 'Joker', 'Crime', 'img/Joker.jpg', 'Todd Phillips', ' Joaquin Phoenix, Robert De Niro, Zazie Beetz', 89000, 2019);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_film`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
