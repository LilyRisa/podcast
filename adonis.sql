-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2020 lúc 03:05 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `adonis`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(18, '1503248427885_user', 1, '2020-12-10 10:04:37'),
(19, '1503248427886_token', 1, '2020-12-10 10:04:37'),
(20, '1607224420622_category_schema', 1, '2020-12-10 10:04:37'),
(21, '1607224825814_episode_schema', 1, '2020-12-10 10:04:37'),
(22, '1607225154046_tags_schema', 1, '2020-12-10 10:04:37'),
(23, '1607518210618_episode_tag_schema', 1, '2020-12-10 10:04:37'),
(27, '1607752119789_public_mess_schema', 2, '2020-12-12 06:36:21'),
(28, '1607865370786_blog_schema', 3, '2020-12-13 13:18:35'),
(29, '1607933735563_comment_schema', 4, '2020-12-14 11:01:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_create` int(10) UNSIGNED NOT NULL,
  `cover` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `user_create`, `cover`, `blog`, `created_at`, `updated_at`) VALUES
(2, 1, 'VanMin-file--867e0fbbb6e96cbcb40a47cda9d6bd5e-jpg-1607875349', 'hihihi', '2020-12-13 23:02:34', '2020-12-13 23:02:34'),
(3, 1, 'VanMin-file--b7e6625308cd36cd52a21fc94bd11278-jpg-1607875413', 'hahaaa', '2020-12-13 23:03:37', '2020-12-13 23:03:37'),
(4, 1, 'VanMin-file--da776f9b19ec9fe1176b3200266b704c-jpg-1607878180', 'Chất liệu EVA siêu nhẹ\nMịn, êm, mềm, sành điệu\nĐi nước thoải mái, Cực dễ làm sạch\nChuỗi cửa hàng thời trang nam TomStore lớn nhất miền Bắc.\n\n- Uy tín đã được đảm bảo qua hàng vạn đơn hàng trên khắp cả nước\n\n- Fanpage: Tom Store\n\nDép YZ Slide Bone, dép quai ngang chất liệu EVA siêu nhẹ D710\n\n- Chất liệu EVA siêu nhẹ\n\n- Mịn, êm, mềm, sành điệu\n\n- Đi nước thoải mái\n\n- Cực dễ làm sạch\n\nMàu sắc: Đen, Kem\n\nKích cỡ: 40-44\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '2020-12-13 23:50:01', '2020-12-13 23:50:01'),
(5, 1, 'VanMin-file--827abbf06f28cfe3214b17d57345dd72-jpg-1607878212', 'Áo thun unisex tay lỡ chất liệu cotton cực thoáng mát\r\nKích thước: freesize\r\nMàu sắc: Xanh dương, tím\r\nÁo thun tay lỡ form rộng Unisex cho cả nam và nữ, 1 item không thể thiếu trong tủ quần áo của những anh chàng hay cô nàng năng động cá tính.\r\nIn cao cấp đặc biệt không ra màu, KHÔNG BONG TRÓC và AN TOÀN với sức khoẻ)\r\nFreesize < 67kg và cao dưới <1m67 vô tư bận, mặc vô cùng thoải mái khách nhé\r\nCHẤT LIỆU: Chất thun mịn mát, không co rút, dày vừa ko bí, PHÙ HỢP GIÁ TIỀN, mang đến cảm giác dễ chịu cho người sử dụng.\r\nMàu sắc có thể đậm hoặc nhạt 1-5% do hiệu ứng ánh sáng (có thể do bóng râm, đèn sáng hoặc tối, độ phân giải của máy)\r\nhttps://fb.com/bo.cuaban.7169', '2020-12-13 23:50:42', '2020-12-13 23:50:42'),
(6, 3, 'VanMin-file--e190a322c60eb9c63ca7553eaf335b57-jpg-1607946598', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-14 18:50:15', '2020-12-14 18:50:15'),
(7, 3, 'VanMin-file--85d507e89b6f27ead415b8c76026dbdd-jpg-1608122653', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32', '2020-12-16 19:44:29', '2020-12-16 19:44:29'),
(8, 1, 'VanMin-file--7b226998e9a8ce6bb335a1e9df442c5d-jpg-1608133235', 'Lorem Ipsum chỉ đơn giản là văn bản giả của ngành in ấn và sắp chữ. Lorem Ipsum đã trở thành văn bản giả tiêu chuẩn của ngành kể từ những năm 1500, khi một nhà in không xác định lấy một dãy loại và xáo trộn nó để tạo ra một cuốn sách mẫu. Nó đã tồn tại không chỉ năm thế kỷ, mà còn là bước nhảy vọt vào lĩnh vực sắp chữ điện tử, về cơ bản vẫn không thay đổi. Nó được phổ biến vào những năm 1960 với việc phát hành các tờ Letraset chứa các đoạn Lorem Ipsum, và gần đây hơn là với phần mềm xuất bản trên máy tính để bàn như Aldus PageMaker bao gồm các phiên bản của Lorem Ipsum.', '2020-12-16 22:40:47', '2020-12-16 22:40:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_create` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumb` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `user_create`, `name`, `descriptions`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 1, 'music', 'music', 'VanMin-file--ab5b5fc90c60c419d780afbffb097bcc-jpg-1607839833', '2020-12-10 17:08:09', NULL),
(2, 1, 'unknows', 'unknows', 'VanMin-file--e864f2d1d0469685a8936ad517980b4b-jpg-1607839857', '2020-12-10 17:08:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_create` int(10) UNSIGNED NOT NULL,
  `episode_id` int(10) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_create`, `episode_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'hello các maifen', '2020-12-14 18:02:49', '2020-12-14 18:02:49'),
(2, 1, 11, 'hello các mai fennhe ', '2020-12-14 18:05:19', '2020-12-14 18:05:19'),
(3, 1, 11, ':))\n', '2020-12-14 18:05:46', '2020-12-14 18:05:46'),
(4, 1, 10, 'hihi\n', '2020-12-14 19:32:05', '2020-12-14 19:32:05'),
(5, 1, 11, ':) ', '2020-12-16 19:23:15', '2020-12-16 19:23:15'),
(6, 3, 11, 'hihi', '2020-12-16 19:23:54', '2020-12-16 19:23:54'),
(7, 3, 11, 'M♥♥☻♥♥♥', '2020-12-16 19:42:44', '2020-12-16 19:42:44'),
(8, 1, 12, 'demo', '2020-12-16 22:34:56', '2020-12-16 22:34:56'),
(9, 1, 16, 'hihi', '2020-12-19 13:37:04', '2020-12-19 13:37:04'),
(10, 3, 13, '♥', '2020-12-20 20:11:17', '2020-12-20 20:11:17'),
(11, 3, 18, '♥', '2020-12-27 19:34:38', '2020-12-27 19:34:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_create` int(10) UNSIGNED NOT NULL,
  `path_audio` longtext COLLATE utf8_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `episode`
--

INSERT INTO `episode` (`id`, `category_id`, `title`, `descriptions`, `user_create`, `path_audio`, `images`, `policy`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hai Phút Hơn Phao, CM1X', 'Người đăng: TTT\nBài hát: Hai Phút Hơn\nCa sĩ: Pháo\nTay em đang run run\nNhưng anh thì cứ rót đi\nAnh mà không nể em\nLà khi mà anh không hết ly\nUống thêm vài ly\nVì đời chẳng mấy khi vui\nNốc thêm vài chai\nVì anh em chẳng mấy khi gặp lại\nNơi đây đang xoay xoay\nThế gian đang xoay vòng\nAnh đang ở nơi đâu\nBiết anh có thay lòng\nĐừng nói chi, mình uống đi\nMột hai ba bốn hai ba một\nHình như anh nói anh say rồi\nMột hai ba bốn hai ba một\nHình như anh nói anh yêu em rồi\nUống đi! Uống\nĐể chuyện buồn được cuốn đi\nHuống chi! Vì\nThời điểm này có mấy khi\nEm hãy cứ vui như lần này\nÁnh mắt trao anh vẫn còn đầy\nChìm đắm men rượu trong tầm tay\nVì quãng đường chông gai\nĐã làm cho ta hào mòn gầy\nHạ ly cạn ở trên tay\nMà không hay mình thêm say\nƯu phiền ngày hôm nay\nTất cả được quên ngay\nĐể tâm tư…', 1, 'VanMin-file--84b225b6426142fbe014d49f444f9063-mp3-1608617707', 'VanMin-file--c8ac02376c4b0055a45af6f846040754-jpg-1607594991', NULL, '2020-12-10 17:10:09', '2020-12-10 17:10:09'),
(2, 2, 'TIME TO LOVE 2 REMIX | ÂN BEAT REMIX', '------------------------------------\n►Video edited by NGUYỄN TRỌNG ÂN\n-------------------------------------\nTags: \n-------------------------------------\n© Bản quyền thuộc về ÂN BEAT\n© Copyright by ÂN BEAT ☞ Do not Reup', 1, 'VanMin-file--22df27f20fc31d56d3015ecf629c7a00-mp3-1608617764', 'VanMin-file--75dc18d3411fcef1fda07d98375a2906-jpg-1607595072', NULL, '2020-12-10 17:11:56', '2020-12-10 17:11:56'),
(3, 1, 'Ngây Thơ - Tăng Duy Tân x Phong Max | BAE ', 'Executive Producer: CƯỜNG CHU\nComposer: PHONG MAX  \nMusic Producer: PHONG MAX   \nArtist: TĂNG DUY TÂN  \nStaring: PHƯƠNG THẢO, DƯƠNG LONG  \nMixing Vocal: The Loser Studio  \nTalent Manager: THU CHAN  \nProject Manager:  BIG ARTS ENTERTAINMENT\nDirected by: CƯỜNG CHU\nD.O.P: TRUTRI  \nProducer: THU CHAN, ĐỊNH VŨ  \nScriptwriter: CƯỜNG CHU  \nCamera Operator: SƠN HOÀNG\nFocus Puller: VŨ ĐINH  \nPhotographer: BOF  \nArtwork Design & Typography:  ĐỨCC ĐỨCC, BOF, QUANG HUY\nEditor & Colorist: LONG TRƯƠNG\nCamera Equipment: TLPRODUCTIONS  \nTeam BTS Video & Editor: ĐỊNH VŨ, THIỆN NGUYỄN  Catering: VĂN LONG\nM.U.A: Team LINH TUYẾT \nStylist: HO MẬP\nActing Coach: DƯƠNG LONG', 1, 'VanMin-file--24132149f10bbf5419efc0c8b09230ef-mp3-1608618079', 'VanMin-file--2bd71460d00c4c8964a20732a89eedb5-jpg-1607595157', NULL, '2020-12-10 17:13:07', '2020-12-10 17:13:07'),
(5, 2, 'Điêu Toa - Masew x Pháo | phongmax', 'Tay ta ôm bão giông không đành\nTrót lấy thân mình\nKhó mấy cũng dành\nNhưng nhận lại điều gì ngoài bão với giông\nEm giờ còn lại gì ngoài ngóng với trông\n\nYêu xa phải nhớ lấy điều là\nĐiêu toa\nKhó chắc tình mình về lâu về dài\nAi là sai\nEm hay là ai\nAi phải đau\nThở dài vào ngày sau\n\nWow lời nói cứ như là bạc là vàng có ta và chàng\nNgồi ở đây chứng giám cho\nChẳng việc gì phải lắng lo\n\nLời nói cứ như là bạc là vàng có ta và chàng\nNgồi ở đây chứng giám cho\nChẳng việc gì phải lắng lo\nNgồi ở đây chứng giám cho\n\nChẳng việc gì phải lắng lo\n\nAnh à... anh à... có ta và chàng\nAnh à... anh à... có ai đợi mình\nAnh à... anh à... có ta và chàng\nAnh à... anh à... điêu toa là câu trả lời\n\nTim của ta anh cứ đi vào (anh cứ đi mà)\nSay nhưng đâu một li nào\nNgười từng nói không rời xa\n\nMà còn bước qua đời ta\nThì thôi anh điêu toa là câu trả lời\n\nAnh\nLạc vào cõi nhân gian\n\nLàm cho lí trí thân tâm\nTa cũng hân hoan (nhưng mà)\nLàm nát tan cuộc tình\nKhóc than một mình \nPhía cuối hành trình\nCó ai đợi mình (có ai đợi mình)\n\nWow lời nói cứ như là bạc là vàng có ta và chàng\nNgồi ở đây chứng giám cho\nChẳng việc gì phải lắng lo\n\nLời nói cứ như là bạc là vàng có ta và chàng\nNgồi ở đây chứng giám cho\nChẳng việc gì phải lắng lo', 1, 'VanMin-file--5e5b0252b084d7e782998481a0d22cad-mp3-1608617683', 'VanMin-file--07c050ab40fe6950e4390568a3b3393c-jpg-1607595212', NULL, '2020-12-10 17:14:19', '2020-12-10 17:14:19'),
(6, 1, 'AI MANG CÔ ĐƠN ĐI - K-ICM | Hương ly cover', 'Ánh trăng lạc lối gieo phù hoa duyên hóa thành tro\nMặt hồ rung lên mang hạt mưa xuyên nát lòng ta\nTrái tim rộng lớn thu nhân gian trong đôi mắt sầu lo\nBầu trời riêng ta ru lời ca nhắn ai đừng xa\nHà a ha à a, nhắn ai đừng xa\nNhìn từng chiếc lá úa phai màu rụng rời ngoài hiên\nHà a ha à a, mình ta với ta thôi mà\nTấm thân này chịu nhiều đớn đau lưu luyến\nGió lung lay bàn tay nâng cánh hoa tình\nDẫu trăm năm người thương vẫn cách xa mình\nThuyền mãi ra khơi đi về nơi con sóng vô hình\nChốn xa xăm trùng dương muôn hướng vạn lý\nVà đêm tối bên trong tâm hồn từng dòng suy nghĩ ta xa nhau vì?\nBình minh giấu đi cô đơn ngày dài ta mong quên đi\nAi ai mang cô đơn đi\nAi ai mang cô đơn đi\nAi ai mang cô đơn đi\nVà ai\nHà a ha à a, nhắn ai đừng xa\nNhìn từng chiếc lá úa phai màu…', 1, 'VanMin-file--d069a9921fff18118782054de2650c8c-mp3-1608633253', 'VanMin-file--be9732b619fb040ec65a5ea00d2af18e-jpg-1607595278', NULL, '2020-12-10 17:15:36', '2020-12-10 17:15:36'),
(7, 1, 'Short Skirt - Niz ( Em là Bad girl trong bộ váy ngắn )', ' Emm là goodgirl trong bộ áo trắng \nChăm lo học hành vì sợ bố mắng', 1, 'VanMin-file--5f79ea0c09ef4995b0a30347a052f310-mp3-1608617943', 'VanMin-file--1874ab8631a48d0405bb994bf7f455cf-jpg-1607595360', NULL, '2020-12-10 17:18:19', '2020-12-10 17:18:19'),
(8, 1, 'Tình Yêu Khủng Long', 'Em ngồi đếm nổi đau bên cạch ly soda\nAnh buồn không? Em rất buồn\nNhưng tại sao? Em chẳng thể hiểu\n\nAnh đợi chi, anh đợi anh ? Thế anh\nNhìn xa xăm, bên hiên nhà anh đang vô tư cười với ai ?\nÔii tình yêu đơn phương thật rất mỏi mệt\nThế nên là ...\nEm có nên nói ra những lời ...\n\n[ĐK:]\nSâu thẳm trong trái tim em\nMột tình yêu siêu khủng long\nAnh nói anh thích giản đơn\nVậy em cũng sẽ giản đơn\n\nMiễn là anh yêu em\nMiễn là anh bên em\nĐơn giản và rất giản đơn\nTình yêu em như ly trà sữa trân trâu\n\nÍt trân trâu , nhưng siêu to tình iu của em\nDốt toán nhưng em biết tính anh\nNhút nhát nhưng cũng biết nói yêu\nVậy nên yêu em nhé anhhh\n\n2. Kỳ ghê ta ? Ôi sao lần nào cũng thế\nKhông gặp anh một hôm thôi tưởng như cả năm\nLà anh không thấy hay anh không hiểu ra vấn đề\nAnh ngốc nghếch anh vô tâm với em\n\nNhìn xa xăm , bên hiên nhà anh đang vô tư cười với ai?\nÔii tình yêu đơn phương thật rất mỏi mệt\nThế nên là ...\nEm có nên nói ra những lời ...\n\n[ĐK:]\nSâu thẳm trong trái tim em\nMột tình yêu siêu khủng long\nAnh nói anh thích giản đơn\nVậy em cũng sẽ giản đơn\n\nMiễn là anh yêu em\nMiễn là anh bên em\nĐơn giản và rất giản đơn', 1, 'VanMin-file--e2309e5fb1750f947024f96171bb74cc-mp3-1608617843', 'VanMin-file--912d44dbf12ccdc46fcd72cfe99b31e0-jpg-1607738901', NULL, '2020-12-12 09:08:53', '2020-12-12 09:08:53'),
(9, 2, 'Khóc Cùng Em (Mr Siro x Gray x Wind) – Lê Thùy Trang Cover | MV Lyrics', '-[LYRICS]—\nCuộc gọi đến, và như mọi khi\nLà lặng nghe em khóc\nI try so very hard to listen your story\nBut you don\'t know it hurts me so bad\nCầu trời chóng ấm\nĐêm đông buốt giá kia sẽ bớt lạnh\nĐôi tay giấu ác mộng dọa dẫm\nHy vọng càng mong manh\nVùi chôn tổn thương\nTội con tim này đơn phương\nChờ đợi một người\nDù biết chẳng có cơ hội\nĐiều gì nhẫn tâm hơn sự im lặng?\nMuộn phiền người trút lên đôi vai này\nRồi ngày mai còn cần anh không?\nMột vòng tròn tối tăm không ra lối\nĐó là những gì mà anh\nPhải kìm nén tất cả đau đớn, tủi thân\nĐể bên em\nLàm gì để ngần ấy vết dao khép lại\nĐể giấu đi bao nỗi đau trĩu nặng\nSợ ngày nào nếu tim vỡ trăm mảnh\nChỉ còn lại vài nhịp mong manh\nChuyện tình về trái tim sắp gục ngã\nBên hai trái tim hạnh phúc\nHọa thành bức tranh về tình yêu\nTrong đó mờ tên anh\nI don\'t know why\nI need you so bad\nEm luôn xa con tim này\nVì em không yêu sao có thể hiểu\nMình như đường thẳng song song vậy\nVì chưa từng có làm sao thiếu\nPhải lặng lẽ ở bên\nTàn sức thương một người không lối thoát\nChờ đợi một người\nDù biết chẳng có cơ hội\nĐiều gì nhẫn tâm hơn sự im lặng?\nMuộn phiền người trút lên đôi vai này\nRồi ngày mai còn cần anh không?\nMột vòng tròn tối tăm không ra lối\nĐó là những gì mà anh\nPhải kìm nén tất cả đau đớn, tủi thân\nĐể bên em\nLàm gì để ngần ấy vết dao khép lại\nĐể giấu đi bao nỗi đau trĩu nặng\nSợ ngày nào nếu tim vỡ trăm mảnh\nChỉ còn lại vài nhịp mong manh\nChuyện tình về trái tim sắp gục ngã\nBên hai trái tim hạnh phúc\nHọa thành bức tranh về tình yêu\nTrong đó mờ tên anh\nMùa đông và nỗi nhớ tựa như tri kỷ\nNghìn năm không rời\nLạnh môi tay khẽ run từng đêm một mình\nVì nhớ bóng hình\nGiờ em nghĩ đến ai\nMà môi không ngừng cười\nPlease don\'t do it any more!\nChờ đợi một người\nDù biết chẳng có cơ hội\nĐiều gì nhẫn tâm hơn sự im lặng?\nMuộn phiền người trút lên đôi vai này\nRồi ngày mai còn cần anh không?\nMột vòng tròn tối tăm không ra lối\nĐó là những gì mà anh\nPhải kìm nén tất cả đau đớn, tủi thân\nĐể bên em\nLàm gì để ngần ấy vết dao khép lại\nĐể giấu đi bao nỗi đau trĩu nặng\nSợ ngày nào nếu tim vỡ trăm mảnh\nChỉ còn lại vài nhịp mong manh\nChuyện tình về trái tim sắp gục ngã\nBên hai trái tim hạnh phúc\nHọa thành bức tranh về tình yêu\nTrong đó mờ tên anh\nCuộc gọi đến, và như mọi khi\nLà lặng nghe em khóc\nI try so very hard to listen your story\nBut you don\'t know it hurts me so bad \n---------------- ', 1, 'VanMin-file--6e2f9f5cdb947a882e2a1e9c0bd6699c-mp3-1608617860', 'VanMin-file--e7b2729ae167930a59089a2b47d41dd9-jpg-1607773318', NULL, '2020-12-12 18:42:38', '2020-12-12 18:42:38'),
(10, 1, 'Hoa sứ nhà nàng - Anh Khang |chillbolero|', 'Đêm Đêm Ngủ Ngoài Hiên\nMụ Điên Mụ Tới Mụ Rờ', 1, 'VanMin-file--8822b0566a28443cefe3214a9eaada9b-mp3-1608617337', 'VanMin-file--dd57be9eee11527ecf134ccccab8c4b6-jpg-1607778877', NULL, '2020-12-12 20:14:40', '2020-12-12 20:14:40'),
(11, 2, 'On My Way Remix | DJ Tilo | BẢN REMIX CỰC HAY', ' Link MV: https://youtu.be/dhYOPzcsbGM\n\n- Quốc Khánh Music xin gửi tới mọi người những bài nhạc việt mix hoặc nonstop hay và hấp dẫn nhất.\n- Nhớ like và đăng kí kênh ủng hộ để mình có động lực đăng những bài nhạc hay dành tặng mọi người nhé.\n\n????Liên Hệ Với Tôi: phicongboy102@gmail.com\n\n® Tôi không sở hữu bất kì nội dung nào của bài hát hoặc hình ảnh đã được tải lên chỉ vì mục đích quảng bá. Nếu có bất cứ khiếu nại về bản quyền liên quan đến video, xin hãy liên hệ trực tiếp với tôi qua (gmail: phicongboy102@gmail.com). Xin cảm ơn!\n® If my video contains your copyright, please send me a message to (gmail: phicongboy102@gmail.com). Thank you very much!', 1, 'VanMin-file--a2d366b7e7d0affd0d9ee287be9971e2-mp3-1608617311', 'VanMin-file--a7275d6ee2958d9328277a231351de04-jpg-1607785720', NULL, '2020-12-12 22:09:06', '2020-12-12 22:09:06'),
(12, 1, 'TÌNH ĐẦU - Tăng Duy Tân | Official Music Video', 'TÌNH ĐẦU \n#tinhdau #tangduytan\nComposer: Tăng Duy Tân\nMusic Producer: Drum7\nMix & Master: Minh Phong\nStarring: Hannah Hoang, Đào Thị Quỳnh\nD.O.P & Edit video: Định Vũ & PIC Media\nMakeup: Linh Tuyết\n_____________________________________\nSpecial thank: Nhà Sàn Art Cafe - ngõ 6 Vĩnh Phúc, Ba Đình, Hà Nội\n_____________________________________\nFollow Tăng Duy Tân: \nhttps://www.facebook.com/tangduytan1508', 1, 'VanMin-file--a904d51cba77eb96d8433c2e72d77a7a-mp3-1608617820', 'VanMin-file--9808a8a8b1e9ae0808e7fb436ce35c8c-jpg-1608132828', NULL, '2020-12-16 22:34:14', '2020-12-16 22:34:14'),
(13, 1, 'Luis Fonsi - Despacito ft. Daddy Yankee', 'Despacito” disponible ya en todas las plataformas digitales: https://UMLE.lnk.to/DOoUzFp \n“Imposible” disponible ya en todas las plataformas digitales: https://UMLE.lnk.to/IMPOSIBLEFp\n“Calypso” disponible ya en todas las plataformas digitales: https://UMLE.lnk.to/CLYPSFp\nEchame La Culpa disponible ya en todas las plataformas digitales: https://UMLE.lnk.to/ELCFp\n\n\nBest of Luis Fonsi / Lo mejor Luis Fonsi: https://goo.gl/KLWPSa \nSubscribe here: https://goo.gl/nkhcGc\nSigue a Luis Fonsi: \nOfficial Site: http://www.luisfonsi.com/ \nFacebook: https://www.facebook.com/luisfonsi/ \nTwitter: https://twitter.com/LuisFonsi \nInstagram: https://www.instagram.com/luisfonsi\n\n#LuisFonsi #Despacito #Imposible #Calypso #EchamelaCulpa #NadaEsImposible #NothingisImpossible #LF\n\n\nMusic video by Luis Fonsi performing Despacito. (C) 2017 Universal Music Latino', 1, 'VanMin-file--09fa183660ad3845339cc71e4db48197-mp3-1608617882', 'VanMin-file--71283973fa5cc9bfcbeedb6c06e16c08-jpg-1608353030', NULL, '2020-12-19 11:44:12', '2020-12-19 11:44:12'),
(14, 1, 'That Girl - Olly Murs', '\n\nLyrics ♥️\nThat Girl\nOlly Murs\nThere\'s a girl but I let her get away\nIt\'s all my fault \'cause pride got in the way\nAnd I\'d be lying if I said I was ok\nAbout that girl the one I let get away\nI keep saying no\nThis can\'t be the way we\'re supposed to be\nI keep saying no\nThere\'s gotta be a way to get you close to me\nNow I know you gotta\nSpeak up if you want somebody\nCan\'t let him get away, oh no\nYou don\'t wanna end up sorry\nThe way that I\'m feeling everyday\nNo no no no\nThere\'s no hope for the broken heart\nNo no no no\nThere\'s no hope for the broken\nThere\'s a girl but I let her get away\nIt\'s my fault \'cause I said I needed space\nI\'ve been torturing myself night and day\nAbout that girl, the one I let get away\nI keep saying no\nThis can\'t be the way we\'re supposed to be\nI keep saying no\nThere\'s gotta be a way to get you\nThere\'s gotta be a way\nTo get you close to me\nYou gotta\nSpeak up if you want somebody\nCan\'t let him get away, oh no\nYou don\'t wanna end up sorry\nThe way that I\'m feeling everyday\nNo no no no\nThere\'s no hope for the broken heart\nNo no no no\nThere\'s no hope for the broken\nNo home for me\nNo home \'cause I\'m broken\nNo room to breathe\nAnd I got no one to blame\nNo home for me\nNo home \'cause I\'m broken\nAbout that girl\nThe one I let get away\nSo you better speak up if you want somebody\nCan\'t let him get away oh no no\nYou don\'t wanna end up sorry\nThe way that I\'m feeling everyday\nDon\'t you know\nNo no no no\nThere\'s no hope for the broken heart\nDon\'t you know\nNo no no no\nThere\'s no hope for the broken\nYou don\'t wanna lose at love\nIt\'s only gonna hurt too much\nI\'m telling you\nYou don\'t wanna lose at love\nIt\'s only gonna hurt too much\nYou don\'t wanna lose at love\n\'Cause there\'s no hope for the broken heart\nAbout that girl\nThe one I let get away', 1, 'VanMin-file--80d0399693875ced5892cd54b18efd61-mp3-1608617991', 'VanMin-file--484c825d1887bfe0080da33d4ac13b5d-jpg-1608358229', NULL, '2020-12-19 13:10:55', '2020-12-19 13:10:55'),
(15, 1, 'MUSIC VIDEO | SƠN TÙNG M-TP', 'Được thực hiện bởi / Video made by\nSáng tác / Composer: Son Tung M-TP\nHòa âm phối khí / Music Producer: Triple D \nDiễn viên / Artress: Ho Thu Anh\nĐạo diễn / Director: Dinh Ha Uyen Thu\nHoạ sĩ thiết kế / Production designer: Do Ba Ty \nGiám đốc hình ảnh / D.O.P: Tung Bui\nHậu kỳ / Post production: MR.BLUE\nĐơn vị sản xuất / Executive Producer: M&M HOUSE', 1, 'VanMin-file--10a95bbc0dacffbf25ae04675d7b9f82-mp3-1608617740', 'VanMin-file--e086a7698e004f37ac0ac532781fa228-png-1608359443', NULL, '2020-12-19 13:31:12', '2020-12-19 13:31:12'),
(16, 2, 'Tình Yêu Chắp Vá - Mr Siro (Lyrics Video)', 'Đây là kênh chính thức của ca sĩ Mr siro Các bạn có thể cập những video hay nhất trong album của ca sĩ Mr siro và những sản phẩm âm nhạc mới nhất sẽ được cập nhật tại kênh.\nCảm ơn các bạn đã luôn ủng hộ và theo dõi channel Chúng tôi Sẽ cố gắng tạo ra những sản phẩm chất lượng nhất để phục vụ các bạn.\nCác bạn có thể Theo dõi Liên hệ Qua: \nFacebook profile: https://goo.gl/uBdU0z\nFacebook Fanpage: https://goo.gl/ML7fKs\nG+ : https://goo.gl/O8sWYW\nPinterest: https://goo.gl/Ag9QTb\nBản quyền video thuộc về Mr.Siro', 1, 'VanMin-file--fdfc1c1c9375e7dee3667f92dd6d1297-mp3-1608617795', 'VanMin-file--3404daa6976e42f9ea9c8e5c1c80793d-jpg-1608359717', NULL, '2020-12-19 13:35:40', '2020-12-19 13:35:40'),
(17, 2, 'Hoaprox - Ngẫu Hứng 绘师岸田 Remix', 'Hello Mina-sanMình biết video này của anh JodieMình lấy về rồiP/S : Anh jodie cho em mượn đc ko. Thanks anh', 3, 'VanMin-file--f7d7a005c3119a332abee2bc579d6d09-mp3-1608617232', 'VanMin-file--f8e876a0c37e6eb16c119e8bf4132194-jpg-1608433955', NULL, '2020-12-20 10:12:58', '2020-12-20 10:12:58'),
(18, 1, 'Ava Max - King&Queen', 'no description', 3, 'VanMin-file--330241dd91afc6d9646b6ea477b67667-mp3-1608965464', 'VanMin-file--85c91470f6aee6ed98e33c22caf6e6a5-jpg-1608965562', NULL, '2020-12-26 13:52:46', '2020-12-26 13:52:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode_tags`
--

CREATE TABLE `episode_tags` (
  `episode_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `episode_tags`
--

INSERT INTO `episode_tags` (`episode_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 3),
(3, 4),
(5, 1),
(5, 4),
(5, 2),
(6, 1),
(6, 5),
(7, 1),
(7, 6),
(8, 1),
(8, 7),
(9, 1),
(9, 8),
(10, 1),
(10, 3),
(10, 9),
(11, 1),
(11, 2),
(11, 10),
(12, 1),
(12, 4),
(13, 1),
(14, 1),
(14, 11),
(15, 1),
(15, 12),
(16, 1),
(16, 8),
(17, 1),
(17, 13),
(18, 1),
(18, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publicmess`
--

CREATE TABLE `publicmess` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_sent` int(10) UNSIGNED NOT NULL,
  `messenges` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publicmess`
--

INSERT INTO `publicmess` (`id`, `user_sent`, `messenges`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '\r\n______________________________\r\nSpecial thank: Yinyang Media, PIC Media, Tiktok\r\n______________________________\r\n© Bản quyền thuộc về Tăng Duy Tân\r\n© Copyright by Tăng Duy Tân do not reup', NULL, '2020-12-12 13:36:44', NULL),
(2, 1, 'affffffffffff\r\naffffffffffff\r\naffffffffffff\r\naffffffffffff\r\naffffffffffff', NULL, '2020-12-12 14:28:12', NULL),
(3, 2, 'vấn đề với giải pháp này là nó chèn ở vị trí con đầu tiên chứ không phải trước danh sách con, nếu vùng chứa cha chứa các phần tử con khác nhau và một người muốn chèn trước một nhóm nút con cụ thể, điều này sẽ không hoạt động.', NULL, '2020-12-12 14:47:57', NULL),
(4, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 14:48:12', NULL),
(5, 3, 'wtf cái đéo gì thế', NULL, '2020-12-12 14:48:26', NULL),
(6, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:20:49', '2020-12-12 15:20:49'),
(7, 1, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(8, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(9, 3, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(10, 3, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(11, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(12, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(13, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(14, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(15, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(16, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(17, 3, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(18, 3, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(19, 2, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(20, 1, 'W3Schools được tối ưu hóa cho việc học tập và đào tạo. Các ví dụ có thể được đơn giản hóa để cải thiện việc đọc và học. Các hướng dẫn, tài liệu tham khảo và ví dụ được xem xét liên tục để tránh sai sót, nhưng chúng tôi không thể đảm bảo tính đúng đắn hoàn toàn của tất cả nội dung. Trong khi sử dụng W3Schools, bạn đồng ý đã đọc và chấp nhận các điều khoản sử dụng , cookie và chính sách bảo mật của chúng tôi .', NULL, '2020-12-12 15:21:22', '2020-12-12 15:21:22'),
(107, 1, 'ádddddddddd', NULL, '2020-12-12 19:38:02', '2020-12-12 19:38:02'),
(108, 3, 'ádsadasd', NULL, '2020-12-12 19:38:18', '2020-12-12 19:38:18'),
(109, 1, 'sdsad', NULL, '2020-12-12 19:38:56', '2020-12-12 19:38:56'),
(110, 3, 'ádsadsdasda', NULL, '2020-12-12 19:41:33', '2020-12-12 19:41:33'),
(111, 3, 'sadsad', NULL, '2020-12-12 19:41:38', '2020-12-12 19:41:38'),
(112, 3, 'ádsada', NULL, '2020-12-12 19:44:32', '2020-12-12 19:44:32'),
(113, 1, 'sadsadsa', NULL, '2020-12-12 19:47:43', '2020-12-12 19:47:43'),
(114, 1, 'sadsa', NULL, '2020-12-12 19:48:13', '2020-12-12 19:48:13'),
(115, 1, 'sadsad', NULL, '2020-12-12 19:48:46', '2020-12-12 19:48:46'),
(116, 1, 'ádsad', NULL, '2020-12-12 19:49:16', '2020-12-12 19:49:16'),
(117, 1, 'ádsad', NULL, '2020-12-12 19:49:34', '2020-12-12 19:49:34'),
(118, 1, 'sadsad', NULL, '2020-12-12 19:50:08', '2020-12-12 19:50:08'),
(119, 1, 'sadsa', NULL, '2020-12-12 19:56:09', '2020-12-12 19:56:09'),
(120, 1, 'hihi', NULL, '2020-12-12 19:56:13', '2020-12-12 19:56:13'),
(121, 1, 'hihi', NULL, '2020-12-12 19:56:19', '2020-12-12 19:56:19'),
(122, 3, 'hihi i love you', NULL, '2020-12-12 19:57:25', '2020-12-12 19:57:25'),
(123, 1, 'hihi', NULL, '2020-12-12 19:57:44', '2020-12-12 19:57:44'),
(124, 1, 'ádasdsa', NULL, '2020-12-12 20:00:33', '2020-12-12 20:00:33'),
(125, 3, 'sdsa', NULL, '2020-12-12 20:01:19', '2020-12-12 20:01:19'),
(126, 1, 'sdsad', NULL, '2020-12-12 20:02:44', '2020-12-12 20:02:44'),
(127, 3, 'sdasd', NULL, '2020-12-12 20:03:00', '2020-12-12 20:03:00'),
(128, 1, 'ơi', NULL, '2020-12-12 20:03:25', '2020-12-12 20:03:25'),
(129, 3, 'alo', NULL, '2020-12-12 20:17:21', '2020-12-12 20:17:21'),
(130, 3, 'sdsa', NULL, '2020-12-12 20:17:43', '2020-12-12 20:17:43'),
(131, 1, 'ádsa', NULL, '2020-12-12 20:17:46', '2020-12-12 20:17:46'),
(132, 3, 'sadas', NULL, '2020-12-12 20:18:17', '2020-12-12 20:18:17'),
(133, 3, 'sadas', NULL, '2020-12-12 20:18:25', '2020-12-12 20:18:25'),
(134, 3, 'haha', NULL, '2020-12-12 20:18:27', '2020-12-12 20:18:27'),
(135, 1, 'alo', NULL, '2020-12-12 20:18:31', '2020-12-12 20:18:31'),
(136, 1, 'alo', NULL, '2020-12-12 20:18:32', '2020-12-12 20:18:32'),
(137, 1, 'hello world', NULL, '2020-12-12 20:18:44', '2020-12-12 20:18:44'),
(138, 3, 'oke', NULL, '2020-12-12 20:18:56', '2020-12-12 20:18:56'),
(139, 1, 'xcsadsa', NULL, '2020-12-12 20:56:47', '2020-12-12 20:56:47'),
(140, 2, '♥', NULL, '2020-12-12 20:58:07', '2020-12-12 20:58:07'),
(141, 1, '♥', NULL, '2020-12-12 20:58:39', '2020-12-12 20:58:39'),
(142, 3, '♥', NULL, '2020-12-12 20:59:07', '2020-12-12 20:59:07'),
(143, 1, 'alo', NULL, '2020-12-12 21:00:34', '2020-12-12 21:00:34'),
(144, 2, 'ơi', NULL, '2020-12-12 21:02:11', '2020-12-12 21:02:11'),
(145, 3, 'ơi', NULL, '2020-12-12 21:02:29', '2020-12-12 21:02:29'),
(146, 3, 'ơi', NULL, '2020-12-12 21:02:48', '2020-12-12 21:02:48'),
(147, 2, 'gì?', NULL, '2020-12-12 21:06:44', '2020-12-12 21:06:44'),
(148, 3, '♣♥♥♥♥', NULL, '2020-12-12 21:06:56', '2020-12-12 21:06:56'),
(149, 2, 'huhu', NULL, '2020-12-12 21:07:06', '2020-12-12 21:07:06'),
(150, 1, 'alo mọi người', NULL, '2020-12-12 21:07:15', '2020-12-12 21:07:15'),
(151, 1, 'alo', NULL, '2020-12-12 21:09:08', '2020-12-12 21:09:08'),
(152, 3, 'hihi', NULL, '2020-12-12 21:09:44', '2020-12-12 21:09:44'),
(153, 1, 'can', NULL, '2020-12-12 21:10:02', '2020-12-12 21:10:02'),
(154, 1, 'ơ kìa con chim sáo', NULL, '2020-12-12 21:11:59', '2020-12-12 21:11:59'),
(155, 1, '1 2 3 4 2 3 1 ', NULL, '2020-12-12 21:12:34', '2020-12-12 21:12:34'),
(156, 3, 'ngáo', NULL, '2020-12-12 21:13:06', '2020-12-12 21:13:06'),
(157, 3, ':)', NULL, '2020-12-12 21:13:18', '2020-12-12 21:13:18'),
(158, 1, ':)', NULL, '2020-12-16 19:24:54', '2020-12-16 19:24:54'),
(159, 1, 'sadsad', NULL, '2020-12-16 19:25:06', '2020-12-16 19:25:06'),
(160, 3, 'sadsa', NULL, '2020-12-16 19:25:24', '2020-12-16 19:25:24'),
(161, 3, 'saaaaa', NULL, '2020-12-16 19:25:31', '2020-12-16 19:25:31'),
(162, 3, '11111111111111111', NULL, '2020-12-16 19:25:36', '2020-12-16 19:25:36'),
(163, 1, '21232112312', NULL, '2020-12-16 19:25:40', '2020-12-16 19:25:40'),
(164, 1, 'sdsad', NULL, '2020-12-16 22:37:56', '2020-12-16 22:37:56'),
(165, 3, 'sdas', NULL, '2020-12-16 22:38:00', '2020-12-16 22:38:00'),
(166, 3, 'sdsad', NULL, '2020-12-16 22:38:20', '2020-12-16 22:38:20'),
(167, 3, ':)))))', NULL, '2020-12-16 22:38:27', '2020-12-16 22:38:27'),
(168, 1, 'sadas', NULL, '2020-12-16 22:38:31', '2020-12-16 22:38:31'),
(169, 1, 'sadsad', NULL, '2020-12-16 22:38:40', '2020-12-16 22:38:40'),
(170, 3, '♥', NULL, '2020-12-16 22:39:04', '2020-12-16 22:39:04'),
(171, 1, '♥', NULL, '2020-12-16 22:39:12', '2020-12-16 22:39:12'),
(172, 1, '♥', NULL, '2020-12-16 22:39:28', '2020-12-16 22:39:28'),
(173, 1, 'hahaa', NULL, '2020-12-16 22:39:34', '2020-12-16 22:39:34'),
(174, 3, ':)))', NULL, '2020-12-16 22:39:39', '2020-12-16 22:39:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'no-tag', '2020-12-10 17:10:09', '2020-12-10 17:10:09'),
(2, 'remix', '2020-12-10 17:10:09', '2020-12-10 17:10:09'),
(3, 'chill', '2020-12-10 17:13:07', '2020-12-10 17:13:07'),
(4, 'phongmax', '2020-12-10 17:13:07', '2020-12-10 17:13:07'),
(5, 'huongly', '2020-12-10 17:15:36', '2020-12-10 17:15:36'),
(6, 'rap', '2020-12-10 17:18:19', '2020-12-10 17:18:19'),
(7, 'love', '2020-12-12 09:08:53', '2020-12-12 09:08:53'),
(8, 'mr.siro', '2020-12-12 18:42:38', '2020-12-12 18:42:38'),
(9, 'bolero', '2020-12-12 20:14:40', '2020-12-12 20:14:40'),
(10, 'nonstop', '2020-12-12 22:09:06', '2020-12-12 22:09:06'),
(11, 'thatgirl', '2020-12-19 13:10:55', '2020-12-19 13:10:55'),
(12, 'sontung', '2020-12-19 13:31:12', '2020-12-19 13:31:12'),
(13, 'chinese', '2020-12-20 10:12:58', '2020-12-20 10:12:58'),
(14, 'uk', '2020-12-26 13:52:46', '2020-12-26 13:52:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `is_revoked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `descriptions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `address`, `descriptions`, `avatar`, `authority`, `created_at`, `updated_at`) VALUES
(1, 'minh', 'minh@gmail.com', '$2a$10$MXa1AykmSKjcW.Bu56ynn.MjDznbbK9Ybgm0NQ8p..qTmOHWnIBl2', 'Bùi Văn Minh', 'Quang Trung - Kinh Môn - Hải Dương', 'the job responsibilities of current employees,\ninternet research and sample job descriptions online or offline highlighting similar jobs,\nan analysis of the work duties, tasks, and responsibilities that need to be accomplished by the employee filling the position,\nresearch and sharing with other companies that have similar jobs, and\narticulation of the most important outcomes or contributions needed from the position.', 'VanMin-file--1379c1d56ff8ac183616d94310278214-jpg-1608132922', 2, '2020-12-10 17:07:03', '2020-12-16 22:35:25'),
(2, 'huong', 'huong@gmail.com', '$2a$10$RrFroOmuaiCz.mBW4NiRROMQpQRy0f2cU4gNdFVELl0SBPQuJCK46', 'Trần Mai Hương', NULL, NULL, 'VanMin-file--3029df73340b8169c16a1956ba8aff7b-jpg-1607761006', 0, '2020-12-12 14:47:27', '2020-12-12 15:16:49'),
(3, 'kimoanh', 'kimoanh@gmail.com', '$2a$10$zo0tlvSE5JddzQTo6vSIv.QQb2AI8fvOlO2/TYP4J0dQY1CxHdVBu', 'Lã Thị Kim Oanh', NULL, NULL, 'VanMin-file--b50cf614926df8b3df777f154528b7a1-jpg-1607761053', 0, '2020-12-12 14:47:49', '2020-12-12 15:17:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_create_foreign` (`user_create`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories_user_create_foreign` (`user_create`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_create_foreign` (`user_create`),
  ADD KEY `comments_episode_id_foreign` (`episode_id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_category_id_foreign` (`category_id`),
  ADD KEY `episode_user_create_foreign` (`user_create`);

--
-- Chỉ mục cho bảng `episode_tags`
--
ALTER TABLE `episode_tags`
  ADD KEY `episode_tags_episode_id_foreign` (`episode_id`),
  ADD KEY `episode_tags_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `publicmess`
--
ALTER TABLE `publicmess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicmess_user_sent_foreign` (`user_sent`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `publicmess`
--
ALTER TABLE `publicmess`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_create_foreign` FOREIGN KEY (`user_create`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_create_foreign` FOREIGN KEY (`user_create`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`),
  ADD CONSTRAINT `comments_user_create_foreign` FOREIGN KEY (`user_create`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `episode_user_create_foreign` FOREIGN KEY (`user_create`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `episode_tags`
--
ALTER TABLE `episode_tags`
  ADD CONSTRAINT `episode_tags_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`),
  ADD CONSTRAINT `episode_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Các ràng buộc cho bảng `publicmess`
--
ALTER TABLE `publicmess`
  ADD CONSTRAINT `publicmess_user_sent_foreign` FOREIGN KEY (`user_sent`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
