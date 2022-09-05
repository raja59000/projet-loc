-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 05 sep. 2022 à 07:53
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservation`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'Appareils_photo'),
(2, 'Camescopes'),
(3, 'Accessoires'),
(4, 'Lumieres');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

DROP TABLE IF EXISTS `emprunts`;
CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunts` int NOT NULL AUTO_INCREMENT,
  `id_membres` int NOT NULL,
  `id_materiel` int NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_rendu` date NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_emprunts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `materiels`
--

DROP TABLE IF EXISTS `materiels`;
CREATE TABLE IF NOT EXISTS `materiels` (
  `id_materiel` int NOT NULL AUTO_INCREMENT,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `materiels`
--

INSERT INTO `materiels` (`id_materiel`, `id_categorie`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id_membres` int NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `mail` varchar(50) NOT NULL,
  `auth` int NOT NULL,
  PRIMARY KEY (`id_membres`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id_membres`, `nom`, `prenom`, `mail`, `auth`) VALUES
(1, 'Galois', 'Rémi', 'remigallois@gmail.com', 0),
(2, 'Ganne', 'Guillaume', 'guillaume.ganne@gmail.com', 0),
(3, 'Berthot', 'Thomas', 'thomasberthot4@gmail.com', 0),
(4, 'Leservoisier', 'Patrice', 'leserpat@hotmail.com', 0),
(5, 'Brioude', 'Régis', 'regis.Brioude@afpa.fr', 1),
(6, 'Morreau', 'Raphaël', 'raphi8444@gmail.com', 0),
(7, 'Almarzouk', 'Jumaa', 'jumaa.almarzouk@gmail.com', 0),
(8, 'Soëte', 'Angélique', 'abgelles042@gmail.com', 0),
(9, 'Grasseau', 'Amandine', 'amandinegr9@gmail.com', 0),
(10, 'Tenzin', 'Choeyang', 'tenzinrose25@gmail.com', 0),
(11, 'Courtois', 'Jonathan', 'jonathan.courtois.pro@gmail.com', 0),
(12, 'Professeur', 'Tournesol', 'professeur_tournesol@exemple.com', 2);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id_produits` int NOT NULL AUTO_INCREMENT,
  `id_matériel` int NOT NULL,
  `id_categorie` int NOT NULL,
  `id_type` int NOT NULL,
  `marque` text NOT NULL,
  `modele` varchar(50) NOT NULL,
  `infos` text NOT NULL,
  `quantite` int NOT NULL,
  `dispo` tinyint(1) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id_produits`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_produits`, `id_matériel`, `id_categorie`, `id_type`, `marque`, `modele`, `infos`, `quantite`, `dispo`, `photo`) VALUES
