-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 11 jan. 2019 à 17:29
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `apidb`
--
CREATE DATABASE IF NOT EXISTS `apidb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `apidb`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(2, 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(3, 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 15:34:54'),
(5, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 12:27:26'),
(6, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 12:27:47'),
(13, 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-09 00:24:24');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '125', 5, '2014-06-01 01:12:26', '2014-05-31 15:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 3, '2014-06-01 01:12:26', '2014-05-31 15:12:26'),
(6, 'Bench Shirt', 'The best shirt!', '29', 1, '2014-06-01 01:12:26', '2014-05-31 00:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2, '2014-06-01 01:13:45', '2014-05-31 00:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2, '2014-06-01 01:14:13', '2014-05-31 00:14:08'),
(9, 'Spalding Watch', 'My sports watch.', '199', 1, '2014-06-01 01:18:36', '2014-05-31 00:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2, '2014-06-06 17:10:01', '2014-06-05 16:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2, '2014-06-06 17:11:04', '2014-06-05 16:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1, '2014-06-06 17:12:21', '2014-06-05 16:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', 1, '2014-06-06 17:12:59', '2014-06-05 16:12:49'),
(26, 'Another product', 'Awesome product!', '555', 2, '2014-11-22 19:07:34', '2014-11-21 19:07:34'),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6, '2014-12-04 21:12:03', '2014-12-03 21:12:03'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1, '2014-12-13 00:52:54', '2014-12-12 00:52:54'),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3, '2015-12-12 06:47:08', '2015-12-12 04:47:08'),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5, '2016-01-08 06:36:37', '2016-01-08 04:36:37'),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1, '2016-01-11 15:46:02', '2016-01-11 13:46:02'),
(65, 'Monproduit', 'description de mon produit', '12', NULL, NULL, '2017-11-03 17:42:19'),
(67, 'produit 2', 'description', '56', NULL, NULL, '2017-11-03 18:15:17');
--
-- Base de données :  `beauty`
--
CREATE DATABASE IF NOT EXISTS `beauty` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beauty`;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_code_unique` (`code`),
  UNIQUE KEY `clients_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipements`
--

DROP TABLE IF EXISTS `equipements`;
CREATE TABLE IF NOT EXISTS `equipements` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `equipements_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

DROP TABLE IF EXISTS `factures`;
CREATE TABLE IF NOT EXISTS `factures` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `factures_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fournisseurs_code_unique` (`code`),
  UNIQUE KEY `fournisseurs_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `horaires`
--

DROP TABLE IF EXISTS `horaires`;
CREATE TABLE IF NOT EXISTS `horaires` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_11_154308_create_emails_table', 1),
(4, '2019_01_11_155746_create_ticket_table', 1),
(5, '2019_01_11_161212_create_clients_table', 1),
(6, '2019_01_11_161753_create_reservations_table', 1),
(7, '2019_01_11_162154_create_services_table', 1),
(8, '2019_01_11_162446_create_factures_table', 1),
(9, '2019_01_11_162620_create_fournisseurs_table', 1),
(10, '2019_01_11_162855_create_produits_table', 1),
(11, '2019_01_11_163122_create_equipements_table', 1),
(12, '2019_01_11_163220_create_roles_table', 1),
(13, '2019_01_11_163356_create_personnels_table', 1),
(14, '2019_01_11_172615_create_horaires_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

DROP TABLE IF EXISTS `personnels`;
CREATE TABLE IF NOT EXISTS `personnels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personnels_code_unique` (`code`),
  UNIQUE KEY `personnels_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produits_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reservations_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filemane` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `pourcentag` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--
-- Base de données :  `pharmapp`
--
CREATE DATABASE IF NOT EXISTS `pharmapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pharmapp`;

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2D5B0234AE80F5DF` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `department_id`, `name`, `longitude`, `latitude`) VALUES
(1, NULL, 'douala', 2344537686, 5432678697);

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chef_lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD1DE18A98260155` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pharmacists`
--

DROP TABLE IF EXISTS `pharmacists`;
CREATE TABLE IF NOT EXISTS `pharmacists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fonction` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `date_nais` date DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9765AA22A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pharmacists`
--

INSERT INTO `pharmacists` (`id`, `user_id`, `fonction`, `name`, `surname`, `telephone`, `date_nais`, `filename`, `date_creation`, `code`) VALUES
(1, NULL, 'pharmacien', 'dapson', 'ooooo', '23456780', '2022-07-15', 'C:\\wamp64\\tmp\\phpC0CB.tmp', '2016-03-16 14:16:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE IF NOT EXISTS `pharmacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pharmacist_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `heure_ouverture` time NOT NULL,
  `heure_fermeture` time NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D6C15C1E1FDF4367` (`pharmacist_id`),
  KEY `IDX_D6C15C1E8BAC62AF` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `pharmacist_id`, `city_id`, `name`, `sigle`, `date_creation`, `heure_ouverture`, `heure_fermeture`, `longitude`, `latitude`, `filename`) VALUES
(1, 1, NULL, 'logpom', 'efasq', '2015-01-14', '09:00:00', '19:15:00', '325467097865', '567890987654', 'serdtyfu');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chef_lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sick`
--

DROP TABLE IF EXISTS `sick`;
CREATE TABLE IF NOT EXISTS `sick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_nais` date NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8B78A075A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234AE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Contraintes pour la table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_CD1DE18A98260155` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Contraintes pour la table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD CONSTRAINT `FK_9765AA22A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `FK_D6C15C1E1FDF4367` FOREIGN KEY (`pharmacist_id`) REFERENCES `pharmacists` (`id`),
  ADD CONSTRAINT `FK_D6C15C1E8BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Contraintes pour la table `sick`
--
ALTER TABLE `sick`
  ADD CONSTRAINT `FK_8B78A075A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Base de données :  `rapmis`
--
CREATE DATABASE IF NOT EXISTS `rapmis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rapmis`;

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BP` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`id`, `tel`, `email`, `BP`, `fax`, `longitude`, `latitude`) VALUES
(33, '676467028', 'devalere@dev.com', '33056 Douala', '', '', ''),
(34, '694967524', 'test@test.com', '87245 baham', '00237686453693', '', ''),
(35, '685247310', 'jesus@hotmail.fr', 'Yaoundé 85001', '+23722482149', '', ''),
(36, '052781962', 'yimga@gmail.fr', 'limbé 98075', '+23767849549', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `chef_department`
--

DROP TABLE IF EXISTS `chef_department`;
CREATE TABLE IF NOT EXISTS `chef_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2A76BDD9F46CD258` (`matiere_id`),
  KEY `IDX_2A76BDD941807E1D` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `chef_department`
--

INSERT INTO `chef_department` (`id`, `teacher_id`, `matiere_id`, `description`) VALUES
(57, 89, 89, 'chef de departement Français'),
(58, 90, 90, 'chef de departement Philosophie'),
(59, 91, 91, 'chef de departement histoire'),
(60, 92, 92, 'chef de departement Géographie'),
(61, 93, 93, 'chef de departement Anglais'),
(62, 94, 94, 'chef de departement chinois'),
(63, 95, 95, 'chef de departement SVT');

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departments_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2D5B0234F1B3F295` (`departments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `departments_id`, `name`, `longitude`, `latitude`) VALUES
(49, 505, 'Baham', NULL, NULL),
(50, 493, 'Douala', NULL, NULL),
(51, 476, 'Yaoundé', NULL, NULL),
(52, 500, 'Nkambé', NULL, NULL),
(53, 509, 'Bangangté', NULL, NULL),
(54, 517, 'Limbé', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `niveau_id` int(11) NOT NULL,
  `etablissements_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2ED7EC5B3E9C81` (`niveau_id`),
  KEY `IDX_2ED7EC5D23B76CD` (`etablissements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `niveau_id`, `etablissements_id`, `name`) VALUES
