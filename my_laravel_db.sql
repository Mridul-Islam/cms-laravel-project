-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 04:13 PM
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
(1, 'dolores', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(2, 'ut', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(3, 'delectus', '2022-04-22 03:55:59', '2022-04-22 03:55:59'),
(4, 'sit', '2022-04-22 03:55:59', '2022-04-22 03:55:59'),
(5, 'aliquid', '2022-04-22 03:55:59', '2022-04-22 03:55:59'),
(6, 'PHP', '2022-04-22 04:07:39', '2022-04-22 04:07:39'),
(7, 'Laravel', '2022-04-22 04:07:44', '2022-04-22 04:07:44'),
(8, 'Vue.js', '2022-04-22 04:11:22', '2022-04-22 04:11:22'),
(9, 'React', '2022-04-22 04:11:31', '2022-04-22 04:11:31'),
(10, 'Nature', '2022-04-22 04:11:39', '2022-04-22 04:11:39'),
(11, 'JavaScript', '2022-04-22 04:11:53', '2022-04-22 04:11:53');

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
(1, 22, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', '1650621446mridul.jpg', 'This is a great post.', '2022-04-22 04:14:02', '2022-04-22 04:14:10');

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
(210, '2014_10_12_000000_create_users_table', 1),
(211, '2014_10_12_100000_create_password_resets_table', 1),
(212, '2019_08_19_000000_create_failed_jobs_table', 1),
(213, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(214, '2021_11_25_115818_create_roles_table', 1),
(215, '2021_12_06_130419_add_photo_id_to_users', 1),
(216, '2021_12_06_160145_create_photos_table', 1),
(217, '2021_12_13_090728_create_posts_table', 1),
(218, '2021_12_14_040747_create_categories_table', 1),
(219, '2021_12_19_165902_create_comments_table', 1),
(220, '2021_12_19_170255_create_comment_replies_table', 1);

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
(1, '1650621446mridul.jpg', '2022-04-22 03:57:26', '2022-04-22 03:57:26'),
(2, '1650621594people1.jpg', '2022-04-22 03:59:54', '2022-04-22 03:59:54'),
(3, '1650621603people2.jpg', '2022-04-22 04:00:03', '2022-04-22 04:00:03'),
(4, '1650621612people3.jpg', '2022-04-22 04:00:12', '2022-04-22 04:00:12'),
(5, '1650621621people4.jpg', '2022-04-22 04:00:21', '2022-04-22 04:00:21'),
(6, '1650621630people5.jpg', '2022-04-22 04:00:30', '2022-04-22 04:00:30'),
(7, '1650621757showrab.jpg', '2022-04-22 04:02:37', '2022-04-22 04:02:37'),
(8, '1650621802mountain1.jpg', '2022-04-22 04:03:22', '2022-04-22 04:03:22'),
(9, '1650621809mountain2.jpg', '2022-04-22 04:03:29', '2022-04-22 04:03:29'),
(10, '1650621818mountain3.jpg', '2022-04-22 04:03:38', '2022-04-22 04:03:38'),
(11, '1650621827nature1.jpg', '2022-04-22 04:03:47', '2022-04-22 04:03:47'),
(12, '1650621835nature2.jpg', '2022-04-22 04:03:55', '2022-04-22 04:03:55'),
(13, '1650621844nature3.jpg', '2022-04-22 04:04:04', '2022-04-22 04:04:04'),
(14, '1650621855nature4.jpg', '2022-04-22 04:04:15', '2022-04-22 04:04:15'),
(15, '1650621867occean1.jpg', '2022-04-22 04:04:27', '2022-04-22 04:04:27'),
(16, '1650621882occean2.jpg', '2022-04-22 04:04:42', '2022-04-22 04:04:42'),
(17, '1650621896occean3.jpg', '2022-04-22 04:04:56', '2022-04-22 04:04:56'),
(18, '1650621948bird1.jpg', '2022-04-22 04:05:48', '2022-04-22 04:05:48'),
(19, '1650621991bird2.jpg', '2022-04-22 04:06:31', '2022-04-22 04:06:31'),
(20, '1650622000bird3.jpg', '2022-04-22 04:06:40', '2022-04-22 04:06:40'),
(21, '1650622360php-logo.jpg', '2022-04-22 04:12:40', '2022-04-22 04:12:40'),
(22, '1650622391laravel-logo.jpg', '2022-04-22 04:13:11', '2022-04-22 04:13:11');

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
(1, 5, 3, 18, 'Quaerat aut et quidem optio quia.', 'Id suscipit expedita quo nisi qui nihil deserunt voluptates. Aliquam omnis ducimus sequi nobis. Voluptatem reprehenderit rem voluptas.\r\n\r\nTempora possimus est aut incidunt. Nemo nihil odit assumenda qui quis vero maiores. Repellendus optio quo rem itaque accusamus tenetur. Velit dolorum repellendus debitis delectus esse.\r\n\r\nDolore veniam est rem corrupti qui quasi aperiam. Nesciunt et minima incidunt quos eaque adipisci. Ratione sapiente omnis molestiae saepe et.\r\n\r\nTotam eos et nam alias animi. Quidem asperiores amet atque similique. Nemo qui sit facere eos deleniti vitae. Aut possimus recusandae sit optio qui alias dolor.\r\n\r\nCommodi molestias minus aut numquam aut omnis est velit. Commodi eaque excepturi labore ducimus. Neque in odit dolorem alias voluptate quia.\r\n\r\nAliquam id reiciendis nostrum molestiae et in necessitatibus odit. Optio eius quia omnis rem sed perferendis magni hic. Commodi magni tenetur qui cum. Iusto quo amet assumenda labore.\r\n\r\nDoloremque at dolor eaque qui molestiae tenetur. Exercitationem velit numquam ea aut quo ea. Nisi recusandae architecto vitae repellendus ipsum consequatur necessitatibus. Tempora voluptatem et voluptatibus. Sint deserunt et perspiciatis nemo aliquam dignissimos sed eum.\r\n\r\nAperiam provident est ipsam animi excepturi est autem. Ut ipsa explicabo sapiente non sed.\r\n\r\nLibero maxime delectus consectetur consectetur. Quam accusamus consequatur voluptas itaque. Recusandae voluptatem rerum distinctio pariatur quod. Ea perferendis molestiae doloremque alias perspiciatis debitis qui.\r\n\r\nVeniam ipsum ipsum qui quis qui cum quam. Ex laboriosam nemo magnam assumenda. Illum cupiditate eligendi ad magni repudiandae nihil.\r\n\r\nUt quo harum voluptatem illum iure. Pariatur qui nulla voluptate officiis rerum vitae labore repudiandae. Impedit itaque eaque ut voluptatem voluptate ratione. Dolorem qui dolores voluptas cum in est odio unde.\r\n\r\nOdio beatae voluptate est aspernatur consequuntur. Minima voluptas distinctio iste ratione voluptatem qui. Exercitationem ut est assumenda a voluptas. Nemo perferendis omnis eos quibusdam sapiente quaerat. Consequatur et vitae quas asperiores dignissimos sunt quasi.\r\n\r\nDebitis rerum et alias alias atque rerum dolores quam. Enim labore tempora perspiciatis et quia qui. At quisquam eum et accusantium et. Aut itaque cum vel pariatur facere similique.\r\n\r\nDolorem accusamus et cumque iste ducimus. Repellendus ex deleniti in dignissimos quo excepturi commodi. Non quia accusantium facere voluptatum est. Sequi commodi voluptatum exercitationem corrupti sit alias illo.\r\n\r\nEa sapiente nihil non ipsum quia. Natus non non inventore distinctio accusamus sed. Vitae qui necessitatibus et nihil placeat.', 'quaerat-aut-et-quidem-optio-quia', '2022-04-22 03:55:57', '2022-04-22 04:05:48'),
(2, 3, 5, NULL, 'Minima sequi ducimus ipsum est rerum eius.', 'Est sapiente aut at officiis aut modi. Quos voluptate autem necessitatibus. Qui accusamus et consequatur totam voluptatem reprehenderit quia.\n\nAt quibusdam id ipsum dolor iure et alias. Sit qui ut tempora consectetur esse nulla porro. Et rerum rerum illo deserunt.\n\nPerferendis labore et consequuntur. Incidunt totam corporis tenetur quo voluptatibus eligendi nobis. Ea consequuntur quia tempore est.\n\nNumquam dolor reprehenderit possimus. At quas iusto non nihil voluptates earum nulla. Impedit minus est quidem. Eos sunt earum nostrum velit.\n\nAccusamus officia quae beatae tenetur. Velit pariatur quo quis ex aut libero sunt.\n\nEaque voluptas ut harum eum. Est dolorem dolorum minus aut animi optio. Distinctio repellat tempora enim. Et sit deleniti omnis temporibus corporis sit est est.\n\nOfficia expedita natus sed non. Et ut sit ea ut id fuga. Quae alias excepturi magni reprehenderit aliquid. Amet animi vero doloremque provident corrupti aut.\n\nSunt rerum recusandae nisi molestiae. Et nobis facere ut tenetur dolores corporis. Accusantium cumque iure neque odio. Nobis corrupti totam adipisci temporibus suscipit.\n\nRerum est dolor voluptatem fugiat dignissimos ullam provident. Consectetur dolorum qui assumenda aperiam accusamus. Quis eos aut dicta nesciunt voluptatem enim ducimus. Debitis consequatur doloribus labore ut.\n\nRepudiandae tenetur voluptates est id. Dolore accusamus error ut laborum aut reiciendis. Error omnis maxime non est deserunt esse.', 'minima-sequi-ducimus-ipsum-est-rerum-eius', '2022-04-22 03:55:57', '2022-04-22 03:55:57'),
(3, 1, 5, 17, 'Porro in sequi voluptate mollitia quia nemo.', 'Non recusandae ipsam labore nemo magnam recusandae veritatis. Non sunt tempora illo aut. Reiciendis eius tenetur aliquid magni facilis voluptatem aut.\r\n\r\nAut repudiandae itaque odio deserunt odio. Temporibus porro aut cupiditate est. In doloribus magnam cumque quidem occaecati. Officiis praesentium quia deleniti est minima aut totam.\r\n\r\nQui magnam consequuntur voluptates rerum esse tempore. Nobis qui facere rerum quaerat est non aspernatur. Similique sint non laudantium consequatur aut at dignissimos. Ad tenetur eos aut. Soluta debitis iste sit qui molestiae laudantium ab.\r\n\r\nCum mollitia omnis cum sint adipisci ad. Ducimus necessitatibus nostrum fugit adipisci dignissimos ut et. In ut id ad eos amet non facilis. Corporis accusamus hic rerum.\r\n\r\nEt maxime repellendus suscipit dolorem. Natus recusandae aliquid earum. Nulla ipsum ut non beatae dolores veniam non.\r\n\r\nQuibusdam officiis placeat ea est et veniam. Exercitationem accusamus aut voluptates ipsum sit animi. Rerum repudiandae modi ratione.\r\n\r\nPerspiciatis quidem enim nisi dolor quidem eos sequi. Exercitationem ipsa reiciendis necessitatibus consequatur nihil voluptas dicta. Pariatur tenetur nesciunt occaecati nesciunt natus ducimus. Ea nesciunt ut reiciendis.\r\n\r\nEt eum qui quas magnam nisi reiciendis aut. Quo dolore deserunt et ipsum similique nihil. Ab voluptas iusto dolorem eos fugit aut atque saepe.\r\n\r\nAsperiores nemo et tempora. Quae excepturi fuga temporibus. Iste perspiciatis laboriosam deserunt dolore qui. In occaecati voluptatibus sint nam cupiditate enim. Voluptatem tenetur error cumque quia repellendus ex.\r\n\r\nConsequatur et delectus et laudantium temporibus odit. Quo id quis dolores tempora cupiditate dolorem id. Laboriosam quibusdam quas magnam.\r\n\r\nReprehenderit sapiente eum sed harum et maxime id ut. Cumque consequatur vel eius non. Quidem et ipsam qui ut fugit sed.\r\n\r\nExplicabo temporibus dolore est eos amet veritatis amet expedita. Asperiores unde qui nobis sunt tenetur iste error. Voluptatem laudantium et voluptas et omnis. Tenetur est aut dolor occaecati.\r\n\r\nCupiditate voluptatem voluptatibus accusamus delectus. Mollitia alias autem voluptatem nostrum dolorem ad aliquam. Ea possimus praesentium facere temporibus et facilis. Quos iusto qui debitis vitae doloribus culpa.\r\n\r\nImpedit itaque aspernatur iste nihil molestiae. Est consequatur vitae error quasi distinctio reprehenderit et. Optio debitis nihil ipsam non praesentium sit est. Velit officia est totam expedita et.', 'porro-in-sequi-voluptate-mollitia-quia-nemo', '2022-04-22 03:55:58', '2022-04-22 04:04:56'),
(4, 2, 3, NULL, 'Non minus ullam voluptatum at magni similique.', 'Pariatur earum alias aut. Provident voluptatem fuga pariatur. Labore voluptatum aut id veniam. Vel aspernatur rerum autem sed commodi.\n\nAut omnis cupiditate dicta recusandae. Quam qui in magni omnis molestiae corporis voluptatem. Vitae repellendus quo recusandae odio nemo dolores dicta.\n\nEnim veritatis inventore ut. Ea odio nesciunt mollitia porro quaerat qui cumque quia. Modi minus quis alias maxime eligendi aut. Qui neque dolores veniam earum.\n\nA voluptatem ducimus dolores est. Cumque dolorem voluptatem harum minus fugiat tempore deserunt. Voluptatem deserunt et dolores corrupti.\n\nLaboriosam nobis in consectetur. Dolor omnis molestiae aut autem accusantium provident doloribus. Et omnis libero minima officia. Magni eaque velit enim sit et occaecati rem aliquam.\n\nQuaerat voluptas totam cum. Optio temporibus minima ex ea vitae cupiditate non. Dolorum voluptatem et ullam nisi. Laborum officia sit porro quia.\n\nEt modi deleniti esse sed. Magni assumenda ut velit.\n\nVeritatis aut voluptas expedita reprehenderit mollitia voluptas illo. Omnis aut et ullam non distinctio rerum. Corporis sit possimus consectetur voluptate eum. Quidem facilis distinctio laborum et dignissimos. Voluptas aliquid quidem sed non quis nisi et.\n\nQuisquam qui repellendus in ut enim qui. Quidem nobis autem officia cumque vitae aperiam fugit. Aut quasi sit et ad quae. Sed accusamus aspernatur dolore sit atque. Aperiam quos fugit voluptas omnis eveniet.\n\nOfficiis consequatur repellat laborum doloremque incidunt commodi id. Nam hic aspernatur eaque incidunt nobis. Voluptatibus quibusdam ratione dolore placeat explicabo ipsum ad. Debitis nisi fuga dolorem praesentium quasi sint quis.\n\nEveniet quo provident illo non ab asperiores omnis. Necessitatibus et dolorem nulla voluptatum voluptatem error eum quaerat. Nobis qui sed vel enim maxime ut eius odio.\n\nIusto dolor dolorem aut quasi totam. Officiis eum sunt quod doloribus dolorum praesentium ut inventore. Quis ullam non nobis rerum quam voluptates. Accusamus esse distinctio eos qui maxime excepturi sunt. Maxime sed quis est earum.\n\nFacere fugit cum tenetur voluptates et. Saepe fugit quia iure. Ut voluptatem amet mollitia sit maxime quis ducimus. Sunt non sed enim quisquam.', 'non-minus-ullam-voluptatum-at-magni-similique', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(5, 3, 1, 16, 'Consequatur libero iste et iure incidunt.', 'Nam qui sapiente dicta consequatur doloribus sunt illum rem. Voluptatem aspernatur maiores aspernatur ea dolore ab quia. Repellat quod quo quasi minima et.\r\n\r\nDicta voluptatem et repellat omnis deserunt veniam quo accusamus. Nostrum odio sint molestiae est. In officiis perferendis aut laboriosam assumenda et voluptas.\r\n\r\nAnimi dolorem quae eaque autem modi nesciunt. Eaque id nihil rerum et et.\r\n\r\nBlanditiis assumenda repellendus delectus cumque non animi vel voluptatum. Aliquid amet eaque numquam. Impedit et eum reiciendis qui ab eum repudiandae.\r\n\r\nAt quia error vel. Nemo sequi vitae id est vero debitis. Deleniti dicta ipsam excepturi iure consequatur tempore cumque.\r\n\r\nEos quod voluptate quisquam ex pariatur tempora quod. Pariatur libero inventore vel sint inventore debitis laborum.\r\n\r\nAliquam et exercitationem in. Alias et qui aperiam aspernatur rerum quam blanditiis. Enim deserunt ipsum repellat aliquid in aliquam dolores. In pariatur quia placeat harum nam officia totam perspiciatis.\r\n\r\nNemo est similique reiciendis facilis eligendi qui. Voluptas itaque qui illo nulla numquam inventore. Dolores necessitatibus tempore sunt animi quia. Illo rem explicabo aut sit libero assumenda.\r\n\r\nAtque sed dolores voluptas nihil labore. Officia odio error accusantium voluptatem perspiciatis. Ut soluta perspiciatis maxime in iste et blanditiis. Eius facere blanditiis id amet.\r\n\r\nQui placeat et saepe a commodi sed. Assumenda provident sint voluptatibus illo. Corporis fugit ut velit suscipit facere est ut. Consequatur repellendus in facilis iste consequatur.\r\n\r\nEa aut quas velit quaerat explicabo dolorum aspernatur velit. Cupiditate et fuga quos suscipit quasi recusandae. Atque neque ut ut. Aut et et corporis et hic.\r\n\r\nAperiam corporis ut ducimus quae. Tempore aut voluptatum mollitia. Maxime qui laudantium hic.\r\n\r\nAssumenda ullam asperiores voluptas tempore. Sint ut magni debitis aperiam sit quod. In omnis doloremque omnis eos. Placeat in aut saepe laborum.\r\n\r\nBlanditiis nihil eum sequi placeat enim vel et. Sed autem vitae est nostrum eum. In harum quas quam qui recusandae optio molestiae. Sunt est doloribus mollitia suscipit voluptates laudantium.\r\n\r\nMaxime deleniti minus laborum quis est. Maiores impedit saepe facere aliquam quis. Molestias est rem quibusdam assumenda. Illum iste repudiandae ut ea.', 'consequatur-libero-iste-et-iure-incidunt', '2022-04-22 03:55:58', '2022-04-22 04:04:42'),
(6, 5, 4, 15, 'Porro qui et magni dolorem nam itaque.', 'Architecto et nostrum omnis ut minima. Consectetur ut eius non recusandae. Odit deserunt vitae voluptates aut.\r\n\r\nQuia molestias sint at itaque. Reiciendis libero dicta reprehenderit natus odio tempora et. Animi tempora quia vitae.\r\n\r\nVoluptatem nesciunt consequatur facere dicta. Sapiente et voluptatem vel ullam. Eos labore voluptas voluptas corporis quia. Optio repellat et quis provident optio dolor.\r\n\r\nNemo assumenda sint omnis consequatur dicta. Incidunt deleniti qui est qui nulla rerum eaque culpa. Sunt officiis consectetur fugit sapiente expedita aliquam. Omnis quisquam at molestiae in earum quo aut.\r\n\r\nEt ea minus dolorem reprehenderit. Quia quis laudantium consequuntur. Perspiciatis consequatur debitis dolorem deserunt omnis suscipit. Sapiente accusamus fuga facilis earum rem quidem. In aut tempora a.\r\n\r\nDelectus libero amet perferendis rerum quibusdam qui atque. Illo libero voluptates minus nihil facilis est earum. Voluptatem in distinctio reiciendis vel. Distinctio voluptatem consequuntur eum beatae assumenda. Reprehenderit ut omnis voluptatem quis amet enim repellat.\r\n\r\nRem quis quibusdam natus sunt adipisci ullam et. Nobis magnam consequatur rem quia quibusdam corporis esse. Doloribus illum necessitatibus et nihil. Architecto delectus nobis molestiae aut tempora dolores dolor.\r\n\r\nNesciunt sunt et et. Eveniet cum qui ipsum quo nostrum quia. Deserunt et harum non ipsum amet architecto.\r\n\r\nModi porro nemo dolore quis facere. Suscipit sint eos hic cumque est.\r\n\r\nNostrum numquam deleniti rerum nostrum consectetur. Occaecati est aut distinctio consectetur officia explicabo. Sapiente ut deserunt ut nobis.\r\n\r\nUllam aut voluptatem consequatur in consequatur dolore minima. Quia provident voluptas omnis sapiente. Quo est accusamus vel iste voluptas sunt omnis.\r\n\r\nIncidunt voluptas sed velit eius saepe id. Veniam eius perspiciatis aut ut deleniti fugit soluta. Velit sed non et at quasi sit est et.', 'porro-qui-et-magni-dolorem-nam-itaque', '2022-04-22 03:55:58', '2022-04-22 04:04:28'),
(7, 3, 2, NULL, 'Nam nihil odit consequuntur.', 'Pariatur iusto qui quasi consequatur repellendus non. Veritatis necessitatibus officia voluptatum velit omnis velit voluptatibus nesciunt. Ex eveniet sunt dolorem ut quae repellat. Eveniet velit accusamus odio magni.\n\nQuisquam enim dolorem aut vel unde quia repudiandae dolores. Autem ipsa provident voluptas quos. Voluptatem ea beatae inventore voluptatem. Ut mollitia voluptates sed optio repellat ipsa consequuntur ex.\n\nConsectetur officia ex minima non praesentium quaerat. Unde labore natus quia enim dolor doloremque. Asperiores sunt sint culpa quia eius quis qui architecto. Maiores quibusdam voluptatum quo earum placeat.\n\nSit aperiam sapiente quo natus ut similique quia. Dolorum doloremque qui sint est ut praesentium animi accusamus. Qui eum aspernatur inventore quos omnis cupiditate praesentium minus. Ut ut possimus magni.\n\nDeserunt similique ratione iusto. Possimus facilis ut magni aut ipsa et. Qui dolorem sit consequatur expedita provident labore aliquid.\n\nNatus repellat placeat expedita ut dolore sed. Libero architecto culpa rerum eius voluptatem. Dignissimos eos quia sed et. Sed exercitationem explicabo ratione aspernatur.\n\nDolores officiis expedita aliquam praesentium enim inventore necessitatibus. Voluptates quod ut qui id. Omnis adipisci voluptas mollitia quia quo.\n\nPossimus aut ipsa porro dicta. Officiis minus consequatur vel corporis. Aut libero deleniti repudiandae libero ex. Asperiores quidem omnis id ea dicta enim. Velit iste voluptatem vitae neque ipsum cumque.\n\nUllam et et et ut sunt. Possimus cumque facilis reprehenderit ullam quos temporibus nihil. Ut dolores enim et odio eaque laboriosam. Dolor commodi rerum quis fugiat ipsa assumenda.\n\nOccaecati nisi sunt dolores nam vel quam sit. Et et ea quo nostrum delectus provident voluptas. Nihil tenetur et cumque et molestiae quae. Asperiores iusto aut qui voluptas hic magni tempora quia. Fuga consequatur consequatur veritatis ullam.\n\nAdipisci magnam enim qui aut excepturi nostrum. Quia quis aut asperiores autem sint odio. Sit quaerat laboriosam hic architecto incidunt. Debitis eos aut eum ullam qui.\n\nVoluptatibus nihil distinctio mollitia. Aspernatur harum est officia vero vel voluptas. Dolorem eius quia sunt nostrum nostrum quidem doloribus. Consequatur nemo dolorem reiciendis debitis sapiente animi.\n\nSit animi atque eum in non quidem. Tenetur voluptatibus optio ullam fugiat numquam ea. Odit facilis sint quod quod. Eos dicta voluptatum qui. Aut fuga porro quam corrupti itaque nostrum.\n\nEum dolores culpa et dolorum velit. Iusto fugiat corrupti quia enim facere quasi voluptatem. Magnam quasi sit quibusdam. Occaecati quo voluptatem sequi fugit aliquid sint. Aliquid libero nesciunt a eveniet.\n\nPerferendis aut nemo fuga labore sapiente in autem. Est quas fugiat repellat ullam voluptas eum sequi. Commodi et sapiente accusantium quia explicabo.', 'nam-nihil-odit-consequuntur', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(8, 3, 2, 14, 'Et facere quasi saepe.', 'Tempora voluptatem deserunt praesentium magnam. Enim natus et quaerat. Dicta aut totam labore quae. Laudantium unde enim ea laborum in.\r\n\r\nOmnis modi ipsam modi fugit et nobis. Quidem fugiat quisquam quisquam nulla reiciendis eaque eos rem. Fugiat voluptas nemo et quidem qui eum voluptatibus.\r\n\r\nAut dolorem veniam magnam voluptas tempora reprehenderit quisquam. Earum rem sit veritatis dignissimos. Amet quis et a officiis qui est laudantium assumenda.\r\n\r\nId quos hic in nihil et reprehenderit nemo. Voluptate qui dolores est possimus. Quasi aspernatur nobis voluptas voluptatem blanditiis ut sit.\r\n\r\nCupiditate est sit et rerum et debitis non. Rem vel id nam quis at voluptas. In nulla voluptates aliquam minus corrupti vitae.\r\n\r\nSit consequatur rerum aliquam et sunt. Rem repellat in quasi numquam et quas. Ut sunt officiis qui sed nihil similique. Quidem nesciunt quam molestias non pariatur eos.\r\n\r\nAut sit quas quidem in. Quisquam eos numquam laboriosam vel maxime autem voluptas. Recusandae molestiae est est alias et. In omnis maxime debitis enim ducimus sed odio.\r\n\r\nIure ea consequatur ut cumque dolores. Maiores sint qui dolores eos dolor. Eaque labore eos molestiae. Quia cum laudantium omnis veniam. Sunt est perferendis autem ipsam et.\r\n\r\nDignissimos tenetur iusto qui nisi et. Impedit consequatur hic odit qui quod maxime nam. Repellat eligendi dolorem sed eum illo consequuntur.\r\n\r\nOptio laboriosam ut fugit totam molestiae itaque similique. Rerum molestiae ea ut quaerat.\r\n\r\nFacilis accusamus aperiam velit a et rerum consequuntur. Velit et numquam optio placeat sunt. Facere qui eligendi minima vel beatae quo adipisci.\r\n\r\nEa nihil atque earum omnis. Repudiandae aliquid quo eius suscipit. Praesentium asperiores voluptates ratione quia doloremque est dolor. Sunt iure exercitationem dolore ab rem blanditiis minima.', 'et-facere-quasi-saepe', '2022-04-22 03:55:58', '2022-04-22 04:04:15'),
(9, 3, 4, NULL, 'Totam ut nihil a.', 'Distinctio architecto itaque ipsum. Reprehenderit corporis placeat hic deleniti praesentium laborum. Architecto rerum quis optio eaque culpa nemo. Ea eveniet consequuntur esse expedita recusandae non ut.\n\nOmnis ut soluta soluta debitis nostrum maiores sed id. Sed itaque voluptate earum omnis enim qui nulla quo. Temporibus vitae esse rerum.\n\nNulla quia molestias dicta fuga quia sint rerum. Quia qui suscipit repellendus a quidem eius. Quam qui voluptatum nobis repellat aut error. Numquam est quia blanditiis et nihil pariatur eum.\n\nNon quo voluptate nostrum. Ipsa qui autem veniam dolores. Consectetur sed modi dolor saepe ratione aut veritatis quisquam.\n\nAccusantium vel molestias maxime. Dolores recusandae qui eius aut est perspiciatis assumenda. Nihil quia et nulla architecto.\n\nEa aut quod eveniet tempora. Quam eum accusantium facilis facilis. Aut sed sunt velit qui.\n\nNemo dolores ut qui maiores fugit ipsam. Quas debitis temporibus repudiandae facilis laboriosam. Est praesentium aspernatur aut provident asperiores maxime rerum.\n\nEsse quam ut iure cumque repudiandae esse nam. Voluptatum esse voluptatibus assumenda harum. Perspiciatis facilis voluptates iusto et voluptatibus et. Nemo aut laborum praesentium dicta qui voluptatem. Aspernatur quisquam est eligendi expedita cum corporis.\n\nDicta error qui eos itaque ut. Dignissimos beatae unde omnis placeat consequatur. Nesciunt voluptatibus itaque voluptas ullam suscipit libero.\n\nVelit fugiat quibusdam ea dolor. Error rerum doloremque expedita iste sapiente non. Harum sint voluptas illum recusandae voluptatem odit quae.\n\nConsequatur fugiat dolorum voluptatem soluta laborum recusandae. Officia sint omnis vero non. Possimus ex repellat sunt deserunt. Excepturi pariatur accusamus neque est ex praesentium.\n\nPlaceat ut tenetur alias rem. Laborum voluptatem dolorem quibusdam aliquam cumque. Similique aut iure aut et. Neque omnis veritatis modi explicabo nemo sequi.\n\nEt voluptatem ea qui fuga quis. Voluptatem voluptas ut qui non ad. Sit quam eum sint ut omnis.\n\nInventore non voluptatum in id cumque aperiam ut. Ab aut sit minus tenetur at. Ut accusamus quos error dolores. Voluptatum alias labore blanditiis qui porro.\n\nId ullam harum quia at possimus sint quidem. Officiis enim rerum ducimus magni suscipit omnis tempore. Laudantium officiis delectus aspernatur similique inventore officia voluptatem. Sapiente qui qui saepe aspernatur quidem itaque.', 'totam-ut-nihil-a', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(10, 2, 2, 13, 'Error velit natus iste omnis.', 'Voluptas est beatae sed occaecati. Non dolores quo ratione laboriosam non nihil nulla. Quas rerum numquam unde id est consequatur mollitia.\r\n\r\nDignissimos voluptatem ab omnis laudantium non. Voluptatem sequi et quam. Qui dolor corporis corporis fugit non placeat aut. Similique exercitationem hic nobis est.\r\n\r\nDolorem a est reprehenderit voluptate. Aut quasi sapiente ad et nihil et exercitationem. Quam earum omnis voluptatem dolore omnis soluta aut. Excepturi delectus voluptatum omnis nesciunt.\r\n\r\nBlanditiis corrupti adipisci reiciendis est similique qui sunt. Corrupti impedit beatae iusto nobis vel atque quod et. Distinctio aliquam eligendi sit laudantium neque dignissimos. Placeat quidem illo ut ut est fuga aut.\r\n\r\nAut voluptatem vero facilis iure dolorum aut aut. Quo autem deserunt et autem sunt blanditiis eum. Excepturi veniam nesciunt sed aspernatur non voluptatem. Sapiente vitae minima sapiente nesciunt eveniet voluptates dignissimos.\r\n\r\nNumquam expedita quis provident architecto quam rerum quidem animi. Ab rerum aut deserunt ut ipsa facere. Velit voluptate iusto autem rerum maxime porro sed.\r\n\r\nLabore debitis veritatis beatae ipsa et. Magnam culpa ex qui sit.\r\n\r\nNemo sapiente consequatur cupiditate ut sint voluptas. Sed et reprehenderit nisi quasi amet expedita.\r\n\r\nQui modi quo optio voluptas tempore molestias magnam. Unde unde dolor facilis ad deserunt ipsam. Quo eaque tempora odit perferendis illo voluptatibus exercitationem. Praesentium voluptate alias quis excepturi sapiente.\r\n\r\nQuia dolores inventore qui rerum ullam. Amet non ipsam optio rem odio pariatur. Ducimus id laudantium et vel nostrum. Delectus corporis molestiae est culpa id exercitationem ratione.\r\n\r\nQuia quae rem odit quidem voluptas eum ut. Quis provident nesciunt blanditiis aut et explicabo. Asperiores non est laborum. Aut tempore aut maiores accusamus.\r\n\r\nQui reprehenderit fugiat unde. Qui quas est qui sed ex. Et aut autem cupiditate maiores maiores magnam.\r\n\r\nUt hic ea beatae officiis sint libero provident. Autem dolor et non. Aut et sit mollitia illo veritatis. Et earum facere molestiae harum qui. Vel veniam fuga in perspiciatis ducimus labore.\r\n\r\nNeque in et sint eum molestiae nihil modi. Dolore inventore in quia omnis est eos ullam. Similique et cumque quo ut. Corrupti cumque blanditiis autem maxime accusantium.', 'error-velit-natus-iste-omnis', '2022-04-22 03:55:58', '2022-04-22 04:04:04'),
(11, 1, 3, NULL, 'Eaque autem sit corporis aperiam.', 'Ea asperiores quos sit ut et hic odio ipsa. Rem suscipit autem accusantium animi vitae illum odit. Ab est natus et ut. Cupiditate alias culpa magni vel.\n\nVoluptas mollitia voluptas enim provident laudantium consequatur est. Sunt cum alias delectus recusandae. Quibusdam commodi unde nihil et et. Et repellendus porro quo quia.\n\nAccusantium ut dolores possimus sit explicabo vel. Nobis fugit non vero est rerum id. Magni in autem reprehenderit facere molestiae. Est quisquam aut eos. Aut id recusandae assumenda eum.\n\nAliquam unde a error officia et illo. Officia aliquam incidunt iure. Sed ratione eos impedit et.\n\nVitae iste explicabo quam itaque cum. Eum illo iure nulla asperiores veritatis praesentium quae perspiciatis. Quo ut sit non ipsum.\n\nEst quo adipisci enim sint tenetur illum ut. Quos culpa explicabo magni totam ipsum sint. Voluptatem molestias aperiam consectetur dolor tempore voluptatem ab. Qui ut et harum voluptatibus eaque.\n\nQuam consequatur magni et laboriosam. Dolor omnis nihil voluptatem officia deleniti et maiores rerum. Ratione a dolorem ipsam eveniet maxime dolore.\n\nSunt non assumenda doloremque debitis voluptatem. Minus corrupti itaque aut autem molestiae repudiandae. Consequatur porro eveniet dolores non in sequi dolor. Quaerat quis sunt asperiores aut suscipit.\n\nVeritatis maxime qui recusandae enim dolor architecto. Aut voluptas accusamus alias. Corporis reiciendis facere autem inventore molestiae qui sunt. Dignissimos assumenda et unde pariatur quidem debitis corporis.\n\nCumque cum provident ipsum inventore sit modi. Et voluptas velit totam et ratione sint. Ipsam praesentium delectus error.\n\nPerspiciatis et laborum porro est optio sit. Et ipsa veritatis dolor quod consequatur molestiae neque et. Perspiciatis temporibus enim et eaque. Unde adipisci qui ex.\n\nEt est repellendus et porro assumenda. Inventore quo omnis officiis eligendi est. In omnis fugit velit ipsum velit et. Id non magni impedit doloribus veniam.\n\nQui omnis nam perferendis et tempora optio. Qui aspernatur dolore ut qui qui tenetur quisquam. Aliquam eum numquam fugit velit rem. Ipsa quia officiis sunt nihil soluta iusto.\n\nEt perspiciatis odio incidunt enim quo voluptatem quas. Eveniet rerum dolorem ut incidunt cum. Voluptas sit et dolorum totam enim deleniti non ut. Ut possimus consequatur aliquam expedita. Voluptas sunt a nemo nisi nemo.', 'eaque-autem-sit-corporis-aperiam', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(12, 1, 3, 12, 'Quia sit ad libero.', 'In pariatur quia voluptas soluta. Et doloribus rerum harum aut. Possimus non debitis quo officia. Qui commodi exercitationem sed quis facere culpa sed.\r\n\r\nAtque aliquid eius perspiciatis tempore suscipit. Quis optio veritatis qui esse. Neque consequatur est velit magnam veritatis quia sint ducimus.\r\n\r\nFuga quibusdam facilis et reiciendis soluta saepe reprehenderit. Tenetur modi autem consequuntur earum sunt non. Ab blanditiis hic vero aut. Explicabo aut asperiores doloribus ipsam atque est.\r\n\r\nEos animi labore quasi corporis odit sit. Enim temporibus aut ut impedit quo nemo repellendus.\r\n\r\nUt tempora et aperiam. Culpa dolorem est velit tempora possimus. Repudiandae nisi quod iste. Placeat et quis eligendi sint laudantium voluptatem assumenda.\r\n\r\nSed voluptas nihil quam cumque. A quae est eaque et veniam magni odio. Porro ea voluptas porro velit ut. Animi enim aut laborum id.\r\n\r\nCorrupti nihil voluptas quia ullam temporibus itaque eaque. Ab ratione unde odio sunt placeat dolor. Non quae optio eum et et debitis amet. Alias eaque nihil aut saepe rerum alias officiis.\r\n\r\nOmnis ipsam provident perferendis aut consequatur exercitationem sequi. Sint aut quibusdam assumenda animi magnam. Accusamus est natus non corporis qui ratione sint.\r\n\r\nQuaerat dolores et sit laboriosam odit aperiam. Dignissimos modi expedita libero ut esse debitis. Et qui molestias qui. Sed sint laudantium velit facere.\r\n\r\nFugit quibusdam distinctio cupiditate dignissimos. Enim voluptatum iste expedita iusto quo omnis. Error rerum corrupti eum repudiandae. Culpa nihil sed laborum in dolorem ab sint.\r\n\r\nRem nulla nihil quidem ipsam facere dolore. Dicta voluptatum beatae maiores accusantium voluptates nostrum. Ea numquam ex iste molestiae id qui molestiae.\r\n\r\nOdio tempore maiores reprehenderit et harum eaque error eum. Quis optio eum alias incidunt consequatur. Reiciendis rem iusto ea quia dolorum non veritatis nemo.', 'quia-sit-ad-libero', '2022-04-22 03:55:58', '2022-04-22 04:03:55'),
(13, 5, 1, NULL, 'Distinctio officiis harum eius sint.', 'Aut molestiae mollitia rem et eius corporis. Aut dicta eaque ea nostrum perspiciatis incidunt voluptates.\n\nIn laudantium est nihil voluptatem ut ex. Veritatis repudiandae omnis occaecati eaque. Sint cum modi eos cupiditate voluptas amet vitae perferendis.\n\nEt dolorem eum perspiciatis adipisci voluptatem. Natus totam porro vitae reprehenderit pariatur.\n\nSunt vel consectetur reprehenderit. Omnis et qui eum eum rerum. Et quidem dolores ullam quia sapiente inventore quam.\n\nIpsa vel cum sequi omnis. Rerum est ipsa eligendi facere magnam autem. Ex quos necessitatibus quia cupiditate. Non aut impedit quia esse rerum suscipit consectetur cum.\n\nVoluptatem recusandae enim a fugit. Velit consequatur quo earum earum enim vel qui dolore. Beatae enim corporis eaque quidem ad laboriosam.\n\nIusto fuga enim aut minima provident. Et rerum accusamus aliquid nisi quia doloremque. Dolorem nulla sint aperiam.\n\nIpsum illo asperiores est assumenda. Eos magni aut impedit totam deleniti dolorem enim. Laborum voluptates repellat sint quam.\n\nDolore repellat possimus vitae quia laboriosam pariatur. Repudiandae hic sunt nostrum. Non cumque dolores eum aut labore quia autem aliquid. Nihil enim accusamus omnis eos voluptatum iusto qui.\n\nSoluta sunt libero unde laudantium cupiditate ad. Natus voluptatem aspernatur eveniet sit amet voluptas aut est. Et quibusdam laudantium est quo occaecati similique illo. Minus alias nulla esse ipsa.\n\nVoluptate architecto ipsam et ut. Natus placeat voluptatem eius aliquid aut ab. Esse consequatur vel molestias asperiores illo excepturi. Numquam odio illo odio ut fuga.\n\nQuis quo ab porro quis non. Beatae magni adipisci quod sed ut. Nesciunt assumenda veniam maiores quaerat rerum. Aut dolores quis eligendi.\n\nItaque autem pariatur quos molestias qui accusantium temporibus. Fugiat unde quis nisi distinctio. Voluptatum et ad et ipsam in totam possimus. Enim assumenda repellat et qui odit dolores.\n\nDistinctio dolorem laboriosam ipsum tenetur asperiores eveniet maiores. Sed illum occaecati voluptatibus repellat aut perspiciatis quibusdam. Ab debitis suscipit expedita impedit maxime recusandae. Libero sit quos maiores vel.\n\nDolores eligendi aut nulla velit et et veniam. Iusto eos officiis alias voluptatem veritatis sapiente molestiae. Consequatur ut occaecati possimus quasi vitae beatae doloremque et. Quibusdam sint iure perferendis mollitia officia est ex aut.', 'distinctio-officiis-harum-eius-sint', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(14, 1, 1, 11, 'Non voluptatum voluptates dolor autem.', 'In est facere nisi mollitia qui ipsa. Est cum ea et dolor animi modi. Officia quisquam ea et corrupti quibusdam sit.\r\n\r\nQuia quisquam aut consequatur eos est id ut. Vero sequi architecto placeat accusamus quia. Tempore ut aliquam et voluptatem quia vero enim qui. In aliquam aliquam dicta et voluptatem possimus eum.\r\n\r\nIllum sunt dignissimos enim earum. Labore quia saepe praesentium unde. Accusamus itaque reprehenderit et enim soluta nostrum id. Dolores dolores iusto asperiores mollitia. Natus quis eaque quis ipsa voluptas.\r\n\r\nUt quae ullam suscipit optio autem voluptas. Ut iure consequatur quo alias.\r\n\r\nQui dolor hic corrupti et unde fuga aspernatur. Impedit laudantium ullam vel et corporis ut. Aut necessitatibus est facilis et at eius. Provident incidunt sit pariatur ratione.\r\n\r\nQuia quam nemo debitis ab. Voluptatem dolor molestias ea. Ducimus nobis voluptate molestias maxime molestiae dolorum dignissimos.\r\n\r\nVelit veritatis voluptas quis aut. Ab minima commodi eligendi sit maiores. Ad id sed officia necessitatibus aut. Sunt ut molestiae non in.\r\n\r\nDolores nesciunt necessitatibus error atque ut. Qui asperiores nam recusandae voluptatibus occaecati. Eos sit laborum architecto voluptate nihil ab molestiae.\r\n\r\nQuo suscipit et quae ducimus. Assumenda enim omnis voluptatem provident possimus quis sapiente vel. Dolore sint ut autem modi. Dolorum molestias aut porro. Qui ipsa officia sunt provident est ex.\r\n\r\nEt unde dolor laborum esse in. Repellat dolores ad quam recusandae adipisci et. Neque dolor exercitationem voluptate natus ut ab. Dolore eligendi dolore consequatur quia aut voluptatem.\r\n\r\nQuas sint ex voluptatem sit voluptate quibusdam. Et aut iure in et sit veritatis doloribus vel. Aliquam quis sequi ratione autem explicabo. Consequuntur at eveniet porro quo inventore ut.', 'non-voluptatum-voluptates-dolor-autem', '2022-04-22 03:55:58', '2022-04-22 04:03:47'),
(15, 1, 4, 20, 'Qui aut aspernatur ex vitae.', 'Molestias et alias blanditiis quis. Vel molestias qui quaerat quia enim dolor molestiae. Provident minima nisi corrupti ducimus doloribus inventore. Alias sequi sunt vitae blanditiis id sapiente.\r\n\r\nDolor dolorum perspiciatis accusantium dolores. Iste minima aut perferendis in eveniet sit error. Blanditiis accusamus aspernatur amet exercitationem impedit qui.\r\n\r\nTemporibus illum omnis velit facilis dolorem. Non accusamus fugiat corrupti blanditiis voluptatem et. Voluptas deserunt incidunt sequi deleniti omnis. Excepturi tempore nobis cupiditate.\r\n\r\nEt labore aspernatur voluptatum. In illo fuga nobis omnis qui veritatis. Autem rerum fugiat iure deleniti tempore. Eveniet et rerum non consequatur.\r\n\r\nMolestiae alias magnam natus nostrum eum fugiat accusamus minus. Quo odio laboriosam fugiat et magnam cumque. Voluptatum quia asperiores et vitae. Voluptatem suscipit magnam similique sed accusantium consectetur. Nemo eius beatae ullam consectetur.\r\n\r\nEt ut et cumque error aspernatur exercitationem molestias. Sed quidem illo non sed expedita. Unde repellat tempora et consequuntur.\r\n\r\nAut molestiae qui fugiat est suscipit. Repellat ea voluptatem facilis officia consequatur fuga autem. Recusandae laudantium rerum illo impedit et earum. Quisquam cumque aut officiis.\r\n\r\nEaque officia eligendi inventore consequatur iure non exercitationem. Delectus excepturi ut consectetur fuga dolorum exercitationem aut et. Eveniet omnis tempore consequatur accusantium. Voluptatem deserunt asperiores esse culpa.\r\n\r\nTenetur sed nemo ducimus rerum amet. Et quia debitis perferendis eius rerum. Culpa dolorem ut voluptatibus id ipsam vel. Nulla iste dolore recusandae illum.\r\n\r\nEnim excepturi quas at similique consequatur eum aut. Enim quod enim ut eos odio. Id ut quia consectetur ut rem vero. Alias et et voluptatibus suscipit suscipit quis hic.\r\n\r\nA dolor consequuntur consequatur est explicabo. Enim ut voluptas eos voluptatem molestiae eligendi ut. Est cumque corrupti quibusdam sed placeat ullam tempore totam. Occaecati ut qui deleniti ut assumenda dolorem tenetur. Magnam est accusamus ipsa quam sit officia quo sunt.\r\n\r\nConsequuntur doloremque sit nisi nesciunt quas. Voluptas magnam molestiae praesentium praesentium esse aut. Sequi rerum hic quos voluptate voluptas aut modi.\r\n\r\nPariatur expedita quia quia quia et blanditiis et. Nam dolor tempora nesciunt similique culpa perspiciatis. Dignissimos id id non odio repudiandae dolorem harum qui. Consequatur asperiores qui est explicabo.\r\n\r\nUllam qui ut provident voluptatum. Quasi et quaerat placeat vero aut modi. Omnis neque soluta et architecto hic numquam.', 'qui-aut-aspernatur-ex-vitae', '2022-04-22 03:55:58', '2022-04-22 04:06:40'),
(16, 1, 3, 10, 'Deserunt est tenetur voluptatem commodi.', 'Animi qui quisquam tempore dolor et recusandae. Voluptatem est neque et itaque harum.\r\n\r\nSapiente rerum quam magni aperiam est quo quis. Ipsam optio laboriosam beatae nam dolor blanditiis. Libero ut quo qui nulla. Sapiente reiciendis ea natus mollitia itaque minus est. Delectus omnis est corporis.\r\n\r\nRepellendus exercitationem aut eos libero et est quis. Saepe laboriosam dolores aut enim voluptatem maxime. Amet cumque ut aut nostrum.\r\n\r\nSunt omnis vel perferendis eligendi. Sint accusantium ut assumenda ab reiciendis non saepe.\r\n\r\nIn quo sint repellat omnis. Ratione officiis tempore non est animi. Perferendis ipsam qui non non dicta maxime.\r\n\r\nAut eaque sit aut enim natus in. Est ut corporis et. Quo placeat nihil omnis pariatur. Quaerat nam et doloribus atque nulla. Inventore nemo quaerat voluptatem velit at quo cum.\r\n\r\nAut cupiditate id sequi sequi. Ab quo et ab autem. Impedit id et dicta illo sint ut error. Quis et est fuga nam quia nobis excepturi.\r\n\r\nQuidem praesentium ut eaque amet sunt ut. Molestiae iusto tenetur rerum natus itaque. Consequatur sequi ducimus quos repellendus. Mollitia sunt modi consequuntur consequatur esse provident.\r\n\r\nIncidunt impedit quia reprehenderit ut consectetur. Cupiditate doloremque nisi voluptate deleniti blanditiis ipsa quidem. Consequatur sapiente magni amet voluptas corporis voluptatibus.\r\n\r\nMollitia iure qui eos voluptatem optio qui. Iste unde cum iusto saepe. Consequuntur nesciunt ut consequatur quae dolores similique excepturi ducimus.\r\n\r\nUllam in nobis deserunt repudiandae libero esse minima. Esse deleniti enim nam nisi facere nostrum. Est ut minus et voluptatum voluptatibus optio. Aut dolor inventore et odio nisi.', 'deserunt-est-tenetur-voluptatem-commodi', '2022-04-22 03:55:58', '2022-04-22 04:03:38'),
(17, 2, 5, NULL, 'Labore iste quod tempore voluptatem.', 'Nostrum quibusdam id quis qui soluta accusantium asperiores culpa. Praesentium deleniti perferendis aspernatur quasi dolores. Qui perferendis itaque dignissimos perferendis. Similique rerum laudantium et corporis sint nam.\n\nQuia dolores quas laudantium adipisci voluptates placeat magnam. Et eligendi iste autem tenetur. Repudiandae dolores necessitatibus eos autem voluptatem occaecati neque et. Mollitia beatae occaecati cum est qui.\n\nAccusamus quibusdam aperiam iure ducimus quisquam et. Voluptatem est ea amet suscipit omnis ipsa. Omnis rerum hic consequatur in dolorem nobis blanditiis. Quia omnis quidem dignissimos qui quam. Consequatur perferendis incidunt officiis atque possimus.\n\nAperiam vero odio autem eligendi voluptatem qui. Delectus maxime voluptatibus laborum maxime. Voluptate debitis ea qui mollitia est.\n\nTenetur eos asperiores omnis et exercitationem et et consequatur. Rerum quia consequatur ea. Corporis sed quae aliquid cupiditate.\n\nQuis ipsam cupiditate quisquam et soluta. Aut blanditiis ut fuga neque reprehenderit. Non voluptatibus sunt facere accusantium est autem.\n\nNisi nulla rem error. Porro laborum ab distinctio omnis et voluptatem.\n\nVoluptatem eos dicta at animi. Sint et possimus magni voluptas. Quibusdam labore modi porro ut harum et.\n\nOmnis corrupti amet consequatur iusto expedita. Qui excepturi possimus eos quis veniam.\n\nLaboriosam maiores excepturi fugit illum consequatur. Tempora neque eveniet voluptatum dolorum sed dolorum natus. Ipsam odit aliquid eveniet rerum modi.', 'labore-iste-quod-tempore-voluptatem', '2022-04-22 03:55:58', '2022-04-22 03:55:58'),
(18, 1, 1, 9, 'Vitae et est occaecati aliquam quia.', 'Atque nesciunt aut similique velit id asperiores amet. Quis voluptas dolor voluptatem saepe.\r\n\r\nQui maiores aut ut itaque ullam necessitatibus. Vitae quia id doloremque vel vitae. Dolorem iusto dolore et.\r\n\r\nOptio et ducimus dolorem. Natus omnis optio nihil illum nihil quo. Magnam in perspiciatis cumque.\r\n\r\nSit impedit itaque sunt quisquam accusantium nemo iure. Animi in necessitatibus libero minus ut error. Optio voluptatem quia vel sed.\r\n\r\nExplicabo at sed nobis blanditiis quaerat. Ut maxime aspernatur dolores deserunt quas pariatur. Eos quibusdam magnam sit omnis omnis maiores quam. Expedita voluptatem enim et voluptate.\r\n\r\nVoluptate excepturi quisquam velit est eius molestiae minima. Non provident blanditiis aut laboriosam quo. Ipsum ut ea enim magni illo. Ut nesciunt non aut suscipit veniam est ipsam alias.\r\n\r\nMagni eaque sed tempora aspernatur perspiciatis ex. Fugit non consectetur sit voluptas voluptatum dolores. Quia quam ullam id ut eum eveniet.\r\n\r\nOfficia voluptatem officia at expedita quam voluptates nemo. Fugit odio itaque ab qui. Et non doloremque sint eaque hic nostrum.\r\n\r\nNatus dolores dicta natus dolor minima. Quos quis dolores quis fugiat numquam rem. Quia dignissimos beatae in est.\r\n\r\nRerum vero non temporibus sed non totam ad. Et sed cumque vero cumque et. Officia rerum consequatur assumenda totam cumque molestias voluptas.\r\n\r\nCommodi deserunt ad nesciunt autem. Ut ipsa et omnis aperiam consequatur in aut. Eum rerum enim animi et nihil architecto. Sit et et consequatur ab sed.\r\n\r\nRepellat esse dolor quas sequi numquam magni rerum rerum. Quibusdam perspiciatis reiciendis exercitationem. Repellendus ex modi deserunt.', 'vitae-et-est-occaecati-aliquam-quia', '2022-04-22 03:55:58', '2022-04-22 04:03:29'),
(19, 3, 1, 19, 'Molestiae ea et sed odio corporis.', 'Amet tempora accusamus voluptatem provident et aliquid eligendi. Dolor magni nam tenetur alias. Numquam sequi similique omnis reiciendis doloribus quos. Illo voluptatum qui qui culpa aperiam et ab.\r\n\r\nAut corporis culpa et quibusdam. Doloremque cum ratione rerum cumque. Qui cumque nam error dolor fuga qui rerum voluptas.\r\n\r\nBlanditiis cupiditate iste nemo tempore aspernatur. Dolorem molestiae illo et voluptates officiis cum.\r\n\r\nIure maiores laborum voluptates delectus autem molestiae libero reprehenderit. Doloremque eius consequatur doloremque voluptatem sunt necessitatibus. Quia ratione alias nesciunt est. Illo aspernatur magni et minima tenetur nulla.\r\n\r\nEsse consequatur minima et. Suscipit esse modi quia consequuntur magni corporis sit. Sit aut et ipsa harum eos dolorum placeat et. Exercitationem minus nulla asperiores natus.\r\n\r\nEst porro quam temporibus voluptatem quia quas. Quaerat est architecto excepturi ex sequi voluptatem possimus eligendi. Voluptatum accusantium omnis eos quo cum tempore. Dolorem quaerat quo tenetur.\r\n\r\nAd nesciunt odio ullam voluptatibus est. Sit expedita non voluptatum ullam esse. Repellendus est dolor porro quisquam.\r\n\r\nVelit labore perferendis deserunt voluptatem sint quis exercitationem voluptatem. Quaerat voluptatem consectetur hic ut possimus odit et. Culpa tenetur laudantium iusto hic voluptatem est magnam. Omnis eos et reiciendis necessitatibus maxime voluptatem eos.\r\n\r\nSit a non consectetur hic id. Deleniti doloribus repudiandae doloribus veritatis amet voluptatem deserunt deserunt.\r\n\r\nExpedita tenetur ut laborum fuga. Nam itaque et ad recusandae. Blanditiis facilis itaque omnis velit nesciunt ut dolore. Tempora impedit dignissimos esse sit alias.', 'molestiae-ea-et-sed-odio-corporis', '2022-04-22 03:55:58', '2022-04-22 04:06:31'),
(20, 2, 3, 8, 'Eius ex aperiam incidunt iure officiis.', 'Et sit molestiae nam mollitia possimus. Sequi ut ut modi sed consequatur voluptas enim delectus. Eligendi necessitatibus veritatis beatae laboriosam incidunt nam non. Praesentium perspiciatis alias et quibusdam facilis officia officia. Voluptatem perspiciatis beatae assumenda rem autem.\r\n\r\nReprehenderit quidem libero dolorum molestiae rerum. Nisi reiciendis incidunt sit qui velit. Voluptatem nihil vitae minus et eius asperiores. Dolorem qui enim optio culpa.\r\n\r\nVoluptatum rem exercitationem velit earum similique. Non commodi et quae totam ut ut sapiente et.\r\n\r\nAutem ratione quia suscipit voluptates. Aut est delectus est explicabo. Laudantium voluptatibus mollitia autem occaecati aliquam soluta inventore.\r\n\r\nRepellendus illo omnis perspiciatis eos sunt mollitia. Vero qui quis incidunt nihil excepturi recusandae qui. Impedit voluptates odio fugit ut beatae deleniti ut.\r\n\r\nVitae nostrum pariatur quisquam. Aut repellat rerum saepe eos quam. Rerum eius voluptatum provident quia eaque.\r\n\r\nNecessitatibus exercitationem veniam quia omnis ea expedita et. Fuga facere omnis earum laboriosam. In odit aut nihil consequatur est autem. Quo explicabo quam ullam eveniet.\r\n\r\nVel non impedit animi ipsum iste rem sit. Consectetur laboriosam qui veritatis ut velit deleniti. Blanditiis consequuntur totam voluptatum quia et enim beatae.\r\n\r\nVel aut modi quia optio ex aperiam. Accusantium odio cumque eaque illo. Repellat illo iste adipisci ut et quam laudantium.\r\n\r\nCum illo omnis aperiam et. Quo et exercitationem omnis libero. Autem id aliquid earum quos voluptas consequatur. Fuga id eligendi tempora ut.\r\n\r\nQuasi nulla qui sunt optio accusamus. Distinctio eum enim ullam enim. Et est voluptas officiis et. Veniam eum beatae occaecati.\r\n\r\nSed consequatur omnis ipsum animi debitis occaecati consequatur. Quia similique qui eum odit aut omnis. Earum magnam modi sit ullam non.', 'eius-ex-aperiam-incidunt-iure-officiis', '2022-04-22 03:55:58', '2022-04-22 04:03:22'),
(21, 6, 6, 21, 'PHP Beginners Course', '<p>PHP is a general-purpose scripting language geared toward web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. The PHP reference implementation is now produced by The PHP Group</p>', 'php-beginners-course', '2022-04-22 04:12:40', '2022-04-22 04:12:40'),
(22, 6, 7, 22, 'Laravel Master', '<p>Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model&ndash;view&ndash;controller architectural pattern and based on Symfony.</p>', 'laravel-master', '2022-04-22 04:13:11', '2022-04-22 04:13:11');

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
(1, 'Administrator', '2022-04-22 03:55:59', '2022-04-22 03:55:59'),
(2, 'Author', '2022-04-22 04:01:35', '2022-04-22 04:01:35'),
(3, 'Subscriber', '2022-04-22 04:01:43', '2022-04-22 04:01:43');

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
(1, 1, 'Junior Sanford', 'cpacocha@example.org', 0, '2022-04-22 03:55:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j1VFk7J4SO', '2022-04-22 03:55:56', '2022-04-22 04:00:30', '6'),
(2, 1, 'Miss Gail Gutkowski', 'ostanton@example.org', 0, '2022-04-22 03:55:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w5Qpilk7S0', '2022-04-22 03:55:57', '2022-04-22 04:00:21', '5'),
(3, 1, 'Prof. Emmy Windler', 'ada.fahey@example.net', 0, '2022-04-22 03:55:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ev8YhOBjmn', '2022-04-22 03:55:57', '2022-04-22 04:00:12', '4'),
(4, 1, 'Gabrielle Ledner', 'gabe39@example.net', 0, '2022-04-22 03:55:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zp99wht15E', '2022-04-22 03:55:57', '2022-04-22 04:00:04', '3'),
(5, 1, 'Alexandria Jenkins V', 'rafael32@example.org', 0, '2022-04-22 03:55:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XAXrKQBmHm', '2022-04-22 03:55:57', '2022-04-22 03:59:54', '2'),
(6, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', 0, NULL, '$2y$10$JMVTrHzsR.KhW20fgd1cwe.Si.SiiYtYQjR91XXrL6Hryg.mduoL2', NULL, '2022-04-22 03:56:46', '2022-04-22 03:57:26', '1'),
(7, 2, 'Showrab', 'showrab@gmail.com', 1, NULL, '$2y$10$5cBYma7ibOdra.N2dyNL/.xUpDvQfUfeNkFuICM.WCPVCxF0VJOo6', NULL, '2022-04-22 04:02:37', '2022-04-22 04:02:37', '7');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
