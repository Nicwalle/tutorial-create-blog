-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 08 Février 2016 à 18:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'modo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `token`, `role`) VALUES
(1, 'Administrateur', 'admin@localhost', '70ccd9007338d6d81dd3b6271621b9cf9a97ea00', 'FantZ2s6G4UXRRX9rvOl', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `date` datetime NOT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `writer`, `image`, `date`, `posted`) VALUES
(3, 'Le framework MaterializeCSS', 'Material Design\r\nCréé et conçu par Google, le Material Design est un langage de conception qui combine les principes classiques d''un design réussi ainsi que l''innovation et la technologie. Le but de Google et de développer une technique de conception pour une expérience utilisateur unifiée au travers de leurs produits sur n''importe quelle plateforme.\r\n\r\nMaterial est la métaphore\r\nLa métaphore du Material Design définie la relation entre l''espace et le mouvement. L''idée est que la technologie est inspirée du papier et de l''encre et est utilisée afin de faciliter la création et l''innovation. Surfaces et bords fournissent des repères visuels familiers qui permettent aux utilisateurs de comprendre rapidement la technologie au-delà du monde physique.\r\n\r\nFranc, animé, voulu\r\nLes éléments et les composants tels que grilles, typographie, couleurs et médias ne sont pas seulement plaisants à voir, il créent aussi un sens de la hiérarchie, du sens et de l''attention.\r\n\r\nLe mouvement donne du sens\r\nLe mouvement permet à l''utilisateur de faire la parallèle entre ce qu''il voit à l''écran et la vie réelle. En fournissant à la fois un retour et de la familiarité, ceci permet à l''utilisateur de s’immerger aisément dans une technologie nouvelle. Le mouvement est cohérent et continu en plus de donner à l''utilisateur des informations supplémentaires sur les élements et trasnformations.', 'admin@localhost', '3.jpg', '2016-01-08 20:55:14', 1),
(20, 'Article avec image d''un bureau', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec laoreet magna eget iaculis sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mi nisi, aliquet non viverra eget, hendrerit eleifend enim. Praesent finibus tortor at scelerisque varius. Etiam malesuada eros lobortis neque ullamcorper, quis aliquet arcu ornare. Nam vulputate quam turpis, eget varius massa lacinia ut. Phasellus laoreet maximus consectetur. Nam pulvinar arcu massa, in aliquam diam tempus at. Ut ac quam cursus elit porttitor aliquam pharetra sed ligula. Nam eleifend eleifend erat, a congue nisi. Duis dapibus facilisis nulla, a gravida velit posuere vel. Suspendisse ac iaculis lacus. Integer ornare velit sapien, ac vulputate arcu ultricies nec. Suspendisse id felis sagittis, eleifend neque tempor, egestas ligula. Cras quis diam consectetur, pharetra justo facilisis, dictum ipsum. Suspendisse nec mauris a nibh iaculis convallis in sit amet justo.\r\n\r\nPhasellus purus nunc, pharetra at neque nec, semper placerat eros. Maecenas vel commodo nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed ultrices mauris vel dapibus dignissim. Duis porttitor a augue at blandit. Nulla facilisi. Quisque iaculis, eros vitae egestas pulvinar, dolor sapien ultricies massa, eget imperdiet erat mi id dui. Pellentesque et pretium purus. Aenean lacinia turpis quis orci fringilla pellentesque. Praesent at dapibus justo, eget interdum nulla.\r\n\r\nPhasellus in sapien laoreet, ullamcorper orci vitae, congue erat. Donec nec pharetra mi, eu accumsan risus. Mauris vestibulum justo ultrices venenatis semper. Donec rhoncus, justo a ullamcorper tempus, leo felis varius ex, quis hendrerit velit purus et dui. Suspendisse sed nibh risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eros elit, tempus id lacus sit amet, vulputate porta enim. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum commodo felis lacus, vel aliquet ligula ultricies sed.\r\n\r\nEtiam condimentum felis eu nisl vestibulum suscipit. In mollis sodales leo, vitae pretium odio faucibus vel. Nulla porttitor accumsan nunc, vitae ornare tortor dignissim ac. Etiam pretium, ipsum non ultrices pharetra, tellus arcu porta nulla, ut scelerisque nunc tortor vel ligula. Quisque mi diam, fringilla nec sapien gravida, viverra cursus libero. Proin tristique lobortis enim, vel blandit sem. Donec posuere est vitae nibh suscipit, ut porttitor sem malesuada. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris at mauris at turpis egestas egestas. Aenean congue ullamcorper dolor sed varius. Integer nec malesuada est. Integer viverra mattis orci, at aliquet enim dictum nec.', 'admin@localhost', '20.jpg', '2016-01-08 20:54:46', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
