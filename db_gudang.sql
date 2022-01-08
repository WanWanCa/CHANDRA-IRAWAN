-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2022 pada 14.08
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `nama_supplier`) VALUES
('01', 'Kursi', 'Peralatan', 'CHANDRA IRAWAN'),
('02', 'Meja', 'Peralatan', 'LINDA LESTARI'),
('03', 'Lemari', 'Peralatan', 'LESTARI IRAWAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `kode_order` varchar(7) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `tanggal_masuk` text NOT NULL,
  `tanggal_keluar` text NOT NULL,
  `nama_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`kode_order`, `quantity`, `tanggal_masuk`, `tanggal_keluar`, `nama_barang`) VALUES
('01', '3', '2 Janurai 2020', '15 Januari 2020', 'Kursi'),
('02', '4', '6 Januari 2020', '2 Februari 2020', 'Meja'),
('03', '3', '3 Januari 2020', '7 Januari 2020', 'Lemari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kode_supplier` varchar(7) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
('01', 'CHANDRA IRAWAN', 'JL BANGAU NO 12 BANAJRMASIN', '0877123456789'),
('02', 'LINDA LESTARI', 'JL BADUI NO 20 BANAJRMASIN', '0877987654321'),
('03', 'LESTARI IRAWAN', 'JL RAWASARI NO 01 BANJARMASIN', '0873275404888');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
