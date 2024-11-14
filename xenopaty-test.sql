-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2024 at 07:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xenopaty-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `address`, `phone`, `user_picture`, `password`, `created_at`, `updated_at`) VALUES
(3, 'Emelie Bartoletti', 'kuhic.montana@yahoo.com', '41541 Magdalena Walk Suite 449\nSawaynborough, WI 82555', '+1.484.583.9891', 'C:\\Users\\herva\\AppData\\Local\\Temp\\a96de1ffbe53c76cd13afb918158c469.png', '`F#$>JH`X><\'@;iT-6y7', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(4, 'Miss Krystel Dare Jr.', 'chloe53@hotmail.com', '993 Schultz Way Apt. 955\nMonahantown, NE 05351', '1-586-414-9275', 'C:\\Users\\herva\\AppData\\Local\\Temp\\8b62e252f79aca97acfba78cf6ec21bd.png', 'Dj:&-+#8M5D2', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(5, 'Mr. Wilfredo Crooks DDS', 'fnicolas@hotmail.com', '70377 Haylie Via Apt. 882\nMannville, NE 07586', '860.617.2318', 'C:\\Users\\herva\\AppData\\Local\\Temp\\457df39dbd9c82d6aca593e0d8c413ef.png', 'F54uPwG#7HBP', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(6, 'Ms. Dasia Koss DVM', 'derek.wiza@yahoo.com', '3845 Turcotte Course Suite 871\nOkunevamouth, SC 61700', '925-916-3989', '0', '5hZFWREcmOQ.gU', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(7, 'Prof. Golda Parisian Jr.', 'ucummerata@hotmail.com', '2111 Green Hills Suite 439\nWest Jessika, MA 86095-5835', '(520) 976-9310', 'C:\\Users\\herva\\AppData\\Local\\Temp\\29cc8e9ded4068b875eaf622bd667c3e.png', ':r37+.GAC$XE', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(8, 'Elva Corwin IV', 'eddie.gerlach@labadie.info', '1299 Swift Camp Suite 435\nWiegandstad, IL 15814', '(364) 605-5487', 'C:\\Users\\herva\\AppData\\Local\\Temp\\a8d500388e2f61bc38a55c66880f0c21.png', 'h|F-X#\"^S:}:j6o\'', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(9, 'Walker Funk', 'vince68@hotmail.com', '90003 Leffler Harbor Apt. 497\nNew Athena, MO 04812-6483', '+1 (937) 399-3527', 'C:\\Users\\herva\\AppData\\Local\\Temp\\afb6cfcc144ebc0504bdebefcc7f46ff.png', '%,i/Y\'', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(10, 'Brianne Wilderman', 'sarmstrong@yahoo.com', '941 Heller Harbor Apt. 312\nReingerville, ND 56466-8990', '(931) 438-4311', '0', '@`[c?Aq}M;7', '2024-11-13 21:48:10', '2024-11-13 21:48:10'),
(11, 'coba1', 'coba1@gmail.com', 'coba1 alamat', '097098789', 'cHnwLjZVvWDF2RPFzl4dsten4dp6dDSmWJHLDC6E.png', 'coba1', '2024-11-13 23:29:50', '2024-11-13 23:29:50'),
(12, 'coba2', 'coba@gmail.com', 'coba2', '111111111111111', 'IfzRVJrVfjfIKHGiu7fSMLnNibRw0N1iVjTp1SRt.png', 'aaaaaaa', '2024-11-13 23:43:24', '2024-11-13 23:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `emp_presences`
--

CREATE TABLE `emp_presences` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `late_in` int NOT NULL,
  `early_out` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salaries`
--

CREATE TABLE `emp_salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  `basic_salary` double NOT NULL,
  `bonus` double NOT NULL,
  `bpjs` double NOT NULL,
  `jp` double NOT NULL,
  `loan` double NOT NULL,
  `total_salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_14_031858_create_employees_table', 1),
(6, '2024_11_14_034000_create_emp_presences_table', 2),
(7, '2024_11_14_034948_create_emp_salaries_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_presences`
--
ALTER TABLE `emp_presences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_presences_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_salaries_employee_id_foreign` (`employee_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emp_presences`
--
ALTER TABLE `emp_presences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_presences`
--
ALTER TABLE `emp_presences`
  ADD CONSTRAINT `emp_presences_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emp_salaries`
--
ALTER TABLE `emp_salaries`
  ADD CONSTRAINT `emp_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
