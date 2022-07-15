-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 07:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctpse_coopepoints`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL,
  `BALANCE` int(11) NOT NULL DEFAULT 0,
  `ID_USUARIO` int(11) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `BALANCE`, `ID_USUARIO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 0, 1, '2022-06-01', '2022-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_deposits`
--

CREATE TABLE `accounts_deposits` (
  `ID` int(11) NOT NULL,
  `AMOUNT` int(9) NOT NULL,
  `ID_MATERIAL` int(11) NOT NULL,
  `ID_DEPOSIT` int(11) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_deposits`
--

INSERT INTO `accounts_deposits` (`ID`, `AMOUNT`, `ID_MATERIAL`, `ID_DEPOSIT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 10, 2, 2, '2022-06-01', '2022-06-01'),
(2, 10, 1, 2, '2022-06-01', '2022-06-01'),
(3, 5, 1, 3, '2022-06-01', '2022-06-02'),
(4, 11, 2, 3, '2022-06-01', '2022-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `ID` int(11) NOT NULL,
  `CONCEPT` varchar(255) NOT NULL,
  `AMOUNT` int(9) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate(),
  `ID_ACCOUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`ID`, `CONCEPT`, `AMOUNT`, `CREATED_AT`, `UPDATED_AT`, `ID_ACCOUNT`) VALUES
(2, 'Ejemplo de contexto', 10, '2022-06-01', '2022-06-01', 1),
(3, 'Ejemplo de contexto', 20, '2022-06-01', '2022-06-01', 1);

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
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `VALUE` int(9) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`ID`, `NAME`, `VALUE`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Carton', 25, '2022-06-01', '2022-06-01'),
(2, 'botellas', 25, '2022-06-01', '2022-06-01');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ruddrodria999@hotmail.com', '$2y$10$cV8w2bbC/CNdWt08CA78Ce4AqiM/hTs7YHsbDUi3TcfBHKg3aRvcu', '2022-07-12 04:51:23'),
('ruddrodria99@hotmail.com', '$2y$10$WR4/RaT.zZQRgxGjVarCrOHIKRTDNGTq.WxKlqJT5.v3ndCV9Y6nW', '2022-07-14 04:38:04');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`ID`, `NAME`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'SUPPORT', '2022-06-29', '2022-06-29'),
(2, 'ADMIN', '2022-06-29', '2022-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(11) NOT NULL,
  `ID_DEBITED_ACCOUNT` int(11) NOT NULL,
  `ID_CREDITED_ACCOUNT` int(11) NOT NULL,
  `CONCEPT` varchar(255) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `DNI` varchar(15) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SURNAME` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `VER_MAIL` bit(1) NOT NULL DEFAULT b'0',
  `PASSWORD` varchar(255) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT curdate(),
  `UPDATED_AT` date NOT NULL DEFAULT curdate(),
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `ID_ROLE` int(11) DEFAULT NULL,
  `REMEMBER_TOKEN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `DNI`, `NAME`, `SURNAME`, `email`, `VER_MAIL`, `PASSWORD`, `CREATED_AT`, `UPDATED_AT`, `IMAGE_PATH`, `ID_ROLE`, `REMEMBER_TOKEN`) VALUES
(1, '207910182', 'Ruddy', 'Rodriguez', 'ruddrodria99@gmail.com', b'1', '123456', '0000-00-00', '0000-00-00', '\"\"', 1, NULL),
(4, '207910181', 'Ruddy', 'Rodriguez', 'ruddrodria99@hotmail.com', b'0', '$2y$10$s5P7VItUTbT2C9jcW7yxROMLaQb2AIbsy8fsURHJ560t6Mal8GGZG', '2022-07-11', '2022-07-11', NULL, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ACCOUNT_USER` (`ID_USUARIO`) ON DELETE CASCADE;

--
-- Indexes for table `accounts_deposits`
--
ALTER TABLE `accounts_deposits`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ACCOUNT_DEPOSITS_DEPOSITS` (`ID_DEPOSIT`) ON DELETE CASCADE,
  ADD KEY `FK_ACCOUNT_DEPOSITS_MATERIALS` (`ID_MATERIAL`)  ON DELETE CASCADE;

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DEPOSITS_ACCOUNT` (`ID_ACCOUNT`)  ON DELETE CASCADE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`ID`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) ON DELETE CASCADE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DEBITED_ACCOUNT_ACCOUNT` (`ID_DEBITED_ACCOUNT`) ON DELETE CASCADE,
  ADD KEY `FK_CREDITED_ACCOUNT_ACCOUNT` (`ID_CREDITED_ACCOUNT`) ON DELETE CASCADE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`),
  ADD UNIQUE KEY `user_dni_unique` (`dni`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `MAIL` (`email`),
  ADD KEY `FK_USER_ROLE` (`ID_ROLE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_deposits`
--
ALTER TABLE `accounts_deposits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `FK_ACCOUNT_USER` FOREIGN KEY (`ID_USUARIO`) REFERENCES `users` (`ID`);

--
-- Constraints for table `accounts_deposits`
--
ALTER TABLE `accounts_deposits`
  ADD CONSTRAINT `FK_ACCOUNT_DEPOSITS_DEPOSITS` FOREIGN KEY (`ID_DEPOSIT`) REFERENCES `deposits` (`ID`),
  ADD CONSTRAINT `FK_ACCOUNT_DEPOSITS_MATERIALS` FOREIGN KEY (`ID_MATERIAL`) REFERENCES `materials` (`ID`);

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `FK_DEPOSITS_ACCOUNT` FOREIGN KEY (`ID_ACCOUNT`) REFERENCES `accounts` (`ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK_CREDITED_ACCOUNT_ACCOUNT` FOREIGN KEY (`ID_CREDITED_ACCOUNT`) REFERENCES `accounts` (`ID`),
  ADD CONSTRAINT `FK_DEBITED_ACCOUNT_ACCOUNT` FOREIGN KEY (`ID_DEBITED_ACCOUNT`) REFERENCES `accounts` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`ID_ROLE`) REFERENCES `roles` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
