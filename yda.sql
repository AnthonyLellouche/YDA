-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 29 déc. 2021 à 11:08
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yda`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualities`
--

CREATE TABLE `actualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualities`
--

INSERT INTO `actualities` (`id`, `title`, `text`, `created_at`, `updated_at`, `company_id`) VALUES
(13, 'Totam et mollitia se', 'Autem quaerat quis n', '2021-12-21 13:54:43', '2021-12-21 13:54:43', 1),
(15, 'Provident dolore ma', 'Aute officia atque p', '2021-12-21 14:12:09', '2021-12-21 14:12:09', 2),
(16, 'Velit sequi quae quo', 'Aliquam elit in vol', '2021-12-21 14:12:18', '2021-12-21 14:12:18', 2),
(17, 'Quis mollitia nihil', 'Voluptatem dolor co', '2021-12-21 14:26:04', '2021-12-21 14:26:04', 1),
(27, 'Quam placeat eius c', 'Esse vero ut volupta', '2021-12-23 07:57:05', '2021-12-23 07:57:05', 1),
(28, 'test1', 'Fugit distinctio T', '2021-12-23 07:57:47', '2021-12-23 07:57:47', 1),
(29, 'Hic fugiat occaecat', 'Eveniet fuga Ducim', '2021-12-23 07:58:23', '2021-12-23 07:58:23', 3),
(32, 'Nihil magna architec', 'Vel dolor enim aut n', '2021-12-23 08:08:16', '2021-12-23 08:08:16', 4),
(34, 'Eligendi magnam repe', 'Officia rerum conseq', '2021-12-23 08:19:54', '2021-12-23 08:19:54', 1),
(35, 'Eos rerum numquam f', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vehicula dui lectus. Vestibulum varius tincidunt consequat. Donec gravida lorem nisl, volutpat iaculis elit faucibus et. Ut leo velit, consequat nec semper vitae, tristique vel lorem nec.', '2021-12-23 08:21:27', '2021-12-23 08:21:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `calendars`
--

CREATE TABLE `calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_count` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `siret` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dayTwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeTwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `member_count`, `number`, `siret`, `adress`, `postcode`, `city`, `logo_id`, `colour_background`, `colour_text`, `day`, `time`, `dayTwo`, `timeTwo`, `created_at`, `updated_at`) VALUES
(1, 'BCL', 10, 99808, '88511646700014', '5 AV INGRES 75016', '75016', 'Paris', NULL, NULL, NULL, 'monday', '09:00 - 11:00', 'monday', '09:00 - 11:00', NULL, '2021-12-23 08:47:30'),
(2, 'NICE HAIR', 1777171, 2877272, '81538815200028', '14 BOULEVARD GAMBETTA', '06000', 'NICE', NULL, NULL, NULL, 'monday', '09:00 - 11:00', 'monday', '09:00 - 11:00', '2021-12-21 09:43:47', '2021-12-21 09:43:47'),
(3, 'MIMO', 10, 909090909, '79833505500017', '21 AVENUE NOTRE DAME', '06000', 'NICE', NULL, NULL, NULL, 'monday', '09:00 - 11:00', 'monday', '09:00 - 11:00', '2021-12-22 08:09:54', '2021-12-22 08:09:54'),
(4, 'MONOPRIX EXPLOITATION, PAR ABREVIATION MPX', 38, 789, '55208329700846', '42 AVENUE JEAN MEDECIN', '06000', 'NICE', NULL, NULL, NULL, 'monday', '15:00 - 17:00', 'monday', '15:00 - 17:00', '2021-12-23 07:59:51', '2021-12-23 07:59:51');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_12_09_160000_create_companies_table', 1),
(5, '2021_12_09_160001_create_users_table', 1),
(6, '2021_12_09_160002_create_products_table', 1),
(7, '2021_12_09_160003_create_calendars_table', 1),
(8, '2021_12_09_160004_create_orders_table', 1),
(9, '2021_12_09_160005_create_actualities_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('en attente','en cours','terminé') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en attente',
  `date_order` date DEFAULT NULL,
  `date_delivery` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'ab8d644e90db797392661a521f6af608abdda3f3805b803d5ca222f83879f154', '[\"*\"]', NULL, '2021-12-21 08:15:06', '2021-12-21 08:15:06'),
