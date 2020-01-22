-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 07:15 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jualin`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `level`, `status`) VALUES
(52, 'admin', '$2y$10$eJkU6SOpHWSfc/BeYOZJJeq0iHRp1VdqY4KKGgjD9iij.I/BwXFlq', 1, 1),
(71, 'darmawan', '$2y$10$4I1ahy157eyHfI7lhWFPXOpsqtGj2fxjzXCrp/Zj2UrxTLWu8Udbm', 2, 1),
(79, 'asus', '$2y$10$hyO7dz/F3PjoivTya5l8sO1m48js/.Vmv/obcb8nzXJI/DcUADATK', 2, 1),
(80, 'firman', '$2y$10$bZmP5q8YHnCKWfNyKLa4JOCHRJ4sVxpp.lHlVRXX1spKQ6APoLW/i', 2, 1),
(87, 'puri', '$2y$10$pxdoCxp6h4iabPnv.fwni..byytlT.yWtKeDk8o3.DDTVTnoX/oiq', 2, 1),
(115, 'donny', '$2y$10$SsR2mj4kLaziRHAm99gRf.6X9DD16ed.ulUUMQPRv0gA0ICwtLo22', 2, 1),
(117, 'satu', '$2y$10$6e53Fk0fNByZZkFu/xb7Wuskq8d063jrsiNiWYsgqbYaabWTINmBy', 2, 1),
(119, 'adit', '$2y$10$.TefbDl7pmnt6tVmuqAeT.nsn97JqJDsrzruP7Ht.mr9TKOBM0mkG', 2, 1),
(168, 'asem', '$2y$10$wZM9ez6Zih6f5VZE/b/ZSeAqGUEyndymzUPEqZ8va8aReBeY79bLG', 2, 1),
(177, 'asem123', '$2y$10$0v8vDY6GgBdTvQMaj1wheerZlR4zafLZhC1tu6ijHvXYDpHoRUNmm', 2, 1),
(178, 'agus', '$2y$10$rhC2v5DvPR.W4.d9Rn.jMOxp6XHhka3oWgUp69tfEuEBQFI3PnU.K', 2, 1),
(179, 'kambil', '$2y$10$5zegbGZN/EdHxnvkWa74qObYIlQsxV79qLRM7a2NKctNPwMyDSDuW', 2, 1),
(184, 'Rox', '$2y$10$/7x8fOc1wl9qaPFlrtusVuRhaWboFrBWwdWyUAVdPaZR3ZDrAd3Ou', 2, 1),
(188, 'huga', '$2y$10$T0kqkIc1dldcO5W1ffANCeOiogSJb3LH6MKZy.rkwdo54WmqfZqoi', 2, 1),
(191, 'asem33', '$2y$10$VtUAKGCVPTF7c1eQE.dLfOMYSLddMp9a/w9OgO.1h.3bfQpyFSxAm', 1, 1),
(193, 'kampret', '$2y$10$/sJ.zUkrKoJe3uwLpSBrle.IzbtKvggbcKZDmWuRS/Ifd85fMH4Oa', 2, 1),
(194, 'mario', '$2y$10$0ghaIEQeXNQ4EEeACe81iudqKtCD4TRChvxie4yPTiiRd6cJjyOmi', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_terbit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permalink` varchar(255) NOT NULL,
  `id_akun` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink` (`permalink`),
  KEY `id_akun` (`id_akun`),
  KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `img`, `isi`, `status`, `tgl_terbit`, `permalink`, `id_akun`, `id_kategori`) VALUES
(1, 'Dicari Tenaga Wanita Cantik dan Gaul 123', 'dicari-tenaga-wanita-cantik-dan-gaul.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus mollis bibendum. Vivamus tincidunt congue odio, vitae molestie sapien sodales volutpat. Maecenas mollis mollis efficitur. Donec et ligula sit amet mi interdum sagittis. Curabitur dignissim odio purus, id finibus odio rutrum vitae. Pellentesque lobortis quis tortor eu mollis. Proin sed justo lectus. Suspendisse sit amet pretium nunc. Suspendisse ut purus ullamcorper, mollis purus a, sagittis magna. Praesent laoreet commodo tellus eget lacinia. Fusce tincidunt augue quis augue posuere, at tristique quam euismod. Nulla scelerisque leo eu euismod interdum. Mauris dolor libero, tristique in ante id, scelerisque egestas purus. Vivamus non hendrerit arcu, et dignissim lacus. Aliquam tempor commodo euismod. Pellentesque sit amet libero ultricies, euismod risus eu, aliquet turpis.\r\n<br><br>\r\nInteger imperdiet justo vel sagittis volutpat. Donec eu diam vitae quam posuere efficitur eu eget magna. Curabitur vehicula viverra aliquet. Donec aliquam pretium nunc ac mattis. Nam quis lectus euismod eros auctor lobortis. In convallis malesuada laoreet. Nunc nisl ipsum, vestibulum ac turpis quis, vestibulum efficitur massa.\r\n<br><br>\r\nMaecenas fringilla faucibus gravida. Sed ullamcorper leo ut posuere eleifend. Aliquam scelerisque eu erat nec convallis. Vestibulum purus justo, commodo at sapien sit amet, porta efficitur libero. In hac habitasse platea dictumst. Suspendisse libero orci, mollis ut pellentesque ut, finibus id nisl. Donec pharetra erat eu neque ultricies ullamcorper id at est. In cursus sodales massa et blandit. Vivamus vitae auctor velit. Integer quis fringilla ligula, eget dapibus augue. Cras faucibus justo euismod lobortis tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean ac ligula purus. Nunc quam nisl, auctor vel ultrices sed, imperdiet vel enim. Morbi sit amet vulputate leo. Pellentesque vulputate lectus sit amet velit ultricies, faucibus interdum felis venenatis.\r\n<br><br>\r\nPraesent sit amet dui sit amet tortor blandit volutpat sit amet in sapien. Nulla bibendum odio vel tristique bibendum. Morbi eleifend, nibh a ultrices auctor, lacus tellus varius erat, in luctus quam felis eget elit. Quisque non libero a velit luctus vestibulum. Donec malesuada viverra ornare. Fusce sagittis semper luctus. Ut posuere egestas sollicitudin. Nulla eu lectus aliquet, ornare dui eget, elementum augue. Integer eu placerat orci.\r\n<br><br>\r\nProin nec leo sit amet urna hendrerit aliquet id in nisl. Aliquam erat volutpat. Integer tristique augue nec sodales consequat. Praesent felis tortor, pretium nec orci quis, sodales facilisis mauris. Praesent pretium risus sed lacus pharetra sagittis. Vestibulum pharetra, leo eu ullamcorper aliquam, mi orci auctor dolor, sed tempus lorem dolor ac nulla. Nulla fringilla turpis tincidunt, viverra odio vel, eleifend sem. Nunc tempor ut magna blandit consectetur. Praesent eros dui, dignissim non lobortis vel, fringilla sagittis neque. Phasellus eu maximus ipsum.', 1, '2015-12-04 15:25:05', 'dicari-tenaga-wanita-cantik-dan-gaul', 52, 4),
(2, 'Bagi2 Kode Kupon Free 5 Baju', 'home5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus mollis bibendum. Vivamus tincidunt congue odio, vitae molestie sapien sodales volutpat. Maecenas mollis mollis efficitur. Donec et ligula sit amet mi interdum sagittis. Curabitur dignissim odio purus, id finibus odio rutrum vitae. Pellentesque lobortis quis tortor eu mollis. Proin sed justo lectus. Suspendisse sit amet pretium nunc. Suspendisse ut purus ullamcorper, mollis purus a, sagittis magna. Praesent laoreet commodo tellus eget lacinia. Fusce tincidunt augue quis augue posuere, at tristique quam euismod. Nulla scelerisque leo eu euismod interdum. Mauris dolor libero, tristique in ante id, scelerisque egestas purus. Vivamus non hendrerit arcu, et dignissim lacus. Aliquam tempor commodo euismod. Pellentesque sit amet libero ultricies, euismod risus eu, aliquet turpis.\n<br><br>\nInteger imperdiet justo vel sagittis volutpat. Donec eu diam vitae quam posuere efficitur eu eget magna. Curabitur vehicula viverra aliquet. Donec aliquam pretium nunc ac mattis. Nam quis lectus euismod eros auctor lobortis. In convallis malesuada laoreet. Nunc nisl ipsum, vestibulum ac turpis quis, vestibulum efficitur massa.\n<br><br>\nMaecenas fringilla faucibus gravida. Sed ullamcorper leo ut posuere eleifend. Aliquam scelerisque eu erat nec convallis. Vestibulum purus justo, commodo at sapien sit amet, porta efficitur libero. In hac habitasse platea dictumst. Suspendisse libero orci, mollis ut pellentesque ut, finibus id nisl. Donec pharetra erat eu neque ultricies ullamcorper id at est. In cursus sodales massa et blandit. Vivamus vitae auctor velit. Integer quis fringilla ligula, eget dapibus augue. Cras faucibus justo euismod lobortis tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean ac ligula purus. Nunc quam nisl, auctor vel ultrices sed, imperdiet vel enim. Morbi sit amet vulputate leo. Pellentesque vulputate lectus sit amet velit ultricies, faucibus interdum felis venenatis.\n<br><br>\nPraesent sit amet dui sit amet tortor blandit volutpat sit amet in sapien. Nulla bibendum odio vel tristique bibendum. Morbi eleifend, nibh a ultrices auctor, lacus tellus varius erat, in luctus quam felis eget elit. Quisque non libero a velit luctus vestibulum. Donec malesuada viverra ornare. Fusce sagittis semper luctus. Ut posuere egestas sollicitudin. Nulla eu lectus aliquet, ornare dui eget, elementum augue. Integer eu placerat orci.\n<br><br>\nProin nec leo sit amet urna hendrerit aliquet id in nisl. Aliquam erat volutpat. Integer tristique augue nec sodales consequat. Praesent felis tortor, pretium nec orci quis, sodales facilisis mauris. Praesent pretium risus sed lacus pharetra sagittis. Vestibulum pharetra, leo eu ullamcorper aliquam, mi orci auctor dolor, sed tempus lorem dolor ac nulla. Nulla fringilla turpis tincidunt, viverra odio vel, eleifend sem. Nunc tempor ut magna blandit consectetur. Praesent eros dui, dignissim non lobortis vel, fringilla sagittis neque. Phasellus eu maximus ipsum.', 1, '2015-12-04 15:26:52', 'bagi-bagi-kode-kupon-free-5-baju', 52, 5),
(3, 'Promo! 50% Semua Baju', 'home2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus mollis bibendum. Vivamus tincidunt congue odio, vitae molestie sapien sodales volutpat. Maecenas mollis mollis efficitur. Donec et ligula sit amet mi interdum sagittis. Curabitur dignissim odio purus, id finibus odio rutrum vitae. Pellentesque lobortis quis tortor eu mollis. Proin sed justo lectus. Suspendisse sit amet pretium nunc. Suspendisse ut purus ullamcorper, mollis purus a, sagittis magna. Praesent laoreet commodo tellus eget lacinia. Fusce tincidunt augue quis augue posuere, at tristique quam euismod. Nulla scelerisque leo eu euismod interdum. Mauris dolor libero, tristique in ante id, scelerisque egestas purus. Vivamus non hendrerit arcu, et dignissim lacus. Aliquam tempor commodo euismod. Pellentesque sit amet libero ultricies, euismod risus eu, aliquet turpis.\r\n<br><br>\r\nInteger imperdiet justo vel sagittis volutpat. Donec eu diam vitae quam posuere efficitur eu eget magna. Curabitur vehicula viverra aliquet. Donec aliquam pretium nunc ac mattis. Nam quis lectus euismod eros auctor lobortis. In convallis malesuada laoreet. Nunc nisl ipsum, vestibulum ac turpis quis, vestibulum efficitur massa.\r\n<br><br>\r\nMaecenas fringilla faucibus gravida. Sed ullamcorper leo ut posuere eleifend. Aliquam scelerisque eu erat nec convallis. Vestibulum purus justo, commodo at sapien sit amet, porta efficitur libero. In hac habitasse platea dictumst. Suspendisse libero orci, mollis ut pellentesque ut, finibus id nisl. Donec pharetra erat eu neque ultricies ullamcorper id at est. In cursus sodales massa et blandit. Vivamus vitae auctor velit. Integer quis fringilla ligula, eget dapibus augue. Cras faucibus justo euismod lobortis tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean ac ligula purus. Nunc quam nisl, auctor vel ultrices sed, imperdiet vel enim. Morbi sit amet vulputate leo. Pellentesque vulputate lectus sit amet velit ultricies, faucibus interdum felis venenatis.\r\n<br><br>\r\nPraesent sit amet dui sit amet tortor blandit volutpat sit amet in sapien. Nulla bibendum odio vel tristique bibendum. Morbi eleifend, nibh a ultrices auctor, lacus tellus varius erat, in luctus quam felis eget elit. Quisque non libero a velit luctus vestibulum. Donec malesuada viverra ornare. Fusce sagittis semper luctus. Ut posuere egestas sollicitudin. Nulla eu lectus aliquet, ornare dui eget, elementum augue. Integer eu placerat orci.\r\n<br><br>\r\nProin nec leo sit amet urna hendrerit aliquet id in nisl. Aliquam erat volutpat. Integer tristique augue nec sodales consequat. Praesent felis tortor, pretium nec orci quis, sodales facilisis mauris. Praesent pretium risus sed lacus pharetra sagittis. Vestibulum pharetra, leo eu ullamcorper aliquam, mi orci auctor dolor, sed tempus lorem dolor ac nulla. Nulla fringilla turpis tincidunt, viverra odio vel, eleifend sem. Nunc tempor ut magna blandit consectetur. Praesent eros dui, dignissim non lobortis vel, fringilla sagittis neque. Phasellus eu maximus ipsum.', 1, '2015-12-04 15:27:52', 'promo-50-semua-baju', 52, 5),
(4, 'asem', 'asem-jaya.jpg', 'asemkampret', 0, '2016-03-16 19:44:41', 'asem-jaya', 52, 4),
(6, 'semangat', 'semangat.png', 'semangat', 0, '2016-03-16 19:45:10', 'semangat', 52, 4),
(12, 'artkelku', 'testing-permalink.jpg', '<p>artkelku</p>', 1, '2016-05-13 14:13:25', 'testing-permalink', 52, 4);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `berat` float NOT NULL,
  `harga` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_ditambah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permalink` varchar(100) NOT NULL,
  `id_akun` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategori` (`id_kategori`),
  KEY `id_akun` (`id_akun`),
  KEY `id_akun_2` (`id_akun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `deskripsi`, `berat`, `harga`, `status`, `tgl_ditambah`, `permalink`, `id_akun`, `id_kategori`) VALUES
