-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Apr 2020 pada 18.50
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materi_portalberita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'yogi123', '2d1850a2760728a9c607ae123d2c8c30', 'yogi Prayogi'),
(2, 'yuliadi', '54d833a31587caa009b98699bb1a1b03', 'yuliadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `aktif` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `password`, `email`, `aktif`) VALUES
(1, 'Ahmad Firdaus', '827ccb0eea8a706c4c34a16891f84e7b', 'firdaus@gmail.com', b'1111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(70) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(70) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'ini adalah judul berita yang pertama', 1, 'nopic.jpg', 'ini adalah text berita paragraf \r\npertama\r\n\r\nini ada...', '2015-08-10 00:00:00', 1, 8),
(2, 'ini adalah judul berita yang ke dua', 2, 'nopic.jpg', 'ini judul berita kedua, paragraf\r\npertama\r\n\r\nini ad..', '2015-08-16 00:00:00', 1, 4),
(3, 'ini adalah judul berita yang ketiga', 3, 'nopic.jpg', 'teks berita yang ketiga, paragraf\r\npertama', '2015-08-03 00:00:00', 1, 10),
(5, 'tahuuuuuuuuuuuu', 2, '5c112f4d3add6.64px.ico', 'tahu adalah makanan yang enak dan murah', '2020-04-15 00:25:34', 2, 1),
(6, 'test', 2, 'B612_20170515_131410.jpg', 'tes kesehatan yang terbaik', '2020-04-15 00:26:38', 2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklan`
--

CREATE TABLE `iklan` (
  `id_iklan` int(11) NOT NULL,
  `nm_perusahaan` varchar(50) NOT NULL,
  `isi_iklan` varchar(200) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `hargasewa` double NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `totalharga` double NOT NULL,
  `aktif` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `nm_perusahaan`, `isi_iklan`, `gambar`, `tgl_mulai`, `tgl_akhir`, `id_admin`, `hargasewa`, `lamasewa`, `totalharga`, `aktif`, `email`, `link`) VALUES
(1, 'elex', 'Koleksi Buku Terlengkap', 'iklan3.jpg', '2015-08-08', '2015-08-09', 2, 15000, 2, 30000, b'1111111111111111111111111111111', 'mail@elex.com', 'http://elexbuku.com'),
(2, 'Biznet', 'Jaringan luas', 'iklan2.jpg', '2015-08-07', '2015-08-07', 1, 15000, 1, 15000, b'1111111111111111111111111111111', 'mail@biznet.com', 'http://biznet.com'),
(3, 'pekalongan', 'sepertinya harus disediakan yang ada dulu apa tidaknya yakk\r\n', '5c112f4d3add6.64px.ico', '2020-04-14', '2020-04-16', 2, 20000, 3, 60000, b'1111111111111111111111111111111', 'yuliadi846@gmail.com', 'http://pekalongan.co.id'),
(4, 'blora', 'iklan gratis', 'DSC_0703.JPG', '2020-04-16', '2020-04-17', 2, 10000, 2, 20000, b'1111111111111111111111111111111', 'brora@gmail.com', 'http://blora.co.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'nasional'),
(2, 'olah raga'),
(3, 'teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `isi_komentar` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
