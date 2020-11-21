-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 21 nov. 2020 à 11:40
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
  `description` text,
  `onsale` tinyint(1) NOT NULL DEFAULT '0',
  `ord` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

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
(20, 1, 'vivamus in', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 1, 2),
(21, 1, 'POO INSERT', 'POO DESCRIPTION', 0, 1),
(22, 1, 'POO INSERT', 'POO DESCRIPTION', 0, 1),
(23, 1, 'POO INSERT', 'POO DESCRIPTION', 0, 1),
(24, 1, 'POO INSERT', NULL, 1, 0),
(25, 1, 'POO INSERT', NULL, 0, 0),
(26, 1, 'POO INSERT', NULL, 0, 0),
(27, 1, 'POO INSERT', NULL, 0, 0),
(28, 1, 'POO INSERT', NULL, 0, 0),
(29, 1, 'POO INSERT', NULL, 0, 0),
(30, 1, 'POO INSERT', NULL, 0, 0),
(31, 1, 'POO INSERT', NULL, 0, 0),
(32, 1, 'POO INSERT', NULL, 0, 0),
(33, 1, 'POO INSERT', NULL, 0, 0),
(34, 1, 'POO INSERT', NULL, 0, 0),
(35, 1, 'POO INSERT', NULL, 0, 0),
(36, 1, 'POO INSERT', NULL, 0, 0),
(37, 1, 'POO INSERT', NULL, 0, 0),
(38, 1, 'POO INSERT', NULL, 0, 0),
(39, 1, 'POO INSERT', NULL, 0, 0),
(40, 1, 'POO INSERT', NULL, 0, 0),
(41, 1, 'POO INSERT', NULL, 0, 0),
(42, 1, 'POO INSERT', NULL, 0, 0),
(43, 1, 'POO INSERT', NULL, 0, 0),
(44, 1, 'POO INSERT', NULL, 0, 0),
(45, 1, 'POO INSERT', NULL, 0, 0),
(46, 1, 'POO INSERT', NULL, 0, 0),
(47, 1, 'POO INSERT', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `numero` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `command_line`
--

DROP TABLE IF EXISTS `command_line`;
CREATE TABLE IF NOT EXISTS `command_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `command_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `onsale` tinyint(1) NOT NULL DEFAULT '1',
  `ord` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `active`, `category_id`, `title`, `description`, `price`, `onsale`, `ord`) VALUES