(185, 137, 34, 'M1'),
(186, 137, 34, 'M2'),
(187, 138, 34, '1'),
(188, 137, 34, 'M3'),
(189, 139, 34, 'M1'),
(190, 152, 34, '2'),
(191, 140, 34, 'M1'),
(192, 140, 34, 'M2'),
(193, 141, 34, '1'),
(194, 142, 34, '1'),
(195, 143, 34, '1'),
(196, 144, 34, '1'),
(197, 145, 34, '1'),
(198, 145, 34, '2'),
(199, 145, 34, '3'),
(200, 146, 34, '1'),
(201, 147, 34, '1'),
(202, 148, 34, '1'),
(203, 149, 34, '1'),
(204, 150, 34, '1'),
(205, 151, 34, '1'),
(206, 152, 34, '1'),
(207, 153, 34, '1');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`, `capital`) VALUES
(33, 'Cameroun', 'Yaoundé'),
(34, 'Nigeria', 'Abudja'),
(35, 'Congo', 'Brazzaville'),
(36, 'Tchad', 'N\'Djaména');

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regions_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chef_lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD1DE18AFCE83E5F` (`regions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`id`, `regions_id`, `name`, `chef_lieu`) VALUES
(465, 81, 'Djérem', 'Tibati'),
(466, 81, 'Faro-et-Déo', 'Tignère'),
(467, 81, 'Mayo-Banyo', 'Banyo'),
(468, 81, 'Mbéré', 'Meiganga'),
(469, 81, 'Vina', 'Ngaoundéré'),
(470, 82, 'Haute-Sanaga	', '	Nanga-Eboko'),
(471, 82, 'Lekié', 'Monatele'),
(472, 82, 'Mbam-et-Inoubou', 'Bafia'),
(473, 82, 'Mbam-et-Kim', 'Ntui'),
(474, 82, 'Méfou-et-Afamba', 'Mfou'),
(475, 82, 'Méfou-et-Akono', 'Ngoumou'),
(476, 82, 'Mfoundi', 'Yaoundé'),
(477, 82, 'Nyong-et-Kellé', 'Éséka'),
(478, 82, 'Nyong-et-Mfoumou', 'Akonolinga'),
(479, 82, 'Nyong-et-So’o', 'Mbalmayo'),
(480, 83, 'Boumba-et-Ngoko', 'Yokadouma'),
(481, 83, 'Haut-Nyong', 'Abong-Mbang'),
(482, 83, 'Kadey', 'Batouri'),
(483, 83, 'Lom-et-Djérem', 'Bertoua'),
(484, 84, 'Diamaré', 'Maroua'),
(485, 84, 'Logone-et-Chari', 'Kousséri'),
(486, 84, 'Mayo-Danay', 'Yagoua'),
(487, 84, 'Mayo-Kani', 'Kaélé'),
(488, 84, 'Mayo-Sava', 'Mora'),
(489, 84, 'Mayo-Tsanaga', 'Mokolo'),
(490, 85, 'Moungo', 'Nkongsamba'),
(491, 85, 'Nkam', 'Yabassi'),
(492, 85, 'Sanaga-Maritime', 'Édéa'),
(493, 85, 'Wouri', 'Douala'),
(494, 86, 'Bénoué', 'Garoua'),
(495, 86, 'Faro', 'Poli'),
(496, 86, 'Mayo-Louti', 'Guider'),
(497, 86, 'Mayo-Rey', 'Tcholliré'),
(498, 87, 'Boyo', 'Fundong'),
(499, 87, 'Bui', 'Kumbo'),
(500, 87, 'Donga-Mantung', 'Nkambé'),
(501, 87, 'Menchum', 'Wum'),
(502, 87, 'Mezam', 'Bamenda'),
(503, 87, 'Momo', 'Mbengwi'),
(504, 87, 'Ngo-Ketunjia', 'Ndop'),
(505, 88, 'Hauts-Plateaux', 'Baham'),
(506, 88, 'Koung-Khi', 'Bandjoun'),
(507, 88, 'Menoua', 'Dschang'),
(508, 88, 'Mifi', 'Bafoussam'),
(509, 88, 'Ndé', 'Bangangté'),
(510, 88, 'Noun', 'Foumban'),
(511, 88, 'Bamboutos', 'Mbouda'),
(512, 88, 'Haut-Nkam', 'Bafang'),
(513, 89, 'Dja-et-Lobo', 'Sangmélima'),
(514, 89, 'Mvila', 'Ebolowa'),
(515, 89, 'Océan', 'Kribi'),
(516, 89, 'Vallée-du-Ntem', 'Ambam'),
(517, 90, 'Limbé', 'Limbé'),
(518, 90, 'Koupé-Manengouba', 'Bangem'),
(519, 90, 'Lebialem', 'Menji'),
(520, 90, 'Manyu', 'Mamfé'),
(521, 90, 'Meme', 'Kumba'),
(522, 90, 'Ndian', 'Mundemba');

-- --------------------------------------------------------

--
-- Structure de la table `enseignants_titulaire`
--

DROP TABLE IF EXISTS `enseignants_titulaire`;
CREATE TABLE IF NOT EXISTS `enseignants_titulaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `classes_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_4C053A4A41807E1D` (`teacher_id`),
  KEY `IDX_4C053A4A9E225B24` (`classes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `enseignants_titulaire`
--

INSERT INTO `enseignants_titulaire` (`id`, `teacher_id`, `classes_id`, `description`) VALUES
(33, 89, 185, 'titulaire de la terminal'),
(34, 90, 186, 'titulaire de la classe '),
(35, 91, 187, 'titulaire de la seconde'),
(36, 92, 188, 'titulaire ici');

-- --------------------------------------------------------

--
-- Structure de la table `epreuves`
--

DROP TABLE IF EXISTS `epreuves`;
CREATE TABLE IF NOT EXISTS `epreuves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matieres_id` int(11) NOT NULL,
  `classes_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DB620E4282350831` (`matieres_id`),
  UNIQUE KEY `UNIQ_DB620E429E225B24` (`classes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablissements`
--

DROP TABLE IF EXISTS `etablissements`;
CREATE TABLE IF NOT EXISTS `etablissements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `adresses_id` int(11) NOT NULL,
  `type_etablissements_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigle` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_29F65EB185E14726` (`adresses_id`),
  KEY `IDX_29F65EB18BAC62AF` (`city_id`),
  KEY `IDX_29F65EB16E0A6A56` (`type_etablissements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etablissements`
--

INSERT INTO `etablissements` (`id`, `city_id`, `adresses_id`, `type_etablissements_id`, `name`, `sigle`, `date_creation`, `description`, `filename`) VALUES
(33, 50, 33, 35, 'Collège Bassong', 'CBas', '2018-10-22 08:18:00', 'un collège d\'enseignement général', 'images2.jpg'),
(34, 49, 34, 34, 'institut privé polivalent de baham', 'IPPB', '2018-10-22 08:18:01', 'un collège d\'enseignement général et technique commercial', 'download (12).jpg'),
(35, 53, 35, 33, 'Ecole maternelle de yaoundé', 'EMDY', '2018-10-22 08:18:01', 'enseignement maternelle', 'download (10).jpg'),
(36, 51, 36, 36, 'Lycée Bilingue de Baham', 'LYBANG', '2018-10-22 08:18:01', 'enseignement général', 'download (13).jpg');

-- --------------------------------------------------------

--
-- Structure de la table `etablissements_section_educ`
--

DROP TABLE IF EXISTS `etablissements_section_educ`;
CREATE TABLE IF NOT EXISTS `etablissements_section_educ` (
  `etablissements_id` int(11) NOT NULL,
  `section_educ_id` int(11) NOT NULL,
  PRIMARY KEY (`etablissements_id`,`section_educ_id`),
  KEY `IDX_468595B8D23B76CD` (`etablissements_id`),
  KEY `IDX_468595B88461170F` (`section_educ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etablissements_section_educ`
--

INSERT INTO `etablissements_section_educ` (`etablissements_id`, `section_educ_id`) VALUES
(33, 34),
(34, 33),
(35, 36),
(36, 34),
(36, 35);

-- --------------------------------------------------------

--
-- Structure de la table `events_extracurricular`
--

DROP TABLE IF EXISTS `events_extracurricular`;
CREATE TABLE IF NOT EXISTS `events_extracurricular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_87845EE71AD8D010` (`students_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facteurs_disciplinaires`
--

DROP TABLE IF EXISTS `facteurs_disciplinaires`;
CREATE TABLE IF NOT EXISTS `facteurs_disciplinaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) NOT NULL,
  `lieu_id` int(11) DEFAULT NULL,
  `motif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compteur` int(11) DEFAULT NULL,
  `autre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `date_motif` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_24B8F8306AB213CC` (`lieu_id`),
  KEY `IDX_24B8F8301AD8D010` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `facteurs_disciplinaires`
--

INSERT INTO `facteurs_disciplinaires` (`id`, `students_id`, `lieu_id`, `motif`, `compteur`, `autre`, `description`, `date_motif`) VALUES
(1, 161, NULL, 'Bavardage', 1, NULL, 'se comporte toujours comme un perroquet en salle de classe', '2018-10-22 08:18:09'),
(2, 161, NULL, 'Bavardage', 1, NULL, 'se comporte toujours comme un perroquet en salle de classe', '2018-10-22 08:18:09'),
(3, 161, NULL, 'Bavardage', 2, NULL, 'se comporte toujours comme un perroquet en salle de classe', '2018-10-22 08:18:09'),
(4, 162, NULL, 'Bavardage', 1, NULL, 'ne se calme jamais au heures de cours', '2018-10-22 08:18:09'),
(5, 163, NULL, 'absent', 1, NULL, 'absence abussive', '2018-10-22 08:18:09'),
(6, 164, NULL, 'devoir non fait ', 1, NULL, 'ne participe à aucun devoir a faire à la maison ', '2018-10-22 08:18:09');

-- --------------------------------------------------------

--
-- Structure de la table `fiche_parents`
--

DROP TABLE IF EXISTS `fiche_parents`;
CREATE TABLE IF NOT EXISTS `fiche_parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_pere_id` int(11) DEFAULT NULL,
  `photo_mere_id` int(11) DEFAULT NULL,
  `photo_tuteur_id` int(11) DEFAULT NULL,
  `students_id` int(11) NOT NULL,
  `nom_prenom_pere` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profession` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medecin_famille` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_pere` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_pere` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` longblob,
  `nom_prenom_mere` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profession_mere` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assurance_pere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assurance_mere` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_mere` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medecin_famille_mere` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_mere` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_mere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_mere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_prenom_tuteur` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_tuteur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assurance_tuteur` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_tuteur` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medecin_famille_tuteur` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_tuteur` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_tuteur` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_tuteur` longblob,
  `frere_nom1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frere_nom2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frere_nom3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_frere1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_frere2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_frere3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_frere1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_frere2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_frere3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `niveau_scolaire_frere1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `niveau_scolaire_frere2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `niveau_scolaire_frere3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_frere1` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_frere2` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_frere3` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E55146B0A372E8D` (`photo_pere_id`),
  UNIQUE KEY `UNIQ_E55146B0C3ED383` (`photo_mere_id`),
  UNIQUE KEY `UNIQ_E55146B08B123EF9` (`photo_tuteur_id`),
  KEY `IDX_E55146B01AD8D010` (`students_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `intitule` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `name`, `intitule`) VALUES
(89, 'Fançais', 'FR'),
(90, 'Philosophie', 'PHI'),
(91, 'Histoire', 'Hist'),
(92, 'Géographie', 'Géo'),
(93, 'Langue vivante 1', 'Anglais'),
(94, 'Langue vivante 2', 'Espagnol'),
(95, 'Mathématiques', 'MAT'),
(96, 'Science de la vie et de la terre', 'SVT'),
(97, 'Epréuve physique et sportive', 'EPS'),
(98, 'Sciences Physiques', 'PHY'),
(99, 'Construction Mécanique', 'CM');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `name`, `filename`) VALUES
(33, NULL, 'devalere.png'),
(34, NULL, 'devalere.png'),
(35, NULL, 'devalere.png'),
(36, NULL, 'devalere.png');

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classes_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `coeff` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2EB743D79E225B24` (`classes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modules_matieres`
--

DROP TABLE IF EXISTS `modules_matieres`;
CREATE TABLE IF NOT EXISTS `modules_matieres` (
  `modules_id` int(11) NOT NULL,
  `matieres_id` int(11) NOT NULL,
  PRIMARY KEY (`modules_id`,`matieres_id`),
  KEY `IDX_AC57CA2460D6DC42` (`modules_id`),
  KEY `IDX_AC57CA2482350831` (`matieres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id`, `name`, `description`) VALUES
(137, '6eme', ''),
(138, '2ndTIC', ''),
(139, '5eme', ''),
(140, '4emeExp', ''),
(141, '4emeAll', ''),
(142, '3emeAll', ''),
(143, '3emeExp', ''),
(144, '2ndC', ''),
(145, '2ndA4_All', ''),
(146, '2ndA4_Exp', ''),
(147, '1èreA4_Exp', ''),
(148, '1èreA4_All', ''),
(149, 'TleC', ''),
(150, 'Tle_A4_All', ''),
(151, 'Tle_A4_Exp', ''),
(152, 'Tle_TIC', ''),
(153, 'Tle_B', '');

-- --------------------------------------------------------

--
-- Structure de la table `niveau_matieres`
--

DROP TABLE IF EXISTS `niveau_matieres`;
CREATE TABLE IF NOT EXISTS `niveau_matieres` (
  `niveau_id` int(11) NOT NULL,
  `matieres_id` int(11) NOT NULL,
  PRIMARY KEY (`niveau_id`,`matieres_id`),
  KEY `IDX_3491B361B3E9C81` (`niveau_id`),
  KEY `IDX_3491B36182350831` (`matieres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `niveau_matieres`
--

