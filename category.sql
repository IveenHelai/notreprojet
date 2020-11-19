-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 nov. 2020 à 15:54
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
-- Base de données : `notreprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `onsale` tinyint(1) NOT NULL DEFAULT '1',
  `ord` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `active`, `title`, `description`, `onsale`, `ord`) VALUES
(1, 1, 'arcu adipiscing molestie', 'Morbi ut odio.', 0, 9),
(2, 1, 'viverra eget congue', 'Morbi a ipsum.', 1, 15),
(3, 0, 'scelerisque quam turpis', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 0, 6),
(4, 0, 'donec ut mauris', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 0, 20),
(5, 1, 'vel enim', 'Integer ac leo.', 1, 9),
(6, 0, 'curabitur convallis duis consequat dui', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 0, 4),
(7, 1, 'malesuada', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 0, 2),
(8, 1, 'ipsum primis in', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, 2),
(9, 0, 'nisl ut volutpat', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1, 1),
(10, 1, 'potenti', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 0, 15),
(11, 1, 'odio', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 1, 6),
(12, 0, 'fusce consequat', 'Duis bibendum.', 0, 3),
(13, 1, 'habitasse', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, 8),
(14, 1, 'lobortis ligula sit', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 0, 3),
(15, 0, 'quis libero', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 1, 14),
(16, 0, 'dictumst morbi vestibulum velit id', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 0, 6),
(17, 1, 'pretium nisl ut volutpat sapien', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 0, 12),
(18, 0, 'cras non velit nec nisi', 'Proin risus.', 1, 20),
(19, 1, 'donec ut dolor morbi', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, 5),
(20, 1, 'vivamus in', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 1, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
