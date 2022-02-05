-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 06:17 PM
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
(1, 'PHP', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(2, 'JavaScript', '2022-02-05 05:17:46', '2022-02-05 05:17:46'),
(3, 'Laravel', '2022-02-05 05:17:55', '2022-02-05 05:17:55'),
(4, 'React', '2022-02-05 05:18:06', '2022-02-05 05:18:06'),
(5, 'Vue.js', '2022-02-05 05:18:11', '2022-02-05 05:18:11'),
(6, 'Android', '2022-02-05 05:18:19', '2022-02-05 05:18:19'),
(7, 'IOS', '2022-02-05 05:18:22', '2022-02-05 05:18:22');

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
(177, '2014_10_12_000000_create_users_table', 1),
(178, '2014_10_12_100000_create_password_resets_table', 1),
(179, '2019_08_19_000000_create_failed_jobs_table', 1),
(180, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(181, '2021_11_25_115818_create_roles_table', 1),
(182, '2021_12_06_130419_add_photo_id_to_users', 1),
(183, '2021_12_06_160145_create_photos_table', 1),
(184, '2021_12_13_090728_create_posts_table', 1),
(185, '2021_12_14_040747_create_categories_table', 1),
(186, '2021_12_19_165902_create_comments_table', 1),
(187, '2021_12_19_170255_create_comment_replies_table', 1);

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
(1, 'placeholder.jpg', '2022-02-05 05:11:31', '2022-02-05 05:11:31'),
(2, '1644059953IMG_0583.JPG', '2022-02-05 05:19:13', '2022-02-05 05:19:13'),
(3, '1644062413laravel.png', '2022-02-05 06:00:13', '2022-02-05 06:00:13');

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
(1, 1, 3, 1, 'Labore velit libero qui quibusdam.', 'Nisi suscipit labore ut modi quo veritatis. Dolor ut ut et sed provident illum exercitationem. Accusamus omnis vero deleniti et ipsum. Voluptas enim officia iusto facilis praesentium omnis.\n\nPerferendis exercitationem doloremque et. Doloribus ipsa voluptatem et. Eligendi omnis dolore ut commodi facilis. Deserunt earum eos dicta molestias.\n\nDolor fugiat voluptatem non nulla aspernatur debitis quod. Culpa tempora non qui nostrum. Sapiente nihil distinctio natus perferendis voluptatem et ipsam. Ratione aut voluptas modi suscipit iste quia.\n\nRerum dolorem sed ad aut. Nam natus sit officia. Pariatur aspernatur rerum eveniet nobis consequuntur corrupti nemo.\n\nRerum dolore quibusdam ut. Dolorum ut rerum neque corrupti et quisquam voluptate. Minus odio quo animi reiciendis corrupti repellendus. Blanditiis fugiat debitis libero.\n\nEst qui quod magni et. Enim voluptatem repellat temporibus. Quia vero beatae ut blanditiis et.\n\nDelectus laudantium magni veritatis fuga et dolorum ipsa dignissimos. Eos cupiditate nobis perspiciatis consectetur animi modi ab. Voluptas autem similique sit est qui.\n\nRepudiandae nobis deleniti eos perferendis nemo excepturi qui. Quia excepturi ea et. Eos laborum veniam incidunt occaecati voluptate modi sit. At quidem maiores ipsam incidunt.\n\nMinima esse est et qui beatae incidunt quia iure. Aliquid repellat molestiae dignissimos fuga cupiditate in. Illum nisi et sit in atque porro.\n\nCorrupti et sunt aspernatur commodi. Exercitationem incidunt reprehenderit beatae at dolores. Consequatur nihil sit sint quos.\n\nDebitis dicta et non commodi ex consequatur adipisci voluptatem. Deserunt voluptatibus facere impedit dignissimos quis. Fuga adipisci soluta nam. Rem doloremque incidunt sit quo et.\n\nOptio et itaque quia sed. Sit nam quis in. Voluptatum laborum eos molestias sint ullam fuga.\n\nError provident tempora optio et. Sunt assumenda rerum commodi pariatur quo deserunt. Delectus perferendis et et. Quam assumenda nostrum rerum culpa earum. Odio et ut illum labore debitis quia dicta.\n\nNatus molestiae accusamus possimus eos provident. Et beatae dolorum consequuntur nihil id earum est deserunt. Veniam ipsum praesentium dolorem. Molestiae aut saepe magnam.\n\nRecusandae veritatis magnam minus adipisci natus eius. Veritatis ut alias earum nulla. Dolores aspernatur voluptatum consequatur eaque. Aut corporis dolorum repellat earum voluptatum ut vel.', 'labore-velit-libero-qui-quibusdam', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(2, 1, 2, 1, 'Illum cum inventore totam iste dolore harum.', 'Eius facere vel eligendi dolores facilis. Quia quaerat doloremque dolore neque aut. Natus cum ipsam omnis nihil.\n\nQuam nesciunt delectus atque. Omnis voluptatem voluptatem sunt tenetur. Nulla distinctio eos aut quasi.\n\nQui totam dolor cumque et. Omnis vel rerum aut vitae et sint. Aut deserunt qui incidunt delectus reiciendis aliquid. Dolorum et et eveniet. Id quia qui qui saepe similique aliquid voluptate.\n\nPossimus ea exercitationem perferendis odio aut quo corrupti blanditiis. Ea incidunt quia error aut ut ipsa quod numquam. Dolorem ea quisquam est sit magnam deserunt doloribus.\n\nSunt et quod ullam molestiae rerum eum. Et asperiores sed libero eveniet aperiam. Facilis voluptas et ut ut sit. Ab ipsam iste repellat.\n\nEa quos eum est suscipit quia dolores eum incidunt. Atque vitae tempore numquam quas ut. Necessitatibus quo itaque porro sint. Quaerat possimus quo odio esse eligendi consequatur iure.\n\nEveniet voluptates totam maxime at laborum. Perspiciatis nostrum accusamus maxime in aperiam distinctio. Cumque repellendus ullam aut dolores officiis. Amet possimus adipisci unde voluptates officia.\n\nDolore non itaque eos nobis sunt incidunt rem. Hic error dicta enim ipsam dolorem est ducimus. Voluptatibus voluptatem vel dolorem ullam dolorem. Fugiat maxime saepe reprehenderit autem possimus.\n\nIllo id aliquid quos sed quo voluptatem eligendi. Nostrum et voluptas consectetur sapiente aut hic reiciendis ipsum. Quo molestias autem enim blanditiis sunt laborum atque.\n\nRerum illum tenetur repellendus laboriosam et sed nihil ratione. Quod dolorum eveniet sint voluptatum quis. Et non reiciendis iure.\n\nIpsa non odio voluptatem exercitationem nihil atque. Ea nemo ratione sed hic earum. Et non at incidunt sit itaque quidem ad.\n\nSint illo autem aliquid voluptate. Vel earum rerum ullam qui fugit. Aliquid sed veniam velit et.\n\nQuia laudantium voluptatem id omnis quos. Facere eius quaerat est impedit qui. Veritatis iste omnis necessitatibus.\n\nAut magnam odit aut consectetur. In voluptas molestiae sed ipsam aperiam laudantium qui. Maxime fugiat cum inventore aperiam dolore perferendis quo. Quod est distinctio commodi neque cupiditate fugit perspiciatis.\n\nId est magnam asperiores aliquam et. Autem odit quis minus rerum. Ab iste aperiam deserunt. Eos optio voluptatum voluptas rerum quae.', 'illum-cum-inventore-totam-iste-dolore-harum', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(3, 1, 3, 1, 'Et laboriosam veritatis beatae.', 'Quo officia fuga et consequuntur. Beatae commodi autem exercitationem doloribus a. Delectus dolorem illum cumque rerum.\n\nIpsam consequuntur dolore ab in nemo. Illo earum aut sapiente optio.\n\nQuidem est iure nam dolores aut. Ipsa et ea ex ut magnam nisi laboriosam. Id sint voluptates consequuntur amet laboriosam quos.\n\nArchitecto sed accusantium sint blanditiis maxime possimus. Et doloremque et vel corporis cumque veniam. Nemo est et dolorem vel quae qui tempore veniam.\n\nQui blanditiis nisi minima rerum quis. Distinctio cum a veritatis ducimus officiis distinctio.\n\nEligendi sed esse enim. Aspernatur ut occaecati quae repudiandae rem. Voluptas est eos distinctio. Mollitia velit voluptatem sunt cupiditate qui. Laborum eaque tenetur qui qui qui fuga.\n\nEt similique aut sequi quia distinctio culpa. Et quia qui autem possimus amet non omnis voluptatem. Ab aspernatur id assumenda neque tempora id. Animi deserunt quia est.\n\nVitae ducimus reprehenderit dolore molestiae dolor et in. Doloribus quod similique ipsum molestiae. Perferendis deserunt earum eum voluptatum magni excepturi.\n\nSunt soluta eaque non quia enim placeat mollitia. Et omnis omnis odio cum exercitationem ut qui. Delectus qui voluptas labore laudantium doloribus reprehenderit perferendis.\n\nNesciunt quas consequatur labore cupiditate reprehenderit officia. Itaque non voluptate officiis impedit quaerat. Sit voluptate possimus odit qui.\n\nLibero qui inventore necessitatibus nihil. Perspiciatis reprehenderit veritatis architecto optio. Veniam eos magnam aut.\n\nNihil consectetur dolorem at mollitia placeat. Nulla voluptas velit et rem possimus. Neque tenetur id aut et repellendus. Ullam assumenda id est deserunt omnis.', 'et-laboriosam-veritatis-beatae', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(4, 1, 4, 1, 'Expedita dolores modi deserunt facilis sed tempore.', 'Enim autem consequatur minus iure sunt. Eius asperiores occaecati ut excepturi dignissimos eaque. Fugiat nihil eius dolor eligendi. Minima quis autem et dolorum amet alias.\n\nQuos dolores dolor repudiandae dolores voluptas aut sunt. Eos dicta recusandae voluptas id minima vero. Nostrum modi beatae fuga veritatis illum magni quibusdam. Voluptates et quos maxime eum molestiae fugit voluptatem.\n\nEt fugiat autem et dolorem iusto. Sunt nobis porro qui eum id aspernatur suscipit sunt. Commodi suscipit sint quis voluptatem maiores corrupti expedita. Labore perspiciatis nostrum possimus non adipisci.\n\nSequi provident rerum qui velit nisi eos. Sequi similique enim aliquam ipsa. Delectus quos pariatur eveniet in. Non tenetur possimus est.\n\nUt nemo qui rerum. Et explicabo sequi dolores et nesciunt quam veritatis. Qui ab et repellendus itaque sit blanditiis architecto.\n\nEt ullam asperiores maxime consequatur ut qui nulla. Rerum et dolor qui asperiores magnam. Minus quidem vel recusandae quidem quia omnis.\n\nMagnam a est at quibusdam est. Inventore nobis iure dolorem fugiat velit. Et sint aut incidunt officiis autem ad. Aliquid qui amet expedita.\n\nNihil minus vero cum natus quibusdam qui. At molestiae voluptatum fuga perferendis. Ut veritatis minus unde cum porro est voluptas.\n\nConsequatur qui libero quae suscipit saepe enim numquam. Et distinctio minima autem.\n\nUt alias nisi soluta quia nam earum neque inventore. Magni et porro reiciendis at eos. Dolore hic placeat pariatur esse cupiditate. Nesciunt sit repellendus enim esse. Maiores dicta perferendis fuga quos.\n\nFacilis itaque eveniet maiores dolores facere. Earum explicabo voluptatem quam culpa ut velit voluptatibus qui. Possimus et debitis id necessitatibus voluptatem laboriosam ut nam. Sequi voluptatem in et est molestias. Adipisci eum fugit quaerat iure molestiae doloremque.\n\nTotam eius enim qui aut accusantium. Aliquid harum consequuntur quod. Eius enim et voluptatem asperiores recusandae est harum. Impedit ut repellat cum odio consequatur molestiae quia.\n\nNeque distinctio aut perspiciatis corporis. Ut quidem cum a dolorum. Vitae pariatur rem facilis enim.\n\nEt illo nemo itaque ut. Quod nam alias maiores nihil vitae nobis. Ut perferendis officiis porro fugit aspernatur hic dolorem.\n\nEt labore labore consectetur. Fuga a est fugit itaque modi eum qui repudiandae. Voluptatem praesentium et est qui autem quibusdam esse. Provident quia totam dicta voluptas. Nihil deserunt nemo ut et culpa.', 'expedita-dolores-modi-deserunt-facilis-sed-tempore', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(5, 1, 5, 1, 'Hic nulla voluptatibus quisquam consectetur.', 'Et quia alias repellat autem fugiat cumque. Dolor maxime delectus et. Earum dolore architecto molestiae velit eos labore.\n\nEt voluptatem sunt qui consequuntur. Rerum consequuntur ipsam suscipit consectetur delectus. Doloribus tenetur totam aut qui rerum numquam vero.\n\nVelit qui consectetur excepturi consectetur ex aut quis sunt. Cum ut enim enim et. Quia dolor esse modi commodi adipisci voluptatem saepe. Numquam minima ratione dolor et eius exercitationem neque.\n\nEx quia laudantium ratione error assumenda. Veritatis voluptatem qui eum aut ut. Dolor ut odio dicta et qui sed. Et animi vel non. Corrupti voluptates architecto voluptas beatae enim minima voluptas.\n\nLabore at sit earum quia repellat dolorem. Sequi pariatur accusamus voluptatem voluptas consequatur voluptatum quia. Earum ut odit et expedita fugiat quam nesciunt. Reiciendis ratione nesciunt esse. Quo quisquam porro rerum omnis perferendis facere perspiciatis.\n\nAut non dolorem sit iusto blanditiis ratione omnis. Error illo quis omnis nemo facilis consequatur doloribus. Neque doloribus molestiae sint.\n\nFugiat dolores maiores quae sed qui. Molestias tenetur beatae natus molestiae illum vel. Omnis delectus illum quos consequatur.\n\nExcepturi et iure nisi non sunt ut. Aut qui ipsam dolores qui sed. Blanditiis ullam ut ea eius.\n\nOfficiis veniam reiciendis et atque dicta ut. Enim ut consequatur reiciendis est ipsam. Sit est in necessitatibus hic veritatis ratione. Ad quo ducimus aperiam laboriosam repudiandae.\n\nSunt nam eligendi minus eum dolorem dolorem sed. Rem dolore aspernatur porro distinctio accusantium sint in tenetur. Nam sit repudiandae at ut ut. Veniam aut eum qui est vel. Enim quis vel unde architecto non.', 'hic-nulla-voluptatibus-quisquam-consectetur', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(6, 1, 3, 1, 'Aut accusamus qui in dolores corporis est.', 'Nam asperiores quasi blanditiis corporis iure iure perspiciatis. Velit error pariatur rerum nesciunt. Earum dolores dignissimos veritatis explicabo quia ad harum.\n\nDignissimos voluptatem laborum provident totam iusto. Quasi molestiae et doloribus. Error vel sit perferendis consequatur veritatis cumque nihil magni. Tempore dolorem quibusdam non architecto similique fugiat omnis.\n\nRepellendus doloremque cum et odio odio. Ipsa corrupti quae adipisci amet. Aut fuga beatae et tenetur. Accusamus numquam eos qui a fugiat corrupti. Qui molestias quam occaecati magnam iure maxime necessitatibus.\n\nCorrupti atque saepe officia repellat quibusdam minus. Hic quos quia ea quos. Est et dolor a velit nesciunt voluptatem rem.\n\nIn voluptatum eveniet aliquam ullam hic. Et quos corporis quis minus beatae non. Sit quam non consequatur accusamus tenetur aut. Ducimus labore tempore eaque similique mollitia debitis et.\n\nIn sint aut et voluptatem. Cupiditate qui et optio. Iste sunt officiis est maxime consequatur. Cupiditate ut quasi similique assumenda.\n\nEsse assumenda numquam qui ut rerum molestiae. Beatae qui doloribus a dicta ad et. Quod aliquid voluptatem neque laudantium ad numquam ratione perspiciatis.\n\nVoluptatem nihil et neque quibusdam ducimus quidem. Tempore ea rem neque iusto. Autem vel aut culpa et nobis sit fugiat dolorum.\n\nNihil sed similique sint provident et ipsum veniam. Culpa itaque vero officiis eligendi vitae ex.\n\nNecessitatibus omnis commodi quis sed. Facilis qui minima quia et. Ipsam facilis neque aliquam sunt quia et veritatis. Provident facilis doloribus expedita ex voluptates ea aut.\n\nFuga expedita accusantium similique. Exercitationem aut vel doloribus asperiores illo est ut.\n\nEa et nesciunt aut iure quia ullam tenetur. Distinctio sequi provident et labore unde et adipisci. Ratione id quam nihil quasi laudantium dicta placeat. Itaque aliquid et fuga sunt quis. Necessitatibus perferendis sequi eum velit exercitationem.', 'aut-accusamus-qui-in-dolores-corporis-est', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(7, 1, 2, 1, 'Nisi ea omnis sint.', 'Odio neque quia nihil. Porro voluptatum sit error iste consequatur. A perferendis sint est. Ea fugit ratione est dolore ducimus exercitationem.\n\nCumque provident vitae similique tenetur repellendus nulla sit. Ad ipsam ut cupiditate cumque. Quo nostrum alias facere cum qui rerum amet.\n\nArchitecto fugit sint doloribus quae accusantium. Sint ut molestiae soluta nisi occaecati placeat voluptas. Illo mollitia quia molestiae illo quo necessitatibus est.\n\nIpsa similique pariatur dolorem ipsa minus inventore porro maiores. Voluptatem enim rerum et sunt culpa dolore excepturi. Praesentium delectus eos vitae quia.\n\nLaborum labore qui iure accusamus. Totam animi dolores fugit quibusdam aliquam.\n\nAssumenda soluta quis recusandae placeat et amet necessitatibus. Eius saepe temporibus maxime. Ea praesentium consequuntur non voluptatem omnis.\n\nImpedit qui dolorem molestiae sit cum iste ad. Officiis nemo aut quod ratione illum. Et corrupti et quia quia quasi occaecati vel. Doloremque corrupti dolorem maiores nobis nam vitae aperiam quas.\n\nAsperiores veritatis id quisquam vel accusantium consectetur sint. Magni iure voluptates aut amet ut quis. Sint occaecati tenetur id ratione. Aut minima iure maiores sit et beatae.\n\nLibero hic id veniam. Eligendi dolor optio voluptatem id cumque aut. Voluptatem voluptatem harum fuga modi.\n\nRepellendus id omnis mollitia quasi. Temporibus dolore facere laboriosam sit maiores nobis. Ea quidem eos temporibus minima laborum itaque.\n\nAssumenda in sint dolore nisi rerum esse. Magnam ut non facilis ut tempore doloremque sunt. Quaerat qui eos omnis vitae omnis consequatur in. Accusantium et modi beatae fugiat quia.\n\nDeleniti in laborum consequuntur placeat. Perferendis ut voluptas ut sed. Voluptatibus et quo laborum veritatis expedita.\n\nAut occaecati maxime earum non ipsam voluptas omnis. Ut beatae quia quis iure ea.\n\nDolore iusto incidunt voluptatibus saepe eveniet laboriosam. Nulla placeat sapiente quasi fuga laudantium. Quod eius qui ut. Qui iusto enim in enim natus quidem culpa.', 'nisi-ea-omnis-sint', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(8, 1, 4, 1, 'Atque saepe cumque quisquam nesciunt eos.', 'Minus ratione sed dicta sapiente est quibusdam consequuntur. Occaecati dolores deserunt voluptatem excepturi quod dolor ab est. Amet odio aliquam accusamus cupiditate. Quia ea blanditiis architecto voluptate qui excepturi.\n\nIn earum aut officia natus iure illum. Labore velit et laudantium quam molestiae esse reprehenderit. Beatae distinctio error dolorem rem. Ducimus et quia id quod.\n\nDeleniti similique officiis aliquam et molestias. Aut id fuga et est libero. Magnam esse assumenda nobis quis enim.\n\nEst dolorum praesentium dicta quaerat. Quibusdam fuga reprehenderit ut sunt consequatur et. Est iure error expedita quos veniam facere maiores doloribus. Esse voluptatem totam corporis reiciendis voluptatem.\n\nNihil quae at voluptas molestiae sit fugiat. Dolorem est quisquam qui non. Ea sed consequatur nihil eius.\n\nNon molestiae voluptatem atque aspernatur. Nesciunt eius eum ipsum id. Cum inventore praesentium voluptas.\n\nQuidem voluptatibus est at. Nulla quaerat recusandae culpa beatae laboriosam. Ut repellat at quaerat. Enim quibusdam et et libero.\n\nVoluptate voluptatem omnis autem qui quaerat quam est. Voluptatem sed voluptas architecto. Inventore qui consequatur sit culpa culpa maiores.\n\nEa eos aut voluptatem accusantium maiores voluptatibus. Consequuntur quis officia assumenda magni non voluptate unde non. Nemo veniam magni optio sit est ea recusandae. Voluptatem ut impedit cupiditate accusamus sit et.\n\nAlias vel dolor architecto et quasi tenetur. Possimus aspernatur sunt laudantium fuga qui ut. Soluta asperiores earum quas occaecati qui ea explicabo. Labore sint aperiam tempore maxime sint. At enim nihil est saepe in tenetur.\n\nVoluptate non aut vitae nulla. Dignissimos et quia eos doloribus harum. Necessitatibus maiores quis labore quia quae molestiae. Ut voluptas odit in animi minima sed maxime delectus.\n\nNumquam illo eos aperiam quia tempora. Soluta et earum non distinctio mollitia. Enim labore totam ducimus laborum sunt placeat.\n\nEt est voluptas et natus. Et numquam suscipit repellendus porro aut. Beatae dolorem reiciendis sunt optio ut.\n\nRerum quis qui odio earum. Nesciunt voluptatem enim aliquid id error ut voluptas sit.\n\nMagni quia et suscipit ea. Pariatur non impedit aliquid molestias qui. Sit corporis libero fuga.', 'atque-saepe-cumque-quisquam-nesciunt-eos', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(9, 1, 3, 1, 'Ut aut debitis et aut iste ex.', 'Necessitatibus aspernatur quis velit perspiciatis debitis reiciendis quae. Ipsum itaque labore assumenda quasi. Facilis asperiores consequatur dolores rerum. Aspernatur esse et similique.\n\nImpedit aut sint nostrum facere id enim nulla exercitationem. Aliquam necessitatibus explicabo tempora ut cumque earum. Ea voluptate consequatur aliquam similique. Totam velit nemo labore consequatur ullam rerum omnis.\n\nDolore qui explicabo ipsa sapiente et. Doloribus quisquam corrupti officia officia. Temporibus corporis ut vel provident.\n\nQuia nihil dolores sed corporis. Ea soluta eum possimus officiis iure aspernatur nemo. Quis veniam nemo id et sit recusandae ut.\n\nVoluptatem rerum eveniet et et ab voluptatem dolorem ut. Dolores illum debitis sequi numquam. Debitis sit voluptatem unde et illo. Nihil autem repellat ipsam.\n\nArchitecto hic vel id. Non asperiores consectetur illo nihil. Qui iusto perspiciatis voluptatem. Totam earum fugit possimus esse repellat temporibus.\n\nNeque numquam ad quidem modi temporibus. Minima omnis quis similique minus ipsam. Odio accusantium tenetur est aut atque et. Expedita culpa ut quasi aut iste.\n\nEt asperiores aut magnam id. Repudiandae quia odit ratione quam ad. Et labore facilis alias voluptas error. Qui commodi neque eos explicabo voluptatibus quidem.\n\nNam consequuntur non quia distinctio quia dolorem mollitia. Expedita optio laborum et velit autem assumenda. Id voluptate tempora totam ut tempore ut ea iste. Porro voluptates omnis voluptas laboriosam est.\n\nPraesentium sed tempora dolorem nemo explicabo numquam dignissimos. Quas iusto et corporis laboriosam excepturi veniam nihil voluptatibus. Autem necessitatibus veniam consequuntur nemo sint ut est corporis.\n\nAt blanditiis dolorem occaecati. Soluta blanditiis rem delectus est sint qui voluptatum.\n\nUt placeat qui aliquid enim molestias atque. Pariatur voluptate vero pariatur aspernatur quia quisquam. Est quia tenetur laboriosam reprehenderit sit voluptates neque.\n\nVeniam laborum quo totam iure consequuntur. Et autem est est. Magni quis soluta necessitatibus amet.\n\nEt amet deleniti reprehenderit enim ab. Qui consequatur et explicabo blanditiis. Aut doloremque voluptatem ipsum quia laboriosam laudantium ducimus.\n\nDeserunt ut est nihil dolore iusto soluta. Sint dolores perspiciatis quaerat voluptatem.', 'ut-aut-debitis-et-aut-iste-ex', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(10, 1, 3, 1, 'Atque ullam sed et soluta.', 'Fuga quam quo repudiandae asperiores quis. Dolores in sed possimus asperiores quaerat a. Dolor unde assumenda eveniet quidem sunt quis.\n\nSed expedita et ex facilis. Explicabo omnis sit voluptatem repellat unde. Ab sit at accusantium impedit consequuntur. Qui ipsa culpa est quae odit.\n\nExpedita amet omnis necessitatibus eum. Dolor ad ut aliquam voluptatibus repudiandae. Rerum laudantium dolores aut. Rerum ipsa blanditiis dolore.\n\nLaborum unde autem placeat at laborum officiis ab. Sequi laboriosam dolores libero porro quaerat temporibus magnam architecto. Id dignissimos molestiae accusamus ratione officiis.\n\nEt quia ut vitae. Repellat et at iusto ipsam neque doloribus est. Inventore soluta sint rerum et veniam maxime.\n\nEnim vel consequuntur illum dolorem minima rem. Molestiae ab sunt ratione aut magni. Neque laboriosam minima rem totam nihil ut voluptas laudantium.\n\nDolor quidem cum id fugit ipsum. Dolorum fugiat molestias sed commodi repellendus placeat sit. Et pariatur suscipit assumenda voluptates quaerat deserunt. Sit quis laboriosam quis non aut et reprehenderit.\n\nNulla repellendus qui occaecati inventore quis harum. Iste quia quae cumque. Nulla minus reprehenderit esse quisquam id.\n\nDelectus dolores sed odio vitae aut repellendus ab. Velit aliquid voluptate molestias numquam est. Omnis voluptatibus est ut voluptas dolore reprehenderit quia quas. Est aut minus consequatur. Est et necessitatibus et non.\n\nAccusamus cum consequuntur id ipsum ratione quis eos rerum. Nobis ut non blanditiis impedit odio sapiente laboriosam.\n\nAut adipisci architecto cumque corrupti culpa. Cupiditate doloribus sit et voluptas fugiat ullam.\n\nDolorum rem id molestiae consequuntur reprehenderit officia omnis. A nihil velit quod eius ullam explicabo. Sit consequatur id facilis ipsam aliquam aut sed. Maxime et laboriosam optio doloremque.\n\nVoluptatibus qui fugit nesciunt quidem doloribus. Velit a ipsa voluptatem fugiat cupiditate eveniet.', 'atque-ullam-sed-et-soluta', '2022-02-05 05:11:30', '2022-02-05 05:11:30'),
(11, 1, 3, 3, 'First Laravel project', '<p>Laravel is one of the finest backend framework.</p>', 'first-laravel-project', '2022-02-05 06:00:14', '2022-02-05 06:00:14');

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
(1, 'Administrator', '2022-02-05 05:11:31', '2022-02-05 05:11:31'),
(2, 'Author', '2022-02-05 05:16:23', '2022-02-05 05:16:23'),
(3, 'Subscriber', '2022-02-05 05:16:35', '2022-02-05 05:16:35');

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
(1, 1, 'Mridul Islam', 'md.mridulislam12345@gmail.com', 1, NULL, '$2y$10$Tp30vEgMlrvkkjKc8p5IU.QXzLY30GoXwmgHcxdY48FIu8AINqGc.', NULL, '2022-02-05 05:10:56', '2022-02-05 05:19:13', '2'),
(2, NULL, 'Mariana Boyer', 'dominic35@example.net', 0, '2022-02-05 05:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '41GyRcCT08', '2022-02-05 05:11:29', '2022-02-05 05:11:29', NULL),
(3, NULL, 'Dr. Blanca Rolfson III', 'hank.hoppe@example.org', 0, '2022-02-05 05:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l6Ra0qIARX', '2022-02-05 05:11:29', '2022-02-05 05:11:29', NULL),
(4, NULL, 'Luna Cremin', 'rosina74@example.org', 0, '2022-02-05 05:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'waP48AT8IN', '2022-02-05 05:11:29', '2022-02-05 05:11:29', NULL),
(5, NULL, 'Wava Welch', 'bstracke@example.net', 0, '2022-02-05 05:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9MvR6vyS0J', '2022-02-05 05:11:29', '2022-02-05 05:11:29', NULL),
(6, NULL, 'Mr. Earnest Schamberger DVM', 'ressie46@example.org', 0, '2022-02-05 05:11:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ld541CPZ9x', '2022-02-05 05:11:30', '2022-02-05 05:11:30', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