INSERT INTO `niveau_matieres` (`niveau_id`, `matieres_id`) VALUES
(137, 89),
(137, 90),
(137, 91),
(137, 92),
(137, 93),
(137, 94),
(137, 95),
(137, 96),
(137, 97),
(137, 98),
(138, 89),
(138, 90),
(138, 91),
(138, 92),
(138, 93),
(138, 94),
(138, 95),
(138, 96),
(138, 97),
(138, 98),
(139, 89),
(139, 90),
(139, 91),
(139, 92),
(139, 93),
(139, 94),
(139, 95),
(139, 96),
(139, 97),
(139, 98),
(140, 89),
(140, 90),
(140, 91),
(140, 92),
(140, 93),
(140, 94),
(140, 95),
(140, 96),
(140, 97),
(140, 98),
(141, 89),
(141, 90),
(141, 91),
(141, 92),
(141, 93),
(141, 94),
(141, 95),
(141, 96),
(141, 97),
(141, 99),
(142, 89),
(142, 90),
(142, 91),
(142, 92),
(142, 93),
(142, 94),
(142, 95),
(142, 96),
(142, 97),
(142, 98),
(143, 89),
(143, 90),
(143, 91),
(143, 92),
(143, 93),
(143, 94),
(143, 95),
(143, 96),
(143, 97),
(143, 99),
(144, 89),
(144, 90),
(144, 91),
(144, 92),
(144, 93),
(144, 94),
(144, 95),
(144, 96),
(144, 97),
(144, 98),
(144, 99),
(145, 89),
(145, 90),
(145, 91),
(145, 92),
(145, 93),
(145, 94),
(145, 95),
(145, 96),
(145, 97),
(145, 98),
(146, 89),
(146, 90),
(146, 91),
(146, 92),
(146, 93),
(146, 94),
(146, 95),
(146, 96),
(146, 97),
(146, 98),
(147, 89),
(147, 90),
(147, 91),
(147, 92),
(147, 93),
(147, 94),
(147, 95),
(147, 96),
(147, 97),
(147, 98),
(148, 89),
(148, 90),
(148, 91),
(148, 92),
(148, 93),
(148, 94),
(148, 95),
(148, 96),
(148, 97),
(148, 98),
(148, 99),
(149, 89),
(149, 90),
(149, 91),
(149, 92),
(149, 93),
(149, 94),
(149, 95),
(149, 96),
(149, 97),
(149, 98),
(150, 89),
(150, 90),
(150, 91),
(150, 92),
(150, 93),
(150, 94),
(150, 95),
(150, 96),
(150, 97),
(150, 98),
(151, 89),
(151, 90),
(151, 91),
(151, 92),
(151, 93),
(151, 94),
(151, 95),
(151, 96),
(151, 97),
(151, 98),
(152, 89),
(152, 90),
(152, 91),
(152, 92),
(152, 93),
(152, 94),
(152, 95),
(152, 96),
(152, 97),
(152, 98),
(153, 89),
(153, 90),
(153, 91),
(153, 92),
(153, 93),
(153, 94),
(153, 95),
(153, 96),
(153, 97),
(153, 98);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matieres_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `students_id` int(11) NOT NULL,
  `nom_evaluation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `valeur` double NOT NULL,
  `coeff` double NOT NULL,
  `commentaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_11BA68C82350831` (`matieres_id`),
  KEY `IDX_11BA68C1AD8D010` (`students_id`),
  KEY `IDX_11BA68C41807E1D` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `matieres_id`, `teacher_id`, `students_id`, `nom_evaluation`, `valeur`, `coeff`, `commentaire`, `module`) VALUES
(66, 89, 89, 161, '1ère sequence', 12, 2, 'passable', 'groupe1'),
(67, 89, 90, 162, '1ère sequence', 10, 2, 'encore d\'éffort à fournir', 'groupe1'),
(68, 89, 90, 163, '1ère sequence', 9, 2, 'mediocre', 'groupe1'),
(69, 89, 95, 164, '1ère sequence', 15, 2, 'très bien', 'groupe1'),
(70, 89, 92, 165, '1ère sequence', 7, 2, 'mauvais', 'groupe2'),
(71, 89, 93, 166, '1ère sequence', 9, 2, 'encore d\'éffort à fournir', 'groupe1'),
(72, 89, 95, 167, '1ère sequence', 16, 2, 'Bien', 'groupe1'),
(73, 89, 92, 168, '1ère sequence', 14.5, 2, 'assez bien', 'groupe1'),
(74, 89, 98, 169, '1ère sequence', 11.5, 2, 'passable', 'groupe3'),
(75, 89, 89, 170, '1ère sequence', 8, 2, 'encore d\'éffort à fournir', 'groupe2'),
(76, 89, 91, 171, '1ère sequence', 9, 2, 'mediocre', 'groupe1'),
(77, 89, 89, 172, '1ère sequence', 17, 2, 'très bien', 'groupe1'),
(78, 89, 99, 173, '1ère sequence', 10.5, 2, 'passable', 'groupe2'),
(79, 89, 98, 174, '1ère sequence', 6, 2, 'mauvais', 'groupe1'),
(80, 89, 95, 175, '1ère sequence', 0, 2, 'null', 'groupe3'),
(81, 89, 89, 176, '1ère sequence', 11.5, 2, 'passable', 'groupe1'),
(82, 89, 89, 177, '1ère sequence', 13.5, 2, 'assez bien', 'groupe1'),
(83, 89, 89, 178, '1ère sequence', 5, 2, 'mauvais', 'groupe3'),
(84, 89, 93, 179, '1ère sequence', 7, 2, 'mauvais', 'groupe1'),
(85, 89, 89, 180, '1ère sequence', 3, 2, 'mauvais', 'groupe1'),
(86, 89, 89, 161, '2eme sequence', 14, 2, 'bien', 'groupe2'),
(87, 89, 98, 162, '2eme sequence', 6, 2, 'encore d\'éffort à fournir', 'groupe3'),
(88, 89, 89, 163, '2eme sequence', 13, 2, 'assez bien', 'groupe3'),
(89, 89, 95, 164, '2eme sequence', 11, 2, 'passable', 'groupe3'),
(90, 89, 92, 165, '2eme sequence', 9, 2, 'inssuffissant', 'groupe1'),
(91, 89, 89, 166, '2eme sequence', 10, 2, 'passable', 'groupe1'),
(92, 89, 96, 167, '2eme sequence', 18, 2, 'très bien', 'groupe3'),
(93, 89, 89, 168, '2eme sequence', 12.5, 2, 'assez bien', 'groupe1'),
(94, 89, 90, 169, '2eme sequence', 13.5, 2, 'assez bien', 'groupe1'),
(95, 89, 95, 170, '2eme sequence', 9, 2, 'encore d\'éffort à fournir', 'groupe1'),
(96, 89, 95, 171, '2eme sequence', 3, 2, 'très médiocre', 'groupe1'),
(97, 89, 95, 172, '2eme sequence', 18.6, 2, 'très bien', 'groupe1'),
(98, 89, 95, 172, '2eme sequence', 17, 2, 'très bien', 'groupe1'),
(99, 89, 93, 173, '2eme sequence', 11.5, 2, 'passable', 'groupe2'),
(100, 89, 95, 174, '2eme sequence', 15, 2, 'bien', 'groupe1'),
(101, 89, 95, 175, '2eme sequence', 0, 2, 'null', 'groupe2'),
(102, 89, 95, 176, '2eme sequence', 12.5, 2, 'assez bien', 'groupe1'),
(103, 89, 95, 177, '2eme sequence', 13.5, 2, 'assez bien', 'groupe1'),
(104, 89, 95, 178, '2eme sequence', 2, 2, 'null', 'groupe1'),
(105, 89, 95, 179, '2eme sequence', 8.5, 2, 'mauvaix', 'groupe1'),
(106, 98, 96, 180, '1ère sequence', 3, 4, 'mauvaix', 'groupe1'),
(107, 98, 94, 161, '1ère sequence', 12.5, 4, 'passable', 'groupe1'),
(108, 98, 95, 162, '1ère sequence', 13.5, 4, 'assez bien', 'groupe1'),
(109, 98, 95, 163, '1ère sequence', 13, 4, 'assez bien', 'groupe1'),
(110, 98, 89, 164, '1ère sequence', 16.75, 4, 'très bien', 'groupe3'),
(111, 98, 91, 165, '1ère sequence', 5, 4, 'mauvais', 'groupe3'),
(112, 98, 96, 166, '1ère sequence', 9, 2, 'encore d\'éffort à fournir', 'groupe2'),
(113, 89, 95, 167, '1ère sequence', 16.5, 4, 'Bien', 'groupe1'),
(114, 98, 95, 168, '1ère sequence', 1.5, 4, 'mauvais', 'groupe3'),
(115, 98, 95, 169, '1ère sequence', 10.5, 4, 'passable', 'groupe3'),
(116, 98, 95, 170, '1ère sequence', 7, 4, 'médiocre', 'groupe1'),
(117, 98, 95, 171, '1ère sequence', 5.25, 4, 'mediocre', 'groupe3'),
(118, 98, 92, 172, '1ère sequence', 15, 4, 'très bien', 'groupe3'),
(119, 98, 95, 173, '1ère sequence', 14.5, 4, 'bien', 'groupe1'),
(120, 98, 95, 174, '1ère sequence', 6.5, 4, 'mauvaix', 'groupe1'),
(121, 98, 95, 175, '1ère sequence', 10, 4, 'faut te mettre au travail', 'groupe2'),
(122, 98, 95, 176, '1ère sequence', 13.5, 4, 'assez bien', 'groupe1'),
(123, 98, 95, 177, '1ère sequence', 16, 4, ' bien', 'groupe3'),
(124, 98, 90, 178, '1ère sequence', 14, 4, 'bien', 'groupe1'),
(125, 98, 95, 179, '1ère sequence', 9, 4, 'légère progression', 'groupe1'),
(126, 90, 95, 161, '1ère sequence', 14, 2, 'bien', 'groupe2'),
(127, 90, 95, 162, '1ère sequence', 9.75, 2, 'insuffisant', 'groupe3'),
(128, 90, 95, 163, '1ère sequence', 11, 2, 'passable', 'groupe3'),
(129, 90, 95, 164, '1ère sequence', 10, 2, 'passable', 'groupe1'),
(130, 90, 89, 165, '1ère sequence', 15.25, 2, 'bien', 'groupe1'),
(131, 90, 95, 166, '1ère sequence', 13, 2, 'assez bien ', 'groupe1'),
(132, 90, 95, 167, '1ère sequence', 8, 2, 'inssuffisant', 'groupe3'),
(133, 90, 94, 168, '1ère sequence', 13.25, 2, 'assez bien ', 'groupe1'),
(134, 90, 95, 178, '1ère sequence', 16, 2, ' très bien', 'groupe1'),
(135, 90, 90, 169, '1ère sequence', 5, 2, 'médiocre ', 'groupe2'),
(136, 90, 95, 170, '1ère sequence', 3, 2, 'mauvaix', 'groupe1'),
(137, 90, 95, 171, '1ère sequence', 9, 2, 'inssuffisant', 'groupe3'),
(138, 90, 95, 172, '1ère sequence', 19, 2, 'excelent ', 'groupe1'),
(139, 90, 95, 173, '1ère sequence', 10, 2, 'passable ', 'groupe1'),
(140, 90, 95, 174, '1ère sequence', 12.5, 2, ' assez bien', 'groupe1'),
(141, 90, 95, 175, '1ère sequence', 9, 2, ' médiocre', 'groupe1'),
(142, 90, 95, 176, '1ère sequence', 11.25, 2, 'passable', 'groupe1'),
(143, 90, 95, 177, '1ère sequence', 13, 2, ' assez bien', 'groupe2'),
(144, 90, 95, 178, '1ère sequence', 14.25, 2, ' bien', 'groupe1'),
(145, 90, 95, 180, '1ère sequence', 10, 2, 'passable ', 'groupe1'),
(146, 91, 95, 161, '1ère sequence', 14.75, 3, 'bien', 'groupe2');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chef_lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A26779F3F92F3E70` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `name`, `chef_lieu`) VALUES
(81, 33, 'Adamaoua', 'Ngaoundéré'),
(82, 33, 'Centre', 'Yaoundé'),
(83, 33, 'Est', 'Bertoua'),
(84, 33, 'Extrême-Nord', 'Maroua'),
(85, 33, 'Littoral', 'Douala'),
(86, 33, 'Nord	', 'Garoua'),
(87, 33, 'Nord-Ouest', 'Bamenda'),
(88, 33, 'Ouest', 'Bafoussam'),
(89, 33, 'Sud', 'Ebolowa'),
(90, 33, 'Sud-Ouest', 'Buéa');

