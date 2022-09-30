-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 06 juil. 2020 à 14:24
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(11) NOT NULL,
  `name_cat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_cat`, `name_cat`) VALUES
(1, 'Sport'),
(2, 'Fps'),
(3, 'Aventure'),
(4, 'Course'),
(5, 'Guerre'),
(6, 'Societe');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_cont` int(11) NOT NULL,
  `date_cont` date NOT NULL,
  `message_cont` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id_cont`, `date_cont`, `message_cont`, `id`) VALUES
(204, '2020-07-05', 'Je suis le Dark vador', 120);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `reduction` int(11) NOT NULL,
  `image` varchar(25) NOT NULL,
  `category` int(11) NOT NULL,
  `plateforme` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `reduction`, `image`, `category`, `plateforme`) VALUES
(28, 'FORZA HORIZON 4', 10000, 10, 'forza_horizon.jpg', 4, 'xbox'),
(30, 'TOMB RAIDER', 15200, 21, 'tomb_raider.jpg', 3, 'ps4'),
(31, 'GRAND THEFT AUTO 5', 9500, 0, 'gta5.jpg', 3, 'ps4'),
(47, 'Assassin\'s Creed BlackFla', 800, 0, 'assblafla.jpg', 3, 'pc'),
(48, 'Bttlefield', 500, 0, 'battlefield.jpg', 5, 'pc'),
(49, 'Battlefront 2', 600, 10, 'battlefront2.jpg', 2, 'pc'),
(50, 'CallOfDuty InfinityWarFar', 7000, 0, 'callof.jpg', 2, 'ps4'),
(51, 'Assassin\'s Creed Origin', 600, 0, 'CreedOrigin.jpg', 3, 'pc'),
(52, 'Crysis', 1500, 0, 'Crysis.jpg', 5, 'pc'),
(53, 'FarCry 5', 1300, 40, 'Farcry5.jpg', 3, 'pc'),
(55, 'HaloInfinite', 8000, 0, 'infinite.jpg', 2, 'xbox'),
(56, 'Jumanji', 20000, 15, 'jumanji.jpg', 3, 'ps4'),
(57, 'Monopoly', 4000, 80, 'monopoly.jpg', 6, 'ps4'),
(58, 'NBA2K20', 17000, 0, 'nba2k20.jpg', 1, 'ps4'),
(59, 'NBA2K21', 25000, 15, 'nba2k21.jpg', 1, 'ps4'),
(60, 'NeedForSpeed', 400, 0, 'needforspeed.jpg', 4, 'pc'),
(61, 'PES2020', 6000, 21, 'Pes2020.jpg', 1, 'ps4'),
(62, 'Scrabble', 300, 0, 'scrable.jpg', 6, 'pc'),
(63, 'Shaddow of tomb raider', 2000, 0, 'ShaddowOftombRaider.jpg', 3, 'pc'),
(64, 'SIMS4', 4500, 3, 'sim4.jpg', 6, 'ps4'),
(65, 'Tennis World Tour', 13000, 35, 'tennisWorldtour.jpg', 1, 'ps4'),
(66, 'THE CREW 2', 800, 0, 'theCrew2.jpg', 4, 'pc'),
(67, 'Assassin\'s Creed VALHALLA', 19000, 0, 'valhalla.jpg', 3, 'ps4'),
(68, 'Tomb Raider', 500, 10, 'tomb_raider.jpg', 3, 'pc'),
(69, 'Forza Motosport 7', 9000, 25, 'forzmotosport.jpg', 4, 'xbox');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id_ord` int(11) NOT NULL,
  `date_ord` date NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id_ord`, `date_ord`, `id_item`, `id_user`) VALUES
(64, '2020-07-05', 30, 120);

-- --------------------------------------------------------

--
-- Structure de la table `precommande`
--

CREATE TABLE `precommande` (
  `id_pre` int(11) NOT NULL,
  `name_pre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_pre` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `precommande`
--

INSERT INTO `precommande` (`id_pre`, `name_pre`, `date_pre`, `id_user`) VALUES
(22, 'FIFA 21', '2020-07-05', 110);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmation_token` varchar(60) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `isAbonne` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirmation_token`, `confirmed_at`, `isAbonne`) VALUES
(109, 'LounesKadri', 'kadrilounes@gmail.com', '$2y$10$K70GqqJ5EwPC6.EV.AxfbOp/poGs2MHI8pji5eeLBNZw8dO57r7Fy', NULL, '2020-07-04 20:04:25', 1),
(110, 'AmghisKheloui', 'khelouiamghis@gmail.com', '$2y$10$3DoWTMQp35vU4iS4yDi2qeR94LuWISbicMcVpk1b6F5JyNHH3iGQK', NULL, '2020-07-04 20:05:22', 0),
(111, 'SalahSadeddine', 'sadeddinesalah@gmail.com', '$2y$10$dq4mmerODV85/5TC.JxQoes1s0f0kdnTDJQICBRf3yxkhqxFkGhY.', NULL, '2020-07-04 20:06:00', 0),
(119, 'AliBoudjemail', 'boudjemaiali@gmail.com', '$2y$10$xN0l88DZ1lmAVIPTXA7/wuBlVurELYJvaqXKhqBtQxoO3qAuX59bO', NULL, '2020-07-05 18:40:23', 1),
(120, 'DarkVador', 'projetihm01@gmail.com', '$2y$10$dXE0XCsSoLJo8WCNdwxLL.lKwumUrp.7Ie.W.39udE.FREdzEaTGG', NULL, '2020-07-05 18:42:49', 1),
(124, 'RV_RENARD', 'rv@gmail.com', '$2y$10$p3iGqKHyhkMjBwp5DdmYRuFcjMCJbLQGmXKzpAAZ3Ip4MlyMDAAcW', NULL, '2020-07-06 11:54:12', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_cont`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_ord`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `precommande`
--
ALTER TABLE `precommande`
  ADD PRIMARY KEY (`id_pre`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_cont` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_ord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `precommande`
--
ALTER TABLE `precommande`
  MODIFY `id_pre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id_cat`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`);

--
-- Contraintes pour la table `precommande`
--
ALTER TABLE `precommande`
  ADD CONSTRAINT `precommande_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
