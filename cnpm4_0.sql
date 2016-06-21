-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 21 Juin 2016 à 08:52
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cnpm4_0`
--

-- --------------------------------------------------------

--
-- Structure de la table `capdetai`
--

CREATE TABLE `capdetai` (
  `idCap` int(11) NOT NULL,
  `tenCap` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `capdetai`
--

INSERT INTO `capdetai` (`idCap`, `tenCap`) VALUES
(1, 'Cấp trường'),
(2, 'Cấp đại học Đà Nẵng'),
(3, 'Cấp bộ'),
(5, 'Cấp nhà nước');

-- --------------------------------------------------------

--
-- Structure de la table `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `idChuyenNganh` int(11) NOT NULL,
  `tenChuyenNganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `chuyennganh`
--

INSERT INTO `chuyennganh` (`idChuyenNganh`, `tenChuyenNganh`, `idKhoa`) VALUES
(1, 'Hệ thống nhúng', 1),
(2, 'Công nghệ phần mềm', 1),
(5, 'Điện 1', 3),
(6, 'Điện 2', 3),
(9, 'Quản trị trường', 9),
(10, 'Xây dựng cầu đường 1', 4),
(11, 'Xây dựng cầu đường 2', 4),
(12, 'Nhiệt điện lạnh 1', 5),
(13, 'Nhiệt điện lạnh 2', 5),
(14, 'Tự động hóa 1', 6),
(15, 'Tự động hóa 2', 6),
(16, 'Cơ khí 1', 7),
(17, 'Cơ khí 2', 7),
(18, 'Hóa 1', 8),
(19, 'Hóa 2', 8);

-- --------------------------------------------------------

--
-- Structure de la table `danhsachdetai`
--

CREATE TABLE `danhsachdetai` (
  `idDeTai` int(11) NOT NULL,
  `tenDeTai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idLinhVuc` int(11) NOT NULL,
  `idCap` int(11) NOT NULL,
  `soluongtv` int(11) NOT NULL,
  `danhsachtv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `muctieu` text COLLATE utf8_unicode_ci NOT NULL,
  `tinhcapthiet` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ketquadukien` text COLLATE utf8_unicode_ci NOT NULL,
  `sanphamkhoahoc` text COLLATE utf8_unicode_ci NOT NULL,
  `sanphamungdung` text COLLATE utf8_unicode_ci NOT NULL,
  `sanphamdaotao` text COLLATE utf8_unicode_ci NOT NULL,
  `hieuquadukien` text COLLATE utf8_unicode_ci NOT NULL,
  `kinhphidukien` int(11) NOT NULL,
  `thoigiandukien` int(11) NOT NULL,
  `xacnhandangky` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `kiemduyet` int(11) NOT NULL,
  `ngaydangky` text COLLATE utf8_unicode_ci NOT NULL,
  `phanhoi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `danhsachdetai`
--

INSERT INTO `danhsachdetai` (`idDeTai`, `tenDeTai`, `idLinhVuc`, `idCap`, `soluongtv`, `danhsachtv`, `muctieu`, `tinhcapthiet`, `noidung`, `ketquadukien`, `sanphamkhoahoc`, `sanphamungdung`, `sanphamdaotao`, `hieuquadukien`, `kinhphidukien`, `thoigiandukien`, `xacnhandangky`, `idUsers`, `kiemduyet`, `ngaydangky`, `phanhoi`) VALUES
(12, '1', 1, 1, 2, '4,35', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 4, 1, '2015/12/23 10:21:02', ''),
(13, 'vi du', 1, 1, 1, '4', '1\r\n', '1\r\n', '1\r\n', '1\r\n', '1\r\n', '1\r\n', '1\r\n', '1\r\n', 1, 1, 1, 4, 2, '2015/12/23 10:42:26', ''),
(14, 'de tai dang ky cap truong', 2, 1, 1, '35', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 0, 4, 1, '2015/12/23 10:43:06', ''),
(15, 'de tai hai nguoi', 3, 1, 2, '4,35', '2', '12', '2', '2', '2', '2', '2', '2', 2, 2, 0, 4, 1, '2015/12/23 10:43:56', '');