-- --------------------------------------------------------

--
-- Structure de la table `section_educ`
--

DROP TABLE IF EXISTS `section_educ`;
CREATE TABLE IF NOT EXISTS `section_educ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `section_educ`
--

INSERT INTO `section_educ` (`id`, `name`, `description`) VALUES
(33, 'Section Anglophone', 'ici les cours sont dispensés en langue anglaise'),
(34, 'Section Francophone', 'ici les cours sont dispensés en langue française'),
(35, 'Section Francophone', 'les cours sont dispensés en langue française'),
(36, 'Section Anglophone', 'ici les cours sont dispensés en langue anglaise');

-- --------------------------------------------------------

--
-- Structure de la table `section_educ_sys_educ`
--

DROP TABLE IF EXISTS `section_educ_sys_educ`;
CREATE TABLE IF NOT EXISTS `section_educ_sys_educ` (
  `section_educ_id` int(11) NOT NULL,
  `sys_educ_id` int(11) NOT NULL,
  PRIMARY KEY (`section_educ_id`,`sys_educ_id`),
  KEY `IDX_EEA055DA8461170F` (`section_educ_id`),
  KEY `IDX_EEA055DA88793048` (`sys_educ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `section_educ_sys_educ`
--

INSERT INTO `section_educ_sys_educ` (`section_educ_id`, `sys_educ_id`) VALUES
(33, 25),
(34, 26),
(35, 27),
(36, 26);

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etablissements_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fonction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexe` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test` datetime DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_426EF392D23B76CD` (`etablissements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`id`, `etablissements_id`, `name`, `fonction`, `tel`, `sexe`, `mail`, `test`, `filename`) VALUES
(153, 34, 'Jane Doe', 'Surveillant', '678542879', 'F', 'staff1@staff1.com', '2018-10-22 08:18:01', 'image17.png'),
(154, 34, 'Sarah Joelle', 'Censeurs 1', '676523849', 'F', 'Sarah@Sarah.com', '2018-10-22 08:18:01', 'image1.png'),
(155, 34, 'TSafack Honoré', 'Surveillant Secteur 1', '253265846', 'M', 'TSafack@TSafack.com', '2018-10-22 08:18:01', 'image2.png'),
(156, 34, 'Kamdem  Joe', 'infimière', '356332287', 'M', 'Joe@Joe.fr', '2018-10-22 08:18:01', 'image3.png'),
(157, 34, 'Ndomgang Brice', 'Provisseur', '695965287', 'M', 'Brice@Brice.fr', '2018-10-22 08:18:01', 'image4.png'),
(158, 34, 'Jane Doe', 'Surveillant', '678542879', 'M', 'staff1@staff1.com', '2018-10-22 08:18:01', 'image5.png'),
(159, 34, 'Anita Mamaha', 'Assistante de direction', '687548210', 'F', 'Anita@Anita.com', '2018-10-22 08:18:01', 'dp.jpg'),
(160, 34, 'Teukap Jean', 'Technicien Laboratoire', '678542879', 'M', 'Jean@Jean.com', '2018-10-22 08:18:01', 'image7.png'),
(161, 34, 'Domche Michèlle', 'Censeurs 2', '678542879', 'F', 'Domche@Domche.com', '2018-10-22 08:18:01', 'image8.png'),
(162, 34, 'Kamguia Dév', 'Virgil', '228547856', 'M', 'Dév@Dév.com', '2018-10-22 08:18:01', 'image9.png'),
(163, 34, 'Kam Deval', 'Surveillant', '678542879', 'M', 'Deval@Deval.com', '2018-10-22 08:18:01', 'image10.png'),
(164, 34, 'Nakmanou flore', 'Chef d’ateliers ', '670162957', 'F', 'flore@flore.fr', '2018-10-22 08:18:01', 'flore.png'),
(165, 34, 'Kameni Jeannine', 'Assistante sociale ', '694965269', 'F', 'Jeannine@Jeannine.cm', '2018-10-22 08:18:01', 'download (12).jpg'),
(166, 34, 'Mbarga Lorose Joelle', 'Corps médical ', '696385893', 'F', 'Lorose@Lorose.com', '2018-10-22 08:18:01', 'image11.jpg'),
(167, 34, 'Madiesse Estelle Amelie', 'Chef d’établissement ', '223587485', 'F', 'Estelle@Estelle.com', '2018-10-22 08:18:01', 'image12.jpg'),
(168, 34, 'Kouam Diane', 'Surveillants secteur ', '678542879', 'F', 'Diane@Diane.com', '2018-10-22 08:18:01', 'image14.jpg'),
(169, 34, 'Tchuendem Jasmine', 'Censeurs 3', '3358622014', 'F', 'Jasmine@Jasmine.com', '2018-10-22 08:18:01', 'image15.jpg'),
(170, 34, 'Jipgang Cirile', 'Gardiens ', '678542879', 'M', 'Cirile@Cirile.com', '2018-10-22 08:18:01', 'image16.png'),
(171, 34, 'Zeko Alain', 'Technicien Labo ', '678542879', 'M', 'Zeko@Zeko.com', '2018-10-22 08:18:01', 'image6.png');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classes_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuteur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_pere` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_mere` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_tuteur` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_pere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_mere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_tuteur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_pere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_mere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_tuteur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_parents` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nouveau` tinyint(1) NOT NULL,
  `redoublant` tinyint(1) NOT NULL,
  `etude_dossier` tinyint(1) NOT NULL,
  `anneeNais` date DEFAULT NULL,
  `lieu_nais` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cycle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moy_passage_classe` double DEFAULT NULL,
  `rang` int(11) DEFAULT NULL,
  `last_school` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_chef_last_school` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexe` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `test` datetime DEFAULT NULL,
  `groupe_sanguin` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pathogie_particuliere` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allergie_alimentaire` longtext COLLATE utf8_unicode_ci,
  `allergie_medicamenteuse` longtext COLLATE utf8_unicode_ci,
  `dispense` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medecin_familiale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_medecin_familiale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assurance_famille` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hopital_agree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rhesus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inaptitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A4698DB29E225B24` (`classes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `classes_id`, `name`, `prenom`, `pere`, `mere`, `tuteur`, `tel_pere`, `tel_mere`, `tel_tuteur`, `email_pere`, `email_mere`, `email_tuteur`, `prof_pere`, `prof_mere`, `prof_tuteur`, `residence_parents`, `proche1`, `tel_proche1`, `proche2`, `tel_proche2`, `proche3`, `tel_proche3`, `nouveau`, `redoublant`, `etude_dossier`, `anneeNais`, `lieu_nais`, `cycle`, `serie`, `moy_passage_classe`, `rang`, `last_school`, `name_chef_last_school`, `sexe`, `test`, `groupe_sanguin`, `pathogie_particuliere`, `allergie_alimentaire`, `allergie_medicamenteuse`, `dispense`, `medecin_familiale`, `tel_medecin_familiale`, `assurance_famille`, `hopital_agree`, `rhesus`, `inaptitude`, `filename`) VALUES
(161, 185, 'Eba', 'Tatiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Ntui', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud1.jpg'),
(162, 186, 'Tekom', 'Gilles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2018-10-22', 'Bafoussam', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud2.jpg'),
(163, 186, 'Magni', 'Françoise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2018-10-22', 'Ebolowa', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud3.jpg'),
(164, 187, 'Wamba', 'Leslie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2018-10-22', 'Douala', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud4.jpg'),
(165, 188, 'Teguekeng', 'Platini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2018-10-22', 'Mbouda', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud5.jpg'),
(166, 187, 'Bepe', 'Paul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Dschang', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud6.jpg'),
(167, 188, 'Kouam', 'Calvin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Bafang', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, 'au sucre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud7.jpg'),
(168, 189, 'Kuatse', 'Dieudoné', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2018-10-22', 'Baham', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, 'lait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud8.jpg'),
(169, 190, 'Simo', 'Marc Aurel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2018-10-22', 'Bafang', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, 'amidon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud9.jpg'),
(170, 189, 'Wakam', 'Gabel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2018-10-22', 'Bafang', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, 'huile rouge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud10.jpg'),
(171, 190, 'Djackpou', 'Sandrine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2018-10-22', 'Bamenda', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, 'pâtes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud11.jpg'),
(172, 197, 'Ewombé', 'Sarah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Bafia', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, 'sucrerie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud12.jpg'),
(173, 191, 'Eyong', 'Sarah aniesse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Yaoundé', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud13.jpg'),
(174, 191, 'Nlend', 'Nadine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2018-10-22', 'Douala', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud14.jpg'),
(175, 192, 'Makamtche', 'Françise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Bandjoun', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud15.jpg'),
(176, 192, 'Zeko', 'Gervais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Baham', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud16.jpg'),
(177, 193, 'Messina', 'Bijoux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2018-10-22', 'Douala', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud17.jpg'),
(178, 194, 'Talimita', 'Platini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Bafang', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud18.jpg'),
(179, 196, 'Fapou', 'Gabet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2018-10-22', 'Bangoua', NULL, NULL, NULL, NULL, NULL, NULL, 'M', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud19.jpg'),
(180, 195, 'Ebeng Olock', 'Melissa Gloria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2018-10-22', 'Nkongsamba', NULL, NULL, NULL, NULL, NULL, NULL, 'F', '2018-10-22 08:18:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stud20.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sys_educ`
--

DROP TABLE IF EXISTS `sys_educ`;
CREATE TABLE IF NOT EXISTS `sys_educ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sys_educ`
--

INSERT INTO `sys_educ` (`id`, `name`, `description`) VALUES
(25, 'Enseignement technique industriel', 'l\'enseignement est professionel orienté'),
(26, 'Enseignement tchenique commerciale', 'l\'enseignement est professionel orienté commerce'),
(27, 'Enseignement général', 'l\'enseignement n\'est pas professionel juste thérique');

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etablissements_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `anneeNais` date DEFAULT NULL,
  `test` datetime DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0F6A6D5D23B76CD` (`etablissements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id`, `etablissements_id`, `name`, `prenom`, `tel`, `email`, `sexe`, `anneeNais`, `test`, `filename`) VALUES
(89, 34, 'Fosting', 'Damien', '653552689', 'Damien@Damien.fr', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof1.jpg'),
(90, 34, 'Pooja ', 'Patel', '6784259863', 'Patel@Patel.fr', 'F', '2018-10-22', '2018-10-22 08:18:02', 'prof2.jpg'),
(91, 34, 'Ngongang', 'Styve', '696587428', 'Styve@gmail.com', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof3.jpg'),
(92, 34, 'Megha ', 'Trivedi', '542478562', 'Trivedi@Damien.fr', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof4.jpg'),
(93, 34, 'Fosting', 'Damien', '69783689', 'Damien@Damien.fr', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof5.jpg'),
(94, 34, 'Jacob', 'Ryan', '653552689', 'Ryan@hotmail.com', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof6.jpg'),
(95, 34, 'Soni', 'Jay', '3254789656', 'Jay@Jahoo.fr', 'F', '2018-10-22', '2018-10-22 08:18:02', 'prof7.jpg'),
(96, 34, 'Deo', 'John', '653552689', 'john@gmail.com', 'M', '2018-10-22', '2018-10-22 08:18:02', 'prof8.jpg'),
(97, 34, 'Smith', 'sarah', '6444543564', 'sarah@gmail.com', 'F', '2018-10-22', '2018-10-22 08:18:02', 'prof9.jpg'),
(98, 34, 'Pooja ', 'Patel', '653552689', 'pooja@gmail.com', 'F', '2018-10-22', '2018-10-22 08:18:02', 'prof10.jpg'),
(99, 34, 'Rajesh', 'dev', '4444565756', 'rajesh@gmail.com', 'M', '2018-10-22', '2018-10-22 08:18:02', 'dev.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `teacher_matieres`
--

DROP TABLE IF EXISTS `teacher_matieres`;
CREATE TABLE IF NOT EXISTS `teacher_matieres` (
  `teacher_id` int(11) NOT NULL,
  `matieres_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`,`matieres_id`),
  KEY `IDX_8C81C05941807E1D` (`teacher_id`),
  KEY `IDX_8C81C05982350831` (`matieres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `teacher_matieres`
--

INSERT INTO `teacher_matieres` (`teacher_id`, `matieres_id`) VALUES
(89, 92),
(90, 89),
(91, 90),
(92, 91),
(93, 92),
(94, 94),
(95, 95),
(96, 95),
(97, 96),
(98, 97),
(99, 98);

-- --------------------------------------------------------

--
-- Structure de la table `type_etablissements`
--

DROP TABLE IF EXISTS `type_etablissements`;
CREATE TABLE IF NOT EXISTS `type_etablissements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `type_etablissements`
--

INSERT INTO `type_etablissements` (`id`, `name`, `description`) VALUES
(33, 'Université', 'établissement d\'enseignement superieur'),
(34, 'Secondaire', 'établissement d\'enseignement Secondaire'),
(35, 'Primaire', 'établissement d\'enseignement de base'),
(36, 'Maternelle', 'établissement d\'enseignement Maternelle pour les tous petits');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_profile_id` int(11) DEFAULT NULL,
  `etablissements_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `phone_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`),
  UNIQUE KEY `UNIQ_8D93D649809EFCB0` (`photo_profile_id`),
  UNIQUE KEY `UNIQ_8D93D649D23B76CD` (`etablissements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `photo_profile_id`, `etablissements_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `phone_number`) VALUES
(33, 33, NULL, 'user1', 'user1', 'user1@user1.com', 'user1@user1.com', 1, NULL, '$2y$13$jzA8xvoH5CLpq76DM3MsL.9.1O6Ecw8eii27zSTbNtLViAZKTqzEW', NULL, NULL, NULL, 'a:0:{}', '6565565685'),
(34, 34, 33, 'test', 'test', 'test@test.com', 'test@test.com', 1, NULL, '$2y$13$5ewILyQuk7nlAkcmtUbc.u5kS5ac7MJj89APfQ4VWQ03O21dPug0y', NULL, NULL, NULL, 'a:0:{}', '87542862267'),
(35, 35, 34, 'rapmis', 'rapmis', 'rapmis@rapmis.com', 'rapmis@rapmis.com', 1, NULL, '$2y$13$5HtuFlyxki3BY4bXuX7WKey1UaWLRBcL7TxDPuPIWLJv6BiVq45Ni', '2019-01-11 10:57:33', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', '2678495213'),
(36, 36, 35, 'user2', 'user2', 'user2@user2.com', 'user2@user2.com', 1, NULL, '$2y$13$rYSPodxkKyDBqwqxRQFfOuYUXkH7pnG.HFiXmL583WwQw990Ik7ma', NULL, NULL, NULL, 'a:0:{}', '2145796585456');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chef_department`
--
ALTER TABLE `chef_department`
  ADD CONSTRAINT `FK_2A76BDD941807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK_2A76BDD9F46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`id`);

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234F1B3F295` FOREIGN KEY (`departments_id`) REFERENCES `department` (`id`);

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `FK_2ED7EC5B3E9C81` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`id`),
  ADD CONSTRAINT `FK_2ED7EC5D23B76CD` FOREIGN KEY (`etablissements_id`) REFERENCES `etablissements` (`id`);

