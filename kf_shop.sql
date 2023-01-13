-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2023 pada 12.22
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kf_shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'khoiriyahfitriyah787@gmail.com', 'fitriyah', 'khoiriyah fitriyah'),
(2, 'dwi@gmail.com', '123456', 'Junita Dwi Sari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'hijab Phasmina'),
(2, 'hijab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Bengkulu', 20000),
(2, 'Lubuklinggau', 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(22, 'khoiriyahfitriyah787@gmail.com', 'fitriyah', 'khoiriyah fitriyah', '082175103503', 'lubuklinggau'),
(23, 'junita@gmail.com', 'junita', 'Junita', '087654378654', 'palembang'),
(24, 'putra@gmail.com', '12345', 'putra', '089234569836', 'jakarta'),
(25, 'iqbal@gmail.com', '98765', 'Iqbal', '087614297134', 'jawa tengah'),
(26, 'joni@gmail.com', '123456', 'Joni', '0831786791', 'Lubuklinggau');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(34, 80, 'Khoiriyah', 'Mandiri', 3, '2022-12-25', '20221225083245cincin1.jpg'),
(35, 82, 'puput', 'mandiri', 2, '2022-12-25', '20221225083707knit_sneakers.jfif'),
(36, 83, 'fitriyah', 'Mandiri', 3, '2022-12-25', '20221225084142sepatu.jfif'),
(37, 87, 'putra', 'BRI', 3, '2022-12-26', '20221226103846dad_sneakers.jfif'),
(38, 88, 'Iqbal', 'Mandiri', 2, '2022-12-27', '20221227103158sneakers_putih.jfif'),
(39, 89, 'Junita', 'mandiri', 3, '2022-12-27', '20221227103459slip _onsneakers.jfif'),
(40, 91, 'Junita ds', 'mandiri', 391000, '2023-01-02', '20230102115601gelang7 (1).jpg'),
(41, 93, 'putra', 'Mandiri', 802000, '2023-01-02', '20230102121548cincin2.jpg'),
(42, 94, 'Junita', 'Mandiri', 1316000, '2023-01-02', '20230102123322cincin2.jpg'),
(43, 92, 'junitads', 'Mandiri', 626000, '2023-01-02', '20230102123901profile.jpg'),
(44, 96, 'fitriyah', 'Mandiri', 826000, '2023-01-03', '20230103121004profile.jfif'),
(45, 98, 'Joni', 'Mandiri', 825000, '2023-01-04', '20230104014204gelang 6.jpg'),
(46, 86, 'Junita', 'Mandiri', 655000, '2023-01-12', '2023011211500790894b7db72f30977a9d86cf16e3d9d6db06e9dc_0.jpg'),
(47, 100, 'Junita', 'Mandiri', 89000, '2023-01-12', '20230112115436cincin5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL,
  `totalberat` int(11) NOT NULL,
  `provinsi` varchar(225) NOT NULL,
  `distrik` varchar(225) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `estimasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`, `totalberat`, `provinsi`, `distrik`, `type`, `kodepos`, `ekspedisi`, `paket`, `ongkir`, `estimasi`) VALUES
(80, 1, '2022-12-25', 1065000, 'Lubuklinggau selatan 1', 'sudah kirim pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(81, 1, '2022-12-02', 1060000, 'curup, bengkulu', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(82, 1, '2022-12-25', 875000, 'Lubuk kupang, kelurahan lubuk linggau selatan 1', 'sudah kirim pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(83, 22, '2022-12-25', 780000, 'lubuk kupang', 'Barang dikirim', '123efg', 0, '', '', '', '', '', '', 0, ''),
(84, 22, '2022-12-25', 255000, 'lubuk kupang', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(85, 22, '2022-12-25', 695000, 'lubuk linggau', 'pending', '', 0, '', '', '', '', '', '', 0, ''),
(86, 23, '2022-12-26', 655000, 'lubuk kupang sumsel', 'sudah kirim pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(87, 24, '2022-12-26', 1055000, 'Lubuk linggau selatan 1', 'sudah kirim pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(88, 25, '2022-12-27', 570000, 'bengkulu utara', 'lunas', '041109', 0, '', '', '', '', '', '', 0, ''),
(89, 23, '2022-12-27', 925000, 'simpang periuk lubuklinggau', 'lunas', '041109', 0, '', '', '', '', '', '', 0, ''),
(90, 23, '2022-12-31', 1430000, 'lubuklinggau sumatera selatan', 'pending', '', 1400, 'Sumatera Selatan', 'Palembang', 'Kota', '30111', 'jne', 'REG', 90000, '2-3'),
(91, 23, '2022-12-31', 391000, 'lubuk kupang kota lubuklinggau', 'lunas', 'rcyi1', 420, 'Sumatera Selatan', 'Palembang', 'Kota', '30111', 'jne', 'OKE', 41000, '4-5'),
(92, 23, '2023-01-02', 626000, 'DI yogyakarta', 'sudah kirim pembayaran', '', 510, 'DI Yogyakarta', 'Yogyakarta', 'Kota', '55111', 'pos', 'Pos Reguler', 6000, '3 HARI'),
(93, 24, '2023-01-02', 802000, 'Bali', 'lunas', 'b12ge', 700, 'Bali', 'Jembrana', 'Kabupaten', '82251', 'jne', 'OKE', 32000, '7-8'),
(94, 23, '2023-01-02', 1316000, 'DKI Jakarta', 'lunas', 'bikz143', 1160, 'DKI Jakarta', 'Jakarta Selatan', 'Kota', '12230', 'jne', 'REG', 16000, '2-3'),
(95, 23, '2023-01-03', 315000, '', 'pending', '', 300, 'Kepulauan Riau', 'Lingga', 'Kabupaten', '29811', 'tiki', 'ECO', 65000, '4'),
(96, 22, '2023-01-03', 826000, 'Banjar masin kalimantan selatan', 'lunas', 'bnhij', 800, 'Kalimantan Selatan', 'Banjarmasin', 'Kota', '70117', 'jne', 'OKE', 36000, '4-5'),
(97, 22, '2023-01-04', 375000, '', 'pending', '', 300, 'Kalimantan Timur', 'Bontang', 'Kota', '75313', 'jne', 'OKE', 75000, '5-6'),
(98, 26, '2023-01-04', 825000, 'Lubuklinggau', 'sudah kirim pembayaran', '', 700, 'Sumatera Selatan', 'Palembang', 'Kota', '30111', 'jne', 'REG', 45000, '2-3'),
(99, 23, '2023-01-12', 70500, '', 'pending', '', 200, 'Kepulauan Riau', 'Bintan', 'Kabupaten', '29135', 'pos', 'Pos Reguler', 44500, '7 HARI'),
(100, 23, '2023-01-12', 89000, 'kepulauan seribu', 'sudah kirim pembayaran', '', 200, 'Kalimantan Timur', 'Kutai Timur', 'Kabupaten', '75611', 'tiki', 'ECO', 66000, '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(105, 80, 44, 2, 'Gelang Tagan Wanita', 270000, 1000, 2000, 540000),
(106, 80, 43, 2, 'cincin simple', 250000, 300, 600, 500000),
(107, 80, 17, 1, '', 0, 0, 0, 0),
(108, 81, 42, 1, 'Gelang Tangan Wanita', 230000, 200, 200, 230000),
(109, 81, 45, 3, 'Gelang Tangan 1', 270000, 250, 750, 810000),
(110, 82, 57, 2, ' Half Butterfly Ring', 265000, 200, 400, 530000),
(111, 82, 58, 1, 'cincin 3', 320000, 210, 210, 320000),
(112, 83, 43, 1, 'cincin simple', 250000, 300, 300, 250000),
(113, 83, 57, 1, ' Half Butterfly Ring', 265000, 200, 200, 265000),
(114, 83, 50, 1, 'Gelang tangan 2', 240000, 200, 200, 240000),
(115, 84, 42, 1, 'Gelang Tangan Wanita', 230000, 200, 200, 230000),
(116, 85, 45, 1, 'Gelang Tangan 1', 270000, 250, 250, 270000),
(117, 85, 49, 1, 'Sepatu Korean', 400000, 300, 300, 400000),
(118, 86, 42, 1, 'Gelang Tangan Wanita', 230000, 200, 200, 230000),
(120, 87, 43, 1, 'cincin simple', 250000, 300, 300, 250000),
(121, 87, 49, 1, 'cincin 4', 300000, 300, 300, 300000),
(122, 87, 50, 2, 'Gelang tangan 2', 240000, 200, 400, 480000),
(123, 88, 43, 2, 'cincin simple', 250000, 300, 600, 500000),
(124, 88, 63, 1, 'gelang tngan wanita 1', 50000, 100, 100, 50000),
(125, 89, 49, 1, 'cincin elegan', 300000, 300, 300, 300000),
(126, 89, 50, 1, 'Gelang tangan 2', 240000, 200, 200, 240000),
(127, 89, 60, 1, 'vee Gelang Terapi', 360000, 300, 300, 360000),
(128, 90, 43, 2, '', 0, 300, 600, 500000),
(129, 90, 49, 2, '', 0, 300, 600, 600000),
(130, 90, 50, 1, '', 0, 200, 200, 240000),
(131, 91, 43, 1, 'cincin simple', 250000, 300, 300, 250000),
(132, 91, 61, 1, 'cincin 2', 100000, 120, 120, 100000),
(133, 92, 49, 1, 'cincin elegan', 300000, 300, 300, 300000),
(134, 92, 58, 1, 'cincin 3', 320000, 210, 210, 320000),
(135, 93, 63, 1, 'gelang tngan wanita 1', 50000, 100, 100, 50000),
(136, 93, 60, 2, 'vee Gelang Terapi', 360000, 300, 600, 720000),
(137, 94, 56, 4, 'Gelang Tangan  3', 300000, 260, 1040, 1200000),
(138, 94, 61, 1, 'cincin 2', 100000, 120, 120, 100000),
(139, 95, 43, 1, 'cincin simple', 250000, 300, 300, 250000),
(140, 96, 43, 1, 'cincin simple', 250000, 300, 300, 250000),
(141, 96, 45, 2, 'Gelang Tangan 1', 270000, 250, 500, 540000),
(142, 97, 49, 1, 'cincin elegan', 300000, 300, 300, 300000),
(143, 98, 49, 1, 'cincin elegan', 300000, 300, 300, 300000),
(144, 98, 50, 2, 'Gelang tangan 2', 240000, 200, 400, 480000),
(145, 99, 57, 1, 'pashmina diamond', 26000, 200, 200, 26000),
(146, 100, 59, 1, 'pashmina diamond 2', 23000, 200, 200, 23000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stock_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stock_produk`) VALUES
(45, 2, 'Plisket', 30000, 250, 'data.jpeg', '', 15),
(56, 1, 'phasmina diamond', 30000, 260, 'afcbd69d-0713-49e1-a64b-197ea031ed81.jpg', '', 15),
(57, 2, 'pashmina diamond', 26000, 200, 'Jilbab_Sabyan_pasmina_diamond.jpg', '', 14),
(59, 2, 'pashmina diamond 2', 23000, 200, 'JILBAB_HIJAB_KERUDUNG_PASHMINA_NISA_SABYAN_DIAMOND.jpg.webp', '', 14),
(65, 1, 'Pashmina Satin', 35000, 300, '4363f4aa1edd121e279f09d29c856d03.jpg_2200x2200q80.jpg_.webp', 'Hijab dengan bahan lembut dan nyaman digunakan', 15),
(66, 2, 'Pashmina Satin 2', 40000, 250, '8368083_56b064c5-354b-4e0f-88e1-73f6c47cf612_640_640.jpg', '', 15),
(67, 1, 'pashmina diamond', 35000, 200, 'aef2e51debc33f29ed88540c6fabdb23.jpg_2200x2200q80.jpg_.webp', 'bahan nyaman digunakan dan mudah diatur', 15),
(68, 2, 'Pashmina Satin', 60000, 300, '2039860_a9ed81d3-46f3-4433-86d3-441d867c9f30.jpg', 'pashmina panjang, bahan lembut dan nyaman digunakan', 15),
(69, 2, 'Pashmia Plisket 2', 45000, 200, '90894b7db72f30977a9d86cf16e3d9d6db06e9dc_0.jpg', 'bahan lembut dan nyaman digunakan', 15),
(70, 1, 'Pashmina Cerruti', 50000, 200, '3f37e3e61d43bff83e1f2199b690d73d.jpg_720x720q80.jpg_.webp', 'banyak varian warna, dan hijab yang nyaman digunakan', 15),
(71, 2, 'Pashmina ceruti2', 40000, 200, '6618021_d43ccf87-61c7-4655-95f6-55a5ef8b29de_640_640.jpg', 'hijab yang nyaman digunakan, tidak nerawang dan  beuty', 15),
(72, 1, 'Pashmina Plisket', 50000, 300, '84a351147c4dbb06ff6abde1b04074b6.jpg', 'bahan yang digunakan bagus dan tidak nerawang', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(122, 54, 'Artboard 8-100.jpg'),
(124, 56, 'gelang7 (1).jpg'),
(125, 56, 'gelang4.jfif'),
(126, 57, 'cincin4.jpg'),
(127, 58, 'cincin5.jpg'),
(128, 59, 'cincin.jpeg'),
(129, 60, 'gelang5.jpg'),
(130, 61, 'cincin2.jpg'),
(131, 62, 'gelang.jpg'),
(132, 63, 'gelang3.jpg'),
(133, 64, 'ft.jpg'),
(134, 65, '4363f4aa1edd121e279f09d29c856d03.jpg_2200x2200q80.jpg_.webp'),
(135, 65, '2039860_a9ed81d3-46f3-4433-86d3-441d867c9f30.jpg'),
(136, 65, '8368083_56b064c5-354b-4e0f-88e1-73f6c47cf612_640_640.jpg'),
(137, 65, ''),
(138, 66, '8368083_56b064c5-354b-4e0f-88e1-73f6c47cf612_640_640.jpg'),
(139, 67, 'aef2e51debc33f29ed88540c6fabdb23.jpg_2200x2200q80.jpg_.webp'),
(140, 68, '2039860_a9ed81d3-46f3-4433-86d3-441d867c9f30.jpg'),
(141, 69, '90894b7db72f30977a9d86cf16e3d9d6db06e9dc_0.jpg'),
(142, 70, '3f37e3e61d43bff83e1f2199b690d73d.jpg_720x720q80.jpg_.webp'),
(143, 71, '6618021_d43ccf87-61c7-4655-95f6-55a5ef8b29de_640_640.jpg'),
(144, 72, '84a351147c4dbb06ff6abde1b04074b6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
