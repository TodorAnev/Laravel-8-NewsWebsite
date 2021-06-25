-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for news
CREATE DATABASE IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `news`;

-- Dumping structure for table news.ads
CREATE TABLE IF NOT EXISTS `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.ads: ~4 rows (approximately)
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` (`id`, `link`, `ads`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'https://www.youtube.com/', 'image/ads/60990524a19bc.jpg', 2, NULL, NULL),
	(2, 'https://laravel.com/', 'image/ads/609905a15db3f.jpg', 1, NULL, NULL),
	(6, 'https://www.google.com/', 'image/ads/60990fa5cc680.png', 1, NULL, NULL),
	(7, 'https://stackoverflow.com/', 'image/ads/6099328abe8e6.jpg', 2, NULL, NULL),
	(8, 'https://www.hltv.org/', 'image/ads/6099333068913.jpg', 2, NULL, NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;

-- Dumping structure for table news.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category_en`, `category_bg`, `soft_delete`, `created_at`, `updated_at`) VALUES
	(6, 'HEALTH', 'ЗДРАВЕ', '0', NULL, NULL),
	(7, 'ENTERTAINMENT', 'РАЗВЛЕЧЕНИЯ', '0', NULL, NULL),
	(8, 'WORLD', 'СВЯТ', '0', NULL, NULL),
	(10, 'BUSINESS', 'БИЗНЕС', '0', NULL, NULL),
	(11, 'BULGARIA', 'БЪЛГАРИЯ', '0', NULL, NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table news.districts
CREATE TABLE IF NOT EXISTS `districts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `district_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.districts: ~5 rows (approximately)
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` (`id`, `district_en`, `district_bg`, `created_at`, `updated_at`) VALUES
	(1, 'Sofia', 'София', NULL, NULL),
	(2, 'Plovdiv', 'Пловдив', NULL, NULL),
	(3, 'Varna', 'Варна', NULL, NULL),
	(4, 'Burgas', 'Бургас', NULL, NULL),
	(6, 'Velingrad', 'Велинград', NULL, NULL);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;

-- Dumping structure for table news.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table news.livetvs
CREATE TABLE IF NOT EXISTS `livetvs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.livetvs: ~0 rows (approximately)
/*!40000 ALTER TABLE `livetvs` DISABLE KEYS */;
INSERT INTO `livetvs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
	(1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/gD7k4o8JBJI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, NULL, NULL);
/*!40000 ALTER TABLE `livetvs` ENABLE KEYS */;

-- Dumping structure for table news.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.migrations: ~24 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_04_20_164633_create_sessions_table', 1),
	(7, '2021_04_22_152715_create_categories_table', 2),
	(8, '2021_04_22_152841_create_subcategories_table', 2),
	(9, '2021_04_25_114837_create_districts_table', 3),
	(10, '2021_04_25_115006_create_subdistricts_table', 3),
	(11, '2021_04_26_180219_create_posts_table', 4),
	(12, '2021_05_01_143157_create_socials_table', 5),
	(13, '2021_05_01_151542_create_seos_table', 6),
	(14, '2021_05_02_170300_create_livetvs_table', 7),
	(15, '2021_05_02_170848_create_livetvs_table', 8),
	(16, '2021_05_02_184849_create_notices_table', 9),
	(17, '2021_05_02_185044_create_notices_table', 10),
	(18, '2021_05_02_191744_create_websites_table', 11),
	(19, '2021_05_03_072604_create_photos_table', 12),
	(20, '2021_05_03_085253_create_videos_table', 13),
	(21, '2021_05_10_090612_create_ads_table', 14),
	(22, '2021_05_31_150420_create_websitesettings_table', 15),
	(23, '2021_05_31_161030_create_websitesettings_table', 16),
	(24, '2021_05_31_162211_create_websitesettings_table', 17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table news.notices
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.notices: ~0 rows (approximately)
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Example Notice', 0, NULL, NULL);
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;

-- Dumping structure for table news.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table news.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table news.photos
CREATE TABLE IF NOT EXISTS `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.photos: ~3 rows (approximately)
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'image/photogallery/60d4a39171148.jpg', 'Biontech is confident in the effectiveness of its vaccine against the Indian version', '1', NULL, NULL),
	(2, 'image/photogallery/60d4a389b1028.jpg', 'Britney Spears asked to testify in court about her father\'s custody of her', '0', NULL, NULL),
	(4, 'image/photogallery/6094093e47018.jpg', 'Laravel 8 Routing: Important Change You Need to Know', '0', NULL, NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;

-- Dumping structure for table news.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `subdistrict_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_bg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `bigthumbnail` int(11) DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.posts: ~14 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_bg`, `image`, `details_en`, `details_bg`, `tags_en`, `tags_bg`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
	(3, 6, 16, 6, 12, 1, 'Biontech is confident in the effectiveness of its vaccine against the Indian version', 'Biontech е уверен в ефективността на своята ваксина срещу индийската версия', 'image/postimg/60d4a084c2e37.jpg', '<p>The founder and director of the Biontech laboratory, Ugur Shahin, said he was confident in the effectiveness of the vaccine, developed with the US group Pfizer, against the Indian version of COVID-19, AFP reported.</p><p>Although the tests have not yet been completed, "the Indian version has mutations that we have already studied and against which the vaccine works, so we are confident," he told a news conference on the Internet.</p>', '<p>Основателят и директор на лабораторията "Бионтех" Угур Шахин каза, че е уверен в ефикасността на ваксината, разработена с американската групировка "Пфайзер", срещу индийския вариант на COVID-19, съобщи АФП.</p><p>Макар и тестовете още да не са приключили, "индийският вариант е с мутации, които ние вече сме изследвали и срещу които ваксината ни действа, затова сме уверени", обясни той на пресконференция в интернет.</p>', 'Vaccine', 'Ваксина', NULL, 1, 1, 1, '28-04-2021', 'April', NULL, NULL),
	(4, 6, 7, 6, 11, 1, 'Britney Spears asked to testify in court about her father\'s custody of her', 'Бритни Спиърс поиска да свидетелства в съда за попечителството на баща си над нея', 'image/postimg/60d4a075abd00.jpg', '<p>Britney Spears has asked to testify in court about the guardianship that has controlled her life and finances for thirteen years, the Associated Press and AFP reported.</p><p>A lawyer appointed by the court to represent her said during a hearing in Los Angeles that the star had expressed a desire to testify and Judge Brenda Penny had scheduled a court hearing for June 23. The lawyer did not specify what Spears intended to reveal.</p>', '<p>Бритни Спиърс поиска да свидетелства в съда за попечителството, което контролира живота и финансите й от тринадесет години, съобщиха Асошиейтед прес и АФП.</p><p>Адвокатът, определен от съда да я представлява, каза по време на изслушване в Лос Анджелис, че звездата е изразила желание да даде показания и съдия Бренда Пени е насрочила съдебно изслушване за 23 юни. Адвокатът не уточни какво възнамерява да разкрие Спиърс.</p>', 'Music', 'Музика', 1, NULL, NULL, NULL, '28-04-2021', 'April', NULL, NULL),
	(6, 6, 1, 2, 9, 1, 'The use of robotic systems in transport is an advantage', 'Използването на роботизирани системи в транспорта е предимство', 'image/postimg/60d4a06566f1c.jpg', '<p>The use of robotic systems in transport was the topic of a meeting today between the Minister of Transport, Information Technology and Communications Rosen Zhelyazkov and the President of the European Association for Autonomous Transport and Open Systems Radoslav Atanasov.</p><p>Minister Zhelyazkov was informed about the European projects in the field of aircraft with vertical take-off and landing with electric propulsion, about autonomous cars, as well as about the traffic management in the "smart cities".</p><p>Another focus of the meeting between the two was the introduction of artificial intelligence in all modes of transport as a prerequisite for the development of safe, environmentally friendly and efficient mobility.</p>', '<p>Използването на роботизирани системи в транспорта бе тема на среща днес между министъра на транспорта, информационните технологии и съобщенията Росен Желязков и председателя на Европейската асоциация за автономен транспорт и отворени системи Радослав Атанасов.</p><p>Министър Желязков бе информиран за европейските проекти в областта на въздухоплавателните средства с вертикално излитане и кацане с електрическо задвижване, за автономните автомобили, както и за управлението на трафика в „умните градове“.</p><p>Друг акцент в срещата между двамата бе навлизането на изкуствения интелект във всички видове транспорт като предпоставка за развитието на безопасна, екологична и ефективната мобилност.</p>', 'Robotics', 'Роботика', 1, 1, NULL, NULL, '28-04-2021', 'April', NULL, NULL),
	(7, 7, 6, 4, 8, 1, 'The fire of grace will come from Jerusalem', 'Благодатният огън ще дойде от Йерусалим', 'image/postimg/60d4a36bad117.jpg', '<p>The Bulgarian church delegation, led by Vratsa Metropolitan Gregory, will travel by government plane to Israel tomorrow to bring the Blessed Fire from the Holy Sepulcher to Jerusalem.</p><p>The church delegation is expected to return at around 19.00 at Sofia Airport.</p>', '<p>Българската църковна делегация, водена от Врачанския митрополит Григорий, ще пътува утре с правителствения самолет до Израел, за да донесе Благодатния огън от Гроба Господен в Ерусалим.</p><p>Очаква се църковната делегация да се завърне около 19.00 ч. на Летище "София".</p>', 'Religion', 'Религия', 1, 1, 1, 1, '30-04-2021', 'April', NULL, NULL),
	(10, 7, 5, 4, 2, 1, 'Many desktop publishing packages and web page editors now', 'Природен парк във Флорида приютява циркови слонове', 'image/postimg/6092ee3106254.jpg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.<br></p>', '<p>Центърът "Уайт Оук" обяви, че дванадесет женски представителки на вида азиатски клон вече са пристигнали в Юлий, северно от Джаксънвил. Когато местообиталищата на цялата предвидена площ от 1010 хектара са готови, се очаква настаняването на още двадесет слона.<br></p>', 'car, elephant', 'слон, кола', NULL, 1, 1, NULL, '05-05-2021', 'May', NULL, NULL),
	(11, 8, 14, 2, 4, 1, 'Sample Title', 'Случайно заглавие', 'image/postimg/6092eec9283e9.jpg', '<p>Quisque eget tempus lacus. Etiam venenatis ipsum elit, at mattis nibh elementum ut. Vivamus sed dolor quis justo semper facilisis. Nulla varius metus posuere neque tincidunt, eget congue nulla sodales. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer sem urna, dapibus eu tincidunt a, aliquet at felis. Cras dignissim arcu id gravida ultrices. Etiam bibendum nisi eu sapien semper, ac fermentum dolor faucibus. Fusce ornare justo est, et varius nunc rutrum quis. In mollis dictum nisl, non mattis ligula dignissim a. Maecenas a blandit velit.<br></p>', '<p>Животните пристигат от Центъра за опазване на слоновете в окръг Полк. Повечето от тях са били част от пътуващата циркова компания "Ринглинг брос енд Барнъм енд Бейли" до пенсионирането си през 2016 г.</p><p><br></p><p>"Беше невероятно да видя животните да излизат в новия си хабитат", каза в изявление Ник Нюби, който през последните няколко години е начело на екипа, който се грижи за животните и изучава навиците им.</p>', 'tag', 'етикет', NULL, NULL, NULL, 1, '05-05-2021', 'May', NULL, NULL),
	(12, 8, 9, 1, 1, 1, 'Germany does not lift the measures for those arriving from Bulgaria', 'Германия не сваля мерките за пристигащите от България', 'image/postimg/6093a8cd2ef62.jpg', '<p>The requirement to provide a negative PCR test on arrival from Bulgaria to Germany remains in force until 12 May 2021 inclusive, although from 2 May 2021 Germany has reduced the level of risk for Bulgaria from a country with a high frequency of infection. of a risky country, announced the press center of the Ministry of Foreign Affairs.<br></p>', '<p>Изискването за предоставяне на отрицателен PCR тест при пристигане от България в Германия продължава да бъде в сила до 12 май 2021 г. включително, въпреки че от 2 май 2021 г. Германия намали нивото на риск по отношение на България от държава с висока честота на заразяване на рискова държава, съобщиха от пресцентъра на Министерството на външните работи.<br></p>', 'vaccine', 'ваксина', 1, 1, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(13, 8, 10, 3, 3, 1, 'Many new cases of coronavirus in Germany', 'Много нови случаи на коронавирус в Германия', 'image/postimg/6093aec17e359.jpg', 'The number of confirmed cases of coronavirus in Germany increased by 21,953 in the last 24 hours, to a total of 3,473,503.', 'Броят на потвърдените случаи на коронавирус в Германия нарасна през последното денонощие с 21 953, до общо 3 473 503.', 'vaccine', 'ваксина', 1, 1, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(14, 8, 14, 2, 4, 1, 'France marks 200 years since the death of Napoleon Bonaparte', 'Франция отбеляза 200 години от смъртта на Наполеон Бонапарт', 'image/postimg/6093af136c6ef.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic.\r\n\r\nThe conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република.\r\n\r\nТова осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'france', 'франция', 1, 1, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(15, 10, 8, 1, 1, 1, 'The number of sheep raised in our country has drastically decreased to about 1 million', 'Броят на отглежданите у нас овце драстично е намалял до около 1 милион', 'image/postimg/6093e0ee79b63.jpg', '<p>On St. George\'s Day, tradition dictates that there be lamb on the table. According to agrostatistics, about 1.3 million sheep are currently bred in Bulgaria, and their number has drastically decreased in recent years.\r\n\r\nExperts are not unanimous on the issue, but according to various data for the last 20 years, the number of sheep in our country has fallen from 11 million to one million. Since the beginning of the transition, the number of ungulates of economic importance has decreased from 16.5 million to 2.7 million, which means that 14 million animals have simply "disappeared" in Bulgaria.<br></p>', '<p>На Гергьовден традицията повелява на трапезата да има агнешко месо. По данни на агростатистиката у нас в момента се отглеждат около 1,3 милиона овце, като броят им през последните години драстично е намалял.\r\n\r\nЕкспертите не са единодушни по въпроса, но според различни данни за последните 20 години  броят на  овцете у нас се е сринал от 11 милиона на един милион. От началото на прехода броят на чифтокопитните животни със стопанско значение е намалял от 16,5 милиона на 2,7 милиона, което означава, че в България просто са „изчезнали“ 14 милиона животни.<br></p>', 'sheep', 'овце', NULL, 1, NULL, 1, '06-05-2021', 'May', NULL, NULL),
	(16, 10, 2, 1, 1, 1, 'Rise in retail sales in the EU in March and weaker growth in Bulgaria', 'Скок на продажбите на дребно в ЕС през март и по-слабо нарастване в България', 'image/postimg/6093e2878d126.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.</p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.</p>', 'sales', 'продажби', NULL, NULL, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(17, 11, 11, 1, 16, 1, 'The "dragon" that kills us is selfishness', '"Змеят", който ни мори, е егоизъм и себичност', 'image/postimg/6093e4f75838f.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'bulgaria', 'българия', NULL, NULL, NULL, 1, '06-05-2021', 'May', NULL, NULL),
	(18, 11, 11, 6, 10, 1, 'The Day of Courage and a holiday of the Bulgarian Army is celebrated in Danube Dobrudja', 'Денят на храбростта и празник на Българската армия се отбелязва в Крайдунавска Добруджа', 'image/postimg/6093e5389a829.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'army', 'армия', NULL, NULL, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(19, 11, 12, 4, 2, 1, 'Funds have been reduced for 56 top budget managers due to COVID measures', 'Намалени са средствата за 56 първостепенни разпоредители с бюджет заради COVID мерки', 'image/postimg/6093e5841b959.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'funds', 'средства', NULL, NULL, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(20, 11, 13, 2, 4, 1, 'The president convenes additional consultations to nominate a CEC chairman', 'Президентът свиква допълнителни консултации за излъчване на председател на ЦИК', 'image/postimg/6093e5bbc40db.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'chairman', 'председател', NULL, NULL, NULL, NULL, '06-05-2021', 'May', NULL, NULL),
	(21, 11, 12, 1, 6, 1, 'Prof. Petar Stojanovic: We must be an effective part of NATO and the EU', 'Проф. Петър Стоянович: Трябва да сме ефективна част от НАТО и ЕС', 'image/postimg/6093e60868fd9.jpg', '<p>According to Macron, Napoleon "laid the political and administrative foundations" of France in its current form, establishing the institutions of the prefects, the central bank, creating the civil code and a number of state structures. At the same time, Macron condemned the restoration of slavery in the French colonies by Napoleon in 1802, which he described as a "betrayal of the spirit of the Enlightenment" and which was abolished in 1848 under the Second Republic. The conviction was expected in Guadeloupe, Martinique and Reunion, France\'s overseas territories, where many residents are descendants of slaves.<br></p>', '<p>По думите на Макрон, Наполеон е "заложил политическите и административни основи" на Франция в днешния й вид, учредявайки институциите на префектите, централната банка, създавайки гражданския кодекс и редица държавни структури. В същото време Макрон осъди възстановяването на робството във френските колонии от Наполеон през 1802 г., което той окачестви като "предателство на духа на Просвещението" и което е премахнато през 1848 г. при Втората република. Това осъждане беше очаквано в Гваделупа, Мартиника и Реюнион, френски отвъдморски територии, където много жители са потомци на роби, отбелязва Франс прес.<br></p>', 'nato', 'нато', NULL, NULL, NULL, NULL, '06-05-2021', 'May', NULL, NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table news.seos
CREATE TABLE IF NOT EXISTS `seos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.seos: ~0 rows (approximately)
/*!40000 ALTER TABLE `seos` DISABLE KEYS */;
INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
	(1, 'Easy online news', 'Easy online news', 'easy, online, news', 'Easy online news', 'Easy online news', 'Google verification', 'Alexa analytics', NULL, NULL);
/*!40000 ALTER TABLE `seos` ENABLE KEYS */;

-- Dumping structure for table news.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.sessions: ~4 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('30QxH2ipuz3RYBAtKh0mVjQxg3Lcn1HAlgZFfx6L', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSUNlU3NLakZkTEduMEhYTTJzMDZlaWx1YjMxY2puejhvT3AyVUtScyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDFLTTFmTGhJV2o3cFlLZlg0UExCc09zSS5IcS9KOEVxOG1SbFdkZHdJd01US2dmOFpIWC42IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQxS00xZkxoSVdqN3BZS2ZYNFBMQnNPc0kuSHEvSjhFcThtUmxXZGR3SXdNVEtnZjhaSFguNiI7fQ==', 1624552059),
	('elKLjwOGUBASyB7awtzTy0K22xIxGI960nCIvB5M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnh5VmZ5MzIyNXlzOG1WZGUxVmpqdnU5Rms2RFlPNUlPMU9iRTNUbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1624610654),
	('lwd6jGgTqkN9MwgjT2twP22tXhz5h4p7FasjAp6Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVFMOEQyTlZUVUpOWGM4TzZMdGozZzZIU05oRXBicGdMZUZKeGRrcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1624610654),
	('v3uiPfuPg8MmzhjWJsgKIlq9QdkTpzOjmq9Zj63i', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiUWpTUEY4YTlNSm1PQm9vdVgxTUFhY1JrYW1GTVFpRnN1N3FWRVk3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoibGFuZyI7czo5OiJidWxnYXJpYW4iO3M6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkdHdhZmQ0Zmtha1dDc1VuYVZpWGtYdWJQR05WOURZTzZWbVNEWFVsb0hJN051eDZ5Nm9lVnEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHR3YWZkNGZrYWtXQ3NVbmFWaVhrWHViUEdOVjlEWU82Vm1TRFhVbG9ISTdOdXg2eTZvZVZxIjt9', 1624552069);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table news.socials
CREATE TABLE IF NOT EXISTS `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.socials: ~0 rows (approximately)
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
	(1, 'https://facebook.com/', 'https://twitter.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', NULL, NULL);
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;

-- Dumping structure for table news.subcategories
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.subcategories: ~15 rows (approximately)
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_en`, `subcategory_bg`, `created_at`, `updated_at`) VALUES
	(1, '6', 'Мedicaments', 'Лекарства', NULL, NULL),
	(2, '10', 'Finances', 'Финанси', NULL, NULL),
	(5, '7', 'Music', 'Музика', NULL, NULL),
	(6, '7', 'Movies', 'Филми', NULL, NULL),
	(7, '6', 'Diseases', 'Болести', NULL, NULL),
	(8, '10', 'Technologies', 'Технологии', NULL, NULL),
	(9, '8', 'Balkans', 'Балкани', NULL, NULL),
	(10, '8', 'Europe', 'Европа', NULL, NULL),
	(11, '11', 'Community', 'Общество', NULL, NULL),
	(12, '11', 'Education', 'Образование', NULL, NULL),
	(13, '11', 'Weather', 'Времето', NULL, NULL),
	(14, '8', 'Russia', 'Русия', NULL, NULL),
	(15, '7', 'Travels', 'Пътувания', NULL, NULL),
	(16, '6', 'Hospitals', 'Болници', NULL, NULL),
	(17, '10', 'Markets', 'Пазари', NULL, NULL);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;

-- Dumping structure for table news.subdistricts
CREATE TABLE IF NOT EXISTS `subdistricts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.subdistricts: ~14 rows (approximately)
/*!40000 ALTER TABLE `subdistricts` DISABLE KEYS */;
INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_en`, `subdistrict_bg`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Reduta', 'Редута', NULL, NULL),
	(2, '4', 'Pobeda', 'Победа', NULL, NULL),
	(3, '3', 'Batak', 'Батак', NULL, NULL),
	(4, '2', 'Gagarin', 'Гагарин', NULL, NULL),
	(6, '1', 'Lulin', 'Люлин', NULL, NULL),
	(7, '3', 'Levski', 'Левски', NULL, NULL),
	(8, '4', 'Northern Industrial zone', 'Северна промишлена зона', NULL, NULL),
	(9, '2', 'Kapana', 'Капана', NULL, NULL),
	(10, '6', 'Chepino', 'Чепино', NULL, NULL),
	(11, '6', 'Anezitsa', 'Анезица', NULL, NULL),
	(12, '6', 'Ladzhene', 'Лъджене', NULL, NULL),
	(13, '4', 'Burgas center', 'Бургас център', NULL, NULL),
	(14, '3', 'Tsveten kvartal', 'Цветен квартал', NULL, NULL),
	(15, '2', 'Marasha', 'Мараша', NULL, NULL),
	(16, '1', 'Hipodruma', 'Хиподрума', NULL, NULL);
/*!40000 ALTER TABLE `subdistricts` ENABLE KEYS */;

-- Dumping structure for table news.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `setting` int(11) DEFAULT NULL,
  `website` int(11) DEFAULT NULL,
  `gallery` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `image`, `gender`, `position`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `type`, `category`, `district`, `post`, `setting`, `website`, `gallery`, `ads`, `role`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$twafd4fkakWCsUnaViXkXubPGNV9DYO6VmSDXUloHI7Nux6y6oeVq', '55555555', 'street 51, road 1', '202106011855profile.png', 'Male', 'CEO', NULL, NULL, 'nLyYcWwNlXcAqED0CZAnjegCnl0sY5iO1GRTzi6qk6BGTlyczaIVyfIwIGZ8', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-04-20 17:01:50', '2021-06-01 20:08:22'),
	(8, 'User', 'pavel@gmail.com', NULL, '$2y$10$1KM1fLhIWj7pYKfX4PLBsOsI.Hq/J8Eq8mRlWddwIwMTKgf8ZHX.6', '5555555', 'address', '202106011922profileimg.png', 'Male', 'Writer', NULL, NULL, NULL, 0, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-06-24 16:13:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table news.videos
CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.videos: ~4 rows (approximately)
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
	(2, 'Laravel 8 Routing: Important Change You Need to Know', 'MfE1tnMG6fE', '0', NULL, NULL),
	(3, 'Laravel Crash Course 2020', 'MFh0Fd7BsjE', '1', NULL, NULL),
	(5, 'Laravel 8 tutorial # how to install laravel', 'hP6ow1uG6MU', '0', NULL, NULL),
	(6, 'Auth in Laravel 8: Fortify and Laravel UI (without Jetstream)', 'NuGBzmHlINQ', '0', NULL, NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;

-- Dumping structure for table news.websites
CREATE TABLE IF NOT EXISTS `websites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.websites: ~4 rows (approximately)
/*!40000 ALTER TABLE `websites` DISABLE KEYS */;
INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
	(1, 'Theme Forest', 'https://themeforest.net/', NULL, NULL),
	(2, 'Stack Overflow', 'https://stackoverflow.com/', NULL, NULL),
	(3, 'Github', 'https://github.com/', NULL, NULL);
/*!40000 ALTER TABLE `websites` ENABLE KEYS */;

-- Dumping structure for table news.websitesettings
CREATE TABLE IF NOT EXISTS `websitesettings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.websitesettings: ~2 rows (approximately)
/*!40000 ALTER TABLE `websitesettings` DISABLE KEYS */;
INSERT INTO `websitesettings` (`id`, `logo`, `address`, `phone_en`, `phone_bg`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'image/logo/60d2f7d04c773.png', '<p><span class="office__city" style="font-weight: 700; margin-bottom: 10px; font-size: 18px; color: rgb(35, 44, 59); font-family: &quot;Open Sans&quot;, sans-serif;">San Francisco, CA</span><span style="color: rgb(35, 44, 59); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;"></span></p><p class="office__address" style="font-size: 15px; color: rgb(109, 122, 145); font-family: &quot;Open Sans&quot;, sans-serif;">600 Harrison St.<br>3rd Floor<br>San Francisco, CA 94107</p>', '+44 20 7234 3456', '+359 889 634 732', 'support@gmail.com', NULL, NULL);
/*!40000 ALTER TABLE `websitesettings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
