-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 13 nov. 2017 à 07:17
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `webdata`
--
CREATE DATABASE IF NOT EXISTS `webdata` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webdata`;
-- --------------------------------------------------------

--
-- Structure de la table `champions`
--

DROP TABLE IF EXISTS `champions`;
CREATE TABLE IF NOT EXISTS `champions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nationaliter` varchar(100) CHARACTER SET latin1 NOT NULL,
  `titre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `edition` varchar(100) CHARACTER SET latin1 NOT NULL,
  `type` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `champions`
--

INSERT INTO `champions` (`id`, `nom`, `nationaliter`, `titre`, `edition`, `type`) VALUES
(36, 'Marcel Boulenger', 'France', 'Bronze', 'Paris 1900', 'Fleuret masculin individuel'),
(35, 'Henri Masson', 'France', 'Argent', 'Paris 1900', 'Fleuret masculin individuel'),
(34, 'Ã‰mile Coste', 'France', 'Or', 'Paris 1900', 'Fleuret masculin individuel'),
(33, 'PeriklÃ­s PierrÃ¡kos-MavromichÃ¡lis', 'GrÃ¨ce', 'Bronze', 'AthÃ¨nes 1896', 'Fleuret masculin individuel'),
(32, 'Henri Callot', 'France', 'Argent', 'AthÃ¨nes 1896', 'Fleuret masculin individuel'),
(31, 'EugÃ¨ne-Henri Gravelotte', 'France', 'Or', 'AthÃ¨nes 1896', 'Fleuret masculin individuel'),
(37, 'RamÃ³n Fonst', 'Cuba', 'Or', 'Saint Louis 1904', 'Fleuret masculin individuel'),
(38, 'Albertson Van Zo Post ', 'Cuba', 'Argent', 'Saint Louis 1904', 'Fleuret masculin individuel'),
(39, 'Charles Tatham', 'Cuba', 'Bronze', 'Saint Louis 1904', 'Fleuret masculin individuel'),
(40, 'Nedo Nadi', 'Italie', 'Or', 'Stockholm 1912', 'Fleuret masculin individuel'),
(41, 'Pietro Speciale', 'Italie', 'Argent', 'Stockholm 1912', 'Fleuret masculin individuel'),
(42, 'Richard Verderber', 'Autriche', 'Bronze', 'Stockholm 1912', 'Fleuret masculin individuel'),
(43, 'Nedo Nadi', 'Italie', 'Or', 'Anvers 1920', 'Fleuret masculin individuel'),
(44, 'Philippe Cattiau', 'France', 'Argent', 'Anvers 1920', 'Fleuret masculin individuel'),
(45, 'Roger Ducret', 'France', 'Bronze', 'Anvers 1920', 'Fleuret masculin individuel'),
(46, 'Roger Ducret', 'France', 'Or', 'Paris 1924', 'Fleuret masculin individuel'),
(47, 'Philippe Cattiau', 'France', 'Argent', 'Paris 1924', 'Fleuret masculin individuel'),
(48, 'Maurice E. van Damme', 'Belgique', 'Bronze', 'Paris 1924', 'Fleuret masculin individuel'),
(49, 'Lucien Gaudin', 'France', 'Or', 'Amsterdam 1928', 'Fleuret masculin individuel'),
(50, 'Erwin Casmir', 'Allemagne', 'Argent', 'Amsterdam 1928', 'Fleuret masculin individuel'),
(51, 'Giulio Gaudini', 'Italie', 'Bronze', 'Amsterdam 1928', 'Fleuret masculin individuel'),
(52, 'Giulio Gaudini', 'Italie', 'Bronze', 'Los Angeles 1932', 'Fleuret masculin individuel'),
(53, 'Joseph L. Levis ', 'Ã‰tats-Unis', 'Argent', 'Los Angeles 1932', 'Fleuret masculin individuel'),
(54, 'Gustavo Marzi', 'Italie', 'Or', 'Los Angeles 1932', 'Fleuret masculin individuel'),
(55, 'Giulio Gaudini', 'Italie', 'Or', 'Berlin 1936', 'Fleuret masculin individuel'),
(56, 'Edouard GardÃ¨re', 'France', 'Argent', 'Berlin 1936', 'Fleuret masculin individuel'),
(57, 'Giorgio Bocchino', 'Italie', 'Bronze', 'Berlin 1936', 'Fleuret masculin individuel'),
(58, 'Jehan Buhan', 'France', 'Or', 'Londres 1948', 'Fleuret masculin individuel'),
(59, 'Christian d\'Oriola', 'France', 'Argent', 'Londres 1948', 'Fleuret masculin individuel'),
(60, 'Lajos Maszlay', 'Hongrie', 'Bronze', 'Londres 1948', 'Fleuret masculin individuel'),
(61, 'Christian d\'Oriola', 'France', 'Or', 'Helsinki 1952', 'Fleuret masculin individuel'),
(62, 'Edoardo Mangiarotti', 'Italie', 'Argent', 'Helsinki 1952', 'Fleuret masculin individuel'),
(63, 'Manlio Di Rosa', 'Italie', 'Bronze', 'Helsinki 1952', 'Fleuret masculin individuel'),
(64, 'Christian d\'Oriola', 'France', 'Or', 'Melbourne 1956', 'Fleuret masculin individuel'),
(65, 'Giancarlo Bergamini', 'Italie', 'Argent', 'Melbourne 1956', 'Fleuret masculin individuel'),
(66, 'Antonio Spallino', 'Italie', 'Bronze', 'Melbourne 1956', 'Fleuret masculin individuel'),
(67, 'Victor Jdanovitch', 'Ã‰tats-Unis', 'Or', 'Rome 1960', 'Fleuret masculin individuel'),
(68, 'Iouri Sissikine', 'URSS', 'Argent', 'Rome 1960', 'Fleuret masculin individuel'),
(69, 'Albert Axelrod', 'URSS', 'Bronze', 'Rome 1960', 'Fleuret masculin individuel'),
(70, 'Egon Franke', 'Pologne', 'Or', 'Tokyo 1964', 'Fleuret masculin individuel'),
(71, 'Jean-Claude Magnan', 'France', 'Argent', 'Tokyo 1964', 'Fleuret masculin individuel'),
(72, 'Daniel Revenu', 'France', 'Bronze', 'Tokyo 1964', 'Fleuret masculin individuel'),
(73, 'Ion Drimba', 'Roumanie', 'Or', 'Mexico 1968', 'Fleuret masculin individuel'),
(74, 'JenÅ‘ Kamuti', 'Hongrie', 'Argent', 'Mexico 1968', 'Fleuret masculin individuel'),
(75, 'Daniel Revenu', 'France', 'Bronze', 'Mexico 1968', 'Fleuret masculin individuel'),
(76, 'Witold Woyda', 'Pologne', 'Or', 'Munich 1972', 'Fleuret masculin individuel'),
(77, 'JenÅ‘ Kamuti', 'Hongrie', 'Argent', 'Munich 1972', 'Fleuret masculin individuel'),
(78, 'Christian Noel', 'France', 'Bronze', 'Munich 1972', 'Fleuret masculin individuel'),
(79, 'Fabio Dal Zotto', 'Italie', 'Or', 'MontrÃ©al 1976', 'Fleuret masculin individuel'),
(80, 'Aleksander Romankov', 'URSS', 'Argent', 'MontrÃ©al 1976', 'Fleuret masculin individuel'),
(81, 'Bernard Talvard', 'France', 'Bronze', 'MontrÃ©al 1976', 'Fleuret masculin individuel'),
(82, 'Vladimir Smirnov', 'URSS', 'Or', 'Moscou 1980', 'Fleuret masculin individuel'),
(83, 'Pascal Jolyot', 'France', 'Argent', 'Moscou 1980', 'Fleuret masculin individuel'),
(84, 'Aleksandr Romankov', 'URSS', 'Bronze', 'Moscou 1980', 'Fleuret masculin individuel'),
(85, 'Mauro Numa', 'Italie', 'Or', 'Los Angeles 1984', 'Fleuret masculin individuel'),
(86, 'Matthias Behr', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Argent', 'Los Angeles 1984', 'Fleuret masculin individuel'),
(87, 'Stefano Cerioni', 'Italie', 'Bronze', 'Los Angeles 1984', 'Fleuret masculin individuel'),
(88, 'Stefano Cerioni', 'Italie', 'Or', 'SÃ©oul 1988', 'Fleuret masculin individuel'),
(89, 'Udo Wagner', 'Allemagne de l\'Est', 'Argent', 'SÃ©oul 1988', 'Fleuret masculin individuel'),
(90, 'Aleksandr Romankov', 'URSS', 'Bronze', 'SÃ©oul 1988', 'Fleuret masculin individuel'),
(91, 'Philippe OmnÃ¨s', 'France', 'Or', 'Barcelone 1992', 'Fleuret masculin individuel'),
(92, 'Serhiy Holubytskyy', 'Ã‰quipe unifiÃ©e', 'Argent', 'Barcelone 1992', 'Fleuret masculin individuel'),
(93, 'Elvis Gregory', 'Cuba', 'Bronze', 'Barcelone 1992', 'Fleuret masculin individuel'),
(94, 'Alessandro Puccini', 'Italie', 'Or', 'Atlanta 1996', 'Fleuret masculin individuel'),
(95, 'Lionel Plumenail', 'France', 'Argent', 'Atlanta 1996', 'Fleuret masculin individuel'),
(96, 'Franck Boidin', 'France', 'Bronze', 'Atlanta 1996', 'Fleuret masculin individuel'),
(97, 'Kim Young-ho', 'CorÃ©e du Sud', 'Or', 'Sydney 2000', 'Fleuret masculin individuel'),
(98, 'Ralf Bissdorf', 'Allemagne', 'Argent', 'Sydney 2000', 'Fleuret masculin individuel'),
(99, 'Dmitri Shevchenko', 'Russie', 'Bronze', 'Sydney 2000', 'Fleuret masculin individuel'),
(100, 'Brice Guyart', 'France', 'Or', 'AthÃ¨nes 2004', 'Fleuret masculin individuel'),
(101, 'Salvatore Sanzo', 'Italie', 'Argent', 'AthÃ¨nes 2004', 'Fleuret masculin individuel'),
(102, 'Andrea CassarÃ ', 'Italie', 'Bronze', 'AthÃ¨nes 2004', 'Fleuret masculin individuel'),
(103, 'Benjamin Kleibrink', 'Allemagne', 'Or', 'PÃ©kin 2008', 'Fleuret masculin individuel'),
(104, 'Yuki Ota', 'Japon', 'Argent', 'PÃ©kin 2008', 'Fleuret masculin individuel'),
(105, 'Salvatore Sanzo', 'Italie', 'Bronze', 'PÃ©kin 2008', 'Fleuret masculin individuel'),
(106, 'Lei Sheng', 'RÃ©publique populaire de Chine', 'Or', 'Londres 2012', 'Fleuret masculin individuel'),
(107, 'Alaaeldin Abouelkassem', 'Ã‰gypte', 'Argent', 'Londres 2012', 'Fleuret masculin individuel'),
(108, 'Choi Byung-chul', 'CorÃ©e du Sud', 'Bronze', 'Londres 2012', 'Fleuret masculin individuel'),
(109, 'Daniele Garozzo', 'Italie', 'Or', 'Rio 2016', 'Fleuret masculin individuel'),
(110, 'Alexander Massialas', 'Ã‰tats-Unis', 'Argent', 'Rio 2016', 'Fleuret masculin individuel'),
(111, 'Timur Safin', 'Russie', 'Bronze', 'Rio 2016', 'Fleuret masculin individuel'),
(112, 'RamÃ³n Fonst', 'Cuba', 'Or', 'Paris 1900', 'Fleuret masculin individuel'),
(113, 'Louis PerrÃ©e', 'France', 'Argent', 'Paris 1900', 'Fleuret masculin individuel'),
(114, 'LÃ©on SÃ©e', 'France', 'Bronze', 'Paris 1900', 'Fleuret masculin individuel'),
(115, 'RamÃ³n Fonst', 'Cuba', 'Or', 'Saint Louis 1904', 'Ã‰pÃ©e masculine individuelle'),
(116, 'Charles Tatham', 'Cuba', 'Argent', 'Saint Louis 1904', 'Ã‰pÃ©e masculine individuelle'),
(117, 'Albertson Van Zo Post', 'Cuba', 'Bronze', 'Saint Louis 1904', 'Ã‰pÃ©e masculine individuelle'),
(118, 'Gaston Alibert', 'France', 'Or', 'Londres 1908', 'Ã‰pÃ©e masculine individuelle'),
(119, 'Alexandre Lippmann', 'France', 'Argent', 'Londres 1908', 'Ã‰pÃ©e masculine individuelle'),
(120, 'EugÃ¨ne Olivier', 'France', 'Bronze', 'Londres 1908', 'Ã‰pÃ©e masculine individuelle'),
(121, 'Paul Anspach', 'Belgique', 'Or', 'Stockholm 1912', 'Ã‰pÃ©e masculine individuelle'),
(122, 'Ivan Joseph Martin Osiier', 'Danemark', 'Argent', 'Stockholm 1912', 'Ã‰pÃ©e masculine individuelle'),
(123, 'Philippe le Hardy de Beaulieu', 'Belgique', 'Bronze', 'Stockholm 1912', 'Ã‰pÃ©e masculine individuelle'),
(124, 'Armand Massard', 'France', 'Or', 'Anvers 1920', 'Ã‰pÃ©e masculine individuelle'),
(125, 'Alexandre Lippmann', 'France', 'Argent', 'Anvers 1920', 'Ã‰pÃ©e masculine individuelle'),
(126, 'Gustave Buchard', 'France', 'Bronze', 'Anvers 1920', 'Ã‰pÃ©e masculine individuelle'),
(127, 'Charles Delporte', 'Belgique', 'Or', 'Paris 1924', 'Ã‰pÃ©e masculine individuelle'),
(128, 'Roger Ducret', 'France', 'Argent', 'Paris 1924', 'Ã‰pÃ©e masculine individuelle'),
(129, 'Nils Hellsten', 'SuÃ¨de', 'Bronze', 'Paris 1924', 'Ã‰pÃ©e masculine individuelle'),
(130, 'Lucien Gaudin', 'France', 'Or', 'Amsterdam 1928', 'Ã‰pÃ©e masculine individuelle'),
(131, 'Georges Buchard', 'France', 'Argent', 'Amsterdam 1928', 'Ã‰pÃ©e masculine individuelle'),
(132, 'George Calnan', 'Ã‰tats-Unis', 'Bronze', 'Amsterdam 1928', 'Ã‰pÃ©e masculine individuelle'),
(133, 'Giancarlo Cornaggia Medici', 'Italie', 'Or', 'Los Angeles 1932', 'Ã‰pÃ©e masculine individuelle'),
(134, 'Georges Buchard', 'France', 'Argent', 'Los Angeles 1932', 'Ã‰pÃ©e masculine individuelle'),
(135, 'Carlo Agostoni', 'Italie', 'Bronze', 'Los Angeles 1932', 'Ã‰pÃ©e masculine individuelle'),
(136, 'Franco Riccardi', 'Italie', 'Or', 'Berlin 1936', 'Ã‰pÃ©e masculine individuelle'),
(137, 'Saverio Ragno', 'Italie', 'Argent', 'Berlin 1936', 'Ã‰pÃ©e masculine individuelle'),
(138, 'Giancarlo Cornaggia Medici', 'Italie', 'Bronze', 'Berlin 1936', 'Ã‰pÃ©e masculine individuelle'),
(139, 'Luigi Cantone', 'Italie', 'Or', 'Londres 1948', 'Ã‰pÃ©e masculine individuelle'),
(140, 'Oswald Zappelli', 'Suisse', 'Argent', 'Londres 1948', 'Ã‰pÃ©e masculine individuelle'),
(141, 'Edoardo Mangiarotti', 'Italie', 'Bronze', 'Londres 1948', 'Ã‰pÃ©e masculine individuelle'),
(142, 'Edoardo Mangiarotti', 'Italie', 'Or', 'Helsinki 1952', 'Ã‰pÃ©e masculine individuelle'),
(143, 'Dario Mangiarotti', 'Italie', 'Argent', 'Helsinki 1952', 'Ã‰pÃ©e masculine individuelle'),
(144, 'Oswald Zappelli', 'Suisse', 'Bronze', 'Helsinki 1952', 'Ã‰pÃ©e masculine individuelle'),
(145, 'Carlo Pavesi', 'Italie', 'Or', 'Melbourne 1956', 'Ã‰pÃ©e masculine individuelle'),
(146, 'Giuseppe Delfino', 'Italie', 'Argent', 'Melbourne 1956', 'Ã‰pÃ©e masculine individuelle'),
(147, 'Edoardo Mangiarotti', 'Italie', 'Bronze', 'Melbourne 1956', 'Ã‰pÃ©e masculine individuelle'),
(148, 'Giuseppe Delfino', 'Italie', 'Or', 'Rome 1960', 'Ã‰pÃ©e masculine individuelle'),
(149, 'Allan Jay', 'Royaume-Uni', 'Argent', 'Rome 1960', 'Ã‰pÃ©e masculine individuelle'),
(150, 'Bruno Habarovs', 'URSS', 'Bronze', 'Rome 1960', 'Ã‰pÃ©e masculine individuelle'),
(151, 'Grigori Kriss', 'URSS', 'Or', 'Tokyo 1964', 'Ã‰pÃ©e masculine individuelle'),
(152, 'Bill Hoskyns', 'Royaume-Uni', 'Argent', 'Tokyo 1964', 'Ã‰pÃ©e masculine individuelle'),
(153, 'Guram Kostava', 'URSS', 'Bronze', 'Tokyo 1964', 'Ã‰pÃ©e masculine individuelle'),
(154, 'GyÃ¶zÃ¶ KulcsÃ¡r', 'Hongrie', 'Or', 'Mexico 1968', 'Ã‰pÃ©e masculine individuelle'),
(155, 'Grigori Kriss', 'URSS', 'Argent', 'Mexico 1968', 'Ã‰pÃ©e masculine individuelle'),
(156, 'Gianluigi Saccaro', 'Italie', 'Bronze', 'Mexico 1968', 'Ã‰pÃ©e masculine individuelle'),
(157, 'Csaba Fenyvesi', 'Hongrie', 'Or', 'Munich 1972', 'Ã‰pÃ©e masculine individuelle'),
(158, 'Jacques Ladegaillerie', 'France', 'Argent', 'Munich 1972', 'Ã‰pÃ©e masculine individuelle'),
(159, 'GyÃ¶zÃ¶ KulcsÃ¡r', 'Hongrie', 'Bronze', 'Munich 1972', 'Ã‰pÃ©e masculine individuelle'),
(160, 'Alexander Pusch', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Or', 'MontrÃ©al 1976', 'Ã‰pÃ©e masculine individuelle'),
(161, 'Jurgen Hehn', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Argent', 'MontrÃ©al 1976', 'Ã‰pÃ©e masculine individuelle'),
(162, 'GyÃ¶zÃ¶ KulcsÃ¡r', 'Hongrie', 'Bronze', 'MontrÃ©al 1976', 'Ã‰pÃ©e masculine individuelle'),
(163, 'Johan Harmenberg', 'SuÃ¨de', 'Or', 'Moscou 1980', 'Ã‰pÃ©e masculine individuelle'),
(164, 'ErnÅ‘ Kolczonay', 'Hongrie', 'Argent', 'Moscou 1980', 'Ã‰pÃ©e masculine individuelle'),
(165, 'Philippe Riboud', 'France', 'Bronze', 'Moscou 1980', 'Ã‰pÃ©e masculine individuelle'),
(166, 'Philippe Boisse', 'France', 'Or', 'Los Angeles 1984', 'Ã‰pÃ©e masculine individuelle'),
(167, 'BjÃ¶rne VÃ¤ggÃ¶', 'SuÃ¨de', 'Argent', 'Los Angeles 1984', 'Ã‰pÃ©e masculine individuelle'),
(168, 'Philippe Riboud', 'France', 'Bronze', 'Los Angeles 1984', 'Ã‰pÃ©e masculine individuelle'),
(169, 'Arnd Schmitt', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Or', 'SÃ©oul 1988', 'Ã‰pÃ©e masculine individuelle'),
(170, 'Philippe Riboud', 'France', 'Argent', 'SÃ©oul 1988', 'Ã‰pÃ©e masculine individuelle'),
(171, 'Andrei Shuvalov', 'URSS', 'Bronze', 'SÃ©oul 1988', 'Ã‰pÃ©e masculine individuelle'),
(172, 'Ã‰ric Srecki', 'France', 'Or', 'Barcelone 1992', 'Ã‰pÃ©e masculine individuelle'),
(173, 'Pavel Kolobkov', 'Ã‰quipe unifiÃ©e', 'Argent', 'Barcelone 1992', 'Ã‰pÃ©e masculine individuelle'),
(174, 'Jean-Michel Henry', 'France', 'Bronze', 'Barcelone 1992', 'Ã‰pÃ©e masculine individuelle'),
(175, 'Aleksandr Beketov', 'Russie', 'Or', 'Atlanta 1996', 'Ã‰pÃ©e masculine individuelle'),
(176, 'Ivan Trevejo', 'Cuba', 'Argent', 'Atlanta 1996', 'Ã‰pÃ©e masculine individuelle'),
(177, 'GÃ©za Imre', 'Hongrie', 'Bronze', 'Atlanta 1996', 'Ã‰pÃ©e masculine individuelle'),
(178, 'Pavel Kolobkov', 'Russie', 'Or', 'Sydney 2000', 'Ã‰pÃ©e masculine individuelle'),
(179, 'Hugues Obry', 'France', 'Argent', 'Sydney 2000', 'Ã‰pÃ©e masculine individuelle'),
(180, 'Lee Sang-ki', 'CorÃ©e du Sud', 'Bronze', 'Sydney 2000', 'Ã‰pÃ©e masculine individuelle'),
(181, 'Marcel Fischer', 'Suisse', 'Or', 'AthÃ¨nes 2004', 'Ã‰pÃ©e masculine individuelle'),
(182, 'Wang Lei', 'RÃ©publique populaire de Chine', 'Argent', 'AthÃ¨nes 2004', 'Ã‰pÃ©e masculine individuelle'),
(183, 'Pavel Kolobkov', 'Russie', 'Bronze', 'AthÃ¨nes 2004', 'Ã‰pÃ©e masculine individuelle'),
(184, 'Matteo Tagliariol', 'Italie', 'Or', 'PÃ©kin 2008', 'Ã‰pÃ©e masculine individuelle'),
(185, 'Fabrice Jeannet', 'France', 'Argent', 'PÃ©kin 2008', 'Ã‰pÃ©e masculine individuelle'),
(186, 'JosÃ© Luis Abajo', 'Espagne', 'Bronze', 'PÃ©kin 2008', 'Ã‰pÃ©e masculine individuelle'),
(187, 'RubÃ©n Limardo', 'Venezuela', 'Or', 'Londres 2012', 'Ã‰pÃ©e masculine individuelle'),
(188, 'Bartosz Piasecki', 'NorvÃ¨ge', 'Argent', 'Londres 2012', 'Ã‰pÃ©e masculine individuelle'),
(189, 'Jung Jin-sun', 'CorÃ©e du Sud', 'Bronze', 'Londres 2012', 'Ã‰pÃ©e masculine individuelle'),
(190, 'Park Sang-young', 'CorÃ©e du Sud', 'Or', 'Rio 2016', 'Ã‰pÃ©e masculine individuelle'),
(191, 'GÃ©za Imre', 'Hongrie', 'Argent', 'Rio 2016', 'Ã‰pÃ©e masculine individuelle'),
(192, 'Gauthier Grumier', 'France', 'Bronze', 'Rio 2016', 'Ã‰pÃ©e masculine individuelle'),
(193, 'Ioannis Georgiadis', 'GrÃ¨ce', 'Or', 'AthÃ¨nes 1896', 'Sabre masculin individuel'),
(194, 'TilÃ©machos KarÃ¡kalos', 'GrÃ¨ce', 'Argent', 'AthÃ¨nes 1896', 'Sabre masculin individuel'),
(195, 'Holger Nielsen', 'Danemark', 'Bronze', 'AthÃ¨nes 1896', 'Sabre masculin individuel'),
(196, 'Georges de la Falaise', 'France', 'Or', 'Paris 1900', 'Sabre masculin individuel'),
(197, 'LÃ©on ThiÃ©baut', 'France', 'Argent', 'Paris 1900', 'Sabre masculin individuel'),
(198, 'Siegfried Flesch', 'Autriche', 'Bronze', 'Paris 1900', 'Sabre masculin individuel'),
(199, 'Manuel Diaz', 'Cuba', 'Or', 'Saint Louis 1904', 'Sabre masculin individuel'),
(200, 'William Grebe', 'Ã‰tats-Unis', 'Argent', 'Saint Louis 1904', 'Sabre masculin individuel'),
(201, 'Albertson Van Zo Post', 'Cuba', 'Bronze', 'Saint Louis 1904', 'Sabre masculin individuel'),
(202, 'JenÅ‘ Fuchs', 'Hongrie', 'Or', 'Londres 1908', 'Sabre masculin individuel'),
(203, 'BÃ©la Zulawsky', 'Hongrie', 'Argent', 'Londres 1908', 'Sabre masculin individuel'),
(204, 'VilÃ©m Goppold von Lobsdorf', 'BohÃªme', 'Bronze', 'Londres 1908', 'Sabre masculin individuel'),
(205, 'JenÅ‘ Fuchs', 'Hongrie', 'Or', 'Stockholm 1912', 'Sabre masculin individuel'),
(206, 'BÃ©la BÃ©kÃ©ssy', 'Hongrie', 'Argent', 'Stockholm 1912', 'Sabre masculin individuel'),
(207, 'Ervin MÃ©szÃ¡ros', 'Hongrie', 'Bronze', 'Stockholm 1912', 'Sabre masculin individuel'),
(208, 'Nedo Nadi', 'Italie', 'Or', 'Anvers 1920', 'Sabre masculin individuel'),
(209, 'Aldo Nadi', 'Italie', 'Argent', 'Anvers 1920', 'Sabre masculin individuel'),
(210, 'Adrianus de Jong', 'Pays-Bas', 'Bronze', 'Anvers 1920', 'Sabre masculin individuel'),
(211, 'SÃ¡ndor Posta', 'Hongrie', 'Or', 'Paris 1924', 'Sabre masculin individuel'),
(212, 'Roger Ducret', 'France', 'Argent', 'Paris 1924', 'Sabre masculin individuel'),
(213, 'JÃ¡nos Garay', 'Hongrie', 'Bronze', 'Paris 1924', 'Sabre masculin individuel'),
(214, 'Ã–dÃ¶n TersztyÃ¡nszky', 'Hongrie', 'Or', 'Amsterdam 1928', 'Sabre masculin individuel'),
(215, 'Attila Petschauer', 'Hongrie', 'Argent', 'Amsterdam 1928', 'Sabre masculin individuel'),
(216, 'Bino Bini', 'Italie', 'Bronze', 'Amsterdam 1928', 'Sabre masculin individuel'),
(217, 'GyÃ¶rgy Piller', 'Hongrie', 'Or', 'Los Angeles 1932', 'Sabre masculin individuel'),
(218, 'Giulio Gaudini', 'Italie', 'Argent', 'Los Angeles 1932', 'Sabre masculin individuel'),
(219, 'Endre Kabos', 'Hongrie', 'Bronze', 'Los Angeles 1932', 'Sabre masculin individuel'),
(220, 'Endre Kabos', 'Hongrie', 'Or', 'Berlin 1936', 'Sabre masculin individuel'),
(221, 'Gustavo Marzi', 'Italie', 'Argent', 'Berlin 1936', 'Sabre masculin individuel'),
(222, 'AladÃ¡r Gerevich', 'Hongrie', 'Bronze', 'Berlin 1936', 'Sabre masculin individuel'),
(223, 'AladÃ¡r Gerevich', 'Hongrie', 'Or', 'Londres 1948', 'Sabre masculin individuel'),
(224, 'Vincenzo Pinton', 'Italie', 'Argent', 'Londres 1948', 'Sabre masculin individuel'),
(225, 'PÃ¡l KovÃ¡cs', 'Hongrie', 'Bronze', 'Londres 1948', 'Sabre masculin individuel'),
(226, 'PÃ¡l KovÃ¡cs', 'Hongrie', 'Or', 'Helsinki 1952', 'Sabre masculin individuel'),
(227, 'AladÃ¡r Gerevich', 'Hongrie', 'Argent', 'Helsinki 1952', 'Sabre masculin individuel'),
(228, 'Tibor Berczelly', 'Hongrie', 'Bronze', 'Helsinki 1952', 'Sabre masculin individuel'),
(229, 'Rudolf KÃ¡rpÃ¡ti', 'Hongrie', 'Or', 'Melbourne 1956', 'Sabre masculin individuel'),
(230, 'Jerzy PawÅ‚owski', 'Pologne', 'Argent', 'Melbourne 1956', 'Sabre masculin individuel'),
(231, 'Lev Kuznetsov', 'URSS', 'Bronze', 'Melbourne 1956', 'Sabre masculin individuel'),
(232, 'Rudolf KÃ¡rpÃ¡ti', 'Hongrie', 'Or', 'Rome 1960', 'Sabre masculin individuel'),
(233, 'ZoltÃ¡n HorvÃ¡th', 'Hongrie', 'Argent', 'Rome 1960', 'Sabre masculin individuel'),
(234, 'Wladimiro Calarese', 'Italie', 'Bronze', 'Rome 1960', 'Sabre masculin individuel'),
(235, 'Tibor Pezsa', 'Hongrie', 'Or', 'Tokyo 1964', 'Sabre masculin individuel'),
(236, 'Claude Arabo', 'France', 'Argent', 'Tokyo 1964', 'Sabre masculin individuel'),
(237, 'Umar Mavlikhanov', 'URSS', 'Bronze', 'Tokyo 1964', 'Sabre masculin individuel'),
(238, 'Jerzy Pawlowski', 'Pologne', 'Or', 'Mexico 1968', 'Sabre masculin individuel'),
(239, 'Mark Rakita', 'URSS', 'Argent', 'Mexico 1968', 'Sabre masculin individuel'),
(240, 'Tibor PÃ©zsa', 'Hongrie', 'Bronze', 'Mexico 1968', 'Sabre masculin individuel'),
(241, 'Viktor Sidjak', 'URSS', 'Or', 'Munich 1972', 'Sabre masculin individuel'),
(242, 'PÃ©ter MarÃ³th', 'Hongrie', 'Argent', 'Munich 1972', 'Sabre masculin individuel'),
(243, 'Vladimir Nazlymov', 'URSS', 'Bronze', 'Munich 1972', 'Sabre masculin individuel'),
(244, 'Viktor Krovopouskov', 'URSS', 'Or', 'MontrÃ©al 1976', 'Sabre masculin individuel'),
(245, 'Vladimir Nazlymov', 'URSS', 'Argent', 'MontrÃ©al 1976', 'Sabre masculin individuel'),
(246, 'Viktor Sidjak', 'URSS', 'Bronze', 'MontrÃ©al 1976', 'Sabre masculin individuel'),
(247, 'Viktor Krovopouskov', 'URSS', 'Or', 'Moscou 1980', 'Sabre masculin individuel'),
(248, 'MikhaÃ¯l Bourtsev', 'URSS', 'Argent', 'Moscou 1980', 'Sabre masculin individuel'),
(249, 'Imre GedÅ‘vÃ¡ri', 'Hongrie', 'Bronze', 'Moscou 1980', 'Sabre masculin individuel'),
(250, 'Jean-FranÃ§ois Lamour', 'France', 'Or', 'Los Angeles 1984', 'Sabre masculin individuel'),
(251, 'Marco Marin', 'Italie', 'Argent', 'Los Angeles 1984', 'Sabre masculin individuel'),
(252, 'Peter Westbrook', 'Ã‰tats-Unis', 'Bronze', 'Los Angeles 1984', 'Sabre masculin individuel'),
(253, 'Jean-FranÃ§ois Lamour', 'France', 'Or', 'SÃ©oul 1988', 'Sabre masculin individuel'),
(254, 'Janusz Olech', 'Pologne', 'Argent', 'SÃ©oul 1988', 'Sabre masculin individuel'),
(255, 'Giovanni Scalzo', 'Italie', 'Bronze', 'SÃ©oul 1988', 'Sabre masculin individuel'),
(256, 'Bence SzabÃ³', 'Hongrie', 'Or', 'Barcelone 1992', 'Sabre masculin individuel'),
(257, 'Marco Marin', 'Italie', 'Argent', 'Barcelone 1992', 'Sabre masculin individuel'),
(258, 'Jean-FranÃ§ois Lamour', 'France', 'Bronze', 'Barcelone 1992', 'Sabre masculin individuel'),
(259, 'Stanislav Pozdniakov', 'Russie', 'Or', 'Atlanta 1996', 'Sabre masculin individuel'),
(260, 'Serguei Charikov', 'Russie', 'Argent', 'Atlanta 1996', 'Sabre masculin individuel'),
(261, 'Damien Touya', 'France', 'Bronze', 'Atlanta 1996', 'Sabre masculin individuel'),
(262, 'Mihai Covaliu', 'Roumanie', 'Or', 'Sydney 2000', 'Sabre masculin individuel'),
(263, 'Mathieu Gourdain', 'France', 'Argent', 'Sydney 2000', 'Sabre masculin individuel'),
(264, 'Wiradech Kothny', 'Allemagne', 'Bronze', 'Sydney 2000', 'Sabre masculin individuel'),
(265, 'Aldo Montano', 'Italie', 'Or', 'AthÃ¨nes 2004', 'Sabre masculin individuel'),
(266, 'Zsolt Nemcsik', 'Hongrie', 'Argent', 'AthÃ¨nes 2004', 'Sabre masculin individuel'),
(267, 'Vladyslav Tretyak', 'Ukraine', 'Bronze', 'AthÃ¨nes 2004', 'Sabre masculin individuel'),
(268, 'Zhong Man', 'RÃ©publique populaire de Chine', 'Or', 'PÃ©kin 2008', 'Sabre masculin individuel'),
(269, 'Nicolas Lopez', 'France', 'Argent', 'PÃ©kin 2008', 'Sabre masculin individuel'),
(270, 'Mihai Covaliu', 'Roumanie', 'Bronze', 'PÃ©kin 2008', 'Sabre masculin individuel'),
(271, 'Ãron SzilÃ¡gyi', 'Hongrie', 'Or', 'Londres 2012', 'Sabre masculin individuel'),
(272, 'Diego Occhiuzzi', 'Italie', 'Argent', 'Londres 2012', 'Sabre masculin individuel'),
(273, 'Nikolay Kovalev', 'Russie', 'Bronze', 'Londres 2012', 'Sabre masculin individuel'),
(274, 'Ãron SzilÃ¡gyi', 'Hongrie', 'Or', 'Rio 2016', 'Sabre masculin individuel'),
(275, 'Daryl Homer', 'Ã‰tats-Unis', 'Argent', 'Rio 2016', 'Sabre masculin individuel'),
(276, 'Kim Jung-hwan', 'CorÃ©e du Sud', 'Bronze', 'Rio 2016', 'Sabre masculin individuel'),
(277, 'Albert Ayat', 'France', 'Or', 'Paris 1900', 'Ã‰pÃ©e, MaÃ®tre d\'armes'),
(278, 'Gilbert Bougnol', 'France', 'Argent', 'Paris 1900', 'Ã‰pÃ©e, MaÃ®tre d\'armes'),
(279, 'Henri Laurent', 'France', 'Bronze', 'Paris 1900', 'Ã‰pÃ©e, MaÃ®tre d\'armes'),
(280, 'Albert Ayat', 'France', 'Or', 'Paris 1900', 'Ã‰pÃ©e, Amateurs et MaÃ®tre d\'armes'),
(281, 'RamÃ³n Fonst', 'Cuba', 'Argent', 'Paris 1900', 'Ã‰pÃ©e, Amateurs et MaÃ®tre d\'armes'),
(282, 'LÃ©on SÃ©e', 'France', 'Bronze', 'Paris 1900', 'Ã‰pÃ©e, Amateurs et MaÃ®tre d\'armes'),
(283, 'Leonidas Pyrgos', 'GrÃ¨ce', 'Or', 'AthÃ¨nes 1896', 'Fleuret, MaÃ®tre d\'armes'),
(284, 'Joanni Perronet', 'France', 'Argent', 'AthÃ¨nes 1896', 'Fleuret, MaÃ®tre d\'armes'),
(285, 'Lucien MÃ©rignac', 'France', 'Or', 'Paris 1900', 'Fleuret, MaÃ®tre d\'armes'),
(286, 'Alphonse Kirchhoffer', 'France', 'Argent', 'Paris 1900', 'Fleuret, MaÃ®tre d\'armes'),
(287, 'Jean-Baptiste Mimiague', 'France', 'Bronze', 'Paris 1900', 'Fleuret, MaÃ®tre d\'armes'),
(288, 'Antonio Conte', 'Italie', 'Or', 'Paris 1900', 'Sabre, MaÃ®tre d\'armes'),
(289, 'Italo Santelli', 'Italie', 'Argent', 'Paris 1900', 'Sabre, MaÃ®tre d\'armes'),
(290, 'Milan NeraliÄ‡', 'Autriche', 'Bronze', 'Paris 1900', 'Sabre, MaÃ®tre d\'armes'),
(291, 'Albertson Van Zo Post', 'Cuba', 'Or', 'Saint Louis 1904', 'BÃ¢ton'),
(292, 'William O\'Connor', 'Ã‰tats-Unis', 'Argent', 'Saint Louis 1904', 'BÃ¢ton'),
(293, 'William Grebe', 'Ã‰tats-Unis', 'Bronze', 'Saint Louis 1904', 'BÃ¢ton'),
(294, 'Ellen Osiier', 'Danemark', 'Or', 'Paris 1924', 'Fleuret fÃ©minin individuel'),
(295, 'Gladys Davies', 'Royaume-Uni', 'Argent', 'Paris 1924', 'Fleuret fÃ©minin individuel'),
(296, 'Grete Heckscher', 'Danemark', 'Bronze', 'Paris 1924', 'Fleuret fÃ©minin individuel'),
(297, 'Helene Mayer', 'Allemagne', 'Or', 'Amsterdam 1928', 'Fleuret fÃ©minin individuel'),
(298, 'Muriel Freeman', 'Royaume-Uni', 'Argent', 'Amsterdam 1928', 'Fleuret fÃ©minin individuel'),
(299, 'Olga Oelkers', 'Allemagne', 'Bronze', 'Amsterdam 1928', 'Fleuret fÃ©minin individuel'),
(300, 'Ellen Preis', 'Autriche', 'Or', 'Los Angeles 1932', 'Fleuret fÃ©minin individuel'),
(301, 'Judy Guinness', 'Royaume-Uni', 'Argent', 'Los Angeles 1932', 'Fleuret fÃ©minin individuel'),
(302, 'Erna BogÃ¡thy-Bogen', 'Hongrie', 'Bronze', 'Los Angeles 1932', 'Fleuret fÃ©minin individuel'),
(303, 'Ilona Elek', 'Hongrie', 'Or', 'Berlin 1936', 'Fleuret fÃ©minin individuel'),
(304, 'Helene Mayer', 'Allemagne', 'Argent', 'Berlin 1936', 'Fleuret fÃ©minin individuel'),
(305, 'Ellen Preis', 'Autriche', 'Bronze', 'Berlin 1936', 'Fleuret fÃ©minin individuel'),
(306, 'Ilona Elek', 'Hongrie', 'Or', 'Londres 1948', 'Fleuret fÃ©minin individuel'),
(307, 'Karen Lachmann', 'Danemark', 'Argent', 'Londres 1948', 'Fleuret fÃ©minin individuel'),
(308, 'Ellen Mueller', 'Autriche', 'Bronze', 'Londres 1948', 'Fleuret fÃ©minin individuel'),
(309, 'Irene Camber', 'Italie', 'Or', 'Helsinki 1952', 'Fleuret fÃ©minin individuel'),
(310, 'Ilona Elek', 'Hongrie', 'Argent', 'Helsinki 1952', 'Fleuret fÃ©minin individuel'),
(311, 'Karen Lachmann', 'Danemark', 'Bronze', 'Helsinki 1952', 'Fleuret fÃ©minin individuel'),
(312, 'Gillian Sheen', 'Royaume-Uni', 'Or', 'Melbourne 1956', 'Fleuret fÃ©minin individuel'),
(313, 'Olga OrbÃ¡n', 'Roumanie', 'Argent', 'Melbourne 1956', 'Fleuret fÃ©minin individuel'),
(314, 'Renee Garilhe', 'France', 'Bronze', 'Melbourne 1956', 'Fleuret fÃ©minin individuel'),
(315, 'Heidi Schmid', 'Ã‰quipe unifiÃ©e d\'Allemagne', 'Or', 'Rome 1960', 'Fleuret fÃ©minin individuel'),
(316, 'Valentina Rastvorova', 'URSS', 'Argent', 'Rome 1960', 'Fleuret fÃ©minin individuel'),
(317, 'Maria Vicol', 'Roumanie', 'Bronze', 'Rome 1960', 'Fleuret fÃ©minin individuel'),
(318, 'IldikÃ³ RejtÅ‘', 'Hongrie', 'Or', 'Tokyo 1964', 'Fleuret fÃ©minin individuel'),
(319, 'Helga Mees', 'Ã‰quipe unifiÃ©e d\'Allemagne', 'Argent', 'Tokyo 1964', 'Fleuret fÃ©minin individuel'),
(320, 'Antonella Ragno', 'Italie', 'Bronze', 'Tokyo 1964', 'Fleuret fÃ©minin individuel'),
(321, 'Yelena Novikova', 'URSS', 'Or', 'Mexico 1968', 'Fleuret fÃ©minin individuel'),
(322, 'Maria del Pilar Roldan', 'Mexique', 'Argent', 'Mexico 1968', 'Fleuret fÃ©minin individuel'),
(323, 'IldikÃ³ RejtÅ‘', 'Hongrie', 'Bronze', 'Mexico 1968', 'Fleuret fÃ©minin individuel'),
(324, 'Antonella Ragno-Lonzi', 'Italie', 'Or', 'Munich 1972', 'Fleuret fÃ©minin individuel'),
(325, 'IldikÃ³ BÃ³bis', 'Hongrie', 'Argent', 'Munich 1972', 'Fleuret fÃ©minin individuel'),
(326, 'Galina Gorokhova', 'URSS', 'Bronze', 'Munich 1972', 'Fleuret fÃ©minin individuel'),
(327, 'IldikÃ³ Schwarczenberger', 'Hongrie', 'Or', 'MontrÃ©al 1976', 'Fleuret fÃ©minin individuel'),
(328, 'Maria Consolata Collino', 'Italie', 'Argent', 'MontrÃ©al 1976', 'Fleuret fÃ©minin individuel'),
(329, 'Elena Novikova-Belova', 'URSS', 'Bronze', 'MontrÃ©al 1976', 'Fleuret fÃ©minin individuel'),
(330, 'Pascale Trinquet', 'France', 'Or', 'Moscou 1980', 'Fleuret fÃ©minin individuel'),
(331, 'Magda Maros', 'Hongrie', 'Argent', 'Moscou 1980', 'Fleuret fÃ©minin individuel'),
(332, 'Barbara WysoczaÅ„ska', 'Pologne', 'Bronze', 'Moscou 1980', 'Fleuret fÃ©minin individuel'),
(333, 'Luan Jujie', 'RÃ©publique populaire de Chine', 'Or', 'Los Angeles 1984', 'Fleuret fÃ©minin individuel'),
(334, 'Cornelia Hanisch', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Argent', 'Los Angeles 1984', 'Fleuret fÃ©minin individuel'),
(335, 'Dorina Vaccaroni', 'Italie', 'Bronze', 'Los Angeles 1984', 'Fleuret fÃ©minin individuel'),
(336, 'Anja Fichtel', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Or', 'SÃ©oul 1988', 'Fleuret fÃ©minin individuel'),
(337, 'Sabine Bau', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Argent', 'SÃ©oul 1988', 'Fleuret fÃ©minin individuel'),
(338, 'Zita Funkenhauser', 'RÃ©publique fÃ©dÃ©rale d\'Allemagne', 'Bronze', 'SÃ©oul 1988', 'Fleuret fÃ©minin individuel'),
(339, 'Giovanna Trillini', 'Italie', 'Or', 'Barcelone 1992', 'Fleuret fÃ©minin individuel'),
(340, 'Wang Huifeng', 'RÃ©publique populaire de Chine', 'Argent', 'Barcelone 1992', 'Fleuret fÃ©minin individuel'),
(341, 'Tatyana Sadovskaya', 'Ã‰quipe unifiÃ©e', 'Bronze', 'Barcelone 1992', 'Fleuret fÃ©minin individuel'),
(342, 'Laura Badea', 'Roumanie', 'Or', 'Atlanta 1996', 'Fleuret fÃ©minin individuel'),
(343, 'Valentina Vezzali', 'Italie', 'Argent', 'Atlanta 1996', 'Fleuret fÃ©minin individuel'),
(344, 'Giovanna Trillini', 'Italie', 'Bronze', 'Atlanta 1996', 'Fleuret fÃ©minin individuel'),
(345, 'Valentina Vezzali', 'Italie', 'Or', 'Sydney 2000', 'Fleuret fÃ©minin individuel'),
(346, 'Rita KÃ¶nig ', 'Allemagne', 'Argent', 'Sydney 2000', 'Fleuret fÃ©minin individuel'),
(347, 'Giovanna Trillini', 'Italie', 'Bronze', 'Sydney 2000', 'Fleuret fÃ©minin individuel'),
(348, 'Valentina Vezzali', 'Italie', 'Or', 'AthÃ¨nes 2004', 'Fleuret fÃ©minin individuel'),
(349, 'Giovanna Trillini', 'Italie', 'Argent', 'AthÃ¨nes 2004', 'Fleuret fÃ©minin individuel'),
(350, 'Sylwia GruchaÅ‚a', 'Pologne', 'Bronze', 'AthÃ¨nes 2004', 'Fleuret fÃ©minin individuel'),
(351, 'Valentina Vezzali', 'Italie', 'Or', 'PÃ©kin 2008', 'Fleuret fÃ©minin individuel'),
(352, 'Nam Hyun-hee', 'CorÃ©e du Sud', 'Argent', 'PÃ©kin 2008', 'Fleuret fÃ©minin individuel'),
(353, 'Margherita Granbassi', 'Italie', 'Bronze', 'PÃ©kin 2008', 'Fleuret fÃ©minin individuel'),
(354, 'Elisa Di Francisca', 'Italie', 'Or', 'Londres 2012', 'Fleuret fÃ©minin individuel'),
(355, 'Arianna Errigo', 'Italie', 'Argent', 'Londres 2012', 'Fleuret fÃ©minin individuel'),
(356, 'Valentina Vezzali', 'Italie', 'Bronze', 'Londres 2012', 'Fleuret fÃ©minin individuel'),
(357, 'Inna Deriglazova', 'Russie', 'Or', 'Rio 2016', 'Fleuret fÃ©minin individuel'),
(358, 'Elisa Di Francisca', 'Italie', 'Argent', 'Rio 2016', 'Fleuret fÃ©minin individuel'),
(359, 'InÃ¨s Boubakri', 'Tunisie', 'Bronze', 'Rio 2016', 'Fleuret fÃ©minin individuel'),
(360, 'Laura Flessel-Colovic', 'France', 'Or', 'Atlanta 1996', 'Ã‰pÃ©e fÃ©minine individuelle'),
(361, 'ValÃ©rie Barlois', 'France', 'Argent', 'Atlanta 1996', 'Ã‰pÃ©e fÃ©minine individuelle'),
(362, 'GyÃ¶rgyi Szalay', 'Hongrie', 'Bronze', 'Atlanta 1996', 'Ã‰pÃ©e fÃ©minine individuelle'),
(363, 'TÃ­mea Nagy', 'Hongrie', 'Or', 'Sydney 2000', 'Ã‰pÃ©e fÃ©minine individuelle'),
(364, 'Gianna HablÃ¼tzel-BÃ¼rki', 'Suisse', 'Argent', 'Sydney 2000', 'Ã‰pÃ©e fÃ©minine individuelle'),
(365, 'Laura Flessel-Colovic', 'France', 'Bronze', 'Sydney 2000', 'Ã‰pÃ©e fÃ©minine individuelle'),
(366, 'TÃ­mea Nagy', 'Hongrie', 'Or', 'AthÃ¨nes 2004', 'Ã‰pÃ©e fÃ©minine individuelle'),
(367, 'Laura Flessel-Colovic', 'France', 'Argent', 'AthÃ¨nes 2004', 'Ã‰pÃ©e fÃ©minine individuelle'),
(368, 'Maureen Nisima', 'France', 'Bronze', 'AthÃ¨nes 2004', 'Ã‰pÃ©e fÃ©minine individuelle'),
(369, 'Britta Heidemann', 'Allemagne', 'Or', 'PÃ©kin 2008', 'Ã‰pÃ©e fÃ©minine individuelle'),
(370, 'Ana Maria BrÃ¢nzÄƒ', 'Roumanie', 'Argent', 'PÃ©kin 2008', 'Ã‰pÃ©e fÃ©minine individuelle'),
(371, 'Ildiko Mincza-Nebald', 'Hongrie', 'Bronze', 'PÃ©kin 2008', 'Ã‰pÃ©e fÃ©minine individuelle'),
(372, 'Yana Shemyakina', 'Ukraine', 'Or', 'Londres 2012', 'Ã‰pÃ©e fÃ©minine individuelle'),
(373, 'Britta Heidemann', 'Allemagne', 'Argent', 'Londres 2012', 'Ã‰pÃ©e fÃ©minine individuelle'),
(374, 'Sun Yujie', 'RÃ©publique populaire de Chine', 'Bronze', 'Londres 2012', 'Ã‰pÃ©e fÃ©minine individuelle'),
(375, 'Emese SzÃ¡sz', 'Hongrie', 'Or', 'Rio 2016', 'Ã‰pÃ©e fÃ©minine individuelle'),
(376, 'Rossella Fiamingo', 'Italie', 'Argent', 'Rio 2016', 'Ã‰pÃ©e fÃ©minine individuelle'),
(377, 'Sun Yiwen', 'RÃ©publique populaire de Chine', 'Bronze', 'Rio 2016', 'Ã‰pÃ©e fÃ©minine individuelle'),
(378, 'Mariel Zagunis', 'Ã‰tats-Unis', 'Or', 'AthÃ¨nes 2004', 'Sabre fÃ©minin individuel'),
(379, 'Tan Xue', 'RÃ©publique populaire de Chine', 'Argent', 'AthÃ¨nes 2004', 'Sabre fÃ©minin individuel'),
(380, 'Sada Jacobson', 'Ã‰tats-Unis', 'Bronze', 'AthÃ¨nes 2004', 'Sabre fÃ©minin individuel'),
(381, 'Mariel Zagunis', 'Ã‰tats-Unis', 'Or', 'PÃ©kin 2008', 'Sabre fÃ©minin individuel'),
(382, 'Sada Jacobson', 'Ã‰tats-Unis', 'Argent', 'PÃ©kin 2008', 'Sabre fÃ©minin individuel'),
(383, 'Rebecca Ward', 'Ã‰tats-Unis', 'Bronze', 'PÃ©kin 2008', 'Sabre fÃ©minin individuel'),
(384, 'Kim Ji-yeon', 'CorÃ©e du Sud', 'Or', 'Londres 2012', 'Sabre fÃ©minin individuel'),
(385, 'Sofia Velikaya', 'Russie', 'Argent', 'Londres 2012', 'Sabre fÃ©minin individuel'),
(386, 'Olha Kharlan', 'Ukraine', 'Bronze', 'Londres 2012', 'Sabre fÃ©minin individuel'),
(387, 'Yana Egorian', 'Russie', 'Or', 'Rio 2016', 'Sabre fÃ©minin individuel'),
(388, 'Sofia Velikaya', 'Russie', 'Argent', 'Rio 2016', 'Sabre fÃ©minin individuel'),
(389, 'Olha Kharlan', 'Ukraine', 'Bronze', 'Rio 2016', 'Sabre fÃ©minin individuel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
