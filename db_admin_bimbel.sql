-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2024 pada 12.17
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_admin_bimbel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(5) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` time NOT NULL,
  `ruang` varchar(50) NOT NULL,
  `tutor` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `kelas`, `hari`, `jam`, `ruang`, `tutor`, `mapel`) VALUES
(1, 'Kelas 1A', 'Senin', '14:00:00', 'Ruang A.1', 'Nurul Hidayah', 'Matematika'),
(2, 'Kelas 1B', 'Senin', '14:00:00', 'Ruang A.2', 'Mei Iria Fika', 'IPAS'),
(3, 'Kelas 1A', 'Selasa', '14:00:00', 'Ruang A.1', 'Mei Iria Fika', 'IPAS'),
(4, 'Kelas 1B', 'Selasa', '14:00:00', 'Ruang A.2', 'Nurul Hidayah', 'Matematika'),
(5, 'Kelas 1A', 'Rabu', '14:00:00', 'Ruang A.1', 'Layla Ayu Mustika', 'Bahasa Inggris'),
(6, 'Kelas 1B', 'Rabu', '14:00:00', 'Ruang A.2', 'Dina Putri Setia', 'Tematik'),
(7, 'Kelas 1A', 'Kamis', '14:00:00', 'Ruang A.1', 'Dina Putri Setia', 'Tematik'),
(8, 'Kelas 1B', 'Kamis', '14:00:00', 'Ruang A.2', 'Layla Ayu Mustika', 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `jnskel` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `kelas` enum('Kelas 1','Kelas 2','Kelas 3','Kelas 4','Kelas 5','Kelas 6') NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nama`, `tempat`, `tgl`, `jnskel`, `kelas`, `alamat`) VALUES
(1, 'Abe Abraham', 'Tuban', '2017-06-14', 'Laki - Laki', 'Kelas 2', 'Kel. Gedongombo, Kec. Semanding, Kan. Tuban'),
(6, 'Kenneth Immanuel', 'Sidoarjo', '2015-02-04', 'Laki - Laki', 'Kelas 4', 'Ds. Kowang, Kec. Semanding, Kab. Tuban'),
(7, 'Muhammad Arshskalif', 'Tuban', '2018-07-04', 'Laki - Laki', 'Kelas 1', 'Ds. Kowang, Kec. Semanding, Kab. Tuban'),
(8, 'Nilna Assyifa', 'Lamongan', '2016-07-13', 'Perempuan', 'Kelas 3', 'Ds. Montongsekar, Kec. Montong, Kab. Tuban'),
(9, 'Nabila Azzahra', 'Tuban', '2014-09-18', 'Perempuan', 'Kelas 5', 'Ds. Kowang, Kec. Semanding, Kab. Tuban'),
(10, 'Innes Saputri', 'Lamongan', '2013-07-11', 'Perempuan', 'Kelas 6', 'Ds. Beji, Kec. Jenu, Kab. Tuban');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tutor`
--

CREATE TABLE `tb_tutor` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(25) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jnskel` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `nohp` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_tutor`
--

INSERT INTO `tb_tutor` (`id`, `nama`, `tempat`, `tgl`, `jnskel`, `nohp`, `email`, `alamat`) VALUES
(1, 'Nurul Hidayah', 'Blitar', '2003-07-13', 'Perempuan', '085883089087', 'hid88hidayah@gmail.com', 'Ds. Kowang, Kec. Semanding, Kab. Tuban'),
(5, 'Layla Ayu Mustika', 'Tuban', '2003-01-01', 'Perempuan', '085765654543', 'laylaayu@gmail.com', 'Kel. Gedongombo, Semanding, Tuban'),
(6, 'Mei Iria Fika', 'Banyuwangi', '2003-05-01', 'Perempuan', '085678789789', 'meifika@gmail.com', 'Ds. Montongsekar, Kec. Montong, Kab. Tuban'),
(7, 'Dina Putri Setia', 'Lamongan', '2003-02-01', 'Perempuan', '081123234345', 'dinasetia@gmail.com', 'Ds. Pakel, Kec. Montong, Kab. Tuban'),
(8, 'Jerome Polin', 'Bojonegoro', '2000-04-04', 'Laki - Laki', '089876345678', 'jeromepol@gmail.com', 'Ds. Tunah, Kec. Semanding, Kab. Tuban'),
(10, 'Maudy Ayunda Putri', 'Bondowoso', '2003-12-04', 'Perempuan', '085678789001', 'maudyayundaaa@gmail.com', 'Ds. Temaji, Kec. Jenu, Kab. Tuban'),
(17, 'Najwa Shihab', 'Tuban', '2000-01-01', 'Perempuan', '089543768987', 'najwashi98@gmail.com', 'Ds. Kowang, Kec. Semanding, Kab. Tuban');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(5) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `nama`, `username`, `password`) VALUES
(1, 'nurul', 'admin', 12345);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tutor`
--
ALTER TABLE `tb_tutor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_tutor`
--
ALTER TABLE `tb_tutor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
