-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 07 Maj 2021, 18:42
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
-- Baza danych: `bieddit`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment_1`
--

CREATE TABLE `comment_1` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `comment_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `comment_1`
--

INSERT INTO `comment_1` (`id`, `post_id`, `comment`, `comment_id`, `user_id`, `karma`, `comment_date`) VALUES
(1, 1, 'Yeah I also like that game', NULL, 1, 0, '2021-05-06 05:09:10'),
(2, 1, 'This game stinks.', NULL, 2, 0, '2021-05-06 10:00:00'),
(3, 1, 'I agree with you that you agree', 1, 2, 0, '2021-05-06 12:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment_2`
--

CREATE TABLE `comment_2` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `comment_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment_3`
--

CREATE TABLE `comment_3` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `comment_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment_4`
--

CREATE TABLE `comment_4` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `comment_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
('dad@dad.dad', '$2y$10$ItzH3.5QiGo48PjrPm7OTuyrDx3eMc.hE8w6Ul44yqMVdhA9zJzau', '2021-05-06 19:35:53');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post_1`
--

CREATE TABLE `post_1` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imgur` varchar(14) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `edit_date` datetime DEFAULT NULL,
  `editor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `post_1`
--

INSERT INTO `post_1` (`id`, `title`, `post`, `imgur`, `user_id`, `karma`, `post_date`, `edit_date`, `editor_id`) VALUES
(1, 'This game is amazing', '<strong>EDIT:</strong><p>EDIT:</p>\r\n<p><strong>Edit: </strong>Nier Replicant is one of the best games I have played in a long time. I highly recommend it. 2 3</p>', '0spVgRb.jpg', 1, 0, '2021-05-05 14:24:00', '2021-05-07 16:54:50', 2),
(2, 'This game is really amazing', 'Nier Replicant is one of the really best games I have played in a long time.\r\nI highly recommend it.', '0spVgRb.jpg', 1, 0, '2021-05-05 14:24:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post_2`
--

CREATE TABLE `post_2` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imgur` varchar(14) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `edit_date` datetime DEFAULT NULL,
  `editor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `post_2`
--

INSERT INTO `post_2` (`id`, `title`, `post`, `imgur`, `user_id`, `karma`, `post_date`, `edit_date`, `editor_id`) VALUES
(1, 'With power of God and Anime on my side', 'I am the ultimate being. No one is going to be more powerfull than me. Also Mordred is best waifu and you can fight me on that. Beware though prepare to be obliterated.', 'GTrjkhr.jpg', 2, 0, '2021-05-06 16:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post_3`
--

CREATE TABLE `post_3` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imgur` varchar(14) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `edit_date` datetime DEFAULT NULL,
  `editor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post_4`
--

CREATE TABLE `post_4` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imgur` varchar(14) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user_id` int NOT NULL,
  `karma` int NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL,
  `edit_date` datetime DEFAULT NULL,
  `editor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'dad', 'dad@dad.dad', NULL, '$2y$10$UNChjlpS3lUl1R7nnqATDODTWhL7TBV7LgcKitsf1kT2gXMtSQvK2', 'kna4CW305qqxKWbYMLboYQxjU5HFv2zBICY1TZdtThyVL0c2lbS1BD6v32DK', '2021-05-04 21:43:49', '2021-05-04 21:43:49', '1992-03-02', 69, 0, 3);

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
-- Indeksy dla tabeli `comment_1`
--
ALTER TABLE `comment_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `comment_2`
--
ALTER TABLE `comment_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `comment_3`
--
ALTER TABLE `comment_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `comment_4`
--
ALTER TABLE `comment_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indeksy dla tabeli `post_1`
--
ALTER TABLE `post_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indeksy dla tabeli `post_2`
--
ALTER TABLE `post_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indeksy dla tabeli `post_3`
--
ALTER TABLE `post_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indeksy dla tabeli `post_4`
--
ALTER TABLE `post_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`);

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
-- AUTO_INCREMENT dla tabeli `comment_1`
--
ALTER TABLE `comment_1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `comment_2`
--
ALTER TABLE `comment_2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `comment_3`
--
ALTER TABLE `comment_3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `comment_4`
--
ALTER TABLE `comment_4`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT dla tabeli `post_1`
--
ALTER TABLE `post_1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `post_2`
--
ALTER TABLE `post_2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `post_3`
--
ALTER TABLE `post_3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `post_4`
--
ALTER TABLE `post_4`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `walls`
--
ALTER TABLE `walls`
  MODIFY `id_wall` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comment_1`
--
ALTER TABLE `comment_1`
  ADD CONSTRAINT `comment_1_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_1` (`id`),
  ADD CONSTRAINT `comment_1_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post_1` (`id`),
  ADD CONSTRAINT `comment_1_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `comment_2`
--
ALTER TABLE `comment_2`
  ADD CONSTRAINT `comment_2_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_2` (`id`),
  ADD CONSTRAINT `comment_2_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post_2` (`id`),
  ADD CONSTRAINT `comment_2_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `comment_3`
--
ALTER TABLE `comment_3`
  ADD CONSTRAINT `comment_3_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_3` (`id`),
  ADD CONSTRAINT `comment_3_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post_3` (`id`),
  ADD CONSTRAINT `comment_3_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `comment_4`
--
ALTER TABLE `comment_4`
  ADD CONSTRAINT `comment_4_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment_4` (`id`),
  ADD CONSTRAINT `comment_4_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post_4` (`id`),
  ADD CONSTRAINT `comment_4_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `post_1`
--
ALTER TABLE `post_1`
  ADD CONSTRAINT `post_1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_1_ibfk_2` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `post_2`
--
ALTER TABLE `post_2`
  ADD CONSTRAINT `post_2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_2_ibfk_2` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `post_3`
--
ALTER TABLE `post_3`
  ADD CONSTRAINT `post_3_ibfk_1` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `post_4`
--
ALTER TABLE `post_4`
  ADD CONSTRAINT `post_4_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `post_4_ibfk_2` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `walls`
--
ALTER TABLE `walls`
  ADD CONSTRAINT `walls_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
