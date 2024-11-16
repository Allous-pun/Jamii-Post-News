-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add subcategory', 8, 'add_subcategory'),
(30, 'Can change subcategory', 8, 'change_subcategory'),
(31, 'Can delete subcategory', 8, 'delete_subcategory'),
(32, 'Can view subcategory', 8, 'view_subcategory'),
(33, 'Can add news', 9, 'add_news'),
(34, 'Can change news', 9, 'change_news'),
(35, 'Can delete news', 9, 'delete_news'),
(36, 'Can view news', 9, 'view_news'),
(37, 'Can add page', 10, 'add_page'),
(38, 'Can change page', 10, 'change_page'),
(39, 'Can delete page', 10, 'delete_page'),
(40, 'Can view page', 10, 'view_page'),
(41, 'Can add comments', 11, 'add_comments'),
(42, 'Can change comments', 11, 'change_comments'),
(43, 'Can delete comments', 11, 'delete_comments'),
(44, 'Can view comments', 11, 'view_comments');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'newsapp', 'category'),
(11, 'newsapp', 'comments'),
(6, 'newsapp', 'customuser'),
(9, 'newsapp', 'news'),
(10, 'newsapp', 'page'),
(8, 'newsapp', 'subcategory'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-31 13:14:01.951859'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-05-31 13:14:02.015378'),
(3, 'auth', '0001_initial', '2024-05-31 13:14:02.246718'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-05-31 13:14:02.323508'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-05-31 13:14:02.332483'),
(6, 'auth', '0004_alter_user_username_opts', '2024-05-31 13:14:02.340999'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-05-31 13:14:02.348979'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-05-31 13:14:02.353108'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-31 13:14:02.359825'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-05-31 13:14:02.367474'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-31 13:14:02.378586'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-05-31 13:14:02.399460'),
(13, 'auth', '0011_update_proxy_permissions', '2024-05-31 13:14:02.409141'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-31 13:14:02.417120'),
(15, 'newsapp', '0001_initial', '2024-05-31 13:14:02.686992'),
(16, 'admin', '0001_initial', '2024-05-31 13:14:02.791871'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-05-31 13:14:02.807829'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-31 13:14:02.819030'),
(19, 'sessions', '0001_initial', '2024-05-31 13:14:02.859923'),
(20, 'newsapp', '0002_category', '2024-06-04 04:25:52.171927'),
(21, 'newsapp', '0003_subcategory', '2024-06-04 05:29:03.723434'),
(22, 'newsapp', '0004_alter_customuser_user_type_news', '2024-06-04 06:07:34.070097'),
(23, 'newsapp', '0005_page', '2024-06-05 06:03:29.421187'),
(24, 'newsapp', '0006_comments', '2024-06-08 06:12:16.009272'),
(25, 'newsapp', '0007_alter_comments_status_alter_customuser_user_type', '2024-06-09 13:00:04.675891');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a1xfh0kqukhfyg96tz68zxvle9pxwoiw', '.eJxVjMsOwiAQRf-FtSGUh9Au3fsNZBimFjVgoE00xn-3TbrQ7T3nnjfzsMyTXxpVnyIbWMcOv1sAvFHeQLxCvhSOJc81Bb4pfKeNn0uk-2l3_wITtGl9Qw-mM2OHMmrQIxokjMIGtCLIiAGV6w3ZILU6SqdUwNXXzmlhkYxxW7RRa6lkT89Hqi82SNNLIcTnCzGjQJY:1sE0e5:uX6BRtq_YOoBYF9QDkejn6SZsTSey5szsxR02zG5-oc', '2024-07-03 05:54:13.012653'),
('ptw6pmfj3duvgq49p92l8oh7ahrxu64f', '.eJxVjMsOwiAUBf-FtSEIbS526d5vINwHFjVgSptojP-uTbrQ7Zk581IhLvMYliZTyKwGBWr3u2Gkq5QV8CWWc9VUyzxl1KuiN9r0qbLcjpv7FxhjG79vtAiS0Ih3hpkEmDgBWyLoPBqAPZqEREKdM7HzhkwE1_f2kLw469dok9ZyLUEe9zw91WDeH-TKQCg:1sJBip:oHKfdja-oZwZBGHn2AxjEiQA_Qp_EPpHmvGj3EjT65Y', '2024-07-01 12:44:31.052333'),
('qba3zwruw3dc0ab5bceac0225xwcl2bh', '.eJxVjMsOwiAQRf-FtSGUh9Au3fsNZBimFjVgoE00xn-3TbrQ7T3nnjfzsMyTXxpVnyIbWMcOv1sAvFHeQLxCvhSOJc81Bb4pfKeNn0uk-2l3_wITtGl9Qw-mM2OHMmrQIxokjMIGtCLIiAGV6w3ZILU6SqdUwNXXzmlhkYxxW7RRa6lkT89Hqi82SNNLIcTnCzGjQJY:1sE68P:PWo9DlHQqqcbZ1QCikPXRDtFLUs967BJXk8syW2cVWg', '2024-07-03 11:45:53.575402');

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_category`
--

CREATE TABLE `newsapp_category` (
  `id` bigint(20) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `catdes` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_category`
--

INSERT INTO `newsapp_category` (`id`, `catname`, `catdes`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '<p><strong>Sports: News Related to sports.</strong></p>\r\n<p>hkjhskjdhsjkahkjdshfkjdshfkjhdkjgvfd</p>\r\n<p>djfkdghkfjghktgrhktrjklyjhklytjtlkjoitothjohitjuoihr</p>\r\n<p>fljrfgitoresutoe</p>', '2024-06-04 04:39:06.765676', '2024-06-04 04:39:06.765676'),
(2, 'Entertainment', '<p>Entertainment related News</p>', '2024-06-04 04:39:34.506669', '2024-06-04 04:39:34.506669'),
(3, 'Politics', '<p>News related with politics is shown in this category.</p>', '2024-06-04 04:40:20.283872', '2024-06-04 04:40:20.283872'),
(4, 'Business', '<p>Business is the category in news which give news about business&nbsp;</p>', '2024-06-04 04:41:15.227413', '2024-06-04 04:41:15.227413'),
(5, 'COVID-19', 'iudyiufydsuibcyunvnwawoiuqo', '2024-06-04 04:50:55.883322', '2024-06-04 04:50:55.883322'),
(6, 'Consumer', 'siudyuiyeruifyewiuycbyru4trtgi\r\ntgrj5toivgunouy6', '2024-06-04 05:01:09.886548', '2024-06-04 05:03:45.105871'),
(13, 'Tech News', 'Related to the IT Industry', '2024-06-17 12:45:07.898184', '2024-06-17 12:45:07.898184'),
(14, 'General', '', '2024-06-17 12:46:13.499007', '2024-06-17 12:46:13.499007');

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_comments`
--

CREATE TABLE `newsapp_comments` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `posted_date` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `news_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_comments`
--

INSERT INTO `newsapp_comments` (`id`, `comment`, `name`, `email`, `status`, `posted_date`, `updated_at`, `news_id_id`) VALUES
(2, 'nice', 'sd', 'info@gmail.com', '', '2024-06-08 06:37:58.293336', '2024-06-08 06:37:58.293336', 11),
(3, 'Informative News', 'Manav Kumar', 'manav@gmail.com', 'Unapproved', '2024-06-08 06:42:25.066303', '2024-06-09 14:18:40.781457', 11),
(4, 'Nice', 'Shanu Mishra', 'shanu@gmail.com', 'Approved', '2024-06-09 13:00:55.774430', '2024-06-09 14:03:10.100684', 7),
(6, 'Ver sad news', 'Anuj', 'john@gmail.com', 'Approved', '2024-06-17 12:47:20.570646', '2024-06-17 12:47:42.875298', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_customuser`
--

CREATE TABLE `newsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_customuser`
--

INSERT INTO `newsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$NH91LZbg5VVEdqwEDU40CA$h+adHEN2zd6ZYQ/OS58VQ5miCCFr2YLqBF568JxooyQ=', '2024-06-17 13:06:25.482219', 1, 'admin', 'Admin', '', 'admin@gmail.com', 1, 1, '2024-05-31 13:14:41.373912', '1', 'media/profile_pic/user.png'),
(2, 'pbkdf2_sha256$720000$tdAHhpYHpIaWeaJElSuXYK$lJylFIZNQy8RJCOIxdyWmTDenRbCz6DFoolRt+bhXgY=', '2024-06-10 03:53:18.098005', 0, 'abir123', 'Abir', 'Singh', 'abir@gmail.com', 0, 1, '2024-06-03 07:10:13.346584', '2', 'media/profile_pic/g10.jpg'),
(3, 'pbkdf2_sha256$720000$QYInuANarHOlT7coVOM6Vm$19GEIA32/aWNUK2Fq2Vls+9uhs6uy9tJX1WUgJYb96c=', NULL, 0, 'sar123', 'Sarita', 'Pandey', 'sar@gmail.com', 0, 1, '2024-06-03 07:12:30.909198', '2', 'media/profile_pic/g6.jpg'),
(4, 'pbkdf2_sha256$720000$FG6Q1Rn6KOxvViaZpZ6ZEL$GNo0ol18oqEXPjFjV8+8b6CZBC69Qg6bKWAeecdJML0=', NULL, 0, 'rahul123', 'Rahul', 'Kumar', 'rahul@gmail.com', 0, 1, '2024-06-03 07:12:58.806404', '2', 'media/profile_pic/g11.jpg'),
(5, 'pbkdf2_sha256$720000$7STgCwtVf0h2TUgYG7IKmN$evo9APrlKFaWoy5zHInKZ7z2AyDzZTX3yJJLugiGV6s=', NULL, 0, 'kabir123', 'Kabir', 'Malhotra', 'kabir@gmail.com', 0, 1, '2024-06-03 07:13:37.559625', '2', 'media/profile_pic/u1.jpg'),
(7, 'pbkdf2_sha256$390000$VybfOdSoMJ1aBI8f2nh8Rp$J01pCBHS+sH2Lx6GFLj4WxPvMIlpPg9B305uTIsObYI=', '2024-06-17 13:06:45.185974', 0, 'john12', 'john', 'Doe', 'johndoe@gmail.com', 0, 1, '2024-06-17 12:44:18.930275', '2', 'media/profile_pic/profile.png');

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_customuser_groups`
--

CREATE TABLE `newsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_customuser_user_permissions`
--

CREATE TABLE `newsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_news`
--

CREATE TABLE `newsapp_news` (
  `id` bigint(20) NOT NULL,
  `posttitle` longtext NOT NULL,
  `postdetails` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  `postimage` varchar(100) NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `posted_date` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `cat_id_id` bigint(20) NOT NULL,
  `subcategory_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_news`
--

INSERT INTO `newsapp_news` (`id`, `posttitle`, `postdetails`, `status`, `postimage`, `postedby`, `posted_date`, `updated_at`, `updatedby`, `cat_id_id`, `subcategory_id_id`) VALUES
(1, 'Anurag Kashyap’s takedown of starry demands, entourage costs: ‘Five-star burger is driven in from a city three hours away’', 'Director Anurag Kashyap spoke about the negative impact of ballooning production costs in the Hindi film industry, and said that a reversal of what has become the new norm will take time', 'Active', 'media/news/kashyap-17032024_COMM29c.jpg', '1', '2024-06-04 11:16:47.894472', '2024-06-04 11:16:47.894472', '1', 2, 1),
(2, 'Anurag Kashyap’s takedown of starry demands, entourage costs: ‘Five-star burger is driven in from a city three hours away’', 'Director Anurag Kashyap spoke about the negative impact of ballooning production costs in the Hindi film industry, and said that a reversal of what has become the new norm will take time', 'Active', 'media/news/kashyap-17032024_NepZpVL.jpg', '1', '2024-06-04 11:17:13.343073', '2024-06-04 11:17:13.343073', '1', 2, 1),
(3, 'Election Results 2024 Live Updates: Rahul Gandhi wins Rae Bareli by margin of 4 lakh votes; INDIA bloc halt BJP’s march towards majority', 'Election Results 2024 Live Updates Lok Sabha: Rahul Gandhi is leading in both Rae Bareli and Wayanad, while Smriti Irani is currently trailing in Amethi. The Election Commission will be putting up the final results on eci.gov.in, results.eci.gov.in, elections24.eci.gov.in. Also get India Election Results\' latest updates here', 'Active', 'media/news/Untitled-design-2024-06-04T135840.127_BYn3j3C.jpg', '1', '2024-06-04 11:20:22.421660', '2024-06-05 06:00:27.225729', '1', 3, 7),
(4, 'Election Results 2024 Live Updates: After 10 years, Congress opens account in Gujarat', 'After a decade-long hiatus, the Congress party has made a breakthrough in the Gujarat Lok Sabha Elections as Geniben Thakor, the party’s candidate from Banaskantha, secured victory by defeating her BJP counterpart Rekha Chaudhari, with a resounding margin of over 30 thousand votes.', 'Active', 'media/news/kashyap-17032024_cqS2K1g.jpg', '1', '2024-06-04 11:21:26.219946', '2024-06-05 06:00:01.807954', '1', 3, 7),
(5, 'Rahul Dravid confirms T20 World Cup as his last assignment as India head coach: ‘No different than my first day’', 'With the BCCI Secretary Jay Shah having stated that Dravid can re-apply for the role, the latter on Monday deemed it unlikely.', 'Active', 'media/news/Rahul-Dravid-India-head-coach.jpg', '1', '2024-06-04 11:22:58.534117', '2024-06-04 11:22:58.535116', '1', 1, 2),
(6, 'Terrifying Tuesday: Sensex, Nifty crashes over 8 percent', 'Market capitalization of BSE listed firms dropped by Rs 31 lakh crore to Rs 395.22 lakh crore. The market cap of these companies surged by record Rs 14 lakh crore to Rs 425.. 9 lakh crore on Monday.\r\nBenchmark indices, Sensex and Nifty crashed over 8 per cent in afternoon trades after the opposition INDIA bloc seat count improved compared to exit poll predictions.', 'Active', 'media/news/Untitled-design-2024-06-04T101759.303.jpg', '1', '2024-06-04 11:24:44.270610', '2024-06-04 11:24:44.270610', '1', 4, 9),
(7, 'Mr and Mrs Mahi box office collection day 4: Rajkummar Rao-Janhvi Kapoor starrer records 60 percent drop on Monday; inches close to Rs 20 cr', 'Mr and Mrs Mahi box office collection day 4: Rajkummar Rao-Janhvi Kapoor\'s sports drama netted Rs 2.15 cr on Monday.\r\nMr and Mrs Mahi box office collection day 4 saw the sports drama maintain a “decent” hold on its crucial first Monday test. Starring actors Rajkummar Rao and Janhvi Kapoor, the Karan Johar backed film witnessed a drop of around 60 percent from Sunday collections, which were approximately Rs 5.50 crores, industry tracker Sacnilk reported.', 'Active', 'media/news/MixCollage-04-Jun-2024-08-57-AM-3899.jpg', '1', '2024-06-04 11:27:21.824613', '2024-06-04 11:27:21.824613', '1', 2, 1),
(8, 'Kangana Ranaut wins Mandi: The star who took on Bollywood, leaned into controversies', 'The political win for Kangana Ranaut in Lok Sabha 2024 elections aligns with her nepotism fight which she ignited in the film industry, as she defeated Vikramaditya Singh, the son of former Himachal Pradesh Chief Minister Virbhadra Singh.', 'Active', 'media/news/MixCollage-04-Jun-2024-11-57-AM-5794.jpg', '1', '2024-06-04 11:29:02.517939', '2024-06-04 11:29:02.517939', '1', 3, 7),
(9, 'Stock Market Today Live Updates: Sensex closes 4000 pts lower after staging partial recovery, Nifty settles below 22,000 mark', 'Share Market Today Live Updates, India Election Results 2024: During the session, India VIX advanced to breach the 30 mark, indicating heightened volatility as market participants struggle to digest election trends.\r\nShare Market Today Live: Indian equity benchmark indices BSE Sensex and NSE Nifty staged a recovery in afternoon trade after tanking as much as 8 per cent as trends suggest weaker majority for BJP-led NDA. Sensex closed 4,389.73 points, or 5.74 per cent lower at 72,079.05 while Nifty settled 1,379.40 points, or 5.93 per cent lower at 21,884.50.\r\n\r\nDuring today’s volatile session, BSE listed companies eroded around Rs 30 lakh crore reducing m-cap of all companies below Rs 400 lakh crore mark. The indices witnessed the biggest single day fall in 4 years. All PSE and CPSE constituents witnessed a downfall with FMCG stocks lending support to the markets. GIFT Nifty, an early indicator for Sensex and Nifty, traded at a low of as much as 1,400 points. As per trends at the time of closing bell, India Today, NDA is leading with 290 seats with INDIA alliance bagging 234 seats. As per News 18, NDA is ahead in 295 seats with INDIA alliance trailing at 231 seats.\r\n\r\nIndia VIX, Volatility Index or Fear Index, breached past 30 mark on Tuesday after falling near 15 per cent in the previous session. Earlier on Monday, the market hit all-time highs after most of the exit polls suggested a return of the BJP government with a thumping majority.', 'Active', 'media/news/Untitled-design-2024-06-04T135840.127.jpg', '1', '2024-06-04 11:30:42.660910', '2024-06-04 11:30:42.660910', '1', 4, 9),
(10, 'IndiGo to host IATA annual meeting in Delhi next year', 'Civil Aviation Minister Jotiraditya Scindia termed IATA’s decision to hold its next AGM in Delhi as a “proud moment for Indian aviation”.\r\nIndiGo will host the annual general meeting (AGM) of the trade association of airlines —International Air Transport Association (IATA) — on June 8-10, 2025 in Delhi. India had last hosted the IATA AGM, a marquee global annual aviation event, over four decades ago in 1983. Prior to that, India had hosted the meeting in 1958.\r\n“With record aircraft orders, impressive growth, and world-class infrastructure developments, India is firmly on the trajectory to become the world’s third largest aviation market within this decade. With such bright prospects, it’s the perfect time for the IATA AGM to return to India and witness these exciting developments first hand,” said Willie Walsh, IATA’s Director General.\r\nAt the 80th AGM of the 330-airline strong association in Dubai, which concluded on Monday, IndiGo’s Chief Executive Officer (CEO) Pieter Elbers took charge as the chair of IATA’s board of governors, succeeding RwandAir CEO Yvonne Manzi Makolo. Elbers’s one-year term is expected to conclude with the 81st IATA AGM in Delhi next year.\r\n\r\n“IndiGo is proud to be host airline for the 81st IATA AGM and looks forward to welcoming the global aviation community to Delhi in 2025. India, becoming the third largest economy within the next few years and leading the fourth industrial revolution with the use of AI, is a nation on the move. India’s rise in the global aviation landscape over the last years has been nothing short of remarkable,” the IndiGo CEO said.', 'Active', 'media/news/INDIGO.jpg', '1', '2024-06-04 11:32:54.284024', '2024-06-04 11:32:54.284024', '1', 4, 10),
(11, 'Toyota apologizes for cheating on vehicle testing, halts production of three models', 'Toyota Chairman Akio Toyoda apologized on Monday for massive cheating on certification tests for seven vehicle models as the automaker suspended production of three of them.\r\nToyota Chairman Akio Toyoda apologized on Monday for massive cheating on certification tests for seven vehicle models as the automaker suspended production of three of them.\r\n\r\nThe wide-ranging faulty testing at Japan’s top automaker involved the use of inadequate or outdated data in collision tests, and incorrect testing of airbag inflation and rear-seat damage in crashes. Emissions tests also were found to have been falsified.\r\n\r\nToyota Motor Corp., based in Toyota city, central Japan, suspended production in Japan of the Corolla Fielder, Corolla Axio and Yaris Cross. The faulty tests were also found on models already discontinued.', 'Active', 'media/news/Untitled-design-16.jpg', '1', '2024-06-04 11:34:33.516701', '2024-06-04 11:34:33.516701', '1', 4, 10),
(13, '9 Dead, 25 Injured After Goods Train Hits Kanchanjunga Express In Bengal', '\r\nNine people, including three Railway employees, have died and about 50 others injured after an express train collided with a goods train in Darjeeling district of West Bengal this morning. Kanchanjunga Express was travelling from Agartala in Tripura to Sealdah in Kolkata when a goods train hit it from behind near Rangapani station, close to New Jalpaiguri.\r\n\r\nThree coaches of Kanchanjunga Express were derailed in the crash. One factor which limited casualties is the fact that the rear part of Kanchanjunga Express comprised of the parcel coach and the guard\'s coach and the passenger compartments further ahead suffered less impact. \r\n\r\nRailway Board chairperson Jaya Verma Sinha told the media that the accident took place around 9 am. \"The rescue work is complete. The injured have been shifted to the North Bengal medical college and they are being provided the best possible treatment,\" she said.\r\n\r\nThe unaffected front portion of Kanchenjunga Express, she said, will resume its onward journey soon so that the passengers can reach their destination.', 'Active', 'media/news/train-1.jpeg', '1', '2024-06-17 12:46:42.642453', '2024-06-17 12:46:42.642453', '1', 14, 18);

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_page`
--

CREATE TABLE `newsapp_page` (
  `id` bigint(20) NOT NULL,
  `pagetitle` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `aboutus` longtext NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_page`
--

INSERT INTO `newsapp_page` (`id`, `pagetitle`, `address`, `aboutus`, `email`, `mobilenumber`, `created_at`, `updated_at`) VALUES
(1, 'Website Details', 'H-990,  PCR Office, Noida', 'Welcome to News Portal, your one-stop destination for staying informed and up-to-date with the latest news and developments from around the world.\r\nAt News Portal, we understand the importance of reliable and timely information in today\'s fast-paced world. Our team of dedicated journalists and editors work tirelessly to bring you the most relevant and engaging stories from a variety of sources, ensuring that you are always well-informed on the issues that matter most to you.\r\nWhether you\'re interested in politics, sports, entertainment, technology, or business, you\'ll find it all here on News Portal. Our user-friendly interface makes it easy to navigate through the latest headlines, explore in-depth articles, and discover new perspectives on the events shaping our world.\r\nBut News Portal is more than just a news website – it\'s a community of curious minds and engaged citizens who come together to discuss, debate, and share ideas. We believe in the power of journalism to inspire change and foster understanding, and we\'re committed to providing a platform where voices from all walks of life can be heard.\r\nJoin us on our mission to inform, inspire, and empower. Together, we can make a difference.', 'support@gmail.com', 12345678, '0000-00-00 00:00:00.000000', '2024-06-17 12:48:15.480297');

-- --------------------------------------------------------

--
-- Table structure for table `newsapp_subcategory`
--

CREATE TABLE `newsapp_subcategory` (
  `id` bigint(20) NOT NULL,
  `subcatname` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cat_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsapp_subcategory`
--

INSERT INTO `newsapp_subcategory` (`id`, `subcatname`, `created_at`, `updated_at`, `cat_id_id`) VALUES
(1, 'Bollywood', '2024-06-04 05:29:48.802410', '2024-06-04 05:29:48.802410', 2),
(2, 'Cricket', '2024-06-04 05:30:32.134227', '2024-06-04 05:30:32.134227', 1),
(3, 'Football', '2024-06-04 05:30:49.477395', '2024-06-04 05:30:49.477395', 1),
(4, 'Others', '2024-06-04 05:31:07.722038', '2024-06-04 05:31:07.722038', 1),
(5, 'Hollywood', '2024-06-04 05:31:22.385309', '2024-06-04 05:31:22.385309', 2),
(6, 'Others', '2024-06-04 05:31:34.641821', '2024-06-04 05:31:34.641821', 2),
(7, 'Others', '2024-06-04 05:32:20.900253', '2024-06-04 05:32:20.900253', 3),
(8, 'Textille', '2024-06-04 05:32:36.108466', '2024-06-04 05:32:36.108466', 4),
(9, 'Stock Market', '2024-06-04 05:32:54.489314', '2024-06-04 05:32:54.489314', 4),
(10, 'Others', '2024-06-04 05:33:03.365265', '2024-06-04 05:33:03.365265', 4),
(11, 'Vaccination', '2024-06-04 05:33:32.211123', '2024-06-04 05:33:32.211123', 5),
(12, 'Others', '2024-06-04 05:33:39.685148', '2024-06-04 05:33:39.685148', 5),
(13, 'Music', '2024-06-04 05:46:16.821375', '2024-06-04 05:54:07.740646', 2),
(14, 'fgrgfr', '2024-06-04 05:46:20.252473', '2024-06-04 05:46:20.252473', 1),
(15, 'fe', '2024-06-04 05:46:23.572612', '2024-06-04 05:46:23.572612', 2),
(17, 'AI- Artificial intelligence ', '2024-06-17 12:45:28.171400', '2024-06-17 12:45:28.171400', 13),
(18, 'General', '2024-06-17 12:46:23.678297', '2024-06-17 12:46:23.678297', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_newsapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `newsapp_category`
--
ALTER TABLE `newsapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsapp_comments`
--
ALTER TABLE `newsapp_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsapp_comments_news_id_id_183104c0_fk_newsapp_news_id` (`news_id_id`);

--
-- Indexes for table `newsapp_customuser`
--
ALTER TABLE `newsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `newsapp_customuser_groups`
--
ALTER TABLE `newsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsapp_customuser_groups_customuser_id_group_id_eba04518_uniq` (`customuser_id`,`group_id`),
  ADD KEY `newsapp_customuser_groups_group_id_13b2b697_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `newsapp_customuser_user_permissions`
--
ALTER TABLE `newsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsapp_customuser_user__customuser_id_permission_db776910_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `newsapp_customuser_u_permission_id_e04fcaab_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `newsapp_news`
--
ALTER TABLE `newsapp_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsapp_news_cat_id_id_bede4b15_fk_newsapp_category_id` (`cat_id_id`),
  ADD KEY `newsapp_news_subcategory_id_id_1f84a5a4_fk_newsapp_s` (`subcategory_id_id`);

--
-- Indexes for table `newsapp_page`
--
ALTER TABLE `newsapp_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsapp_subcategory`
--
ALTER TABLE `newsapp_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsapp_subcategory_cat_id_id_9490172e_fk_newsapp_category_id` (`cat_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newsapp_category`
--
ALTER TABLE `newsapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newsapp_comments`
--
ALTER TABLE `newsapp_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsapp_customuser`
--
ALTER TABLE `newsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsapp_customuser_groups`
--
ALTER TABLE `newsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsapp_customuser_user_permissions`
--
ALTER TABLE `newsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsapp_news`
--
ALTER TABLE `newsapp_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `newsapp_page`
--
ALTER TABLE `newsapp_page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsapp_subcategory`
--
ALTER TABLE `newsapp_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_newsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `newsapp_customuser` (`id`);

--
-- Constraints for table `newsapp_comments`
--
ALTER TABLE `newsapp_comments`
  ADD CONSTRAINT `newsapp_comments_news_id_id_183104c0_fk_newsapp_news_id` FOREIGN KEY (`news_id_id`) REFERENCES `newsapp_news` (`id`);

--
-- Constraints for table `newsapp_customuser_groups`
--
ALTER TABLE `newsapp_customuser_groups`
  ADD CONSTRAINT `newsapp_customuser_g_customuser_id_fe8c0b30_fk_newsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `newsapp_customuser` (`id`),
  ADD CONSTRAINT `newsapp_customuser_groups_group_id_13b2b697_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `newsapp_customuser_user_permissions`
--
ALTER TABLE `newsapp_customuser_user_permissions`
  ADD CONSTRAINT `newsapp_customuser_u_customuser_id_ea091854_fk_newsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `newsapp_customuser` (`id`),
  ADD CONSTRAINT `newsapp_customuser_u_permission_id_e04fcaab_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `newsapp_news`
--
ALTER TABLE `newsapp_news`
  ADD CONSTRAINT `newsapp_news_cat_id_id_bede4b15_fk_newsapp_category_id` FOREIGN KEY (`cat_id_id`) REFERENCES `newsapp_category` (`id`),
  ADD CONSTRAINT `newsapp_news_subcategory_id_id_1f84a5a4_fk_newsapp_s` FOREIGN KEY (`subcategory_id_id`) REFERENCES `newsapp_subcategory` (`id`);

--
-- Constraints for table `newsapp_subcategory`
--
ALTER TABLE `newsapp_subcategory`
  ADD CONSTRAINT `newsapp_subcategory_cat_id_id_9490172e_fk_newsapp_category_id` FOREIGN KEY (`cat_id_id`) REFERENCES `newsapp_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
