-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 05:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2023-03-31 07:06:09', '2023-03-31 07:06:09'),
(2, 'moderator', '2023-03-31 07:06:34', '2023-03-31 07:06:34'),
(3, 'admin', '2023-03-31 07:06:34', '2023-03-31 07:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `published` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `published`, `createdAt`, `updatedAt`) VALUES
(1, 'iPhone 7 Plus 32GB', 'klklklk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'iPhone 6 64GB', 'kljlhlhl', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Galaxy', 'Samsung Cellphone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Galaxy J4', 'Samsung Cellphone', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Lenovo', 'Thinkpad', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Asus', 'Chenyan', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'hussain', 'Mukhtarunar81@gmail.com', '$2a$08$.Gm0upcYt7pYoHWYF4ogp.f3csq20j.UgR4oTOapwnLMQN2wrxp0q', '2023-03-31 05:13:15', '2023-03-31 05:13:15'),
(2, 'sajjad', 'sajjadhussaintahiri@yahoo.com', '$2a$08$xHqG0s8uHoneAzkgq2z9uud0n1RmnhZXZvCuKJ9ZgiH7WU4NJ8Wwa', '2023-03-31 05:52:22', '2023-03-31 05:52:22'),
(3, 'moderator', 'moderator@gmail.com', '$2a$08$iSBMKbvNU8i2gdgB9xLAOu4mKdbgplpsApSx8qlypf34ijbGocgue', '2023-03-31 06:19:53', '2023-03-31 06:19:53'),
(4, 'mod1', 'mod1@gmail.com', '$2a$08$82hAb7a6EZIY5J.ej/ZNZOKXY0uFZuUAEK.ZrDSted.9CeB7BGXxC', '2023-03-31 06:36:26', '2023-03-31 06:36:26'),
(5, 'mod2', 'mod2@gmail.com', '$2a$08$ravOYwUiusQvfQuTAVmAruLoYfVt4EFQb7/L6mE.msTJvY8WurLeq', '2023-03-31 06:36:51', '2023-03-31 06:36:51'),
(6, 'admin1', 'admin1@gmail.com', '$2a$08$Ol3IPBmme/q4csgasj7FEudbhbUv0pDAAJbONsJ7Gyx.im0HZZfam', '2023-03-31 06:38:02', '2023-03-31 06:38:02'),
(7, 'admin3', 'admin3@gmail.com', '$2a$08$IjslZmBhvuSjZ7Tplf.zbO1Mjf8YWzyc8sfWlswcxNkYH/k71qJ7e', '2023-03-31 07:09:35', '2023-03-31 07:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2023-03-31 05:13:15', '2023-03-31 05:13:15', 1, 1),
('2023-03-31 06:36:26', '2023-03-31 06:36:26', 1, 4),
('2023-03-31 06:36:51', '2023-03-31 06:36:51', 1, 5),
('2023-03-31 06:38:02', '2023-03-31 06:38:02', 1, 6),
('2023-03-31 07:09:35', '2023-03-31 07:09:35', 1, 7),
('2023-03-31 06:19:53', '2023-03-31 06:19:53', 2, 3),
('2023-03-31 06:36:26', '2023-03-31 06:36:26', 2, 4),
('2023-03-31 06:36:51', '2023-03-31 06:36:51', 2, 5),
('2023-03-31 05:52:22', '2023-03-31 05:52:22', 3, 2),
('2023-03-31 06:38:02', '2023-03-31 06:38:02', 3, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
