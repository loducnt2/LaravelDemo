-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2019 lúc 08:31 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laraveldemo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`) VALUES
(2, 3, 27, 'Bài viết này chưa được hay lắm', '2018-11-17 10:05:46', '2018-11-17 10:05:46'),
(3, 9, 33, 'Ý kiến của tôi khác so với bài này', '2018-11-17 10:05:46', '2018-11-17 10:05:46'),
(5, 1, 10, 'Tôi chưa có ý kiến gì', '2018-11-17 10:06:08', '2018-11-17 10:06:08'),
(6, 6, 4, 'Hay quá trời', '2018-11-17 10:06:08', '2018-11-17 10:06:08'),
(7, 5, 4, 'Không thích bài viết này', '2018-11-17 10:06:08', '2018-11-17 10:06:08'),
(9, 9, 7, 'Bài viết rất hay', '2018-11-17 10:06:08', '2018-11-17 10:06:08'),
(10, 10, 6, 'Hay quá trời', '2018-11-17 10:06:08', '2018-11-17 10:06:08'),
(11, 8, 7, 'Tôi rất thích bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(12, 7, 1, 'Bài viết rất hay', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(13, 10, 6, 'Tôi sẽ học thèo bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(14, 8, 6, 'Tôi rất thích bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(15, 6, 7, 'Bài viết này chưa được hay lắm', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(16, 8, 5, 'Tôi chưa có ý kiến gì', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(17, 3, 2, 'Bài viết này tạm ổn', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(18, 3, 10, 'Hay quá trời', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(19, 7, 10, 'Tôi rất thích bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(20, 2, 5, 'Tôi sẽ học thèo bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(21, 4, 1, 'Bài viết này chưa được hay lắm', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(22, 6, 2, 'Hay quá trời', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(23, 2, 3, 'Tôi chưa có ý kiến gì', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(24, 3, 8, 'Tôi sẽ học thèo bài viết này', '2018-11-17 10:06:09', '2018-11-17 10:06:09'),
(25, 12, 1, 'hihi', '2018-12-05 09:53:20', '2018-12-05 09:53:20'),
(26, 12, 1, 'haha', '2018-12-05 09:55:39', '2018-12-05 09:55:39'),
(27, 12, 1, 'hô hô', '2018-12-05 09:57:30', '2018-12-05 09:57:30'),
(28, 12, 1, 'hehe', '2018-12-05 09:59:32', '2018-12-05 09:59:32'),
(29, 12, 1, 'kaka', '2018-12-05 10:09:02', '2018-12-05 10:09:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitins`
--

CREATE TABLE `loaitins` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitins`
--

INSERT INTO `loaitins` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Giáo Dục', 'Giao-Duc', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(2, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(3, 1, 'Du Lịch', 'Du-Lich', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(4, 1, 'Du Học', 'Du-Hoc', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(5, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(6, 2, 'Ảnh 1', 'anh-1', '2018-11-17 09:24:02', '2018-11-22 07:39:02'),
(7, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(8, 2, 'Phân Tích', 'Phan-Tich', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(9, 3, 'Chứng Khoán', 'Chung-Khoan', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(10, 3, 'Bất Động Sản', 'Bat-Dong-San', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(11, 3, 'Doanh Nhân', 'Doanh-Nhan', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(12, 3, 'Quốc Tế', 'Quoc-Te', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(13, 3, 'Mua Sắm', 'Mua-Sam', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(14, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(15, 4, 'Hoa Hậu', 'Hoa-Hau', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(16, 4, 'Nghệ Sỹ', 'Nghe-Sy', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(17, 4, 'Âm Nhạc', 'Am-Nhac', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(18, 4, 'Thời Trang', 'Thoi-Trang', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(19, 4, 'Điện Ảnh', 'Dien-Anh', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(20, 4, 'Mỹ Thuật', 'My-Thuat', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(21, 5, 'Bóng Đá', 'Bong-Da', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(22, 5, 'Tennis', 'Tennis', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(23, 5, 'Chân Dung', 'Chan-Dung', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(24, 5, 'Ảnh', 'Anh-TT', '2018-11-17 09:24:02', '2018-11-17 09:24:02'),
(25, 6, 'Hình Sự', 'Hinh-Su', '2018-11-17 09:24:02', '2018-11-17 09:24:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_17_155837_create_theloais_table', 2),
(4, '2018_11_17_160039_create_loaitins_table', 2),
(5, '2018_11_17_160242_create_tintucs_table', 2),
(6, '2018_11_17_160509_create_comments_table', 2),
(7, '2018_11_17_160635_create_slides_table', 2),
(8, '2018_11_30_144304_add_quyen_column_into_users', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Slide abc', '1.jpg', 'Nội dung slide đây nhé', 'google.com', '2018-11-28 17:00:00', '2018-11-29 17:36:35'),
(2, 'Slide 2', '2.jpg', 'Nội dung đây nhé', 'khongbiet.com', '2018-12-03 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloais`
--

CREATE TABLE `theloais` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloais`
--

INSERT INTO `theloais` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 'Xa-Hoi', NULL, NULL),
(2, 'Thế Giới', 'The-Gioi', NULL, NULL),
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(4, 'Văn Hoá', 'Van-Hoa', NULL, NULL),
(5, 'Thể Thao', 'The-Thao', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL),
(7, 'Đời Sống', 'Doi-Song', NULL, NULL),
(8, 'Khoa Học', 'Khoa-Hoc', NULL, NULL),
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL),
(11, 'Cuộc sống tươi đẹp', 'cuoc-song-tuoi-dep', '2018-11-21 16:02:35', '2018-11-21 16:02:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintucs`
--

