-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2026 lúc 10:52 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_nha_tro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `ma_nguoi_thue` int(11) DEFAULT NULL,
  `thang_hoa_don` varchar(7) NOT NULL,
  `tien_phong_co_ban` decimal(12,2) DEFAULT 0.00,
  `dien_cu` int(11) DEFAULT 0,
  `dien_moi` int(11) DEFAULT 0,
  `don_gia_dien` decimal(12,2) DEFAULT 3500.00,
  `nuoc_cu` int(11) DEFAULT 0,
  `nuoc_moi` int(11) DEFAULT 0,
  `don_gia_nuoc` decimal(12,2) DEFAULT 15000.00,
  `phu_thu` decimal(12,2) DEFAULT 0.00,
  `tong_tien` decimal(12,2) DEFAULT 0.00,
  `trang_thai` varchar(50) DEFAULT 'Chưa thanh toán',
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_thanh_toan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_phong`, `ma_nguoi_thue`, `thang_hoa_don`, `tien_phong_co_ban`, `dien_cu`, `dien_moi`, `don_gia_dien`, `nuoc_cu`, `nuoc_moi`, `don_gia_nuoc`, `phu_thu`, `tong_tien`, `trang_thai`, `ngay_tao`, `ngay_thanh_toan`) VALUES
(2, 3, NULL, '2026-06', 2000000.00, 15, 35, 3500.00, 10, 13, 15000.00, 50000.00, 2165000.00, 'Đã thanh toán', '2026-06-16 08:02:27', '2026-06-16 15:03:11'),
(3, 4, NULL, '2026-06', 2000000.00, 15, 30, 3500.00, 15, 20, 15000.00, 50000.00, 2177500.00, 'Chưa thanh toán', '2026-06-16 08:03:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_thue`
--

CREATE TABLE `nguoi_thue` (
  `ma_nguoi_thue` int(11) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cccd` varchar(30) DEFAULT NULL,
  `dia_chi` text DEFAULT NULL,
  `ma_phong` int(11) DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_thue`
--

INSERT INTO `nguoi_thue` (`ma_nguoi_thue`, `ho_ten`, `so_dien_thoai`, `email`, `cccd`, `dia_chi`, `ma_phong`, `ngay_bat_dau`, `ngay_ket_thuc`, `ngay_tao`) VALUES
(1, 'Nguyễn Văn A', '0911111111', 'vana@gmail.com', '123456789', 'Trà Vinh', 1, '2026-01-01', '2026-12-31', '2026-06-15 10:34:32'),
(2, 'Trần Thị B', '0922222222', 'thib@gmail.com', '987654321', 'Vĩnh Long', 3, '2026-03-15', '2027-03-15', '2026-06-15 10:34:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_tro`
--

CREATE TABLE `phong_tro` (
  `ma_phong` int(11) NOT NULL,
  `ma_so_phong` varchar(20) NOT NULL,
  `ten_phong` varchar(100) DEFAULT NULL,
  `tang` int(11) DEFAULT NULL,
  `dien_tich` float DEFAULT NULL,
  `gia_phong` decimal(12,2) NOT NULL,
  `trang_thai` varchar(50) DEFAULT 'Trống',
  `mo_ta` text DEFAULT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong_tro`
--

INSERT INTO `phong_tro` (`ma_phong`, `ma_so_phong`, `ten_phong`, `tang`, `dien_tich`, `gia_phong`, `trang_thai`, `mo_ta`, `ngay_tao`) VALUES
(1, 'P101', 'Phòng 101', 1, 20, 1500000.00, 'Đang thuê', 'Phòng có gác lửng', '2026-06-15 10:34:32'),
(2, 'P102', 'Phòng 102', 1, 18, 1300000.00, 'Trống', 'Phòng gần cổng', '2026-06-15 10:34:32'),
(3, 'P201', 'Phòng 201', 2, 22, 1700000.00, 'Đang thuê', 'Phòng có ban công', '2026-06-15 10:34:32'),
(4, 'P202', 'Phòng 202', 2, 20, 1500000.00, 'Đang sửa chữa', 'Đang sửa hệ thống nước', '2026-06-15 10:34:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `ma_tai_khoan` int(11) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `ten_dang_nhap` varchar(50) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `vai_tro` varchar(30) DEFAULT 'admin',
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`ma_tai_khoan`, `ho_ten`, `ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`, `vai_tro`, `ngay_tao`) VALUES
(1, 'Quản trị viên', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '0900000000', 'admin', '2026-06-15 10:34:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_phong` (`ma_phong`),
  ADD KEY `ma_nguoi_thue` (`ma_nguoi_thue`);

--
-- Chỉ mục cho bảng `nguoi_thue`
--
ALTER TABLE `nguoi_thue`
  ADD PRIMARY KEY (`ma_nguoi_thue`),
  ADD KEY `ma_phong` (`ma_phong`);

--
-- Chỉ mục cho bảng `phong_tro`
--
ALTER TABLE `phong_tro`
  ADD PRIMARY KEY (`ma_phong`),
  ADD UNIQUE KEY `ma_so_phong` (`ma_so_phong`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`ma_tai_khoan`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoi_thue`
--
ALTER TABLE `nguoi_thue`
  MODIFY `ma_nguoi_thue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phong_tro`
--
ALTER TABLE `phong_tro`
  MODIFY `ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `ma_tai_khoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `phong_tro` (`ma_phong`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`ma_nguoi_thue`) REFERENCES `nguoi_thue` (`ma_nguoi_thue`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `nguoi_thue`
--
ALTER TABLE `nguoi_thue`
  ADD CONSTRAINT `nguoi_thue_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `phong_tro` (`ma_phong`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
