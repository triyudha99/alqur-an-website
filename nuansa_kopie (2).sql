-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2025 pada 13.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuansa_kopie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `meja` varchar(10) NOT NULL,
  `waktu` datetime DEFAULT current_timestamp(),
  `status` enum('baru','diproses','selesai') DEFAULT 'baru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `meja`, `waktu`, `status`) VALUES
(28, '7', '2025-05-29 16:59:11', 'baru'),
(30, '8', '2025-05-29 16:59:43', 'baru'),
(33, '3', '2025-05-29 17:44:26', 'baru'),
(36, '7', '2025-05-29 18:14:07', 'baru'),
(37, '7', '2025-05-29 18:16:09', 'baru'),
(38, '3', '2025-05-29 20:20:08', 'baru'),
(39, '3', '2025-05-29 20:20:08', 'baru'),
(40, '8', '2025-05-30 22:57:35', 'baru'),
(42, '2', '2025-05-31 13:53:31', 'baru'),
(43, '2', '2025-05-31 13:53:31', 'baru'),
(44, '11', '2025-06-02 08:28:16', 'baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`id`, `id_pesanan`, `id_produk`, `jumlah`, `catatan`) VALUES
(41, 28, 8, 1, ''),
(43, 30, 8, 1, ''),
(47, 33, 9, 1, ''),
(52, 36, 18, 1, ''),
(53, 37, 18, 1, ''),
(54, 38, 14, 1, ''),
(55, 39, 5, 1, ''),
(56, 40, 7, 1, ''),
(57, 40, 8, 1, ''),
(59, 42, 8, 1, ''),
(60, 42, 11, 1, ''),
(61, 43, 16, 1, ''),
(62, 44, 16, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `kategori`, `harga`, `gambar`) VALUES
(5, 'teh macha', 'AA', 10000.00, 'assets/gambar/iced-matcha-latte_20250529152139.jpg'),
(6, 'Boba taro', 'AA', 25000.00, 'assets/gambar/Taro-Bubble-Tea-3_20250529152344.jpg'),
(7, 'Risol', '11', 20000.00, 'assets/gambar/risol_20250529152404.jpg'),
(8, 'Sosis kentang', '11', 20000.00, 'assets/gambar/Jasa-Foto-Produk-Makanan-Kafe-Dontea-Platter_20250529152432.jpg'),
(9, 'Kopi hitam', 'AA', 10000.00, 'assets/gambar/cafe_20250529152459.jpg'),
(10, 'kentang goreng', '11', 15000.00, 'assets/gambar/picture-1671350620_20250529173040.jpg'),
(11, 'mie goreng', '11', 15000.00, 'assets/gambar/OIP__1__20250529173058.jpg'),
(12, 'nasi goreng', '11', 15000.00, 'assets/gambar/OIP__2__20250529173114.jpg'),
(13, 'mie aceh', '11', 25000.00, 'assets/gambar/mie-aceh_20250529173134.jpg'),
(14, 'sate ayam', '11', 20000.00, 'assets/gambar/makanan-khas-aceh-7-Indonesia-Kaya_20250529173151.jpg'),
(15, 'es kopi susu', 'AA', 20000.00, 'assets/gambar/cappuccino-6996425_1280_20250529173215.jpg'),
(16, 'es greentea', 'AA', 20000.00, 'assets/gambar/526243d4b81c27a54e7aff78855142e2_20250529173242.jpg'),
(17, 'Es teh manis', 'AA', 15000.00, 'assets/gambar/5d31ef90cd6c389e07bc48a08e583122_20250529173328.jpg'),
(18, 'cappucino', 'AA', 15000.00, 'assets/gambar/Resep-Kopi-Cappucino-Minuman-Terpopuler-di-Coffee-Shop_20250529173345.jpg'),
(19, 'milo susu', 'AA', 15000.00, 'assets/gambar/1fbc884e4e1100c5eff14fef004eb64b_20250529173407.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