(2, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '8fa11f8068f8124fd3d5d6cb883dde0a334df87d0b697f620cb97125402c4142', '[\"*\"]', NULL, '2021-12-21 08:19:44', '2021-12-21 08:19:44'),
(3, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '204774b85d6025987734b6e2e0bda122480c793240925b03334094c5c0992a9f', '[\"*\"]', NULL, '2021-12-21 08:22:49', '2021-12-21 08:22:49'),
(4, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'fdcc2a7f8cd5246d5484786a96e8622dff826e47594599eaad0291fbd211a098', '[\"*\"]', NULL, '2021-12-21 08:24:07', '2021-12-21 08:24:07'),
(5, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '4ec505ca60eb8a77aade5744e81ebe7788b247299e7bce8120c24abbde1a23d5', '[\"*\"]', NULL, '2021-12-21 12:35:10', '2021-12-21 12:35:10'),
(6, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '405a7a1254f3ada008acddd1ea6c8cb7e7545e53dbfe561505811dfbdedf444e', '[\"*\"]', NULL, '2021-12-21 12:37:20', '2021-12-21 12:37:20'),
(7, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '7dd3b43e3a9254985546c46de7d6c0436ea86567651f3aa33fef694123ee3997', '[\"*\"]', NULL, '2021-12-22 07:49:27', '2021-12-22 07:49:27'),
(8, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '7e1c9fb31307fb49ae8d88c97df78840286538f047a47a136555fd914f475b3c', '[\"*\"]', NULL, '2021-12-22 12:26:19', '2021-12-22 12:26:19'),
(9, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'f098ebf742ec8eeea7a857e1a3cbd53c4541922aa9e522c7d3bd93b4ef5cb2db', '[\"*\"]', NULL, '2021-12-22 12:32:58', '2021-12-22 12:32:58'),
(10, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '7764e3b27e15902b91110fa07b9615279a4f6c6cdd7a5fc40200a61a12f16e1c', '[\"*\"]', NULL, '2021-12-23 07:02:55', '2021-12-23 07:02:55'),
(11, 'App\\Models\\User', 11, 'LaravelSanctumAuth', '7943192964d90399e24b83c42a760bcf47b5fd7a88f222be66207c7abc16ecd7', '[\"*\"]', NULL, '2021-12-23 07:03:31', '2021-12-23 07:03:31'),
(12, 'App\\Models\\User', 15, 'LaravelSanctumAuth', '0e64c245e53e0f208302d46a73d15c0dbdb5ca3727284a0f4c7a65d0055fdc54', '[\"*\"]', NULL, '2021-12-23 07:03:43', '2021-12-23 07:03:43'),
(13, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'ae8e0fe5240da76539a125b5b36cfa4fa084ae2323f8a7d280a29e5eafa6bbc5', '[\"*\"]', NULL, '2021-12-23 07:06:10', '2021-12-23 07:06:10'),
(14, 'App\\Models\\User', 16, 'LaravelSanctumAuth', '0a01dc525cbf6dcf6000fa29632b69c25933e62edc26fab8de5486f8946d366b', '[\"*\"]', NULL, '2021-12-23 07:06:21', '2021-12-23 07:06:21'),
(15, 'App\\Models\\User', 17, 'LaravelSanctumAuth', '9f4b8cf252e1bd7bf8b9b6be0299a03203bbd53b9d8ab383d190109fe278d681', '[\"*\"]', NULL, '2021-12-23 07:06:35', '2021-12-23 07:06:35'),
(16, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'ef236b017cfc00d8db3cb254e9c3fdb6588dfa4e5731aa81fc49f86cfe6d6a27', '[\"*\"]', NULL, '2021-12-23 07:53:39', '2021-12-23 07:53:39'),
(17, 'App\\Models\\User', 3, 'LaravelSanctumAuth', '60c0ce3d68d1bae3fe5bb1fa8147e1a3843166da7a29e0596f03f8c3d1488a01', '[\"*\"]', NULL, '2021-12-23 07:54:55', '2021-12-23 07:54:55'),
(18, 'App\\Models\\User', 18, 'LaravelSanctumAuth', '754611bf7df595ce730ebf57adceb64458a967e79042fa735306df0843fcd6f1', '[\"*\"]', NULL, '2021-12-23 08:48:55', '2021-12-23 08:48:55'),
(19, 'App\\Models\\User', 30, 'LaravelSanctumAuth', '8a9e641f74017309d20ddfe7de97608e90db84f363507a2b669893bce72ed4fc', '[\"*\"]', NULL, '2021-12-23 08:50:31', '2021-12-23 08:50:31'),
(20, 'App\\Models\\User', 38, 'LaravelSanctumAuth', '8c2521babc4b0dc21596476c9229db829653994bf0c83729ff0f94a9ab40c784', '[\"*\"]', NULL, '2021-12-23 08:50:49', '2021-12-23 08:50:49'),
(21, 'App\\Models\\User', 18, 'LaravelSanctumAuth', 'ed071ea78363bd8514c5d0f3ee64e683cd7ad99bd51ec562b9a3eb614d65447b', '[\"*\"]', NULL, '2021-12-23 08:55:13', '2021-12-23 08:55:13'),
(22, 'App\\Models\\User', 3, 'LaravelSanctumAuth', 'b3b3742f48342ffa339c8774987d2650c7159e2f201ca5c3beb0dd47f602cc6e', '[\"*\"]', NULL, '2021-12-29 09:54:36', '2021-12-29 09:54:36');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('service','produit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `type`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Franklin Marshall', 'Excepturi est dolore', 'public/Ao9Mec04CcaXkgLM8C3w1Sy2FEBhJGYbOymj71hq.png', 'service', 'nourriture', '2021-12-21 11:59:43', '2021-12-23 08:43:04'),
(2, 'Ashton Branch', 'Iste dicta consequat', 'public/eme7KptCrjbR8IEx95kOQ9g0rSgV8ITiuSpeMwjo.png', 'produit', 'maison', '2021-12-21 12:00:03', '2021-12-21 12:00:03'),
(4, 'Katell Hickman', 'Expedita culpa poss', 'public/UJL7Z3TDSbqDSoCQEHXr985Ff73d90S6oK7dWXZs.png', 'service', 'bien-être', '2021-12-23 08:44:31', '2021-12-23 08:44:31');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','member','manager') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `birthday` date NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `surname`, `first_name`, `email`, `password`, `role`, `birthday`, `comment`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `company_id`) VALUES
(3, 'Anthony', 'LELLOUCHE', 'an.lellouche@gmail.com', '$2y$10$5fk9fi1OolJ0kH2EmnNnFebapKgx/vI09ieC74/CUN2UNGuVe9oLS', 'admin', '1991-01-09', NULL, NULL, NULL, '2021-12-21 08:15:06', '2021-12-21 08:15:06', 1),
(10, 'Rice', 'April', 'tuzo@mailinator.com', '$2y$10$IEx8h6GIWrl6jzF3NW/B2.1YjSVFaozf4avzWAnL5EHdHCaG72i2y', 'member', '2021-10-17', NULL, NULL, NULL, '2021-12-22 09:36:26', '2021-12-22 09:36:26', 2),
(11, 'Garrett', 'Amber', 'dumubobe@mailinator.com', '$2y$10$TtZ2MxEf7/3QKTHl3dI8luZ/ThHKk1gCwSPoCCOz6pn2..qwu5ysK', 'member', '2013-08-17', NULL, NULL, NULL, '2021-12-23 07:03:31', '2021-12-23 07:03:31', 1),
(15, 'Brooks', 'Kirk', 'jyhiz@mailinator.com', '$2y$10$Btp0jbZ47IDsLW5Zg.U9qOpUD5qODKHMXeLRIt7FYsfzVCOVgReey', 'member', '1997-04-29', NULL, NULL, NULL, '2021-12-23 07:03:43', '2021-12-23 07:03:43', 1),
(16, 'Cunningham', 'Jade', 'pivevo@mailinator.com', '$2y$10$w2Rvw6FPleFLyF0YIFiJueNP.jceDb5U2Q.A6ydvLdA4TUFLE.Uqi', 'member', '1991-11-20', NULL, NULL, NULL, '2021-12-23 07:06:21', '2021-12-23 07:06:21', 1),
(17, 'Bailey', 'Idola', 'fopinopy@mailinator.com', '$2y$10$uN0LhrV3ZCybQt19p/7IDOs1OAfhdYW8oe95VwEla7Ks54xdyD5uS', 'member', '2019-09-12', NULL, NULL, NULL, '2021-12-23 07:06:35', '2021-12-23 07:06:35', 1),
(18, 'Belangeer', 'Jerome', 'jay@gmail.com', '$2y$10$LouTacnfqAW06V9wLP3FgOUVAna0t7iu5iKaRXgWu0OEMOJJRsS9O', 'member', '2021-12-01', NULL, NULL, NULL, '2021-12-23 08:48:55', '2021-12-23 08:48:55', 1),
(30, 'Clemons', 'Carol', 'xihaso@mailinator.com', '$2y$10$mlLUfS2m79nDe03em7v5V.ppHBMKG271h6a9HgbNcdtRWMXKrHiLm', 'member', '2017-08-27', NULL, NULL, NULL, '2021-12-23 08:50:31', '2021-12-23 08:50:31', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualities`
--
ALTER TABLE `actualities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actualities_company_id_foreign` (`company_id`);

--
-- Index pour la table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_siret_unique` (`siret`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_products_id_foreign` (`products_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualities`
--
ALTER TABLE `actualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actualities`
--
ALTER TABLE `actualities`
  ADD CONSTRAINT `actualities_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
