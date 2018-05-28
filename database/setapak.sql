-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Mei 2018 pada 20.12
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `setapak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `homestay`
--

CREATE TABLE `homestay` (
  `id_hs` int(11) NOT NULL,
  `id_pemiliki_hs` int(11) NOT NULL,
  `nama_hs` varchar(255) NOT NULL,
  `harga_hs` int(11) NOT NULL,
  `satuan_harga_hs` varchar(255) NOT NULL,
  `lokasi_hs` varchar(255) NOT NULL,
  `deskripsi_hs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemandu`
--

CREATE TABLE `pemandu` (
  `pemandu_id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `pemandu_status` varchar(255) NOT NULL,
  `pemandu_verif` varchar(255) NOT NULL,
  `last_active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisatawan`
--

CREATE TABLE `wisatawan` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `last_login` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisatawan`
--

INSERT INTO `wisatawan` (`user_id`, `username`, `name`, `password`, `email`, `no_telp`, `gender`, `last_login`, `picture`, `role`) VALUES
(1, 'broemiel', '', 'wkwkwk', 'emiel.jundy@gmail.com', '081230120945', 'male', '10-11-2012', 'app/asik/pict/emiel.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `pemandu`
--
ALTER TABLE `pemandu`
  ADD PRIMARY KEY (`pemandu_id`);

--
-- Indexes for table `wisatawan`
--
ALTER TABLE `wisatawan`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `homestay`
--
ALTER TABLE `homestay`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pemandu`
--
ALTER TABLE `pemandu`
  MODIFY `pemandu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisatawan`
--
ALTER TABLE `wisatawan`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