CREATE TABLE `tintucs` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintucs`
--

INSERT INTO `tintucs` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 'Lần đầu ĐH FPT cấp học bổng tiến sĩ', 'lan-dau-dh-fpt-cap-hoc-bong-tien-si', 'Bên cạnh 400 suất học bổng Nguyễn Văn Đạo, ĐH FPT lần đầu tiên chọn ra 30 học sinh xuất sắc nhất để cấp học bổng toàn phần đào tạo từ cử nhân lên thẳng tiến sĩ, với tổng giá trị quỹ lên tới 5 triệu USD.', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn </strong></strong></strong></strong></p>', 'no-image.png', 1, 0, 1, '2018-11-17 09:40:25', '2019-02-16 14:37:43'),
(2, '300 tỷ đồng phát triển giáo dục mầm non ', '300-Ty-Dong-Phat-Trien-Giao-Duc-Mam-Non', 'Bộ Giáo dục và Đào tạo đang xây dựng chương trình, mục tiêu quốc gia về giáo dục giai đoạn 2011-2015, trong đó dự kiến chi 300 tỷ đồng để phát triển giáo dục mầm non năm 2011. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tre_em_set_sub.jpg', 1, 0, 1, '2018-11-17 09:40:25', '2018-11-17 09:40:25'),
(3, 'Nợ giáo viên tiền tỷ chi phí phổ cập giáo dục ', 'No-Giao-Vien-Tien-Ty-Chi-Phi-Pho-Cap-Giao-Duc', 'Ba năm qua, nhiều giáo viên ở Khánh Hòa bỏ công sức, kể cả tiền bạc để thực hiện phổ cập giáo dục cho học sinh trên địa bàn tỉnh, song đến nay vẫn chưa nhận được tiền chính quyền chi trả. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'pho-cap-giao-duc-nho-2.jpg', 1, 0, 1, '2018-11-17 09:40:25', '2018-11-17 09:40:25'),
(4, 'Những nụ hôn ngọt ngào trong đêm tình nhân ', 'Nhung-Nu-Hon-Ngot-Ngao-Trong-Dem-Tinh-Nhan', 'Tối 13/2, hàng nghìn bạn trẻ có mặt tại cầu Ánh Sao (quận 7, TP HCM) chứng kiến những lời tỏ tình cùng những nụ hôn ngọt ngào của 100 cặp tình nhân trong \"Đêm Valentine thế kỷ\". ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', '250h_jpg_thumb210x0_ns.jpg', 0, 0, 2, '2018-11-17 09:40:25', '2018-11-17 09:40:25'),
(5, 'Hot girl tâm sự về ngày Valentine ', 'Hot-Girl-Tam-Su-Ve-Ngay-Valentine', 'Một bông hồng trắng bằng khăn giấy, chiếc xe đạp gắn đầy hoa, hay bài thơ của chàng \"thi sĩ\" vô danh gửi tặng… là những món quà đầy ấn tượng mà hot girl Midu từng nhận được trong các mùa Valentine. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'hot-girl-valentine-2.jpg', 1, 0, 2, '2018-11-17 09:40:25', '2018-11-17 09:40:25'),
(6, 'Đón và chăm sóc trẻ sau giờ tan trường qua dịch vụ ', 'Don-Va-Cham-Soc-Tre-Sau-Gio-Tan-Truong-Qua-Dich-Vu', 'Các bé sẽ được chăm sóc bữa ăn, tắm rửa sạch sẽ, vui chơi và học tập cùng cô giáo theo các nội dung trong sổ báo bài, mở rộng hoặc đào sâu kiến thức theo yêu cầu của phụ huynh. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'be-2.jpg', 0, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(7, '7 học sinh rơi từ tầng hai xuống đất vì gãy lan can ', '7-Hoc-Sinh-Roi-Tu-Tang-Hai-Xuong-Dat-Vi-Gay-Lan-Can', 'Đang giờ ra chơi, bất ngờ toàn bộ lan can tầng hai của Trường THCS thị trấn Chợ Rã (Bắc Kạn) gãy đổ ra ngoài, kéo theo 7 học sinh lớp 6A rơi xuống đất. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tai_nan_set_top.gif', 1, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(8, 'Giáo viên TP HCM được thưởng tết tối thiểu 700.000 đồng ', 'Giao-Vien-Tp-Hcm-Duoc-Thuong-Tet-Toi-Thieu-700.000-Dong', 'Sở GD&ĐT TP HCM vừa có thông báo về việc UBND thành phố chấp thuận đề nghị hỗ trợ mức quà tết cho cán bộ công chức trong ngành tối thiểu là 700.000 đồng. Mức thưởng này cao hơn năm ngoái 100.000 đồng. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'thuong-tet-3.jpg', 1, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(9, 'Mức sinh hoạt phí tối đa cho lưu học sinh là 1.200 USD ', 'Muc-Sinh-Hoat-Phi-Toi-Da-Cho-Luu-Hoc-Sinh-La-1.200-Usd', 'Đối với lưu học sinh tại Ba Lan, Bungary, Nga..., mức sinh hoạt phí sẽ tăng từ 400 USD lên 480 USD; tại Australia, New Zealand tăng từ 860 USD lên 1.032 USD và tại Mỹ, Canada, Anh, Nhật Bản tăng từ 1.000 lên 1.200 USD một người một tháng... ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'du_hoc_sinh_set_sub.jpg', 0, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(10, 'Học sinh Hà Nội được nghỉ 11 ngày Tết ', 'Hoc-Sinh-Ha-Noi-Duoc-Nghi-11-Ngay-Tet', 'UBND thành phố Hà Nội vừa đồng ý với đề xuất của Sở Giáo dục và Đào tạo về việc cho học sinh nghỉ tết Tết Nguyên đán Tân Mão 11 ngày. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 't2.jpg', 1, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(11, 'Hàng trăm nghìn học sinh nghỉ học vì giá rét ', 'Hang-Tram-Nghin-Hoc-Sinh-Nghi-Hoc-Vi-Gia-Ret', 'Sớm nay, các trường tiểu học ở Hà Nội đều trưng biển thông báo nghỉ học do nhiệt độ ở mức 8 độ C. Một vài phụ huynh không theo dõi dự báo thời tiết vẫn đưa con đến trường và ngậm ngùi quay xe ra về. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'phu_huynh_xem_lich_nghi_hoc_set_sub.jpg', 1, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(12, 'Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', 1, 0, 1, '2018-11-17 09:43:56', '2018-11-17 09:43:56'),
(13, 'Đón và chăm sóc trẻ sau giờ tan trường qua dịch vụ ', 'Don-Va-Cham-Soc-Tre-Sau-Gio-Tan-Truong-Qua-Dich-Vu', 'Các bé sẽ được chăm sóc bữa ăn, tắm rửa sạch sẽ, vui chơi và học tập cùng cô giáo theo các nội dung trong sổ báo bài, mở rộng hoặc đào sâu kiến thức theo yêu cầu của phụ huynh. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'be-2.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(14, '7 học sinh rơi từ tầng hai xuống đất vì gãy lan can ', '7-Hoc-Sinh-Roi-Tu-Tang-Hai-Xuong-Dat-Vi-Gay-Lan-Can', 'Đang giờ ra chơi, bất ngờ toàn bộ lan can tầng hai của Trường THCS thị trấn Chợ Rã (Bắc Kạn) gãy đổ ra ngoài, kéo theo 7 học sinh lớp 6A rơi xuống đất. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tai_nan_set_top.gif', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(15, 'Giáo viên TP HCM được thưởng tết tối thiểu 700.000 đồng ', 'Giao-Vien-Tp-Hcm-Duoc-Thuong-Tet-Toi-Thieu-700.000-Dong', 'Sở GD&ĐT TP HCM vừa có thông báo về việc UBND thành phố chấp thuận đề nghị hỗ trợ mức quà tết cho cán bộ công chức trong ngành tối thiểu là 700.000 đồng. Mức thưởng này cao hơn năm ngoái 100.000 đồng. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'thuong-tet-3.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(16, 'Mức sinh hoạt phí tối đa cho lưu học sinh là 1.200 USD ', 'Muc-Sinh-Hoat-Phi-Toi-Da-Cho-Luu-Hoc-Sinh-La-1.200-Usd', 'Đối với lưu học sinh tại Ba Lan, Bungary, Nga..., mức sinh hoạt phí sẽ tăng từ 400 USD lên 480 USD; tại Australia, New Zealand tăng từ 860 USD lên 1.032 USD và tại Mỹ, Canada, Anh, Nhật Bản tăng từ 1.000 lên 1.200 USD một người một tháng... ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'du_hoc_sinh_set_sub.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(17, 'Học sinh Hà Nội được nghỉ 11 ngày Tết ', 'Hoc-Sinh-Ha-Noi-Duoc-Nghi-11-Ngay-Tet', 'UBND thành phố Hà Nội vừa đồng ý với đề xuất của Sở Giáo dục và Đào tạo về việc cho học sinh nghỉ tết Tết Nguyên đán Tân Mão 11 ngày. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 't2.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(18, 'Hàng trăm nghìn học sinh nghỉ học vì giá rét ', 'Hang-Tram-Nghin-Hoc-Sinh-Nghi-Hoc-Vi-Gia-Ret', 'Sớm nay, các trường tiểu học ở Hà Nội đều trưng biển thông báo nghỉ học do nhiệt độ ở mức 8 độ C. Một vài phụ huynh không theo dõi dự báo thời tiết vẫn đưa con đến trường và ngậm ngùi quay xe ra về. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'phu_huynh_xem_lich_nghi_hoc_set_sub.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(19, 'Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', 1, 0, 1, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(20, 'Một mình ở Thái Lan ', 'Mot-Minh-O-Thai-Lan', 'Không quá ồn ã tấp nập như Hong Kong, hay quá yên bình như Hội An, Bangkok khiến cho tôi cảm thấy vô cùng phấn khích, tựa hồ như vừa thức giấc sau một cơn ngủ say. Bạn Nguyễn Anh Ngọc viết. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'top1.jpg', 1, 0, 3, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(21, 'Trai Hà thành trổ tài vật cầu đầu xuân', 'Trai-Ha-Thanh-Tro-Tai-Vat-Cau-Dau-Xuan', 'Những pha tranh cướp quyết liệt cùng những tiếng cười vui là hình ảnh về lễ hội vật cầu đầu xuân của các thanh niên làng Thúy Lĩnh, quận Hoàng Mai (Hà Nội), diễn ra chiều 8/2 (6 Tết). ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', '130.jpg', 1, 0, 3, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(22, 'Các bãi biển Đà Nẵng đồng loạt thả chim bồ câu ', 'Cac-Bai-Bien-Da-Nang-Dong-Loat-Tha-Chim-Bo-Cau', 'Sáng nay, Ban quản lý bán đảo Sơn Trà và các bãi biển du lịch thành phố Đà Nẵng đã tổ chức thả chim bồ câu, phát động xây dựng vườn chim hòa bình tại công viên biển Đông. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'thachim2.jpg', 1, 0, 3, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(23, 'Đi tìm cây đa đại thụ hơn nghìn năm tuổi ', 'Di-Tim-Cay-Da-Dai-Thu-Hon-Nghin-Nam-Tuoi', 'Chúng tôi thẳng tiến về Bán đảo Sơn Trà (Đà Nẵng) nơi được mạnh danh là “Mắt thần Đông Dương”. Mục tiêu của chúng tôi là khám phá cây đa cổ thụ hơn nghìn năm tuổi. Đường dốc và ngoằn nghèo khiến du khách có cảm giác như bay lên thiên giới. Bạn Triệu Hòa chia sẻ. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'cayda2.jpg', 1, 0, 3, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(24, 'Rêu nảy lộc xuân trên phố cổ Hội An', 'Reu-Nay-Loc-Xuan-Tren-Pho-Co-Hoi-An', 'Trong màn sương lãng đãng, phố cổ Hội An hiện ra như bức tranh bình dị mà sâu lắng. Rêu nảy lộc trên từng ngõ phố, bật mầm trên từng mái ngói cũ xưa gieo nhớ thương, neo lòng du khách trong khoảnh khắc mùa xuân đang về. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'a-top-2-reu-xuan-HA.jpg', 1, 0, 3, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(25, 'Du học hè Singapore 2011', 'Du-Hoc-He-Singapore-2011', 'Đăng ký trước ngày 29/1, học sinh sẽ được tặng 6 triệu đồng khi tham gia lịch trình 4 tuần ở tại resort và tặng 4 triệu đồng cho học sinh tham gia lịch trình 2 hoặc 3 tuần ở tại resort.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', '400.jpg', 1, 0, 4, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(26, 'Chương trình trung học tại Canada', 'Chuong-Trinh-Trung-Hoc-Tai-Canada', 'Bà Birgit Hartel, Giám đốc tuyển sinh nhóm các trường công lập River East Transcona, tỉnh Manitoba, Canada sẽ giới thiệu về môi trường sống và học tập từ 18h đến 20h ngày 21/1 tại số 22 phố Phạm Huy Thông, Ba Đình, Hà Nội.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'New-Image250.jpg', 1, 0, 4, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(27, 'Ngành quản trị khách sạn và du lịch tại Thụy Sĩ', 'Nganh-Quan-Tri-Khach-San-Va-Du-Lich-Tai-Thuy-Si', 'G’Connect Education tổ chức buổi giới thiệu thông tin du học Thụy Sĩ với đại diện trường Quản lý khách sạn IHTTI vào từ 17h30 đến 20h30 ngày 24/2 tại khách sạn Sheraton, 88 Đồng Khởi, quận 1, TP HCM (Hanoi Room, tầng 2)', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'Festival-17_Ve-tranh.jpg', 1, 0, 4, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(28, 'Du học tại Queen Mary và London Metropolitan (Anh)', 'Du-Hoc-Tai-Queen-Mary-Va-London-Metropolitan--Anh-', 'Đại diện trường Queen Mary và London Metropolitan sẽ tham gia hội thảo tuyển sinh được tổ chức tại Hà Nội và TP HCM.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'sunrise-1.jpg', 1, 0, 4, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(29, 'Các trường Nhật ngữ tuyển sinh', 'Cac-Truong-Nhat-Ngu-Tuyen-Sinh', 'Đại diện tuyển sinh của các trường Nhật ngữ tổ chức phỏng vấn và nhận hồ sơ trực tiếp từ học sinh có nguyện vọng du học Nhật Bản cho kỳ khai giảng tháng 7 tại Trung tâm thương mại và hợp tác quốc tế UDIC, Hà Nội.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'toi1.jpg', 1, 0, 4, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(30, 'Vợ đánh hổ cứu chồng', 'Vo-Danh-Ho-Cuu-Chong', 'Một phụ nữ ở phía bắc Malaysia đánh hổ bằng muỗng gỗ khi con thú tấn công chồng bà, nhờ đó người đàn ông thoát chết.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tiger.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(31, 'Nga đưa tên lửa tối tân lên đảo tranh chấp với Nhật', 'Nga-Dua-Ten-Lua-Toi-Tan-Len-Dao-Tranh-Chap-Voi-Nhat', 'Matxcơva sẽ triển khai hệ thống tên lửa phòng không hiện đại tầm ngắn và trung lên các đảo tranh chấp với Nhật Bản, quan chức cấp cao của Bộ Tổng tham mưu Nga cho biết hôm nay.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 's400.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(32, 'Mỹ - Hàn sắp tập trận khổng lồ', 'My---Han-Sap-Tap-Tran-Khong-Lo', 'Mỹ và Hàn Quốc sẽ tổ chức một cuộc diễn tập chung vào tháng này, cho dù căng thẳng với Triều Tiên vẫn kéo dài sau vụ đụng độ gần biên giới vào năm ngoái.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'carrier.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(33, 'Đánh bom tự sát ở Nga', 'Danh-Bom-Tu-Sat-O-Nga', 'Hai cảnh sát thiệt mạng và hơn 20 người bị thương trong hai vụ đánh bom tự sát ở nước Cộng hòa Dagestan thuộc vùng Bắc Kavkaz của Nga.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'x1.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(34, 'Trung Quốc ủng hộ đại tướng trẻ của Triều Tiên', 'Trung-Quoc-Ung-Ho-Dai-Tuong-Tre-Cua-Trieu-Tien', 'Một quan chức cấp cao của Trung Quốc bày tỏ sự ủng hộ đối với kế hoạch chuyển giao quyền lực của Chủ tịch Triều Tiên Kim Jong-il cho con trai út, hãng thông tấn chính thức của Triều Tiên cho hay.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'jong-un.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(35, 'Làn sóng biểu tình khắp thế giới Ảrập', 'Lan-Song-Bieu-Tinh-Khap-The-Gioi-Arap', 'Cuộc lật đổ chế độ của người dân Ai Cập gây ra hiệu ứng domino trên toàn thế giới Ảrập, khi người dân các nước trong khu vực liên tiếp đổ ra đường đòi hạ bệ chính phủ.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'arap1.jpg', 1, 0, 5, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(36, 'Tập trận Hổ mang Vàng 2011', 'Tap-Tran-Ho-Mang-Vang-2011', 'Cuộc tập trận trên bộ lớn nhất thế giới năm nay nhằm đánh dấu 30 năm ra đời sự kiện, trong đó tập trung vào huấn luyện kỹ năng quân sự cơ bản, lên kế hoạch nhân sự và các dự án hỗ trợ nhân đạo.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'gold1.jpg', 1, 0, 6, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(37, 'Ai Cập trở lại cuộc sống thường nhật', 'Ai-Cap-Tro-Lai-Cuoc-Song-Thuong-Nhat', 'Các hàng quán mở cửa trở lại, công sở, nhà băng đi vào hoạt động, đường phố vắng vẻ yên tĩnh. Nhịp sống Ai Cập dần trở lại như trước khi có hàng loạt cuộc biểu tình rầm rộ kéo dài.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'bt1.jpg', 1, 0, 6, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(38, 'Ảnh báo chí thế giới 2010', 'Anh-Bao-Chi-The-Gioi-2010', 'Chân dung của cô gái Afghanistan 18 tuổi Bibi Aisha bị chồng là một chiến binh Taliban cắt mất mũi đoạt giải Ảnh báo chí thế giới của năm 2010.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'p1.jpg', 1, 0, 6, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(39, 'Lễ tình nhân trên khắp thế giới', 'Le-Tinh-Nhan-Tren-Khap-The-Gioi', 'Không khí ngày lễ tình yêu Valentine tưng bừng, nhộn nhịp, trên khắp các con phố từ Trung Quốc, Nhật Bản, cho tới New York, Mexico. ', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'va10.jpg', 1, 0, 6, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(40, 'Thưởng thơ xuân ở Berlin', 'Thuong-Tho-Xuan-O-Berlin', 'Lúc nhận được lời mời đi tham dự đêm Thơ Nguyên tiêu, do câu lạc bộ người yêu thơ Berlin tổ chức, tôi cứ mãi ngập ngừng. Thành thật mà nói, tình yêu thơ thì tôi có thật, nhưng hôm ấy lại là một đêm mùa đông khá lạnh.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tho1.jpg', 1, 0, 6, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(41, 'Tôi đi đào vàng ở Australia', 'Toi-Di-Dao-Vang-O-Australia', 'Chúng tôi dựng lều ở khu cắm trại trong một công viên quốc gia cách nơi chúng tôi ở khoảng vài giờ lái xe. Hằng ngày hai đứa tôi mang máy dò vàng đi rà dọc theo những con suối cạn nước trong rừng.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'nn.jpg', 1, 0, 7, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(42, 'Thủy thủ trên tàu Việt Nam ở Ấn Độ kêu cứu', 'Thuy-Thu-Tren-Tau-Viet-Nam-O-An-Do-Keu-Cuu', '\"Chúng tôi không còn gì để ăn. 85% đồ đạc trên tàu đều hỏng hết. Công ty không còn cung cấp thực phẩm. Xin hãy cứu chúng tôi\".', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'c1.jpg', 1, 0, 7, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(43, 'Tiệm hoa ở Little Saigon rộn ràng ngày Tình yêu', 'Tiem-Hoa-O-Little-Saigon-Ron-Rang-Ngay-Tinh-Yeu', 'Các tiệm hoa ở Little Saigon, quận Cam, California, tấp nập người mua bán trong ngày Tình yêu sáng qua.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'valentine3.jpg', 1, 0, 7, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(44, 'Nên ở lại Mỹ hay về Việt Nam?', 'Nen-O-Lai-My-Hay-Ve-Viet-Nam-', 'Tôi không xinh, và với tuổi tác hiện nay, tôi sợ không biết liệu về Việt Nam có thể có tìm được cho mình một hạnh phúc riêng hay không.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'tt1_1.jpg', 1, 0, 7, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(45, 'Internet châm ngòi lật đổ Mubarak như thế nào', 'Internet-Cham-Ngoi-Lat-Do-Mubarak-Nhu-The-Nao', 'Những người Ai Cập trẻ tuổi phát động cuộc biểu tình từ ngày 25/1 qua các trang mạng xã hội. Chính quyền lập tức ngăn chặn nhưng vô hiệu và sau 18 ngày người dân nổi dậy, Tổng thống Mubarak buộc phải \"nhổ neo\".', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'Ghonim.jpg', 1, 0, 8, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(46, 'Tình hình Iran nguy cơ theo bước Ai Cập', 'Tinh-Hinh-Iran-Nguy-Co-Theo-Buoc-Ai-Cap', 'Sau Tunisia và Ai Cập, làn sóng biểu tình đang lan khắp Trung Đông, đặc biệt tại nước không thuộc thế giới Ảrập là Iran, vốn đang bị Mỹ can thiệp trực tiếp bằng cách công khai ủng hộ người biểu tình.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'Tehran.jpg', 1, 0, 8, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(47, 'Trung Đông vui buồn lẫn lộn vì Mubarak từ chức', 'Trung-Dong-Vui-Buon-Lan-Lon-Vi-Mubarak-Tu-Chuc', 'Trung Đông vui buồn lẫn lộn vì Mubarak từ chức Hàng trăm nghìn người dân ở khu vực Trung Đông đổ ra đường phố để ăn mừng sau khi Tổng thống Ai Cập Hosni Mubarak từ chức hôm qua, trong khi nhiều người dân Israel tỏ ra lo ngại cho tương lai của họ.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'cam4.jpg', 1, 0, 8, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(48, 'Hàn Quốc tranh cãi về việc đánh học sinh', 'Han-Quoc-Tranh-Cai-Ve-Viec-Danh-Hoc-Sinh', 'Năm học mới càng đến gần, cô giáo trung học Jennifer Chung càng lo lắng khi sắp phải xa người bạn đồng hành lâu năm của mình - chiếc roi cô thường dùng để trị những học sinh ngỗ ngược.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'han2.jpg', 1, 0, 8, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(49, 'Chiến lược quốc phòng Mỹ tập trung vào châu Á', 'Chien-Luoc-Quoc-Phong-My-Tap-Trung-Vao-Chau-A', 'Lầu Năm Góc tuyên bố sẽ tiếp tục xây dựng đồng minh và tập trung giải quyết xung đột bằng cách triển khai thêm lực lượng ở các khu vực nhiều đe dọa, đặc biệt là châu Á và Thái Bình Dương.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'm1.jpg', 1, 0, 8, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(50, 'Đảo chiều giữa phiên, Vn-Index giảm gần 5 điểm', 'Dao-Chieu-Giua-Phien,-Vn-Index-Giam-Gan-5-Diem', 'Giao dịch trên thị trường chứng khoán tiếp tục lình xình khi các cổ phiếu lớn không chứng tỏ vai trò dẫn dắt. Vn-Index và HNX-Index đồng loạt giảm khoảng 1%.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'chung-khoan-0.jpg', 1, 0, 9, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(51, 'Vn-Index mất điểm phiên thứ 3 liên tiếp', 'Vn-Index-Mat-Diem-Phien-Thu-3-Lien-Tiep', 'Xu hướng điều chỉnh của thị trường chứng khoán tiếp tục nối dài trong phiên giao dịch sáng nay khi các chỉ số đồng loạt giảm điểm. Tuy nhiên, lực cầu bắt đáy có dấu hiệu tăng cao, đặc biệt là trên sàn Hà Nội.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'chung-khoan-0 (1).jpg', 1, 0, 9, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(52, 'Đầu năm, chứng khoán khởi động chậm', 'Dau-Nam,-Chung-Khoan-Khoi-Dong-Cham', 'Trong tuần giao dịch đầu tiên của năm Tân Mão, khối lượng cổ phiếu được chuyển nhượng trên 2 sàn Hà Nội và TP HCM đồng loạt giảm khoảng 7%. Index tuy vẫn tăng nhưng chủ yếu dựa vào lực đẩy từ các cổ phiếu lớn.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'chung-khoan-0 (2).jpg', 1, 0, 9, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(53, 'Xem xét xây dựng chỉ số phụ cho 2 sàn chứng khoán', 'Xem-Xet-Xay-Dung-Chi-So-Phu-Cho-2-San-Chung-Khoan', 'Ủy ban Chứng khoán Nhà nước (SSC) vừa có văn bản yêu cầu 2 Sở giao dịch chứng khoán Hà Nội và TP HCM tìm biện pháp khắc phục tình trạng \"méo mó\" của Index do tác động từ các cổ phiếu có vốn hóa lớn trên thị trường.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'chung-khoan-0_1.jpg', 1, 0, 9, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(54, 'Sóng’ blue-chip', 'Song’-Blue-Chip', 'Trong nhiều phiên giao dịch gần đây, một số cổ phiếu lớn như BVH, MSN, HAG, CTG… tăng giá rất mạnh đẩy Vn-Index từ 480 điểm vượt 520 điểm. Những blue-chip đang tạo ra \"sóng\" trên thị trường.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'song-bluechip.jpg', 1, 0, 9, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(55, 'Chung cư mini đầu tiên ở TP HCM rao bán', 'Chung-Cu-Mini-Dau-Tien-O-Tp-Hcm-Rao-Ban', 'Ngày 15/2, Công ty TNHH Tổ hợp Vina và Công ty Địa ốc Hoàng Anh Sài Gòn bắt đầu bán 19 căn hộ của tòa nhà Vinacomplex III gây xôn xao giới buôn địa ốc. Bởi lẽ, đây là loại hình chung cư mini đầu tiên tại TP HCM.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'a-tb-chung-cu-mini.jpg', 1, 0, 10, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(56, 'Đề xuất sở hữu chung cư có thời hạn gây nhiều tranh cãi', 'De-Xuat-So-Huu-Chung-Cu-Co-Thoi-Han-Gay-Nhieu-Tranh-Cai', 'Bộ Xây dựng cho rằng, sở hữu nhà chung cư có thời hạn sẽ thuận tiện cho việc nâng cấp, cải tạo đồng thời làm giảm giá chung cư. Tuy nhiên, nhiều ý kiến lo ngại, người dân có thể bị sốc và quay lưng lại với mô hình này.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'chung1.jpg', 1, 0, 10, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(57, 'Thép và xi măng cùng tăng giá', 'Thep-Va-Xi-Mang-Cung-Tang-Gia', 'Từ đầu tháng đến nay, nhiều doanh nghiệp thép đã tăng giá từ 200.000 đồng đến 500.000 đồng mỗi tấn. Xi măng cũng tăng 60.000 đồng. Theo dự báo, hai mặt hàng này sẽ còn biến động nếu điện và than đồng loạt tăng giá.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'thep_1.jpg', 1, 0, 10, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(58, 'Kinh Bắc sẽ khởi công dự án tỷ đô trong quý I', 'Kinh-Bac-Se-Khoi-Cong-Du-An-Ty-Do-Trong-Quy-I', 'Trao đổi với VnExpress.net, ông Đặng Thành Tâm, Chủ tịch Tập đoàn Kinh Bắc cho hay, chủ đầu tư đã được chấp thuận khởi công dự án tòa nhà phức hợp 100 tầng có tên Lotus trong quý I.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'kb1.jpg', 1, 0, 10, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(59, 'Thành phố ven sông Hồng sẽ hạn chế nhà cao tầng', 'Thanh-Pho-Ven-Song-Hong-Se-Han-Che-Nha-Cao-Tang', 'Phó giám đốc Sở Quy hoạch Kiến trúc Hà Nội Dương Đức Tuấn cho hay, sau khi lồng ghép vào quy hoạch chung thủ đô, dự án thành phố ven sông Hồng sẽ hạn chế, giảm bớt các nhà cao tầng để phát triển không gian xanh.', '\n    	</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\n    	<p>\n	    	<b>Hotline kỹ thuật <b>: 0967 908 907 <br>\n	    	<b>Hotline tư vấn kháo học <b>: 094 276 4080 <br>\n	    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM <br>\n	    	<b>Website</b>: khoapham.vn <br>\n	    	<b>Học Online tại :</b>online.khoapham.vn <br>\n    	</p>\n    	', 'dan.jpg', 1, 0, 10, '2018-11-17 10:05:32', '2018-11-17 10:05:32'),
(60, 'áda', '', 'ád', '<p>đá</p>', 'v8SSV_qua.jpg', 0, 0, 1, '2018-11-29 09:46:30', '2018-11-29 09:46:30'),
(61, 'Đầu tư mới về giáo dục', '', 'Trang thiết bị cùng với công nghệ hiện đại', '<p>Nội dung chính của sự đầu tư mới về giáo dục&nbsp;</p>', 'no-image.png', 0, 0, 1, '2018-11-29 09:58:40', '2018-11-29 09:58:40'),
(63, 'Vòng quanh thế giới', '', 'Đi du hí đó đây', '<p>Nội dung vòng quanh thế giới</p>', 'WvXva_35648043_1893910817325468_1994620062513758208_n.jpg', 1, 0, 3, '2018-11-29 10:06:40', '2018-11-29 10:06:40'),
(64, 'Chàng trai trẻ tự mình kiếm tiền đi du học', '', 'Tóm tắt câu chuyện chàng trai trẻ tự mình kiếm tiền đi du học', '<p>Nội dung&nbsp;câu chuyện chàng trai trẻ tự mình kiếm tiền đi du học</p>', 'no-image.png', 0, 0, 4, '2018-11-29 10:11:01', '2018-11-29 10:11:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `quyen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User_1a', 'admin@gmail.com', NULL, '$2y$10$KSochHa6T4Nm9NJuDm.D7.G6dGEkSyxmhn70Npx3FFG.R7C.T3vDC', 1, 'r3sXKPRFhfxsdP48tdGZ8PY653VafuYUBfxsQitaAMezWqfeAHuFpZtsIrl4', '2018-11-17 08:55:39', '2018-11-30 14:43:14'),
(2, 'User_2', 'user@gmail.com', NULL, '$2y$10$KSochHa6T4Nm9NJuDm.D7.G6dGEkSyxmhn70Npx3FFG.R7C.T3vDC', 0, NULL, '2018-11-17 08:55:40', NULL),
(3, 'User_33', 'user_3@gmail.com', NULL, '$2y$10$oa2C0cciFdeJyupJcKavB.2NhxzZUtUyCYpe9qPDiDOsOr1PEU0ay', 0, NULL, '2018-11-17 08:55:40', '2018-11-30 09:28:20'),
(4, 'User_4', 'user_4@gmail.com', NULL, '$2y$10$LDOwX7VIfYP90MDJ9SwWne4esP6/k1UqK4JCIZudh7YcTJRTYClc6', 1, NULL, '2018-11-17 08:55:40', NULL),
(5, 'User_5', 'user_5@gmail.com', NULL, '$2y$10$zzU697GQ3xu5x/LdIUwqju9VzUQ5XX5P7cbg4kOsb0Vn9jXcq5Yui', 0, NULL, '2018-11-17 08:55:40', NULL),
(6, 'User_6', 'user_6@gmail.com', NULL, '$2y$10$9d6E3//P7SEAly.K.qGZDej7G5sbKYNwVIiE9ginpw/U1/lbuSaZW', 0, NULL, '2018-11-17 08:55:40', NULL),
(7, 'User_7', 'user_7@gmail.com', NULL, '$2y$10$Y5mHXaKzSI1tHv4fSrzFeu7c.Ze04GUShsM9388blNBiQIg4u/Sa2', 0, NULL, '2018-11-17 08:55:40', NULL),
(8, 'User_8', 'user_8@gmail.com', NULL, '$2y$10$ERkqeQSo8bmCzuwB/BUh5.VYdjbElrd1i1qAHrRPJWskuxDcuVFni', 0, NULL, '2018-11-17 08:55:40', NULL),
(9, 'User_9', 'user_9@gmail.com', NULL, '$2y$10$3zCfaMQXmyjBti2J1dNYQ.ALQ6oq024w1gsYQ7CQ/ITgZMCiZW0oa', 0, NULL, '2018-11-17 08:55:40', NULL),
(10, 'User_10', 'user_10@gmail.com', NULL, '$2y$10$fqI8psZt6Ra/GsJN6MPxsON1IkT4hpHTM6/bftRPDaVf9dRXj7rIy', 0, NULL, '2018-11-17 08:55:41', NULL),
(12, 'duc', 'duc@gmail.com', NULL, '$2y$10$k4CzZbFCp0MTywBPFnUKgu6y0Ebct7qA/j5xnPEAs3oJGqOPD997u', 1, 'OFsJLc6cu5yGOjv5TKFYM0WNarNs5fYkx33glOlx7x8gIn5zuTLZpPjc71Kd', '2018-11-30 10:05:15', '2018-12-05 10:50:28'),
(13, 'Nam', 'nam@gmail.com', NULL, '$2y$10$9e6irwyiokivIrNzA8QiWuQ0veoYZMIe1zJ8psZRw/4nIldKbKWYy', 0, NULL, '2018-12-05 15:34:41', '2018-12-05 15:34:41'),
(14, 'Bình', 'binh@gmail.com', NULL, '$2y$10$PGzW.pt8zsBOBIccAmRSmuLlTu7pnoA6n2PYDN4kxaaSE1IK5HLXq', 0, NULL, '2018-12-05 15:35:17', '2018-12-05 15:35:17'),
(15, 'Thiên', 'thien@gmail.com', NULL, '$2y$10$e5V1pgameKQWc1kNYfsB8eCj.rkFtE0zKGvpJFzSRgd3w3vL6DyUy', 0, NULL, '2018-12-05 15:37:46', '2018-12-05 15:37:46'),
(16, 'Thiên', 'thien@gmail.com', NULL, '$2y$10$OaT77QrjqXCjdNFH81gRL.qe1wLbsrkcortDepdJZc6y0BJWLl6FS', 0, NULL, '2018-12-05 15:38:47', '2018-12-05 15:38:47'),
(17, 'Mạnh', 'manh@gmail.com', NULL, '$2y$10$BkknUHih1EOvk5Dt.cM8NeGYLEd7I5/75bAn8z1WSKAM5OOjoqate', 0, NULL, '2018-12-05 15:39:27', '2018-12-05 15:39:27'),
(18, 'cudlo', 'cudlo@gmail.com', NULL, '$2y$10$gmT1gVw7D.RQhZ4mHkBFCOFB4e41hZan2dn6jUX6OVvfloMZ8yIw6', 0, NULL, '2018-12-05 15:40:24', '2018-12-05 15:40:24'),
(19, 'Mai', 'mai@gmail.com', NULL, '$2y$10$RdOD/4T2UgUeAoRXwK3yQOnxE5d21ED6DKon7VuWITr2oIUr3C8Cy', 0, NULL, '2018-12-05 15:42:57', '2018-12-05 15:42:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_iduser_foreign` (`idUser`),
  ADD KEY `comments_idtintuc_foreign` (`idTinTuc`);

--
-- Chỉ mục cho bảng `loaitins`
--
ALTER TABLE `loaitins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitins_idtheloai_foreign` (`idTheLoai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloais`
--
ALTER TABLE `theloais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_idloaitin_foreign` (`idLoaiTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `loaitins`
--
ALTER TABLE `loaitins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `theloais`
--
ALTER TABLE `theloais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_idtintuc_foreign` FOREIGN KEY (`idTinTuc`) REFERENCES `tintucs` (`id`),
  ADD CONSTRAINT `comments_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `loaitins`
--
ALTER TABLE `loaitins`
  ADD CONSTRAINT `loaitins_idtheloai_foreign` FOREIGN KEY (`idTheLoai`) REFERENCES `theloais` (`id`);

--
-- Các ràng buộc cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_idloaitin_foreign` FOREIGN KEY (`idLoaiTin`) REFERENCES `loaitins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