(1, 0, 16, 'non', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 48.42, 1, 58),
(2, 0, 5, 'titre produit', 'description produit', 55.18, 0, 5),
(4, 0, 5, 'mi in', 'Nunc purus.', 78.92, 0, 83),
(6, 0, 19, 'non lectus aliquam sit amet', 'Pellentesque eget nunc.', 97.43, 1, 95),
(7, 1, 16, 'libero convallis', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 50.52, 1, 4),
(8, 0, 11, 'mauris sit amet eros', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 31.14, 0, 15),
(9, 1, 18, 'odio', 'In hac habitasse platea dictumst.', 23.63, 0, 53),
(10, 1, 2, 'praesent blandit nam nulla', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 93.77, 0, 26),
(11, 0, 20, 'pretium', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 59.42, 0, 49),
(12, 1, 3, 'aliquam augue quam', 'Maecenas tincidunt lacus at velit.', 46.15, 0, 91),
(13, 0, 6, 'in hac habitasse platea', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 6.78, 1, 29),
(14, 0, 14, 'justo aliquam', 'Integer ac neque. Duis bibendum.', 6.47, 0, 83),
(15, 0, 8, 'suspendisse ornare consequat', 'Morbi porttitor lorem id ligula.', 68.26, 1, 29),
(16, 0, 10, 'ipsum integer a nibh in', 'Praesent blandit. Nam nulla.', 40.32, 1, 26),
(17, 1, 19, 'mi', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 82.97, 0, 49),
(18, 0, 12, 'ut', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 79.19, 1, 9),
(19, 1, 7, 'at turpis donec', 'Nam tristique tortor eu pede.', 87.13, 0, 42),
(20, 0, 12, 'ante', 'Phasellus in felis. Donec semper sapien a libero.', 35.28, 0, 25),
(21, 1, 15, 'nulla tellus', 'Nullam varius.', 39.6, 1, 15),
(22, 0, 8, 'ipsum', 'Aliquam erat volutpat.', 63.99, 0, 8),
(23, 0, 3, 'dictumst morbi', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 37.63, 1, 92),
(24, 0, 14, 'neque sapien placerat', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 77.91, 0, 96),
(25, 0, 1, 'integer ac leo pellentesque', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 46.99, 1, 29),
(26, 1, 6, 'erat id mauris vulputate elementum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 14.91, 1, 38),
(27, 1, 6, 'consequat ut', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 22.69, 0, 7),
(28, 1, 15, 'blandit mi', 'Nam tristique tortor eu pede.', 16.69, 1, 52),
(29, 0, 16, 'donec semper sapien', 'Cras pellentesque volutpat dui.', 71.46, 1, 17),
(30, 1, 12, 'lorem quisque ut erat', 'Suspendisse accumsan tortor quis turpis. Sed ante.', 91.06, 0, 77),
(31, 1, 7, 'fusce lacus purus', 'Pellentesque eget nunc.', 64.77, 0, 51),
(32, 1, 6, 'leo', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 51.25, 0, 27),
(33, 0, 10, 'curabitur convallis', 'Aenean sit amet justo.', 94.99, 1, 98),
(34, 0, 5, 'eget congue eget semper rutrum', 'Pellentesque ultrices mattis odio.', 2.35, 0, 92),
(35, 0, 17, 'tincidunt ante vel ipsum', 'Nunc rhoncus dui vel sem.', 25.85, 0, 26),
(36, 1, 11, 'at', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 32.73, 1, 26),
(37, 1, 2, 'nulla', 'Duis bibendum.', 86.96, 1, 88),
(38, 1, 10, 'luctus', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 33.4, 0, 50),
(39, 0, 7, 'lectus in', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.', 94.74, 0, 2),
(40, 1, 7, 'congue diam', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 4.91, 0, 97),
(41, 0, 7, 'sit', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 16.89, 1, 29),
(42, 1, 6, 'vel sem', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 35.85, 0, 77),
(43, 1, 1, 'eget tempus vel pede', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', 63.41, 1, 29),
(44, 0, 20, 'nulla suspendisse potenti cras in', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 62.65, 1, 13),
(45, 1, 2, 'ac enim in tempor turpis', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 57.78, 1, 89),
(46, 1, 1, 'porttitor lorem id', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 26.57, 0, 55),
(47, 1, 11, 'est lacinia', 'Suspendisse potenti.', 98.69, 0, 25),
(48, 1, 13, 'condimentum neque sapien', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 87.61, 1, 60),
(49, 0, 17, 'nullam porttitor', 'Aliquam erat volutpat. In congue. Etiam justo.', 25.67, 1, 89),
(50, 0, 9, 'sed vel', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 62.03, 0, 23),
(51, 0, 11, 'vel', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 39.68, 1, 61),
(52, 0, 1, 'vestibulum ante', 'Nunc purus. Phasellus in felis.', 11.04, 1, 70),
(53, 1, 12, 'consequat nulla nisl nunc', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 7.35, 1, 2),
(54, 1, 11, 'ac nulla sed', 'Praesent blandit.', 68.73, 0, 44),
(55, 0, 7, 'malesuada in imperdiet et commodo', 'In quis justo.', 94.86, 1, 13),
(56, 1, 20, 'scelerisque mauris', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 73.19, 1, 36),
(57, 0, 13, 'congue', 'Nulla facilisi.', 82.2, 0, 74),
(58, 1, 14, 'quis tortor id nulla', 'Ut tellus.', 50.78, 0, 80),
(59, 0, 10, 'lorem ipsum dolor sit', 'In sagittis dui vel nisl. Duis ac nibh.', 28.87, 0, 6),
(60, 0, 18, 'morbi a ipsum', 'Nulla ac enim.', 31.2, 1, 81),
(61, 1, 5, 'pede lobortis ligula sit amet', 'Sed vel enim sit amet nunc viverra dapibus.', 31.61, 1, 8),
(62, 0, 3, 'duis', 'Nulla nisl. Nunc nisl.', 75.9, 0, 33),
(63, 1, 5, 'auctor sed tristique in', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 50.63, 0, 21),
(64, 0, 20, 'maecenas', 'Aenean lectus.', 70.12, 0, 40),
(65, 0, 12, 'libero ut massa volutpat', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 79.81, 1, 21),
(66, 1, 6, 'volutpat sapien arcu', 'Etiam pretium iaculis justo.', 95.58, 1, 24),
(67, 0, 15, 'integer a', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 22.41, 0, 2),
(68, 0, 15, 'aliquam lacus', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 68.55, 0, 5),
(69, 1, 6, 'tellus semper interdum', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 68.25, 1, 15),
(70, 0, 11, 'sapien cum sociis', 'Fusce consequat. Nulla nisl. Nunc nisl.', 62.04, 1, 28),
(71, 0, 3, 'cubilia curae donec', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 21.16, 1, 36),
(72, 1, 9, 'a', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 71.5, 1, 9),
(73, 0, 7, 'libero', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 2.9, 1, 1),
(74, 0, 3, 'nunc purus phasellus in', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 29.78, 1, 61),
(75, 1, 7, 'luctus ultricies eu nibh', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 27.39, 0, 50),
(76, 1, 4, 'dolor', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 25.86, 1, 40),
(77, 1, 14, 'at nibh in', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 26.4, 0, 69),
(78, 0, 7, 'mauris enim leo rhoncus sed', 'Phasellus sit amet erat. Nulla tempus.', 64.22, 1, 38),
(79, 0, 14, 'leo odio condimentum id luctus', 'Vestibulum sed magna at nunc commodo placerat.', 74.96, 0, 93),
(80, 1, 3, 'venenatis lacinia aenean sit', 'Nullam varius. Nulla facilisi.', 93.66, 0, 36),
(81, 0, 4, 'nunc proin at turpis', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 82.48, 0, 65),
(82, 0, 5, 'luctus et ultrices posuere cubilia', 'Morbi porttitor lorem id ligula.', 64.35, 0, 14),
(83, 0, 7, 'nunc vestibulum ante', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 17.83, 1, 35),
(84, 1, 8, 'nisl', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 75.81, 0, 81),
(85, 1, 11, 'donec', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 42.78, 1, 93),
(86, 0, 20, 'eros suspendisse accumsan tortor quis', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 42.71, 1, 55),
(87, 1, 4, 'amet diam in', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 69.16, 0, 32),
(88, 1, 3, 'integer', 'Mauris sit amet eros.', 72.36, 0, 45),
(89, 0, 9, 'ut massa volutpat convallis', 'Sed ante.', 73.42, 0, 58),
(90, 1, 8, 'rhoncus dui vel', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 98.52, 1, 65),
(91, 1, 19, 'pede morbi porttitor', 'Vivamus vel nulla eget eros elementum pellentesque.', 26.08, 1, 21),
(92, 1, 5, 'consequat varius integer', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 72.63, 1, 54),
(93, 1, 15, 'quis turpis eget', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 10.46, 1, 95),
(94, 1, 7, 'praesent blandit lacinia', 'Donec posuere metus vitae ipsum. Aliquam non mauris.', 94.02, 0, 77),
(95, 1, 3, 'quam sollicitudin vitae consectetuer eget', 'Vivamus vestibulum sagittis sapien.', 26.89, 0, 72),
(96, 0, 5, 'metus sapien ut nunc vestibulum', 'Vivamus tortor. Duis mattis egestas metus.', 91.85, 1, 3),
(97, 1, 12, 'pede morbi porttitor', 'Sed ante.', 33.7, 1, 90),
(98, 1, 18, 'vestibulum ac est lacinia', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 89.91, 0, 8),
(99, 1, 10, 'lacinia', 'In congue. Etiam justo.', 66.77, 1, 69),
(100, 0, 3, 'imperdiet', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 25.87, 1, 98),
(124, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(125, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(126, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(127, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(128, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(129, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(130, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(131, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(132, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(133, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(134, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(135, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(136, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(137, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(138, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(139, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(140, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(141, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(142, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(143, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(144, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(145, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(146, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(147, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(148, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(149, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(150, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(151, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(152, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(153, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(154, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(155, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(156, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(157, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(158, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(159, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(160, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(161, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(162, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(163, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(164, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(165, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(166, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(167, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(168, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(169, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(170, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(171, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(172, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(173, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(174, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(175, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(176, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(177, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(178, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(179, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(180, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(181, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(182, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(183, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(184, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(185, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(186, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(187, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(188, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(189, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(190, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(191, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(192, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(193, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(194, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(195, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(196, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(197, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(198, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(199, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(200, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(201, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(202, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(203, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(204, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(205, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(206, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(207, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(208, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(209, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(210, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(211, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(212, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(213, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(214, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(215, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(216, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(217, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(218, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(219, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(220, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(221, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(222, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(223, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(224, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(225, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(226, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(227, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(228, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(229, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(230, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(231, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(232, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(233, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(234, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(235, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(236, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(237, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(238, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(239, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(240, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(241, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(242, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(243, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(244, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(245, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(246, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(247, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(248, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(249, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(250, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(251, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(252, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(253, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(254, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(255, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(256, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(257, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(258, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(259, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(260, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(261, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(262, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(263, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(264, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(265, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(266, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(267, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(268, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(269, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(270, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(271, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(272, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(273, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(274, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(275, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(276, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(277, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(278, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0),
(279, 1, 0, 'testtitle', 'testdescirption', 22.35, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `nom` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
