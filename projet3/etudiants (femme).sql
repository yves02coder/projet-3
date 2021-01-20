-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 20 jan. 2021 à 08:51
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet3`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` tinyint(1) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `departement` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `date_jour` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `age` int(11) DEFAULT NULL,
  `id_matieres` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_matieres` (`id_matieres`),
  KEY `id_matieres_2` (`id_matieres`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `sexe`, `email`, `departement`, `date_naissance`, `date_jour`, `age`, `id_matieres`) VALUES
(2, 'COOL', 'Sophie', 1, 'sophie@hotmail.fr', 'ARDECHE', '1984-06-16 13:55:47', '2020-12-31 11:50:51', 36, 2),
(4, 'PALMER', 'Laura', 1, 'laura@laposte.net', 'CORSE SUD', '1974-01-15 13:55:47', '2020-12-31 11:50:51', 46, 1),
(6, 'SUPERCOOL', 'Michelle ', 1, 'michelle@laposte.net', 'ISERE', '2001-07-10 13:55:47', '2020-12-31 11:50:51', 19, 3),
(8, 'NODEJS', 'Laetitia ', 1, 'laetitia@gmail.com', 'LOIRE', '2004-06-28 13:55:47', '2020-12-31 11:50:51', 16, 2),
(10, 'HTML', 'Anita ', 1, 'anita@laposte.net', 'MEUSE', '1988-05-18 13:55:47', '2020-12-31 11:50:51', 32, 1),
(12, 'CUBASE', 'Lucie ', 1, 'lucie@gmail.com', 'SAVOIE', '1989-10-17 13:55:47', '2020-12-31 11:50:51', 31, 3),
(16, 'POWERISO', 'Clementine ', 1, 'clementine@google.it', 'AIN', '1986-11-10 13:55:47', '2020-12-31 11:50:51', 34, 1),
(19, 'C#', 'Anthony', 1, 'anthony@google.com', 'CORSE', '2020-12-30 00:00:00', '2021-01-03 10:40:53', 39, 2),
(20, 'ALACOOL', 'Jane', 1, 'jane@google.fr', 'LOIRE', '1971-05-18 13:55:47', '2020-12-31 11:50:51', 49, 3),
(22, 'PDO', 'Sabine', 1, 'sabine@google.uk', 'NORD', '1987-01-05 13:55:47', '2020-12-31 11:50:51', 33, 2),
(24, 'RUBY', 'Leila', 1, 'leila@gmail.fr', 'NIEVRE', '1985-06-24 13:55:47', '2020-12-31 11:50:51', 35, 1),
(26, 'KOTLIN', 'Aicha', 1, 'aicha@laposte.net', 'VOSGES', '1944-05-22 13:55:47', '2020-12-31 11:50:51', 76, 3),
(27, 'CSS', 'Lola', 1, 'lola@laposte.net', 'LOIRE', '1934-07-11 13:55:47', '2020-12-31 11:50:51', 86, 1),
(28, 'TWIG', 'Emilie', 1, 'emilie@gmail.uk', 'SAVOIE', '1974-11-11 13:55:47', '2020-12-31 11:50:51', 46, 2),
(29, 'NOSQL', 'Laura', 1, 'laura@cool.fr', 'ISERE', '2000-03-02 00:00:00', '2021-01-02 11:43:35', 45, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ibfk_1` FOREIGN KEY (`id_matieres`) REFERENCES `matieres` (`matiere_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
