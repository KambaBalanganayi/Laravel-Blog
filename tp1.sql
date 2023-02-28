-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 06:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorys_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `body`, `user_id`, `categorys_id`, `created_at`, `updated_at`) VALUES
(25, 'This is my first post - Wahouuu!!', 'Well the content is kind of in the title, check it out!!!--!!!', 1, 2, '2023-02-25 13:29:22', '2023-02-27 11:53:40'),
(26, 'This is a post by Marcus - He\'s not grey', 'Being grey is not a bad thing, all you need is a little perspective', 2, 1, '2023-02-27 12:22:44', '2023-02-27 12:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `categorys_fr` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `category`, `categorys_fr`) VALUES
(1, 'Business', 'Affaires'),
(2, 'Computers', 'Informatique');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ville` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `id_user`, `nom`, `adresse`, `phone`, `email`, `dateNaissance`, `id_ville`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lauren Leanon', '9070 Kunde Valley Suite 902', '667.242.9191', 'forrest33@example.net', '1988-11-02', 61, '2023-02-04 06:03:11', '2023-02-04 13:29:19'),
(2, NULL, 'Kristoffer Haag', '929 Philip Oval', '(715) 497-9084', 'ldonnelly@example.net', '1974-07-28', 73, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(3, NULL, 'Mrs. Gisselle Kertzmann I', '6722 Stehr Row Apt. 435', '+1.302.847.6165', 'qzieme@example.org', '1982-12-20', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(4, NULL, 'Kelvin Lindgren', '6827 Bergstrom Isle', '+1-269-834-3451', 'rhett.bradtke@example.net', '2003-06-25', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(5, NULL, 'Mrs. Jolie Heathcote', '67923 Erin Highway', '+1.657.658.6988', 'elmore.dubuque@example.net', '1992-04-27', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(6, NULL, 'Gina Thiel IV', '2321 Peter Lodge Suite 096', '+1.929.346.8475', 'agottlieb@example.com', '1970-09-05', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(7, NULL, 'Madge Kulas', '3216 Runte Forges Apt. 234', '727-729-0947', 'winfield45@example.net', '2003-08-30', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(8, NULL, 'Kip McClure Sr.', '4642 Pouros Valleys Apt. 176', '1-952-750-3004', 'kquigley@example.net', '1995-05-15', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(9, NULL, 'Dr. Alba DuBuque', '175 Waters Fields', '(248) 779-6860', 'shakira89@example.org', '2018-10-01', 74, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(10, NULL, 'Mrs. Heath Johns DDS', '43765 Williamson Harbor Apt. 210', '+1-938-474-7987', 'corine.lubowitz@example.org', '1986-01-03', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(11, NULL, 'Orrin Ankunding', '640 Connie Court', '781-799-6493', 'gloria.nitzsche@example.org', '1987-12-13', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(12, NULL, 'Miss Berenice Willms', '601 Kaylin Extension', '+1.631.730.0307', 'qbrekke@example.com', '2006-02-22', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(13, NULL, 'Damian Swift', '970 Thomas Pass', '+1.445.204.3544', 'liana.watsica@example.net', '1985-12-06', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(14, NULL, 'Jermaine Kuvalis', '9310 Bartoletti Roads', '1-520-972-6817', 'mia.stracke@example.org', '1975-10-29', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(15, NULL, 'Tyrese Mante', '536 Julien Fork Apt. 697', '331.586.7642', 'durgan.carmela@example.com', '1987-07-11', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(16, NULL, 'Ms. Josiane Conn Sr.', '680 Finn Cape Suite 894', '848-417-0832', 'balistreri.laverna@example.com', '1978-03-05', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(17, NULL, 'Mrs. Melyssa Lind III', '6803 Garnett Run', '+1 (505) 597-4097', 'renner.alfredo@example.org', '1994-11-04', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(18, NULL, 'Dr. Jerrell Lueilwitz Jr.', '2530 Turner Loop Suite 615', '484-347-0882', 'lilliana71@example.com', '1976-12-01', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(19, NULL, 'Frederique Lehner', '2114 Giovanna Harbors Suite 064', '(928) 824-0136', 'wiza.alfred@example.net', '1991-10-21', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(20, NULL, 'Jasmin Russel', '35324 Elouise Tunnel', '+1 (641) 808-4849', 'jennyfer06@example.net', '1991-04-22', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(21, NULL, 'Elijah Parisian', '168 Armstrong Forest Suite 591', '+1-949-744-1650', 'kunde.haleigh@example.org', '1992-08-11', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(22, NULL, 'Cristina Buckridge', '38463 Paul Rue Apt. 664', '+1 (228) 923-0935', 'eupton@example.com', '1975-10-27', 73, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(23, NULL, 'Shanna Conn', '4258 Malika Gateway Apt. 290', '+1-865-992-5018', 'kennedi.swaniawski@example.com', '1978-07-18', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(24, NULL, 'Perry Stamm', '36238 Emmitt Ford', '+1-352-546-5122', 'cummerata.gabe@example.org', '2011-08-20', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(25, NULL, 'Salvador Koelpin Sr.', '435 Fisher Walks Suite 600', '1-678-823-1338', 'damore.eleonore@example.org', '2018-01-22', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(26, NULL, 'Amparo O\'Kon', '101 Alysson Pine', '(442) 534-3549', 'jacky.okon@example.com', '1971-01-12', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(27, NULL, 'Nina McKenzie', '374 Magdalena Curve', '(262) 958-7551', 'edwina57@example.net', '2018-04-11', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(28, NULL, 'Nina Abernathy I', '68910 Crystal Station Apt. 049', '+14409304629', 'delores.okon@example.com', '1970-03-17', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(29, NULL, 'Sigurd White', '367 Evert Flat Apt. 245', '+1.463.994.2750', 'dluettgen@example.net', '1993-06-16', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(30, NULL, 'Kacey Bailey', '80300 Baby Way Suite 329', '1-310-733-5650', 'jsmitham@example.com', '1977-05-09', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(31, NULL, 'Prof. Zoila Hickle Sr.', '8325 Carrie Burgs Apt. 694', '903.967.3672', 'destiny98@example.com', '1985-11-14', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(32, NULL, 'Grady Wisoky', '50431 Lolita Vista Suite 636', '1-272-691-4716', 'ardith.homenick@example.org', '1998-06-21', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(33, NULL, 'Prof. Ova Kiehn', '693 Volkman Port', '+1-904-965-9906', 'zechariah.kuphal@example.org', '2013-03-10', 69, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(34, NULL, 'Lilly Beatty', '4952 Hoppe Springs', '(703) 336-1227', 'sabshire@example.net', '2010-10-19', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(35, NULL, 'Shanel Considine', '23529 Corkery Viaduct', '+1-940-364-6135', 'sierra29@example.org', '1987-02-10', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(36, NULL, 'Savanah Hartmann', '9457 Linda Loaf', '+1 (283) 562-7848', 'kirk.ziemann@example.org', '1978-02-19', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(37, NULL, 'Mr. Elliot Brakus', '3604 Torphy Inlet Suite 374', '+1-814-205-1677', 'vwaters@example.com', '2009-11-07', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(38, NULL, 'Clay Jacobson', '231 Kris Grove', '+1.458.267.1923', 'rnikolaus@example.net', '1974-05-24', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(39, NULL, 'Regan Schamberger', '28168 Norwood Forge Suite 207', '+1.689.374.4651', 'orie20@example.org', '1986-04-20', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(40, NULL, 'Lindsey Marquardt', '116 Cummerata Forges', '318.670.9782', 'cbrown@example.com', '1979-01-26', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(41, NULL, 'Euna Goldner', '54030 Hammes Locks', '(707) 977-4933', 'wilber.hudson@example.net', '2013-02-28', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(42, NULL, 'Octavia Waelchi', '873 Pouros Divide Suite 513', '+1-708-578-5965', 'kiehn.craig@example.org', '1989-10-11', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(43, NULL, 'Arlie Marks', '566 Mohammed Islands Suite 811', '540-229-7321', 'afay@example.org', '1990-12-28', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(44, NULL, 'Amelia Haag', '502 Anderson Village Apt. 217', '1-760-994-0294', 'hintz.delilah@example.org', '1984-09-15', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(45, NULL, 'Brando Schmitt V', '4252 Jeanie Streets Suite 235', '+1 (706) 477-5824', 'hilpert.fatima@example.net', '1977-12-24', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(46, NULL, 'Hardy Dibbert', '351 Legros Glens', '1-719-384-3628', 'considine.kaelyn@example.org', '2015-12-10', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(47, NULL, 'Royce Howell III', '7441 Aniyah Villages Apt. 998', '320-740-0398', 'kristoffer67@example.net', '1993-04-30', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(48, NULL, 'Herbert Koss', '28718 Jacobs Mews Suite 824', '913-746-2241', 'evangeline.kulas@example.org', '1991-04-24', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(49, NULL, 'Kevon Borer', '37349 Eunice Fall Apt. 712', '603-770-7934', 'harber.al@example.com', '2021-09-27', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(50, NULL, 'Michele Kuphal', '719 Sawayn Course', '1-484-373-1235', 'kariane.stehr@example.net', '2019-06-28', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(105, 1, 'Kamba', '12345 Test Street', '456-454-4564', 'test@test.com', '1900-01-01', 73, '2023-02-25 12:39:25', '2023-02-25 12:39:25'),
(106, NULL, 'Marcus', '4545 Fake Street South', '555-555-5555', 'testy@testo.com', '1976-06-07', 67, '2023-02-27 12:16:56', '2023-02-27 12:16:56'),
(107, NULL, 'Farcus', '4545 Fake Street South', '555-555-5555', 'fake@testo.com', '1976-06-08', 61, '2023-02-27 12:19:20', '2023-02-27 12:19:20');

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
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `path` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `user_id`, `title`, `path`, `created_at`, `updated_at`) VALUES
(2, 1, 'Bla bla bla', 'public/IOfVxoqQrmGnDFXxjw2ypjIU0TvkiqPPz418oTMC.pdf', '2023-02-28 10:33:18', '2023-02-28 10:33:18');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_03_235519_create_etudiants_table', 2),
(6, '2023_02_03_235558_create_villes_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kamba', 'test@test.com', NULL, '$2y$10$5s/f2XI9vJGUYHHWgQY53OheVPczphkB.Q/QLieY28OXV9XMYCx.q', NULL, '2023-02-25 12:39:25', '2023-02-25 12:39:25'),
(2, 'Marcus', 'testy@testo.com', NULL, '$2y$10$kdw98K1Wt3t2KNK7JEdXYOt7GxK3h9s/qNkbHXefuFgdmk.JQFJzW', NULL, '2023-02-27 12:16:56', '2023-02-27 12:16:56'),
(3, 'Farcus', 'fake@testo.com', NULL, '$2y$10$Gc/AHe86pEIGNARrnglVaut9wizIUfRTQSiJBMqDMhTdZxOoMDING', NULL, '2023-02-27 12:19:20', '2023-02-27 12:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(61, 'Smithberg', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(62, 'Lillianberg', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(63, 'Port Roelburgh', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(64, 'South Jarodside', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(65, 'Jimmiechester', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(66, 'Port Alfreda', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(67, 'Lake Laury', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(68, 'Spencerton', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(69, 'Port Candacemouth', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(70, 'Schambergerville', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(71, 'Hellerside', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(72, 'Randiview', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(73, 'North Clark', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(74, 'South Elisabethview', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(75, 'Aaliyahside', '2023-02-04 05:44:10', '2023-02-04 05:44:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_id_idx` (`user_id`),
  ADD KEY `fk_blog_posts_categorys1_idx` (`categorys_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ville_idx` (`id_ville`),
  ADD KEY `id_user_idx` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `fk_blog_posts_categorys1` FOREIGN KEY (`categorys_id`) REFERENCES `categorys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_ville` FOREIGN KEY (`id_ville`) REFERENCES `villes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD CONSTRAINT `file_uploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