(14, 'Baju Khas Wonosari', '<p>Baju Khas Wonosari ini terbuat dari katun dan di bordir secara bagus dan menarik.</p>', 0.2, 110000, 1, '2016-05-13 13:41:40', 'ichigo-kurosaki', 52, 14),
(15, 'Baju Khas Pujer', '<p>Baju Khas Pujer ini terbuat dari katun dan di bordir secara bagus dan menarik.</p>', 0.4, 115000, 1, '2016-05-13 13:43:38', 'rock-lee', 52, 14),
(17, 'Baju Khas Bondowoso', '<p>Baju Khas Bondowosoini terbuat dari katun dan di bordir secara bagus dan menarik.</p>', 0.4, 125000, 1, '2016-05-13 13:47:01', 'chopper-kid', 52, 14),
(18, 'Baju Khas Jambianum', '<p>Baju Khas Jambianum ini terbuat dari katun dan di bordir secara bagus dan menarik.Baju Batak ini terbuat dari katun dan di bordir secara bagus dan menarikBaju Batak ini terbuat dari katun dan di bordir secara bagus dan menarik</p>', 0.5, 100000, 1, '2017-09-07 09:17:30', 'baju-khas-jambianum', 52, 14),
(19, 'Celana Jeans', '<p>celana</p>', 1, 50000, 1, '2017-09-07 09:25:33', 'celana-jeans', 52, 6),
(23, 'Celana Legging', '<p>Celana Legging iniyaitu celana pas kakiyang biasanya dibuat dari bahan yang stretch atau lentur dan panjangnya sampaimata kaki</p>', 1, 100000, 1, '2017-09-07 13:31:01', 'celana-legging', 52, 6),
(24, 'Tas Mini Back', '<p>Mini backpack adalah jenis ransel berukuran kecil</p>\r\n<p>Jenis tas ini akan membuat anda kelihatan lebih sporty sehingga cocok digunakan sewaktu beraktifitas santai.</p>', 1, 900000, 1, '2017-09-08 23:29:25', 'tas-mini-back', 52, 3),
(25, 'Backpack/Ransel', '<p>Backpack atau lebih biasa dikenal dengan ransel, saat ini sudah bukan komoditi kaum pria saja. Ransel sudah diproduksi untuk kedua gender, meskipun mempunyai perbedaan yang cukup signifikan, baik dari segi desain, model, warna, dan ukuran dibandingkan dengan ransel untuk kaum pria.</p>\r\n<p>Kesan yang biasa untuk ransel pria adalah berwarna hitam, desainnya selalu itu-itu saja dan kaku. Ransel untuk kaum wanita memiliki banyak model yang khas dan dapat digunakan sebagai tas selempang tergantung dari tema baju yang digunakan.</p>\r\n<p>Tas ransel atau backpack ini mempunyai banyak fungsi dan pastinya bisa digunakan untuk berbagai untuk berbagai kegiatan atau acara, mulai dari tas untuk bekerja sampai tas ransel mendaki gunung.</p>\r\n<p>Tas jenis ransel menjadi pilihan banyak orang karena dalam penggunaannya mudah dibawa kemana-mana dan ringkas.</p>\r\n<p>Kelebihan lainnya adalah kebanyakan backpack terbuat dari bahan yang kuat dan tahan terhadap berbagai cuaca, sehingga sangat cocok untuk digunakan bekerja di lapangan.</p>', 1, 100000, 1, '2017-09-08 23:35:47', 'backpack-ransel', 52, 3),
(26, 'Baguette Bag', '<p>Tas baguette hampir mirip seperti tas wrislet dan tas clutch, bedanya adalah tas baguette mempunyai tali yang dapat digenggam dan ukurannya pun lebih besar bila dibanding dengan tas clutch. Tas ini dapat diisi dengan berbagai barang seperti alat kosmetik, handphone dan barang lainnya.</p>\r\n<p>Sebenarnya tas ini juga dapat berfungsi sebagai dompet, hanya saja ia mempunyai tali yang bisa memudahkan penggunanya sehingga tidak harus selalu memegangnya setiap kali.</p>', 1, 100000, 1, '2017-09-08 23:37:33', 'baguette-bag', 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detil_akun`
--

CREATE TABLE IF NOT EXISTS `detil_akun` (
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text,
  `id_akun` int(5) NOT NULL,
  UNIQUE KEY `email` (`email`),
  KEY `id_akun` (`id_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_akun`
--

INSERT INTO `detil_akun` (`nama`, `no_hp`, `email`, `alamat`, `id_akun`) VALUES
('Adit', '08533251232', 'adit@gmail.com', 'Aditya', 119),
('Admin Wawan', '08533251232', 'admin@jualin.com', 'Bondowoso, Jatim', 52),
('agus', '''\\', 'agusbakso@gmail.com', 'ads', 178),
('Asem Jaya', NULL, 'asem123@gmail.com', NULL, 177),
('Asem Jaya', NULL, 'asem2@gmail.com', NULL, 168),
('asem', 'asem', 'asem@gmail.com', '123', 191),
('Darmawan Saputra Gaul 12345', '08533251232', 'darmawan123@gmail.com', 'Jl. Brigjen Katamso', 71),
('Firman Hidayat Gaul', '085233123512', 'firman@gmail.com', 'Jl. Asem Manis', 80),
('Huga Putra', '085232', 'huga@gmail.com', 'huga huga', 188),
('Donny Saputra', '08893', 'Jj', 'Manta sekalii', 115),
('kambil', NULL, 'kambil@gmail.com', NULL, 179),
('asem', 'kampret', 'kampret@gmail.com', 'adf', 193),
('mario perdana', '082230033866', 'Mariperdana239@gmail.com', 'Pujer', 194),
('Deswinta Puri Handayani', '085233123512', 'puri@gmail.com', 'Jl. Diponegoro', 87),
('rox', NULL, 'Rox@gmail.com', NULL, 184),
('asus jaya', 'jhkj', 'rpldarmawan@gmail.com', 'asuss center', 79),
('Satu', '08533251232', 'Satu@gmail.com', 'satu', 117);

-- --------------------------------------------------------

--
-- Table structure for table `detil_transaksi`
--

CREATE TABLE IF NOT EXISTS `detil_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(5) NOT NULL,
  `id_barang` int(5) NOT NULL,
  `id_stok` int(5) NOT NULL,
  `ukuran` char(3) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `qty` int(3) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_barang` (`id_barang`),
  KEY `id_stok` (`id_stok`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `detil_transaksi`
--

INSERT INTO `detil_transaksi` (`id`, `id_transaksi`, `id_barang`, `id_stok`, `ukuran`, `warna`, `qty`, `harga_satuan`) VALUES
(17, 28, 17, 90, 'S', 'Ungu', 10, 125000),
(18, 28, 17, 91, 'M', 'Ungu', 5, 125000),
(19, 28, 17, 92, 'L', 'Ungu', 3, 125000),
(27, 26, 14, 73, 'XL', 'Hitam', 5, 110000),
(30, 38, 14, 71, 'M', 'Hitam', 4, 110000),
(31, 39, 15, 78, 'S', 'Hijau Tua', 2, 115000),
(33, 41, 25, 118, 'S', 'Hitam', 1, 100000),
(34, 41, 26, 123, 'M', 'Merah', 2, 100000),
(35, 41, 26, 122, 'S', 'Merah', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_propinsi` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_propinsi` (`id_propinsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `id_propinsi`, `nama`) VALUES
(1, 1, 'Bojonegoro'),
(2, 1, 'Kediri'),
(3, 1, 'Gresik'),
(4, 2, 'Bandung'),
(5, 2, 'Bekasi'),
(6, 2, 'Bogor'),
(7, 3, 'Semarang'),
(8, 3, 'Solo'),
(9, 3, 'Sukoharjo');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `tipe`) VALUES
(2, 'Sepatu', 'produk'),
(3, 'Tas', 'produk'),
(4, 'Ikat Pinggang', 'artikel'),
(5, 'Promo', 'artikel'),
(6, 'Celana', 'produk'),
(14, 'Baju', 'produk');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `biaya` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kabupaten` (`id_kabupaten`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `id_kabupaten`, `nama`, `biaya`) VALUES
(1, 1, 'Bubulan', 5000),
(2, 1, 'Dander', 6000),
(3, 2, 'Badas', 6000),
(4, 2, 'Grogol', 5000),
(5, 3, 'Tambak', 6000),
(6, 3, 'Sidayu', 7000),
(7, 4, 'Arjasari', 3000),
(8, 4, 'Banjaran', 8000),
(9, 5, 'Babelan', 2000),
(10, 5, 'Setu', 3000),
(11, 6, 'Dramaga', 6000),
(12, 6, 'Nanggung', 7000),
(13, 7, 'Jambu', 2000),
(14, 7, 'Getasan', 1000),
(15, 8, 'Sewu', 2000),
(16, 8, 'Jagalan', 2000),
(17, 9, 'Nguter', 9000),
(18, 9, 'Kartasura', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `isi` text NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_komentar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_page` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `email`, `tipe`, `isi`, `status`, `tgl_komentar`, `id_page`) VALUES
(1, 'Anda', 'anda@gmail.com', 'product', 'Ajib gann ^^^_^^^', 1, '2016-05-13 13:51:54', 14),
(2, 'DJ', 'dj@gmail.com', 'product', 'Lol keren banget disini...', 1, '2016-05-13 13:52:28', 14),
(3, 'Tes', 'test@example.com', 'product', 'tes', 1, '2016-05-13 14:02:11', 17);

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_unik` varchar(10) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `foto_bukti` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kode_unik` (`kode_unik`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `kode_unik`, `bank`, `foto_bukti`, `ket`, `status`, `tgl_konfirmasi`) VALUES
(14, 'IRIWvB7VFe', 'BRI', 'IRIWvB7VFe.jpg', 'sudah dikirm mas', 1, '2016-05-13 14:09:48'),
(15, 'wGLsMFFvTG', 'BCA', 'wGLsMFFvTG.jpg', 'Saya Bayar', 1, '2017-09-07 13:41:33'),
(16, 'qs8KkExPbO', 'BCA', 'qs8KkExPbO.jpg', 'ditunggu barangnya', 1, '2017-09-10 00:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE IF NOT EXISTS `propinsi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`id`, `nama`) VALUES
(1, 'Jawa Timur'),
(2, 'Jawa Barat'),
(3, 'Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nilai` int(1) NOT NULL,
  `id_akun` int(5) NOT NULL,
  `id_barang` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_akun` (`id_akun`),
  KEY `id_barang` (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `nilai`, `id_akun`, `id_barang`) VALUES
(22, 5, 52, 14),
(23, 4, 119, 17),
(24, 5, 71, 17),
(25, 4, 52, 17);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE IF NOT EXISTS `stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `ukuran` varchar(3) NOT NULL,
  `stok` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_barang` (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id`, `id_barang`, `warna`, `ukuran`, `stok`, `foto`) VALUES
(70, 14, 'Hitam', 'S', 11, 'ichigo-kurosaki-0.jpg'),
(71, 14, 'Hitam', 'M', 7, 'ichigo-kurosaki-0.jpg'),
(72, 14, 'Hitam', 'L', 8, 'ichigo-kurosaki-0.jpg'),
(73, 14, 'Hitam', 'XL', 24, 'ichigo-kurosaki-0.jpg'),
(74, 14, 'Merah', 'S', 20, 'ichigo-kurosaki-1.jpg'),
(75, 14, 'Merah', 'M', 55, 'ichigo-kurosaki-1.jpg'),
(76, 14, 'Merah', 'L', 15, 'ichigo-kurosaki-1.jpg'),
(77, 14, 'Merah', 'XL', 25, 'ichigo-kurosaki-1.jpg'),
(78, 15, 'Hijau Tua', 'S', 18, 'rock-lee-0.jpg'),
(79, 15, 'Hijau Tua', 'M', 25, 'rock-lee-0.jpg'),
(80, 15, 'Hijau Tua', 'L', 15, 'rock-lee-0.jpg'),
(81, 15, 'Hijau Tua', 'XL', 10, 'rock-lee-0.jpg'),
(90, 17, 'Ungu', 'S', 0, 'chopper-kid-0.jpg'),
(91, 17, 'Ungu', 'M', 0, 'chopper-kid-0.jpg'),
(92, 17, 'Ungu', 'L', 0, 'chopper-kid-0.jpg'),
(93, 17, 'Ungu', 'XL', 0, 'chopper-kid-0.jpg'),
(94, 18, 'Abu - Abu', 'S', 0, 'baju-khas-jambianum-0.jpg'),
(95, 18, 'Abu - Abu', 'M', 0, 'baju-khas-jambianum-0.jpg'),
(96, 18, 'Abu - Abu', 'L', 0, 'baju-khas-jambianum-0.jpg'),
(97, 18, 'Abu - Abu', 'XL', 0, 'baju-khas-jambianum-0.jpg'),
(110, 23, 'Hitam', 'S', 0, 'celana-legging-0.jpg'),
(111, 23, 'Hitam', 'M', 5, 'celana-legging-0.jpg'),
(112, 23, 'Hitam', 'L', 5, 'celana-legging-0.jpg'),
(113, 23, 'Hitam', 'XL', 5, 'celana-legging-0.jpg'),
(114, 24, 'Hitam', 'S', 5, 'tas-mini-back-0.jpg'),
(115, 24, 'Hitam', 'M', 5, 'tas-mini-back-0.jpg'),
(116, 24, 'Hitam', 'L', 5, 'tas-mini-back-0.jpg'),
(117, 24, 'Hitam', 'XL', 5, 'tas-mini-back-0.jpg'),
(118, 25, 'Hitam', 'S', 4, 'backpack-ransel-0.jpg'),
(119, 25, 'Hitam', 'M', 5, 'backpack-ransel-0.jpg'),
(120, 25, 'Hitam', 'L', 5, 'backpack-ransel-0.jpg'),
(121, 25, 'Hitam', 'XL', 5, 'backpack-ransel-0.jpg'),
(122, 26, 'Merah', 'S', 4, 'baguette-bag-0.jpg'),
(123, 26, 'Merah', 'M', 3, 'baguette-bag-0.jpg'),
(124, 26, 'Merah', 'L', 5, 'baguette-bag-0.jpg'),
(125, 26, 'Merah', 'XL', 5, 'baguette-bag-0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_unik` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `tgl_transaksi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ongkir` int(15) NOT NULL,
  `id_kecamatan` int(5) NOT NULL,
  `id_akun` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_unik` (`kode_unik`),
  KEY `id_akun` (`id_akun`),
  KEY `id_kecamatan` (`id_kecamatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_unik`, `status`, `tgl_transaksi`, `ongkir`, `id_kecamatan`, `id_akun`) VALUES
(22, 'daiwXtY7Yl', 1, '2016-05-13 03:40:41', 3500, 7, 71),
(24, 'OHweRkLp9N', 1, '2016-03-15 04:07:29', 6500, 6, 80),
(25, 'ZbOwyVFLac', 1, '2016-03-01 04:22:50', 2000, 16, 80),
(26, 'GqcOXfRWXm', 1, '2016-02-25 04:23:42', 2500, 9, 80),
(27, 'IRIWvB7VFe', 1, '2016-05-13 14:07:31', 3800, 8, 119),
(28, 'ijdUHNf3KJ', 1, '2016-05-11 14:21:47', 1500, 14, 71),
(32, 'gsdUHNf3K3', 1, '2016-07-14 09:55:24', 5000, 1, 178),
(35, '923UHNf3K4', 1, '2016-07-14 09:59:07', 2000, 7, 178),
(38, 'TXoiTDeSwK', 1, '2016-07-14 10:12:57', 3000, 10, 178),
(39, 'wGLsMFFvTG', 1, '2016-07-14 10:17:23', 5000, 1, 178),
(41, 'qs8KkExPbO', 1, '2017-09-10 00:03:05', 7000, 6, 194);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `id_page` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_akun` int(5) NOT NULL,
  `id_barang` int(5) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_akun` (`id_akun`),
  KEY `id_barang` (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `id_akun`, `id_barang`, `tanggal`) VALUES
(11, 178, 17, '2016-05-13 14:10:44'),
(17, 178, 15, '2016-07-14 14:27:18'),
(19, 71, 24, '2017-09-09 18:06:06');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `Artikel_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Artikel_ibfk_3` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `Barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Barang_ibfk_2` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detil_akun`
--
ALTER TABLE `detil_akun`
  ADD CONSTRAINT `Detil_Akun_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detil_transaksi`
--
ALTER TABLE `detil_transaksi`
  ADD CONSTRAINT `detil_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Detil_Transaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `Konfirmasi_ibfk_1` FOREIGN KEY (`kode_unik`) REFERENCES `transaksi` (`kode_unik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `Rating_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Rating_ibfk_2` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `Transaksi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
