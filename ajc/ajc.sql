-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2021 pada 17.39
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `jenis`, `biaya`) VALUES
(6, 'Cuci Ekspress. M', 35000),
(11, 'Cuci Ekspress. L', 40000),
(12, 'Cuci Complete. M', 45000),
(13, 'Cuci Complete. L', 50000),
(14, 'Cuci Hidrolik. M', 60000),
(15, 'Cuci Hidrolik. L', 65000),
(16, 'Cleaning Wash. M', 85000),
(17, 'Cleaning Wash. L', 90000),
(18, 'Cleaning Wax. M', 155000),
(19, 'Cleaning Wax. L', 160000),
(22, 'Cuci dan Service', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `jenis`, `nama`, `bayar`, `kembali`, `total`, `tanggal`, `id_user`) VALUES
(65, 'C001', '60000', 'Mr. Jepri Rison lala', 100000, 40000, 60000, '2021-04-01', 15),
(66, 'C002', '85000', 'Mr. Al Azam', 100000, 15000, 85000, '2021-04-01', 11),
(67, 'C003', '40000', 'Ms. Umi Nur Hasanah', 40000, 0, 40000, '2021-04-01', 11),
(68, 'C004', '40000', 'Mr. Eri Purwanto', 50000, 10000, 40000, '2021-04-01', 11),
(69, 'C005', '60000', 'Mr. Angga Kurniawan', 70000, 10000, 60000, '2021-04-01', 11),
(70, 'C006', '45000', 'Mr. Ilham', 50000, 5000, 45000, '2021-04-01', 11),
(71, 'C007', '45000', 'Mr. Didi Sofyanto', 50000, 5000, 45000, '2021-04-01', 11),
(72, 'C008', '60000', 'Mr. Ahmad Rizky', 100000, 40000, 60000, '2021-04-01', 11),
(73, 'C009', '65000', 'Mr. Rojiani', 65000, 0, 65000, '2021-04-01', 11),
(74, 'C010', '85000', 'Mr. Yoni Hari Widodo', 100000, 15000, 85000, '2021-04-01', 11),
(75, 'C011', '85000', 'Mr. Hadi Murdoko', 90000, 5000, 85000, '2021-04-01', 11),
(76, 'C012', '40000', 'Ms. Dewi Ayu', 100000, 60000, 40000, '2021-04-01', 11),
(77, 'C013', '155000', 'Mr. Deni Setiawan', 200000, 45000, 155000, '2021-04-01', 11),
(78, 'C014', '85000', 'Mr. Amsir Dwi', 85000, 0, 85000, '2021-04-01', 11),
(79, 'C015', '65000', 'Mr. Ahmad Rayyan', 65000, 0, 65000, '2021-04-01', 11),
(80, 'C016', '85000', 'Mr. Deo Datus', 90000, 5000, 85000, '2021-04-01', 11),
(81, 'C017', '155000', 'Mr. Ridho W.', 160000, 5000, 155000, '2021-04-01', 11),
(82, 'C018', '45000', 'Mr. Nicky S.', 50000, 5000, 45000, '2021-04-01', 11),
(84, 'C020', '60000', 'Ms. Aprilia Efani', 60000, 0, 60000, '2021-04-02', 11),
(85, 'C021', '50000', 'Mr. Indra Prasetyo', 50000, 0, 50000, '2021-04-02', 11),
(86, 'C022', '50000', 'Mr. Yuswi Hulu', 50000, 0, 50000, '2021-04-02', 11),
(87, 'C023', '45000', 'Ms. Jessica Permata S.', 50000, 5000, 45000, '2021-04-02', 11),
(88, 'C024', '45000', 'Mr. Darma S.', 50000, 5000, 45000, '2021-04-02', 11),
(89, 'C025', '50000', 'Mr. Emil Salim', 100000, 50000, 50000, '2021-04-02', 11),
(90, 'C026', '45000', 'Mr. Kresna Saputra', 50000, 5000, 45000, '2021-04-02', 11),
(91, 'C027', '60000', 'Mr. Wilda Zaki F.', 60000, 0, 60000, '2021-04-02', 11),
(92, 'C028', '60000', 'Mr. Diva Maulidani', 70000, 10000, 60000, '2021-04-02', 11),
(93, 'C029', '60000', 'Mr. Andika Surya', 100000, 40000, 60000, '2021-04-02', 11),
(94, 'C030', '60000', 'Mr. Adi Junaidi', 70000, 10000, 60000, '2021-04-02', 11),
(95, 'C031', '90000', 'Mr. Teja Wahyu', 100000, 10000, 90000, '2021-04-03', 11),
(96, 'C032', '85000', 'Mr. Sindy Maulana', 85000, 0, 85000, '2021-04-03', 11),
(97, 'C033', '60000', 'Mr. Ridzal Arif', 60000, 0, 60000, '2021-04-03', 11),
(98, 'C034', '50000', 'Mr. Ervan Surya', 50000, 0, 50000, '2021-04-03', 11),
(99, 'C035', '50000', 'Mr. Ahmad Aziz F.', 50000, 0, 50000, '2021-04-03', 11),
(100, 'C036', '50000', 'Mr. Daffa Adi S.', 100000, 50000, 50000, '2021-04-03', 11),
(101, 'C037', '60000', 'Ms. Aura Nazwa', 70000, 10000, 60000, '2021-04-03', 11),
(102, 'C038', '85000', 'Mr. Surya Ramdhan S.', 100000, 15000, 85000, '2021-04-03', 11),
(103, 'C039', '65000', 'Mr. Farrel H.', 70000, 5000, 65000, '2021-04-03', 11),
(104, 'C040', '60000', 'Mr. Pratama Rizky', 100000, 40000, 60000, '2021-04-03', 11),
(105, 'C041', '65000', 'Mr. Rifandi', 65000, 0, 65000, '2021-04-03', 11),
(106, 'C042', '35000', 'Ms. Hiliyatul Putri', 40000, 5000, 35000, '2021-04-03', 11),
(107, 'C043', '85000', 'Mr. Rayhan Wicaksono', 85000, 0, 85000, '2021-04-03', 11),
(108, 'C044', '90000', 'Mr. Abdul B.', 100000, 10000, 90000, '2021-04-04', 11),
(109, 'C045', '85000', 'Mr. Abi Bayu', 100000, 15000, 85000, '2021-04-04', 11),
(110, 'C046', '45000', 'Ms. Abella', 50000, 5000, 45000, '2021-04-04', 11),
(111, 'C047', '90000', 'Mr. Abdi Ardiansyah', 100000, 10000, 90000, '2021-04-04', 11),
(112, 'C048', '60000', 'Mr. Ubetdillah', 100000, 40000, 60000, '2021-04-04', 11),
(113, 'C049', '60000', 'Mr. Abdullah Ubaid', 90000, 30000, 60000, '2021-04-04', 11),
(114, 'C050', '155000', 'Mr. Adi Purnomo', 155000, 0, 155000, '2021-04-04', 11),
(115, 'C051', '40000', 'Mr. Ahmed Maulana', 50000, 10000, 40000, '2021-04-04', 11),
(116, 'C052', '60000', 'Mr. Aditya P.', 60000, 0, 60000, '2021-04-04', 11),
(117, 'C053', '85000', 'Mr. Kurniawan', 85000, 0, 85000, '2021-04-04', 11),
(118, 'C054', '50000', 'Mr. Aldi Pamungkas', 50000, 0, 50000, '2021-04-04', 11),
(119, 'C055', '60000', 'Mr. Afdal M.', 100000, 40000, 60000, '2021-04-04', 11),
(120, 'C056', '60000', 'Ms. Ade Lina', 100000, 40000, 60000, '2021-04-04', 11),
(121, 'C057', '85000', 'Mr. Yoni W.', 85000, 0, 85000, '2021-04-04', 11),
(122, 'C058', '60000', 'Ms. Ria R.', 60000, 0, 60000, '2021-04-05', 11),
(123, 'C059', '35000', 'Ms. Ira Mey', 40000, 5000, 35000, '2021-04-05', 11),
(124, 'C060', '60000', 'Mr. Anang A.', 70000, 10000, 60000, '2021-04-05', 11),
(125, 'C061', '60000', 'Mr. Rahmat Hidayat', 60000, 0, 60000, '2021-04-05', 11),
(126, 'C062', '65000', 'Mr. Dani Santoso', 65000, 0, 65000, '2021-04-05', 11),
(127, 'C063', '155000', 'Mr. Lalu Angga', 200000, 45000, 155000, '2021-04-05', 11),
(128, 'C064', '155000', 'Ms. Rahma Dwi', 155000, 0, 155000, '2021-04-05', 11),
(129, 'C065', '90000', 'Mr. Opi Anang', 100000, 10000, 90000, '2021-04-06', 11),
(130, 'C066', '85000', 'Mr. Dimas Ito', 85000, 0, 85000, '2021-04-06', 11),
(131, 'C067', '85000', 'Mr. Habib Musa', 85000, 0, 85000, '2021-04-06', 11),
(132, 'C068', '85000', 'Mr. Irsyadi', 90000, 5000, 85000, '2021-04-06', 11),
(133, 'C069', '90000', 'Ms. Fitri Indrani', 90000, 0, 90000, '2021-04-06', 11),
(134, 'C070', '85000', 'Mr. Eric Pradana', 85000, 0, 85000, '2021-04-06', 11),
(135, 'C071', '35000', 'Mr. Ifandi', 50000, 15000, 35000, '2021-04-06', 11),
(136, 'C072', '35000', 'Mr. Imam Handik', 50000, 15000, 35000, '2021-04-06', 11),
(137, 'C073', '35000', 'Mr. Ken Ridho', 35000, 0, 35000, '2021-04-07', 11),
(138, 'C074', '45000', 'Ms. Indri Savitri', 50000, 5000, 45000, '2021-04-07', 11),
(139, 'C075', '50000', 'Mr. Aska Putra H.', 50000, 0, 50000, '2021-04-07', 11),
(140, 'C076', '50000', 'Mr. Aski', 50000, 0, 50000, '2021-04-07', 11),
(141, 'C077', '50000', 'Mr. Dika Hanafi', 100000, 50000, 50000, '2021-04-07', 11),
(142, 'C078', '60000', 'Mr. Riko Andi', 100000, 40000, 60000, '2021-04-07', 11),
(143, 'C079', '60000', 'Mr. Jojor J.', 100000, 40000, 60000, '2021-04-07', 11),
(144, 'C080', '60000', 'Mr. Ahmad Zidan', 100000, 40000, 60000, '2021-04-07', 11),
(145, 'C081', '65000', 'Mr. Erik Tri Y.', 65000, 0, 65000, '2021-04-08', 11),
(146, 'C082', '65000', 'Mr. Reyn Eka D.', 65000, 0, 65000, '2021-04-08', 11),
(147, 'C083', '65000', 'Mr. Ilham Saiful F.', 65000, 0, 65000, '2021-04-08', 11),
(148, 'C084', '60000', 'Mr. M. Hanafi', 100000, 40000, 60000, '2021-04-08', 11),
(149, 'C085', '50000', 'Ms. Mei Yofika', 50000, 0, 50000, '2021-04-08', 11),
(150, 'C086', '35000', 'Ms. Ismi T.', 50000, 15000, 35000, '2021-04-08', 11),
(151, 'C087', '60000', 'Mr. Dwi Rohmatus', 100000, 40000, 60000, '2021-04-08', 11),
(152, 'C088', '60000', 'Mr. Hao Hao', 100000, 40000, 60000, '2021-04-08', 11),
(153, 'C089', '85000', 'Mr. Heru Susilo', 100000, 15000, 85000, '2021-04-08', 11),
(154, 'C090', '50000', 'Mr. M. Ridon', 100000, 50000, 50000, '2021-04-09', 11),
(155, 'C091', '65000', 'Mr. Juli Dwi', 65000, 0, 65000, '2021-04-09', 11),
(156, 'C092', '65000', 'Mr. Tulus W.', 100000, 35000, 65000, '2021-04-09', 11),
(157, 'C093', '45000', 'Mr. Herman', 50000, 5000, 45000, '2021-04-09', 11),
(158, 'C094', '50000', 'Ms. Darwati', 50000, 0, 50000, '2021-04-09', 11),
(159, 'C095', '50000', 'Ms. Inggi H.', 100000, 50000, 50000, '2021-04-09', 11),
(160, 'C096', '50000', 'Mr. Iwan Dwi T.', 100000, 50000, 50000, '2021-04-09', 11),
(161, 'C097', '50000', 'Mr. Irwan Cahyono', 100000, 50000, 50000, '2021-04-09', 11),
(162, 'C098', '90000', 'Mr. Agus Indrayana', 100000, 10000, 90000, '2021-04-09', 11),
(163, 'C099', '65000', 'Ms. Diana Itjin', 70000, 5000, 65000, '2021-04-10', 11),
(164, 'C100', '160000', 'Mr. Angga Saputra', 200000, 40000, 160000, '2021-04-10', 11),
(165, 'C101', '35000', 'Ms. Iin Cahyani', 50000, 15000, 35000, '2021-04-10', 11),
(166, 'C102', '40000', 'Aurelia T.', 40000, 0, 40000, '2021-04-10', 11),
(167, 'C103', '40000', 'Mr. Ardi Jay', 50000, 10000, 40000, '2021-04-10', 11),
(168, 'C104', '45000', 'Mr. Edward P.', 50000, 5000, 45000, '2021-04-10', 11),
(169, 'C105', '45000', 'Mr. Choi Zoi', 100000, 55000, 45000, '2021-04-10', 11),
(170, 'C106', '50000', 'Mr. Emmanuel P.', 50000, 0, 50000, '2021-04-10', 11),
(171, 'C107', '60000', 'Mr. Alfa Hadiprawiro', 60000, 0, 60000, '2021-04-10', 11),
(172, 'C108', '60000', 'Ms. Icha Prasetya', 100000, 40000, 60000, '2021-04-10', 11),
(173, 'C109', '60000', 'Mr. Bambang H.', 60000, 0, 60000, '2021-04-10', 11),
(174, 'C110', '60000', 'Mr. Alvian P.', 100000, 40000, 60000, '2021-04-10', 11),
(175, 'C111', '65000', 'Mr. Ibnu Kohar', 100000, 35000, 65000, '2021-04-10', 11),
(176, 'C112', '65000', 'Mr. Yahya K.', 100000, 35000, 65000, '2021-04-10', 11),
(177, 'C113', '85000', 'Mr. Andik S.', 100000, 15000, 85000, '2021-04-10', 11),
(178, 'C114', '65000', 'Mr. Agus P.', 100000, 35000, 65000, '2021-04-10', 11),
(179, 'C115', '60000', 'Mr. M. Fadli', 75000, 15000, 60000, '2021-04-11', 11),
(180, 'C116', '50000', 'Mr. Iqbal Dwika', 50000, 0, 50000, '2021-04-11', 11),
(181, 'C117', '45000', 'Ms. Sarah Aulia A.', 50000, 5000, 45000, '2021-04-11', 11),
(182, 'C118', '65000', 'Mr. Abi Syahli', 100000, 35000, 65000, '2021-04-11', 11),
(183, 'C119', '65000', 'Ms. Mecca Corne', 65000, 0, 65000, '2021-04-11', 11),
(184, 'C120', '60000', 'Mr. Nizam K.', 60000, 0, 60000, '2021-04-11', 11),
(185, 'C121', '60000', 'Mr. Haris Alam', 100000, 40000, 60000, '2021-04-11', 11),
(186, 'C122', '85000', 'Mr. M. Septian', 100000, 15000, 85000, '2021-04-11', 11),
(187, 'C123', '85000', 'Mr. Jaka Sampurna', 100000, 15000, 85000, '2021-04-11', 11),
(188, 'C124', '85000', 'Mr. M. Alif Nabila', 85000, 0, 85000, '2021-04-11', 11),
(189, 'C125', '35000', 'Ms. Afiqah Balif', 35000, 0, 35000, '2021-04-11', 11),
(190, 'C126', '60000', 'Ms. Vigita Elfanda', 60000, 0, 60000, '2021-04-11', 11),
(191, 'C127', '60000', 'Mr. Abdul Malik', 70000, 10000, 60000, '2021-04-12', 11),
(192, 'C128', '45000', 'Mr. M. Aldi Erdiansyah', 50000, 5000, 45000, '2021-04-12', 11),
(193, 'C129', '50000', 'Ms. Fani Lestari', 100000, 50000, 50000, '2021-04-12', 11),
(194, 'C130', '85000', 'Mr. M. Muhlish', 85000, 0, 85000, '2021-04-12', 11),
(195, 'C131', '60000', 'Mr. Rian Rizky', 60000, 0, 60000, '2021-04-12', 11),
(196, 'C132', '85000', 'Mr. Thoriq Rifqi', 85000, 0, 85000, '2021-04-12', 11),
(197, 'C133', '85000', 'Mr. Hafidz Maulana', 100000, 15000, 85000, '2021-04-12', 11),
(198, 'C134', '60000', 'Mr. Lukman Hakim', 60000, 0, 60000, '2021-04-13', 11),
(199, 'C135', '50000', 'Mr. Joe T.', 50000, 0, 50000, '2021-04-13', 11),
(200, 'C136', '60000', 'Mr. M. Ifan Muhibbi', 100000, 40000, 60000, '2021-04-13', 11),
(201, 'C137', '60000', 'Mr. Beni Syo', 60000, 0, 60000, '2021-04-13', 11),
(202, 'C138', '60000', 'Mr. Arofat M.', 60000, 0, 60000, '2021-04-13', 11),
(203, 'C139', '35000', 'Ms. Shofia A.', 35000, 0, 35000, '2021-04-13', 11),
(204, 'C140', '85000', 'Mr. Kevin Jess', 100000, 15000, 85000, '2021-04-13', 11),
(205, 'C141', '85000', 'Mr. Vicky Kurniawan', 100000, 15000, 85000, '2021-04-14', 11),
(206, 'C142', '85000', 'Mr. Huzein Alnord', 100000, 15000, 85000, '2021-04-14', 11),
(207, 'C143', '85000', 'Mr. Hendri Kurs', 85000, 0, 85000, '2021-04-14', 11),
(208, 'C144', '60000', 'Ms. Friska Denia', 100000, 40000, 60000, '2021-04-14', 11),
(209, 'C145', '60000', 'Ms. Magdalena Tasya', 70000, 10000, 60000, '2021-04-14', 11),
(210, 'C146', '35000', 'Ms. Shinta Dwi K.', 50000, 15000, 35000, '2021-04-14', 11),
(211, 'C147', '85000', 'Mr. Yoga Eko Prasetyo', 100000, 15000, 85000, '2021-04-15', 11),
(212, 'C148', '85000', 'Mr. Falanka', 85000, 0, 85000, '2021-04-15', 11),
(213, 'C149', '155000', 'Mr. M. Fafi', 200000, 45000, 155000, '2021-04-15', 11),
(214, 'C150', '50000', 'Mr. I Putu Arsa', 100000, 50000, 50000, '2021-04-15', 11),
(215, 'C151', '60000', 'Mr. Fahril Irawan', 100000, 40000, 60000, '2021-04-15', 11),
(216, 'C152', '85000', 'Mr. Azmi Kurniawan P.', 100000, 15000, 85000, '2021-04-15', 11),
(217, 'C153', '40000', 'Mr. Putra Edi R.', 100000, 60000, 40000, '2021-04-15', 11),
(218, 'C154', '35000', 'Ms. Rizky Maulidiya', 100000, 65000, 35000, '2021-04-15', 11),
(219, 'C155', '60000', 'Mr. Ekii', 100000, 40000, 60000, '2021-04-15', 11),
(220, 'C156', '40000', 'Mr. Fano Traputra', 50000, 10000, 40000, '2021-04-16', 11),
(221, 'C157', '60000', 'Mr. Hilmi Adillah', 60000, 0, 60000, '2021-04-16', 11),
(222, 'C158', '60000', 'Mr. Alfaridzi', 100000, 40000, 60000, '2021-04-16', 11),
(223, 'C159', '45000', 'Mr. Fadillah', 50000, 5000, 45000, '2021-04-16', 11),
(224, 'C160', '85000', 'Mr. Hairulnas', 100000, 15000, 85000, '2021-04-16', 11),
(225, 'C161', '160000', 'Mr. William Tan', 160000, 0, 160000, '2021-04-16', 11),
(226, 'C162', '65000', 'Mr. Rudy Hardo', 65000, 0, 65000, '2021-04-16', 11),
(227, 'C163', '45000', 'Ms. Putri S.', 45000, 0, 45000, '2021-04-16', 11),
(228, 'C164', '60000', 'Mr. Reza Ahmad Y.', 60000, 0, 60000, '2021-04-16', 11),
(229, 'C165', '65000', 'Mr. Wiranto Timotious', 100000, 35000, 65000, '2021-04-17', 11),
(230, 'C166', '60000', 'Ms. Riche Yuliani', 100000, 40000, 60000, '2021-04-17', 11),
(231, 'C167', '35000', 'Mr. Rafky Sharvie', 35000, 0, 35000, '2021-04-17', 11),
(232, 'C168', '60000', 'Mr. Teddy Marten', 70000, 10000, 60000, '2021-04-17', 11),
(233, 'C169', '85000', 'Ms. Eka Putra S.', 85000, 0, 85000, '2021-04-17', 11),
(234, 'C170', '85000', 'Mr. Abdee Surya', 100000, 15000, 85000, '2021-04-17', 11),
(235, 'C171', '60000', 'Ms. Tania Angelia', 100000, 40000, 60000, '2021-04-17', 11),
(236, 'C172', '45000', 'Ms. Yelly', 50000, 5000, 45000, '2021-04-17', 11),
(237, 'C173', '60000', 'Mr. Nazril Nur', 60000, 0, 60000, '2021-04-17', 11),
(238, 'C174', '35000', 'Ms. Patrica Calista', 50000, 15000, 35000, '2021-04-17', 11),
(239, 'C175', '60000', 'Mr. M. Zidan Mavino', 60000, 0, 60000, '2021-04-18', 11),
(240, 'C176', '45000', 'Mr. Farhan Nur Rohman', 50000, 5000, 45000, '2021-04-18', 11),
(241, 'C177', '60000', 'Mr. Arya Bagaskarna', 60000, 0, 60000, '2021-04-18', 11),
(242, 'C178', '60000', 'Mr. M. Yusuf Fachrul', 60000, 0, 60000, '2021-04-18', 11),
(243, 'C179', '60000', 'Ms. Echa Nuzulula', 100000, 40000, 60000, '2021-04-18', 11),
(244, 'C180', '65000', 'Mr. Rahmad Fasha', 65000, 0, 65000, '2021-04-18', 11),
(245, 'C181', '40000', 'Ms. Rahma Faradilla', 50000, 10000, 40000, '2021-04-18', 11),
(246, 'C182', '155000', 'Mr. Zeki Rahmat', 155000, 0, 155000, '2021-04-18', 11),
(247, 'C183', '60000', 'Mr. Nabil Irfanyudi', 60000, 0, 60000, '2021-04-18', 11),
(248, 'C184', '65000', 'Mr. M. Ali Fraz Pratama', 70000, 5000, 65000, '2021-04-18', 11),
(249, 'C185', '85000', 'Mr. Hasan Bagu Frayoga', 85000, 0, 85000, '2021-04-19', 11),
(250, 'C186', '85000', 'Mr. Rendy Hery S.', 85000, 0, 85000, '2021-04-19', 11),
(251, 'C187', '60000', 'Mr. Gerry S.', 100000, 40000, 60000, '2021-04-19', 11),
(252, 'C188', '45000', 'Mr. Umar Faruk', 50000, 5000, 45000, '2021-04-19', 11),
(253, 'C189', '60000', 'Mr. Bimo Wicaksono', 60000, 0, 60000, '2021-04-19', 11),
(254, 'C190', '60000', 'Mr. Ferry Anggariawan', 100000, 40000, 60000, '2021-04-19', 11),
(255, 'C191', '60000', 'Mr. Rafi Hasani N.', 100000, 40000, 60000, '2021-04-19', 11),
(256, 'C192', '60000', 'Mr. Ilham Z.', 60000, 0, 60000, '2021-04-20', 11),
(257, 'C193', '60000', 'Mr. Wawan Achmad', 60000, 0, 60000, '2021-04-20', 11),
(258, 'C194', '85000', 'Mr. Raden Yochanan', 100000, 15000, 85000, '2021-04-20', 11),
(259, 'C195', '60000', 'Mr. Andrian Arya Wardana', 60000, 0, 60000, '2021-04-20', 11),
(260, 'C196', '35000', 'Ms. Farrah Fadilah', 35000, 0, 35000, '2021-04-20', 11),
(261, 'C197', '65000', 'Mr. Galih Rizky Wahyudi', 70000, 5000, 65000, '2021-04-20', 11),
(262, 'C198', '50000', 'Mr. Abdurrahman Zaki', 50000, 0, 50000, '2021-04-20', 11),
(263, 'C199', '155000', 'Mr. Isa Djafar M.', 200000, 45000, 155000, '2021-04-21', 11),
(264, 'C200', '60000', 'Mr. Fos E.R', 100000, 40000, 60000, '2021-04-21', 11),
(265, 'C201', '85000', 'Mr. Haidar Harun', 85000, 0, 85000, '2021-04-21', 11),
(266, 'C202', '85000', 'Ms. Shavananda Salsabilah H.', 85000, 0, 85000, '2021-04-21', 11),
(267, 'C203', '45000', 'Mr. Lutfi Ahmadi', 50000, 5000, 45000, '2021-04-21', 11),
(268, 'C204', '35000', 'Ms. Kahirin', 35000, 0, 35000, '2021-04-21', 11),
(269, 'C205', '35000', 'Mr. M. Fajri', 50000, 15000, 35000, '2021-04-21', 11),
(270, 'C206', '35000', 'Mr. Zaen Mutahid', 35000, 0, 35000, '2021-04-21', 11),
(271, 'C207', '65000', 'Mr. Alif Agung Sabani', 100000, 35000, 65000, '2021-05-26', 11),
(272, 'C208', '60000', 'Ms. Helty Puspitasari', 60000, 0, 60000, '2021-04-22', 11),
(273, 'C209', '65000', 'Mr. Alpharo Xigma Riesky', 70000, 5000, 65000, '2021-04-22', 11),
(274, 'C210', '35000', 'Mr. Erwin Setyo Subarkah', 50000, 15000, 35000, '2021-04-22', 11),
(275, 'C211', '85000', 'Mr. Andjar Winanto', 85000, 0, 85000, '2021-04-22', 11),
(276, 'C212', '155000', 'Mr. Agus Triyono', 155000, 0, 155000, '2021-04-22', 11),
(277, 'C213', '40000', 'Ms. Anis Kurli Walidan', 40000, 0, 40000, '2021-04-22', 11),
(278, 'C214', '45000', 'Mr. M. Anugrah A.', 45000, 0, 45000, '2021-04-22', 11),
(279, 'C215', '45000', 'Ms. Anna Kamaria', 45000, 0, 45000, '2021-04-22', 11),
(280, 'C216', '45000', 'Ms. Lita Asmira Sari', 50000, 5000, 45000, '2021-04-22', 11),
(281, 'C217', '85000', 'Mr. Arsiah A.', 85000, 0, 85000, '2021-04-23', 11),
(282, 'C218', '85000', 'Mr. Abdul Hasan Ansyari', 85000, 0, 85000, '2021-04-23', 11),
(283, 'C219', '40000', 'Mr. Yeyen Mutia', 50000, 10000, 40000, '2021-04-23', 11),
(284, 'C220', '60000', 'Mr. Reza Mandaztana', 100000, 40000, 60000, '2021-04-23', 11),
(285, 'C221', '60000', 'Mr. Sopian Nur', 60000, 0, 60000, '2021-04-23', 11),
(286, 'C222', '60000', 'Mr. Haris Maulana A.', 60000, 0, 60000, '2021-04-23', 11),
(287, 'C223', '60000', 'Mr. Zerry Abdullah', 100000, 40000, 60000, '2021-04-24', 11),
(288, 'C224', '60000', 'Ms. Dina Merry A.', 100000, 40000, 60000, '2021-04-24', 11),
(289, 'C225', '45000', 'Mr. Faisal Rizani', 45000, 0, 45000, '2021-04-24', 11),
(290, 'C226', '155000', 'Mr. Faizal Rozani A.', 155000, 0, 155000, '2021-04-24', 11),
(291, 'C227', '60000', 'Mr. M. Fahmi Husni', 60000, 0, 60000, '2021-04-24', 11),
(292, 'C228', '65000', 'Ms. Tamara D.A', 70000, 5000, 65000, '2021-04-24', 11),
(293, 'C229', '60000', 'Ms. Maria Ulfah', 60000, 0, 60000, '2021-04-24', 11),
(294, 'C230', '45000', 'Mr. Indra Budi W.', 50000, 5000, 45000, '2021-04-24', 11),
(295, 'C231', '45000', 'Mr. Agung Rudiani', 45000, 0, 45000, '2021-04-24', 11),
(296, 'C232', '45000', 'Mr. Ivan Dista', 50000, 5000, 45000, '2021-04-25', 11),
(297, 'C233', '60000', 'Mr. Rivandi Jatmika', 100000, 40000, 60000, '2021-04-25', 11),
(298, 'C234', '60000', 'Mr. Wahyu Febrianto', 100000, 40000, 60000, '2021-04-25', 11),
(299, 'C235', '60000', 'Mr. Yudi Setyawan', 100000, 40000, 60000, '2021-04-25', 11),
(300, 'C236', '85000', 'Mr. Okin P.S', 100000, 15000, 85000, '2021-04-25', 11),
(301, 'C237', '45000', 'Ms. Indra Mulyani', 45000, 0, 45000, '2021-04-25', 11),
(302, 'C238', '45000', 'Mr. Antonius', 45000, 0, 45000, '2021-04-25', 11),
(303, 'C239', '60000', 'Mr. Bekti Prihatiningsih', 100000, 40000, 60000, '2021-04-25', 11),
(304, 'C240', '65000', 'Mr. Jaka Purnama', 70000, 5000, 65000, '2021-04-25', 11),
(305, 'C241', '45000', 'Mr. Pether Sobian', 50000, 5000, 45000, '2021-04-25', 11),
(306, 'C242', '45000', 'Ms. Lin Magdalena', 50000, 5000, 45000, '2021-04-26', 11),
(307, 'C243', '65000', 'Mr. Faris Hamidi H.', 70000, 5000, 65000, '2021-04-26', 11),
(308, 'C244', '60000', 'Mr. Alimin Gacong', 60000, 0, 60000, '2021-04-26', 11),
(309, 'C245', '65000', 'Mr. G. Yoni Wardoyo', 70000, 5000, 65000, '2021-04-26', 11),
(310, 'C246', '45000', 'Mr. Martinus S.', 45000, 0, 45000, '2021-04-26', 11),
(311, 'C247', '85000', 'Mr. Abdul Varis Pratama', 100000, 15000, 85000, '2021-04-26', 11),
(312, 'C248', '60000', 'Mr. Agustin Setyo Wahyuni', 100000, 40000, 60000, '2021-04-27', 11),
(313, 'C249', '60000', 'Mr. Febriosita Judha P.', 100000, 40000, 60000, '2021-04-27', 11),
(314, 'C250', '45000', 'Ms. Firdausi Nurullah', 45000, 0, 45000, '2021-04-27', 11),
(315, 'C251', '85000', 'Ms. Nurul Azizah', 100000, 15000, 85000, '2021-04-27', 11),
(316, 'C252', '35000', 'Ms. Azha Dian Hakiki', 100000, 65000, 35000, '2021-04-27', 11),
(317, 'C253', '60000', 'Mr. Bagas Firmansyah', 100000, 40000, 60000, '2021-04-27', 11),
(318, 'C254', '160000', 'Mr. Idham Chalid', 200000, 40000, 160000, '2021-04-28', 11),
(319, 'C255', '85000', 'Mr. Amin Muhaimin', 100000, 15000, 85000, '2021-04-28', 11),
(320, 'C256', '85000', 'Mr. Riko Firmansyah', 85000, 0, 85000, '2021-04-28', 11),
(321, 'C257', '35000', 'Ms. Alda Merita', 50000, 15000, 35000, '2021-04-28', 11),
(322, 'C258', '65000', 'Mr. Rio Syah Maulana', 100000, 35000, 65000, '2021-04-28', 11),
(323, 'C259', '85000', 'Mr. M. Efendi', 85000, 0, 85000, '2021-04-28', 11),
(324, 'C260', '85000', 'Mr. Abdullah Rock', 100000, 15000, 85000, '2021-04-29', 11),
(325, 'C261', '50000', 'Ms. Lia Waroka', 50000, 0, 50000, '2021-04-29', 11),
(326, 'C262', '65000', 'Mr. Yudis Tri D.', 65000, 0, 65000, '2021-04-29', 11),
(327, 'C263', '40000', 'Ms. Devianti I.', 40000, 0, 40000, '2021-04-29', 11),
(328, 'C264', '60000', 'Mr. Tito Michel', 70000, 10000, 60000, '2021-04-29', 11),
(329, 'C265', '60000', 'Mr. Fajar Ermansyah Putra', 60000, 0, 60000, '2021-04-29', 11),
(330, 'C266', '50000', 'Mr. Dendi Mustafa', 50000, 0, 50000, '2021-04-29', 11),
(331, 'C267', '85000', 'Ms. Lalona M.', 85000, 0, 85000, '2021-04-29', 11),
(332, 'C268', '65000', 'Mr. Hedry Angga I.', 70000, 5000, 65000, '2021-04-29', 11),
(333, 'C269', '85000', 'Ms. Gina Fitria', 85000, 0, 85000, '2021-04-30', 11),
(334, 'C270', '45000', 'Ms. Aulia Zahra', 50000, 5000, 45000, '2021-04-30', 11),
(335, 'C271', '60000', 'Mr. Rifan Saputra', 60000, 0, 60000, '2021-04-30', 11),
(336, 'C272', '65000', 'Mr. Ivan Fahreza', 65000, 0, 65000, '2021-04-30', 11),
(337, 'C273', '45000', 'Mr. Bernadin', 50000, 5000, 45000, '2021-04-30', 11),
(338, 'C274', '45000', 'Ms. Naura Vitriani', 50000, 5000, 45000, '2021-04-30', 11),
(339, 'C275', '45000', 'Mr. Indra Perwira', 45000, 0, 45000, '2021-04-30', 11),
(340, 'C276', '60000', 'Mr. Haris Sabri Wandra', 100000, 40000, 60000, '2021-04-30', 11),
(341, 'C277', '45000', 'Mr. M. Iqbal Maulana', 45000, 0, 45000, '2021-04-30', 11),
(342, 'C278', '90000', 'Mr. Al Hilal Hamdi', 90000, 0, 90000, '2021-04-30', 11),
(343, 'C279', '60000', 'Mr. Zamri Pon', 60000, 0, 60000, '2021-04-30', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(11, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Owner iGLOW', 'Surabaya', '889823', 1),
(13, 'bagus', '827ccb0eea8a706c4c34a16891f84e7b', 'Bagus Mahendro', 'Ngagel Jaya Utara Gg.02 No.19', '081245980550', 2),
(14, 'deta', '827ccb0eea8a706c4c34a16891f84e7b', 'Reyhan Deta Putra', 'Jl. Pucang Anom Gg.05', '085209869141', 2),
(15, 'fahmi', '827ccb0eea8a706c4c34a16891f84e7b', 'Fahmi Al Husni', 'Jl. Bratang Binangun No.13B', '081231408410', 2),
(16, 'wulan', '827ccb0eea8a706c4c34a16891f84e7b', 'Wulan Ayu Permata Sari', 'Jl. Gubeng Kertajaya Gg.VD No.25', '085910779073', 2),
(17, 'rika', '827ccb0eea8a706c4c34a16891f84e7b', 'Rika Weni Astuti', 'Jl. Nginden Jaya Timur No. 99', '081708330903', 2),
(18, 'novi', '827ccb0eea8a706c4c34a16891f84e7b', 'Novita Sari', 'Jl. Klampis Ngasem', '085205765075', 2),
(19, 'asyiqmln', '827ccb0eea8a706c4c34a16891f84e7b', 'asyiq', 'Malang', '081245980550', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
