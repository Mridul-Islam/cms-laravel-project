-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 07:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tempora', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(2, 'enim', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(3, 'suscipit', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(4, 'eaque', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(5, 'et', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(6, 'PHP', '2022-05-08 11:21:33', '2022-05-08 11:21:33'),
(7, 'Laravel', '2022-05-08 11:21:38', '2022-05-08 11:21:38'),
(8, 'JavaScript', '2022-05-08 11:21:44', '2022-05-08 11:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `is_active`, `author`, `email`, `photo`, `body`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'Hi this is my first comment...', '2022-05-08 11:28:59', '2022-05-08 11:29:54'),
(2, 19, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'This is the comment for bird..', '2022-05-08 11:29:27', '2022-05-08 11:29:57'),
(3, 16, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'This ocean is so beautiful...', '2022-05-08 11:29:49', '2022-05-08 11:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `is_active`, `author`, `email`, `photo`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'Thanks for your co-operation..', '2022-05-08 11:30:19', '2022-05-08 11:30:19'),
(2, 2, 0, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'Thanks for commenting on this post..', '2022-05-08 11:30:48', '2022-05-08 11:30:48'),
(3, 2, 0, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'Thanks for commenting on this post..', '2022-05-08 11:30:49', '2022-05-08 11:30:49'),
(4, 3, 0, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1652030527mridul.jpg', 'Thanks for the complement...', '2022-05-08 11:31:09', '2022-05-08 11:31:09');

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
(221, '2014_10_12_000000_create_users_table', 1),
(222, '2014_10_12_100000_create_password_resets_table', 1),
(223, '2019_08_19_000000_create_failed_jobs_table', 1),
(224, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(225, '2021_11_25_115818_create_roles_table', 1),
(226, '2021_12_06_130419_add_photo_id_to_users', 1),
(227, '2021_12_06_160145_create_photos_table', 1),
(228, '2021_12_13_090728_create_posts_table', 1),
(229, '2021_12_14_040747_create_categories_table', 1),
(230, '2021_12_19_165902_create_comments_table', 1),
(231, '2021_12_19_170255_create_comment_replies_table', 1);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1652030527mridul.jpg', '2022-05-08 11:22:07', '2022-05-08 11:22:07'),
(2, '1652030542people1.jpg', '2022-05-08 11:22:22', '2022-05-08 11:22:22'),
(3, '1652030552people2.jpg', '2022-05-08 11:22:32', '2022-05-08 11:22:32'),
(4, '1652030562people3.jpg', '2022-05-08 11:22:42', '2022-05-08 11:22:42'),
(5, '1652030573people4.jpg', '2022-05-08 11:22:53', '2022-05-08 11:22:53'),
(6, '1652030584people5.jpg', '2022-05-08 11:23:04', '2022-05-08 11:23:04'),
(7, '1652030606manali1.jpg', '2022-05-08 11:23:26', '2022-05-08 11:23:26'),
(8, '1652030640bird1.jpg', '2022-05-08 11:24:00', '2022-05-08 11:24:00'),
(9, '1652030653mountain1.jpg', '2022-05-08 11:24:13', '2022-05-08 11:24:13'),
(10, '1652030664nature1.jpg', '2022-05-08 11:24:24', '2022-05-08 11:24:24'),
(11, '1652030675occean1.jpg', '2022-05-08 11:24:35', '2022-05-08 11:24:35'),
(12, '1652030685bird2.jpg', '2022-05-08 11:24:45', '2022-05-08 11:24:45'),
(13, '1652030696manali2.jpg', '2022-05-08 11:24:56', '2022-05-08 11:24:56'),
(14, '1652030710mountain2.jpg', '2022-05-08 11:25:10', '2022-05-08 11:25:10'),
(15, '1652030723nature2.jpg', '2022-05-08 11:25:23', '2022-05-08 11:25:23'),
(16, '1652030736occean2.jpg', '2022-05-08 11:25:36', '2022-05-08 11:25:36'),
(17, '1652030746bird3.jpg', '2022-05-08 11:25:46', '2022-05-08 11:25:46'),
(18, '1652030756mountain3.jpg', '2022-05-08 11:25:56', '2022-05-08 11:25:56'),
(19, '1652030770nature3.jpg', '2022-05-08 11:26:10', '2022-05-08 11:26:10'),
(20, '1652030782occean3.jpg', '2022-05-08 11:26:22', '2022-05-08 11:26:22'),
(21, '1652030794nature4.jpg', '2022-05-08 11:26:34', '2022-05-08 11:26:34'),
(22, '1652030809peigon.jpg', '2022-05-08 11:26:49', '2022-05-08 11:26:49'),
(23, '1652030823bmw_logo.jpg', '2022-05-08 11:27:03', '2022-05-08 11:27:03'),
(24, '1652030835laravel-logo.jpg', '2022-05-08 11:27:15', '2022-05-08 11:27:15'),
(25, '1652030851php-logo.jpg', '2022-05-08 11:27:31', '2022-05-08 11:27:31'),
(26, '1652030865tesla.png', '2022-05-08 11:27:45', '2022-05-08 11:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `slug`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 26, 'Minus aut expedita fuga.', 'Rem fugiat doloribus ipsam cumque enim est. Dolor dolores animi enim veritatis necessitatibus. Esse autem fuga ex quia voluptatem. Minus error ullam eum voluptas assumenda aliquid.\r\n\r\nMaiores eum odio quam consequuntur fugiat. Ad sed vel aut blanditiis ut sint. Est commodi ut dolores et beatae consequatur omnis.\r\n\r\nCumque voluptas aspernatur qui. Ipsum reiciendis doloremque eos et ipsum quos nulla. Consequuntur inventore autem repellat iusto cum. Rerum aperiam sit qui dicta sapiente est maiores.\r\n\r\nAlias aut est sed repudiandae hic laudantium labore. Quos non corrupti veniam. Reprehenderit culpa sit sit quas possimus officia. Vel et est nihil expedita a.\r\n\r\nRepellat ea tempora explicabo dolor vel optio. Velit vel voluptatem quia architecto necessitatibus hic. Occaecati ea quidem soluta voluptas magnam perspiciatis consequatur illum. Et asperiores laborum necessitatibus animi dolor delectus fugiat.\r\n\r\nVeniam sit inventore dolor dignissimos vel. Inventore facere numquam at harum non aut. Ut nobis provident eaque voluptatibus.\r\n\r\nCulpa corrupti est qui omnis ipsam. Molestiae voluptatem voluptatem nihil amet. Quis aut ipsum quos quia reprehenderit repudiandae. Necessitatibus sit architecto nemo.\r\n\r\nAutem nihil quas aut eaque sed. Velit doloribus optio ipsa aliquid laboriosam. Dolorem quas ullam eos suscipit animi facere et. Tenetur dolore optio quo nihil commodi.\r\n\r\nMagnam optio non voluptates cupiditate. Rerum vitae adipisci tempora asperiores sint.\r\n\r\nQui aut qui non non quis et doloremque. Eum minima dolore ipsum reprehenderit consequuntur aut expedita. Rerum qui distinctio mollitia sint dolor culpa dolorem. Nihil aut dolores architecto fugit aliquid quia.\r\n\r\nOmnis odit porro molestiae illo eos. Porro autem aliquam reiciendis quas et. Et qui omnis quod tenetur neque est qui cum.\r\n\r\nRem soluta ut saepe facere. Consequatur incidunt sit ratione qui. Ut inventore libero blanditiis aspernatur.\r\n\r\nIusto et et dolores consequuntur in voluptatem. Quo voluptatem magni quia non maiores sunt. Eum modi illum saepe iste ea qui minima esse. Quia et molestias natus dolor.\r\n\r\nIllo aut unde facilis est ipsum voluptatibus. Quia placeat perspiciatis ea ad praesentium dolorum perferendis hic. Eveniet voluptatem consequatur in ipsum unde animi.\r\n\r\nNihil vero rerum dolorum doloremque. Molestiae ut aut amet. Consectetur omnis animi temporibus doloribus laudantium.', 'minus-aut-expedita-fuga', '2022-05-08 11:18:35', '2022-05-08 11:27:45'),
(2, 3, 4, 25, 'Quas quia iure dignissimos.', 'Velit necessitatibus laudantium at id est dignissimos. Harum voluptatem magnam deserunt officia. Repudiandae velit adipisci ducimus corporis magni.\r\n\r\nCorrupti distinctio nihil ratione reiciendis. Sit numquam odio aut eum quibusdam omnis. Et et qui aut qui asperiores ipsum nulla.\r\n\r\nOfficia ut amet eaque rem sunt rerum similique. Nesciunt accusantium voluptatem enim.\r\n\r\nAut tenetur sit et delectus et fugit officiis minima. Nemo ut voluptates nesciunt unde veniam nihil placeat. Temporibus corrupti eaque quaerat rem.\r\n\r\nAliquam voluptatem voluptatum sunt et. Optio aliquam in vel explicabo soluta et ea. Amet molestias dolorum non perferendis quasi temporibus itaque accusantium.\r\n\r\nRepudiandae neque id dolorem voluptas rerum. Cupiditate mollitia vel distinctio quod nemo ullam quo. Praesentium voluptates non vitae veritatis dolor aut tempora.\r\n\r\nNisi voluptatem voluptatem dolores exercitationem amet est corrupti. Quo nobis dignissimos voluptatem voluptatem omnis hic error. Voluptatem harum et quia fuga quia est sapiente dolor.\r\n\r\nIpsa fugiat qui quisquam repellendus veniam. Laborum impedit laboriosam autem esse quia illo. Autem nulla repellat animi ducimus. Vel minima sed enim aut sunt quidem. Quam repellendus voluptate a vel.\r\n\r\nAnimi nostrum incidunt molestiae est ducimus sit iure. In accusamus excepturi aut in. Reprehenderit sit eaque nihil consequatur voluptatem.\r\n\r\nEligendi veniam consequatur ut eum tempora ex aut. Facilis pariatur laboriosam temporibus vel qui. Vel repudiandae temporibus nulla quae non.\r\n\r\nIpsam veritatis autem dolores aut deleniti. Reiciendis eius et officiis pariatur fuga esse qui rem. Fugit magni tenetur voluptatem dolorem esse dolorum. Quos at nesciunt hic aut dolorem ab accusantium.\r\n\r\nTempora sequi hic distinctio ipsum nostrum sit sapiente. Porro error quod provident aut maxime dolor eos. Ea autem ut laborum perspiciatis eligendi ullam. Aliquid sunt nam et molestias.', 'quas-quia-iure-dignissimos', '2022-05-08 11:18:35', '2022-05-08 11:27:31'),
(3, 3, 4, 24, 'Aut quaerat vel reprehenderit aut ut.', 'Dolor rerum voluptatem vel. Temporibus officia nobis voluptatibus. Enim molestias sint repudiandae nostrum laboriosam omnis quae aut.\r\n\r\nCumque corrupti repudiandae doloribus sed necessitatibus. Saepe ratione deserunt pariatur dolor et ratione minima. Cum quibusdam id repellendus eligendi quisquam.\r\n\r\nDelectus fugiat architecto consequuntur rerum esse. Tempora qui consequatur rerum ut sed non. Porro voluptas et esse voluptate totam.\r\n\r\nRerum repellat id fugit cupiditate esse quis. Ratione consequatur omnis animi sit. Eum eos velit ipsa sit laudantium quaerat sit adipisci.\r\n\r\nRerum voluptatum saepe veritatis adipisci. Consequatur nam recusandae reprehenderit. Est saepe sequi qui. Molestiae pariatur consequatur voluptatibus laudantium cupiditate.\r\n\r\nVoluptate omnis libero tenetur voluptates et laborum qui. Officia harum beatae enim quia similique dolorum. Facilis eaque necessitatibus sit quia velit culpa voluptas.\r\n\r\nEst sequi esse qui officia id est. Aut consectetur nesciunt in sit quia dolorem qui. Et et quis velit quia inventore ea. Veniam ex eum et officia iusto ratione consequatur.\r\n\r\nAccusamus maxime ut blanditiis vel dolores eius. Maxime vel est saepe reprehenderit dolorem eos iste. Et minima beatae sit esse dicta quis eaque earum. At neque vel molestias impedit aut nam excepturi.\r\n\r\nDolores consequatur consequatur quia. Aut nemo ipsam officiis cumque. Quos magnam minus repudiandae. Error doloremque voluptas dolore quos. Ut inventore voluptatem eligendi.\r\n\r\nAmet est architecto voluptatum magnam repellat cumque amet temporibus. Quas eaque quis et quod. Eos non tempora sunt deserunt blanditiis dolorem laborum dignissimos. Architecto repellat quidem nemo id non officiis aut maiores.', 'aut-quaerat-vel-reprehenderit-aut-ut', '2022-05-08 11:18:35', '2022-05-08 11:27:15'),
(4, 4, 5, 23, 'Tempora tenetur quia perferendis impedit.', 'Aut consequatur veniam veritatis aliquam sint et. Ab et architecto aut exercitationem. Aut est quis ex.\r\n\r\nLabore debitis maiores ut est eligendi et reprehenderit nobis. Voluptas soluta et dolorem a dolor dolorem. Sequi quis voluptas et qui ut sed neque nesciunt. Reprehenderit molestiae est aut dolorem. Eos quia doloremque necessitatibus magni ea quaerat enim modi.\r\n\r\nQuia quidem itaque iusto qui itaque odio velit incidunt. Ducimus eveniet voluptatum et eaque illum. Ipsam natus ut et excepturi non.\r\n\r\nEt quia quam laudantium repellat incidunt vitae quos. Porro hic perspiciatis nam dolorem sequi repellendus.\r\n\r\nEt eos nostrum laudantium et voluptatem ducimus natus. Voluptas nihil similique expedita facilis. Et commodi eos possimus. Ut corrupti aut quibusdam inventore.\r\n\r\nNulla quia molestias quia iste et. Libero a consectetur quidem eos quia magni qui non. Voluptatibus tenetur velit exercitationem officia aspernatur.\r\n\r\nEos quam necessitatibus tenetur magni sed iure. Quae perspiciatis qui totam enim asperiores nihil ut. Quasi ut quia sint non. Eaque nihil placeat ut atque voluptatum non impedit qui.\r\n\r\nOdit blanditiis id aliquid qui sit adipisci placeat est. Quia quibusdam quaerat cumque et amet reiciendis quis consectetur. Ea rerum repellendus repellat dolores optio.\r\n\r\nEst sit officia omnis eos. Ab molestiae minima quaerat cumque et voluptate quidem. Asperiores tempore ut est beatae provident voluptatibus. Quos sed cum porro illum et reprehenderit.\r\n\r\nAssumenda incidunt voluptatem in. Aut vel debitis perferendis dignissimos incidunt porro. Dolore ullam minima quisquam eius id. Dolor rerum adipisci autem earum tenetur repellat.\r\n\r\nNon expedita quibusdam sed. Voluptatem sapiente velit quos consequuntur veritatis harum. Molestiae commodi fugiat quidem ea dolorem sapiente ipsa. Laudantium qui vel maxime.\r\n\r\nImpedit aut architecto consequatur saepe libero. Veniam nisi ex dolor. Aperiam consectetur maiores nemo dolores voluptas autem. Qui necessitatibus ut blanditiis culpa et.\r\n\r\nDolores molestiae id unde cumque laborum. Eos sint minus aliquam. Non provident vel ullam animi aliquam magnam.', 'tempora-tenetur-quia-perferendis-impedit', '2022-05-08 11:18:35', '2022-05-08 11:27:03'),
(5, 2, 4, 22, 'Enim explicabo qui cum.', 'Odit minus aut alias quia. Unde sit dignissimos consequatur itaque totam velit. Est aut autem et alias. Quis veritatis veniam alias dolor eos qui.\r\n\r\nSoluta officia blanditiis odio dolores. Qui ratione hic enim blanditiis.\r\n\r\nEum est quia numquam hic quibusdam veritatis est. Reprehenderit expedita eveniet in occaecati tempore. Eos sed impedit sit excepturi molestiae accusantium. Unde saepe veritatis autem omnis possimus quis nostrum perspiciatis.\r\n\r\nEnim dolores odit in laboriosam provident voluptas. Necessitatibus quia beatae magnam modi. Est ut est voluptatem autem vero voluptas necessitatibus.\r\n\r\nVelit distinctio adipisci voluptates quidem distinctio quasi. Ut ut consequuntur mollitia distinctio molestiae nihil voluptatem.\r\n\r\nIste unde id tempora. Soluta modi voluptatem sed necessitatibus aliquid molestias neque.\r\n\r\nNon maiores sit omnis nihil voluptatibus ut. Temporibus et eveniet aperiam dolorum. Excepturi est incidunt ut omnis.\r\n\r\nTotam perferendis ea quod eaque ex. Aut consequatur nemo expedita corrupti molestias quam ratione. Perferendis aut similique nam in. Ullam voluptatum qui sapiente fugit libero ipsam.\r\n\r\nConsectetur ab vel sunt modi est consequuntur aut. Officiis qui quo hic non odio omnis nihil. Qui consequatur officiis rerum. Totam provident consequuntur recusandae et sit dolore.\r\n\r\nVeniam facilis beatae ipsa veritatis culpa consectetur aut. Amet consequatur consequatur voluptas ut quasi aspernatur. Molestias sed necessitatibus dolores voluptatem sed vero qui. Nisi quas amet tempore nisi nobis excepturi odio nulla.\r\n\r\nEst eligendi quo dolor. Fuga aut odio a itaque. Vero accusamus modi et deleniti quas. Laboriosam rerum voluptas delectus totam.\r\n\r\nArchitecto harum vel sed odit. Repellat autem quam quidem est sunt iusto. Nemo expedita maxime accusamus fuga. Maxime necessitatibus id consequatur iste praesentium voluptatum.', 'enim-explicabo-qui-cum', '2022-05-08 11:18:35', '2022-05-08 11:26:49'),
(6, 5, 4, 21, 'Inventore voluptatem nam culpa nemo necessitatibus occaecati.', 'Quaerat id ipsa ad eligendi. Nesciunt consequatur qui ab laborum et accusamus. Iure optio non repellendus quam et. Iusto porro quisquam itaque debitis tempora.\r\n\r\nRatione minus reprehenderit odio et asperiores. Esse repudiandae dolorum voluptatem enim eum impedit. Vitae illo esse ut voluptatum maiores quaerat ut.\r\n\r\nTotam eligendi adipisci animi illo omnis animi illo. Facilis assumenda vel eveniet labore qui ab deleniti. Reiciendis corrupti incidunt sit suscipit deserunt est. In maiores veniam adipisci sit.\r\n\r\nDignissimos quae tenetur aut inventore nam maxime. Quae natus commodi voluptatem ipsum iure. Et doloribus sit earum est quod voluptatibus in quia.\r\n\r\nSapiente iste ex dignissimos ut libero. Sed in reiciendis fugiat quisquam rerum sequi sed similique. Corporis qui porro eaque nesciunt laboriosam. Eveniet dolores et qui at aut.\r\n\r\nEst velit velit voluptatem harum saepe voluptatibus molestiae harum. Sapiente modi molestiae eos minima quos et praesentium. Eius quo rem perspiciatis.\r\n\r\nQuibusdam consequatur et earum beatae numquam voluptatibus laboriosam in. Nam inventore enim delectus consequatur nobis quibusdam expedita. Accusamus qui consequatur fuga.\r\n\r\nVelit temporibus quia maiores quia est iusto. Dolorem voluptate aperiam pariatur voluptatum odit doloremque. Consequatur ut et id doloribus repellat ipsum mollitia.\r\n\r\nPlaceat et aut suscipit quia qui. Et est atque ipsam. Ex qui consectetur eligendi ducimus. Blanditiis tempora labore sed soluta molestiae.\r\n\r\nAlias et accusantium deleniti corrupti voluptate voluptatem itaque. Repudiandae architecto aliquam quas velit dolorem enim nisi. Magnam corrupti atque sit atque atque suscipit. Placeat minus qui ipsam voluptatem quia aliquam.\r\n\r\nNulla excepturi quidem rerum ipsa commodi et. Harum velit aut ipsa sunt. Omnis hic eum saepe beatae.\r\n\r\nAtque in cupiditate molestias officia eius rem consequatur. Rerum velit doloremque sint atque et dolore. Accusantium sunt amet et rerum aut.', 'inventore-voluptatem-nam-culpa-nemo-necessitatibus-occaecati', '2022-05-08 11:18:35', '2022-05-08 11:26:34'),
(7, 1, 3, 20, 'Aut et delectus voluptas.', 'Labore aliquid deserunt vitae deleniti doloremque atque alias aliquam. Fugiat ab qui enim laudantium aut qui est aut. Vel magnam magnam adipisci autem.\r\n\r\nVero ipsa et consequatur recusandae porro ea velit. Dignissimos inventore distinctio consectetur aut est. Consectetur rem in aut dolorem est.\r\n\r\nEnim quasi quidem tenetur ab suscipit necessitatibus. Vel ab molestiae sequi vitae. Nihil qui rem veritatis iusto saepe dignissimos velit. Eum consequatur consequatur repellat veritatis ipsam facilis. Impedit ex itaque consequatur.\r\n\r\nNon similique ut odio qui ut adipisci sint. Rerum expedita culpa accusamus nihil voluptatem est labore officiis. Molestiae aut vero omnis aut possimus vitae. In porro et totam id veritatis consequatur omnis.\r\n\r\nCum nemo asperiores laborum rerum qui. Rerum praesentium perspiciatis ducimus voluptate. Ipsam magni nemo sint numquam quia veniam.\r\n\r\nEum saepe deleniti tenetur odio dolores ut sint. Iure nisi repellendus non vitae. Voluptatem amet ut rerum et doloremque laborum. Minus hic ullam fugiat tenetur labore ut ea. Reprehenderit sit ratione fugiat nulla.\r\n\r\nIpsam debitis repellendus rem cupiditate sequi. Ut nobis mollitia doloribus esse et blanditiis facere. Aut sint quia ullam dolores.\r\n\r\nRatione porro officiis ut quo dolorem ut laudantium. Vero dolorum assumenda minima dolor tempore. Aliquid velit tempore est illum eum atque. Dolor distinctio corrupti earum sit consectetur corrupti.\r\n\r\nEst facilis facilis neque enim alias. Autem pariatur sed aut rem.\r\n\r\nLaudantium quae animi hic velit quidem non. Fugit eveniet eos atque quasi consequuntur in quibusdam aut. Distinctio dolorem ut consectetur sapiente placeat voluptatum.\r\n\r\nMolestiae sapiente harum dolores doloremque dicta vel. Dolor sapiente cupiditate qui non. Odio unde accusamus voluptas consequatur.\r\n\r\nMollitia numquam mollitia fugiat qui et. Enim atque eveniet error atque nam ipsa. Temporibus dolorum eius reiciendis voluptatem nihil tempora voluptatum.\r\n\r\nHic velit inventore est dolores qui. Voluptatem animi et eum commodi modi voluptatem odio. Minima illum est ut nulla iure.', 'aut-et-delectus-voluptas', '2022-05-08 11:18:36', '2022-05-08 11:26:22'),
(8, 5, 4, 19, 'Rem non culpa quia provident consequatur.', 'Consequatur consequatur eum voluptatem dolorem eos. Possimus maiores consequatur a aut excepturi rerum. Possimus rem ipsa totam enim.\r\n\r\nEa in dolore temporibus facere. Voluptas ut velit eos delectus. A repudiandae amet placeat sit qui omnis. Repellendus cumque reiciendis praesentium accusantium voluptas.\r\n\r\nRem eum repudiandae et temporibus molestiae dolore et ut. Odio omnis in et veritatis nostrum. Omnis minus magnam voluptatum voluptas quia sit.\r\n\r\nRepudiandae eum sunt et soluta consequatur quas. Aliquid consequuntur est eum minus cum provident quasi ut. Quia ut occaecati molestias.\r\n\r\nEum non tempore enim eos expedita. Dolores aliquam voluptates non totam. Magnam debitis sint optio minima voluptas.\r\n\r\nAliquam aliquid rerum ex. Eligendi dolores distinctio quis soluta quis quis. Optio est modi velit ut ipsum voluptas voluptas minus. Non id dolorem incidunt dolor voluptas quia. Impedit corporis illo iste non vel ab provident.\r\n\r\nEos quia incidunt vel rem nihil. Excepturi inventore voluptas pariatur molestiae quaerat porro. Et animi tenetur suscipit ad non ea dolor odio.\r\n\r\nNihil voluptas recusandae sint corrupti optio. Ea aut optio repellendus sit deleniti et et. Et totam laboriosam officia. Tempora repudiandae eius autem eos. Commodi rerum neque placeat recusandae rem.\r\n\r\nVelit rerum sapiente provident quaerat. Dignissimos dolor consequatur sint id vel sint. In deleniti harum ea neque non sequi error.\r\n\r\nItaque error voluptatem optio veniam. Eius qui dolor eum.\r\n\r\nQuo quia facilis enim unde totam aut eos expedita. Impedit sunt ut labore autem est. Odio non nulla molestiae eos et. Doloribus et voluptas est.', 'rem-non-culpa-quia-provident-consequatur', '2022-05-08 11:18:36', '2022-05-08 11:26:10'),
(9, 2, 3, 18, 'Nemo magni ab eaque placeat enim soluta.', 'Nihil quos rerum in commodi tempora ut occaecati asperiores. Neque cupiditate vel et omnis atque praesentium et. Odit repellat corrupti beatae est aperiam eveniet.\r\n\r\nEt nobis alias quasi iure. Quia optio odio expedita iure. Placeat illo aut deserunt eaque. Temporibus esse totam laborum praesentium ipsam molestiae asperiores.\r\n\r\nDoloribus qui occaecati at ab commodi et. Vel aspernatur et cumque mollitia voluptas eius tempora in. Consequatur doloribus molestiae quibusdam accusantium. Labore ea et ut totam aut.\r\n\r\nDucimus laboriosam sint non molestiae laudantium sint. Rerum expedita dolorum et aspernatur sunt. Sed quis illum est ut sit.\r\n\r\nNon incidunt nostrum aliquid repudiandae. Voluptatum provident aperiam ullam aliquam ipsum ad sint beatae. Ut quos recusandae nemo consequatur ipsum qui. Fugiat maxime adipisci iste ab minima est nam aliquam. Est qui optio voluptatum vero saepe sit.\r\n\r\nAsperiores a sunt ut sit laborum quam animi. Unde consequatur et nobis excepturi. Quo facere minus et ea.\r\n\r\nNumquam autem aperiam quidem labore non illo. Suscipit atque ex optio asperiores adipisci consequuntur quisquam. Sed autem et et suscipit nostrum. Natus excepturi dolore et accusamus et nesciunt repellat.\r\n\r\nEa aut dolor blanditiis labore quae. Et illum beatae aut quia fugit. Perspiciatis corrupti autem ducimus quaerat soluta.\r\n\r\nVoluptatum repudiandae deserunt quasi possimus nesciunt accusamus. Voluptatum sequi repudiandae quos odit impedit.\r\n\r\nNeque dignissimos libero commodi non omnis et. Voluptatem ut mollitia dolorum quis voluptatem. Nam porro ad voluptatem et sunt aut.\r\n\r\nDeserunt laboriosam est atque libero. Exercitationem provident similique et deserunt et. Quam et laboriosam enim quisquam.\r\n\r\nIpsam nulla qui molestiae commodi. Repellat quis consequuntur numquam eum ex ducimus. Non reiciendis similique id. Omnis esse iure et esse sunt nulla dolorem.', 'nemo-magni-ab-eaque-placeat-enim-soluta', '2022-05-08 11:18:36', '2022-05-08 11:25:56'),
(10, 3, 4, 17, 'Reprehenderit exercitationem ducimus voluptatem mollitia.', 'Quis expedita ducimus voluptatibus at. Quibusdam hic quia recusandae. Tempora nemo cumque nostrum odit ullam eos. Sed qui molestiae iusto quibusdam iusto.\r\n\r\nEst consectetur fuga magni molestiae. Veritatis ducimus et distinctio aperiam illo ratione. Voluptatem eius aperiam et repudiandae. Unde laboriosam fuga optio.\r\n\r\nReprehenderit possimus odio illum repellendus aut. Ipsum ex recusandae dignissimos voluptatem nobis incidunt voluptatum. Vero voluptatibus enim alias delectus laudantium. Officia quod nobis consequatur voluptatem. Eos dolores voluptas magnam est nihil rerum.\r\n\r\nAut accusantium facere nesciunt ut omnis. Odit nulla laudantium unde dicta beatae esse praesentium.\r\n\r\nVoluptatem nesciunt sed perspiciatis. Provident voluptatem repellendus velit perferendis sint fugiat. Non aspernatur praesentium sit quas sed blanditiis error incidunt.\r\n\r\nConsequuntur sint at nam harum odio. Distinctio tempora aut ab quibusdam quis placeat accusantium tempora.\r\n\r\nNostrum voluptatibus incidunt temporibus sit officiis. Sed rerum sit aliquid ipsam sint impedit rem. Ipsa sapiente labore et sed illo impedit quia.\r\n\r\nPorro accusantium voluptatem iure. Quis qui dolorem mollitia atque qui velit et fugiat. Quidem voluptas quo dicta hic sint eum explicabo. Possimus aut a sit impedit voluptatibus delectus.\r\n\r\nAspernatur nostrum ullam a aspernatur laborum ut et ut. Hic et dignissimos recusandae at animi quibusdam molestiae. Voluptate dolor ut qui et animi. Consequuntur totam itaque assumenda labore.\r\n\r\nEx quia id voluptas beatae. Accusantium quod doloribus aperiam recusandae eaque. Et ea optio sapiente dignissimos est earum eligendi. Tenetur fugit porro rerum adipisci distinctio incidunt aut.\r\n\r\nAut eos culpa provident autem. Rerum id quia harum provident vitae ipsum libero. Assumenda porro explicabo placeat magni molestias et laborum. Porro sunt vitae minima est consectetur.\r\n\r\nOmnis eaque id commodi aut sunt odio. Velit quia quam iste eum dignissimos ipsa. Maiores nulla voluptatem placeat repellendus quidem. Velit praesentium porro necessitatibus dolores necessitatibus.\r\n\r\nEaque deleniti quaerat veritatis est error ducimus nulla. Vel doloribus et voluptatem aut temporibus veritatis. Consectetur aut quaerat odit totam asperiores. Voluptatibus sed deleniti ut consequuntur ex voluptatem ad dicta.\r\n\r\nRerum voluptas quasi architecto dicta. Voluptates alias pariatur impedit. Voluptas quo sint id dicta delectus sit.\r\n\r\nOmnis illo voluptate harum iste dolorem. Ut laboriosam quo dolorum consequatur. Quia quis rerum quia odio aut nihil provident.', 'reprehenderit-exercitationem-ducimus-voluptatem-mollitia', '2022-05-08 11:18:36', '2022-05-08 11:25:46'),
(11, 5, 3, 16, 'Cupiditate doloribus consectetur sint accusamus et soluta.', 'In consectetur eum molestiae magni enim eos. Quidem similique porro similique facilis voluptatem rerum est. Nulla nihil vel aliquam cum.\r\n\r\nVelit eaque et mollitia tempora nesciunt molestias fugit architecto. Voluptas adipisci quo eos magnam laboriosam libero. Aut ex labore laudantium laboriosam velit nemo. Iste repellendus eius nam alias.\r\n\r\nVoluptatibus ab eum distinctio fugiat eos voluptatem. Fuga quibusdam nulla ut ducimus vel quas itaque. Minima vero fuga vel. Occaecati ipsam possimus quos consequatur cumque ullam vel. Consequatur nihil non iure velit sit esse.\r\n\r\nEt praesentium tenetur repellendus tempore. Rerum iste ut cum sit accusamus. Nihil perspiciatis est quia iste. Aliquid suscipit magni et odit.\r\n\r\nRepellat quo officia at deleniti consequatur. Doloremque sit impedit qui sequi. Praesentium incidunt facilis consequuntur rerum eum itaque. Dolorem magni vel aut.\r\n\r\nEum quod omnis ad asperiores aliquam aut maiores aspernatur. Et labore adipisci ducimus eligendi. Et et et fugiat adipisci occaecati cupiditate illum. Quia similique ut est magni doloribus exercitationem laudantium molestias.\r\n\r\nMolestiae esse numquam quo veritatis veritatis. Veritatis ut odio provident in ut. Eius voluptatem qui quo qui vel minima corporis.\r\n\r\nHic in animi amet tempore sed repellat molestiae laudantium. Expedita dolores saepe cumque est repellendus molestiae aliquid id. Et officiis odio non.\r\n\r\nId alias eaque aperiam consequuntur pariatur facilis. Rerum molestias tempora vel ipsum aut veritatis asperiores dolorem. Nesciunt dolore nostrum officiis quasi minima officia.\r\n\r\nQuidem est corrupti eveniet illo velit magnam temporibus et. Magni eius reiciendis consequatur cupiditate quia. Sed deleniti odio et omnis vero doloribus neque soluta. Sunt ea voluptatem neque sit. Qui sit quia tempora ullam optio aut et.', 'cupiditate-doloribus-consectetur-sint-accusamus-et-soluta', '2022-05-08 11:18:36', '2022-05-08 11:25:36'),
(12, 4, 5, 15, 'Ipsum assumenda adipisci voluptas.', 'Id aut voluptatem autem et vitae qui veniam rerum. Illum velit porro dicta consequatur quidem. Reiciendis sed deleniti temporibus qui quisquam omnis incidunt et. Qui quia excepturi similique ad ut suscipit et. Inventore sequi rerum aspernatur neque.\r\n\r\nAssumenda est sequi est molestiae. Cupiditate omnis consectetur quia commodi. Non exercitationem magnam eligendi molestias tempore ut. Numquam nisi dolorem adipisci quos blanditiis voluptatem quis.\r\n\r\nMagni dolore commodi dolor est. Voluptate voluptas voluptatem ipsa. Voluptas ut incidunt facere. Suscipit et repellat eveniet qui fuga debitis.\r\n\r\nA quod quis accusamus qui. Sapiente ab corrupti ab impedit occaecati quo voluptate. Explicabo tempora qui qui quis. Amet accusamus at occaecati minus ullam dolorem autem. Qui amet quis laborum atque.\r\n\r\nEt doloremque pariatur eaque magnam sunt quaerat. Eum vel sed et ipsam corporis consequatur. Voluptatum soluta quidem tenetur doloribus veritatis veritatis consequatur. Voluptatem hic expedita voluptas non sed vitae culpa. Enim non beatae iste harum.\r\n\r\nNulla aut molestiae expedita tenetur consequatur voluptatum et. Voluptates repudiandae atque ut consequatur. Laudantium praesentium mollitia id impedit voluptatem.\r\n\r\nOfficiis voluptas est dolor placeat at officiis perspiciatis rerum. Dolore omnis maxime magni mollitia pariatur. Nesciunt dolores maiores voluptas molestias corporis quis officia. Et praesentium esse alias officia.\r\n\r\nNulla dolores qui qui quaerat occaecati velit. Veniam consequatur pariatur facilis dolorem vel dicta. Odio iure quisquam nobis maiores.\r\n\r\nVoluptas consectetur voluptatem consequatur nihil natus maxime. In repellat molestiae vel voluptate esse eius omnis.\r\n\r\nNulla provident quod ullam. Rerum in voluptates deserunt reprehenderit est culpa atque. Reiciendis eum dolor dicta cumque soluta autem dolorem. Dolor eum repellat velit rerum beatae molestias.', 'ipsum-assumenda-adipisci-voluptas', '2022-05-08 11:18:36', '2022-05-08 11:25:23'),
(13, 1, 5, 14, 'Voluptate aspernatur incidunt qui error omnis.', 'Sint numquam nam et similique repellendus et quis. Est eaque fuga cum earum. Quasi enim repudiandae dolorem est ratione deserunt aut.\r\n\r\nDolorem et facere velit temporibus. Itaque explicabo aut autem consequatur in optio.\r\n\r\nQuisquam quia doloremque provident autem voluptas autem maiores neque. Recusandae eaque placeat temporibus labore quo. Repudiandae vitae sed illum atque ut harum. Velit officiis molestiae adipisci.\r\n\r\nEt dolorem est laudantium corrupti. Voluptate cum laudantium harum ducimus numquam itaque perspiciatis sapiente. Voluptatem vel eum eius dolorem ea est. Dolore voluptas eveniet consequatur delectus rerum illo. Placeat provident eligendi molestiae et libero asperiores et.\r\n\r\nNon consequuntur et omnis vitae ducimus voluptatem qui. Soluta nam recusandae at nemo. Quod est ipsa ab quo id.\r\n\r\nAliquid debitis quia enim qui vel optio libero cupiditate. At mollitia accusantium iusto rerum quo atque ipsum. Sequi iusto nisi quo. Temporibus corporis facilis eligendi qui impedit quis totam. Est nam corporis similique porro sed iure.\r\n\r\nUt aperiam unde earum reiciendis ratione. Tenetur sapiente ipsa odit dolores iste.\r\n\r\nExplicabo aliquid deleniti expedita voluptatum. Qui error est natus ab cum sit. Omnis voluptas ipsa laborum veniam at esse.\r\n\r\nNatus dicta omnis non id cumque. Quam qui quas provident ipsa et dolorem. Exercitationem error ut ut consectetur quia quisquam explicabo. Modi repellendus dolor labore totam harum voluptate.\r\n\r\nPariatur deserunt illum commodi est eaque. Consequatur est qui aperiam. Suscipit aut aperiam voluptatum a quod maxime sunt. Voluptates nam cumque error et sequi.', 'voluptate-aspernatur-incidunt-qui-error-omnis', '2022-05-08 11:18:36', '2022-05-08 11:25:10'),
(14, 4, 1, 13, 'Aut qui voluptatem sequi qui.', 'Enim eos commodi exercitationem hic eveniet repellendus sunt. Velit est vel necessitatibus sit dolorem accusantium. Voluptas exercitationem in distinctio nulla.\r\n\r\nCulpa labore velit qui molestiae quia impedit sequi. Minima illum cumque dolore rerum atque aut amet incidunt. Et distinctio esse ut non.\r\n\r\nVoluptates quo cum eius voluptas. Ut fugiat a soluta. Nesciunt est necessitatibus corporis eos qui debitis deserunt ipsum. Aut et nesciunt saepe sapiente aliquid laborum fugiat. Non alias quidem dolore in veritatis aperiam et.\r\n\r\nVoluptatem tenetur quia debitis est aliquam et. Id qui iure est asperiores facilis in. Laborum doloribus illo incidunt tenetur minus voluptate vero. Placeat labore itaque iure non quia et.\r\n\r\nOptio nulla et labore alias molestias voluptatum molestiae. Sunt veritatis magnam ut quasi voluptatem aut. Dignissimos qui magni tempore consectetur ut.\r\n\r\nIste deserunt a quis placeat ab. Dolorem debitis maiores tempora eius corporis numquam laboriosam. Repellendus pariatur error nemo molestiae voluptates asperiores praesentium.\r\n\r\nAutem nemo recusandae harum aut omnis dolorem. Fugiat et quasi rerum et saepe. Ipsum quam explicabo magnam. Iste libero vel tenetur reprehenderit est.\r\n\r\nEt illum mollitia voluptas ad porro eveniet minus illum. Et id non consequatur quidem. Et qui ab molestias perspiciatis quibusdam rem.\r\n\r\nQuia non ea impedit ut sed quas. Molestiae expedita asperiores recusandae ut animi. Cupiditate aut deleniti non et.\r\n\r\nIllum minima et et quo suscipit ut. Nihil et et nostrum harum enim. Qui eum nihil possimus ea voluptas voluptates.\r\n\r\nVoluptas repudiandae voluptas totam sequi. Sit dolorum error non. Dolor ut aut id. Quo fugiat tenetur quibusdam nam maxime et.\r\n\r\nDicta expedita aperiam laudantium non facere consequatur. Ullam ea tenetur corporis deleniti tempora doloribus magni. Qui soluta incidunt architecto non consectetur. Optio et esse amet consequatur accusantium ipsum id.\r\n\r\nAnimi deserunt natus nihil quasi harum ab voluptas. Architecto sint vel reiciendis nesciunt totam veritatis dicta. Nam voluptas qui rerum doloribus aliquid. Nam nostrum exercitationem quia esse.\r\n\r\nNisi commodi odit laudantium rerum autem quia. Quia assumenda excepturi rerum et sunt praesentium quo. Voluptates error consequatur eos qui repellendus. Rerum quisquam dignissimos iure.\r\n\r\nExercitationem et facilis provident pariatur unde temporibus omnis. Est at deleniti nobis aut cumque quia necessitatibus. Laboriosam nihil dolorem impedit saepe ut dolores fuga.', 'aut-qui-voluptatem-sequi-qui', '2022-05-08 11:18:36', '2022-05-08 11:24:56'),
(15, 5, 3, 12, 'Minus nesciunt voluptatum similique harum nihil dolores.', 'Maiores dolores explicabo fugit nostrum explicabo id. Repellat harum quia dignissimos eos. Ut illum dolorum aliquid rerum vitae commodi nihil.\r\n\r\nMinus occaecati odit laudantium vel blanditiis enim natus. Esse dolores nihil maxime et sunt eaque. Aut dolor quasi est odio dignissimos. Et quis tempore et sit consequatur. Quia vel sit aperiam quidem quia ducimus.\r\n\r\nEa consectetur qui ad eius et voluptates ipsum modi. Aut ad quod assumenda est hic mollitia laborum. Consequatur voluptatibus et tempore. Ut repudiandae sint aut et.\r\n\r\nLaudantium eos nam molestias voluptatem recusandae sint et. Sed eos est sunt repudiandae esse delectus. Enim assumenda consectetur quasi voluptatem nulla architecto inventore. Repudiandae et modi qui consequatur tenetur omnis.\r\n\r\nRem nam tenetur aliquam expedita dolorem rerum vel. Vel deserunt alias unde mollitia occaecati qui quia sunt. Officia est aut voluptates sit maiores.\r\n\r\nAut possimus quos vel nobis odit possimus molestiae. Ut est culpa maxime facilis ipsam et. Rerum exercitationem sed ipsum ea impedit laborum velit. Est iste quisquam ducimus odio non consequatur.\r\n\r\nPariatur dolores molestiae est corrupti quis sunt. Quidem in fuga nemo tenetur vitae. Ipsa voluptatem voluptatem vel aut consectetur corporis facilis. Corrupti quia perspiciatis natus et aperiam inventore vero.\r\n\r\nConsequatur omnis qui dolores iste dolorem dolore ut. Deserunt quam debitis ut ab optio officia. Sequi optio in similique est culpa harum quo fugit. Voluptatibus ut perferendis necessitatibus quidem sunt officia.\r\n\r\nVitae nisi minus sint aut quasi et. Numquam consequatur quia aspernatur porro. Vel beatae unde corrupti pariatur. Corporis reiciendis non cupiditate.\r\n\r\nSed asperiores tenetur quo unde qui et. Laudantium ducimus magnam et est. Corporis ut aut consequuntur accusantium omnis. Vel debitis quia est earum at et. Incidunt totam doloremque voluptas accusamus illum sint ipsam.\r\n\r\nAliquid beatae asperiores nam similique. Repellendus totam non fugiat libero ipsum alias labore aut. Rerum explicabo deserunt labore.\r\n\r\nVelit ad recusandae totam necessitatibus inventore deleniti aut. Omnis in commodi numquam aperiam.', 'minus-nesciunt-voluptatum-similique-harum-nihil-dolores', '2022-05-08 11:18:36', '2022-05-08 11:24:45'),
(16, 5, 1, 11, 'Dolor iusto quam perspiciatis.', 'Dolor ipsam tempore et rerum. Sint asperiores nihil quidem ipsam cupiditate. Porro at expedita dolore numquam totam unde itaque. Dolor soluta quisquam nam.\r\n\r\nNesciunt omnis et blanditiis iure. Ut praesentium voluptatibus ut dignissimos minus est tenetur est. Enim omnis sit doloribus. Error ut debitis doloremque voluptates provident sit et.\r\n\r\nArchitecto ut harum enim est. Delectus magnam aliquid illo facere molestias nisi. Impedit consequatur et aut suscipit beatae recusandae repellendus. Maiores ut et in explicabo est velit.\r\n\r\nEst aut dolorem voluptatum adipisci. Doloribus repellendus excepturi est quibusdam. Enim enim veritatis culpa aut beatae voluptatibus repellendus quas.\r\n\r\nMolestiae optio delectus dolor quia. Quia eos eos est eos odit.\r\n\r\nDolor molestiae quasi dolorem aspernatur. Voluptate esse perferendis vero commodi sint veritatis qui. Minus voluptatum architecto eos ipsum. Quae ad eveniet beatae qui quam accusamus sed. Culpa rerum quod nostrum magnam.\r\n\r\nNemo debitis minus natus minus impedit dolorem distinctio voluptas. Assumenda ut molestias quia quisquam quia dolorum magni. Ex aut voluptatem natus quisquam et.\r\n\r\nSit et voluptatem error. Veritatis quas quod quia voluptates laudantium dolorem est est. Quas ab modi natus est culpa id. Et debitis sunt rem sint quaerat inventore. Quo itaque quod et similique tempora aut.\r\n\r\nDoloremque et totam consequatur sit vel nihil. Ducimus in veritatis enim ducimus. Doloremque atque voluptate quibusdam iste ea unde doloribus. Praesentium eveniet voluptatibus quisquam molestiae pariatur a.\r\n\r\nDebitis quia ut qui hic asperiores architecto iste. Corrupti iste temporibus provident maxime laudantium cupiditate expedita. Maxime eos optio iste.\r\n\r\nAd porro qui quis. Fuga exercitationem autem dignissimos vel molestiae vel. Debitis earum non optio magni et neque sed. Vitae autem exercitationem similique eum nobis sit. Voluptas enim veritatis aperiam temporibus delectus rerum.\r\n\r\nAnimi non voluptatem vel voluptatem corporis. Omnis nesciunt sunt et. Vitae dolor pariatur hic laborum numquam ipsum rerum.', 'dolor-iusto-quam-perspiciatis', '2022-05-08 11:18:36', '2022-05-08 11:24:35'),
(17, 4, 5, 10, 'Omnis et quae culpa voluptatem libero recusandae.', 'Saepe omnis eos numquam quis. Voluptatum sunt odit aut repellat sit. Laboriosam cumque odit odit est magnam.\r\n\r\nQuo sed aut labore est. Quia nulla dolores in et quaerat. Reprehenderit recusandae expedita reiciendis delectus qui et laborum. Possimus ratione sint et distinctio facere.\r\n\r\nSint ab laborum ut accusantium adipisci nesciunt ea. Aperiam odit dolorem aliquam et excepturi est. Accusantium ipsum pariatur voluptas. Molestias sint ex architecto tempore rerum necessitatibus nesciunt.\r\n\r\nUt a aut ipsa. Porro assumenda quia optio reprehenderit ullam. At cum adipisci voluptatem accusantium. Quos occaecati consequatur rem dolorem et cumque. In ut maiores perferendis cupiditate ab esse molestiae.\r\n\r\nMagni esse alias fugit itaque aliquam. Debitis quia qui ipsam perferendis. Officia cupiditate dolore excepturi. Ut laudantium at fugit possimus atque.\r\n\r\nAut qui aperiam sit molestiae. Corrupti doloremque ducimus est eaque eveniet corporis sit. Et illum est qui quasi.\r\n\r\nUt sit iure iste quo. Labore enim maiores illo provident voluptatibus incidunt atque blanditiis. Sequi est illum dignissimos sunt non adipisci aut.\r\n\r\nModi dolore modi repellendus cumque at officia quibusdam. Eveniet aut quia ut autem occaecati voluptas. Ea voluptas ad soluta est.\r\n\r\nQuia rerum eius nam est. Odit et deleniti eum repellendus qui autem quo. Et illo ut et quae possimus aut ipsam. Et eius et corporis tempora quae sit atque.\r\n\r\nQuo illo id modi quia perspiciatis quasi et reiciendis. Esse unde iste rerum autem aut. Sint non recusandae molestiae ea blanditiis ullam. Quibusdam ut recusandae ad rerum tempora officia.\r\n\r\nSit laudantium necessitatibus quo molestiae aut. Hic magni inventore quidem ea.\r\n\r\nNulla dolor ipsum molestiae doloremque animi cupiditate. Quos ut et eligendi. Voluptatem ipsam accusantium consectetur odio similique quia cupiditate. Quibusdam illo enim sunt corporis cupiditate repellendus impedit.\r\n\r\nBeatae earum minima aut atque. Doloremque fuga id qui ut quis impedit. Exercitationem laudantium eveniet suscipit enim velit modi rerum soluta. Est voluptas et voluptas qui excepturi nesciunt.\r\n\r\nProvident autem voluptas excepturi quae fugiat. Aut et error natus. Commodi in ut eaque.', 'omnis-et-quae-culpa-voluptatem-libero-recusandae', '2022-05-08 11:18:36', '2022-05-08 11:24:25'),
(18, 4, 4, 9, 'Odit neque aspernatur molestias non sapiente est.', 'Necessitatibus quia reiciendis eius quis ipsum voluptates vitae. Iure atque dicta aut voluptatem ad magni.\r\n\r\nEum dolorum dolorem corrupti. Ut perspiciatis magni deleniti exercitationem fugiat cum qui. Voluptas quia et amet et. Fugit rerum quasi libero amet.\r\n\r\nMinima et voluptatem nihil vel. Culpa consequatur quae ipsum quis ea. Iusto harum necessitatibus ad autem nostrum. Magnam sunt perspiciatis sint et.\r\n\r\nEt et nam beatae magni dolores esse asperiores cum. Est et omnis consequatur. Nulla voluptatum in necessitatibus ut eius suscipit. Doloremque culpa dolores non dolorem deserunt.\r\n\r\nQui facere quia non architecto atque ab dolores et. Sapiente aut enim et rerum laudantium vitae iure.\r\n\r\nNam tenetur neque molestiae facere. Labore voluptatibus assumenda eius minima sit mollitia. Beatae corrupti sint nostrum aut esse molestiae dolorum incidunt.\r\n\r\nCorrupti deleniti in cum officia. Debitis est ducimus dolor. Cupiditate esse voluptatem quas et accusamus dolores dolorem. Ducimus ad facere blanditiis maiores quia.\r\n\r\nIure eum ea sed provident tempora. Magni est eos quos non vel qui ut. Est sunt enim doloremque perferendis est. Illum nostrum voluptatem dolor consectetur qui excepturi voluptatibus.\r\n\r\nQuaerat in voluptatem sit est non soluta. Maxime laudantium rerum quia et quia et rem. Ex sit iste ex cum reiciendis repellat.\r\n\r\nVoluptatem sed aliquam doloremque amet. Nostrum labore qui est nihil blanditiis suscipit.\r\n\r\nDoloribus aspernatur enim dolores cumque eum. Qui voluptates magnam facilis doloribus quo nulla iusto. Amet deleniti magnam voluptas et quia velit repellat. Nihil saepe aperiam sunt cum velit.\r\n\r\nVoluptatibus quasi deleniti vitae doloremque nisi asperiores. Id qui ea laborum facilis ex eum molestiae. Deleniti voluptatibus quibusdam ut consectetur deserunt. Natus laborum assumenda similique fuga error.\r\n\r\nRem qui rerum itaque repellendus temporibus accusantium. Veniam sit ratione vitae reiciendis doloribus eius debitis qui. Possimus consequatur ut ipsum dolor quos.\r\n\r\nNisi porro quasi mollitia qui. Aperiam expedita amet eius repellendus possimus. Numquam amet consequatur nostrum. Repudiandae distinctio sed quod minima temporibus autem qui.\r\n\r\nNumquam voluptatibus in omnis rerum quaerat voluptates necessitatibus. Deleniti aspernatur nobis quasi quae reprehenderit enim adipisci. Dolor ullam quos sunt hic vel.', 'odit-neque-aspernatur-molestias-non-sapiente-est', '2022-05-08 11:18:36', '2022-05-08 11:24:13'),
(19, 4, 1, 8, 'Ut et neque sit similique consequatur dolores.', 'Omnis voluptate ratione non repellat. Veniam commodi dolorem odio est qui. Velit eveniet vel ut ex sunt mollitia libero in.\r\n\r\nEt a nihil quia aut. Blanditiis qui qui atque ea. Aspernatur eum tempora sint molestiae mollitia.\r\n\r\nNemo animi quam et sequi et. Explicabo voluptas provident impedit eius. Et maiores et omnis ab nisi sunt consequuntur.\r\n\r\nSit ut et soluta mollitia corrupti quae. Perspiciatis cumque nostrum sed asperiores aut eius itaque officia. Numquam earum alias debitis voluptatum quod quod nihil. Nihil nulla rem dolorem debitis. Molestias voluptatem et magni aut in.\r\n\r\nDolor eveniet omnis sed magnam esse hic. Est saepe nobis possimus temporibus illum. Id a voluptas aliquam itaque sapiente quidem. Accusantium et unde voluptas.\r\n\r\nIn perferendis perferendis cumque sequi non et. Autem dolor voluptate ullam et recusandae qui quo. Necessitatibus eos eveniet sit est incidunt dolorem.\r\n\r\nQuos atque in quis hic aliquam maxime. Hic necessitatibus eum quas quod ut eligendi deserunt. Non vel et atque quia ad. Doloremque aut natus ut ab quo error tenetur.\r\n\r\nOdio aspernatur a consectetur et numquam. Aut quidem aut sapiente enim aut quas ad. Soluta et consectetur ea et qui necessitatibus iste omnis.\r\n\r\nIncidunt inventore inventore delectus. Sint totam maiores error. Molestias est odio sed qui in.\r\n\r\nConsequuntur molestiae qui amet quia sed molestias. Mollitia qui nostrum doloremque quibusdam velit maiores sit. Ut enim et ut voluptatem. Et sit sed fugit dignissimos vel.', 'ut-et-neque-sit-similique-consequatur-dolores', '2022-05-08 11:18:36', '2022-05-08 11:24:00'),
(20, 1, 5, 7, 'Iusto libero delectus voluptatem tempora vel.', 'Optio sapiente ab fugit voluptates aut nesciunt voluptatem. Aut consequatur omnis voluptatem quia est unde. Temporibus et qui sunt unde esse nam deserunt a. Voluptatem aut nam est.\r\n\r\nSimilique aspernatur sit est labore. Eius autem nostrum rerum velit tempore ut et. Tenetur est voluptas est maxime eveniet. Dolor quis qui culpa ut provident numquam qui.\r\n\r\nMolestiae tempora blanditiis mollitia molestias ut distinctio qui. Sapiente quia voluptatem eum doloribus maiores nihil labore. Quibusdam voluptates nihil occaecati neque.\r\n\r\nRerum dolor tempora quia quod. Ipsum reiciendis ut nam illo nostrum. Ea totam voluptatem omnis dolor deserunt sequi earum. Dolorem impedit cupiditate sint ipsa.\r\n\r\nDeserunt amet quod odit mollitia tempore sint doloribus. Qui sunt molestiae nobis voluptas. Laborum corrupti assumenda eos voluptatem voluptas. Beatae aut quam dolores magnam non.\r\n\r\nEst veniam ea porro eaque vero. Aspernatur temporibus dolores delectus quis aut rerum saepe. Totam architecto ullam dolores eos.\r\n\r\nUt delectus velit aut minus. Ut consectetur quis nostrum suscipit harum. Repellat deserunt et iusto voluptates.\r\n\r\nCommodi fugiat facilis enim doloremque vel modi soluta. Esse et magnam facilis debitis debitis quam. Accusantium itaque corporis sapiente velit quia tempora voluptatibus aut.\r\n\r\nDistinctio non quia magnam commodi voluptatem consequatur. Quo architecto numquam autem aperiam. Eveniet qui hic iusto aut voluptatem. Sed recusandae nam laudantium doloribus. Quasi dicta iusto facilis sit dolorum odio aut.\r\n\r\nCulpa et quam veritatis porro quae aut. Qui quis ut aperiam aliquid eius. Dolor consequatur enim laborum velit id rem. Porro mollitia laborum sapiente.\r\n\r\nConsequuntur non quos eos aut non perspiciatis voluptatem quae. Molestiae quo esse ipsum eius quis nam. Recusandae aut et aut ea ea reprehenderit.', 'iusto-libero-delectus-voluptatem-tempora-vel', '2022-05-08 11:18:37', '2022-05-08 11:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2022-05-08 11:18:37', '2022-05-08 11:18:37'),
(2, 'Author', '2022-05-08 11:20:37', '2022-05-08 11:20:37'),
(3, 'Subscriber', '2022-05-08 11:20:47', '2022-05-08 11:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `is_active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 1, 'Miss Roselyn Stamm I', 'quigley.adelia@example.org', 0, '2022-05-08 11:18:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MQEL2vrlqH', '2022-05-08 11:18:34', '2022-05-08 11:23:05', '6'),
(2, 1, 'Ms. Marguerite Bergstrom', 'germaine.bradtke@example.net', 0, '2022-05-08 11:18:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QoEx74Bqwg', '2022-05-08 11:18:35', '2022-05-08 11:22:53', '5'),
(3, 1, 'Madison Roberts III', 'wswift@example.net', 0, '2022-05-08 11:18:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ycHMuPPi9x', '2022-05-08 11:18:35', '2022-05-08 11:22:43', '4'),
(4, 1, 'Tad Schaefer', 'aratke@example.com', 0, '2022-05-08 11:18:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UkR19yD1DG', '2022-05-08 11:18:35', '2022-05-08 11:22:32', '3'),
(5, 1, 'Elvis Effertz', 'marge.emard@example.org', 0, '2022-05-08 11:18:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jwDSP5U5rv', '2022-05-08 11:18:35', '2022-05-08 11:22:22', '2'),
(6, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', 0, NULL, '$2y$10$2c.9M8sJaCtEHScIfclmReCx5TvsD6.0fX/C2RFzZ4vbNhIRLpBK6', NULL, '2022-05-08 11:21:08', '2022-05-08 11:22:07', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_comment_id_index` (`comment_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
