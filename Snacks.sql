-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 11, 2024 at 09:20 AM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Snacks`
--

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int NOT NULL,
  `nguoidung_id` int NOT NULL,
  `ngaydat` date NOT NULL DEFAULT '2024-01-09',
  `trangthai` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `nguoidung_id`, `ngaydat`, `trangthai`) VALUES
(1, 1, '2024-01-01', 1),
(2, 1, '2024-01-02', 1),
(3, 1, '2024-01-03', 1),
(4, 1, '2024-01-04', 1),
(5, 1, '2024-01-05', 1),
(6, 1, '2024-01-06', 1),
(7, 1, '2024-01-07', 1),
(8, 1, '2024-01-08', 1),
(9, 1, '2024-01-09', 1),
(10, 1, '2024-01-08', 1),
(11, 1, '2024-01-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `id` int NOT NULL,
  `donhang_id` int NOT NULL,
  `monan_id` int NOT NULL,
  `soluong` int NOT NULL,
  `dongia` int NOT NULL,
  `thanhtien` int NOT NULL DEFAULT '0',
  `ghichu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`id`, `donhang_id`, `monan_id`, `soluong`, `dongia`, `thanhtien`, `ghichu`) VALUES
(1, 6, 1, 1, 25000, 25000, ''),
(2, 7, 1, 5, 25000, 125000, ''),
(3, 8, 1, 1, 25000, 25000, ''),
(4, 9, 2, 22, 12000, 264000, ''),
(5, 9, 1, 10, 25000, 250000, ''),
(6, 9, 3, 2, 27000, 54000, ''),
(7, 9, 9, 2, 6300, 12600, ''),
(8, 9, 10, 1, 7400, 7400, ''),
(9, 9, 11, 1, 9600, 9600, ''),
(10, 11, 3, 2, 27000, 54000, ''),
(11, 11, 1, 2, 25000, 50000, '');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `id` int NOT NULL,
  `tenmonan` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `gia` int NOT NULL,
  `trangthai` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`id`, `tenmonan`, `hinhanh`, `gia`, `trangthai`) VALUES
(1, 'Ostart', 'start.jpg', 25000, 1),
(2, 'Pollows nhân sô cô la', '10015804-min-20230915065116.png', 12000, 1),
(3, 'Mực bento siêu cay', 'bento.png', 27000, 1),
(9, 'Mực  lăn muối ớt', 'poca-snack-muc-lan-muoi-ot-75g-t40_60be4056-c699-4a50-8096-5a6650a9bf0c-og.jpg', 6300, 1),
(10, 'Swing vị Bít tết', '162427334486910015597-g1-bonh-snack-vi-bot-tet-kieu-new-york-swing-gui-90g-og.jpg', 7400, 1),
(11, 'Lay vị bò bít tết Mahattan', 'Lay-bo-bit-tet.jpg', 9600, 1),
(12, 'Ostar vị kim cho hàn quốc', 'tn-op3-_3d-kimchi-90_39caa853-4716-4ee9-b088-ad90c95d8cc7-og.png', 8200, 1),
(13, 'Crab me vị sót chua', '162427597660210015800-g1-snack-tum-cay-dac-biet-oishi-gui-45g-og.jpg', 6700, 1),
(14, 'Toonies vị ớt đỏ cay nồng', 'tns_hot_c3f0fb7e-5ad9-4ad5-a742-2569c54c60f1-og.jpg', 9400, 1),
(15, 'Slide khoai tây vị phô mai', '10015708-20231213073738.png', 16300, 1),
(16, 'Slide khoai tây vị thịt nướng', '10015707-20231213073709.png', 17300, 1),
(17, 'Snack Bibigo rong biển truyền thống', '9590757654558-og.jpg', 23200, 1),
(18, 'Snack vị cay Big Roll', '9342862884894-og.jpg', 8200, 1),
(19, 'Snakc tuyền thông Big Roll', 'snakc-tuyen-thong-big-roll-3g-20221014063057-og.jpg', 8300, 1),
(20, 'Snack O\'star khoai tây tự nhiên', 'otars-natural-small.png', 7600, 1),
(21, 'Bánh que thịt xông khói Doakbua', '10013795-min-20230915063155.png', 18200, 1),
(22, 'Khô gà bơ tỏi O’lala', 'ga-bo-toi-3-20230427071249.png', 43100, 1),
(23, 'Snack vị bò lúc lắc Poca', 'poca-snack-vi-bo-luc-lac-75g-t40_aa2c0465-9638-4469-9e14-3c5a21da0ae4-og.jpg', 11500, 1),
(24, 'Snack Swing max bò nướng tiêu đen', '63g.png', 12100, 1),
(25, 'Snack Doritos vị Taco', 'doritos-snack-taco-65g_9f7e1ca1-bf0f-4363-b46d-603856d64ecc-og.jpg', 31200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int NOT NULL,
  `tennguoidung` varchar(255) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `loaiquyen` varchar(255) NOT NULL,
  `trangthai` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `tennguoidung`, `tendangnhap`, `matkhau`, `loaiquyen`, `trangthai`) VALUES
(1, 'Huỳnh Hồng Huân', 'nd1', 'e10adc3949ba59abbe56e057f20f883e', 'khach', 1),
(2, 'Nguyễn Thị Tường Dân', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1),
(3, 'Nguyễn Minh Thuận', 'nd2', 'e10adc3949ba59abbe56e057f20f883e', 'khach', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Indexes for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `monan_id` (`monan_id`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_nguoidung_donhang` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD CONSTRAINT `fk_donhang_donhangchitiet` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_donhang_monan` FOREIGN KEY (`monan_id`) REFERENCES `monan` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