--
-- Contraintes pour la table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_CD1DE18AFCE83E5F` FOREIGN KEY (`regions_id`) REFERENCES `regions` (`id`);

--
-- Contraintes pour la table `enseignants_titulaire`
--
ALTER TABLE `enseignants_titulaire`
  ADD CONSTRAINT `FK_4C053A4A41807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK_4C053A4A9E225B24` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `epreuves`
--
ALTER TABLE `epreuves`
  ADD CONSTRAINT `FK_DB620E4282350831` FOREIGN KEY (`matieres_id`) REFERENCES `matieres` (`id`),
  ADD CONSTRAINT `FK_DB620E429E225B24` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `etablissements`
--
ALTER TABLE `etablissements`
  ADD CONSTRAINT `FK_29F65EB16E0A6A56` FOREIGN KEY (`type_etablissements_id`) REFERENCES `type_etablissements` (`id`),
  ADD CONSTRAINT `FK_29F65EB185E14726` FOREIGN KEY (`adresses_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `FK_29F65EB18BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Contraintes pour la table `etablissements_section_educ`
--
ALTER TABLE `etablissements_section_educ`
  ADD CONSTRAINT `FK_468595B88461170F` FOREIGN KEY (`section_educ_id`) REFERENCES `section_educ` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_468595B8D23B76CD` FOREIGN KEY (`etablissements_id`) REFERENCES `etablissements` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `events_extracurricular`
--
ALTER TABLE `events_extracurricular`
  ADD CONSTRAINT `FK_87845EE71AD8D010` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Contraintes pour la table `facteurs_disciplinaires`
