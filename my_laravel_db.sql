-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 11:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
(1, 'PHP', '2022-01-01 09:23:38', '2022-01-01 09:23:38'),
(2, 'Laravel', '2022-01-01 09:24:17', '2022-01-01 09:24:23'),
(3, 'JavaScript', '2022-01-01 09:24:36', '2022-01-01 09:24:36'),
(4, 'IOS', '2022-01-02 00:41:45', '2022-01-02 00:41:45'),
(5, 'Android', '2022-01-02 00:41:51', '2022-01-02 00:41:51'),
(6, '.NET', '2022-01-02 00:42:00', '2022-01-02 00:42:00');

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
(11, 2, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Third comment for laravel course.', '2022-01-06 04:22:08', '2022-01-06 04:22:54'),
(12, 2, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Fourth comment for laravel.', '2022-01-06 04:23:21', '2022-01-06 04:23:33'),
(15, 9, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'First comment for rest API.', '2022-01-07 02:33:19', '2022-01-07 02:34:13'),
(16, 9, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Second comment for Rest Api.', '2022-01-07 02:33:31', '2022-01-07 02:34:15'),
(17, 9, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Third comment for rest APi.', '2022-01-07 02:33:52', '2022-01-07 02:34:17'),
(18, 9, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Fourth comment for rest API.', '2022-01-07 02:34:04', '2022-01-07 02:34:20'),
(19, 11, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'First comment for vue.js', '2022-01-07 02:35:20', '2022-01-07 02:36:08'),
(20, 11, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Second comment for vue.js', '2022-01-07 02:35:40', '2022-01-07 02:36:09'),
(21, 11, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Third comment for vue.js', '2022-01-07 02:35:52', '2022-01-07 02:36:12'),
(22, 11, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '/images/1641462772Mridul.jpg', 'Fourth comment for vue.js', '2022-01-07 02:36:03', '2022-01-07 02:36:13');

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
(155, '2014_10_12_000000_create_users_table', 1),
(156, '2014_10_12_100000_create_password_resets_table', 1),
(157, '2019_08_19_000000_create_failed_jobs_table', 1),
(158, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(159, '2021_11_25_115818_create_roles_table', 1),
(160, '2021_12_06_130419_add_photo_id_to_users', 1),
(161, '2021_12_06_160145_create_photos_table', 1),
(162, '2021_12_13_090728_create_posts_table', 1),
(163, '2021_12_14_040747_create_categories_table', 1),
(164, '2021_12_19_165902_create_comments_table', 1),
(165, '2021_12_19_170255_create_comment_replies_table', 1);

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
(25, '1641275218blue audi.jpg', '2022-01-03 23:46:58', '2022-01-03 23:46:58'),
(27, '1641275513laravel.png', '2022-01-03 23:51:53', '2022-01-03 23:51:53'),
(28, '1641462703IMG_1828.JPG', '2022-01-06 03:51:43', '2022-01-06 03:51:43'),
(29, '1641462772Mridul.jpg', '2022-01-06 03:52:52', '2022-01-06 03:52:52'),
(30, '1641462875blue rolls-royce.webp', '2022-01-06 03:54:35', '2022-01-06 03:54:35'),
(34, '1641463665Laravel Api.jpg', '2022-01-06 04:07:45', '2022-01-06 04:07:45'),
(36, '1641463987vue.js-logo.png', '2022-01-06 04:13:07', '2022-01-06 04:13:07'),
(41, '1641491082black rolls-royce.jpg', '2022-01-06 11:44:42', '2022-01-06 11:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
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
(2, 1, 2, 27, 'Laravel Development', 'Laravel is a PHP framework and it is very popular..', 'laravel-development', '2022-01-01 09:26:29', '2022-01-03 23:51:53'),
(9, 1, 2, 34, 'Rest Api with Laravel', 'This is another awesome course by Edwin Diaz. This is very helpful about Laravel Api.', 'rest-api-with-laravel', '2022-01-06 04:07:45', '2022-01-06 04:58:29'),
(11, 1, 3, 36, 'Vue.js course', 'I am new at this vue.js course.', 'vue-js-course', '2022-01-06 04:13:08', '2022-01-06 04:13:08');

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
(1, 'Administrator', '2022-01-01 09:21:33', '2022-01-01 09:21:33'),
(2, 'Author', '2022-01-01 09:21:40', '2022-01-01 09:21:40'),
(3, 'Subscriber', '2022-01-01 09:21:49', '2022-01-01 09:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
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
(1, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', 1, NULL, '$2y$10$fzNV/ty/QlbLNvFz1mKc2uLN0C3GO9q01ROw1lxemyskpX/UkwOF2', NULL, '2022-01-01 09:20:22', '2022-01-06 03:52:52', '29'),
(6, 2, 'Shad', 'shad@gmail.com', 1, NULL, '$2y$10$KTC6ptHFRykpoxGL7oTGHOW8QprSHZFLrJLuny//KzGu.FOXlchS6', NULL, '2022-01-06 03:51:43', '2022-01-06 03:51:43', '28'),
(7, 3, 'Shamim Hossain', 'shamimMridha@gmail.com', 1, NULL, '$2y$10$2HgDRWnuqahAhPkND7.3/.Ff3vD6CFZUm4FSg/4IjHq03rz5wz8uC', NULL, '2022-01-06 03:54:36', '2022-01-06 03:54:36', '30'),
(8, 2, 'Shakil Ahmed', 'Shakil@gmail.com', 1, NULL, '$2y$10$ggcWT8hG2xRF1X4bu1JMTu2s7PapIYajuzCTQwOTP4fh4Y9q4SD6i', NULL, '2022-01-06 03:55:11', '2022-01-06 11:44:42', '41'),
(9, NULL, 'Shakil Ahmed', 'ShakilAhmed@gmail.com', 0, NULL, '$2y$10$oZDo/tF1rptGeKNQYEL79.kbK7.YN9/1yjHSAihGO0bmAD.3tUq.W', NULL, '2022-01-12 04:06:41', '2022-01-12 04:06:41', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
