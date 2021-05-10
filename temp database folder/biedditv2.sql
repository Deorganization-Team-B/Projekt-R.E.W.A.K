-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 10 Maj 2021, 16:08
-- Wersja serwera: 8.0.22
-- Wersja PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biedditv2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `comment_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL,
  `wall_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `comment`, `comment_id`, `user_id`, `karma`, `comment_date`, `wall_id`) VALUES
(1, 1, 'Yeah I also like that game', NULL, 1, 0, '2021-05-06 05:09:10', 1),
(3, 1, 'I agree with you that you agree', 1, 2, 0, '2021-05-06 12:00:00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_27_200958_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@testernik.tester', '$2y$10$tilBt/dYI9gs/xSlcu7US.ELyYOvZm8r545RSpw25SVpNOJkFRaLS', '2021-05-05 12:30:12'),
('dad@dad.dad', '$2y$10$ItzH3.5QiGo48PjrPm7OTuyrDx3eMc.hE8w6Ul44yqMVdhA9zJzau', '2021-05-06 19:35:53'),
('jakub5pl@gmail.com', '$2y$10$HMXLbtGbJxtvsRHJ6sva8.I51x8wKRvcLiqxdThOKAqdBXcY4RzPK', '2021-05-10 14:09:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imgur` varchar(14) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `edit_date` datetime DEFAULT NULL,
  `editor_id` int DEFAULT NULL,
  `wall_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `imgur`, `user_id`, `karma`, `post_date`, `edit_date`, `editor_id`, `wall_id`) VALUES
(1, 'This game is amazing', '<strong>EDIT:</strong><p>EDIT:</p>\r\n<p><strong>Edit: </strong>Nier Replicant is one of the best games I have played in a long time. I highly recommend it. 2 3</p>', '0spVgRb.jpg', 1, 0, '2021-05-05 14:24:00', '2021-05-07 16:54:50', 2, 1),
(2, 'This game is really amazing', 'Nier Replicant is one of the really best games I have played in a long time.\r\nI highly recommend it.', '0spVgRb.jpg', 1, 0, '2021-05-05 14:24:00', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `warns` int NOT NULL DEFAULT '0',
  `rights` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `date_of_birth`, `karma`, `warns`, `rights`) VALUES
(1, 'TestnikTestowy', 'test@testernik.tester', NULL, '$2y$10$PFtYiOxvVUGT99SDcp0Yw.0AxQnCD3ScWrQs4HVOMyaIV7K.YDgKq', 'RYSkRoizi0jBlMemsGGCY6a27iOxFxydvNSjubOsgEaqzh8x1Z3bql5wjaTm', '2021-04-30 19:42:36', '2021-04-30 19:42:36', '1998-05-04', 0, 0, 1),
(2, 'dad', 'dad@dad.dad', NULL, '$2y$10$UNChjlpS3lUl1R7nnqATDODTWhL7TBV7LgcKitsf1kT2gXMtSQvK2', 'JyXf4JA5lqHcvvcpMznlOcOfVeSYTCR3PuIk8oV05cz2ALR9QtoZBGCZxZTv', '2021-05-04 21:43:49', '2021-05-04 21:43:49', '1992-03-02', 69, 0, 3),
(5, 'Aceaelus', 'jakub5pl@gmail.com', NULL, '$2y$10$SBtDlhHcHIrDrYnW.2M3beX5Ym5kjeOeuSc6yXIyi1GxFSzqvGIye', 'lqKgyf4StFbvJgBVrFy3pi96hpTinbw0mfKRIp5JOOjWVfTR7suHHJ24ZOwC', '2021-05-07 19:12:35', '2021-05-07 19:12:35', '1936-05-12', 0, 0, 1),
(6, 'TrueMaster', 'truemaster1209402@gmail.com', NULL, '$2y$10$XHAMAK7kyufYxiPvyNytV.VM8OQcMAMpw48X9QbiDbUTkGCEA83My', NULL, '2021-05-10 13:39:56', '2021-05-10 13:39:56', '1990-05-13', 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `walls`
--

CREATE TABLE `walls` (
  `id_wall` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post_number` int NOT NULL DEFAULT '0',
  `member_number` int NOT NULL DEFAULT '1',
  `creator` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `walls`
--

INSERT INTO `walls` (`id_wall`, `name`, `post_number`, `member_number`, `creator`) VALUES
(1, 'Games', 2, 2, 1),
(2, 'Anime', 2, 1, 1),
(3, 'Books', 0, 1, 1),
(4, 'Crypto', 0, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wall_id` (`wall_id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `wall_id` (`wall_id`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeksy dla tabeli `walls`
--
ALTER TABLE `walls`
  ADD PRIMARY KEY (`id_wall`),
  ADD KEY `creator` (`creator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `walls`
--
ALTER TABLE `walls`
  MODIFY `id_wall` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_4` FOREIGN KEY (`wall_id`) REFERENCES `walls` (`id_wall`);

--
-- Ograniczenia dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`wall_id`) REFERENCES `walls` (`id_wall`),
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `walls`
--
ALTER TABLE `walls`
  ADD CONSTRAINT `walls_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