--
ALTER TABLE `facteurs_disciplinaires`
  ADD CONSTRAINT `FK_24B8F8301AD8D010` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FK_24B8F8306AB213CC` FOREIGN KEY (`lieu_id`) REFERENCES `matieres` (`id`);

--
-- Contraintes pour la table `fiche_parents`
--
ALTER TABLE `fiche_parents`
  ADD CONSTRAINT `FK_E55146B01AD8D010` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FK_E55146B08B123EF9` FOREIGN KEY (`photo_tuteur_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_E55146B0A372E8D` FOREIGN KEY (`photo_pere_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_E55146B0C3ED383` FOREIGN KEY (`photo_mere_id`) REFERENCES `media` (`id`);

--
-- Contraintes pour la table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `FK_2EB743D79E225B24` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `modules_matieres`
--
ALTER TABLE `modules_matieres`
  ADD CONSTRAINT `FK_AC57CA2460D6DC42` FOREIGN KEY (`modules_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AC57CA2482350831` FOREIGN KEY (`matieres_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `niveau_matieres`
--
ALTER TABLE `niveau_matieres`
  ADD CONSTRAINT `FK_3491B36182350831` FOREIGN KEY (`matieres_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3491B361B3E9C81` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_11BA68C1AD8D010` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FK_11BA68C41807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK_11BA68C82350831` FOREIGN KEY (`matieres_id`) REFERENCES `matieres` (`id`);

--
-- Contraintes pour la table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `FK_A26779F3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `section_educ_sys_educ`
--
ALTER TABLE `section_educ_sys_educ`
  ADD CONSTRAINT `FK_EEA055DA8461170F` FOREIGN KEY (`section_educ_id`) REFERENCES `section_educ` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EEA055DA88793048` FOREIGN KEY (`sys_educ_id`) REFERENCES `sys_educ` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_426EF392D23B76CD` FOREIGN KEY (`etablissements_id`) REFERENCES `etablissements` (`id`);

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `FK_A4698DB29E225B24` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `FK_B0F6A6D5D23B76CD` FOREIGN KEY (`etablissements_id`) REFERENCES `etablissements` (`id`);

--
-- Contraintes pour la table `teacher_matieres`
--
ALTER TABLE `teacher_matieres`
  ADD CONSTRAINT `FK_8C81C05941807E1D` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8C81C05982350831` FOREIGN KEY (`matieres_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649809EFCB0` FOREIGN KEY (`photo_profile_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_8D93D649D23B76CD` FOREIGN KEY (`etablissements_id`) REFERENCES `etablissements` (`id`);
--
-- Base de données :  `santalert`
--
CREATE DATABASE IF NOT EXISTS `santalert` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `santalert`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `telephone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`, `description`, `telephone`, `email`, `gender`) VALUES
(1, '', 'devalK123', 'je cherche', '++2379685427', 'baham@dec@gmail.com', ''),
(2, '', 'deval123K', 'test', '215478652', 'deval@gmail.fr', ''),
(3, 'kamguia', 'deval123K', 'test', '215478652', 'deval@gmail.fr', ''),
(4, 'stella', '123stella', 'rien', '846558965', 'stella@kuisseu.fr', ''),
(5, 'maeva', '147deval', 'tyvgh', '87465989445', 'deval^ddeval.fr', 'fÃ©minin'),
(6, 'monadmin', 'monadmin', 'rien', '676467228', 'ezfd@zed.cm', 'masculin'),
(7, 'prisca', 'dianeP@', 'juste une assiatante ', '674357009', 'priscadiane@yahoo.fr', 'fÃ©minin');

-- --------------------------------------------------------

--
-- Structure de la table `agendadepartement`
--

DROP TABLE IF EXISTS `agendadepartement`;
CREATE TABLE IF NOT EXISTS `agendadepartement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `date_realisation` date DEFAULT NULL,
  `type_programme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_debut` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  `PersonelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_18A743E3CEC3FD2F` (`patients_id`),
  KEY `IDX_18A743E399C0B38B` (`PersonelEts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auscultation`
--

DROP TABLE IF EXISTS `auscultation`;
CREATE TABLE IF NOT EXISTS `auscultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultation_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_48B4CF5F62FF6CDF` (`consultation_id`),
  KEY `IDX_48B4CF5F54A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `auscultation`
--

INSERT INTO `auscultation` (`id`, `consultation_id`, `contenu`, `personelEts_id`) VALUES
(1, 1, 'PALU', NULL),
(2, 2, 'forte prÃ©sence de fiÃ¨vre', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `auto_med`
--

DROP TABLE IF EXISTS `auto_med`;
CREATE TABLE IF NOT EXISTS `auto_med` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datecreate` datetime NOT NULL,
  `symtome` longtext COLLATE utf8_unicode_ci NOT NULL,
  `traitement` longtext COLLATE utf8_unicode_ci NOT NULL,
  `evaluation` longtext COLLATE utf8_unicode_ci,
  `observation` longtext COLLATE utf8_unicode_ci,
  `cout_traitement` double DEFAULT NULL,
  `patients_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UNIQ_CDD652AFCEC3FD2F` (`patients_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `auto_med`
--

INSERT INTO `auto_med` (`id`, `datecreate`, `symtome`, `traitement`, `evaluation`, `observation`, `cout_traitement`, `patients_id`) VALUES
(28, '2018-10-11 08:10:00', 'mal au ventre', 'flagyl', 'bon!!', 'envoie aux toilettes', 300, 1),
(30, '2018-11-16 14:01:00', 'mal au jambes', 'ibu', 'ddd', 'ddd', 542, 1),
(31, '2018-12-13 00:21:00', 'vomi', 'produit naturel', 'rien', 'bien', 542, 1),
(32, '2018-11-25 14:02:00', 'mal aux yeux ', 'mÃ©dicaments', 'normal', 'bien', 2500, 1),
(33, '2018-11-25 02:12:00', 'mal de gorge', 'baum au niveau du cou', 'rien', 'rien', 1450, 12),
(34, '2018-11-26 02:12:00', 'maux de tÃªte', 'paracÃ©tamol', 'cool', 'bien', 1500, 12),
(35, '2018-12-22 16:22:00', 'fiÃ¨vre', 'ibu', 'rien', 'tous les soir', 595, 1);

-- --------------------------------------------------------

--
-- Structure de la table `bilan`
--

DROP TABLE IF EXISTS `bilan`;
CREATE TABLE IF NOT EXISTS `bilan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` text COLLATE utf8_unicode_ci NOT NULL,
  `temperature` double DEFAULT NULL,
  `taille` double DEFAULT NULL,
  `tension` double DEFAULT NULL,
  `dateCreate` datetime DEFAULT NULL,
  `patients_id` int(11) DEFAULT NULL,
  `poidsActuel` double DEFAULT NULL,
  `poidsNormal` double DEFAULT NULL,
  `imc` double DEFAULT NULL,
  `tgc` double DEFAULT NULL,
  `masseMinEraleOsseuse` double DEFAULT NULL,
  `pourcentageEau` double DEFAULT NULL,
  `masseMusculaire` double DEFAULT NULL,
  `evaluationSihouette` double DEFAULT NULL,
  `tgViscerale` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patients_id` (`patients_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `bilan`
--

INSERT INTO `bilan` (`id`, `intitule`, `temperature`, `taille`, `tension`, `dateCreate`, `patients_id`, `poidsActuel`, `poidsNormal`, `imc`, `tgc`, `masseMinEraleOsseuse`, `pourcentageEau`, `masseMusculaire`, `evaluationSihouette`, `tgViscerale`) VALUES
(1, 'jjxrytckuyjbk', 56, 444, 645, '2015-11-01 00:25:14', 1, 52, 145, 754, 754, 52, 54, 32, 52, 52),
(2, 'devalere', 56, 444, 645, '2015-11-11 00:45:50', 1, 52, 145, 542, 754, 14, 54, 13, 52, 52),
(3, 'suivi 01 jan', 37, 48, 48, '2018-12-11 00:00:00', 1, 66, 98, 23, 56, 89, 652, 2, 9, 89),
(4, 'paramÃ¨tre', 37, 178, 66, '2018-11-25 00:21:00', 12, 85, NULL, 24, 12, 32, 54, 21, 45, 20);

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
CREATE TABLE IF NOT EXISTS `consultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `hopital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_medecin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symptomes` longtext COLLATE utf8_unicode_ci,
  `particularite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreate` datetime DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_964685A6CEC3FD2F` (`patients_id`),
  KEY `IDX_964685A654A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `consultation`
--

INSERT INTO `consultation` (`id`, `patients_id`, `hopital`, `nom_medecin`, `image`, `symptomes`, `particularite`, `datecreate`, `personelEts_id`) VALUES
(1, 1, '6', 'Dr Kenfack', NULL, NULL, NULL, '2018-12-26 12:13:00', 24),
(2, 1, '6', 'Dr Nakmanou', NULL, NULL, NULL, '2018-12-28 10:00:00', 24);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etablissement_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `etablissement_id` (`etablissement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `etablissement_id`, `nom`, `description`) VALUES
(1, 6, 'chirugie', 'faire de la chirugie'),
(2, 6, 'laboratoire', 'faire des examens');

-- --------------------------------------------------------

--
-- Structure de la table `emailusers`
--

DROP TABLE IF EXISTS `emailusers`;
CREATE TABLE IF NOT EXISTS `emailusers` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

DROP TABLE IF EXISTS `etablissement`;
CREATE TABLE IF NOT EXISTS `etablissement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateExpiration` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`id`, `nom`, `telephone`, `email`, `type`, `adresse`, `ville`, `statut`, `code`, `dateExpiration`) VALUES
(6, 'hÃ´pital de district', '68455312', 'distric@deido.fr', 'hÃ´pital', 'deido', 'douala', 'public', 'CD00', NULL),
(7, 'hÃ´pital des soeur de logpom', '79516315', 'hospital@sister.fr', 'hÃ´pital', 'logpom', 'douala', 'privÃ©', '', NULL),
(8, 'pharmaci de logpom', '6845865532', 'pharm@log.com', 'pharmacie', 'logpom', 'douala', 'privÃ©', '', NULL),
(9, 'hÃ´pital aluchem de sable bonamoussadi', '698453156', 'sable@aluchem.fr', 'labo', 'bonamoussadi', 'douala', 'privÃ©', '', NULL),
(10, 'quintini', '895625654', 'rfyvg@dtfch.fr', 'hÃ´pital', 'akwa', 'douala', 'public', 'KT00', NULL),
(11, 'RT', '3245768', 'RD@re.fr', 'formation_sanitaire', 'rt', 'FG', 'Public', 'trbg', NULL),
(12, 'evrfds', 'ebgfds', 'efbef@ver.fr', 'formation_sanitaire', 'rzgfd', 'befdsc', 'Public', 'refv', NULL),
(13, 'evrfds', 'ebgfds', 'efbef@ver.fr', 'formation_sanitaire', 'rzgfd', 'befdsc', 'Public', 'refv', NULL),
(14, 'rbsd', '3243667544', 'HGDCVB', 'formation_sanitaire', 'HGVCB', 'fgdv', 'PrivÃ©', 'HGFBCV', NULL),
(15, 'yvuhbijk', 'ubhikj', 'ubyhj', 'formation_sanitaire', 'uybihkj', 'uhikj', 'PrivÃ©', 'ibjknl', NULL),
(16, 'tugjyh', '345678', 'yuthgf', 'formation_sanitaire', 'vgjhn', 'jgvhk', 'PrivÃ©', 'vgth', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultation_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_514C8FEC62FF6CDF` (`consultation_id`),
  KEY `IDX_514C8FEC54A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`id`, `consultation_id`, `contenu`, `personelEts_id`) VALUES
(1, 1, 'goute Ã©paisse', 24),
(2, 2, 'goute Ã©paisse', 24);

-- --------------------------------------------------------

--
-- Structure de la table `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE IF NOT EXISTS `feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `feed` text,
  `user_id_fk` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `grossesse`
--

DROP TABLE IF EXISTS `grossesse`;
CREATE TABLE IF NOT EXISTS `grossesse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `rang` int(11) NOT NULL,
  `date_accouchement` date DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_accouchement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verdict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observation` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `UNIQ_CDD652AFCEC3FD2F` (`patients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hospitalisation`
--

DROP TABLE IF EXISTS `hospitalisation`;
CREATE TABLE IF NOT EXISTS `hospitalisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `consultation_id` int(11) DEFAULT NULL,
  `date_entree` datetime DEFAULT NULL,
  `date_sortie` datetime DEFAULT NULL,
  `nom_hopital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `causes` longtext COLLATE utf8_unicode_ci,
  `symptomes` longtext COLLATE utf8_unicode_ci,
  `diagnostique` longtext COLLATE utf8_unicode_ci,
  `medecinTraitant` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recommandationsAlimentaire` longtext COLLATE utf8_unicode_ci,
  `numeroChambre` int(11) DEFAULT NULL,
  `numeroLit` int(11) DEFAULT NULL,
  `numeroDossier` int(11) DEFAULT NULL,
  `particularités` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_67C0595962FF6CDF` (`consultation_id`),
  KEY `IDX_67C05959CEC3FD2F` (`patients_id`),
  KEY `IDX_67C0595954A4CB53` (`personelEts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `imagesdata`
--

DROP TABLE IF EXISTS `imagesdata`;
CREATE TABLE IF NOT EXISTS `imagesdata` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `b64` text,
  `user_id_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maladie_chronique`
--

DROP TABLE IF EXISTS `maladie_chronique`;
CREATE TABLE IF NOT EXISTS `maladie_chronique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medecin_traitant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restriction` longtext COLLATE utf8_unicode_ci,
  `recommandation` longtext COLLATE utf8_unicode_ci,
  `commentaire` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `UNIQ_CDD652AFCEC3FD2F` (`patients_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `maladie_chronique`
--

INSERT INTO `maladie_chronique` (`id`, `patients_id`, `nom`, `medecin_traitant`, `restriction`, `recommandation`, `commentaire`) VALUES
(1, 1, 'grande plaie Ã  la cheville', 'Dr bouba', 'Ã©viter les longues marches', 'beaucoup de repos', 'je traÃ®ne cela depuis des annÃ©es'),
(2, 1, 'sinusite', 'Dr Moustaphare', 'Ã©viter le froid, et tout ce qui est glacÃ©', 'toujours se mettre au chaud', 'donne constament la grippe'),
(3, 1, 'hernie', 'Dr Assomo', 'Ã©vite de fournir trop d\"Ã©ffort', 'assez de repos', 'juste sous observation'),
(4, 1, 'gangraine Ã  la cheville', 'Mbanga', 'Ã©viter les marches', 'repos ', 'encore sous observation'),
(5, 1, 'Mal Ã  la dent', 'mon dentiste ', 'sucrerie', 'toujours se brosser', 'rien de special');

-- --------------------------------------------------------

--
-- Structure de la table `ordonance`
--

DROP TABLE IF EXISTS `ordonance`;
CREATE TABLE IF NOT EXISTS `ordonance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultation_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_99240B9C62FF6CDF` (`consultation_id`),
  KEY `IDX_99240B9C54A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `ordonance`
--

INSERT INTO `ordonance` (`id`, `consultation_id`, `contenu`, `personelEts_id`) VALUES
(1, 1, 'quatem', 24),
(3, 2, 'artemether', 24);

-- --------------------------------------------------------

--
-- Structure de la table `parametres`
--

DROP TABLE IF EXISTS `parametres`;
CREATE TABLE IF NOT EXISTS `parametres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultation_id` int(11) DEFAULT NULL,
  `datecreate` datetime DEFAULT NULL,
  `ta` double DEFAULT NULL,
  `db` double DEFAULT NULL,
  `bg` double DEFAULT NULL,
  `pouls` double DEFAULT NULL,
  `taille` double DEFAULT NULL,
  `ddr` double DEFAULT NULL,
  `dpa` double DEFAULT NULL,
  `tension` double DEFAULT NULL,
  `poids` double DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1A79799D62FF6CDF` (`consultation_id`),
  KEY `IDX_1A79799D54A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `parametres`
--

INSERT INTO `parametres` (`id`, `consultation_id`, `datecreate`, `ta`, `db`, `bg`, `pouls`, `taille`, `ddr`, `dpa`, `tension`, `poids`, `personelEts_id`) VALUES
(1, 2, '2018-12-28 11:01:00', 32, 32, 56, 174, 65, 54, 66, 37, 89, 24);

-- --------------------------------------------------------

--
-- Structure de la table `param_regime`
--

DROP TABLE IF EXISTS `param_regime`;
CREATE TABLE IF NOT EXISTS `param_regime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regime_id` int(11) DEFAULT NULL,
  `poids` double NOT NULL,
  `dateParam` datetime NOT NULL,
  `temperature` double DEFAULT NULL,
  `tension` double DEFAULT NULL,
  `observation` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `UNIQ_F25609CA35E7D534` (`regime_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `param_regime`
--

INSERT INTO `param_regime` (`id`, `regime_id`, `poids`, `dateParam`, `temperature`, `tension`, `observation`) VALUES
(1, 1, 100, '2018-11-27 00:21:00', 38, 41, 'rien pour le moment, mais Ã§a va.'),
(2, 5, 98, '2018-11-29 07:50:00', 68, 85, 'une perte lÃ©gÃ¨re de poids'),
(4, 1, 98, '2018-11-30 00:22:00', 36, 45, 'juste mon poids');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `anneeNais` date DEFAULT NULL,
  `lieuNais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lieuService` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreate` datetime DEFAULT NULL,
  `telBureau` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residencePrincipal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residenceSecondaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomPere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telPere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailPere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionPere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quartierPere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruePere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quartierMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rueMere` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quartierTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rueTuteur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailProche1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residenceProche1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionProche1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailProche2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residenceProche2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionProche2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proche3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_proche3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailProche3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residenceProche3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionProche3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupeSanguin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allergie` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incapacite` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medecinFamille` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assurance` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rhesus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationPhisyque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signeParticulier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `nom`, `password`, `telephone`, `email`, `prenom`, `anneeNais`, `lieuNais`, `profession`, `filename`, `lieuService`, `dateCreate`, `telBureau`, `residencePrincipal`, `residenceSecondaire`, `nomPere`, `telPere`, `emailPere`, `professionPere`, `quartierPere`, `ruePere`, `nomMere`, `telMere`, `emailMere`, `professionMere`, `quartierMere`, `rueMere`, `nomTuteur`, `telTuteur`, `emailTuteur`, `professionTuteur`, `quartierTuteur`, `rueTuteur`, `proche1`, `tel_proche1`, `emailProche1`, `residenceProche1`, `professionProche1`, `proche2`, `tel_proche2`, `emailProche2`, `residenceProche2`, `professionProche2`, `proche3`, `tel_proche3`, `emailProche3`, `residenceProche3`, `professionProche3`, `groupeSanguin`, `allergie`, `incapacite`, `medecinFamille`, `assurance`, `rhesus`, `observationPhisyque`, `signeParticulier`) VALUES
(1, 'deval', '2valere', '676467228', 'devalerek@yahoo.fr', 'devalere', '1990-07-11', 'Bafang', 'Etudiant', '', '', '2018-10-25 00:00:00', '694965269', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'marie', 'elleclaire', '864532', 'elle', 'claire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ffffffff', 'ffffff', '685332', 'ffffff', 'fffffff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'yibhkj', 'hk  kn', 'vhbkj', 'hbikj', 'vuhjbk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'egdvf', 'erfdwvc', 'bdetgc', 'eedbfv', 'eebdfwxv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'janvier', 'dev@542Ked', '864532', 'fev@oct.fr', 'fevrier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ftuyolbijk', 'fgykvhubljik', 'fgkhvljbk', 'ciyvuhlbijk', 'ycvuylibujmkcyvgulhbjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ulhbjnk', 'gvuhbljiknl', 'iphuoyguhbkj', 'uvbhljkn', 'ubijnkloljk,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'flore', 'flore@nak123K', '84751156', 'flore@nak.fr', 'nak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'nadine', 'nadine', '84659865', 'eafc', 'nadine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'piÃ¨re', 'gilles', '5688965', 'gzresdq', 'gilles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'sandrine', 'sandrine', '9864', 'rezvd', 'sandrine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'medonc', 'medonc', '8965', 'zrvs48+5', 'medonc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ujhg', 'Ã¨-ghj', '32456789', 'uybhjk@YVGH.fr', 'ugbjh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'terfd', 'FYGHÃ¨_', '546789876', 'fhrgbdfv', 'rgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `patientsagenda`
--

DROP TABLE IF EXISTS `patientsagenda`;
CREATE TABLE IF NOT EXISTS `patientsagenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `datedebut` datetime DEFAULT NULL,
  `datefin` datetime DEFAULT NULL,
  `nature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observation` longtext COLLATE utf8_unicode_ci,
  `tiers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  `consultation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2FBE726562FF6CDF` (`consultation_id`),
  KEY `patients_id` (`patients_id`),
  KEY `IDX_2FBE726554A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `patientsagenda`
--

INSERT INTO `patientsagenda` (`id`, `patients_id`, `datedebut`, `datefin`, `nature`, `lieu`, `observation`, `tiers`, `personelEts_id`, `consultation_id`) VALUES
(1, 1, '2018-11-13 01:10:00', '2018-11-21 01:00:00', 'achat de mÃ©dicaments', 'pharmacie de logpom', 'attente du resultat', 'pour papa', NULL, NULL),
(2, 1, '2018-11-13 01:12:00', '2018-11-30 05:07:00', 'urgente', 'douala', 'Ã  voir', NULL, NULL, NULL),
(4, 3, '2018-11-30 03:12:21', '2018-11-30 11:28:25', 'eqdzsf', 'vdzs', 'juste', NULL, NULL, NULL),
(5, 3, '2018-11-30 03:12:21', '2018-11-30 11:28:25', 'eqdzsf', 'vdzs', 'juste', NULL, NULL, NULL),
(6, 1, '2018-11-30 00:21:00', '2018-12-28 12:31:00', 'vaccination', 'douala hÃ´pital', 'on attend', '', NULL, NULL),
(7, 1, '2018-12-05 04:22:00', '2019-02-07 00:12:00', 'rdv', 'hÃ´pital', 'rien', '', 24, NULL),
(8, 1, '2018-12-30 12:03:00', '2018-12-22 12:03:00', 'cvgf', 'gctgf', 'gfdfg', NULL, 24, NULL),
(9, 1, '2018-12-25 22:02:00', '2019-02-22 12:02:00', 'Achat mÃ©dicament', 'LABO', 'rien pour le moment', '', NULL, NULL),
(10, 1, '2018-12-26 21:03:00', '2019-03-24 21:02:00', 'vaccinations', 'HÃ–PITAL', 'TEST', '', NULL, NULL),
(11, 1, '2018-12-28 21:02:00', '2019-07-20 12:02:00', 'RDV mÃ©dical', 'CCCC', 'TOUJOUR LE TEST', '', NULL, NULL),
(12, 1, '2018-12-26 12:43:00', '2018-12-30 03:03:00', 'Prise mÃ©dicaments', 'MAISON', 'en attente', '', NULL, NULL),
(14, 1, '2018-12-26 21:03:00', '2019-05-04 21:02:00', 'PCV', 'PCV', 'JUST FOR another test', '', NULL, NULL),
(15, 1, '2018-12-25 21:21:00', '2019-03-22 02:02:00', 'mÃ©dical', 'hÃ´pital', 'pour examen', NULL, 24, NULL),
(16, 1, '2018-12-25 21:02:00', '2019-03-23 21:03:00', 'visite de routine', 'hÃ´pital', 'en attente des resultats', NULL, 24, NULL),
(17, 1, '2018-12-28 12:34:00', '2019-04-26 21:02:00', 'visite de routine,', 'hÃ´pital', 'en attente des rÃ©sultats', NULL, 24, 2);

-- --------------------------------------------------------

--
-- Structure de la table `personel_ets`
--

DROP TABLE IF EXISTS `personel_ets`;
CREATE TABLE IF NOT EXISTS `personel_ets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matricule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_personnel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CC1ADC15CCF9E01E` (`departement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `personel_ets`
--

INSERT INTO `personel_ets` (`id`, `nom`, `password`, `matricule`, `telephone`, `email`, `type_personnel`, `departement_id`) VALUES
(2, 'efsdgbx', 'htsdf', 'djryftgh', 'uktiyd', 'ritÃ¨yu', 'ktyjfhg', NULL),
(3, 'kam', 'kam', 'izhj54fd', '8653223', 'ebqrd@ers.fr', 'medecin', NULL),
(4, 'kam', 'kam', 'sfv41f', '784653', 'zidsuj@zedc.fr', 'medecin', NULL),
(5, 'gilles', 'gilles', '8zrs56', '896523', 'gilles@gille.fr', 'laborentin', NULL),
(6, 'martial', 'martial', 'ezd8ezKT00', '7465', 'bfs@zs.fr', 'infimier', NULL),
(7, 'gggg', 'gg45', 'gz', '9864532', 'etd@rz.cr', 'ffff', NULL),
(8, 'hh', 'jgy', 'kuj', '6532', 'xh', 'jg', NULL),
(9, 'giyuhkj', 'vuvtjhn', 'jgvh b,n', 'hjb kn,', 'ugvjhbn,', 'vuyhj n,', NULL),
(10, 'guivkhbj', 'vuyhbjk', 'tuygbhjk', '48965', 'vguhjbkn', 'vguhjbk', NULL),
(11, 'tgd', 'dgf', 'dbfsK', '486513', 'yntgfh@fr.com', 'nyynrfg', NULL),
(12, 'UYGBH', 'ibjk', 'iubhjk', '8465', 'uinj', 'bikj', NULL),
(14, 'bedtf', 'jy', 'dfg', '5132', 'bedtf', 'dbtghn', NULL),
(15, 'fgsb', 'lkjn5', 'f g', '  9865', 'gbf ', 'fg ', NULL),
(16, 'yvhjb', 'gjv', 'hfcg241', '6845', 'cgh@gh.fr', 'jgcb', NULL),
(17, 'df b', 'vfd', ' bgd', '8645', 'uijnk@fed.fr', 'besfdr', NULL),
(18, 'marie', 'mcmarie', 'fevs21', '685472931', 'claire@mc.com', 'infirmiÃ¨re', NULL),
(19, 'stella', 'ibhdkj', 'g vfb32', '8465', 'vsf', ' gd', NULL),
(20, 'rsfe', ' fds ', 'fd32', '856413', 'bsfrd@rsvfds.fr', 'bsedf', NULL),
(23, 'makamtche', '123francise', 'MT756', '676467228', 'francise@gmail.com', 'infimiÃ¨re', 2),
(24, 'Tiokeng', 'anderson123', 'MT101', '694965269', 'tiokenganderson@yaohoo.fr', 'chirugien', 1),
(25, 'timothÃ©', 'ezs515', 'ZRF12', '4825285582', 'zegszs@gmal.xn--cm-jia', 'laborentin', 2);

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

DROP TABLE IF EXISTS `rdv`;
CREATE TABLE IF NOT EXISTS `rdv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datedebut` datetime NOT NULL,
  `datefin` datetime NOT NULL,
  `nature` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nommedecin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_10C31F8654A4CB53` (`personelEts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rdv`
--

INSERT INTO `rdv` (`id`, `datedebut`, `datefin`, `nature`, `mobile`, `patient`, `lieu`, `nommedecin`, `observation`, `personelEts_id`) VALUES
(1, '2018-12-22 12:10:00', '2018-12-30 12:45:00', 'visite', '3245643', 'gilbert', 'efzrtg', '', '', 24),
(2, '2018-12-22 12:03:00', '2018-12-31 12:03:00', 'visite', '34567765', 'gildas', 'labo', '', '', 24),
(3, '2018-12-22 12:03:00', '2019-01-18 03:56:00', 'visite', '234567', 'gildas', 'pharmacie', 'GLADYS', '', 24),
(4, '2018-12-22 21:02:00', '2019-05-11 21:02:00', 'visite', '3245543', 'bertrant', 'hÃ´pital de deido', 'JASMINE', '', 24),
(5, '2018-12-21 23:03:00', '2019-03-20 03:03:00', 'rdv', '678965434', 'jeannine', 'disctrict', 'FABIOLA', 'rien', 24),
(6, '2018-12-21 23:03:00', '2019-03-20 03:03:00', 'rdv', '678965434', 'jeannine', 'disctrict', 'FABIOLA', 'rien', 24),
(7, '2018-12-23 21:02:00', '2019-01-31 12:21:00', 'visite', '897654456', 'gÃ©raldine', '', 'FABRICE', '', 24),
(8, '2018-12-23 21:02:00', '2019-01-31 12:21:00', 'visite', '897654456', 'gÃ©raldine', '', 'FABRICE', '', 24),
(9, '2018-12-23 12:03:00', '2019-03-24 12:21:00', 'visite mÃ©decin', '2134354657', 'dadi', 'labo', 'gadi', '', 24),
(10, '2018-12-23 21:03:00', '2019-02-16 21:03:00', 'rdv', '3456789456', 'nakamanou jeannine', 'losto', 'GEORGES', '', 24),
(11, '2018-12-23 13:45:00', '2019-04-20 23:56:00', 'rendez-vous mÃ©dical', '435678967', 'marial', '', 'ASSONA', '', 24),
(12, '2018-12-16 12:21:00', '2019-02-22 12:33:00', 'vaccination', '678976543', 'sylvie', 'hÃ´pital', 'Jdipgang', '', 24),
(13, '2018-12-23 04:59:00', '2019-05-04 04:59:00', 'visite', '2345678', 'tfyguhj', 'maison', 'Dampouro', '', 24),
(14, '2018-12-23 23:45:00', '2018-12-23 03:24:00', 'pÃ©diatrie', '98765435', 'larissa', 'hÃ´pital', 'Njampou', 'rien', 24),
(15, '2018-12-23 21:03:00', '2019-02-23 12:03:00', 'visite prÃ©natale', '67564739', 'gilbert', '', 'NAKMANOU FLORE', '', 24);

-- --------------------------------------------------------

--
-- Structure de la table `regime`
--

DROP TABLE IF EXISTS `regime`;
CREATE TABLE IF NOT EXISTS `regime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_regime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datedebut` datetime NOT NULL,
  `poidsDepart` double NOT NULL,
  `imc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restrictions` longtext COLLATE utf8_unicode_ci,
  `taille` double DEFAULT NULL,
  `patients_id` int(11) DEFAULT NULL,
  `natureRegime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alimentationRecommande` longtext COLLATE utf8_unicode_ci,
  `typeTraitement` longtext COLLATE utf8_unicode_ci,
  `dateFin` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patients_id` (`patients_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `regime`
--

INSERT INTO `regime` (`id`, `type_regime`, `datedebut`, `poidsDepart`, `imc`, `restrictions`, `taille`, `patients_id`, `natureRegime`, `alimentationRecommande`, `typeTraitement`, `dateFin`) VALUES
(1, 'utoyguilbhjk', '2018-09-11 05:06:00', 69, 'gjh kj,', 'gvhjlbk', 190, 1, 'gjhkj,', 'guhbijnkl', 'jihyuyuvghikj', '2018-09-11 05:06:08'),
(5, 'oijuhghggf', '2018-11-01 05:16:00', 121, 'jhiuguyfydtxfcgh ytfghj', 'gvhjlbk bjgj', 160, 1, 'fruyfgkjhb vg', 'hbguyjh', 'ioouytrt', '2019-09-11 05:06:09'),
(6, 'perdre le poids', '2018-11-13 10:12:00', 88, '25', 'sucre, ne pas manger aprÃ¨s 19h', 46, 1, 'medicale', 'firbre', 'reduction cholestÃ©rol ', '2018-12-13 01:11:02'),
(7, 'perte de poids', '2018-11-26 02:33:00', 68, '12', 'huile rouge', 160, 12, 'cholestÃ©role', 'fruits', 'rien', '2018-11-30 02:12:00');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

DROP TABLE IF EXISTS `traitement`;
CREATE TABLE IF NOT EXISTS `traitement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospitalisation_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci,
  `datecreate` datetime DEFAULT NULL,
  `personelEts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2A356D27F531F4C5` (`hospitalisation_id`),
  KEY `IDX_2A356D2754A4CB53` (`personelEts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`, `email`) VALUES
(1, 'devalere', '2valere', 'kamguia', 'devalkam@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE IF NOT EXISTS `visite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patients_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `date_realisation` date DEFAULT NULL,
  `nom_hopital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_medecin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cout` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patients_id` (`patients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agendadepartement`
--
ALTER TABLE `agendadepartement`
  ADD CONSTRAINT `FK_18A743E399C0B38B` FOREIGN KEY (`PersonelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_18A743E3CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `auscultation`
--
ALTER TABLE `auscultation`
  ADD CONSTRAINT `FK_48B4CF5F54A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_48B4CF5F62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`);

--
-- Contraintes pour la table `auto_med`
--
ALTER TABLE `auto_med`
  ADD CONSTRAINT `FK_CDD652AFCEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `bilan`
--
ALTER TABLE `bilan`
  ADD CONSTRAINT `FK_F4DF4F44CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `FK_964685A654A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_964685A6CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `FK_C1765B63FF631228` FOREIGN KEY (`etablissement_id`) REFERENCES `etablissement` (`id`);

--
-- Contraintes pour la table `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `FK_514C8FEC54A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_514C8FEC62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`);

--
-- Contraintes pour la table `grossesse`
--
ALTER TABLE `grossesse`
  ADD CONSTRAINT `FK_1DC1D988CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `hospitalisation`
--
ALTER TABLE `hospitalisation`
  ADD CONSTRAINT `FK_67C0595954A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_67C0595962FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_67C05959CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `maladie_chronique`
--
ALTER TABLE `maladie_chronique`
  ADD CONSTRAINT `FK_85938B45CEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `ordonance`
--
ALTER TABLE `ordonance`
  ADD CONSTRAINT `FK_99240B9C54A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_99240B9C62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`);

--
-- Contraintes pour la table `parametres`
--
ALTER TABLE `parametres`
  ADD CONSTRAINT `FK_1A79799D54A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_1A79799D62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`);

--
-- Contraintes pour la table `param_regime`
--
ALTER TABLE `param_regime`
  ADD CONSTRAINT `FK_F25609CA35E7D534` FOREIGN KEY (`regime_id`) REFERENCES `regime` (`id`);

--
-- Contraintes pour la table `patientsagenda`
--
ALTER TABLE `patientsagenda`
  ADD CONSTRAINT `FK_2FBE726554A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_2FBE726562FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_E5760F8BCEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `personel_ets`
--
ALTER TABLE `personel_ets`
  ADD CONSTRAINT `FK_CC1ADC15CCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `FK_10C31F8654A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`);

--
-- Contraintes pour la table `regime`
--
ALTER TABLE `regime`
  ADD CONSTRAINT `FK_AA864A7CCEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `FK_2A356D2754A4CB53` FOREIGN KEY (`personelEts_id`) REFERENCES `personel_ets` (`id`),
  ADD CONSTRAINT `FK_2A356D27F531F4C5` FOREIGN KEY (`hospitalisation_id`) REFERENCES `hospitalisation` (`id`);

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `FK_B09C8CBBCEC3FD2F` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`);
--
-- Base de données :  `stransit`
--
CREATE DATABASE IF NOT EXISTS `stransit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stransit`;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fournisseur_id` int(11) DEFAULT NULL,
  `information_id` int(11) DEFAULT NULL,
  `moyen_transport_id` int(11) DEFAULT NULL,
  `incotem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` longtext COLLATE utf8_unicode_ci,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partiel` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6EEAA67D670C757F` (`fournisseur_id`),
  KEY `IDX_6EEAA67D2EF03101` (`information_id`),
  KEY `IDX_6EEAA67D3ED8D53F` (`moyen_transport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fournisseur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transitaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `moyen_transport`
--

DROP TABLE IF EXISTS `moyen_transport`;
CREATE TABLE IF NOT EXISTS `moyen_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transitaire_id` int(11) DEFAULT NULL,
  `typeTransport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appareil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compagnie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeVoyage` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `etd` date NOT NULL,
  `eta` date DEFAULT NULL,
  `atd` date DEFAULT NULL,
  `ata` date NOT NULL,
  `numDocBl` date DEFAULT NULL,
  `dateDocBl` date DEFAULT NULL,
  `numeOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateOT` date DEFAULT NULL,
  `nombreColis` int(11) DEFAULT NULL,
  `poids` double DEFAULT NULL,
  `nombreContainer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F42537D898F1367E` (`transitaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) DEFAULT NULL,
  `information_id` int(11) DEFAULT NULL,
  `intitule` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E564F0BF82EA2E54` (`commande_id`),
  KEY `IDX_E564F0BF2EF03101` (`information_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transitaire`
--

DROP TABLE IF EXISTS `transitaire`;
CREATE TABLE IF NOT EXISTS `transitaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D2EF03101` FOREIGN KEY (`information_id`) REFERENCES `information` (`id`),
  ADD CONSTRAINT `FK_6EEAA67D3ED8D53F` FOREIGN KEY (`moyen_transport_id`) REFERENCES `moyen_transport` (`id`),
  ADD CONSTRAINT `FK_6EEAA67D670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`);

--
-- Contraintes pour la table `moyen_transport`
--
ALTER TABLE `moyen_transport`
  ADD CONSTRAINT `FK_F42537D898F1367E` FOREIGN KEY (`transitaire_id`) REFERENCES `transitaire` (`id`);

--
-- Contraintes pour la table `statut`
--
ALTER TABLE `statut`
  ADD CONSTRAINT `FK_E564F0BF2EF03101` FOREIGN KEY (`information_id`) REFERENCES `information` (`id`),
  ADD CONSTRAINT `FK_E564F0BF82EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
