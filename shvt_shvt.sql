-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2023 at 07:57 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shvt_shvt`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home banner', NULL, 'banners/May2023/a49Fc7Ohb3EJJmEEfYvT.png', 'home_banner', 'ACTIVE', '2023-05-28 18:58:00', '2023-05-28 23:55:20'),
(2, 'banner header', NULL, 'banners/May2023/E0HKzLmtyyfEqYRtlI6z.png', 'banner_header', 'ACTIVE', '2023-05-28 18:59:00', '2023-05-29 00:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin Tức', 'tin-tuc', '2023-05-28 18:38:06', '2023-05-28 19:38:55'),
(2, NULL, 1, 'Kỹ thuật canh tác', 'ky-thuat-canh-tac', '2023-05-28 18:38:06', '2023-05-28 19:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `classifies`
--

CREATE TABLE `classifies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classifies`
--

INSERT INTO `classifies` (`id`, `title`, `slug`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Cây ăn quả', 'cay-an-qua', NULL, '2023-05-28 19:35:11', '2023-05-28 19:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm nông nghiệp', 'san-pham-nong-nghiep', NULL, NULL, '2023-05-28 19:20:00', '2023-05-30 00:20:56'),
(2, 'Sản phẩm công nghiệp', 'san-pham-cong-nghiep', NULL, NULL, '2023-05-29 17:48:00', '2023-05-30 00:21:08'),
(3, 'Sản phẩm OCOP', 'san-pham-ocop', NULL, NULL, '2023-05-30 00:21:38', '2023-05-30 00:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `title`, `desc`, `price`, `content`, `image`, `status`, `slug`, `created_at`, `updated_at`, `classify_id`) VALUES
(1, 'Cây Mận Xanh Tam Hoa', 'Mận xanh tam hoa hoặc gọi là roi (xanh tam hoa) có nguồn gốc từ Đài Loan. Cây có thể ra trái sau thời gian 12 tháng nếu trồng từ cây chiết nhánh hoặc ghép. Một năm có 3 vụ trái. Cây trưởng thành có chiều cao 3-5m. Tàn khoảng 3m trở lên. Các loại đất thịt, đất cát, đất phù sa, đất đỏ đều trồng được loại mận này. Giống có đặc điểm chịu được phèn, mặn. Chịu hạn khá tốt.', 200000, '<ul>\r\n<li>Mận xanh tam hoa hoặc gọi l&agrave; roi (xanh tam hoa) c&oacute; nguồn gốc từ Đ&agrave;i Loan. C&acirc;y c&oacute; thể ra tr&aacute;i sau thời gian 12 th&aacute;ng nếu trồng từ c&acirc;y chiết nh&aacute;nh hoặc gh&eacute;p. Một năm c&oacute; 3 vụ tr&aacute;i. C&acirc;y trưởng th&agrave;nh c&oacute; chiều cao 3-5m. T&agrave;n khoảng 3m trở l&ecirc;n. C&aacute;c loại đất thịt, đất c&aacute;t, đất ph&ugrave; sa, đất đỏ đều trồng được loại mận n&agrave;y. Giống c&oacute; đặc điểm chịu được ph&egrave;n, mặn. Chịu hạn kh&aacute; tốt.</li>\r\n<li>L&aacute; d&agrave;y to, đọt non m&agrave;u đỏ sẩm. Nếu so với l&aacute; mận đỏ An Phước th&igrave; l&aacute; mận xanh d&agrave;y hơn, m&agrave;u xanh đậm hơn, bảng l&aacute; to.</li>\r\n<li>Hoa c&oacute; m&agrave;u trắng mọc th&agrave;nh từng ch&ugrave;m. Tr&aacute;i xanh h&igrave;nh chu&ocirc;ng, vị xốp, ngon, kh&ocirc;ng hạt. So về độ xốp, ngon th&igrave; ngang ngửa với giống mận Phước. Nhưng k&iacute;ch cỡ tr&aacute;i to hơn gấp 1,5 lần.</li>\r\n<li>Nh&acirc;n giống c&oacute; 2 c&aacute;ch l&agrave; chiết hoặc gh&eacute;p. Giống n&agrave;y cơ bản gần như kh&ocirc;ng hạt cho n&ecirc;n kh&ocirc;ng l&agrave;m giống từ hạt được.</li>\r\n</ul>\r\n<p>* Giống mận xanh tam hoa ho&agrave;n to&agrave;n kh&aacute;c so với giống mận xanh đường. C&aacute;ch ph&acirc;n biệt l&agrave; tr&aacute;i lớn hơn, kh&ocirc;ng hạt, h&igrave;nh tr&aacute;i chu&ocirc;ng tương tự mận An Phước. C&ograve;n mận xanh đường tr&aacute;i ngắn, c&oacute; hạt.</p>', 'crops/May2023/Lm8VPJs7ft0B3VOpcy06.png', 'ACTIVE', 'cay-man-xanh-tam-hoa', '2023-05-28 19:34:00', '2023-05-29 01:00:43', 1),
(2, 'Cây mận hậu', 'Quả tròn trịa nhỏ nhắn, khi ăn sẽ mang đến vị chua và giòn rụm khiến cho ai đã ăn rồi cũng khó có thể quên. Quả mận hậu chính là một thứ quả khiến nhiều người mong chờ vào mùa hè.', 80000, '<p>Với những người s&agrave;nh ăn, c&oacute; lẽ mận hậu c&oacute; vị ngon nhất sẽ nghĩ đầu ti&ecirc;n đến Mộc Ch&acirc;u. Nhờ thi&ecirc;n nhi&ecirc;n nơi đ&acirc;y, m&agrave; lo&agrave;i c&acirc;y n&agrave;y được trồng nhiều v&agrave; cho chất lượng quả ngon hơn một số v&ugrave;ng. Kh&ocirc;ng kh&iacute; với đặc t&iacute;nh m&aacute;t lạnh quanh năm, c&ugrave;ng thổ nhưỡng đặc biệt n&ecirc;n rất ph&ugrave; hợp.</p>\r\n<p>Những c&acirc;y mận trưởng th&agrave;nh c&oacute; thể l&ecirc;n đến chiều cao l&agrave; khoảng 3m. Những c&acirc;y c&oacute; tuổi đời c&oacute; thể l&ecirc;n đến 10 năm, năm n&agrave;o cũng sai quả. Trong qu&aacute; tr&igrave;nh, n&ocirc;ng d&acirc;n đ&atilde; c&oacute; c&aacute;ch để hạn chế chiều cao của c&acirc;y bằng c&aacute;ch l&agrave;m t&aacute;n rộng. C&aacute;ch l&agrave;m n&agrave;y gi&uacute;p tăng lượng quả mọc tr&ecirc;n c&acirc;y, tăng năng suất l&ecirc;n rất nhiều lần.&nbsp;</p>\r\n<h2 id=\"dac-diem-cay-man-hau\" class=\"ftwp-heading\"><strong>Đặc điểm c&acirc;y Mận Hậu</strong></h2>\r\n<p><img class=\"size-full wp-image-7864 aligncenter lazy-load-active\" src=\"https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi.jpg 600w, https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi-50x50.jpg 50w, https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi-100x100.jpg 100w\" alt=\"qua-cay-man-hau-Ha-Noi\" width=\"600\" height=\"600\" data-src=\"https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi.jpg\" data-srcset=\"https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi.jpg 600w, https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi-50x50.jpg 50w, https://nhavuonngoclam.com/wp-content/uploads/2022/11/qua-cay-man-hau-Ha-Noi-100x100.jpg 100w\"></p>\r\n<p>C&acirc;y mận hậu l&agrave; c&acirc;y th&acirc;n gỗ, chiều cao trung b&igrave;nh từ<strong>&nbsp;4 &ndash; 15 m</strong>. Vỏ c&acirc;y m&agrave;u n&acirc;u đậm, th&acirc;n c&acirc;y x&ugrave; x&igrave; v&agrave; c&oacute; phần hơi gai g&oacute;c. Khi lớn c&acirc;y sẽ vươn thẳng l&ecirc;n ph&iacute;a trước, sau đ&oacute; ph&acirc;n th&agrave;nh nhiều nh&aacute;nh.&nbsp;</p>\r\n<p>L&aacute; c&acirc;y mận hậu kh&aacute; mỏng v&agrave; c&oacute; sừng, phần phiến l&aacute; c&oacute; h&igrave;nh thu&ocirc;n d&agrave;i v&agrave; nh&igrave;n th&igrave; c&oacute; h&igrave;nh bầu dục. Độ d&agrave;i trung b&igrave;nh khoảng từ 25cm, c&ograve;n với chiếc l&aacute; nhỏ c&oacute; chiều d&agrave;i khoảng 5 &ndash; 12 cm. Phần ngọn l&aacute; kh&aacute; nhọn, phần đu&ocirc;i hẹp v&agrave; c&oacute; h&igrave;nh tr&ograve;n, h&igrave;nh tr&aacute;i tim tr&ocirc;ng rất đẹp mắt. Cuống c&oacute; cuối c&oacute; chiều d&agrave;i khoảng từ 4 &ndash; 8mm.</p>\r\n<p>Hoa mận thường mọc th&agrave;nh ch&ugrave;m, mỗi ch&ugrave;m được tạo từ 5 cho đến 30 b&ocirc;ng hoa kh&aacute;c nhau. Ch&ugrave;m thường mọc ở đỉnh ngọn hoặc phần n&aacute;ch l&aacute;. Hoa mận c&oacute; m&agrave;u trắng tinh khiết, nhẹ nh&agrave;ng</p>\r\n<p>Đường k&iacute;nh trung b&igrave;nh của mỗi b&ocirc;ng hoa l&agrave; từ 3 cho đến 4 cm. Đ&agrave;i hoa c&oacute; 4 c&aacute;nh h&igrave;nh ống d&agrave;i từ 1.5 cm. C&aacute;ch hoa mận kh&aacute; mỏng, nhỏ nhắn v&agrave; chiều d&agrave;i khoảng từ 10 &ndash; 15 cm. Nhụy d&agrave;i phần đ&agrave;i kh&ocirc;ng rụng m&agrave; sau kết tr&aacute;i th&agrave;nh quả.&nbsp;</p>\r\n<p>Hoa t&agrave;n th&igrave; quả cũng bắt đầu xuất hiện, t&ugrave;y thuộc v&agrave;o giống mận m&agrave; m&agrave;u sắc của ch&uacute;ng kh&aacute;c nhau như t&iacute;m, hồng, xanh&hellip;Quả mận tr&ograve;n, k&iacute;ch thước nhỏ v&agrave; lớn kh&aacute;c nhau.&nbsp;</p>', 'crops/May2023/ay8TMWgN1es74lodntf2.png', 'ACTIVE', 'cay-man-hau', '2023-05-28 20:41:00', '2023-05-28 20:47:41', 1),
(3, 'Cây Mận Tả Van', 'Một giống mận địa phương ở Bắc Hà chỉ trồng được ở các xã vùng cao, vùng đồng bào dân tộc Mông ở khu vực thượng huyện, chủ yếu là xã Tả Văn Chư.', 135000, '<p>Xen c&ugrave;ng m&agrave;u hồng ửng như m&aacute; thiếu nữ của đ&agrave;o, trong m&ugrave;a h&egrave;, khắp Bắc H&agrave; c&ograve;n đỏ rực trong sắc mận. Những vườn quả l&uacute;c lỉu mận ch&iacute;n c&oacute; sắc đỏ tuyệt đẹp, ngon nổi tiếng ch&iacute;nh l&agrave; đặc sản của v&ugrave;ng Tả Van Chư &ndash; Bắc H&agrave; &ndash; L&agrave;o Cai. Những tr&aacute;i mận đỏ ch&iacute;n mọng, được bảo phủ một lớp phấn trắng tr&ocirc;ng v&ocirc; c&ugrave;ng quyến rũ v&agrave; ngon mắt.</p>\r\n<p>Nếu c&oacute; dịp, bạn n&ecirc;n v&agrave;o tận vườn, tự tay chọn những quả mận to, đỏ thẫm, lau qua lớp phấn v&agrave;o vạt &aacute;o rồi cắn một miếng thật to để nghe vị chua, ngọt v&agrave; hương thơm của n&uacute;i rừng tan trong miệng.</p>\r\n<p>Mận Tả Van l&agrave; giống Mận địa phương của x&atilde; Tả Van Chư n&oacute;i ri&ecirc;ng v&agrave; huyện Bắc H&agrave; n&oacute;i chung, đ&acirc;y l&agrave; giống mận qu&yacute; v&agrave; c&oacute; thể n&oacute;i l&agrave; giống Mận c&oacute; gi&aacute; trị cao nhất hiện nay ở nước ta hiện nay. Mận Tả Van trồng ở x&atilde; Tả Van Chư, l&agrave; x&atilde; v&ugrave;ng cao, khu vực thượng huyện Bắc H&agrave; &ndash; L&agrave;o Cai. X&atilde; Tả Van Chư nằm ở độ cao tr&ecirc;n 1.500 m so với mực nước biển, c&oacute; lẽ do độ cao v&agrave; đất đai nơi đ&acirc;y đ&atilde; tạo n&ecirc;n hương vị đặc sắc của mận Tả Van, mận Tả Van khi ch&iacute;n quả c&oacute; m&agrave;u đỏ phớt phấn trắng, b&ecirc;n trong ruột đỏ rực, ăn rất thơm ngon, ngọt v&agrave; đậm đ&agrave;.</p>\r\n<div class=\"kk-star-ratings kksr-auto kksr-align-right kksr-valign-bottom\" data-payload=\"{&quot;align&quot;:&quot;right&quot;,&quot;id&quot;:&quot;1811&quot;,&quot;slug&quot;:&quot;default&quot;,&quot;valign&quot;:&quot;bottom&quot;,&quot;ignore&quot;:&quot;&quot;,&quot;reference&quot;:&quot;auto&quot;,&quot;class&quot;:&quot;&quot;,&quot;count&quot;:&quot;2&quot;,&quot;legendonly&quot;:&quot;&quot;,&quot;readonly&quot;:&quot;&quot;,&quot;score&quot;:&quot;5&quot;,&quot;starsonly&quot;:&quot;&quot;,&quot;best&quot;:&quot;5&quot;,&quot;gap&quot;:&quot;2&quot;,&quot;greet&quot;:&quot;\\u0110\\u00e1nh gi\\u00e1 b\\u00e0i vi\\u1ebft&quot;,&quot;legend&quot;:&quot;5\\/5 - (2 b\\u00ecnh ch\\u1ecdn)&quot;,&quot;size&quot;:&quot;20&quot;,&quot;title&quot;:&quot;M\\u00f9a M\\u1eadn T\\u1ea3 Van \\u0111\\u1eb7c s\\u1ea3n B\\u1eafc H\\u00e0&quot;,&quot;width&quot;:&quot;109&quot;,&quot;_legend&quot;:&quot;{score}\\/{best} - ({count} {votes})&quot;,&quot;font_factor&quot;:&quot;1.25&quot;}\">\r\n<div class=\"kksr-stars\">\r\n<div class=\"kksr-stars-inactive\">\r\n<div class=\"kksr-star\" data-star=\"1\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 'crops/May2023/EBERpK55zpNBVjVDSlMV.png', 'ACTIVE', 'cay-man-ta-van', '2023-05-28 20:44:00', '2023-05-29 01:00:51', 1),
(4, 'Cây lê xanh', 'Những cây lê cổ thụ trăm năm tuổi trên địa bàn huyện Bắc Hà, tỉnh Lào Cai vẫn trường tồn theo thời gian quanh những mái nhà gỗ đơn sơ của đồng bào Mông', 80000, '<p>Đến với x&atilde; v&ugrave;ng cao Tả Văn Chư, huyện Bắc H&agrave; dễ nhận thấy m&agrave;u xanh của những c&acirc;y l&ecirc; VH6 đang dần phủ k&iacute;n tr&ecirc;n đất đồi. C&ugrave;ng với đ&oacute; l&agrave; những c&acirc;y l&ecirc; xanh cổ thụ c&oacute; tuổi đời khoảng gần 100 trăm năm tỏa b&oacute;ng m&aacute;t bao quanh m&aacute;i nh&agrave; của đồng b&agrave;o M&ocirc;ng nơi đ&acirc;y.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><a class=\"detail-img-lightbox\" title=\"Những c&acirc;y l&ecirc; cổ thụ được người d&acirc;n trồng quanh nh&agrave; ở x&atilde; v&ugrave;ng cao Tả Van Chư, huyện Bắc H&agrave; (L&agrave;o Cai). Ảnh: M&ugrave;a Xu&acirc;n.\" href=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805362447902328.png\" data-fancybox-group=\"img-lightbox\"><img id=\"img_567759728842121216\" class=\"lightbox-content\" title=\"C&acirc;y l&ecirc; cổ thụ ở x&atilde; v&ugrave;ng cao Bắc H&agrave; - Ảnh 2.\" src=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805362447902328.png\" alt=\"C&acirc;y l&ecirc; cổ thụ ở x&atilde; v&ugrave;ng cao Bắc H&agrave; - Ảnh 2.\" width=\"100%\" height=\"100%\" data-original=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805362447902328.png\"></a></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"NLPlaceholderShow\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Những c&acirc;y l&ecirc; cổ thụ được người d&acirc;n trồng quanh nh&agrave; ở x&atilde; v&ugrave;ng cao Tả Van Chư, huyện Bắc H&agrave; (L&agrave;o Cai). Ảnh: M&ugrave;a Xu&acirc;n.</p>\r\n</figcaption>\r\n</figure>\r\n<p>Dẫn ch&uacute;ng t&ocirc;i xem c&acirc;y l&ecirc; xanh ngay trước cửa nh&agrave;, b&agrave; Tr&aacute;ng Thị Sua, th&ocirc;n Lao Chải Ph&agrave; Hai Tủng, x&atilde; Tả Van Chư, huyện Bắc H&agrave;, kể: T&ocirc;i năm nay đ&atilde; 60 tuổi rồi, trước nh&agrave; t&ocirc;i c&oacute; một c&acirc;y l&ecirc; xanh cổ thụ to v&agrave; cao, t&ocirc;i cũng kh&ocirc;ng nhớ c&acirc;y l&ecirc; được trồng từ bao giờ nữa. Nhưng khi t&ocirc;i về lấy chồng ở th&ocirc;n n&agrave;y đ&atilde; thấy c&acirc;y l&ecirc; xanh to như vậy rồi.</p>\r\n<p>C&acirc;y l&ecirc; n&agrave;y l&agrave; do người th&acirc;n trong gia đ&igrave;nh t&ocirc;i mang từ Trung Quốc về trồng để lại nhưng gia đ&igrave;nh đ&oacute; đ&atilde; di cư sang huyện kh&aacute;c từ nhiều năm nay rồi n&ecirc;n gia đ&igrave;nh t&ocirc;i đ&atilde; chăm s&oacute;c cho đến tận b&acirc;y giờ đấy. C&acirc;y l&ecirc; ở nh&agrave; t&ocirc;i h&agrave;ng năm lu&ocirc;n ra hoa đậu quả tốt.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><a class=\"detail-img-lightbox\" title=\"Sắc trắng tinh kh&ocirc;i của hoa l&ecirc; cổ thụ x&atilde; Tả Van Chư, huyện Bắc H&agrave; (L&agrave;o Cai). Ảnh: M&agrave;u Xu&acirc;n.\" href=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805755885418386.png\" data-fancybox-group=\"img-lightbox\"><img id=\"img_567759903004835840\" class=\"lightbox-content\" title=\"C&acirc;y l&ecirc; cổ thụ ở x&atilde; v&ugrave;ng cao Bắc H&agrave; - Ảnh 3.\" src=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805755885418386.png\" alt=\"C&acirc;y l&ecirc; cổ thụ ở x&atilde; v&ugrave;ng cao Bắc H&agrave; - Ảnh 3.\" width=\"100%\" height=\"100%\" data-original=\"https://danviet.mediacdn.vn/296231569849192448/2023/4/5/base64-1680661805755885418386.png\"></a></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"NLPlaceholderShow\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Sắc trắng tinh kh&ocirc;i của hoa l&ecirc; cổ thụ x&atilde; Tả Van Chư, huyện Bắc H&agrave; (L&agrave;o Cai). Ảnh: M&agrave;u Xu&acirc;n.</p>\r\n</figcaption>\r\n</figure>', 'crops/May2023/Y8jdH4GNZ3leWxENJCJZ.png', 'ACTIVE', 'cay-le-xanh', '2023-05-28 20:47:00', '2023-05-28 20:47:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Danh mục bài viết', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Nội dung', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Nổi bật', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Mô tả', 1, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'type', 'select_dropdown', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"options\":{\"home_banner\":\"home_banner\",\"banner_header\":\"banner_header\"}}', 5),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 6, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 14),
(65, 6, 'MultiImage', 'media_picker', 'Hình ảnh đi kèm', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"watermark\":{\"source\":\"...\",\"position\":\"top-left\",\"x\":0,\"y\":0}}', 13),
(66, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 8, 'title', 'text', 'Tên sản phẩm', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 8, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(69, 8, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(70, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(71, 8, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 6),
(72, 8, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 7),
(73, 8, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{\"on\":\"ACTIVE\",\"off\":\"INACTIVE\",\"checked\":true}', 8),
(74, 8, 'category_id', 'text', 'Category Id', 0, 0, 1, 1, 1, 1, '{}', 9),
(75, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(76, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(77, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 9, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(80, 9, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(81, 9, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(83, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(84, 8, 'product_belongsto_collection_relationship', 'relationship', 'Danh mục sản phẩm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(85, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 10, 'title', 'text', 'Tên cây trồng', 0, 1, 1, 1, 1, 1, '{}', 2),
(87, 10, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(88, 10, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(89, 10, 'content', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(90, 10, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 7),
(91, 10, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(92, 10, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:crops,slug\"}}', 3),
(93, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(95, 10, 'classify_id', 'text', 'Classify Id', 0, 0, 1, 1, 1, 1, '{}', 11),
(96, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(98, 11, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:classifies,slug\"}}', 3),
(99, 11, 'desc', 'text', 'Desc', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(101, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 10, 'crop_belongsto_classify_relationship', 'relationship', 'Danh mục cây trồng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Classify\",\"table\":\"classifies\",\"type\":\"belongsTo\",\"column\":\"classify_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(103, 7, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(5, 'posts', 'posts', 'Bài viết', 'Bài viết', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-05-28 18:38:06', '2023-05-30 02:59:15'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-05-28 18:38:07', '2023-05-28 20:07:25'),
(7, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-28 18:56:24', '2023-05-28 20:04:07'),
(8, 'products', 'products', 'Product', 'Products', 'voyager-diamond', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-28 19:18:09', '2023-05-28 20:34:26'),
(9, 'collections', 'collections', 'Collection', 'Collections', 'voyager-buy', 'App\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(10, 'crops', 'crops', 'Cây trồng', 'Cây trồng', 'voyager-tree', 'App\\Crop', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-28 19:31:01', '2023-05-28 20:42:01'),
(11, 'classifies', 'classifies', 'Danh mục cây trồng', 'Danh mục cây trồng', 'voyager-buy', 'App\\Classify', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-05-28 19:32:27', '2023-05-28 19:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(2, 'home_menu', '2023-05-28 18:50:50', '2023-05-28 18:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-05-28 18:38:05', '2023-05-28 18:38:05', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2023-05-28 18:38:05', '2023-05-29 01:00:04', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', 29, 2, '2023-05-28 18:38:05', '2023-05-30 02:49:44', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 29, 1, '2023-05-28 18:38:05', '2023-05-30 02:49:33', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2023-05-28 18:38:05', '2023-05-29 01:00:04', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-05-28 18:38:05', '2023-05-28 18:56:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-05-28 18:38:05', '2023-05-28 18:56:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-05-28 18:38:05', '2023-05-28 18:56:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-05-28 18:38:05', '2023-05-28 18:56:54', 'voyager.bread.index', NULL),
(10, 1, 'Cấu Hình Cài Đặt', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2023-05-28 18:38:05', '2023-05-30 02:46:59', 'voyager.settings.index', 'null'),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', 28, 3, '2023-05-28 18:38:06', '2023-05-29 01:00:04', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 28, 4, '2023-05-28 18:38:07', '2023-05-29 01:00:04', 'voyager.posts.index', 'null'),
(13, 1, 'Trang giới thiệu', '', '_self', 'voyager-file-text', '#000000', 28, 2, '2023-05-28 18:38:07', '2023-05-29 01:00:06', 'voyager.pages.index', 'null'),
(14, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2023-05-28 18:51:33', '2023-05-28 20:18:20', NULL, ''),
(15, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 2, '2023-05-28 18:52:09', '2023-05-28 20:18:20', NULL, ''),
(16, 2, 'Sản phẩm', '/products', '_self', NULL, '#000000', NULL, 3, '2023-05-28 18:52:16', '2023-05-28 20:18:20', NULL, ''),
(17, 2, 'Cây trồng', '/crops', '_self', NULL, '#000000', NULL, 4, '2023-05-28 18:52:24', '2023-05-28 20:18:20', NULL, ''),
(18, 2, 'Tin tức', '/news', '_self', NULL, '#000000', NULL, 5, '2023-05-28 18:52:30', '2023-05-28 20:18:20', NULL, ''),
(19, 2, 'Kỹ thuật canh tác', '/techniques', '_self', NULL, '#000000', NULL, 6, '2023-05-28 18:52:40', '2023-05-28 20:18:20', NULL, ''),
(20, 2, 'Sơ đồ vùng trồng', '/maps', '_self', NULL, '#000000', NULL, 8, '2023-05-28 18:52:54', '2023-05-28 20:18:24', NULL, ''),
(21, 1, 'Banners', '', '_self', 'voyager-photos', NULL, 28, 1, '2023-05-28 18:56:25', '2023-05-29 01:00:06', 'voyager.banners.index', NULL),
(22, 1, 'Sản phẩm', '', '_self', 'voyager-diamond', '#000000', 24, 2, '2023-05-28 19:18:10', '2023-05-28 19:22:27', 'voyager.products.index', 'null'),
(23, 1, 'Quản lý danh mục', '', '_self', 'voyager-buy', '#000000', 24, 1, '2023-05-28 19:20:17', '2023-05-28 19:22:19', 'voyager.collections.index', 'null'),
(24, 1, 'Quản lý sản phẩm', '', '_self', 'voyager-categories', '#000000', NULL, 2, '2023-05-28 19:21:56', '2023-05-29 01:00:04', NULL, ''),
(25, 1, 'Cây trồng', '', '_self', 'voyager-tree', NULL, 27, 2, '2023-05-28 19:31:01', '2023-05-28 19:33:42', 'voyager.crops.index', NULL),
(26, 1, 'Danh mục cây trồng', '', '_self', 'voyager-buy', NULL, 27, 1, '2023-05-28 19:32:27', '2023-05-28 19:33:37', 'voyager.classifies.index', NULL),
(27, 1, 'Quản lý cây trồng', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2023-05-28 19:33:20', '2023-05-29 01:00:04', NULL, ''),
(28, 1, 'Quản lý nội dung', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2023-05-28 19:37:00', '2023-05-29 01:00:04', NULL, ''),
(29, 1, 'Quản lý tài khoản', '', '_self', 'voyager-people', '#000000', NULL, 5, '2023-05-28 19:38:19', '2023-05-29 01:00:04', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MultiImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `type`, `MultiImage`) VALUES
(1, 1, 'KỲ DIỆU CAO NGUYÊN TRẮNG', 'Nằm ở phía Đông Bắc tỉnh Lào Cai, cách Hà Nội hơn 300km về phía Bắc, giao thông kết nối thuận lợi trên cao tốc Nội Bài – Lào Cai, ở độ cao gần 1000m so với mặt nước biển, khí hậu ở đây quanh năm mát mẻ, miền cao nguyên Bắc Hà là mảnh đất lưu giữ những nét văn hóa và cảnh đẹp độc đáo trên vùng núi cao.', '<p>Nằm ở ph&iacute;a Đ&ocirc;ng Bắc tỉnh L&agrave;o Cai, c&aacute;ch H&agrave; Nội hơn 300km về ph&iacute;a Bắc, giao th&ocirc;ng kết nối thuận lợi tr&ecirc;n cao tốc Nội B&agrave;i &ndash; L&agrave;o Cai, ở độ cao gần 1000m so với mặt nước biển, kh&iacute; hậu ở đ&acirc;y quanh năm m&aacute;t mẻ, miền cao nguy&ecirc;n Bắc H&agrave; l&agrave; mảnh đất lưu giữ những n&eacute;t văn h&oacute;a v&agrave; cảnh đẹp độc đ&aacute;o tr&ecirc;n v&ugrave;ng n&uacute;i cao.</p>\r\n<p>T&ecirc;n gọi Bắc H&agrave; c&oacute; nguồn gốc từ tiếng T&agrave;y&nbsp;<span class=\"txt_weight_semibold\">&ldquo;Pạc kha&rdquo;</span>&nbsp;nghĩa l&agrave;&nbsp;<span class=\"txt_weight_semibold\">&ldquo;trăm b&oacute; gianh&rdquo;</span>. Thời thuộc Ph&aacute;p, người Ph&aacute;p ghi lại &acirc;m Pạc kha bằng chữ c&aacute;i latinh th&agrave;nh Pakha. Người Việt sau n&agrave;y đọc th&agrave;nh Bắc H&agrave; v&agrave; dần trở th&agrave;nh t&ecirc;n gọi ch&iacute;nh thức của v&ugrave;ng đất n&agrave;y.</p>', 'pages/May2023/Y4DX8WSeBXEqOfu6I7UY.png', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-05-28 18:38:07', '2023-05-30 00:50:30', 'home_page', '[\"pages/img_intro_37cf6.jpg\",\"pages/screenshot_1685342757.png\",\"pages/screenshot_1685331992.png\"]'),
(2, 1, 'Giới thiệu', 'Nằm ở phía Đông Bắc tỉnh Lào Cai, cách Hà Nội hơn 300km về phía Bắc, giao thông kết nối thuận lợi trên cao tốc Nội Bài – Lào Cai, ở độ cao gần 1000m so với mặt nước biển, khí hậu ở đây quanh năm mát mẻ, miền cao nguyên Bắc Hà là mảnh đất lưu giữ những nét văn hóa và cảnh đẹp độc đáo trên vùng núi cao.', '<p>Nằm ở ph&iacute;a Đ&ocirc;ng Bắc tỉnh L&agrave;o Cai, c&aacute;ch H&agrave; Nội hơn 300km về ph&iacute;a Bắc, giao th&ocirc;ng kết nối thuận lợi tr&ecirc;n cao tốc Nội B&agrave;i &ndash; L&agrave;o Cai, ở độ cao gần 1000m so với mặt nước biển, kh&iacute; hậu ở đ&acirc;y quanh năm m&aacute;t mẻ, miền cao nguy&ecirc;n Bắc H&agrave; l&agrave; mảnh đất lưu giữ những n&eacute;t văn h&oacute;a v&agrave; cảnh đẹp độc đ&aacute;o tr&ecirc;n v&ugrave;ng n&uacute;i cao.</p>\r\n<p>T&ecirc;n gọi Bắc H&agrave; c&oacute; nguồn gốc từ tiếng T&agrave;y&nbsp;<span class=\"txt_weight_semibold\">&ldquo;Pạc kha&rdquo;</span>&nbsp;nghĩa l&agrave;&nbsp;<span class=\"txt_weight_semibold\">&ldquo;trăm b&oacute; gianh&rdquo;</span>. Thời thuộc Ph&aacute;p, người Ph&aacute;p ghi lại &acirc;m Pạc kha bằng chữ c&aacute;i latinh th&agrave;nh Pakha. Người Việt sau n&agrave;y đọc th&agrave;nh Bắc H&agrave; v&agrave; dần trở th&agrave;nh t&ecirc;n gọi ch&iacute;nh thức của v&ugrave;ng đất n&agrave;y.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://sohoavungtrong.kennatech.vn//storage/pages/May2023/screenshot_1685429327.png\" alt=\"\" width=\"100%\" height=\"100%\"></p>\r\n<p>Bắc H&agrave;, v&ugrave;ng đất c&oacute; mỹ danh&nbsp;<span class=\"txt_weight_semibold\">&ldquo;Cao nguy&ecirc;n trắng&rdquo;</span>&nbsp;bởi mỗi m&ugrave;a xu&acirc;n về n&uacute;i đồi phủ trắng hoa mận, hoa l&ecirc;. Bắc H&agrave; c&ograve;n nổi tiếng với những kị sĩ tr&ecirc;n lưng ngựa kh&ocirc;ng y&ecirc;n cương, vang tiếng v&oacute; ngựa khắp v&ugrave;ng cao T&acirc;y Bắc c&ugrave;ng tiếng s&aacute;o M&egrave;o trầm bổng b&ecirc;n những ngọn sa mộc v&uacute;t giữa trời xanh v&agrave; những phi&ecirc;n chợ v&ugrave;ng cao tr&agrave;n ngập sắc m&agrave;u của c&aacute;c d&acirc;n tộc H&rsquo;M&ocirc;ng, T&agrave;y, Dao, Ph&ugrave; L&aacute;, La Ch&iacute;&hellip;. đang sinh sống tại đ&acirc;y.</p>\r\n<p><span class=\"txt_weight_semibold\">Bắc H&agrave;</span>&nbsp;kh&ocirc;ng cho&aacute;ng ngợp trong lần đầu gặp gỡ m&agrave; nhẹ nh&agrave;ng len lỏi v&agrave;o tr&aacute;i tim mỗi du kh&aacute;ch theo bước ch&acirc;n của bốn m&ugrave;a: sự ch&acirc;n t&igrave;nh ấm &aacute;p của người Bắc H&agrave;, sự rung động của m&ugrave;a xu&acirc;n hoa mận, hoa l&ecirc; phủ trắng x&oacute;a cả n&uacute;i đồi, của ho&agrave;ng h&ocirc;n m&ugrave;a h&egrave; ki&ecirc;u bạc, của m&ugrave;a thu đằm thắm l&uacute;a v&agrave;ng tr&ecirc;n những thửa ruộng bậc thang v&agrave; của m&ugrave;a đ&ocirc;ng bồng bềnh m&acirc;y trắng. Vẻ đẹp hoang sơ của Bắc H&agrave; cứ thế thấm dần v&agrave;o t&acirc;m tr&iacute; du kh&aacute;ch, khiến người ta như đắm như say trong men rượu ng&ocirc; hồng mi tr&ecirc;n n&uacute;i cao.</p>\r\n<p>Đến với Bắc H&agrave; kh&ocirc;ng phải l&agrave; cuộc rong chơi lướt qua l&agrave; một h&agrave;nh tr&igrave;nh trải nghiệm v&ugrave;ng cao nguy&ecirc;n, nhẹ nh&agrave;ng tận hưởng cảnh đẹp n&uacute;i rừng, đời sống văn h&oacute;a đầy bản sắc v&agrave; con người ch&acirc;n t&igrave;nh, s&acirc;u lắng.</p>', NULL, 'gioi-thieu', NULL, NULL, 'ACTIVE', '2023-05-28 19:49:35', '2023-05-29 23:44:32', 'about', '[]'),
(3, 1, 'Middle Home', 'Middle Home', NULL, NULL, 'middle-home', NULL, NULL, 'ACTIVE', '2023-05-28 21:13:00', '2023-05-28 23:48:56', 'middle_home', '[\"pages/screenshot_1685343146.png\",\"pages/screenshot_1685343221.png\",\"pages/screenshot_1685343228.png\"]');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(2, 'browse_bread', NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(3, 'browse_database', NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(4, 'browse_media', NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(5, 'browse_compass', NULL, '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(6, 'browse_menus', 'menus', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(7, 'read_menus', 'menus', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(8, 'edit_menus', 'menus', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(9, 'add_menus', 'menus', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(10, 'delete_menus', 'menus', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(11, 'browse_roles', 'roles', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(12, 'read_roles', 'roles', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(13, 'edit_roles', 'roles', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(14, 'add_roles', 'roles', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(15, 'delete_roles', 'roles', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(16, 'browse_users', 'users', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(17, 'read_users', 'users', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(18, 'edit_users', 'users', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(19, 'add_users', 'users', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(20, 'delete_users', 'users', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(21, 'browse_settings', 'settings', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(22, 'read_settings', 'settings', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(23, 'edit_settings', 'settings', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(24, 'add_settings', 'settings', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(25, 'delete_settings', 'settings', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(26, 'browse_categories', 'categories', '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(27, 'read_categories', 'categories', '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(28, 'edit_categories', 'categories', '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(29, 'add_categories', 'categories', '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(30, 'delete_categories', 'categories', '2023-05-28 18:38:06', '2023-05-28 18:38:06'),
(31, 'browse_posts', 'posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(32, 'read_posts', 'posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(33, 'edit_posts', 'posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(34, 'add_posts', 'posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(35, 'delete_posts', 'posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(36, 'browse_pages', 'pages', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(37, 'read_pages', 'pages', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(38, 'edit_pages', 'pages', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(39, 'add_pages', 'pages', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(40, 'delete_pages', 'pages', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(41, 'browse_banners', 'banners', '2023-05-28 18:56:24', '2023-05-28 18:56:24'),
(42, 'read_banners', 'banners', '2023-05-28 18:56:24', '2023-05-28 18:56:24'),
(43, 'edit_banners', 'banners', '2023-05-28 18:56:24', '2023-05-28 18:56:24'),
(44, 'add_banners', 'banners', '2023-05-28 18:56:24', '2023-05-28 18:56:24'),
(45, 'delete_banners', 'banners', '2023-05-28 18:56:24', '2023-05-28 18:56:24'),
(46, 'browse_products', 'products', '2023-05-28 19:18:09', '2023-05-28 19:18:09'),
(47, 'read_products', 'products', '2023-05-28 19:18:09', '2023-05-28 19:18:09'),
(48, 'edit_products', 'products', '2023-05-28 19:18:09', '2023-05-28 19:18:09'),
(49, 'add_products', 'products', '2023-05-28 19:18:09', '2023-05-28 19:18:09'),
(50, 'delete_products', 'products', '2023-05-28 19:18:10', '2023-05-28 19:18:10'),
(51, 'browse_collections', 'collections', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(52, 'read_collections', 'collections', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(53, 'edit_collections', 'collections', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(54, 'add_collections', 'collections', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(55, 'delete_collections', 'collections', '2023-05-28 19:20:17', '2023-05-28 19:20:17'),
(56, 'browse_crops', 'crops', '2023-05-28 19:31:01', '2023-05-28 19:31:01'),
(57, 'read_crops', 'crops', '2023-05-28 19:31:01', '2023-05-28 19:31:01'),
(58, 'edit_crops', 'crops', '2023-05-28 19:31:01', '2023-05-28 19:31:01'),
(59, 'add_crops', 'crops', '2023-05-28 19:31:01', '2023-05-28 19:31:01'),
(60, 'delete_crops', 'crops', '2023-05-28 19:31:01', '2023-05-28 19:31:01'),
(61, 'browse_classifies', 'classifies', '2023-05-28 19:32:27', '2023-05-28 19:32:27'),
(62, 'read_classifies', 'classifies', '2023-05-28 19:32:27', '2023-05-28 19:32:27'),
(63, 'edit_classifies', 'classifies', '2023-05-28 19:32:27', '2023-05-28 19:32:27'),
(64, 'add_classifies', 'classifies', '2023-05-28 19:32:27', '2023-05-28 19:32:27'),
(65, 'delete_classifies', 'classifies', '2023-05-28 19:32:27', '2023-05-28 19:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'Bắc Hà quảng cáo điểm di tích, điểm du lịch qua mã Qr code', NULL, 'Nhằm quảng bá, giới thiệu khái quát các di tích lịch sử, điểm du lịch tới du khách trong nước và quốc tế, ngày 27/9 UBND huyện Bắc Hà lắp đặt 3 điểm quét mã QR tại di tích Dinh Hoàng A Tưởng, đền Bắc Hà, điểm dừng chân Km7.', '<p>Nhằm quảng b&aacute;, giới thiệu kh&aacute;i qu&aacute;t c&aacute;c di t&iacute;ch lịch sử, điểm du lịch tới du kh&aacute;ch trong nước v&agrave; quốc tế, ng&agrave;y 27/9 UBND huyện Bắc H&agrave; lắp đặt 3 điểm qu&eacute;t m&atilde; QR tại di t&iacute;ch Dinh Ho&agrave;ng A Tưởng, đền Bắc H&agrave;, điểm dừng ch&acirc;n Km7.</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><img class=\"alignnone wp-image-4015 b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/10/dinh-hoang-a-tuong-300x225.jpg\" sizes=\"(max-width: 372px) 100vw, 372px\" srcset=\"https://dulichbacha.net/wp-content/uploads/2021/10/dinh-hoang-a-tuong-300x225.jpg 300w, https://dulichbacha.net/wp-content/uploads/2021/10/dinh-hoang-a-tuong-86x64.jpg 86w, https://dulichbacha.net/wp-content/uploads/2021/10/dinh-hoang-a-tuong-600x450.jpg 600w, https://dulichbacha.net/wp-content/uploads/2021/10/dinh-hoang-a-tuong.jpg 612w\" alt=\"\" width=\"372\" height=\"279\">\r\n<p>&nbsp;</p>\r\n<p><em>M&atilde; qr code đặt tại Dinh Ho&agrave;ng A Tưởng</em></p>\r\n</td>\r\n<td><img class=\"alignnone wp-image-4016 b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-300x225.jpg\" sizes=\"(max-width: 375px) 100vw, 375px\" srcset=\"https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-300x225.jpg 300w, https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-1024x768.jpg 1024w, https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-768x576.jpg 768w, https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-86x64.jpg 86w, https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha-600x450.jpg 600w, https://dulichbacha.net/wp-content/uploads/2021/10/tai-den-bac-ha.jpg 1280w\" alt=\"\" width=\"375\" height=\"281\">\r\n<p>&nbsp;</p>\r\n<p><em>M&atilde; qr code đặt tại Đền Bắc H&agrave;</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Chỉ với những thao t&aacute;c đơn giản bằng điện thoại th&ocirc;ng minh, kh&aacute;ch du lịch khi đến với huyện Bắc H&agrave; tỉnh L&agrave;o Cai c&oacute; thể dễ d&agrave;ng t&igrave;m điểm du lịch muốn thăm quan th&ocirc;ng qua m&atilde; QR code Nội dung th&ocirc;ng tin điểm đến sẽ được hiển thị th&ocirc;ng qua sự li&ecirc;n kết với website cổng th&ocirc;ng tin điện tử của huyện. Từ đ&oacute;, kh&aacute;ch sẽ nắm được th&ocirc;ng tin về di t&iacute;ch, điểm đến m&agrave; kh&ocirc;ng cần sự c&oacute; mặt của thuyết minh vi&ecirc;n&rdquo;. với 16 di t&iacute;ch v&agrave; điểm du lịch được gắn m&atilde; Qr-code.</p>\r\n<p>&nbsp;Bắc H&agrave; hiện nay c&oacute; 5 di t&iacute;ch 13 di sản văn h&oacute;a phi vật thể được xếp hạng cấp Quốc gia gồm:</p>\r\n<p>Di t&iacute;ch lịch sử văn h&oacute;a 2 di t&iacute;ch đ&atilde; được nh&agrave; nước xếp hạng (Đền Bắc H&agrave; năm 2003, Đền Trung đ&ocirc; năm 2008)</p>\r\n<p>Di t&iacute;ch lịch sử kiến tr&uacute;c (Dinh thự cổ Ho&agrave;ng A Tưởng) đ&atilde; được nh&agrave; nước xếp hạng năm 1999.</p>\r\n<p>Di t&iacute;ch danh thắng (Động Thi&ecirc;n Long) được nh&agrave; nước xếp hạng năm 2013.</p>\r\n<p>Di t&iacute;ch Đồn Bắc H&agrave; Ph&ograve;ng Văn h&oacute;a TT đang t&iacute;ch cực hối hợp Bảo t&agrave;ng tỉnh thu thập th&ocirc;ng tin, lập hồ sơ đề nghị c&ocirc;ng nhận di t&iacute;ch cấp tỉnh dự kiến ho&agrave;n th&agrave;nh cuối th&aacute;ng 8/2021.</p>\r\n<p><em>13 di sản văn h&oacute;a &nbsp;trong đ&oacute;</em></p>\r\n<p>Di sản vật thể c&acirc;y nghiến 1000 năm tuổi được c&ocirc;ng nhận năm 2018</p>\r\n<p>Di sản phi vật thể (Lễ hội: Gầu t&agrave;o, nhảy lửa, xuống đồng, c&uacute;ng rừng, lễ hội đền Bắc H&agrave;, lễ hội đền Trung Đ&ocirc;, Chữ N&ocirc;m của người Dao, Nghi lễ cấp sắc của người Dao, Nghi lễ then của người T&agrave;y, Nghệ thuật m&uacute;a kh&egrave;n của người M&ocirc;ng.</p>\r\n<p>Di sản phi vật thể nh&acirc;n loại: Nghi lễ k&eacute;o co đồng b&agrave;o d&acirc;n tộc T&agrave;y th&ocirc;n Trung đ&ocirc; x&atilde; Bản Nhai được Unesco c&ocirc;ng nhận năm 2018.</p>\r\n<p>Di sản phi vật thể cấp Quốc gia: M&uacute;a x&ograve;e (the) được c&ocirc;ng nhận năm 2014;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đặc biệt trong 7 th&aacute;ng đầu năm đ&atilde; được Bộ Văn h&oacute;a, Thể thao v&agrave; Du lịch c&ocirc;ng nhận Lễ hội đua ngựa v&agrave; Nghệ thuật th&ecirc;u tr&ecirc;n trang phục của người M&ocirc;ng hoa x&atilde; Bản Phố l&agrave; di sản Văn h&oacute;a phi vật thể cấp Quốc gia; Được tổ chức lỷ lục Giness Việt Nam c&ocirc;ng nhận top 100 m&oacute;n ăn đặc sản Việt Nam gồm x&ocirc;i bảy m&agrave;u v&agrave; thắng cố ngựa Bắc H&agrave;.</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><img class=\"alignnone wp-image-4018 b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/10/dua-ngua-300x199.jpg\" sizes=\"(max-width: 368px) 100vw, 368px\" srcset=\"https://dulichbacha.net/wp-content/uploads/2021/10/dua-ngua-300x199.jpg 300w, https://dulichbacha.net/wp-content/uploads/2021/10/dua-ngua-600x398.jpg 600w, https://dulichbacha.net/wp-content/uploads/2021/10/dua-ngua.jpg 640w\" alt=\"\" width=\"368\" height=\"244\">\r\n<p>&nbsp;</p>\r\n<p>Lễ hội đua ngựa Bắc H&agrave;</p>\r\n</td>\r\n<td><img class=\"alignnone wp-image-4024 b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/10/0ahoavan13-300x214.jpg\" sizes=\"(max-width: 350px) 100vw, 350px\" srcset=\"https://dulichbacha.net/wp-content/uploads/2021/10/0ahoavan13-300x214.jpg 300w, https://dulichbacha.net/wp-content/uploads/2021/10/0ahoavan13.jpg 397w\" alt=\"\" width=\"350\" height=\"250\"><br>Trang phục M&ocirc;ng Hoa x&atilde; Bản Phố</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ETH;ẩy mạnh ứng dụng c&ocirc;ng nghệ, ph&aacute;t triển du lịch th&ocirc;ng minh l&agrave; xu thế chung của ng&agrave;nh du lịch trong những năm gần đ&acirc;y. Thời gian qua c&aacute;c điểm di t&iacute;ch, tham quan, được UBND huyện triển khai nhiều hoạt động ứng dụng c&ocirc;ng nghệ trong giới thiệu, quảng b&aacute;, quản l&yacute; du lịch như: Phối hợp với trung t&acirc;m Gred x&acirc;y dựng website tại địa chỉ:&nbsp;<a href=\"https://www.bachatourism.com/\">https://www.bachatourism.com/</a>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp với Sở Văn h&oacute;a, Thể thao v&agrave; du lịch x&acirc;y dựng dữ liệu c&aacute;c nh&agrave; nghỉ, nh&agrave; h&agrave;ng điểm du lịch tr&ecirc;n địa b&agrave;n huyện th&ocirc;ng qua địa chỉ&nbsp;<a href=\"https://laocaitourism.vn/vi/places\">https://laocaitourism.vn/vi/places</a>&nbsp;&nbsp;hoặc app &ldquo;Du lịch L&agrave;o Cai&rdquo; &nbsp;tr&ecirc;n điện thoại&nbsp;để giới thiệu điểm du lịch hay trợ gi&uacute;p kh&aacute;ch đặt c&aacute;c dịch vụ du lịch như ăn, nghỉ, đi lại&hellip;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ETH;ại dịch Covid-19 khiến kh&aacute;ch c&oacute; xu hướng du lịch theo nh&oacute;m nhỏ, c&aacute; nh&acirc;n, tự kh&aacute;m ph&aacute;, trải nghiệm, do đ&oacute;, Ph&ograve;ng Văn h&oacute;a th&ocirc;ng tin; c&acirc;u lạc bộ du lịch đ&atilde; tạo nhiều trang quảng b&aacute; h&igrave;nh ảnh con người Bắc H&agrave; tr&ecirc;n nhiều nền tảng kh&aacute;c nhau như:&nbsp;<a href=\"https://dulichbacha.net/\">https://dulichbacha.net</a>/;&nbsp;<a href=\"https://www.bachatourism.com/\">https://www.bachatourism.com/</a>;&nbsp;<a href=\"https://www.facebook.com/dulichbachalc\">https://www.facebook.com/dulichbachalc</a>;&nbsp;<a href=\"https://www.facebook.com/groups/2788584197919525\">https://www.facebook.com/groups/2788584197919525</a>&nbsp;,&hellip;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong Thời gian tới huyện Bắc H&agrave; sẽ tiếp tục triển khai dự &aacute;n &ldquo;Số h&oacute;a dữ liệu, x&acirc;y dựng hệ thống tương t&aacute;c 360&deg; quảng b&aacute; di sản văn h&oacute;a v&agrave; du lịch của huyện Bắc H&agrave;.</p>\r\n<p><em>Theo LCĐT</em></p>', 'posts/May2023/M63LWZZtdbHej41B5tp8.jpg', 'bac-ha-quang-cao-diem-di-tich-diem-du-lich-qua-ma-qr-code', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 19:40:04', '2023-05-28 20:50:02'),
(6, 1, 2, 'Kỹ thuật chăm sóc cây ăn trái sau thu hoạch đúng kỹ thuật', NULL, 'Cây ăn trái là loại cây được trồng rất phổ biến ở nhiều vùng miền nước ta. Để cây cho năng suất cao trong những vụ tiếp theo thì sau thu hoạch, bà con cần có giải pháp chăm sóc phù hợp. Chăm sóc cây ăn trái sau thu hoạch đúng kỹ thuật dưới đây được Công ty Phân bón Hà Lan sẽ giúp bà con có được cẩm nang hữu ích nhất.', '<p>C&acirc;y ăn tr&aacute;i l&agrave; loại c&acirc;y được trồng rất phổ biến ở nhiều v&ugrave;ng miền nước ta. Để c&acirc;y cho năng suất cao trong những vụ tiếp theo th&igrave; sau thu hoạch, b&agrave; con cần c&oacute; giải ph&aacute;p chăm s&oacute;c ph&ugrave; hợp.&nbsp;<strong>Chăm sóc c&acirc;y ăn trái sau thu hoạch</strong><strong>&nbsp;</strong>đ&uacute;ng kỹ thuật dưới đ&acirc;y được&nbsp;sẽ gi&uacute;p b&agrave; con c&oacute; được cẩm nang hữu &iacute;ch nhất.</p>\r\n<h2>Tại sao cần chăm sóc c&acirc;y ăn trái sau thu hoạch?</h2>\r\n<p>Qu&aacute; tr&igrave;nh c&acirc;y ra hoa, kết tr&aacute;i trải qua thời gian kh&aacute; d&agrave;i. Việc nu&ocirc;i tr&aacute;i tr&ecirc;n th&acirc;n v&agrave; c&agrave;nh đ&atilde; khiến cho c&acirc;y hao tổn nhiều dinh dưỡng v&igrave; c&acirc;y phải huy động nhiều năng lượng để cung cấp dưỡng chất thiết yếu để tr&aacute;i to lớn nhanh. Sau mỗi vụ thu hoạch, c&acirc;y gần như kiệt quệ về thể chất, ch&uacute;ng ta cần phải nhanh ch&oacute;ng t&igrave;m giải ph&aacute;p để phục hồi, chăm sóc c&acirc;y ăn trái sau mỗi m&ugrave;a vụ.</p>\r\n<p><img class=\"aligncenter size-full wp-image-6397\" src=\"https://halan.net/wp-content/uploads/2023/05/tai-sao-can-cham-so%CC%81c-cay-an-tra%CC%81i-sau-thu-hoa%CC%A3ch.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://halan.net/wp-content/uploads/2023/05/tai-sao-can-cham-sóc-cay-an-trái-sau-thu-hoạch.jpg 700w, https://halan.net/wp-content/uploads/2023/05/tai-sao-can-cham-sóc-cay-an-trái-sau-thu-hoạch-300x171.jpg 300w, https://halan.net/wp-content/uploads/2023/05/tai-sao-can-cham-sóc-cay-an-trái-sau-thu-hoạch-600x343.jpg 600w\" alt=\"tại sao cần chăm sóc c&acirc;y ăn trái sau thu hoạch?\" width=\"700\" height=\"400\" loading=\"lazy\"></p>\r\n<p>Mặt kh&aacute;c, do phải huy động nhiều chất dinh dưỡng để nu&ocirc;i tr&aacute;i, v&igrave; thế rễ c&acirc;y cũng h&uacute;t nhiều chất dinh dưỡng từ đất trồng. Việc mất kh&aacute; nhiều dinh dưỡng trong đất sẽ khiến đất cằn cỗi, c&acirc;y suy kiệt sức khỏe. Cần chăm s&oacute;c c&acirc;y tốt để đảm bảo đủ tiềm lực ph&aacute;t triển, đơm hoa v&agrave; kết tr&aacute;i những vụ tiếp theo. Đảm bảo mang lại năng suất cao cũng như chất lượng tốt nhất, tr&aacute;i lớn nhanh, ngon hơn, đ&aacute;p ứng được c&aacute;c ti&ecirc;u ch&iacute; về năng suất.</p>\r\n<p>Ngo&agrave;i ra, thời gian nu&ocirc;i tr&aacute;i của m&ugrave;a vụ trước cũng khiến cho c&acirc;y chịu rất nhiều &aacute;p lực tấn c&ocirc;ng của nhiều loại s&acirc;u bệnh hại. C&aacute;c loại trứng s&acirc;u v&agrave; mầm bệnh c&oacute; thể vẫn c&ograve;n được lưu giữ tr&ecirc;n th&acirc;n c&acirc;y. Cần c&oacute; biện ph&aacute;p ph&ograve;ng trừ s&acirc;u bệnh để loại bỏ s&acirc;u bệnh hại c&acirc;y trồng, đảm bảo c&acirc;y vẫn ph&aacute;t triển tốt, kh&ocirc;ng ảnh hưởng đến khả năng đậu quả.</p>', 'posts/May2023/I5OVysvti9PjgXATFqQS.jpg', 'ky-thuat-cham-so-c-cay-an-tra-i-sau-thu-hoach-dung-ky-thuat', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 19:56:23', '2023-05-28 19:56:23'),
(7, 1, 1, 'Vùng cao Bắc Hà trúng mùa 2 loại hạt vàng', NULL, 'Vụ lúa hè thu là vụ mùa chính trong năm ở vùng cao Bắc Hà. Thời gian thu hoạch lúa thường kéo dài trong khoảng hơn 1 tháng, từ tháng 9 đến giữa tháng 10 dương lịch. Chính vì vậy, vụ thu hoạch này cũng được xem là mùa hy vọng, mùa vàng no ấm của đồng bào các dân tộc thiểu số vùng cao Bắc Hà.', '<h2 class=\"\">L&uacute;a ng&ocirc; được m&ugrave;a lớn</h2>\r\n<p class=\"\">Vụ l&uacute;a h&egrave; thu l&agrave; vụ m&ugrave;a ch&iacute;nh trong năm ở v&ugrave;ng cao Bắc H&agrave;. Thời gian thu hoạch l&uacute;a thường k&eacute;o d&agrave;i trong khoảng hơn 1 th&aacute;ng, từ th&aacute;ng 9 đến giữa th&aacute;ng 10 dương lịch. Ch&iacute;nh v&igrave; vậy, vụ thu hoạch n&agrave;y cũng được xem l&agrave; m&ugrave;a hy vọng, m&ugrave;a v&agrave;ng no ấm của đồng b&agrave;o c&aacute;c d&acirc;n tộc thiểu số v&ugrave;ng cao Bắc H&agrave;.</p>\r\n<p class=\"\">Tại x&atilde; v&ugrave;ng cao Tả Van Chư, những ng&agrave;y n&agrave;y đồng b&agrave;o M&ocirc;ng đang tranh thủ thời tiết thuận lợi khẩn trương thu hoạch l&uacute;a ch&iacute;nh vụ năm 2021.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366519793387790336\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 1.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/4-1632649127140489531058.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 1.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/4-1632649127140489531058.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Đồng b&agrave;o M&ocirc;ng x&atilde; Tả Van Chư gặt l&uacute;a tr&ecirc;n những thửa ruộng bậc thang. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"\">Tr&ecirc;n khu nương ruộng c&aacute;c th&ocirc;n Tẩn Chư, S&iacute;n Chải, Sừ Mừn Khang, b&agrave; con đ&atilde; gặt xong c&aacute;c thửa l&uacute;a ch&iacute;n sớm. Theo phản &aacute;nh của b&agrave; con, năm nay nhờ điều kiện thời tiết, kh&iacute; hậu thuận lợi, mưa đều hơn mọi năm, đủ nước tưới ti&ecirc;u, đặc biệt l&agrave; nhờ &aacute;p dụng c&aacute;c giống l&uacute;a lai v&agrave;o gieo cấy m&agrave; ruộng n&agrave;o cũng sai trĩu hạt, hạt chắc mẩy v&agrave;ng &oacute;ng ả.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366520130082394112\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 2.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/3-16326492020601017880309.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/3-16326492020601017880309.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p spellcheck=\"true\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Mặc d&ugrave; đ&atilde; được cơ giới h&oacute;a song vẫn c&ograve;n một số hộ d&acirc;n gặt, đập l&uacute;a thủ c&ocirc;ng. Khi dịch Covid-19 chưa b&ugrave;ng ph&aacute;t, đ&acirc;y ch&iacute;nh l&agrave; những h&igrave;nh ảnh đẹp h&uacute;t kh&aacute;ch du lịch. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<div class=\"aries_stage aries_horizontalAxis\">\r\n<div class=\"aries_proscenium aries_hcenter aries_vcenter aries_rollAnimation\">\r\n<div class=\"aries_videoWrapper\">\r\n<div class=\"aries_videoPlayer aries_prepared\">\r\n<div class=\"aries_wrapperLayer aries_adSlot aries_ima_sdk\">\r\n<div>Anh Ma Seo Lếnh, th&ocirc;n S&iacute;n Chải, x&atilde; Tả Văn Chư phấn khởi bảo: &ldquo;Đợt n&agrave;y trời c&oacute; mưa nhiều n&ecirc;n tranh thủ ng&agrave;y c&oacute; nắng nh&agrave; m&igrave;nh nhờ b&agrave; con, anh em đi thu l&uacute;a hộ. L&uacute;a ch&iacute;n hết rồi, b&ocirc;ng n&agrave;o cũng trĩu hạt, đẹp lắm. Nh&agrave; m&igrave;nh cấy 10kg l&uacute;a giống, gồm 5kg giống l&uacute;a lai Th&aacute;i B&igrave;nh, c&ograve;n lại l&agrave; giống l&uacute;a lai L&agrave;o Cai. Cả hai giống n&agrave;y đều được m&ugrave;a, nếu thu hoạch hết chắc nh&agrave; t&ocirc;i sẽ được hơn 100 bao l&uacute;a. Mỗi bao hơn 30kg, t&iacute;nh ra được hơn 3 tấn th&oacute;c, nh&agrave; c&oacute; 5 khẩu, chắc l&agrave; đủ ăn gần 2 năm&rdquo;.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"\">Tr&ograve; chuyện với PV, anh Lếnh cho biết: &ldquo;Mấy năm trước m&igrave;nh v&agrave; vợ c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc;, vất vả lắm. Hơn 2 năm mới về, chắt b&oacute;p m&atilde;i được hơn 100 triệu đồng l&agrave;m nh&agrave; song m&igrave;nh bị cụt mất 3 ng&oacute;n tay. 2 năm nay v&agrave; cả sắp tới m&igrave;nh kh&ocirc;ng đi qua b&ecirc;n kia bi&ecirc;n giới l&agrave;m thu&ecirc; nữa&rdquo;.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366519630305800192\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 3.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/lua-bac-ha-1-1632649087258731447700.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/lua-bac-ha-1-1632649087258731447700.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Những thửa ruộng ch&iacute;n v&agrave;ng, trĩu b&ocirc;ng gi&uacute;p b&agrave; con đảm bảo an ninh lương thực, nhiều hộ c&oacute; của ăn của để kh&ocirc;ng c&ograve;n phải sang b&ecirc;n kia bi&ecirc;n giới Trung Quốc l&agrave;m thu&ecirc; nữa. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"\">Anh Lếnh kể th&ecirc;m: &ldquo;Ở nh&agrave; l&agrave;m n&ocirc;ng đủ ăn rồi, nu&ocirc;i được 2 con trai v&agrave; g&aacute;i th&ocirc;i! Vợ chồng đi sang Trung Quốc l&agrave;m thu&ecirc;, con c&aacute;i nhớ bố mẹ lắm. Về nh&agrave; rồi, n&oacute; kh&oacute;c kh&ocirc;ng cho đi th&igrave; m&igrave;nh v&agrave; vợ bảo nhau kh&ocirc;ng đi nữa, đủ th&oacute;c l&uacute;a ăn, đủ ng&ocirc; nu&ocirc;i g&agrave; lợn. Với lại sợ dịch Covid-19 lắm, chẳng may nhiễm bệnh rồi chết nơi đất kh&aacute;ch qu&ecirc; người th&igrave; kh&ocirc;ng ai nu&ocirc;i con nhỏ v&agrave; b&agrave; cụ gi&agrave;&rdquo;.</p>\r\n<p class=\"\">Vụ l&uacute;a ch&iacute;nh vụ năm 2021, b&agrave; con n&ocirc;ng d&acirc;n x&atilde; Tả Văn Chư gieo cấy tr&ecirc;n 153ha l&uacute;a, đạt 100% kế hoạch, với 100% diện t&iacute;ch l&agrave; giống l&uacute;a lai L&agrave;o Cai v&agrave; Th&aacute;i B&igrave;nh, gồm c&aacute;c giống l&uacute;a như: HL12, RVT v&agrave; nh&oacute;m giống LC.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366520129560494080\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 4.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/2-1632649202055263933843.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/2-1632649202055263933843.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p spellcheck=\"true\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Ngo&agrave;i c&aacute;c giống l&uacute;a lai, n&ocirc;ng d&acirc;n Bắc H&agrave; cũng cấy c&aacute;c giống l&uacute;a đặc sản địa phương như gạo hạt tr&ograve;n Bản Liền, Khẩu Nậm X&iacute;t, S&eacute;ng C&ugrave;. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"\">&Ocirc;ng B&ugrave;i Văn Nam &ndash; Chủ tịch UBND x&atilde; Tả Văn Chư phấn khởi cho biết: Trước khi v&agrave;o vụ, ch&iacute;nh quyền x&atilde; đ&atilde; vận động b&agrave; con tiến h&agrave;nh nạo v&eacute;t k&ecirc;nh mương bảo đảm nước tưới ti&ecirc;u, t&iacute;n chấp vay vốn gi&uacute;p người d&acirc;n c&oacute; điều kiện sản xuất; phối hợp chuyển giao tiến bộ khoa học kỹ thuật, cử c&aacute;n bộ n&ocirc;ng&nbsp;&ndash; l&acirc;m nghiệp v&agrave; c&aacute;n bộ khuyến n&ocirc;ng x&atilde; thường xuy&ecirc;n b&aacute;m s&aacute;t đồng ruộng, hướng dẫn n&ocirc;ng d&acirc;n cấy h&aacute;i, chăm s&oacute;c, ph&ograve;ng trừ s&acirc;u bệnh hại l&uacute;a. Nhờ kh&iacute; hậu thuận lợi n&ecirc;n năm nay l&uacute;a ch&iacute;nh vụ được m&ugrave;a, gi&uacute;p b&agrave; con c&oacute; th&ecirc;m thu nhập, ổn định đời sống.</p>\r\n<h3 class=\"\">Chủ động hỗ trợ b&agrave; con trồng l&uacute;a, trồng ng&ocirc; hiệu quả</h3>\r\n<div id=\"zone-k57lxxr9\">\r\n<div id=\"share-k57ly1bh\">\r\n<div id=\"placement-kpm0j48t\">\r\n<div id=\"banner-k57lxxr9-kpm0j4p7\">\r\n<div id=\"slot-1-k57lxxr9-kpm0j4p7\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"\">Vụ l&uacute;a m&ugrave;a năm 2021, b&agrave; con n&ocirc;ng d&acirc;n huyện Bắc H&agrave; cấy 2.798ha/2.770ha, đạt 101% kế hoạch, tăng 61ha so với vụ m&ugrave;a năm 2020, chủ yếu l&agrave; c&aacute;c giống l&uacute;a lai, thực hiện tr&ecirc;n c&aacute;nh đồng một giống v&agrave; giống l&uacute;a đặc sản địa phương như gạo hạt tr&ograve;n Bản Liền, Khẩu Nậm X&iacute;t, S&eacute;ng C&ugrave;.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366520113217097728\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 5.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/5-16326492020641378771674.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 5.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/5-16326492020641378771674.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Đồng b&agrave;o M&ocirc;ng x&atilde; Tả Van Chư tuốt l&uacute;a ngay tại ruộng bậc thang. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"\">&Ocirc;ng Nguyễn Xu&acirc;n Giang &ndash; Trưởng ph&ograve;ng NNPTNT huyện Bắc H&agrave; cho biết, vụ l&uacute;a ch&iacute;nh vụ năm 2021 được m&ugrave;a, năng suất sản lượng tăng cao l&agrave; nhờ địa phương đ&atilde; chủ động chuyển giao tiến bộ khoa học kỹ thuật, theo d&otilde;i n&ocirc;ng lịch, kịp thời đ&ocirc;n đốc, vận động nh&acirc;n d&acirc;n thực hiện gieo cấy đ&uacute;ng khung thời vụ. B&ecirc;n cạnh đ&oacute;, ng&agrave;nh n&ocirc;ng nghiệp huyện cũng chủ động hỗ trợ hộ ngh&egrave;o giống l&uacute;a, mua ph&acirc;n b&oacute;n theo phương thức trả chậm&hellip; C&aacute;c c&aacute;n bộ n&ocirc;ng nghiệp, khuyến n&ocirc;ng thường xuy&ecirc;n b&aacute;m s&aacute;t đồng ruộng, kịp thời ph&aacute;t hiện s&acirc;u, bệnh hại, qua đ&oacute; khuyến c&aacute;o, hướng dẫn nh&acirc;n d&acirc;n sử dụng thuốc bảo vệ thực vật an to&agrave;n, hiệu quả.</p>\r\n<p class=\"\">&ldquo;Nhờ đ&oacute;, năng suất l&uacute;a vụ n&agrave;y ước đạt 54,95 tạ/ha, tăng 1,75 tạ/ha, sản lượng đạt 15.375 tấn, tăng gần 800 tấn so với vụ l&uacute;a ch&iacute;nh vụ năm 2020&rdquo; &ndash; &ocirc;ng Giang th&ocirc;ng tin.</p>\r\n<figure class=\"VCSortableInPreviewMode\">\r\n<div><img id=\"img_366520419305213952\" class=\"lightbox-content b-loaded\" title=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 6.\" src=\"https://dulichbacha.net/wp-content/uploads/2021/09/lua-bac-ha-2-16326492761542062033663.jpg\" alt=\"L&agrave;o Cai: V&ugrave;ng cao Bắc H&agrave; tr&uacute;ng m&ugrave;a 2 loại hạt v&agrave;ng, nhiều người kh&ocirc;ng c&ograve;n phải sang Trung Quốc l&agrave;m thu&ecirc; - Ảnh 6.\" width=\"\" height=\"\" data-original=\"https://dulichbacha.net/wp-content/uploads/2021/09/lua-bac-ha-2-16326492761542062033663.jpg\"></div>\r\n<figcaption class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[Nhập ch&uacute; th&iacute;ch ảnh]\">Tại nhiều th&ocirc;n bản ở Bắc H&agrave;, b&agrave; con n&ocirc;ng d&acirc;n vẫn đập l&uacute;a thủ c&ocirc;ng. Ảnh: Tr&aacute;ng Xu&acirc;n Cường</p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"\">C&ugrave;ng với vụ l&uacute;a tr&uacute;ng m&ugrave;a, năm nay đồng b&agrave;o v&ugrave;ng cao Bắc H&agrave; cũng c&oacute; vụ ng&ocirc; thắng lợi. &Ocirc;ng V&ugrave; Seo H&ograve;a &ndash; n&ocirc;ng d&acirc;n ở th&ocirc;n L&agrave;ng Mới, x&atilde; Bản Phố vui vẻ cho biết: &ldquo;Ở đ&acirc;y gia đ&igrave;nh m&igrave;nh v&agrave; c&aacute;c hộ đều trồng ng&ocirc;, nấu rượu, chăn nu&ocirc;i, song chủ yếu d&ugrave;ng ng&ocirc; để nấu rượu đặc sản. C&acirc;y ng&ocirc; l&agrave; c&acirc;y trồng ch&iacute;nh của nh&agrave; m&igrave;nh v&agrave; b&agrave; con. Mấy năm nay đ&atilde; sử dụng th&ecirc;m giống ng&ocirc; lai để sản xuất ng&ocirc; h&agrave;ng h&oacute;a, song vẫn giữ giống ng&ocirc; v&agrave;ng địa phương để nấu rượu ng&ocirc; chất lượng cao&rdquo;.</p>\r\n<p class=\"\">&ldquo;Nh&agrave; m&igrave;nh năm nay trồng 25kg giống ng&ocirc; lai v&agrave; ng&ocirc; v&agrave;ng cho hơn 2ha ng&ocirc;. N&oacute;i chung kh&iacute; hậu, thời tiết, rất thuận lợi. Nhất l&agrave; l&uacute;c gieo hạt xong c&oacute; mưa đều, c&acirc;y kh&ocirc;ng bị chết hạn, nảy mầm tốt, l&uacute;c ng&ocirc; ch&iacute;n v&agrave;ng trời nắng r&aacute;o n&ecirc;n kh&ocirc;ng bị ẩm ướt, mối mọt&hellip; Nhờ thế nh&agrave; m&igrave;nh v&agrave; b&agrave; con đều được m&ugrave;a ng&ocirc;, vui lắm&rdquo; &ndash; &ocirc;ng Ho&agrave; n&oacute;i.</p>', 'posts/May2023/kmgACy7wQO6XBxwjMoBr.jpg', 'vung-cao-bac-ha-trung-mua-2-loai-hat-vang', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 20:50:58', '2023-05-28 20:50:58'),
(8, 1, 1, 'Đẩy mạnh tuyên truyền, quảng bá, tiêu thụ sản phẩm Mận tam hoa Bắc Hà trong tình hình dịch bênh Covid-19', NULL, 'Hiện nay trên địa bàn huyện Bắc Hà với thời tiết, khí hậu thuận lợi các loại cây ăn quả địa phương cũng như cây Mận Tam hoa được mùa, sản lượng khá lớn. Tuy nhiên do tình hình dịch Covid-19 diễn biến phức tạp, khó lường, nhiều địa phương hiện nay đã tạm dừng các hoạt động du lịch, dịch vụ; sức mua thị trường yếu hơn mọi năm nên dự báo khả năng tiêu thụ sản lượng Mận Tam hoa và một số cây ăn quả địa phương trong huyện gặp rất nhiều khó khăn', '<p><strong>Hiện nay tr&ecirc;n địa b&agrave;n huyện Bắc H&agrave; với thời tiết, kh&iacute; hậu thuận lợi c&aacute;c loại c&acirc;y ăn quả địa phương cũng như c&acirc;y Mận Tam hoa được m&ugrave;a, sản lượng kh&aacute; lớn. Tuy nhi&ecirc;n do t&igrave;nh h&igrave;nh dịch Covid-19 diễn biến phức tạp, kh&oacute; lường, nhiều địa phương hiện nay đ&atilde; tạm dừng c&aacute;c hoạt động du lịch, dịch vụ; sức mua thị trường yếu hơn mọi năm n&ecirc;n dự b&aacute;o khả năng ti&ecirc;u thụ sản lượng Mận Tam hoa v&agrave; một số c&acirc;y ăn quả địa phương trong huyện gặp rất nhiều kh&oacute; khăn.</strong><br>Nắm bắt được t&igrave;nh h&igrave;nh, ng&agrave;y 19/5/2021, Thường trực Huyện ủy đ&atilde; lập tức chỉ đạo tổ chức họp b&agrave;n kế hoạch ti&ecirc;u thụ sản phẩm mận tam hoa v&agrave; c&acirc;y ăn quả địa phương với sự tham gia của nhiều ng&agrave;nh chức năng, UBND c&aacute;c x&atilde; cũng như c&aacute;c một số doanh nghiệp tr&ecirc;n địa b&agrave;n huyện để c&ugrave;ng th&aacute;o gỡ kh&oacute; khăn cho người d&acirc;n (Gồm c&aacute;c cơ quan, đơn vị: Ph&ograve;ng Văn h&oacute;a v&agrave; Th&ocirc;ng tin, N&ocirc;ng nghiệp v&agrave; PTNT, Kinh tế hạ tầng, Gi&aacute;o dục đ&agrave;o tạo, T&agrave;i ch&iacute;nh Kế hoạch, Trung t&acirc;m dịch vụ n&ocirc;ng nghiệp, Trung t&acirc;m Văn h&oacute;a, Thể thao &ndash; Truyền th&ocirc;ng, Hội n&ocirc;ng d&acirc;n, Trung t&acirc;m y tế, Bưu điện huyện, Chi nh&aacute;nh Viettel Bắc H&agrave;, Văn ph&ograve;ng Huyện ủy, Văn ph&ograve;ng HĐND&amp;UBND huyện, UBND c&aacute;c x&atilde; Na Hối, Thị Trấn, T&agrave; Chải, Chi nh&aacute;nh viễn th&ocirc;ng Bắc H&agrave; &ndash; Si Ma Cai),y&ecirc;u cầu c&aacute;c cơ quan, đơn vị huy động cả hệ thống ch&iacute;nh trị v&agrave; to&agrave;n thể c&aacute;n bộ, đảng vi&ecirc;n, nh&acirc;n d&acirc;n c&aacute;c d&acirc;n tộc trong huyện c&ugrave;ng chia sẻ tr&aacute;ch nhiệm, hỗ trợ người d&acirc;n th&ocirc;ng qua c&aacute;c giải ph&aacute;p về kết nối, t&igrave;m kiếm thị trường v&agrave; nhiều phương &aacute;n kh&aacute;c để phấn đấu ti&ecirc;u thụ tối đa lượng sản phẩm Mận tam hoa v&agrave; c&acirc;y ăn quả &ocirc;n đới trong m&ugrave;a vụ năm 2021.</p>\r\n<p><img class=\"aligncenter b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/06/tin20quE1BAA3ng20bC3A120mE1BAADn20BH.jpg\"></p>\r\n<p>Mận tam hoa Bắc h&agrave; được m&ugrave;a</p>\r\n<p>Thực hiện sự chỉ đạo thể hiện quyết t&acirc;m hỗ trợ người d&acirc;n trong việc ti&ecirc;u thụ sản phẩm n&ocirc;ng sản địa phương trong thời gian kh&oacute; khăn của Thường trực Huyện ủy, UBND huyện, c&aacute;c cơ quan chức năng đ&atilde; thực hiện tuy&ecirc;n truyền, x&acirc;y dựng c&aacute;c phương &aacute;n nhằm đẩy mạnh quảng b&aacute; Mận tam hoa Bắc H&agrave; cũng như c&aacute;c n&ocirc;ng sản địa phương kh&aacute;c, li&ecirc;n kết với doanh nghiệp viễn th&ocirc;ng trong việc quảng b&aacute; sản phẩm n&ocirc;ng sản địa phương qua tin nhắn, App du lịch L&agrave;o cai, website/fanpape của doanh nghiệp, x&acirc;y dựng tem nh&atilde;n truy xuất nguồn gốc để đưa sản phẩm N&ocirc;ng sản huyện l&ecirc;n c&aacute;c s&agrave;n giao dịch thương mai điện tử như post mart.vn (<a href=\"https://postmart.vn/p/man-loai-1-khoi-luong-5kg\">https://postmart.vn/p/man-loai-1-khoi-luong-5kg</a>) để gi&uacute;p quảng b&aacute; cũng như ti&ecirc;u thụ sản phẩm n&ocirc;ng sản cho người d&acirc;n địa phương.</p>\r\n<p><img class=\"aligncenter b-loaded\" src=\"https://dulichbacha.net/wp-content/uploads/2021/06/tem20truy20xuE1BAA5t20nguE1BB93n20gE1BB91c20mE1BAADn.png\"></p>\r\n<p>H&igrave;nh minh họa tem truy xuất nguồn gốc</p>\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; th&aacute;ch thức đối với ch&iacute;nh quyền cũng như người d&acirc;n địa phương trong việc ti&ecirc;u thụ sản phẩm n&ocirc;ng sản địa phương, nhưng cũng l&agrave; cơ hội cho sản phẩm n&ocirc;ng sản địa phương cũng như người d&acirc;n địa phương trong việc khẳng định thương hiệu sản phẩm như Mận Tam hoa, L&ecirc; Bắc H&agrave;, đến với người ti&ecirc;u d&ugrave;ng một c&aacute;ch tốt hơn nữa. Để thực hiện được điều đ&oacute;, cần c&oacute; sự chung sức, đồng l&ograve;ng của cả ch&iacute;nh quyền, c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức v&agrave; người d&acirc;n địa phương, c&ugrave;ng nhau vượt qua giai đoạn kh&oacute; khăn do ảnh hưởng dịch bệnh covid-19.</p>\r\n<p><strong>Tuấn Anh &ndash; Bacha.Laocai.Gov.VN</strong></p>', 'posts/May2023/ksU2nwketNS9MImby4UP.png', 'day-manh-tuyen-truyen-quang-ba-tieu-thu-san-pham-man-tam-hoa-bac-ha-trong-tinh-hinh-dich-benh-covid-19', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 20:52:16', '2023-05-28 20:52:16'),
(9, 1, 1, 'Mận tam hoa Bắc Hà lên sàn Postmart', NULL, 'Bưu điện tỉnh Lào Cai vừa hỗ trợ người dân huyện Bắc Hà đưa mận hậu tam hoa lên tiêu thụ trên sàn Postmart. Đơn vị này dự kiến sẽ tiếp tục đưa lên sàn nhiều loại đặc sản khác của Lào Cai như lê Tai Nung, chè Bản Liền…', '<div>\r\n<div class=\"news_detail\">\r\n<div id=\"divArticleDescription\">(Mic.gov.vn) &ndash;<strong>Bưu điện tỉnh L&agrave;o Cai vừa hỗ trợ người d&acirc;n huyện Bắc H&agrave; đưa mận hậu tam hoa l&ecirc;n ti&ecirc;u thụ tr&ecirc;n s&agrave;n Postmart. Đơn vị n&agrave;y dự kiến sẽ tiếp tục đưa l&ecirc;n s&agrave;n nhiều loại đặc sản kh&aacute;c của L&agrave;o Cai như l&ecirc; Tai Nung, ch&egrave; Bản Liền&hellip;</strong>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div id=\"divArticleContent\" class=\"news_detail\">\r\n<p><img class=\"b-loaded\" title=\"them-san-pham-man-tam-hoa-bac-ha-co-mat-tren-san-postmart.jpg\" src=\"https://dulichbacha.net/wp-content/uploads/2021/06/them-san-pham-man-tam-hoa-bac-ha-co-mat-tren-san-postmart.jpg\" alt=\"them-san-pham-man-tam-hoa-bac-ha-co-mat-tren-san-postmart.jpg\" width=\"760\" height=\"507\"></p>\r\n<p><em>Từ ng&agrave;y 29/5, sản phẩm mận tam hoa Bắc H&agrave; đ&atilde; c&oacute; mặt tr&ecirc;n s&agrave;n Postmart.</em></p>\r\n<p>Mận tam hoa được trồng tại trung t&acirc;m cao nguy&ecirc;n trắng huyện Bắc H&agrave; vốn c&oacute; nguồn gốc l&acirc;u đời. C&acirc;y&nbsp; thường ra hoa v&agrave;o đầu m&ugrave;a xu&acirc;n v&agrave; thu hoạch quả v&agrave;o đầu m&ugrave;a h&egrave;. Mận tam hoa Bắc H&agrave; cho quả tr&ograve;n to khi ch&iacute;n c&oacute; m&agrave;u đỏ tươi đến đỏ đậm, lớp c&ugrave;i d&agrave;y v&agrave; hạt nhỏ.</p>\r\n<div>Gi&aacute;m đốc Bưu điện tỉnh L&agrave;o Cai Trần Minh Quang cho biết, theo th&ocirc;ng tin từ UBND huyện Bắc H&agrave;, trong c&aacute;c năm trước, mận tam hoa Bắc H&agrave; thường được ti&ecirc;u thụ qua c&aacute;c k&ecirc;nh truyền thống như qua thương l&aacute;i, kh&aacute;ch du lịch v&agrave; tại lễ hội đua ngựa Bắc H&agrave; &ndash; sự kiện thường gi&uacute;p người d&acirc;n địa phương ti&ecirc;u thụ sản lượng lớn mận.</div>\r\n<p>Tuy nhi&ecirc;n, trong năm nay, dịch bệnh Covid-19 đ&atilde; ảnh hưởng rất lớn đến việc ti&ecirc;u thụ n&ocirc;ng sản của người d&acirc;n huyện Bắc H&agrave;. Kh&aacute;ch du lịch tới Bắc H&agrave; giảm tới 80%, &iacute;t thương l&aacute;i đến thu mua n&ocirc;ng sản tại vườn v&agrave; lễ hội đua ngựa Bắc H&agrave; truyền thống kh&ocirc;ng tổ chức do dịch bệnh&hellip; l&agrave; những l&yacute; do ch&iacute;nh khiến n&ocirc;ng sản của địa phương bị &ugrave;n ứ, ti&ecirc;u thụ chậm.</p>\r\n<p>Để g&oacute;p phần c&ugrave;ng với ch&iacute;nh quyền địa phương hỗ trợ đồng b&agrave;o Bắc H&agrave; ti&ecirc;u thụ n&ocirc;ng sản, Bưu điện tỉnh L&agrave;o Cai vừa phối hợp với Trung t&acirc;m Dịch vụ n&ocirc;ng nghiệp huyện Bắc H&agrave; k&yacute; hợp đồng đưa sản phẩm tam hoa của c&aacute;c hộ n&ocirc;ng d&acirc;n trong huyện l&ecirc;n ti&ecirc;u thụ tr&ecirc;n s&agrave;n Postmart.</p>\r\n<p>Với hợp đồng n&agrave;y, kể từ ng&agrave;y 29/5, người ti&ecirc;u d&ugrave;ng tr&ecirc;n cả nước c&oacute; th&ecirc;m lựa chọn khi t&igrave;m mua đặc sản v&ugrave;ng miền tr&ecirc;n s&agrave;n Postmart. Mận tam hoa Bắc H&agrave; b&aacute;n tr&ecirc;n s&agrave;n l&agrave; mận loại 1 đ&oacute;ng hộp 5kg gồm khoảng 100 đến 125 quả, được b&aacute;n với gi&aacute; 200.000 đồng/hộp.</p>\r\n<div>\r\n<p>Đơn vị n&agrave;y cũng cho biết, đ&atilde; phối hợp với Trung t&acirc;m dịch vụ n&ocirc;ng nghiệp huyện Bắc H&agrave; thống nhất v&agrave; hướng dẫn c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n trong đơn vị c&aacute;ch đưa sản phẩm l&ecirc;n s&agrave;n Postmart v&agrave; c&aacute;ch đ&oacute;ng g&oacute;i h&agrave;ng h&oacute;a khi vận chuyển, sao cho sản phẩm giao đến người ti&ecirc;u d&ugrave;ng vẫn tươi, ngon.</p>\r\n<p>Để hỗ trợ n&ocirc;ng d&acirc;n Bắc H&agrave; ti&ecirc;u thụ được nhiều sản phẩm qua s&agrave;n thương mại điện tử, Bưu điện tỉnh L&agrave;o Cai đ&atilde; chủ động đề xuất với Tổng C&ocirc;ng ty Bưu điện Việt Nam (Vietnam Post) để phối hợp với c&aacute;c đối t&aacute;c x&acirc;y dựng gi&aacute; cước chuyển ph&aacute;t ph&ugrave; hợp. Việc n&agrave;y sẽ tạo tiền đề cho việc đưa th&ecirc;m c&aacute;c loại đặc sản kh&aacute;c của L&agrave;o Cai l&ecirc;n ti&ecirc;u thụ tr&ecirc;n s&agrave;n Postmart thời gian tới.</p>\r\n<p>Trao đổi với ICTnews, &ocirc;ng Trần Minh Quang cũng cho biết, sau sản phẩm mận tam hoa Bắc H&agrave;, đơn vị sẽ tiếp tục phối hợp với ch&iacute;nh quyền địa phương để đưa l&ecirc;n s&agrave;n Postmart c&aacute;c loại n&ocirc;ng sản, đặc sản kh&aacute;c của L&agrave;o Cai như l&ecirc; Tai Nung, ch&egrave; Bản Liền&hellip;</p>\r\n<p>&ldquo;Ch&uacute;ng t&ocirc;i đ&atilde; x&aacute;c định chuyển đổi h&igrave;nh thức kinh doanh sang c&ocirc;ng nghệ số, tập trung v&agrave;o c&aacute;c k&ecirc;nh online, s&agrave;n thương mại điện tử l&agrave; một nhiệm vụ trọng t&acirc;m, xuy&ecirc;n suốt từ l&atilde;nh đạo đơn vị đến c&aacute;c c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n, người lao động tr&ecirc;n to&agrave;n mạng lưới&rdquo;, &ocirc;ng Trần Minh Quang chia sẻ.</p>\r\n<p>Thời gian gần đ&acirc;y, s&agrave;n Postmart đ&atilde; li&ecirc;n tục triển khai c&aacute;c hoạt động hỗ trợ n&ocirc;ng d&acirc;n c&aacute;c v&ugrave;ng miền tiếp cận c&ocirc;ng nghệ số, l&agrave;m quen với phương thức b&aacute;n h&agrave;ng qua s&agrave;n thương mại điện tử.</p>\r\n<p>Trước mận tam hoa Bắc H&agrave;, nhiều loại n&ocirc;ng sản, đặc sản của c&aacute;c địa phương đ&atilde; c&oacute; mặt tr&ecirc;n s&agrave;n Postmart như: vải thiều Thanh H&agrave;, Hải Dương; vải thiều Lục Ngạn, dứa Lục Nam, dưa l&ecirc; của Bắc Giang; h&agrave;nh t&iacute;m S&oacute;c Trăng; dưa hấu Quảng B&igrave;nh; m&iacute;t th&aacute;i của c&aacute;c tỉnh đồng bằng s&ocirc;ng Cửu Long; mận hậu v&agrave; xo&agrave;i Y&ecirc;n Ch&acirc;u của&nbsp;<a href=\"https://ictnews.vietnamnet.vn/cuoc-song-so/nong-dan-son-la-dua-xoai-man-len-ban-tren-san-postmart-285802.html\">Sơn La</a>&hellip;</p>\r\n<p>Theo số liệu của Sendo, s&agrave;n thương mại điện tử n&agrave;y từ ng&agrave;y 24/5 đến hết ng&agrave;y 28/5 đ&atilde; ti&ecirc;u thụ được 15,5 tấn vải thiều Thanh H&agrave;.&nbsp;Trong c&aacute;c đợt mở b&aacute;n n&ocirc;ng sản trước v&agrave;o th&aacute;ng 3 v&agrave; th&aacute;ng 4/2021, Sendo đ&atilde; hỗ trợ c&aacute;c hộ n&ocirc;ng d&acirc;n ti&ecirc;u thụ 25 tấn rau Hải Dương v&agrave; 2 tấn bưởi&nbsp;da xanh Giồng Tr&ocirc;m, Bến Tre.Trong bối cảnh dịch Covid-19 diễn biến phức tạp, kh&ocirc;ng chỉ c&oacute; Postmart m&agrave; nhiều s&agrave;n thương mại điện tử kh&aacute;c như Vỏ S&ograve;, Lazada, Sendo, Shopee&hellip; cũng đ&atilde; tham gia hỗ trợ b&agrave; con n&ocirc;ng d&acirc;n tại nhiều địa phương ti&ecirc;u thụ n&ocirc;ng sản.</p>\r\n<p>Với&nbsp;<a href=\"https://ictnews.vietnamnet.vn/cuoc-song-so/nguoi-tieu-dung-dang-quen-dan-voi-viec-mua-thuc-pham-tren-cac-san-tmdt-278653.html\">s&agrave;n Vỏ S&ograve;</a>&nbsp;của Viettel Post, ngo&agrave;i việc ti&ecirc;u thụ gần 40 tấn rau, củ, quả của n&ocirc;ng d&acirc;n Hải Dương trong th&aacute;ng 3/2021, đơn vị n&agrave;y c&ograve;n gi&uacute;p b&agrave; con n&ocirc;ng d&acirc;n S&oacute;c Trăng b&aacute;n được gần 60 tấn h&agrave;nh t&iacute;m trong th&aacute;ng 4/2021. Ri&ecirc;ng với vải thiều Thanh H&agrave; (Hải Dương), Vỏ S&ograve; dự kiến trong cả m&ugrave;a vải năm nay sẽ hỗ trợ n&ocirc;ng d&acirc;n ti&ecirc;u thụ khoảng 80 -100 tấn.</p>\r\n<p>R&otilde; r&agrave;ng, dịch bệnh Covid-19 đ&atilde; v&agrave; đang g&oacute;p phần đẩy nhanh chuyển đổi số khu vực n&ocirc;ng nghiệp, n&ocirc;ng th&ocirc;n. Người n&ocirc;ng d&acirc;n c&aacute;c địa phương đang dần th&iacute;ch ứng, l&agrave;m quen với c&aacute;c c&ocirc;ng nghệ số để chuyển đổi phương thức, m&ocirc; h&igrave;nh sản xuất v&agrave; kinh doanh./.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p align=\"right\"><strong>Theo ictnews.vietnamnet.vn</strong></p>', 'posts/May2023/mGBdOrWM9VnJxlmQiZ1B.jpg', 'man-tam-hoa-bac-ha-len-san-postmart', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 20:53:15', '2023-05-28 20:53:15'),
(10, 1, 2, 'Phân vi lượng là gì? Tại sao nên bón phân vi lượng cho cây', NULL, 'Trong quá trình trồng trọt, để đạt được năng suất cao cần bổ sung đầy đủ các loại dinh dưỡng cần thiết cho cây trồng. Trong đó, phân vi lượng đóng một vai trò cực kỳ quan trọng để bảo đảm đầy đủ nguồn dinh dưỡng cho cây. Cùng  tìm hiểu rõ hơn về phân vi lượng là gì? và vai trò của chúng trong quá trình trồng trọt.', '<p>Trong qu&aacute; tr&igrave;nh trồng trọt, để đạt được năng suất cao cần bổ sung đầy đủ c&aacute;c loại dinh dưỡng cần thiết cho c&acirc;y trồng. Trong đ&oacute;, ph&acirc;n vi lượng đ&oacute;ng một vai tr&ograve; cực kỳ quan trọng để bảo đảm đầy đủ nguồn dinh dưỡng cho c&acirc;y. C&ugrave;ng &nbsp;t&igrave;m hiểu r&otilde; hơn về&nbsp;<strong>ph&acirc;n vi lượng l&agrave; g&igrave;</strong>? v&agrave; vai tr&ograve; của ch&uacute;ng trong qu&aacute; tr&igrave;nh trồng trọt.</p>\r\n<h2><strong>Ph&acirc;n vi lượng l&agrave; g&igrave;?&nbsp;</strong></h2>\r\n<p>&nbsp;l&agrave; những ph&acirc;n b&oacute;n cung cấp c&aacute;c vi lượng cần thiết cho sự ph&aacute;t triển của c&acirc;y trồng. C&aacute;c vi lượng n&agrave;y bao gồm kho&aacute;ng chất như đồng, kẽm, sắt, magie, mangan, canxi, lưu huỳnh v&agrave; clo. Ph&acirc;n vi lượng đ&oacute;ng vai tr&ograve; quan trọng trong qu&aacute; tr&igrave;nh trao đổi chất v&agrave; sinh trưởng của c&acirc;y trồng.</p>\r\n<p><img class=\"aligncenter size-full wp-image-6511\" src=\"https://halan.net/wp-content/uploads/2023/05/phan-vi-luong-la-gi.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://halan.net/wp-content/uploads/2023/05/phan-vi-luong-la-gi.jpg 700w, https://halan.net/wp-content/uploads/2023/05/phan-vi-luong-la-gi-300x171.jpg 300w, https://halan.net/wp-content/uploads/2023/05/phan-vi-luong-la-gi-600x343.jpg 600w\" alt=\"ph&acirc;n vi lượng l&agrave; g&igrave;?&nbsp;\" width=\"700\" height=\"400\" loading=\"lazy\"></p>\r\n<h2><strong>C&aacute;c loại ph&acirc;n vi lượng phổ biến</strong></h2>\r\n<p>C&aacute;c loại ph&acirc;n vi lượng c&oacute; thể được sử dụng cho nhiều loại c&acirc;y trồng kh&aacute;c nhau. C&aacute;c loại ph&acirc;n b&oacute;n vi lượng phổ biến bao gồm:</p>\r\n<ul>\r\n<li>Ph&acirc;n đa vi lượng: l&agrave; ph&acirc;n b&oacute;n c&oacute; chứa một số lượng lớn c&aacute;c vi chất dinh dưỡng như kẽm, sắt, mangan, đồng, boron v&agrave; molypdenum.</li>\r\n<li>Ph&acirc;n b&oacute;n Nitrogen vi lượng: bao gồm đồng, boron, kẽm, sắt v&agrave; mangan.</li>\r\n<li>Ph&acirc;n b&oacute;n Kali vi lượng: bao gồm sắt, mangan, đồng v&agrave; kẽm.</li>\r\n<li>Ph&acirc;n b&oacute;n Kali Magie vi lượng: bao gồm magie, boron, đồng, kẽm v&agrave; mangan.</li>\r\n<li>Ph&acirc;n b&oacute;n Photpho vi lượng: bao gồm c&aacute;c vi lượng như natri, magie, đồng, kẽm v&agrave; sắt.</li>\r\n</ul>\r\n<p><img class=\"aligncenter size-full wp-image-6508\" src=\"https://halan.net/wp-content/uploads/2023/05/cac-loai-phan-vi-luong-pho-bien.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://halan.net/wp-content/uploads/2023/05/cac-loai-phan-vi-luong-pho-bien.jpg 700w, https://halan.net/wp-content/uploads/2023/05/cac-loai-phan-vi-luong-pho-bien-300x171.jpg 300w, https://halan.net/wp-content/uploads/2023/05/cac-loai-phan-vi-luong-pho-bien-600x343.jpg 600w\" alt=\"c&aacute;c loại ph&acirc;n vi lượng phổ biến\" width=\"700\" height=\"400\" loading=\"lazy\"></p>\r\n<h2><strong>Tại sao n&ecirc;n b&oacute;n ph&acirc;n vi lượng cho c&acirc;y?</strong></h2>\r\n<p>B&oacute;n ph&acirc;n vi lượng cho c&acirc;y l&agrave; c&aacute;ch cung cấp c&aacute;c chất dinh dưỡng thiết yếu để c&acirc;y ph&aacute;t triển v&agrave; đạt được hiệu suất tốt hơn trong sản xuất. Dưới đ&acirc;y l&agrave; một số l&yacute; do quan trọng để b&oacute;n ph&acirc;n vi lượng cho c&acirc;y trồng:</p>\r\n<ul>\r\n<li><strong>Cải thiện tốc độ v&agrave; chất lượng mầm non:&nbsp;</strong>Vi lượng gi&uacute;p cải thiện qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh mầm non, tăng sức đề kh&aacute;ng v&agrave; gi&uacute;p c&acirc;y ph&aacute;t triển khỏe mạnh hơn. Bổ sung đầy đủ c&aacute;c vi lượng cho c&acirc;y trồng sẽ gi&uacute;p tăng tốc độ sinh trưởng v&agrave; năng suất của c&acirc;y.</li>\r\n<li><strong>Tăng cường sức đề kh&aacute;ng v&agrave; đề kh&aacute;ng của c&acirc;y:&nbsp;</strong>Với vi lượng đầy đủ, c&acirc;y trồng sẽ c&oacute; khả năng kh&aacute;ng chịu với c&ocirc;n tr&ugrave;ng, bệnh tật v&agrave; kh&iacute; hậu khắc nghiệt hơn.</li>\r\n<li><strong>Tăng hiệu suất sản xuất:</strong>&nbsp;B&oacute;n ph&acirc;n vi lượng cho c&acirc;y trồng gi&uacute;p tăng sản lượng v&agrave; chất lượng sản phẩm. C&aacute;c vi lượng, như sắt, đồng, kẽm v&agrave; mangan, cần c&oacute; để th&uacute;c đẩy sự ph&aacute;t triển của c&acirc;y nhưng lại kh&ocirc;ng được t&igrave;m thấy trong ph&acirc;n đầy đủ hoặc tự nhi&ecirc;n.</li>\r\n</ul>', 'posts/May2023/K11OLvCha4KMrkX2wyVH.jpg', 'phan-vi-luong-la-gi-tai-sao-nen-bon-phan-vi-luong-cho-cay', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 20:57:04', '2023-05-28 20:57:04'),
(11, 1, 2, 'Nguyên nhân bơ ra hoa không đậu quả và cách khắc phục', NULL, 'Cây bơ là một loại cây trồng rất phổ biến ở các nước nhiệt đới và được trồng nhiều ở Việt Nam. Tuy nhiên, một số người trồng cây bơ thường gặp phải tình trạng bơ ra hoa không đậu quả hoặc ra quả rất ít. Vậy thì hãy cùng Phân bón Hà Lan tìm hiểu nguyên nhân dẫn đến tình trạng này qua bài viết bên dưới nhé!', '<div>C&acirc;y bơ l&agrave; một loại c&acirc;y trồng rất phổ biến ở c&aacute;c nước nhiệt đới v&agrave; được trồng nhiều ở Việt Nam. Tuy nhi&ecirc;n, một số người trồng c&acirc;y bơ thường gặp phải t&igrave;nh trạng&nbsp;<strong>bơ ra hoa kh&ocirc;ng đậu quả</strong> hoặc ra quả rất &iacute;t. Vậy th&igrave; h&atilde;y c&ugrave;ng&nbsp;t&igrave;m hiểu nguy&ecirc;n nh&acirc;n dẫn đến t&igrave;nh trạng n&agrave;y qua b&agrave;i viết b&ecirc;n dưới nh&eacute;!</div>\r\n<h2>Tại sao bơ ra hoa nhưng kh&ocirc;ng đậu quả</h2>\r\n<p>C&oacute; rất nhiều nguy&ecirc;n nh&acirc;n dẫn đến việc c&acirc;y bơ ra hoa nhưng kh&ocirc;ng đậu quả, ngo&agrave;i những yếu tố về m&ocirc;i trường sống của c&acirc;y, chất lượng đất v&agrave; nước v&agrave; c&ocirc;n tr&ugrave;ng thụ phấn th&igrave; c&ograve;n những yếu tố ảnh hưởng kh&aacute;c như:</p>\r\n<p><img class=\"aligncenter wp-image-6119 size-full\" src=\"https://halan.net/wp-content/uploads/2023/04/Tai-sao-bo-ra-hoa-nhung-khong-dau-qua.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://halan.net/wp-content/uploads/2023/04/Tai-sao-bo-ra-hoa-nhung-khong-dau-qua.jpg 700w, https://halan.net/wp-content/uploads/2023/04/Tai-sao-bo-ra-hoa-nhung-khong-dau-qua-300x171.jpg 300w, https://halan.net/wp-content/uploads/2023/04/Tai-sao-bo-ra-hoa-nhung-khong-dau-qua-600x343.jpg 600w\" alt=\"Tại sao bơ ra hoa nhưng kh&ocirc;ng đậu quả\" width=\"700\" height=\"400\" loading=\"lazy\"></p>\r\n<h3>Sự biến động thời tiết ảnh hưởng đến việc bơ ra hoa kh&ocirc;ng đậu quả</h3>\r\n<div>\r\n<p>Thời tiết mưa k&eacute;o d&agrave;i nhiều ng&agrave;y li&ecirc;n tục c&oacute; thể l&agrave;m giảm số lượng hoa v&agrave; tr&aacute;i của c&acirc;y bơ. Phấn hoa tiếp x&uacute;c với nước rất dễ bị sốc hoặc rửa tr&ocirc;i, g&acirc;y ảnh hưởng đến qu&aacute; tr&igrave;nh thụ phấn v&agrave; kết quả l&agrave; kh&ocirc;ng c&oacute; quả. Ngo&agrave;i ra, gi&oacute; mạnh cũng c&oacute; thể khiến hoa v&agrave; phấn bơ bị rụng. B&agrave; con cũng cần ch&uacute; &yacute; đến một số kỹ thuật chăm s&oacute;c khi c&acirc;y bơ ra hoa như hạn chế tưới nước để tr&aacute;nh rụng hoa. Nếu hoa bơ đ&atilde; đậu tr&aacute;i nhưng vẫn rơi rụng hoặc kh&ocirc;ng ph&aacute;t triển được, c&oacute; thể do lượng đạm trong c&acirc;y qu&aacute; cao.</p>\r\n</div>\r\n<div><img class=\"aligncenter wp-image-6118 \" src=\"https://halan.net/wp-content/uploads/2023/04/Su-bien-dong-thoi-tiet-anh-huong-den-viec-bo-ra-hoa-khong-dau-qua-.jpg\" sizes=\"(max-width: 624px) 100vw, 624px\" srcset=\"https://halan.net/wp-content/uploads/2023/04/Su-bien-dong-thoi-tiet-anh-huong-den-viec-bo-ra-hoa-khong-dau-qua-.jpg 700w, https://halan.net/wp-content/uploads/2023/04/Su-bien-dong-thoi-tiet-anh-huong-den-viec-bo-ra-hoa-khong-dau-qua--300x171.jpg 300w, https://halan.net/wp-content/uploads/2023/04/Su-bien-dong-thoi-tiet-anh-huong-den-viec-bo-ra-hoa-khong-dau-qua--600x343.jpg 600w\" alt=\"Sự biến động thời tiết ảnh hưởng đến việc bơ ra hoa kh&ocirc;ng đậu quả&nbsp;&nbsp;\" width=\"624\" height=\"356\" loading=\"lazy\"></div>\r\n<h3>Nguồn dinh dưỡng kh&ocirc;ng c&acirc;n bằng</h3>\r\n<div>Ngo&agrave;i c&aacute;c yếu tố thời tiết, lượng dinh dưỡng cũng l&agrave; một trong những yếu tố ảnh hưởng đến việc c&acirc;y bơ ra hoa kh&ocirc;ng đậu quả. Khi c&acirc;y bơ thiếu dinh dưỡng, ch&uacute;ng sẽ kh&ocirc;ng đủ năng lượng để ph&aacute;t triển hoa v&agrave; quả. Ngược lại, nếu c&acirc;y bơ được cung cấp qu&aacute; nhiều dinh dưỡng, ch&uacute;ng c&oacute; thể ph&aacute;t triển qu&aacute; nhiều c&agrave;nh non, dẫn đến mất c&acirc;n bằng dinh dưỡng trong c&acirc;y v&agrave; bơ ra hoa kh&ocirc;ng đậu quả. Do đ&oacute;, cần phải c&acirc;n bằng lượng dinh dưỡng cung cấp cho c&acirc;y bơ để đảm bảo qu&aacute; tr&igrave;nh ra hoa v&agrave; ph&aacute;t triển quả diễn ra tốt nhất.</div>', 'posts/May2023/IqknjmvLOlnNSSeKvT6W.jpg', 'nguyen-nhan-bo-ra-hoa-khong-dau-qua-va-cach-khac-phuc', NULL, NULL, 'PUBLISHED', 0, '2023-05-28 20:57:41', '2023-05-28 20:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `body`, `image`, `price`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Chè shan tuyết', 'che-shan-tuyet', 'Hiện Bắc Hà nổi tiếng là thủ phủ cây chè shan tuyết của Lào Cai. Chè Bản Liền là niềm tự hào của Bắc Hà và là sản phẩm OCOP 5 sao đầu tiên của Lào Cai tìm được chỗ đứng ở Mỹ và châu Âu', '<p>Đặc biệt vừa qua, ch&egrave; shan tuyết cổ thụ Bắc H&agrave; được xếp hạng sản phẩm OCOP 3 sao, đợt 2 năm 2022. Từ ph&aacute;t triển c&acirc;y ch&egrave; shan tuyết, đ&atilde; gi&uacute;p b&agrave; con n&ocirc;ng d&acirc;n v&ugrave;ng cao Bắc H&agrave; tho&aacute;t ngh&egrave;o bền vững, vươn l&ecirc;n l&agrave;m gi&agrave;u tr&ecirc;n mảnh đất v&ugrave;ng cao n&agrave;y...</p>\r\n<figure class=\"expNoEdit\"><img class=\"lazyload loaded\" src=\"https://i.ex-cdn.com/nongnghiep.vn/files/bao_in/2022/11/01/1-1729_20221101_23-175105.jpeg\" alt=\"N&ocirc;ng d&acirc;n Bản Liền vui m&ugrave;a thu hoạch ch&egrave; shan tuyết\" width=\"680\" height=\"468\" data-img-mobile=\"undefined\" data-src=\"https://i.ex-cdn.com/nongnghiep.vn/files/bao_in/2022/11/01/1-1729_20221101_23-175105.jpeg\" data-was-processed=\"true\">\r\n<figcaption>\r\n<p class=\"expEdit h2\">N&ocirc;ng d&acirc;n Bản Liền (huyện Bắc H&agrave;) vui m&ugrave;a thu hoạch ch&egrave; shan tuyết. Ảnh:&nbsp;<em>Xu&acirc;n Cường.</em></p>\r\n</figcaption>\r\n</figure>\r\n<h3>N&ocirc;ng sản hữu cơ đầu ti&ecirc;n của Việt Nam xuất khẩu</h3>\r\n<p>Thực hiện Nghị quyết số 10 của Ban Thường vụ Tỉnh ủy L&agrave;o Cai về &ldquo;Chiến lược ph&aacute;t triển n&ocirc;ng nghiệp h&agrave;ng h&oacute;a tỉnh L&agrave;o Cai đến năm 2030, tầm nh&igrave;n đến năm 2050&rdquo;; ph&aacute;t huy lợi thế v&ugrave;ng, thời gian qua,&nbsp; huyện v&ugrave;ng cao Bắc H&agrave; đ&atilde; ch&uacute; trọng thực hiện mở rộng v&agrave; n&acirc;ng cao hiệu quả kinh tế từ c&acirc;y ch&egrave; shan tuyết.</p>\r\n<p>&Ocirc;ng Nguyễn Xu&acirc;n Giang, Trưởng ph&ograve;ng NN-PTNT huyện cho biết, to&agrave;n huyện hiện c&oacute; 950ha ch&egrave;, trong đ&oacute; gần 700ha ch&egrave; shan tuyết hữu cơ. Đ&acirc;y l&agrave; sản phẩm đầu ti&ecirc;n của Việt Nam được xuất khẩu ra nước ngo&agrave;i v&agrave; sản phẩm &ldquo;Ch&egrave; Shan hữu cơ Bắc H&agrave;&rdquo; l&agrave; sản phẩm OCOP đạt ti&ecirc;u chuẩn 5 sao đầu ti&ecirc;n v&agrave; duy nhất của tỉnh L&agrave;o Cai đến thời điểm hiện nay.</p>\r\n<p>V&ugrave;ng sản xuất ch&egrave; hữu cơ tr&ecirc;n địa b&agrave;n đ&atilde; tạo việc l&agrave;m v&agrave; thu nhập thường xuy&ecirc;n cho tr&ecirc;n 300 hộ d&acirc;n với hơn 1.500 người, tại 04 th&ocirc;n người T&agrave;y của x&atilde; Bản Liền. Tuy gi&aacute; trị thu hoạch chưa cao bằng c&acirc;y trồng kh&aacute;c (như quế), nhưng c&acirc;y ch&egrave; shan tuyết c&oacute; t&aacute;c động tới số đ&ocirc;ng người sản xuất, được coi l&agrave; chuỗi sản xuất h&agrave;ng h&oacute;a ho&agrave;n chỉnh, ti&ecirc;u biểu, bền vững, gắn kết mật thiết giữa n&ocirc;ng d&acirc;n với doanh nghiệp v&agrave; thị trường ti&ecirc;u thụ suốt từ năm 2004 đến nay.</p>', 'products/May2023/CEf7xqL7mZqRrU94LWso.png', 120000, '1', 1, '2023-05-28 19:23:00', '2023-05-28 20:22:41'),
(2, 'Tương ớt Bắc Hà', 'tuong-ot-bac-ha', 'Tương ớt Bắc Hà một trong những đặc sản nổi tiếng của thị trân nhỏ Bắc Hà. Lên Bắc Hà du lịch bạn sẽ được thưởng thức rất nhiều món ngon đặc sản vùng đất này trong đó không thể thiếu tương ớt Bắc Hà', '<h2 class=\"nitro-offscreen\">Nguồn gốc tương ớt Bắc H&agrave;</h2>\r\n<p class=\"nitro-offscreen\"><strong>Tương ớt Bắc H&agrave;</strong>&nbsp;được HTX Duy Phong sản xuất, chế biến theo quy tr&igrave;nh đảm bảo an to&agrave;n thực phẩm đ&atilde; được Ph&ograve;ng N&ocirc;ng nghiệp v&agrave; PTNT huyện Bắc H&agrave;, tỉnh L&agrave;o Cai kiểm tra.</p>\r\n<p class=\"nitro-offscreen\">HTX Duy Phong đ&atilde; được cấp giấy chứng nhận cơ sở đủ điều kiện an to&agrave;n thực phẩm số 06 ng&agrave;y 30 th&aacute;ng 5 năm 2018.</p>\r\n<p class=\"nitro-offscreen\"><strong>Trong tương ớt&nbsp; Bắc H&agrave;</strong>&nbsp;c&oacute; chứa nhiều c&aacute;c loại&nbsp; vitamin beta &ndash; carotene, vitamin A, vitamin B, vitamin C,vitamin&nbsp; E, vitaminK, sắt, caxin. Những loại vitamin l&agrave; những chất cần thiết rất c&oacute; lợi cho sức khỏe.</p>\r\n<p class=\"nitro-offscreen\">Để l&agrave;m được những chai tương ớt thơm ngon th&igrave; nguồn nguy&ecirc;n liệu sản xuất l&agrave; v&ocirc; c&ugrave;ng quan trọng.</p>\r\n<p class=\"nitro-offscreen\">Huyện Bắc H&agrave; đang ph&aacute;t triển mở rộng dần nguồn nguy&ecirc;n liệu sản xuất tương ớt Bắc H&agrave;.</p>\r\n<p class=\"nitro-offscreen\">Diện t&iacute;ch ớt th&oacute;c được trồng đến nay đ&atilde; khoảng 50 ha, phục vụ nhu cầu sản xuất tương ớt tại đ&acirc;y.</p>\r\n<p class=\"nitro-offscreen\">Ớt được trồng tập trung chủ yếu ở c&aacute;c x&atilde; Na Hối, Nậm M&ograve;n, T&agrave; Chải, Nậm Đ&eacute;t, Cốc Lầu, L&ugrave;ng Cải v&agrave; ở tại thị trấn Bắc H&agrave;. To&agrave;n bộ 50ha diện t&iacute;ch ớt nguy&ecirc;n liệu được chăm s&oacute;c rất cẩn thận, theo quy tr&igrave;nh hướng dẫn của c&aacute;n bộ n&ocirc;ng nghiệp. Năng suất trung b&igrave;nh đạt 10 tấn quả/1ha.</p>\r\n<p class=\"nitro-offscreen\">Bắc H&agrave; l&agrave; 1 thị trấn c&oacute; độ cao lớn so với mặt nước biển, kh&iacute; hậu m&aacute;t mẻ. Ớt được trồng tr&ecirc;n c&aacute;c n&uacute;i đ&aacute;, sườn đồi, xen kẽ những phiến đ&aacute; l&agrave; những c&acirc;y ớt th&oacute;c đỏ tươi đầy sức sống</p>\r\n<h2 class=\"nitro-offscreen\"><span id=\"Tuong_ot_Bac_Ha_ban_o_dau\" class=\"ez-toc-section\"></span>Tương ớt Bắc H&agrave; b&aacute;n ở đ&acirc;u</h2>\r\n<p class=\"nitro-offscreen\"><strong>Tương ớt Bắc H&agrave;</strong> l&agrave; c&ugrave;ng với&nbsp;l&agrave; hai d&ograve;ng gia vị ch&iacute;nh để cung cấp ra thị trường, phục vụ nhu cầu ăn uống, thưởng thức ẩm thực đa dạng phong ph&uacute; của văn h&oacute;a ẩm thực Việt&nbsp;l&agrave; đơn vị giới thiệu sản phẩm&nbsp;<strong>tương ớt Bắc H&agrave;</strong>&nbsp;đến đ&ocirc;ng đảo b&agrave; con khắp v&ugrave;ng miền được biết hơn.</p>\r\n<p class=\"nitro-offscreen\">Ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp sản phẩm tương ớt Bắc H&agrave; đến thị trường H&agrave; Nội, TPHCM v&agrave; cả nước.</p>\r\n<h2 class=\"nitro-offscreen\"><span id=\"Luu_y_khi_mua_tuong_ot_Bac_Ha\" class=\"ez-toc-section\"></span>Lưu &yacute; khi mua tương ớt Bắc H&agrave;</h2>\r\n<p class=\"nitro-offscreen\">Tr&ecirc;n thị trường hiện đang c&oacute; rất nhiều loại tương ớt với t&ecirc;n tương ớt Bắc H&agrave;.</p>\r\n<p class=\"nitro-offscreen\">Nhưng để mua được sản phẩm chuẩn&nbsp;<strong>tương ớt Bắc H&agrave;</strong>&nbsp;l&agrave; điều v&ocirc; c&ugrave;ng kh&oacute; đối với c&aacute;c bạn ở H&agrave; Nội, TPHCM.</p>\r\n<p class=\"nitro-offscreen\">V&igrave; vậy bạn h&atilde;y chọn những cơ sở uy t&iacute;n để mua, tr&aacute;ch mua tương ớt ở chợ, ở tr&ecirc;n facebook kh&ocirc;ng c&oacute; thương hi&ecirc;u.</p>\r\n<p class=\"nitro-offscreen\">Để mua tương ớt chuẩn bạn c&oacute; thể đến thăm du lịch Bắc H&agrave; rồi mua l&agrave; chuẩn nhất. Hoặc bạn cũng c&oacute; thể đặt h&agrave;ng online tại website để ch&uacute;ng t&ocirc;i phục vụ bạn d&ugrave; bạn ở bất cứ đ&acirc;u.</p>\r\n<p class=\"nitro-offscreen\">Với ch&iacute;nh s&aacute;ch mua h&agrave;ng online, giao h&agrave;ng thu tiền tại nh&agrave;, bạn c&oacute; thể an t&acirc;m về chất lượng với dịch vụ của ch&uacute;ng t&ocirc;i.</p>', 'products/May2023/Nt9tka1rwZwL5hRtQUsP.png', 80000, '1', 1, '2023-05-28 20:26:00', '2023-05-28 20:27:43'),
(3, 'Bột Cải Xoăn ( Cải Kale )', 'bot-cai-xoan-cai-kale', 'Với nguyên liệu từ nông trại tiêu chuẩn, bột cải xoăn Behena được sản xuất dựa trên phương pháp sấy lạnh và nghiền bằng cối đá granit theo công nghệ...', '<p>Trong một v&agrave;i năm gần đ&acirc;y, người d&acirc;n ở Bắc H&agrave;, tỉnh L&agrave;o Cai đ&atilde; đưa v&agrave;o trồng thử nghiệm c&acirc;y cải xoăn Kale tr&ecirc;n một số diện t&iacute;ch v&agrave; bước đầu cho kết quả khả quan về loại rau &ocirc;n đới n&agrave;y.</p>\r\n<p>C&acirc;y cải xoăn Kale đ&atilde; cho thấy sự sinh trưởng tốt tr&ecirc;n đồng đất của &ldquo;cao nguy&ecirc;n trắng&rdquo; Bắc H&agrave;, mở ra hướng đi mới cho ng&agrave;nh n&ocirc;ng nghiệp địa phương.</p>\r\n<p>Theo c&aacute;n bộ Trung t&acirc;m Dịch vụ n&ocirc;ng nghiệp&nbsp;<a href=\"https://www.vietnamplus.vn/tags/Huy%e1%bb%87n-B%e1%ba%afc-H%c3%a0.vnp\"><strong>huyện Bắc H&agrave;</strong></a>, tỉnh L&agrave;o Cai, c&acirc;y cải xoăn Kale l&agrave; giống rau nhập ngoại, c&oacute; xuất xứ từ H&agrave; Lan. Nhận thấy loại rau n&agrave;y c&oacute; những đặc điểm ph&ugrave; hợp với thổ nhưỡng, kh&iacute; hậu tại địa phương, th&aacute;ng 6/2018, Trung t&acirc;m đ&atilde; đưa về trồng khảo nghiệm tr&ecirc;n một số diện t&iacute;ch tr&ecirc;n địa b&agrave;n.</p>\r\n<p>Theo l&yacute; thuyết chuyển giao từ H&agrave; Lan, c&acirc;y sẽ sinh trưởng v&agrave; cho thu hoạch l&aacute; trong v&ograve;ng 6 th&aacute;ng, tuy nhi&ecirc;n, tr&ecirc;n thực tế tại Bắc H&agrave;, c&acirc;y c&oacute; chu kỳ sinh trưởng từ 8 đến 10 th&aacute;ng nếu thời tiết thuận lợi v&agrave; được chăm s&oacute;c tốt.</p>', 'products/May2023/OcEhjyUS1PSkqUywLWbN.png', 135000, '1', 1, '2023-05-28 20:31:06', '2023-05-28 20:31:06'),
(4, 'Cốm xanh Tây Bắc', 'com-xanh-tay-bac', 'Từ bao năm nay, sản phẩm cốm Bắc Hà, nhất là sản phẩm cốm ở làng nghề thôn Na Lo (xã Tả Chải) hay ở các xã Na Hối, xã Bản Liền đã trở nên gần gũi, được người tiêu dùng, nhất là Hà Nội, TP. Lào Cai, Phú Thọ... ưa chuộng.', '<p>Từ bao năm nay, sản phẩm cốm Bắc H&agrave;, nhất l&agrave; sản phẩm cốm ở l&agrave;ng nghề th&ocirc;n Na Lo (x&atilde; Tả Chải) hay ở c&aacute;c x&atilde; Na Hối, x&atilde; Bản Liền đ&atilde; trở n&ecirc;n gần gũi, được người ti&ecirc;u d&ugrave;ng, nhất l&agrave; H&agrave; Nội, TP. L&agrave;o Cai, Ph&uacute; Thọ... ưa chuộng. do đồng b&agrave;o T&agrave;y chế biến kh&aacute;c hẳn với cốm v&ugrave;ng kh&aacute;c bởi những hạt cốm được l&agrave;m từ giống l&uacute;a nếp địa phương trồng tr&ecirc;n nương, v&ugrave;ng kh&iacute; hậu lạnh, thời vụ k&eacute;o d&agrave;i n&ecirc;n hạt cốm mềm v&agrave; c&oacute; vị ngọt thanh m&aacute;t. Cốm thường được l&agrave;m theo phương ph&aacute;p truyền thống n&ecirc;n hạt cốm dẻo, m&agrave;u xanh tự nhi&ecirc;n, đặc biệt l&agrave; c&oacute; hương thơm độc đ&aacute;o.&nbsp;</p>\r\n<p>Ng&agrave;y trước, cốm v&agrave; khẩu rang thường được l&agrave;m v&agrave;o dịp trước vụ thu hoạch để tổ chức lễ cơm mới. C&ograve;n hiện nay, 2 m&oacute;n ăn n&agrave;y đ&atilde; trở th&agrave;nh những sản phẩm du lịch hấp dẫn ở Bắc H&agrave;, được thị trường ưa chuộng.</p>\r\n<p>Từ cuối th&aacute;ng 8 l&agrave; bắt đầu v&agrave;o m&ugrave;a l&agrave;m cốm. C&aacute;c gia đ&igrave;nh thường l&agrave;m cốm v&agrave;o 2 khung giờ trong ng&agrave;y, đ&oacute; l&agrave; buổi trưa để kịp đem b&aacute;n v&agrave;o buổi chợ chiều v&agrave; l&agrave;m ban đ&ecirc;m để kịp phi&ecirc;n chợ sớm. Tuy nhi&ecirc;n hiện nay, do ảnh hưởng của dịch bệnh Covid-19, hầu như kh&ocirc;ng c&oacute; kh&aacute;ch du lịch từ địa phương kh&aacute;c l&ecirc;n Bắc H&agrave;, n&ecirc;n phần lớn sản phẩm cốm Bắc H&agrave; được người d&acirc;n mang b&aacute;n v&agrave;o ng&agrave;y Chủ nhật tại chợ phi&ecirc;n trung t&acirc;m huyện.</p>', 'products/May2023/d5WeeRGDsI4ggAzrPy6s.png', 75000, '1', 1, '2023-05-28 20:33:00', '2023-05-30 00:12:18'),
(5, 'Mận sấy dẻo', 'man-say-deo', 'Bắc Hà được xem là thủ phủ mận Tam hoa của Lào Cai, của khu vực Tây Bắc và cả nước, chính vì vậy mận Tam hoa đã trở thành biểu tượng du lịch của Bắc Hà với mùa xuân hoa mận nở trắng rừng hòa lẫn sương khói trắng huyền ảo, nên thơ, lãng mạn; mùa hạ trái chín đỏ rực trên cành mời gọi du khách', '<p>Bắc H&agrave; được xem l&agrave; thủ phủ mận Tam hoa của L&agrave;o Cai, của khu vực T&acirc;y Bắc v&agrave; cả nước, ch&iacute;nh v&igrave; vậy mận Tam hoa đ&atilde; trở th&agrave;nh biểu tượng du lịch của Bắc H&agrave; với m&ugrave;a xu&acirc;n hoa mận nở trắng rừng h&ograve;a lẫn sương kh&oacute;i trắng huyền ảo, n&ecirc;n thơ, l&atilde;ng mạn; m&ugrave;a hạ tr&aacute;i ch&iacute;n đỏ rực tr&ecirc;n c&agrave;nh mời gọi du kh&aacute;ch. Mận Tam hoa Bắc H&agrave; đ&atilde; được Cục Sở hữu tr&iacute; tuệ (Bộ Khoa học v&agrave; C&ocirc;ng nghệ) chứng nhận đăng k&yacute; nh&atilde;n hiệu cho sản phẩm mận năm 2015, t&ocirc;n vinh c&acirc;y mận Tam hoa Bắc H&agrave;. Ở cao nguy&ecirc;n trắng Bắc H&agrave;, Mận Tam hoa Bắc H&agrave; bắt đầu ch&iacute;n từ đầu th&aacute;ng 5, nhưng ch&iacute;n rộ nhất l&agrave; v&agrave;o đầu th&aacute;ng 6, khi thời tiết đ&atilde; bắt đầu ấm l&ecirc;n cũng l&agrave; l&uacute;c Bắc H&agrave; thu h&uacute;t đ&ocirc;ng đảo kh&aacute;ch du lịch đến trải nghiệm m&ugrave;a mận Tam hoa ch&iacute;n. Mận được trồng nhiều nhất ở c&aacute;c x&atilde; v&ugrave;ng ven trung t&acirc;m huyện, như x&atilde; Na Hối, Bản Phố, T&agrave; Chải v&agrave; Thị Trấn Bắc H&agrave;. Mận tam hoa c&ograve;n được trồng ở c&aacute;c tỉnh v&ugrave;ng Lai Ch&acirc;u, Sơn La, Lạng Sơn&hellip; nhưng mận Bắc H&agrave; được đ&aacute;nh gi&aacute; l&agrave; ngon hơn cả bởi huyện Bắc H&agrave; được thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i về thổ nhưỡng v&agrave; kh&iacute; hậu dịu m&aacute;t n&ecirc;n quả mận to c&oacute; độ ngọt vượt trội, khi ch&iacute;n ăn gi&ograve;n tan, d&oacute;c hạt, kh&ocirc;ng c&ograve;n ch&uacute;t vị đắng n&agrave;o.<br><br>Từ khoảng năm 1985, mận Tam hoa được trồng đại tr&agrave; tại Bắc H&agrave;, diện t&iacute;ch được mở rộng nhanh ch&oacute;ng, hầu như nh&agrave; n&agrave;o cũng c&oacute; vườn mận v&agrave;i chục c&acirc;y, c&oacute; lẽ c&aacute;i t&ecirc;n &ldquo;cao nguy&ecirc;n trắng&rdquo; ra đời từ đ&oacute;. Thời điểm những năm 90 của thế kỷ trước, mận Tam hoa trở th&agrave;nh sản phẩm n&ocirc;ng nghiệp h&agrave;ng h&oacute;a đem lại hiệu quả kinh tế cao, tư thương nhộn nhịp về Bắc H&agrave; thu mua mận. Tuy nhi&ecirc;n đến đầu những năm 2000, v&igrave; người d&acirc;n ồ ạt trồng n&ecirc;n mận Tam hoa Bắc H&agrave; rơi v&agrave;o thời điểm &ldquo;khủng hoảng&rdquo;, gi&aacute; th&agrave;nh giảm nhiều so với những năm trước. Trải qua nhiều thăng trầm với c&acirc;y Mận Tam hoa, song hiện nay đối với nhiều hộ n&ocirc;ng d&acirc;n việc trồng mận tam hoa được coi l&agrave; c&acirc;y trồng x&oacute;a đ&oacute;i, giảm ngh&egrave;o tr&ecirc;n địa b&agrave;n, diện t&iacute;ch trồng v&agrave; sản lượng mận tam hoa tăng theo h&agrave;ng năm. Mận tam hoa Bắc H&agrave; m&atilde; đẹp, gi&ograve;n ngon, ngọt, gi&aacute; trị dinh dưỡng cao, gi&agrave;u vitamin v&agrave; kho&aacute;ng chất. Tuy nhi&ecirc;n việc bảo quản, đ&oacute;ng g&oacute;i để trở th&agrave;nh sản phẩm hữu cơ mang t&iacute;nh thương hiệu chưa được đề cao. Nhận thấy thực tế đ&oacute; Hợp t&aacute;c x&atilde; QUANG TOM ch&uacute;ng t&ocirc;i với mục ti&ecirc;u n&acirc;ng tầm gi&aacute; trị của c&aacute;c sản phẩm địa phương, đưa c&aacute;c sản phẩm đặc sản của địa phương đến với c&aacute;c du kh&aacute;ch v&agrave; người ti&ecirc;u d&ugrave;ng, Hợp t&aacute;c x&atilde; QUANG TOM đ&atilde; tiến h&agrave;nh nghi&ecirc;n cứu v&agrave; thử nghiệm thực hiện chế biến sản phẩm Mận tam hoa sấy dẻo nhằm chế biến quả mận tươi th&agrave;nh sản phẩm sấy dẻo gi&uacute;p cho việc bảo quản được l&acirc;u hơn v&agrave; trở th&agrave;nh h&agrave;ng thương phẩm.<br><br>Bước đầu thử nghiệm Hợp t&aacute;c x&atilde; ch&uacute;ng t&ocirc;i cũng gặp kh&ocirc;ng &iacute;t kh&oacute; khăn, do quả Mận tam hoa tương đối nhiều nước, k&iacute;ch thước quả Mận cũng kh&aacute;c nhau, hơn nữa lượng đường trong quả mận kh&aacute; kh&aacute;c nhau theo mức độ ch&iacute;n của quả. V&igrave; vậy để ra được sản phẩm, qu&aacute; tr&igrave;nh l&agrave;m cần rất tỉ mỉ, nghi&ecirc;n cứu kỹ về quy tr&igrave;nh v&agrave; h&agrave;m lượng đường, qu&aacute; tr&igrave;nh s&ecirc;n v&agrave; sấy cho từng mẻ sản phẩm. Tuy nhi&ecirc;n với mục ti&ecirc;u tạo ra sản phẩm hữu cơ c&oacute; gi&aacute; trị cao, chất lượng tốt, n&acirc;ng tầm gi&aacute; trị quả Mận tam hoa Hợp t&aacute;c x&atilde; ch&uacute;ng t&ocirc;i đ&atilde; quyết t&acirc;m v&agrave; th&agrave;nh c&ocirc;ng cho ra sản phẩm Mận tam hoa sấy dẻo với chất lượng được đ&aacute;nh gi&aacute; rất tốt: Từ những quả mận tam hoa ch&iacute;n mọng được thu h&aacute;i về qua những kh&acirc;u ph&acirc;n loại, l&agrave;m sạch, sau đ&oacute; ướp c&aacute;c nguy&ecirc;n liệu kh&aacute;c như: đường, gừng&hellip;.rồi s&acirc;y hơi, để nguội v&agrave; đ&oacute;ng g&oacute;i, hợp t&aacute;c x&atilde; Quang Tom đ&atilde; cho ra đời d&ograve;ng sản phẩm Mận tam hoa sấy dẻo c&oacute; hương vị đặc trưng, thơm, ngon, dẻo, độ ngọt ph&ugrave; hợp với đại đa số người ti&ecirc;u d&ugrave;ng. V&agrave; đặc biệt hơn cả, sản phẩm c&oacute; gi&aacute; trị dinh dưỡng cao, gi&agrave;u vitamin v&agrave; kho&aacute;ng chất. Đặc biệt sản phẩm sử dụng 100% c&aacute;c nguy&ecirc;n liệu tại địa phương, qu&aacute; tr&igrave;nh chế biến kh&ocirc;ng sử dụng chất bảo quản, chất phụ gia n&ecirc;n lu&ocirc;n giữ được hương vị tự nhi&ecirc;n của mận c&ugrave;ng với vị đặc trưng của c&aacute;c loại nguy&ecirc;n liệu tại địa phương. Quy tr&igrave;nh sản xuất kh&eacute;p k&iacute;n, đảm bảo c&aacute;c điều kiện vệ sinh an to&agrave;n thực phẩm ph&ugrave; hợp với nhu cầu sử dụng ng&agrave;y c&agrave;ng cao của thị trường</p>', 'products/May2023/0NrmgYpQDpPWkY8tqKCi.png', 135000, '1', 1, '2023-05-30 00:16:00', '2023-05-30 00:18:24'),
(6, 'Trà dây Fansitea', 'tra-day-fansitea', 'Trà dây FANSITEA sử dụng 100% lá Chè Dây non (Ampelopsis cantoniensis Planch.), được thu hái từ những cánh rừng tự nhiên trên rặng núi Hoàng Liên Sơn ở độ cao hơn 800m, đạt tiêu chuẩn GACP-WHO (Thực hành tốt trồng trọt và thu hái cây thuốc của tổ chức Y tế Thế Giới).', '<p>Tr&agrave; d&acirc;y FANSITEA sử dụng 100% l&aacute; Ch&egrave; D&acirc;y non (Ampelopsis cantoniensis Planch.), được thu h&aacute;i từ những c&aacute;nh rừng tự nhi&ecirc;n tr&ecirc;n rặng n&uacute;i Ho&agrave;ng Li&ecirc;n Sơn ở độ cao hơn 800m, đạt ti&ecirc;u chuẩn GACP-WHO (Thực h&agrave;nh tốt trồng trọt v&agrave; thu h&aacute;i c&acirc;y thuốc của tổ chức Y tế Thế Giới).</p>\r\n<p>Vi&ecirc;n &eacute;p Tr&agrave; d&acirc;y Fansitea được tạo ra bằng sự kết hợp độc đ&aacute;o giữa kinh nghiệm l&ecirc;n men truyền thống của người d&acirc;n bản địa v&agrave; c&ocirc;ng nghệ b&agrave;o chế hiện đại, gi&uacute;p bảo tồn nguy&ecirc;n vẹn những đặc t&iacute;nh qu&yacute; b&aacute;u của Ch&egrave; D&acirc;y đến tận tay người ti&ecirc;u d&ugrave;ng.</p>\r\n<p>Dihydromyricetin, hoạt chất ch&iacute;nh trong Ch&egrave; D&acirc;y đ&atilde; được nhiều nghi&ecirc;n cứu chỉ ra c&oacute; những t&aacute;c dụng:</p>\r\n<p>Kh&aacute;ng sinh, diệt vi khuẩn Helicobacter pylori g&acirc;y bệnh dạ d&agrave;y;<br>Giảm c&aacute;c triệu chứng do say rượu, ngộ độc rượu, hỗ trợ giải độc gan;<br>Chống oxy h&oacute;a mạnh, ức chế sự h&igrave;nh th&agrave;nh gốc tự do.<br>Theo tri thức bản địa, Ch&egrave; D&acirc;y đặc biệt tốt cho những người ti&ecirc;u h&oacute;a k&eacute;m (vi&ecirc;m dạ d&agrave;y - t&aacute; tr&agrave;ng, tr&agrave;o ngược dạ d&agrave;y - thực quản, vi&ecirc;m đại tr&agrave;ng m&atilde;n,...); người thường xuy&ecirc;n sử dụng rượu bia; người h&ocirc; hấp k&eacute;m (vi&ecirc;m thanh phế quản m&atilde;n, vi&ecirc;m họng m&atilde;n,...)</p>\r\n<p>Với cam kết thu h&aacute;i bền vững theo c&ocirc;ng ước đa dạng sinh học Quốc Tế (CBD) v&agrave; tu&acirc;n thủ c&aacute;c nguy&ecirc;n tắc cả Li&ecirc;n Minh thương mại sinh học c&oacute; đạo đức (UEBT), TraphacoSapa lu&ocirc;n duy tr&igrave; sự c&acirc;n bằng giữa c&aacute;c hoạt động khai th&aacute;c v&agrave; bảo tồn b&ecirc;n cạnh sứ mệnh đưa tri thức bản địa Việt Nam đến với Thế Giới.</p>\r\n<p>Hướng dẫn sử dụng:</p>\r\n<p>D&ugrave;ng với nước s&ocirc;i tr&aacute;ng dụng cụ pha tr&agrave;, sau đ&oacute; cho 1 vi&ecirc;n tr&agrave; v&agrave;o ấm hoặc b&igrave;nh pha tr&agrave;, th&ecirc;m khoảng 400 - 500ml nước s&ocirc;i (&gt; 95oC), để tr&agrave; ngấm khoảng 5 ph&uacute;t v&agrave; thưởng thức.</p>\r\n<p>D&ugrave;ng h&agrave;ng ng&agrave;y, uống thay nước.</p>', 'products/May2023/bqFu9J8OctGnzLINSXX5.jpg', 200000, '1', 3, '2023-05-30 00:29:20', '2023-05-30 00:29:20'),
(7, 'Giò cá Hồi Sa Pa', 'gio-ca-hoi-sa-pa', 'Cá Hồi là một đặc sản của Sa Pa, giàu giá trị dinh dưỡng chỉ có ở khu vực nước lạnh như Sa Pa, Lào Cai. Giò cá hồi được làm từ thịt cá hồi tươi đặc biệt tốt cho sức khỏe, nó có tác dụng ngăn ngừa bệnh tim, duy trì sức khỏe bộ não, giảm nguy cơ mắc bệnh ung thư da,… Cá hồi rất giàu axit béo omega-3', '<p>C&aacute; Hồi l&agrave; một đặc sản của Sa Pa, gi&agrave;u gi&aacute; trị dinh dưỡng chỉ c&oacute; ở khu vực nước lạnh như Sa Pa, L&agrave;o Cai. Gi&ograve; c&aacute; hồi được l&agrave;m từ thịt c&aacute; hồi tươi đặc biệt tốt cho sức khỏe, n&oacute; c&oacute; t&aacute;c dụng ngăn ngừa bệnh tim, duy tr&igrave; sức khỏe bộ n&atilde;o, giảm nguy cơ mắc bệnh ung thư da,&hellip; C&aacute; hồi rất gi&agrave;u axit b&eacute;o omega-3, loại chất gi&uacute;p tăng cường chức năng của bộ n&atilde;o như cải thiện tr&iacute; nhớ, thư gi&atilde;n n&atilde;o v&agrave; hạn chế sự suy giảm c&aacute;c chức năng của n&atilde;o g&acirc;y ra bệnh Alzheime. N&oacute; gi&uacute;p cho tr&iacute; nhớ sắc b&eacute;n hơn v&agrave; thậm ch&iacute; c&ograve;n gi&uacute;p bạn lu&ocirc;n tỉnh t&aacute;o trong những giờ l&agrave;m việc mệt mỏi. C&ugrave;ng với c&aacute;c th&agrave;nh phần dinh dưỡng amino axit, vitamin A v&agrave; D, selen, n&oacute; bảo vệ hệ thần kinh khỏi những t&aacute;c hại về l&acirc;u d&agrave;i. Qui tr&igrave;nh sản xuất: Sản phẩm gi&ograve; c&aacute; hồi Sa Pa Thức Mai l&agrave; sản phẩm được chế biến từ 80% c&aacute; hồi tươi được nu&ocirc;i tại suối lạnh Th&ocirc;n Can Hồ M&ocirc;ng x&atilde; Ngũ Chỉ Sơn thị x&atilde; Sa Pa, với t&acirc;m huyết t&igrave;m t&ograve;i v&agrave; học hỏi cơ sở đ&atilde; kết hợp đặc trưng của lườn c&aacute; v&agrave; mỡ c&aacute; v&agrave; 5 % thịt lợn để tạo ra 1 sản phẩm v&ocirc; c&ugrave;ng xuất sắc . C&aacute; hồi tươi được chế biến cắt bỏ đầu đu&ocirc;i v&agrave; được cơ sở ứng dụng thiết bị m&aacute;y m&oacute;c c&ocirc;ng nghệ loại bỏ xương v&agrave; cho v&agrave;o m&aacute;y chộn rồi say nhuyễn đ&ugrave;n ra khu&ocirc;n.Đặc biệt cơ sở c&ograve;n ứng dụng thiết bị m&aacute;y m&oacute;c hi&ecirc;n đại để bảo quản gi&ograve; được l&acirc;u hơn v&agrave; cho v&agrave;o ph&ograve;ng lạnh xử l&yacute; nấm mốc rồi đưa ra đ&oacute;ng g&oacute;i h&uacute;t ch&acirc;n kh&ocirc;ng, c&oacute; nh&atilde;n hiệu v&agrave; ghi nh&atilde;n đầy đủ để đ&aacute;p ứng nhu cầu thị trường. C&aacute;ch bảo quản: Ngăn m&aacute;t hoặc ngăn đ&aacute; tủ lạnh Với b&iacute; quyết ri&ecirc;ng n&ecirc;n sản phẩm gi&ograve; c&aacute; hồi Sa Pa Thức Mai c&oacute; m&agrave;u v&agrave;ng đỏ đặc trưng, mịn hương vị đậm đ&agrave; thơm ngon của thịt c&aacute; hồi Sa Pa l&agrave;m cho sản phẩm kh&aacute;c biệt với c&aacute;c sản phẩm kh&aacute;c v&agrave; được người ti&ecirc;u d&ugrave;ng ưa chuộng.</p>', 'products/May2023/jwOKieKJcAaulgCBOnsJ.jpg', 75000, '1', 3, '2023-05-30 00:30:36', '2023-05-30 00:30:36'),
(8, 'Tinh bột nghệ đen nguyên chất 500 gam', 'tinh-bot-nghe-den-nguyen-chat-500-gam', 'Lấy 2-3 thìa cafe tinh nghệ đên hòa tan với 100ml nước sôi để nguội rồi uống. Có thể dùng chhung với sữa hoặc vài giọt mật ong dể đễ uống. \r\nKhông dùng cho phụ nữ đang trong thời kỳ mang thai. Vì bột nghệ đen có thể làm xảy ra nguy cơ xảy thai là rất cao.', '<p>Lấy 2-3 th&igrave;a cafe tinh nghệ đ&ecirc;n h&ograve;a tan với 100ml nước s&ocirc;i để nguội rồi uống. C&oacute; thể d&ugrave;ng chhung với sữa hoặc v&agrave;i giọt mật ong dể đễ uống.&nbsp;<br>Kh&ocirc;ng d&ugrave;ng cho phụ nữ đang trong thời kỳ mang thai. V&igrave; bột nghệ đen c&oacute; thể l&agrave;m xảy ra nguy cơ xảy thai l&agrave; rất cao.</p>\r\n<p>Li&ecirc;n hệ mua h&agrave;ng: HTX N&ocirc;ng sản dược liệu Manh Hương</p>\r\n<p>Điện thoại:0986937576- 0986855138</p>\r\n<p>Địa chỉ: Th&ocirc;n Bản Bay, x&atilde; Gia Ph&uacute;, huyện Bảo Thắng, tỉnh L&agrave;o Cai</p>', 'products/May2023/GvlhYBcWGNaSjsfGc7eJ.jpg', 250000, '1', 3, '2023-05-30 00:32:05', '2023-05-30 00:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Administrator', '2023-05-28 18:38:05', '2023-05-30 02:47:30'),
(2, 'user', 'Normal User', '2023-05-28 18:38:05', '2023-05-28 18:38:05'),
(3, 'content', 'content', '2023-05-30 02:50:23', '2023-05-30 02:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Bắc hà', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Bắc Hà không choáng ngợp trong lần đầu gặp gỡ mà nhẹ nhàng len lỏi vào trái tim mỗi du khách theo bước chân của bốn mùa: sự chân tình ấm áp của người Bắc Hà', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/May2023/x18VvzDZSu0wKJ3rDMUi.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/May2023/XRg9ATSfecN7lFrINti5.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Số Hóa Vùng Trồng', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Bắc Hà.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/May2023/5L3KALN1n4BOjaWZ5TZ2.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.address', 'address', 'thị trấn Bắc Hà - tỉnh Lào Cai', NULL, 'text', 6, 'Site'),
(12, 'site.phone', 'phone', '02143 880 243', NULL, 'text', 7, 'Site'),
(13, 'site.map_contact', 'map_contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7370.120086491149!2d104.28501604552639!3d22.53942342741149!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cce2af02aaea73%3A0xaaeb8aef030ef576!2zdHQuIELhuq9jIEjDoCwgQuG6r2MgSMOgLCBMw6BvIENhaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1685176418251!5m2!1svi!2s\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 8, 'Site'),
(15, 'site.breadcrumb', 'breadcrumb', 'settings/May2023/dn11tKISh61YN2Q1kxxL.png', NULL, 'image', 9, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-05-28 18:38:07', '2023-05-28 18:38:07'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-05-28 18:38:07', '2023-05-28 18:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/May2023/5ZCEHsNsKciR46KCU5iG.png', NULL, '$2y$10$nEYP1kfHA91o52o1klCII.dxAHlmgmhJ4W6fKMwhZMC/c0r8Mq6EC', 'aSr242pXJvPPRIdUU0schBgiY8AygRJaqWqkjvBJ28LnPitsXlBcJhRsIwiU', '{\"locale\":\"vi\"}', '2023-05-28 18:38:06', '2023-05-30 02:48:06'),
(2, 3, 'Content', 'content@content.com', 'users/May2023/SbjQg9ggB1ZemynKKf7n.png', NULL, '$2y$10$V4O6akOscibDuDX3OiSVXe2jJj5o1p7nZtxX3H8U4SohlQiBkHtpK', NULL, '{\"locale\":\"vi\"}', '2023-05-30 02:51:19', '2023-05-30 02:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `classifies`
--
ALTER TABLE `classifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classifies`
--
ALTER TABLE `classifies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