-- --------------------------------------------------------

--
-- Structure de la table `detaichitiet`
--

CREATE TABLE `detaichitiet` (
  `idChiTiet` int(11) NOT NULL,
  `idDeTai` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `detaichitiet`
--

INSERT INTO `detaichitiet` (`idChiTiet`, `idDeTai`, `idUsers`) VALUES
(17, 12, 4),
(18, 12, 35),
(19, 13, 4),
(20, 14, 35),
(21, 15, 4),
(22, 15, 35);

-- --------------------------------------------------------

--
-- Structure de la table `khoa`
--

CREATE TABLE `khoa` (
  `idKhoa` int(11) NOT NULL,
  `tenKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `khoa`
--

INSERT INTO `khoa` (`idKhoa`, `tenKhoa`) VALUES
(1, 'Công Nghệ Thông Tin'),
(3, 'Điện'),
(4, 'Xây Dựng Cầu Đường'),
(5, 'Nhiệt Điện Lạnh'),
(6, 'Tự Động Hóa'),
(7, 'Cơ Khí'),
(8, 'Hóa'),
(9, 'Quản trị trường');

-- --------------------------------------------------------

--
-- Structure de la table `linhvucnghiencuu`
--

CREATE TABLE `linhvucnghiencuu` (
  `idLinhvuc` int(11) NOT NULL,
  `tenLinhVuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `linhvucnghiencuu`
--

INSERT INTO `linhvucnghiencuu` (`idLinhvuc`, `tenLinhVuc`) VALUES
(1, 'Tự nhiên'),
(2, 'Kỹ thuật'),
(3, 'Môi trường'),
(4, 'Kinh tế XH-NV'),
(5, 'Nông lâm'),
(6, 'ATLĐ'),
(7, 'Giáo dục'),
(8, 'Y dược'),
(9, 'Sở hửu trí tuệ');

-- --------------------------------------------------------

--
-- Structure de la table `luotdangky`
--

CREATE TABLE `luotdangky` (
  `idLDK` int(11) NOT NULL,
  `timeOpen` datetime NOT NULL,
  `timeClose` datetime NOT NULL,
  `nam` int(4) NOT NULL,
  `idCap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `luotdangky`
--

INSERT INTO `luotdangky` (`idLDK`, `timeOpen`, `timeClose`, `nam`, `idCap`) VALUES
(2, '2015-12-22 05:00:00', '2015-12-24 12:00:00', 2015, 2),
(3, '2015-12-26 05:00:00', '2015-12-30 12:00:00', 2015, 3),
(4, '2015-12-22 01:00:00', '2015-12-31 11:00:00', 2015, 1);

-- --------------------------------------------------------

--
-- Structure de la table `thongbao`
--

CREATE TABLE `thongbao` (
  `idThongBao` int(11) NOT NULL,
  `tenThongBao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `chedo` int(11) NOT NULL,
  `dinhKemFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkDownload` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `thongbao`
--

INSERT INTO `thongbao` (`idThongBao`, `tenThongBao`, `noidung`, `ngaydang`, `chedo`, `dinhKemFile`, `linkDownload`) VALUES
(1, 'Thông báo thay đổi lịch đăng ký đề tài nghiên cứu khoa học cấp trường 2015', '<p><span style="color:rgb(0, 0, 0); font-family:times new roman; font-size:medium">Lịch đăng k&yacute; sẽ được cập nhập</span><span style="color:#000000"><span style="font-family:times new roman; font-size:medium"><span style="background-color:#FFFF00"> </span></span><span style="font-family:times new roman; font-size:medium"><span style="background-color:#FFFF00">sớm nhất.</span></span><span style="font-family:times new roman; font-size:medium"><span style="background-color:#FFFF00">..&nbsp;</span></span></span>&nbsp;t<span style="color:#000000">rước ng&agrave;y 25/12/2015</span></p>\r\n', '2015-12-22', 1, '', ''),
(2, 'Thông báo về quy chế đăng ký đề tài NCKH mới năm 2014', '<p>Cụ thể l&agrave; quy chế đăng k&yacute; sẽ được thay đổi ở phần ....&nbsp;Hướng dẫn chi tiết xem:</p>\r\n', '2015-12-22', 1, 'ThongBao-9180604669436.docx', 'F:\\Tin\\Web\\jsp2\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cnpm\\\\files\\ThongBao-9180604669436.docx'),
(3, 'Thông báo DUT TECHDAY - Giới thiệu cổng thông tin di động sinh viên ĐH Bách Khoa', '<p><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">&nbsp;</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif,times new roman,times,serif; font-size:12pt">Ng&agrave;y 18/11/2015&nbsp;</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">Trường phối hợp với Trung t&acirc;m ph&aacute;t triển phần mềm ĐH Đ&agrave; Nẵng (SDC) v&agrave; Microsoft VN tổ chức&nbsp;</span><span style="background-color:rgb(255, 255, 0); color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">DUT TECHDAY - Giới thiệu cổng th&ocirc;ng tin di động sinh vi&ecirc;n ĐH B&aacute;ch Khoa</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">&nbsp;(Smartbook),&nbsp;</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif,times new roman,times,serif; font-size:12pt">c&ocirc;ng nghệ Office 365, c&aacute;c sản phẩm phần cứng của Microsoft</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">:</span><br />\r\n<span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif; font-size:12pt">&nbsp; &nbsp;+ 8h30-9h30 giới thiệu tại hội trường F</span><span style="color:rgb(0, 0, 0); font-family:times new roman,times,serif,times new roman,times,serif; font-size:12pt">;<br />\r\n&nbsp; &nbsp;+ 9h30-16h30 trải nghiệm sản phẩm phần mềm v&agrave; phần cứng Smartbook tại c&aacute;c gian trưng b&agrave;y ở khu vực s&acirc;n khấu khu F;<br />\r\n&nbsp; &nbsp;+ C&aacute;c bạn SV cũng c&oacute; thể tự c&agrave;i đặt v&agrave; trải nghiệm phần mềm Smartbook tr&ecirc;n thiết bị di động của m&igrave;nh;<br />\r\n- Nh&agrave; trường th&ocirc;ng b&aacute;o &amp; mời c&aacute;c SV đến tham dự buổi giới thiệu v&agrave; trải nghiệm sản phẩm. Th&ocirc;ng b&aacute;o chi tiết:&nbsp;</span></p>\r\n', '2015-12-22', 1, 'ThongBao-9255965998366.docx', 'F:\\Tin\\Web\\jsp2\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\cnpm\\\\files\\ThongBao-9255965998366.docx'),
(4, 'Đăng ký đề tài NCKH cấp trường năm 2015', '- "Đăng ký cấp trường" sẽ được mở cho tất cả sinh viên và giảng viên trong trường.Thời gian đăng ký bắt đầu lúc: 2015-12-21 05:00 đến: 2015-12-24 12:00', '2015-12-22', 1, '', ''),
(5, ' Đăng ký đề tài NCKH cấp đại học Đà Nẵng năm 2015', ' "Đăng ký cấp Đại học Đà Nẵng" sẽ được mở cho tất cả sinh viên và giảng viên trong trường.Thời gian đăng ký bắt đầu lúc: 2015-12-22 05:00 đến: 2015-12-24 12:00', '2015-12-22', 1, '', ''),
(6, 'Đăng ký đề tài NCKH cấp bộ năm 2015', ' "Đăng ký cấp bộ" sẽ được mở cho tất cả sinh viên và giảng viên trong trườngThời gian đăng ký bắt đầu lúc: 2015-12-24 11:11 đến: 2015-12-25 22:22', '2015-12-22', 1, '', ''),
(7, 'Chỉnh sửa đợt đăng ký cấp bộ 2015', 'Vì một số vấn đề về kĩ thuật nên đợt "Đăng ký cấp bộ" sẽ được dời lại.Thời gian đăng ký bắt đầu lúc: 2015-12-26 05:00 đến: 2015-12-30 12:00', '2015-12-22', 1, '', ''),
(8, 'đăng ký cáp trường', '<p>fdsf</p>\r\nThời gian đăng ký bắt đầu lúc: 2015-12-22 01:00 đến: 2015-12-31 11:00', '2015-12-23', 1, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `soThe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `idChuyenNganh` int(11) NOT NULL,
  `dienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idUsers`, `soThe`, `password`, `fullname`, `address`, `role`, `idChuyenNganh`, `dienthoai`, `email`) VALUES
(1, 'admin', '1', 'Quản trị BKDN', 'Đại học Bách Khoa Đà Nẵng', -1, 9, '0123456789', '1@gmail.com'),
(2, '102120253', '123456', 'QUẢN TRỊ KHOA CÔNG NGHỆ THÔNG TIN', 'Đại học BKDN', 1, 1, '0987654321', '2@gmail.com'),
(3, '102120254', '123456', 'QUẢN TRỊ KHOA ĐIỆN', 'BKDN', 3, 5, '0942341232', '3@gmai.com'),
(4, '102120255', '123456', 'Trần Văn Hiệp', 'Hà Tĩnh Việt Nam', 0, 2, '098765678', 'hiepga@gmail.com'),
(21, '102120256', '123456', 'Ngô Viết Thành', 'Thừa Thiên Huế', 0, 6, '0123456789', 'thanh@gmail.com'),
(22, '102120257', '123456', 'Nguyễn Huy Hoàng', 'Nghệ An', 0, 10, '0134567852', '10@gmail.com'),
(33, '102120258', '123456', 'QUẢN TRỊ KHOA XÂY DỰNG CẦU ĐƯỜNG', 'Thừa Thiên Huế', 4, 10, '0123456789', 'xaydungcauduong@gmail.com'),
(35, '102120259', '123456', 'Thái Thị Hồng', 'Nghệ An', 0, 2, '0123456789', 'thaihongmonkey@gmail.com'),
(36, '102120260', '123456', 'Hồ Thị Kim Huệ', 'Hà Tĩnh', 0, 6, '0123456789', 'kimhue@gmail.com'),
(37, '102120261', '123456', 'Trương Quang Bảo Hưng', 'Đà Nẵng', 0, 11, '0123456789', 'baohung@gmail.com'),
(38, '102120262', '123456', 'Vũ Ngọc Sơn', 'Quảng Nam', 0, 1, '0123456789', 'sonvu@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `capdetai`
--
ALTER TABLE `capdetai`
  ADD PRIMARY KEY (`idCap`);

--
-- Index pour la table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`idChuyenNganh`);

--
-- Index pour la table `danhsachdetai`
--
ALTER TABLE `danhsachdetai`
  ADD PRIMARY KEY (`idDeTai`);

--
-- Index pour la table `detaichitiet`
--
ALTER TABLE `detaichitiet`
  ADD PRIMARY KEY (`idChiTiet`);

--
-- Index pour la table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`idKhoa`);

--
-- Index pour la table `linhvucnghiencuu`
--
ALTER TABLE `linhvucnghiencuu`
  ADD PRIMARY KEY (`idLinhvuc`);

--
-- Index pour la table `luotdangky`
--
ALTER TABLE `luotdangky`
  ADD PRIMARY KEY (`idLDK`);

--
-- Index pour la table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`idThongBao`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `capdetai`
--
ALTER TABLE `capdetai`
  MODIFY `idCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `idChuyenNganh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `danhsachdetai`
--
ALTER TABLE `danhsachdetai`
  MODIFY `idDeTai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `detaichitiet`
--
ALTER TABLE `detaichitiet`
  MODIFY `idChiTiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `idKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `linhvucnghiencuu`
--
ALTER TABLE `linhvucnghiencuu`
  MODIFY `idLinhvuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `luotdangky`
--
ALTER TABLE `luotdangky`
  MODIFY `idLDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `idThongBao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
