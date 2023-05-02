-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 02, 2023 lúc 09:14 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'hieu', 'hieudz@gmail.com', 'hoopham', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(4, 'tuấn', 'wibu@gmail.com', 'hieupham', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) NOT NULL,
  `binhluan` text NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`, `blog_id`, `image`) VALUES
(4, 'toàn', 'Đôi converse cổ cao này màu đẹp vờ lều', 3, 0, ''),
(5, 'Tuấn trương', 'Đôi nike nhìn có vẻ đẹp đó nhưng chưa phải là đẹp nhất trong dòng Nike supreme', 6, 0, ''),
(6, 'toản', 'giày truất vleu', 6, 0, ''),
(7, 'pham long', 'đôi giày mang đậm phong cách quân đội với tông chủ đạo xám xanh', 33, 0, ''),
(8, 'tuấn anh', 'Đôi minion  này nhìn hài vlvl.1 từ thôi :đẹp', 48, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `category_post` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `description`, `content`, `category_post`, `image`, `status`) VALUES
(1, 'Top 10+ Các Mẫu Giày Nike Đẹp, Mới Nhất 2022, Được Săn Đón Nhiều Nhất', '<h2 id=\"h-cac-mẫu-giay-nike-hot-nhất-2022-ma-bạn-khong-nen-bỏ-lỡ\"><span id=\"Cac_mau_giay_Nike_HOT_nhat_2022_ma_ban_khong_nen_bo_lo\"><span>C&aacute;c mẫu gi&agrave;y Nike HOT nhất 2022 m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ lỡ</span></span></h2>', '<h3 id=\"h-1-nike-air-max\"><span id=\"1_Nike_Air_Max\">.&nbsp;<span>Nike Air Max</span></span></h3>\r\n<p>Sự xuất hiện của&nbsp;<a href=\"https://blog.leflair.com/giay-nike-air/\">gi&agrave;y Nike Air</a>&nbsp;Max thực sự l&agrave; một l&agrave;n s&oacute;ng chấn động đối với những người đam m&ecirc;&nbsp;<a href=\"https://leflair.com/vn/thoi-trang\">thời trang</a>&nbsp;thể thao. Thiết kế n&agrave;y đồng thời cũng đ&atilde; đi v&agrave;o lịch sử th&agrave;nh c&ocirc;ng của h&atilde;ng như một bước tiến quan trọng v&agrave; s&aacute;ng tạo, g&oacute;p phần n&acirc;ng tầm thương hiệu l&ecirc;n một vị thế cao hơn.</p>\r\n<p>Nike Air Max đặc biệt rất được l&ograve;ng nh&oacute;m đối tượng kh&aacute;ch h&agrave;ng nữ giới bởi khả năng bứt ph&aacute; hơn hẳn về cả kiểu d&aacute;ng lẫn chất lượng. Thay v&igrave; đế cao su mềm, thiết kế n&agrave;y được ưu &aacute;i khi c&oacute; th&ecirc;m c&aacute;c t&uacute;i kh&iacute; si&ecirc;u &ecirc;m v&agrave; nhẹ. Ngo&agrave;i ra, phần g&oacute;t v&agrave; hai b&ecirc;n h&ocirc;ng c&ograve;n được sắp xếp sau lớp cao su trong suốt. Những s&aacute;ng tạo mới mẻ n&agrave;y đ&atilde; đem đến một diện mạo độc đ&aacute;o, kh&aacute;c lạ v&agrave; thu h&uacute;t phần đ&ocirc;ng sự ủng hộ nồng nhiệt từ ph&iacute;a kh&aacute;ch h&agrave;ng.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://blog.leflair.com/size-giay-nike/\">Bảng Size Gi&agrave;y Nike Nam Nữ V&agrave; Trẻ Em Chuẩn, Ch&iacute;nh X&aacute;c Nhất</a></p>\r\n<div class=\"wp-block-image\"><img class=\"wp-image-10835 thb-pinned lazyautosizes lazyloaded\" src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1.jpg\" alt=\"Thiết kế &ecirc;m &aacute;i v&agrave; tho&aacute;ng kh&iacute; tr&ecirc;n phi&ecirc;n bản Nike Air Max đ&igrave;nh đ&aacute;m\" width=\"650\" height=\"813\" data-src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1.jpg\" data-sizes=\"auto\" data-srcset=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1.jpg 650w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-240x300.jpg 240w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-370x463.jpg 370w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-185x231.jpg 185w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-20x25.jpg 20w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-400x500.jpg 400w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-1-38x48.jpg 38w\" /><em>Thiết kế &ecirc;m &aacute;i v&agrave; tho&aacute;ng kh&iacute; tr&ecirc;n phi&ecirc;n bản Nike Air Max đ&igrave;nh đ&aacute;m (Nguồn: Internet)</em><a class=\"thb-pin-it thb-pin-it-ready\" href=\"https://pinterest.com/pin/create/bookmarklet/?url=https%3A%2F%2Fblog.leflair.com%2Fcac-mau-giay-nike%2F&amp;media=https%3A%2F%2Fblog.leflair.com%2Fwp-content%2Fuploads%2F2022%2F05%2Fcac-mau-giay-nike-1.jpg&amp;description=Thi%E1%BA%BFt%20k%E1%BA%BF%20%C3%AAm%20%C3%A1i%20v%C3%A0%20tho%C3%A1ng%20kh%C3%AD%20tr%C3%AAn%20phi%C3%AAn%20b%E1%BA%A3n%20Nike%20Air%20Max%20%C4%91%C3%ACnh%20%C4%91%C3%A1m&amp;is_video=false\" target=\"_blank\"><em class=\"thb-icon-pinterest\"></em>PIN IT</a></div>\r\n<h3 id=\"h-2-nike-air-force-1\"><span id=\"2_Nike_Air_Force_1\">2.&nbsp;<span>Nike Air Force 1</span></span></h3>\r\n<p>Một trong&nbsp;<strong>c&aacute;c mẫu&nbsp;</strong><a href=\"https://leflair.com/vn/giay-dep-nam\"><strong>gi&agrave;y</strong></a><strong>&nbsp;Nike&nbsp;</strong>vẫn tiếp tục g&acirc;y tiếng vang tr&ecirc;n thị trường thời trang 2022 ch&iacute;nh l&agrave; Nike Air Force 1. Thiết kế n&agrave;y xuất hiện lần đầu ti&ecirc;n trước c&ocirc;ng ch&uacute;ng v&agrave;o năm 1983 v&agrave; ngay lập tức biến mất trong một năm sau đ&oacute;. Tuy nhi&ecirc;n, đến năm 1986, Nike Air Force 1 đ&atilde; bất ngờ t&aacute;i xuất với một diện mạo mới lạ v&agrave; v&ocirc; c&ugrave;ng ấn tượng, khiến giới h&acirc;m mộ kh&ocirc;ng ngừng &ldquo;đi&ecirc;n đảo&rdquo;.</p>\r\n<p>Tại thời điểm n&agrave;y, thiết kế c&oacute; th&ecirc;m sự xuất hiện của logo &ldquo;Swoosh&rdquo; in nghi&ecirc;ng đặc trưng. Đến nay, d&ugrave; đ&atilde; trải qua hơn 30 năm cạnh tranh tr&ecirc;n thị trường nhưng Nike Air Force 1 vẫn rất thịnh h&agrave;nh v&agrave; được ưa chuộng, thể hiện kh&ocirc;ng hề k&eacute;m cạnh so với những phi&ecirc;n bản kh&aacute;c.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://blog.leflair.com/cac-hang-giay-noi-tieng/\">Top C&aacute;c H&atilde;ng Gi&agrave;y Nổi Tiếng Được Ưa Chuộng Nhất Tr&ecirc;n Thế Giới</a></p>\r\n<div class=\"wp-block-image\"><img class=\"wp-image-10834 thb-pinned lazyautosizes lazyloaded\" src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2.jpg\" alt=\"Những cập nhật nổi bật tr&ecirc;n phi&ecirc;n bản Nike Air Force 1 \" width=\"650\" height=\"650\" data-src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2.jpg\" data-sizes=\"auto\" data-srcset=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2.jpg 650w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-300x300.jpg 300w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-150x150.jpg 150w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-180x180.jpg 180w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-90x90.jpg 90w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-370x370.jpg 370w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-20x20.jpg 20w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-185x185.jpg 185w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-400x400.jpg 400w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-2-48x48.jpg 48w\" /><em>Những cập nhật nổi bật tr&ecirc;n phi&ecirc;n bản Nike Air Force 1 (Nguồn: Internet)</em><a class=\"thb-pin-it thb-pin-it-ready\" href=\"https://pinterest.com/pin/create/bookmarklet/?url=https%3A%2F%2Fblog.leflair.com%2Fcac-mau-giay-nike%2F&amp;media=https%3A%2F%2Fblog.leflair.com%2Fwp-content%2Fuploads%2F2022%2F05%2Fcac-mau-giay-nike-2.jpg&amp;description=Nh%E1%BB%AFng%20c%E1%BA%ADp%20nh%E1%BA%ADt%20n%E1%BB%95i%20b%E1%BA%ADt%20tr%C3%AAn%20phi%C3%AAn%20b%E1%BA%A3n%20Nike%20Air%20Force%201%20&amp;is_video=false\" target=\"_blank\"><em class=\"thb-icon-pinterest\"></em>PIN IT</a></div>\r\n<h3 id=\"h-3-nike-zoom\"><span id=\"3_Nike_Zoom\">3.&nbsp;<span>Nike Zoom</span></span></h3>\r\n<p>Trong bộ sưu tập&nbsp;<strong>c&aacute;c mẫu gi&agrave;y Nike</strong>, đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; phi&ecirc;n bản sử dụng c&ocirc;ng nghệ đệm gi&agrave;y chạy bộ đỉnh cao v&agrave; th&agrave;nh c&ocirc;ng nhất. Thiết kế cực nhẹ, c&oacute; độ bền v&agrave; t&iacute;nh đ&agrave;n hồi cao, đem lại khả năng nảy ho&agrave;n hảo cho mỗi bước ch&acirc;n khi chạy. Ngo&agrave;i ra, kiểu d&aacute;ng của Nike Zoom kh&aacute; đơn giản, gồm phần phối lưới ph&iacute;a sau v&agrave; nhiều r&atilde;nh nhỏ để tạo n&ecirc;n sự chắc chắn, đồng thời giảm ma s&aacute;t khi di chuyển đường d&agrave;i. Phần mũi gi&agrave;y được cải tiến để tạo n&ecirc;n form chuẩn đẹp nhưng vẫn kh&ocirc;ng l&agrave;m mất đi sự &ecirc;m &aacute;i khi mang.</p>\r\n<div class=\"wp-block-image\"><img class=\"wp-image-10833 thb-pinned lazyautosizes lazyloaded\" src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3.jpg\" alt=\"Thiết kế độc đ&aacute;o v&agrave; lạ lẫm tr&ecirc;n Nike Zoom\" width=\"650\" height=\"381\" data-src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3.jpg\" data-sizes=\"auto\" data-srcset=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3.jpg 650w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-300x176.jpg 300w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-370x217.jpg 370w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-20x12.jpg 20w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-185x108.jpg 185w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-400x234.jpg 400w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-3-82x48.jpg 82w\" /><em>Thiết kế độc đ&aacute;o v&agrave; mới lạ tr&ecirc;n Nike Zoom (Nguồn: Internet)</em><a class=\"thb-pin-it thb-pin-it-ready\" href=\"https://pinterest.com/pin/create/bookmarklet/?url=https%3A%2F%2Fblog.leflair.com%2Fcac-mau-giay-nike%2F&amp;media=https%3A%2F%2Fblog.leflair.com%2Fwp-content%2Fuploads%2F2022%2F05%2Fcac-mau-giay-nike-3.jpg&amp;description=Thi%E1%BA%BFt%20k%E1%BA%BF%20%C4%91%E1%BB%99c%20%C4%91%C3%A1o%20v%C3%A0%20l%E1%BA%A1%20l%E1%BA%ABm%20tr%C3%AAn%20Nike%20Zoom&amp;is_video=false\" target=\"_blank\"><em class=\"thb-icon-pinterest\"></em>PIN IT</a></div>\r\n<h3 id=\"h-4-nike-air-presto\"><span id=\"4_Nike_Air_Presto\">4.&nbsp;<span>Nike Air Presto</span></span></h3>\r\n<p>&Yacute; tưởng h&igrave;nh th&agrave;nh Nike Air Presto khởi ph&aacute;t từ năm 1996 bởi Tobie Hartfield, dựa tr&ecirc;n bản nguy&ecirc;n mẫu đầu ti&ecirc;n. Đến nay, thiết kế đ&atilde; trải qua hơn 20 năm cải tiến v&agrave; ph&aacute;t triển về cả chất liệu, kiểu d&aacute;ng cũng như phong c&aacute;ch pha trộn nhiều gam m&agrave;u sắc kh&aacute;c nhau.</p>\r\n<p>Tuy nhi&ecirc;n, t&iacute;nh tới thời điểm hiện tại, phi&ecirc;n bản n&agrave;y vẫn giữ nguy&ecirc;n h&igrave;nh d&aacute;ng v&agrave; thiết kế gốc ban đầu. Đối với những người h&acirc;m mộ, Nike Air Presto vẫn được đ&aacute;nh gi&aacute; l&agrave; một trong&nbsp;<strong>c&aacute;c mẫu gi&agrave;y Nike</strong>&nbsp;đẹp v&agrave; c&oacute; lượt b&aacute;n ra nhiều nhất tr&ecirc;n thị trường.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://blog.leflair.com/thuong-hieu-giay-the-thao-noi-tieng/\">Top C&aacute;c Thương Hiệu Gi&agrave;y Thể Thao Nổi Tiếng Nhất Thế Giới</a></p>\r\n<div class=\"wp-block-image\"><img class=\"wp-image-10832 thb-pinned lazyautosizes lazyloaded\" src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4.jpg\" alt=\"Mẫu gi&agrave;y Nike Air Presto thu h&uacute;t giới h&acirc;m mộ bởi cả kiểu d&aacute;ng v&agrave; chất lượng \" width=\"650\" height=\"456\" data-src=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4.jpg\" data-sizes=\"auto\" data-srcset=\"https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4.jpg 650w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-300x210.jpg 300w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-370x260.jpg 370w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-185x130.jpg 185w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-20x14.jpg 20w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-400x281.jpg 400w, https://blog.leflair.com/wp-content/uploads/2022/05/cac-mau-giay-nike-4-68x48.jpg 68w\" /></div>', 3, 'ecf11e08a9.png', 1),
(7, 'Cac hang giay the thao duoc yeu thich nhat nam 2022', '<p>tom tat ve cac hang giay ua thich</p>', '<div class=\"entry-content\">\r\n<h3><span>1. Biti&rsquo;s (1982)</span></h3>\r\n<p>Biti&rsquo;s ra đời năm 1982, v&agrave; nổi l&ecirc;n như một người anh, đi đầu trong c&aacute;c h&atilde;ng gi&agrave;y thể thao Việt Nam. Với c&acirc;u slgan đ&atilde; từng rất nổi tiếng &ldquo;Biti&rsquo;s n&acirc;ng niu b&agrave;n ch&acirc;n Việt&rdquo;. N&oacute; l&agrave; từng l&agrave; thương hiệu nổi tiếng lưng lẫy ở những thập ni&ecirc;n 80, 90. Với những biến động chủa thị trường v&agrave; bối cảnh Việt Nam l&uacute;c bấy giờ, c&aacute;c thương hiệu&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sneaker\">sneaker</a>&nbsp;nước ngo&agrave;i đang tiến dần v&agrave;o trong nước. Điều đ&oacute; đ&atilde; l&agrave;m Biti&rsquo;s mất dần vị thế.</p>\r\n<p>Kh&ocirc;ng v&igrave; thế m&agrave; đầu h&agrave;ng, trong v&ograve;ng 3 năm nay một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam n&agrave;y đ&atilde; trở lại. Biti&rsquo;s đ&atilde; lại nổi l&ecirc;n &ldquo;như một cơn s&oacute;ng&rdquo; v&agrave; tạo n&ecirc;n một c&uacute; lội ngược d&ograve;ng trong l&agrave;ng gi&agrave;y thể thao thế giới n&oacute;i chung v&agrave; Việt Nam n&oacute;i ri&ecirc;ng. Với nhiều h&igrave;nh thức v&agrave; chiến lược quảng c&aacute;o: Từ MV &ldquo;Lạc Tr&ocirc;i&rdquo; của Sơn T&ugrave;ng &ndash; MTP, cho đến &ldquo;Đi để trở về&rdquo; của Soobin Ho&agrave;ng Sơn. Chưa hết, h&atilde;ng c&ograve;n thực hiện nhiều chiến dịch PR th&ocirc;ng minh, đ&aacute;nh v&agrave;o l&ograve;ng y&ecirc;u mến của của giới trẻ Việt, tạo sự thu h&uacute;t kh&ocirc;ng hề nhỏ tới kh&aacute;ch h&agrave;ng tiềm năng.</p>\r\n<p>Giờ đ&acirc;y, c&aacute;i t&ecirc;n Biti&rsquo;s Hunter đ&atilde; trở th&agrave;nh một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam &ldquo;nổi đ&igrave;nh nổi đ&aacute;m&rdquo; trong l&agrave;ng gi&agrave;y thể thao Việt Nam. Với thiết kế mạnh mẽ, c&aacute; t&iacute;nh, đồng thời tổng hợp nhiều ưu điểm của c&aacute;c thương hiệu gi&agrave;y lớn: Độ đ&agrave;n hồi, trọng lượng nhẹ gi&uacute;p đ&ocirc;i ch&acirc;n &ecirc;m v&agrave; c&oacute; thể vận động cả ng&agrave;y d&agrave;i. Một đ&ocirc;i gi&agrave;y Biti&rsquo;s cũng rất dễ mix c&ugrave;ng c&aacute;c bộ đồ&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fashion\">thời trang</a>, bạn cũng n&ecirc;n thử mua v&agrave; trải nghiệm nh&eacute;.</p>\r\n<p>Tham khảo:&nbsp;<a href=\"http://fsport247.com/tin-tuc/nhung-doi-giay-sneaker-khong-bao-gio-loi-mot-1804.html\">Những đ&ocirc;i sneaker kh&ocirc;ng bao giờ lỗi mốt&nbsp;được y&ecirc;u th&iacute;ch nhất</a>.</p>\r\n<div><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-1.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" />Biti&rsquo;s Hunter Street</div>\r\n<div><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-2.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" />Mẫu gi&agrave;y ca sĩ Sơn T&ugrave;ng &ndash; MTP sử dụng trong MV &ldquo;Lạc Tr&ocirc;i&rdquo;</div>\r\n<h3><span>2. Ananas (2012)</span></h3>\r\n<p>Ananas được th&agrave;nh lập năm 2012 cũng l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam. D&ugrave; l&agrave; gương mặt mới nhưng đ&atilde; nhanh ch&oacute;ng chinh phục được tr&aacute;i tim của những người y&ecirc;u gi&agrave;y thể thao Việt. Việc &aacute;p dụng v&agrave; kế thừa c&ocirc;ng nghệ của c&aacute;c &ocirc;ng lớn như: Puma, Keds, Burberry hay Reebok, đ&atilde; cho những đ&ocirc;i gi&agrave;y tại Ananas một chất lượng kh&ocirc;ng hề thua k&eacute;m so với những thương hiệu lớn tại nước ngo&agrave;i.</p>\r\n<p>Kh&ocirc;ng chỉ ri&ecirc;ng c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam. Những mẫu gi&agrave;y thể thao của Ananas đ&atilde; chinh phục t&iacute;n đồ thời rang bởi chất liệu vải da lộn, v&agrave; phong c&aacute;ch cổ điển đến hiện đại. Nổi bật hơn v&agrave; c&aacute;ch phối m&agrave;u lạ mắt của đ&ocirc;i sneaker l&agrave;m n&oacute; rất dễ phối với trang phục, m&agrave; kh&ocirc;ng hề qu&aacute; m&agrave;u m&egrave;. Với thiết kế trẻ trung v&agrave; năng động, gi&aacute; th&agrave;nh phải chăng, chất lượng bền đẹp đ&atilde; gi&uacute;p Ananas c&oacute; thể đứng vững tr&ecirc;n thị trường sneaker đang cạnh tranh khốc liệt.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://fsport247.com/tin-tuc/doi-sneaker-trang-dep-nhat-2019-1795.html\">Những đ&ocirc;i sneaker trắng đẹp nhất 2019 b&aacute;n chạy nhất</a>.</p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-3.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-5.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-4.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<h3><span>3. RieNevan (2012)</span></h3>\r\n<p>RieNevan cũng được th&agrave;nh lập năm 2012, v&agrave; được s&aacute;ng lập bởi &Ocirc;ng Nguyễn Ngọc Tiến tại Đ&agrave; Nẵng. Một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam, v&agrave;o thời gian đầu với t&agrave;i ch&iacute;nh v&agrave; nguồn nh&acirc;n lực hạn chế, sau khi vượt qua kh&oacute; khăn, đến nay RieNevan đ&atilde; c&oacute; chỗ đứng trong l&ograve;ng người Việt v&agrave; tr&ecirc;n thị trường gi&agrave;y thể thao nội địa Việt Nam.</p>\r\n<p>C&aacute;c mẫu gi&agrave;y của RieNevan thường mang phong c&aacute;ch đường phố, vừa tự do, vừa ph&oacute;ng kho&aacute;ng mang đậm phong c&aacute;ch gi&agrave;y thể thao với những họa tiết văn h&oacute;a như: Trống đồng Đ&ocirc;ng Sơn, chim mu&ocirc;ng&hellip; Những đ&ocirc;i gi&agrave;y của RieNevan thường được c&aacute;c bạn trẻ sử dụng để chơi bộ m&ocirc;n v&aacute;n trượt, hay đơn giản l&agrave; mix c&ugrave;ng những Set đồ thời trang để vừa c&oacute; thể đi chơi, đi học, hay đi l&agrave;m. RieNevan rất x&uacute;ng đ&aacute;ng c&oacute; mặt trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam nổi tiếng.</p>\r\n<p>Tham khảo:&nbsp;<a href=\"https://fsport247.com/tin-tuc/giay-schecker-1825.html\">Những đ&ocirc;i gi&agrave;y sneaker v&agrave; c&aacute;ch phối đồ hợp thời trang</a>.</p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-6.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-7.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<h3><span>4. MỘT (2018)</span></h3>\r\n<p>Kh&aacute;c với người anh lớn Biti&rsquo;s, MỘT l&agrave; em &uacute;t trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam. MỘT được th&agrave;nh lập năm 2018 tại S&agrave;i G&ograve;n v&agrave; nhanh ch&oacute;ng thu h&uacute;t được nhiều Fan y&ecirc;u gi&agrave;y thể thao, đặc biệt l&agrave; giới trẻ bởi tiết kế đơn giản, tinh tế v&agrave; kh&ocirc;ng thua k&eacute;m bất cứ thương hiệu n&agrave;o về chất lượng.</p>\r\n<p>C&aacute;c sản phẩm của MỘT thường mang một n&eacute;t đặc trưng ri&ecirc;ng, với Phom gi&agrave;y đơn giản, trơn v&agrave; &ocirc;m, mang đậm t&iacute;nh trải nghiệm v&agrave; h&agrave;m chứa một th&ocirc;ng điệp g&igrave; đ&oacute; rất ri&ecirc;ng. Quan s&aacute;t kĩ những th&ocirc;ng điệp đ&oacute;, bạn c&oacute; thể thấy những họa tiết kh&eacute;o l&eacute;o, mang đậm văn ho&aacute; Việt như: Những m&aacute;i ng&oacute;i của Hội An, hay khu vực bờ biển miền Trung Việt Nam&hellip; Hiện nay MỘT tập trung chủ yếu v&agrave;o c&aacute;c mẫu gi&agrave;y may, bền v&agrave; thoải m&aacute;i với những đ&ocirc;i sneaker bằng da, vải kh&ocirc;ng họa tiết, đơn giản. MỘT xứng đ&aacute;ng c&oacute; mặt trong danh d&aacute;ch c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam, gi&uacute;p thương hiệu Việt ng&agrave;y c&agrave;ng ph&aacute;t Triển.</p>\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://fsport247.com/tin-tuc/giay-the-thao-thoi-trang-nam-2020-1826.html\">Những mẫu gi&agrave;y thể thao thời trang năm 2020 Hot nhất</a>.</p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-8.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<h3><span>5. COX Shoes&nbsp;(1990)</span></h3>\r\n<p>COX Shoes được th&agrave;nh lập năm 1990, l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam chuy&ecirc;n xuất khẩu ra nước ngo&agrave;i, v&igrave; thế m&agrave; bạn o&agrave;n to&agrave;n c&oacute; thể tin tưởng v&agrave;o chất lượng sản phẩm của thương hiệu n&agrave;y. Điều đặc biệt của COX Shoes l&agrave; gi&aacute; cả của mỗi sản phẩm, bạn chỉ cần trả khoảng 300.000 VNĐ l&agrave; đ&atilde; c&oacute; ngay trong tay một đ&ocirc;i gi&agrave;y chất lượng &ldquo;chuẩn EU&rdquo; rồi. Thiết kế của COX Shoes kh&aacute; quen thuộc, bạn c&oacute; thể thấy đ&acirc;u đ&oacute; b&oacute;ng d&aacute;ng của c&aacute;c &ocirc;ng lớn như: MC QUEEN hay Vans&hellip; Trong đ&ocirc;i gi&agrave;y n&agrave;y đ&uacute;ng kh&ocirc;ng?</p>\r\n<p>Về m&agrave;u sắc của đ&ocirc;i gi&agrave;y cũng kh&aacute; đặc biệt, với những mẫu gi&agrave;y thể thao, gi&agrave;y da. C&ugrave;ng t&ocirc;ng m&agrave;u đơn giản, dễ d&agrave;ng phối với c&aacute;c Set đồ kh&aacute;c nhau. COX Shoes nổi l&ecirc;n với phong c&aacute;ch thương hiệu v&agrave; sản phẩm đơn giản m&agrave; kh&ocirc;ng k&eacute;m phần thanh lịch. COX Shoes xứng đ&aacute;ng l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam.</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://fsport247.com/tin-tuc/mac-vest-di-giay-the-thao-1788.html\">Mặc vest đi gi&agrave;y thể thao mang lại phong c&aacute;ch lịch l&atilde;m như thế n&agrave;o?</a></p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-9.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<h3><span>6. MIDAZ (2002)</span></h3>\r\n<p>MIDAZ được th&agrave;nh lập năm 2002, l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao Việt Nam c&oacute; chi nh&aacute;nh trải khắp đất nước, trong đ&oacute; nổi bật v&agrave; lớn nhất phải kể đến: 8 cơ sở tại TP &ndash; HCM, 2 cơ sở ở H&agrave; Nội, c&aacute;c chi nh&aacute;nh ở Nha Trang, B&igrave;nh Dương, Đ&agrave; Nẵng v&agrave; Đồng Nai&hellip;</p>\r\n<p>C&aacute;c mẫu thiết kế của MIDAZ hiện tại kh&ocirc;ng nhiều lắm, tuy nhi&ecirc;n với phong c&aacute;ch ri&ecirc;ng ph&ugrave; hợp với độ tuổi, giới t&iacute;nh kh&aacute;c nhau. Nổi bật hơn l&agrave; những họa tiết được in tr&ecirc;n gi&agrave;y. MIDAZ tập trung hướng đến đối tượng trong nước, n&ecirc;n gi&aacute; th&agrave;nh một sản phẩm kh&aacute; phải chăng, bạn chỉ cần trả 200.000 VNĐ &ndash; 350.000 VNĐ l&agrave; đ&atilde; c&oacute; thể sở hữu mẫu gi&agrave;y hợp thời trang n&agrave;y rồi.</p>\r\n<p><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-10.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" /></p>\r\n<h3><span>7. MORE THAN BASIS (2014)</span></h3>\r\n<p>MORE THAN BASIS được th&agrave;nh lập năm 2014. Ban đầu chỉ đơn thuần l&agrave; một shop chuy&ecirc;n cung cấp gi&agrave;y xuất khẩu. Sau thời gian ổn định, thương hiệu n&agrave;y đ&atilde; c&oacute; cho ri&ecirc;ng m&igrave;nh những thiết kế. MORE THAN BASIS chủ yếu l&agrave; những mẫu sneaker c&oacute; kiểu d&aacute;ng đơn giản, t&ocirc;ng m&agrave;u đơn giản th&iacute;ch hợp mix với nhiều trang phục kh&aacute;c nhau. Đ&acirc;y l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao Việt Nam &ldquo;nội địa&rdquo; với c&aacute;c mẫu thiết kế ng&agrave;y c&agrave;ng đa dạng, thay đổi theo mốt bằng mẫu gi&agrave;y th&ecirc;u, họa tiết, &aacute;nh kim&hellip; hiện đại. Ngo&agrave;i việc sở hữu những mẫu gi&agrave;y sneakers, tại MORE THAN BASIS bạn cũng c&oacute; thể gặp những đ&ocirc;i boots, gi&agrave;y da, gi&agrave;y cao g&oacute;t nam, nữ cực chất v&agrave; hợp thời trang nữa.</p>\r\n<div><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-11.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" />MORE THAN BASIS</div>\r\n<div><img src=\"https://fsport247.com/wp-content/uploads/2021/03/cac-hang-giay-the-thao-viet-nam-12.jpg\" alt=\"c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam\" width=\"800\" height=\"600\" />Gi&agrave;y thể thao MORE THAN BASIS</div>\r\n<h2><span>Li&ecirc;n hệ Shop</span></h2>\r\n<h3><span>Địa chỉ</span></h3>\r\n<p>Địa chỉ: Ng&otilde; 105, Do&atilde;n Kế Thiện, Cầu Giấy, H&agrave; Nội</p>\r\n<p>Website:&nbsp;<span>Fsport247.com</span></p>\r\n<h2><span>Tổng kết</span></h2>\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một trong c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam, trong đ&oacute; c&oacute; những thương hiệu m&agrave; bạn đ&atilde; từng biết như: Biti&rsquo;s&hellip; Hay những thương hiệu mới m&agrave; bạn chưa từng nghe. Tuy nhi&ecirc;n c&aacute;c h&atilde;ng gi&agrave;y &ldquo;nội địa&rdquo; n&agrave;y đ&atilde; g&oacute;p một phần kh&ocirc;ng nhỏ trong việc ph&aacute;t triển về thời trang n&oacute;i chung v&agrave;&nbsp;<a href=\"https://fsport247.com/giay-sneaker-nam-nu.html\"><span>gi&agrave;y Sneaker</span></a>&nbsp;n&oacute;i ri&ecirc;ng. Mời bạn đến với fsport247 để tham khảo th&ecirc;m c&aacute;c mẫu gi&agrave;y thể thao nổi tiếng trong nước cũng như quốc tế.</p>\r\n</div>\r\n<div class=\"entry-meta\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-sm-12 col-md-8\">\r\n<div class=\"entry-meta-bottom\">\r\n<div class=\"post-cats\"><span class=\"category\">Chuy&ecirc;n mục :</span>&nbsp;<a title=\"Sneaker\" href=\"https://fsport247.com/sneaker\">Sneaker</a>,&nbsp;<a title=\"Tin tức\" href=\"https://fsport247.com/tin-tuc\">Tin tức</a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-12 col-sm-12 col-md-4\">\r\n<div class=\"social text-right\">\r\n<div class=\"fb-like fb_iframe_widget\" data-href=\"https://fsport247.com/tin-tuc/cac-hang-giay-the-thao-viet-nam-1833.html\" data-layout=\"button_count\" data-action=\"like\" data-size=\"small\" data-show-faces=\"false\" data-share=\"true\"><span><iframe title=\"fb:like Facebook Social Plugin\" name=\"f2cb93556ce57b4\" src=\"https://www.facebook.com/v11.0/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df7a325d9f4e9e%26domain%3Dfsport247.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Ffsport247.com%252Ff33d2bc298c10a8%26relation%3Dparent.parent&amp;container_width=263&amp;href=https%3A%2F%2Ffsport247.com%2Ftin-tuc%2Fcac-hang-giay-the-thao-viet-nam-1833.html&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;show_faces=false&amp;size=small\" frameborder=\"0\" scrolling=\"no\" width=\"1000px\" height=\"1000px\" data-testid=\"fb:like Facebook Social Plugin\"></iframe></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"post_tag clearfix margin-bottom\">\r\n<div class=\"tag\">Từ kh&oacute;a:&nbsp;<a href=\"https://fsport247.com/tag/cac-hang-giay-the-thao-noi-tieng\" rel=\"tag\">c&aacute;c h&atilde;ng gi&agrave;y thể thao nổi tiếng</a>,<a href=\"https://fsport247.com/tag/cac-hang-giay-the-thao-noi-tieng-o-viet-nam\" rel=\"tag\">c&aacute;c h&atilde;ng gi&agrave;y thể thao nổi tiếng ở việt nam</a>,<a href=\"https://fsport247.com/tag/cac-hang-giay-the-thao-viet-nam\" rel=\"tag\">c&aacute;c h&atilde;ng gi&agrave;y thể thao việt nam</a>,<a href=\"https://fsport247.com/tag/giay-the-thao-noi-tieng\" rel=\"tag\">gi&agrave;y thể thao nổi tiếng</a>,<a href=\"https://fsport247.com/tag/giay-the-thao-noi-tieng-nhat-2020\" rel=\"tag\">gi&agrave;y thể thao nổi tiếng nhất 2020</a></div>\r\n</div>', 3, '8d39209140.jpg', 0),
(8, 'Danh sách các mãu giày chạy bộ của Nike ra mắt trong năm 2023', '<p><span>Một số sản phẩm cua Nike trong danh s&aacute;ch đ&atilde; được b&aacute;n ch&iacute;nh thức, một số sắp ra mắt.</span></p>', '<h3 class=\"wp-block-heading\">Nike Winflo 10</h3>\r\n<p>Winflo, một sản phẩm gi&agrave;y chạy bộ hiệu suất cơ bản của Nike, đ&atilde; ph&aacute;t triển trong nhiều năm nhằm thu h&uacute;t những người mới bắt đầu v&agrave; c&aacute;c tay chạy c&oacute; kinh nghiệm. Đ&acirc;y l&agrave; một đ&ocirc;i gi&agrave;y huấn luyện hiệu suất cao cho để mang mỗi ng&agrave;y.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Winflo-10-1024x616.jpg\"><img class=\"wp-image-4877 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Winflo-10-1024x616.jpg\" alt=\"\" width=\"1024\" height=\"616\" /></a></div>\r\n<p>N&acirc;ng cấp mới: Hộp ng&oacute;n ch&acirc;n rộng hơn phi&ecirc;n bản 9 mang lại sự thoải m&aacute;i v&agrave; thư gi&atilde;n hơn. C&oacute; th&ecirc;m đệm bổ sung cho cổ ch&acirc;n v&agrave; lưỡi.</p>\r\n<p><strong>Trọng lượng</strong>: 10.4oz (296 gr.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $100</p>\r\n<h3 class=\"wp-block-heading\">Nike Pegasus 40</h3>\r\n<p>Pegasus kh&ocirc;ng cần được giới thiệu nhưng ai cũng biết đ&acirc;y l&agrave; sản phẩm ra mắt nh&acirc;n kỷ niệm 40 năm th&agrave;nh lập của thương hiệu n&agrave;y!</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-40-1-2-1024x768.jpg\"><img class=\"wp-image-4878 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-40-1-2-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Dải giữa b&agrave;n ch&acirc;n được thiết kế lại để ph&ugrave; hợp với mọi k&iacute;ch cỡ v&ograve;m ch&acirc;n</li>\r\n<li>Lưới tr&ecirc;n được thiết kế lại để tho&aacute;ng kh&iacute; v&agrave; ph&ugrave; hợp với kiểu d&aacute;ng của gi&agrave;y</li>\r\n<li>Thiết kế ho&agrave;n to&agrave;n mới của lớp l&oacute;t v&agrave; đệm quanh của upper</li>\r\n<li>Bọt Nike React trong to&agrave;n bộ đế giữa, hai bộ phận Nike Zoom Air ở g&oacute;t ch&acirc;n v&agrave; b&agrave;n ch&acirc;n trước</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 10.1oz (288 gr.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $130</p>\r\n<h3 class=\"wp-block-heading\">Gi&agrave;y Nike Vomero 17</h3>\r\n<p>Vomero l&agrave; sản phẩm gi&agrave;y đệm cao cấp của Nike d&agrave;nh cho những chặng đường d&agrave;i.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Vomero-17-1024x768.webp\"><img class=\"wp-image-4879 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Vomero-17-1024x768.webp\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Upper thiết kế lại</li>\r\n<li>Lưới của upper được thiết kế lại để tho&aacute;ng kh&iacute; v&agrave; ph&ugrave; hợp hơn</li>\r\n<li>Phần đế c&oacute; thiết kế ho&agrave;n to&agrave;n mới: Zoom Air bị loại bỏ, đế giữa l&agrave; ZoomX upper v&agrave; Cushlon 3.0 ở dưới c&ugrave;ng</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 10.6oz (300g.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $160</p>\r\n<h3 class=\"wp-block-heading\">Nike Pegasus Turbo Next Nature</h3>\r\n<p>Pegasus Turbo l&agrave; gi&agrave;y chạy hiệu suất h&agrave;ng ng&agrave;y của Nike, d&agrave;nh cho luyện tập nhanh v&agrave; được l&agrave;m từ &iacute;t nhất 50% vật liệu t&aacute;i chế.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-Turbo-Next-Nature-1024x768.jpg\"><img class=\"wp-image-4880 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-Turbo-Next-Nature-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Đế giữa ZoomX với thiết kế rocker được thiết kế để cải thiện ba giai đoạn bước chạy của người chạy.&nbsp;</li>\r\n<li>Upper Flyknit&nbsp;</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 9.6oz (272 gr.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $150</p>\r\n<h3 class=\"wp-block-heading\">Nike Structure 25</h3>\r\n<p>Structure 25 l&agrave; một đ&ocirc;i gi&agrave;y chạy ổn định, thoải m&aacute;i để luyện tập đường d&agrave;i.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Structure-25-1024x574.jpg\"><img class=\"wp-image-4881 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Structure-25-1024x574.jpg\" alt=\"\" width=\"1024\" height=\"574\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Lưới đơn upper để tăng khả năng tho&aacute;ng kh&iacute;</li>\r\n<li>Khả năng hỗ trợ v&ograve;m được cải thiện</li>\r\n<li>Cushlon 3.0</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 11.2oz (322 gr.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $130</p>\r\n<h3 class=\"wp-block-heading\">Nike React Infinity Run 3</h3>\r\n<p>Nike React Infinity Run 3 l&agrave; một đ&ocirc;i gi&agrave;y chạy đường d&agrave;i được hỗ trợ bởi đệm.&nbsp;</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-React-Infinity-Run-3-1024x768.jpg\"><img class=\"wp-image-4882 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-React-Infinity-Run-3-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Upper được thiết kế lại với c&ocirc;ng nghệ Flywire t&iacute;ch hợp để hỗ trợ th&ocirc;ng qua phần giữa b&agrave;n ch&acirc;n&nbsp;</li>\r\n<li>Đế giữa Nike React c&oacute; thiết kế rocker với đ&aacute;y rộng hơn để cải thiện độ ổn định&nbsp;</li>\r\n<li>Đệm rất cao ở đế giữa để &aacute;p s&aacute;t b&agrave;n ch&acirc;n&nbsp;</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 11oz (317 gr.)<br /><strong>Drop</strong>: 9mm<br /><strong>Gi&aacute;</strong>: $160</p>\r\n<h3 class=\"wp-block-heading\">Nike Invincible&nbsp;3</h3>\r\n<p>&nbsp;Nike Invincible Run 3 được thiết kế với đệm tối đa phục vụ cho những đường chạy d&agrave;i.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Invincible-3-1024x719.jpg\"><img class=\"wp-image-4883 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Invincible-3-1024x719.jpg\" alt=\"\" width=\"1024\" height=\"719\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Upper Flyknit&nbsp;</li>\r\n<li>Đế giữa sử dụng bọt Nike ZoomX với thiết kế như một rocker</li>\r\n<li>Upper thiết kế mới với b&agrave;n ch&acirc;n trước đặc biệt rộng</li>\r\n</ul>\r\n<p><strong>Trọng lượng&nbsp;</strong>: 11oz (310 gr.)<br /><strong>Drop</strong>: 9mm<br /><strong>Gi&aacute;&nbsp;</strong>: $180</p>\r\n<h2 class=\"wp-block-heading\">Những đ&ocirc;i gi&agrave;y đua của Nike trong năm 2023</h2>\r\n<h3 class=\"wp-block-heading\">Nike Alphafly 2</h3>\r\n<p>Alphafly l&agrave; tay đua marathon h&agrave;ng đầu của Nike.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Alphafly-2-1024x768.jpg\"><img class=\"wp-image-4884 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Alphafly-2-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Đế giữa ZoomX : bọt được th&ecirc;m v&agrave;o b&ecirc;n dưới c&aacute;c miếng đệm Air Zoom để chuyển tiếp v&agrave; ho&agrave;n trả năng lượng tốt hơn</li>\r\n<li>Atomknit 2.0 &ndash; phi&ecirc;n bản si&ecirc;u nhẹ của Flyknit</li>\r\n<li>Tăng chiều rộng g&oacute;t ch&acirc;n để cải thiện sự ổn định v&agrave; chuyển động mượt m&agrave;</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 8.8oz (249 gr.)<br /><strong>Drop</strong>: 8mm<br /><strong>Gi&aacute;</strong>: $275</p>\r\n<h3 class=\"wp-block-heading\">Nike Vaporfly 3</h3>\r\n<p>Một si&ecirc;u gi&agrave;y đ&atilde; trở lại với phi&ecirc;n bản thứ 3. Một tay đua c&oacute; thể vượt qua mọi khoảng c&aacute;ch.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Vaporfly-3-1024x768.jpg\"><img class=\"wp-image-4885 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Vaporfly-3-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Đế giữa ZoomX : thiết kế tối ưu nhằm ho&agrave;n trả nhiều năng lượng hơn</li>\r\n<li>Upper Flyknit: hỗ trợ xung quanh phần giữa b&agrave;n ch&acirc;n v&agrave; tối ưu độ tho&aacute;ng kh&iacute; cho hộp ng&oacute;n ch&acirc;n</li>\r\n<li>Cấu tr&uacute;c của đế giữa được thiết kế lại để giảm trọng lượng v&agrave; tăng độ ổn định</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 7oz (200g.)<br /><strong>Drop</strong>: 8mm<br /><strong>Gi&aacute;</strong>: $250</p>\r\n<h3 class=\"wp-block-heading\">Nike Streakfly</h3>\r\n<p>Gi&agrave;y đua si&ecirc;u nhẹ d&agrave;nh cho c&aacute;c cuộc đua 5k v&agrave; 10k.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Streakfly.jpg\"><img class=\"wp-image-4886 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Streakfly.jpg\" alt=\"\" width=\"957\" height=\"470\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Đế giữa ZoomX : trải nghiệm si&ecirc;u phản hồi</li>\r\n<li>Tấm l&oacute;t đế giữa Pebax : tấm l&oacute;t kh&ocirc;ng chứa sợi carbon để c&acirc;n bằng đệm, khả năng phản hồi v&agrave; hỗ trợ</li>\r\n<li>Đế ngo&agrave;i: thiết kế cao su cải tiến cung cấp lực k&eacute;o trong mọi điều kiện, bề mặt v&agrave; c&aacute;c bo g&oacute;c hẹp</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 6.5oz (185 gr.)<br /><strong>Drop</strong>: 6mm<br /><strong>Gi&aacute;</strong>: $160</p>\r\n<h3 class=\"wp-block-heading\">Nike Zoom Fly 5</h3>\r\n<p>Nike Zoom Fly l&agrave; một đ&ocirc;i gi&agrave;y kết hợp tập luyện v&agrave; đua vừa nhanh vừa linh hoạt, thu hẹp khoảng c&aacute;ch giữa gi&agrave;y tập luyện v&agrave; gi&agrave;y đua chỉ bằng một tấm sợi carbon.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Zoom-Fly-5-1024x768.jpg\"><img class=\"wp-image-4887 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Zoom-Fly-5-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Đế giữa ZoomX t&aacute;i chế : trải nghiệm đệm v&agrave; độ nảy ấn tượng, l&agrave;m từ vật liệu ZoomX t&aacute;i chế&nbsp;</li>\r\n<li>Upper ho&agrave;n to&agrave;n mới</li>\r\n<li>Tấm l&oacute;t sợi carbon gi&uacute;p chuyển tiếp nhanh ch&oacute;ng, mượt m&agrave; từ g&oacute;t ch&acirc;n đến ng&oacute;n ch&acirc;n.</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 11oz (314 gr.)<br /><strong>Drop</strong>: 10 mm<br /><strong>Gi&aacute;</strong>: $160</p>\r\n<h2 class=\"wp-block-heading\">Những đ&ocirc;i gi&agrave;y chạy trail của Nike trong năm 2023</h2>\r\n<h3 class=\"wp-block-heading\">Nike Juniper Trail 2</h3>\r\n<p>Juniper Trail l&agrave; sản phẩm gi&agrave;y chạy trail của Nike d&agrave;nh cho người mới bắt đầu. Upper bền bỉ kết hợp với lực k&eacute;o tốt cho ph&eacute;p bạn dễ d&agrave;ng di chuyển từ road sang trail.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Juniper-Trail-2-1024x515.jpg\"><img class=\"wp-image-4888 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Juniper-Trail-2-1024x515.jpg\" alt=\"\" width=\"1024\" height=\"515\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Thiết kế upper: kết hợp hai chất liệu lưới v&agrave; da tổng hợp</li>\r\n<li>D&acirc;y k&eacute;o ở b&agrave;n ch&acirc;n được t&iacute;ch hợp với d&acirc;y buộc</li>\r\n<li>Đế ngo&agrave;i bằng cao su với c&aacute;c vấu thu&ocirc;n nhọn để tạo lực k&eacute;o cả khi l&ecirc;n dốc v&agrave; xuống dốc</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 11.1oz (318 gr.)<br /><strong>Drop</strong>: 9.5mm<br /><strong>Gi&aacute;&nbsp;</strong>: $85</p>\r\n<h3 class=\"wp-block-heading\">Nike Pegasus 4</h3>\r\n<p>Pegasus Trail lấy thiết kế v&agrave; c&ocirc;ng nghệ từ phi&ecirc;n bản road đồng thời bổ sung th&ecirc;m c&aacute;c t&iacute;nh năng bền bỉ để sử dụng tr&ecirc;n địa h&igrave;nh trail..</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-4-1024x768.jpg\"><img class=\"wp-image-4889 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-4-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Upper lưới kỹ thuật</li>\r\n<li>D&acirc;y k&eacute;o với Flywire để gi&uacute;p kh&oacute;a ch&acirc;n tốt hơn</li>\r\n<li>Đế ngo&agrave;i cao su hoạt động tốt cả cho cả road v&agrave; trail</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 10.2oz (289g.)<br /><strong>Drop</strong>: 9.5mm<br /><strong>Gi&aacute;&nbsp;</strong>: $140</p>\r\n<h3 class=\"wp-block-heading\">Nike Pegasus Trail 4 GTX</h3>\r\n<p>Pegasus Trail 4 với upper Gore-Tex l&agrave; gi&agrave;y chạy trail đa năng trong thời tiết ẩm ướt v&agrave; cũng c&oacute; thể sử dụng tr&ecirc;n để chạy road trong điều kiện n&agrave;y.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-Trail-4-GTX-1024x538.jpg\"><img class=\"wp-image-4890 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Pegasus-Trail-4-GTX-1024x538.jpg\" alt=\"\" width=\"1024\" height=\"538\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Upper Gore-Tex bao quanh mắt c&aacute; ch&acirc;n để chắn c&aacute;c mảnh vụn từ b&ecirc;n ngo&agrave;i&nbsp;</li>\r\n<li>Thiết kế đa địa h&igrave;nh: đế ngo&agrave;i cao su được thiết kế để sử dụng trong mọi địa h&igrave;nh dưới mọi thời tiết</li>\r\n<li>Bọt React cho trải nghiệm &ecirc;m &aacute;i v&agrave; nhạy b&eacute;n</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 10.2oz (289g.)<br /><strong>Drop</strong>: 9.5mm<br /><strong>Gi&aacute;&nbsp;</strong>: $160</p>\r\n<h3 class=\"wp-block-heading\">Nike Zegama</h3>\r\n<p>Nike Zegama được thiết kế cho c&aacute;c địa h&igrave;nh kỹ thuật nhất, nhờ v&agrave;o c&aacute;c giải ph&aacute;p thiết kế độ b&aacute;m, ổn định v&agrave; bền vững cụ thể.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Zegama-1024x768.jpg\"><img class=\"wp-image-4891 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Zegama-1024x768.jpg\" alt=\"\" width=\"1024\" height=\"768\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Bọt ZoomX : đế giữa xếp cao để đệm v&agrave; giữ cảm gi&aacute;c thoải m&aacute;i trong thời gian d&agrave;i</li>\r\n<li>Độ b&aacute;m ổn định: c&aacute;c vấu được thiết kế cho c&aacute;c địa h&igrave;nh kỹ thuật</li>\r\n<li>Bao mắt c&aacute; ch&acirc;n để ngăn c&aacute;c mảnh vụn x&acirc;m nhập v&agrave;o gi&agrave;y</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 11oz (318 gr.)<br /><strong>Drop</strong>: 4mm<br /><strong>Gi&aacute;</strong>: $160</p>\r\n<h3 class=\"wp-block-heading\">Nike Wildhorse 8</h3>\r\n<p>Wildhorse l&agrave; một đ&ocirc;i gi&agrave;y chạy trail kỹ thuật v&agrave; bảo vệ cho đ&ocirc;i ch&acirc;n trước c&aacute;c địa h&igrave;nh nguy hiểm.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Wildhorse-8-1024x616.jpg\"><img class=\"wp-image-4892 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Wildhorse-8-1024x616.jpg\" alt=\"\" width=\"1024\" height=\"616\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Bọt React: cảm gi&aacute;c mềm v&agrave; &ecirc;m &aacute;i&nbsp;</li>\r\n<li>Khung giữa ch&acirc;n để giữ cho đ&ocirc;i gi&agrave;y vừa vặn v&agrave; an to&agrave;n&nbsp;</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 12.2oz (348 gr.)<br /><strong>Drop</strong>: 9mm<br /><strong>Gi&aacute;</strong>: $130</p>\r\n<h3 class=\"wp-block-heading\">Nike Terra Kiger 9</h3>\r\n<p>Terra Kiger l&agrave; đ&ocirc;i gi&agrave;y chạy trail của Nike được thiết kế d&agrave;nh cho tốc độ. N&oacute; thon gọn v&agrave; tối giản với cảm gi&aacute;c mặt đất tốt.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Terra-Kiger-9-1024x616.jpg\"><img class=\"wp-image-4893 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Terra-Kiger-9-1024x616.jpg\" alt=\"\" width=\"1024\" height=\"616\" /></a></div>\r\n<p><strong>N&acirc;ng cấp mới</strong>:</p>\r\n<ul>\r\n<li>Upper lưới kỹ thuật tr&ecirc;n để giảm trọng lượng</li>\r\n<li>Khung giữa b&agrave;n ch&acirc;n để giữ cho đ&ocirc;i gi&agrave;y vừa vặn v&agrave; an to&agrave;n</li>\r\n<li>Bọt React &ndash; đế giữa ho&agrave;n to&agrave;n bằng bọt React v&agrave; giảm g&oacute;t ch&acirc;n thấp cho cảm gi&aacute;c gần đất hơn.&nbsp;</li>\r\n</ul>\r\n<p><strong>Trọng lượng</strong>: 10.3oz (292 gr.)<br /><strong>Drop</strong>: 4.5mm<br /><strong>Gi&aacute;</strong>: $140</p>\r\n<h2 class=\"wp-block-heading\">Những đ&ocirc;i gi&agrave;y đinh của Nike trong năm 2023</h2>\r\n<h3 class=\"wp-block-heading\">Nike Maxfly</h3>\r\n<p>Đ&acirc;y l&agrave; gi&agrave;y chạy nhanh cao cấp d&agrave;nh cho c&aacute;c khoảng c&aacute;ch từ 100m đến 400m.</p>\r\n<p>N&oacute; c&oacute; c&aacute;c khoang kh&iacute; k&eacute;p dưới đinh v&agrave; một tấm carbon c&oacute; chiều d&agrave;i tối đa.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Maxfly-1024x683.webp\"><img class=\"wp-image-4894 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Maxfly-1024x683.webp\" alt=\"\" width=\"1024\" height=\"683\" /></a></div>\r\n<p><strong>Trọng lượng</strong>: 161 gr<br /><strong>Gi&aacute; b&aacute;n&nbsp;</strong>: $180</p>\r\n<h3 class=\"wp-block-heading\">Gi&agrave;y Nike Superfly Elite 2</h3>\r\n<p>SuperFly Elite 2 l&agrave; gi&agrave;y chạy nhanh d&agrave;nh cho c&aacute;c vận động vi&ecirc;n chạy nước r&uacute;t v&agrave; vượt r&agrave;o trong c&aacute;c khoảng c&aacute;ch từ 100 đến 400 m&eacute;t.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Superfly-Elite-2-1024x576.webp\"><img class=\"wp-image-4895 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Superfly-Elite-2-1024x576.webp\" alt=\"\" width=\"1024\" height=\"576\" /></a></div>\r\n<p><strong>Trọng lượng</strong>: 147 gr<br /><strong>Gi&aacute; b&aacute;n</strong>: $150</p>\r\n<h3 class=\"wp-block-heading\">Nike Victory</h3>\r\n<p>Victory l&agrave; một đ&ocirc;i gi&agrave;y đinh chạy cự ly trung b&igrave;nh với khoảng c&aacute;ch từ 800 đến 5.000 m&eacute;t.</p>\r\n<p><strong>Trọng lượng</strong>: 126 gr<br /><strong>Gi&aacute; b&aacute;n</strong>: $180</p>\r\n<h3 class=\"wp-block-heading\">Nike Dragonfly</h3>\r\n<p>Nike Dragonfly l&agrave; gi&agrave;y đinh chạy đường d&agrave;i cho c&aacute;c cuộc đua từ 1.500 đến 10.000 m&eacute;t. N&oacute; c&oacute; bọt ZoomX để phản hồi nhanh v&agrave; một tấm Pebax để đẩy bạn về ph&iacute;a trước.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Dragonfly.webp\"><img class=\"wp-image-4896 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-Dragonfly.webp\" alt=\"\" width=\"720\" height=\"480\" /></a></div>\r\n<p><strong>Trọng lượng</strong>: 124g<br /><strong>Gi&aacute; b&aacute;n</strong>: $150</p>\r\n<h3 class=\"wp-block-heading\">Nike LJ Elite</h3>\r\n<p>Như bạn c&oacute; thể đo&aacute;n được từ t&ecirc;n c&aacute;i t&ecirc;n của n&oacute;, Nike LJ Elite l&agrave; đ&ocirc;i gi&agrave;y d&agrave;nh cho những vận động vi&ecirc;n nhảy xa. N&oacute; được trang bị c&aacute;c đơn vị Zoom Air v&agrave; một tấm sợi carbon.</p>\r\n<div class=\"wp-block-image\"><a class=\"td-modal-image\" href=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-LJ-Elite-1024x769.jpg\"><img class=\"wp-image-4897 td-animation-stack-type0-2\" src=\"http://runningshoes.vn/wp-content/uploads/2023/04/Nike-LJ-Elite-1024x769.jpg\" alt=\"\" width=\"1024\" height=\"769\" /></a></div>\r\n<p><strong>Gi&aacute;</strong>: $150</p>', 3, '4ff257e3ac.jpg', 0),
(9, 'Game Uncharted', '<p>laf san pham cua nha Naughty Dog</p>', '<p>Uncharted 4 Legacy of thieves collection la 1 sieu pham game the gioi mo da duoc len ke pc.Ng choi se nhap vai nathan drake trong phan 1 va Chloe trong phan 2 ....</p>', 7, '8941d200a6.jpg', 0),
(10, 'Cac laoi dep to ong', '<p>to ong la 1 loai dep huyent hoai</p>', '<p>dsfdgdegdstgheg</p>', 4, '6d3a57844f.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Jordan Air'),
(3, 'Jordan 4'),
(4, 'Vans Authen'),
(5, 'Converse Chuck'),
(9, 'Supreme'),
(10, 'yeezy'),
(11, 'balenciaga'),
(12, 'Adidas 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`, `stock`, `status`) VALUES
(146, 35, 'oc2a50lp5upqjs6utqh9p77etk', 'Balenciaga Pink', '2320000', 3, 'd5b696400d.jpg', 23, 0),
(147, 48, 'j6174j1ekmeemua2j39nv5vndc', 'Minion Jordan', '3560000', 1, '137d5bf3e3.jpg', 21, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Balenciaga'),
(4, 'Converse'),
(6, 'Adiddas'),
(7, 'Nike'),
(8, 'Vans'),
(21, 'Jordan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_post`
--

CREATE TABLE `tbl_category_post` (
  `id_cate_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(4, 'long', '55 Chùa Hà', 'yên bái', 'VN', '425423', '0420645586312', 'longpham@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(5, 'Phạm Trung Hiếu', '66 hàng bài', 'thái bình', 'VN', '999985', '03259455769', 'hieudznhat@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(6, 'Mai Xuân Cảnh', '5 liễu giai', 'Nam định', 'VN', '561231', '03259455555', 'canhpv@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(7, 'hoàng đần', 'hàng bài', 'bắc ninh ', 'VN', '15564', '0420643763', 'hoangchubedan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(8, 'tung', '55 hang bai', 'ha noi', 'VN', '65498', '66774508', 'dodangtungnguxi@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_cate_post` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`id_cate_post`, `title`, `description`, `status`) VALUES
(3, 'tin về cac hang giay', 'mo ta thong tin ve cac hang giay', 0),
(4, 'Tin về dép', 'Tin về dép', 1),
(7, 'Tin ve Game', 'cac game hot', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(20) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `order_code`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(27, 31, '9517', 'NIKE AIR MORE UPTEMPO X  SUPREME RED', 5, 2, '11200000', '08d34daff1.jpg', 0, '2023-04-30 14:25:44'),
(28, 5, '9517', ' Vans Authen DX BW', 5, 3, '2850000', 'bf56c64fa8.jpg', 0, '2023-04-30 14:25:44'),
(29, 30, '1651', 'Vans X Juju', 5, 1, '3650000', 'c104407b05.jpg', 0, '2023-04-30 14:27:47'),
(30, 17, '1651', 'White Converse', 5, 2, '2000000', '8fc5ee6cfe.jpg', 0, '2023-04-30 14:27:47'),
(31, 22, '1371', 'Converse 1970s yellow', 6, 2, '1120000', '30c0dfe759.jpg', 0, '2023-04-30 14:40:40'),
(32, 31, '1371', 'NIKE AIR MORE UPTEMPO X  SUPREME RED', 6, 1, '5600000', '08d34daff1.jpg', 0, '2023-04-30 14:40:40'),
(34, 9, '8421', 'adidas Yeezy Boost 350 V2', 4, 3, '3750000', '58a8c38c08.jpg', 0, '2023-04-30 15:24:49'),
(35, 6, '8421', 'NIKE AIR MORE UPTEMPO SUPREME X TRI-COLOR 2018', 4, 1, '1850000', '56c9ba3efc.jpg', 0, '2023-04-30 15:24:49'),
(37, 29, '1217', 'Vans Caro Black White', 7, 1, '1235000', '04f889091d.jpg', 0, '2023-04-30 16:46:53'),
(40, 31, '1217', 'NIKE AIR MORE UPTEMPO X  SUPREME RED', 7, 1, '5600000', '08d34daff1.jpg', 0, '2023-04-30 16:46:53'),
(42, 24, '4110', 'Adidas ZX Boost Red', 5, 2, '2700000', '224411c0a7.jpg', 0, '2023-04-30 16:54:29'),
(43, 15, '4110', 'CONVERSE CHUCK TAYLOR ALL STAR PRIDE BLACK', 5, 3, '6450000', '1930f743e4.avif', 0, '2023-04-30 16:54:29'),
(44, 28, '4110', 'Adidas Classic White', 5, 1, '600000', '6ec649daee.jpg', 0, '2023-04-30 16:54:29'),
(53, 43, '5875', 'Converse Wood Xvessel', 6, 1, '1100000', 'd541211f2f.jpg', 0, '2023-05-01 09:41:56'),
(54, 44, '5875', 'Vans X Fear', 6, 1, '995000', '99f9c11e34.webp', 0, '2023-05-01 09:41:56'),
(55, 42, '5838', 'Vans SK8 high', 6, 1, '1250000', 'e5880a6977.webp', 0, '2023-05-01 09:44:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_placed`
--

CREATE TABLE `tbl_placed` (
  `id_placed` int(11) NOT NULL,
  `order_code` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_placed`
--

INSERT INTO `tbl_placed` (`id_placed`, `order_code`, `status`, `customer_id`, `date_created`) VALUES
(2, '1651', 2, 5, '2023-04-30 16:40:14'),
(3, '1371', 2, 6, '2023-04-30 16:44:27'),
(4, '8421', 2, 4, '2023-05-02 04:09:22'),
(5, '1217', 1, 7, '2023-04-30 16:47:10'),
(6, '4110', 1, 5, '2023-04-30 16:55:59'),
(8, '5875', 2, 6, '2023-05-01 09:45:16'),
(9, '5838', 1, 6, '2023-05-01 09:44:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_quantity`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(3, 'CONVERSE CHUCK TAYLOR ALL STAR 70 HI', 14, 4, 5, '<p><span style=\"font-size: small;\">Converse Chuck Taylor All Star 70 Hi m&agrave;u Dark Root. Được sản xuất với mặt tr&ecirc;n bằng vải bạt, mũi gi&agrave;y bằng cao su, logo Converse Chuck Taylor All Star 70 m&agrave;u trắng v&agrave; đen b&ecirc;n trong mắt c&aacute; ch&acirc;n, khoen kim loại v&agrave; đế trong của Converse 70, nổi bật với đế Converse 70 bằng cao su m&agrave;u trắng c&oacute; sọc b&ecirc;n h&ocirc;ng m&agrave;u đen v&agrave; mấu g&oacute;t m&agrave;u đen c&oacute; logo All-Star m&agrave;u trắng.</span></p>', 0, '1850000', '9e2196c894.jpg'),
(5, ' Vans Authen DX BW', 20, 8, 4, '<p>Mang lại sự trẻ trung phong c&aacute;ch c&aacute; t&iacute;nh, ph&ugrave; hợp với c&aacute;c bạn trẻ</p>', 0, '950000', 'bf56c64fa8.jpg'),
(6, 'NIKE AIR MORE UPTEMPO SUPREME X TRI-COLOR 2018', 5, 7, 9, '<p>l&agrave; mẫu gi&agrave;y thời trang mới nhất của Nike sẽ đem đến cho người mang n&oacute; cảm gi&aacute;c dễ chịu, tho&aacute;ng m&aacute;t v&agrave; \"tăng chiều cao\"</p>', 0, '1850000', '56c9ba3efc.jpg'),
(8, 'nike air max supreme', 3, 7, 9, '<p>l&agrave; 1 loại gi&agrave;y supreme kh&aacute;c của nike</p>', 0, '2500000', 'fdfa9f61ea.jpg'),
(9, 'adidas Yeezy Boost 350 V2', 13, 6, 10, '<p>adidas Yeezy Boost 350 V2 &ldquo;Yecheil Reflective&rdquo; l&agrave; một biến thể độc quyền hơn của phi&ecirc;n bản &ldquo;Yechiel&rdquo;, v&igrave; cả hai mẫu đều dự kiến sẽ ra mắt v&agrave;o m&ugrave;a lễ n&agrave;y. Kh&ocirc;ng giống như c&aacute;c phi&ecirc;n bản Yeezy Boost 350 V2 trước đ&acirc;y, cặp n&agrave;y được x&aacute;c định bởi sự kết hợp của nhiều m&agrave;u sắc. Phần tr&ecirc;n Primeknit m&agrave;u đen của n&oacute; được phủ lớp phản quang 3M c&oacute; đường chỉ trắng tương phản, b&ecirc;n cạnh c&aacute;c điểm nhấn m&agrave;u đỏ v&agrave; v&agrave;ng xuy&ecirc;n suốt. Cuối c&ugrave;ng l&agrave; một đường sọc b&ecirc;n đen đậm đặc biệt, theo sau l&agrave; phần đế đệm Boost c&oacute; đường gờ ph&ugrave; hợp tạo n&ecirc;n phong c&aacute;ch ri&ecirc;ng.</p>', 0, '1250000', '58a8c38c08.jpg'),
(10, 'adidas Yeezy Boost 700 Teal Blue', 0, 6, 10, '<p>đợi t&iacute; đang nghĩ xem m&ocirc; tả kiểu g&igrave; :))</p>', 0, '1650000', '7de8366486.jpg'),
(11, 'Balenciaga Triple S Mesh', 18, 3, 11, '<p>1 loại gi&agrave;y đến từ nh&agrave; Balenciaga</p>', 0, '760000', 'c74ba439e6.jpg'),
(13, 'Adidas yeezy zebra v350', 55, 6, 10, '<p>đ&ocirc;i ngựa vằn</p>', 0, '1150000', 'fe04208c17.jpg'),
(14, 'Balenciaga Triple S White Red', 98, 3, 11, '<p>người anh em của balenciaga triple S black</p>', 0, '1350000', '9805fa7a71.avif'),
(15, 'CONVERSE CHUCK TAYLOR ALL STAR PRIDE BLACK', 150, 4, 5, '<p>một d&ograve;ng converse taylor kh&aacute;c</p>', 0, '2150000', '1930f743e4.avif'),
(17, 'White Converse', 9, 4, 5, '<p>White ConverseWhite ConverseWhite ConverseWhite Converse</p>', 0, '1000000', '8fc5ee6cfe.jpg'),
(22, 'Converse 1970s yellow', 20, 4, 5, '<p>gi&agrave;y thuộc converse</p>', 0, '560000', '30c0dfe759.jpg'),
(23, 'Adidas SoleCourt', 11, 6, 12, '<p>ygyjygugukyug</p>', 0, '1250000', '68546eee9e.jpg'),
(24, 'Adidas ZX Boost Red', 21, 6, 12, '<p>Gi&agrave;y adidas ra mắt mới nhất năm vừa rồi</p>', 0, '1350000', '224411c0a7.jpg'),
(25, 'BAlenciaga Track White', 60, 3, 11, '<p>Balenciaga m&agrave;u trắng n&ecirc;n sẽ ph&ugrave; hợp với những người ưa sạch sẽ</p>', 0, '12500000', 'db6b51a049.jpg'),
(26, 'Balenciaga Triple S Black', 50, 3, 11, '<p>khac với m&agrave;u trăng đ&acirc;y l&agrave; gi&agrave;y m&agrave;u đen</p>', 0, '16500000', '71c0e33571.jpg'),
(27, 'Balenciaga Triple S Green Yellow', 3, 3, 11, '<p>đ&ocirc;i triple s xanh v&agrave;ng</p>', 0, '750000', '603ea527f9.jpg'),
(28, 'Adidas Classic White', 11, 6, 12, '<p><span style=\"font-size: small;\">1 đ&ocirc;i adidas cổ điển c&oacute; thể mix c&ugrave;ng nhiều style quần &aacute;o</span></p>', 0, '600000', '6ec649daee.jpg'),
(29, 'Vans Caro Black White', 6, 8, 4, '<p>1 mẫu gi&agrave;y tới từ nh&agrave; Vans</p>', 0, '1235000', '04f889091d.jpg'),
(30, 'Vans X Juju', 5, 8, 4, '<p><span style=\"font-size: medium;\">Đ&ocirc;i gi&agrave;y Vans với m&agrave;u v&agrave;ng x&aacute;m</span></p>', 0, '3650000', 'c104407b05.jpg'),
(31, 'NIKE AIR MORE UPTEMPO X  SUPREME RED', 3, 7, 9, '<p><span style=\"font-size: small;\">đ&ocirc;i supreme</span></p>', 0, '5600000', '08d34daff1.jpg'),
(32, 'Vans Classic Slip', 13, 8, 4, '<p><span style=\"font-size: small;\">s&aacute;degetsrh</span></p>', 0, '1150000', 'c167df4717.jpg'),
(33, 'Converse Military Force', 15, 4, 5, '<p><span style=\"font-size: small;\">1 đ&ocirc;i converse mang phong c&aacute;ch qu&acirc;n đội sẽ khiến khỏe khoắn hơn</span></p>', 1, '1350000', '4d5e2be182.jpg'),
(34, 'Nike Supreme CHicago Bull', 35, 7, 9, '<p>t&ocirc;ng m&agrave;u trắng chủ đạo điểm đỏ c&ugrave;ng logo bull hơi hướng chicago</p>', 0, '2350000', 'b561647ff9.jpg'),
(35, 'Balenciaga Pink', 23, 3, 11, '<p>l&agrave; đ&ocirc;i balenciaga t&ocirc;ng m&agrave;u hồng sẽ ph&ugrave; hợp cho c&aacute;c bạn nữ vs t&iacute;nh c&aacute;ch dịu dang, phối đồ c&ugrave;ng m&agrave;u trắng</p>', 0, '2320000', 'd5b696400d.jpg'),
(36, 'Balenciaga track green yellow', 20, 3, 11, '<p>m&agrave;u xanh v&agrave;ng</p>', 0, '1050000', '1c185463c9.jpg'),
(37, 'Converse All star 1970s White', 25, 4, 5, '<p>l&agrave; đ&ocirc;i conver cổ cao to&agrave;n m&agrave;u trắng</p>', 0, '1700000', '955792e427.jpg'),
(39, 'Starwar Converse', 10, 4, 5, '<p>ksdhjfsafgiwbfyaswfuy</p>', 0, '990000', '9b5d1d9a48.jpg'),
(40, 'Balenciaga Track yellow', 10, 3, 11, '<p>balenciaga m&agrave;u v&agrave;ng đen</p>', 0, '1670000', '0f26657a69.jpg'),
(42, 'Vans SK8 high', 10, 8, 4, '<p>dsijfhisuhisuhf</p>', 0, '1250000', 'e5880a6977.webp'),
(43, 'Converse Wood Xvessel', 5, 4, 5, '<p>L&agrave; đ&ocirc;i converse với đế gỗ c&ugrave;ng với hoa văn dựa tr&ecirc;n 2 m&agrave;u ch&iacute;nh l&agrave; đen v&agrave; trắng</p>', 0, '1100000', 'd541211f2f.jpg'),
(44, 'Vans X Fear', 20, 8, 4, '<p>vans x fear &aacute;dfhjweosfhgosrhgnvisfnuiuwr</p>', 0, '995000', '99f9c11e34.webp'),
(47, 'air jordan 4 retro university blue', 20, 21, 1, '<p>dsfegerhrthr</p>', 1, '9600000', 'f47cb21974.jpg'),
(48, 'Minion Jordan', 21, 21, 3, '<p>&agrave;ergrjygkiuyhlkujkl</p>', 1, '3560000', '137d5bf3e3.jpg'),
(49, 'air jordan principle', 20, 21, 1, '<p>fhjfughyukyguy</p>', 0, '2350000', 'ff37274b8a.jpg'),
(50, 'Jordan royalty black', 26, 21, 3, '<p>l&agrave; đ&ocirc;i hơi huoingws ho&agrave;ng gia</p>', 1, '1650000', '2cabec4e69.jpg'),
(51, 'air jordan kid', 14, 21, 1, '<p>l&agrave; đ&ocirc;i cho trẻ em vs t&ocirc;ng m&agrave;u trắng</p>', 0, '1230000', 'c23166e648.jpg'),
(52, 'air jordan mid milan', 8, 21, 1, '<p>l&agrave; đ&ocirc;i milan cổ cao với m&agrave;u trắng l&agrave; ch&iacute;nh</p>', 0, '1450000', 'c0669f67a0.jpg'),
(53, 'air jordan 4 retro lightning', 7, 21, 3, '<p>l&agrave; đ&ocirc;i cổ cao m&agrave;u v&agrave;ng với họa tiết tia chớp b&ecirc;n sườn</p>', 0, '5600000', '8ba617cbcd.jpg'),
(54, 'vans dior', 8, 8, 4, '<p>l&agrave; đ&ocirc;i dior</p>', 0, '950000', 'ab67b83cd5.jpg'),
(55, 'air jordan white', 3, 21, 1, '<p>sjahijdhsdfh high</p>', 0, '4500000', '4171454f96.jpg'),
(56, 'air jordan retro low', 13, 21, 1, '<p>l&agrave; đ&ocirc;i cổ thấp vs 2 m&agrave;u ch&iacute;nh đỏ vs đen</p>', 0, '1100000', 'c78dfec87e.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(2, 'Slider 2', '509769c6da.jpg', 1),
(5, 'slider 5', 'b9c29fde51.jpg', 1),
(6, 'slider 5', 'ce437712ff.jpg', 0),
(7, 'slider giày', '4397906cd1.jpg', 1),
(8, 'slider giày 2', 'f85341fe4d.jpg', 1),
(9, 'slider sale', 'fcb9d37512.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id_thongke` int(11) NOT NULL,
  `doanhthu` varchar(50) NOT NULL,
  `donhang` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `date_thongke` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id_thongke`, `doanhthu`, `donhang`, `soluong`, `date_thongke`) VALUES
(1, '3520000', 2, 10, '2023-04-20'),
(2, '1100000', 1, 3, '2023-04-21'),
(3, '2320000', 3, 10, '2023-04-22'),
(4, '1000000', 2, 3, '2023-04-25'),
(5, '1000000', 2, 3, '2022-06-30'),
(6, '1000000', 2, 3, '2023-03-27'),
(7, '3050000', 4, 15, '2023-02-22'),
(8, '1350000', 1, 1, '2023-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(26, 5, 48, 'Minion Jordan', '3560000', '137d5bf3e3.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post` (`category_post`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  ADD PRIMARY KEY (`id_cate_post`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_cate_post`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_placed`
--
ALTER TABLE `tbl_placed`
  ADD PRIMARY KEY (`id_placed`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id_thongke`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  MODIFY `id_cate_post` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_cate_post` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tbl_placed`
--
ALTER TABLE `tbl_placed`
  MODIFY `id_placed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id_thongke` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD CONSTRAINT `tbl_binhluan_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD CONSTRAINT `tbl_blog_ibfk_1` FOREIGN KEY (`category_post`) REFERENCES `tbl_news` (`id_cate_post`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD CONSTRAINT `tbl_compare_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_compare_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
