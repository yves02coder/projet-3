-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 20 jan. 2021 à 08:50
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
(7, 'JAVADCRIPT', 'Laurent ', 0, 'laurent@google.it', 'GARD', '1981-03-24 13:55:47', '2020-12-31 11:50:51', 39, 1),
(9, 'JAVA', 'Johnatan ', 0, 'johnatant@google.fr', 'LOIRE', '1965-01-14 13:55:47', '2020-12-31 11:50:51', 55, 3),
(11, 'TAPIN', 'Jean ', 0, 'jean@google.fr', 'MEUSE', '1942-07-16 13:55:47', '2020-12-31 11:50:51', 78, 2),
(13, 'ADOBE', 'Bob ', 0, 'bob@google.com', 'SAVOIE', '1959-01-01 13:55:47', '2020-12-31 11:50:51', 61, 1),
(16, 'POWERISO', 'Clementine ', 1, 'clementine@google.it', 'AIN', '1986-11-10 13:55:47', '2020-12-31 11:50:51', 34, 1),
(19, 'C#', 'Anthony', 1, 'anthony@google.com', 'CORSE', '2020-12-30 00:00:00', '2021-01-03 10:40:53', 39, 2),
(20, 'ALACOOL', 'Jane', 1, 'jane@google.fr', 'LOIRE', '1971-05-18 13:55:47', '2020-12-31 11:50:51', 49, 3),
(22, 'PDO', 'Sabine', 1, 'sabine@google.uk', 'NORD', '1987-01-05 13:55:47', '2020-12-31 11:50:51', 33, 2),
(25, 'RAILS', 'Moustapha', 0, 'moustapha@google.fr', 'NORD', '1962-12-01 13:55:47', '2020-12-31 11:50:51', 58, 2);

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