(1, 1, 1, 1, 'Coolpix', 'P7000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4, 1, '\\AJR\\img\\photos_appareils\\apn\\coolpixP7000.png'),
(2, 1, 1, 1, 'Coolpix', 'P7800', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 6, 2, '\\AJR\\img\\photos_appareils\\apn\\coolpixP7800.png'),
(3, 1, 1, 2, 'Nikon', 'D1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, '\\AJR\\img\\photos_appareils\\reflex\\nikonD1.png'),
(4, 1, 1, 2, 'Nikon', 'D7000', '', 3, 1, '\\AJR\\img\\photos_appareils\\reflex\\nikonD7000.png'),
(5, 1, 1, 2, 'Nikon', 'F4', '', 3, 1, '\\AJR\\img\\photos_appareils\\reflex\\nikonF4.png'),
(6, 1, 1, 2, 'Nikon', 'Télé compressor F90X', '', 2, 0, '\\AJR\\img\\photos_appareils\\reflex\\telecompressorF90X'),
(7, 1, 1, 3, 'Nikon', 'P1000', '', 4, 1, '\\AJR\\img\\photos_appareils\\bridge\\nikonP1000.png'),
(8, 2, 2, 4, 'Panasonic', '900', '', 3, 1, '\\AJR\\img\\photos_camescope\\panasonic\\900.png'),
(9, 2, 2, 4, 'Panasonic', '1500', '', 4, 2, '\\AJR\\img\\photos_camescope\\panasonic\\1500.png'),
(10, 2, 2, 5, 'Sony', '10', '', 3, 0, '\\AJR\\img\\photos_camescope\\sony\\10.png'),
(11, 2, 2, 5, 'Sony', '30', '', 3, 0, '\\AJR\\img\\photos_camescope\\sony\\30.png'),
(12, 2, 2, 5, 'Sony', '410', '', 6, 2, '\\AJR\\img\\photos_camescope\\sony\\410.png'),
(13, 3, 3, 6, 'Nikon', 'AF Nikkor zoom 50mm', '', 0, 0, '\\AJR\\img\\accessoires\\objectifs\\zoom50mm.png'),
(14, 3, 3, 6, 'Nikon', 'AF Nikkor zoom 70mm', '', 0, 0, '\\AJR\\img\\accessoires\\objectifs\\zoom70mm.png'),
(15, 3, 3, 6, 'Nikon', 'AF Nikkor zoom 80mm', '', 0, 0, '\\AJR\\img\\accessoires\\objectifs\\zoom80mm.png'),
(16, 3, 3, 7, 'Caselogic', 'Sacoche', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\caselogic.png'),
(17, 3, 3, 7, 'Hiking', 'Sacoche', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\hiking.png'),
(18, 3, 3, 7, 'Puluz', '', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\puluz.png'),
(19, 3, 3, 7, 'Tucano', 'Sacoche', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\sacoche.png'),
(20, 3, 3, 7, 'Nikon', 'Sacoche', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\sacoche02.png'),
(21, 3, 3, 7, 'Panasonic', 'Sacoche', '', 0, 0, 'AJR\\img\\accessoires\\saccoches_appareils\\sacoche03.png'),
(22, 3, 3, 8, 'Dolly', '057', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\dolly057.png'),
(23, 3, 3, 8, 'Hamastar', '61', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\hamastar61.png'),
(24, 3, 3, 8, 'Hamastar', '62', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\hamastar62.png'),
(25, 3, 3, 8, 'Ianiro', '300', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\ianiro300.png'),
(26, 3, 3, 8, 'Mandarine', '1', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\mandarine1.png'),
(27, 3, 3, 8, 'Mandarine', '122B', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\mandarine122B.png'),
(28, 3, 3, 8, 'Manfrotto', '004_1', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto004_1.png'),
(29, 3, 3, 8, 'Manfrotto', '004_2', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto004_2.png'),
(30, 3, 3, 8, 'Manfrotto', '058B', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto058B.png'),
(31, 3, 3, 8, 'Manfrotto', '122B', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto122B.png'),
(32, 3, 3, 8, 'Manfrotto', '190', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto190.png'),
(33, 3, 3, 8, 'Manfrotto', '190 pro', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrotto190pro.png'),
(34, 3, 3, 8, 'Manfrotto', 'Auto Dolly', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrottoautodolly.png'),
(35, 3, 3, 8, 'Manfrotto', 'Imagine', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrottoimaine.png'),
(36, 3, 3, 8, 'Manfrotto', 'Imagine More', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrottoimaginemore.png'),
(37, 3, 3, 8, 'Manfrotto', 'Imagine + Sacoche', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\manfrottoimaginesacoche.png'),
(38, 3, 3, 8, 'Benro', '01', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\trepied01.png'),
(39, 3, 3, 8, 'Benro', '2', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\trepied02.png'),
(40, 3, 3, 8, 'Benro', 'Téléscopique', '', 0, 0, '\\AJR\\img\\accessoires\\trepieds\\trepiedtelesco.png'),
(41, 4, 4, 9, 'Nikon', 'SpeedLight SB-24', '', 0, 0, 'AJR\\img\\lumieres\\flashs\\SB24.png'),
(42, 4, 4, 9, 'Nikon', 'SpeedLight SB-5000', '', 0, 0, 'AJR\\img\\lumieres\\flashs\\SB5000.png'),
(43, 4, 4, 10, 'Mandarine', ' Caisse + 3 spots', '', 0, 0, '\\AJR\\img\\lumieres\\mandarines\\01.png'),
(44, 4, 4, 10, 'Mandarines', 'Spot 01', '', 0, 0, '\\AJR\\img\\lumieres\\mandarines\\02.png'),
(45, 4, 4, 10, 'Mandarines', 'Spot 02', '', 0, 0, '\\AJR\\img\\lumieres\\mandarines\\03.png'),
(46, 4, 4, 10, 'Mandarines', 'Spot 03', '', 0, 0, '\\AJR\\img\\lumieres\\mandarines\\04.png'),
(47, 4, 4, 11, 'Parapluies', '01', '', 0, 0, '\\AJR\\img\\lumieres\\parapluies\\01.png'),
(48, 4, 4, 11, 'Ansmann', '02', '', 0, 0, '\\AJR\\img\\lumieres\\parapluies\\ansmann02.png'),
(49, 4, 4, 11, 'Konig', '03', '', 0, 0, '\\AJR\\img\\lumieres\\parapluies\\koning03.png'),
(50, 4, 4, 11, 'Solid', 'Cache', '', 0, 0, '\\AJR\\img\\lumieres\\parapluies\\solid-cache.png'),
(51, 4, 4, 11, 'Solid', 'Parapluies', '', 0, 0, '\\AJR\\img\\lumieres\\parapluies\\solid-parapluie.png');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int NOT NULL AUTO_INCREMENT,
  `id_categorie` int NOT NULL,
  `nom` text NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_type`, `id_categorie`, `nom`) VALUES
(1, 1, 'APN'),
(2, 1, 'Reflex'),
(3, 1, 'Bridge'),
(4, 2, 'Panasonic'),
(5, 2, 'Sony'),
(6, 3, 'Objectifs'),
(7, 3, 'Sacoches_appareil'),
(8, 3, 'Trepieds'),
(9, 4, 'Flashs'),
(10, 4, 'Mandarines'),
(11, 4, 'Parapluies');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
