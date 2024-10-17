-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 08:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_makanan`
--

CREATE TABLE `daftar_makanan` (
  `ID_Makanan` int(11) NOT NULL,
  `Nama_Makanan` varchar(100) NOT NULL,
  `Asal_Makanan` varchar(100) NOT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_makanan`
--

INSERT INTO `daftar_makanan` (`ID_Makanan`, `Nama_Makanan`, `Asal_Makanan`, `Deskripsi`) VALUES
(1, 'Nasi Goreng', 'Jakarta', 'Nasi yang digoreng dengan kecap, telur, dan bumbu lainnya.'),
(2, 'Rendang', 'Sumatera Barat', 'Daging sapi yang dimasak dengan santan dan rempah-rempah khas Minangkabau.'),
(3, 'Sate Ayam', 'Madura', 'Daging ayam yang ditusuk, dibakar, dan disajikan dengan bumbu kacang.'),
(4, 'Gado-Gado', 'Betawi', 'Salad sayuran dengan bumbu kacang yang khas dari Jakarta.'),
(5, 'Bakso', 'Malang', 'Daging giling yang dibentuk bulat dan disajikan dengan kuah kaldu.'),
(6, 'Lontong Balap', 'Surabaya', 'Lontong yang disajikan dengan tahu, lentho, dan kuah kecap khas Surabaya.'),
(7, 'Pempek', 'Palembang', 'Ikan giling yang dicampur tepung sagu dan disajikan dengan kuah cuko.'),
(8, 'Soto Lamongan', 'Lamongan', 'Soto dengan kuah kuning khas dan suwiran ayam.'),
(9, 'Gudeg', 'Yogyakarta', 'Nangka muda yang dimasak dengan santan dan gula merah, disajikan dengan ayam dan telur.'),
(10, 'Coto Makassar', 'Makassar', 'Sup daging sapi dengan kuah yang kaya akan rempah-rempah.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_makanan`
--
ALTER TABLE `daftar_makanan`
  ADD PRIMARY KEY (`ID_Makanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_makanan`
--
ALTER TABLE `daftar_makanan`
  MODIFY `ID_Makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
