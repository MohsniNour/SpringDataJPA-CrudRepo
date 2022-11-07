-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2022 at 03:10 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achatdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie_produit`
--

DROP TABLE IF EXISTS `categorie_produit`;
CREATE TABLE IF NOT EXISTS `categorie_produit` (
  `id_categorie_produit` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_categorie` varchar(255) DEFAULT NULL,
  `libelle_categorie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categorie_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_facture`
--

DROP TABLE IF EXISTS `detail_facture`;
CREATE TABLE IF NOT EXISTS `detail_facture` (
  `id_detail_facture` bigint(20) NOT NULL AUTO_INCREMENT,
  `montant_remise` float NOT NULL,
  `pourcentage_remise` int(11) DEFAULT NULL,
  `prix_total_detail` float NOT NULL,
  `qte_commandee` int(11) DEFAULT NULL,
  `facture_id_facture` bigint(20) DEFAULT NULL,
  `produit_id_produit` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_detail_facture`),
  KEY `FKo4yc7y45xlhgtxdutts3p9yo4` (`facture_id_facture`),
  KEY `FKptlermnhcwe51qffww9v1yl0k` (`produit_id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_fournisseur`
--

DROP TABLE IF EXISTS `detail_fournisseur`;
CREATE TABLE IF NOT EXISTS `detail_fournisseur` (
  `id_detail_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `date_debut_collaboration` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_detail_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_fournisseur`
--

INSERT INTO `detail_fournisseur` (`id_detail_fournisseur`, `adresse`, `date_debut_collaboration`, `email`, `matricule`) VALUES
(1, NULL, '2022-11-04', NULL, NULL),
(2, NULL, '2022-11-04', NULL, NULL),
(3, NULL, '2022-11-04', NULL, NULL),
(5, NULL, '2022-11-04', NULL, NULL),
(6, NULL, '2022-11-04', NULL, NULL),
(7, NULL, '2022-11-04', NULL, NULL),
(9, NULL, '2022-11-04', NULL, NULL),
(10, NULL, '2022-11-04', NULL, NULL),
(11, NULL, '2022-11-04', NULL, NULL),
(13, NULL, '2022-11-05', NULL, NULL),
(14, NULL, '2022-11-05', NULL, NULL),
(15, NULL, '2022-11-05', NULL, NULL),
(17, NULL, '2022-11-05', NULL, NULL),
(18, NULL, '2022-11-05', NULL, NULL),
(19, NULL, '2022-11-05', NULL, NULL),
(21, NULL, '2022-11-05', NULL, NULL),
(22, NULL, '2022-11-05', NULL, NULL),
(23, NULL, '2022-11-05', NULL, NULL),
(25, NULL, '2022-11-05', NULL, NULL),
(26, NULL, '2022-11-05', NULL, NULL),
(27, NULL, '2022-11-05', NULL, NULL),
(29, NULL, '2022-11-05', NULL, NULL),
(30, NULL, '2022-11-05', NULL, NULL),
(31, NULL, '2022-11-05', NULL, NULL),
(33, NULL, '2022-11-07', NULL, NULL),
(34, NULL, '2022-11-07', NULL, NULL),
(35, NULL, '2022-11-07', NULL, NULL),
(37, NULL, '2022-11-07', NULL, NULL),
(38, NULL, '2022-11-07', NULL, NULL),
(39, NULL, '2022-11-07', NULL, NULL),
(41, NULL, '2022-11-07', NULL, NULL),
(42, NULL, '2022-11-07', NULL, NULL),
(43, NULL, '2022-11-07', NULL, NULL),
(45, NULL, '2022-11-07', NULL, NULL),
(46, NULL, '2022-11-07', NULL, NULL),
(47, NULL, '2022-11-07', NULL, NULL),
(49, NULL, '2022-11-07', NULL, NULL),
(50, NULL, '2022-11-07', NULL, NULL),
(51, NULL, '2022-11-07', NULL, NULL),
(53, NULL, '2022-11-07', NULL, NULL),
(54, NULL, '2022-11-07', NULL, NULL),
(55, NULL, '2022-11-07', NULL, NULL),
(57, NULL, '2022-11-07', NULL, NULL),
(58, NULL, '2022-11-07', NULL, NULL),
(59, NULL, '2022-11-07', NULL, NULL),
(61, NULL, '2022-11-07', NULL, NULL),
(62, NULL, '2022-11-07', NULL, NULL),
(63, NULL, '2022-11-07', NULL, NULL),
(65, NULL, '2022-11-07', NULL, NULL),
(66, NULL, '2022-11-07', NULL, NULL),
(67, NULL, '2022-11-07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id_facture` bigint(20) NOT NULL AUTO_INCREMENT,
  `archivee` bit(1) DEFAULT NULL,
  `date_creation_facture` date DEFAULT NULL,
  `date_derniere_modification_facture` date DEFAULT NULL,
  `montant_facture` float NOT NULL,
  `montant_remise` float NOT NULL,
  `fournisseur_id_fournisseur` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `FK2pphg0s5146xjyhpyhfpa419l` (`fournisseur_id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facture`
--

INSERT INTO `facture` (`id_facture`, `archivee`, `date_creation_facture`, `date_derniere_modification_facture`, `montant_facture`, `montant_remise`, `fournisseur_id_fournisseur`) VALUES
(1, b'0', '2022-10-09', '2022-10-14', 90, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT,
  `categorie_fournisseur` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `detail_fournisseur_id_detail_fournisseur` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur`),
  KEY `FKq5vad51fs51xymlrtju4m2b9r` (`detail_fournisseur_id_detail_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `categorie_fournisseur`, `code`, `libelle`, `detail_fournisseur_id_detail_fournisseur`) VALUES
(1, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 1),
(2, 'ORDINAIRE', 'UPCODE', 'LIB2', 2),
(3, 'ORDINAIRE', 'CODE1', 'LIB2', 3),
(5, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 5),
(6, 'ORDINAIRE', 'UPCODE', 'LIB2', 6),
(7, 'ORDINAIRE', 'CODE1', 'LIB2', 7),
(9, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 9),
(10, 'ORDINAIRE', 'UPCODE', 'LIB2', 10),
(11, 'ORDINAIRE', 'CODE1', 'LIB2', 11),
(13, 'ORDINAIRE', 'CODE1', 'LIB2', 13),
(14, 'ORDINAIRE', 'UPCODE', 'LIB2', 14),
(15, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 15),
(17, 'ORDINAIRE', 'CODE1', 'LIB2', 17),
(18, 'ORDINAIRE', 'UPCODE', 'LIB2', 18),
(19, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 19),
(21, 'ORDINAIRE', 'CODE1', 'LIB2', 21),
(22, 'ORDINAIRE', 'UPCODE', 'LIB2', 22),
(23, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 23),
(25, 'ORDINAIRE', 'CODE1', 'LIB2', 25),
(26, 'ORDINAIRE', 'UPCODE', 'LIB2', 26),
(27, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 27),
(29, 'ORDINAIRE', 'CODE1', 'LIB2', 29),
(30, 'ORDINAIRE', 'UPCODE', 'LIB2', 30),
(31, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 31),
(33, 'ORDINAIRE', 'CODE1', 'LIB2', 33),
(34, 'ORDINAIRE', 'UPCODE', 'LIB2', 34),
(35, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 35),
(37, 'ORDINAIRE', 'CODE1', 'LIB2', 37),
(38, 'ORDINAIRE', 'UPCODE', 'LIB2', 38),
(39, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 39),
(41, 'ORDINAIRE', 'CODE1', 'LIB2', 41),
(42, 'ORDINAIRE', 'UPCODE', 'LIB2', 42),
(43, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 43),
(45, 'ORDINAIRE', 'CODE1', 'LIB2', 45),
(46, 'ORDINAIRE', 'UPCODE', 'LIB2', 46),
(47, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 47),
(49, 'ORDINAIRE', 'CODE1', 'LIB2', 49),
(50, 'ORDINAIRE', 'UPCODE', 'LIB2', 50),
(51, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 51),
(53, 'ORDINAIRE', 'CODE1', 'LIB2', 53),
(54, 'ORDINAIRE', 'UPCODE', 'LIB2', 54),
(55, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 55),
(57, 'ORDINAIRE', 'CODE1', 'LIB2', 57),
(58, 'ORDINAIRE', 'UPCODE', 'LIB2', 58),
(59, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 59),
(61, 'ORDINAIRE', 'CODE1', 'LIB2', 61),
(62, 'ORDINAIRE', 'UPCODE', 'LIB2', 62),
(63, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 63),
(65, 'ORDINAIRE', 'CODE1', 'LIB2', 65),
(66, 'ORDINAIRE', 'UPCODE', 'LIB2', 66),
(67, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 67);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur_secteur_activites`
--

DROP TABLE IF EXISTS `fournisseur_secteur_activites`;
CREATE TABLE IF NOT EXISTS `fournisseur_secteur_activites` (
  `fournisseurs_id_fournisseur` bigint(20) NOT NULL,
  `secteur_activites_id_secteur_activite` bigint(20) NOT NULL,
  PRIMARY KEY (`fournisseurs_id_fournisseur`,`secteur_activites_id_secteur_activite`),
  KEY `FKllqt521h3meitfrk3c7klahtk` (`secteur_activites_id_secteur_activite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operateur`
--

DROP TABLE IF EXISTS `operateur`;
CREATE TABLE IF NOT EXISTS `operateur` (
  `id_operateur` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_operateur`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operateur`
--

INSERT INTO `operateur` (`id_operateur`, `nom`, `password`, `prenom`) VALUES
(1, 'Gassab', 'root', 'Selma'),
(3, 'Farhat', 'root', 'test'),
(4, 'Soua', 'root', 'Amira'),
(5, 'Gassab', 'root', 'Selma'),
(7, 'Farhat', 'root', 'test'),
(8, 'Soua', 'root', 'Amira'),
(9, 'Gassab', 'root', 'Selma'),
(11, 'Farhat', 'root', 'test'),
(12, 'Soua', 'root', 'Amira'),
(13, 'Gassab', 'root', 'Selma'),
(15, 'Farhat', 'root', 'test'),
(16, 'Soua', 'root', 'Amira'),
(17, 'Gassab', 'root', 'Selma'),
(19, 'Farhat', 'root', 'test'),
(20, 'Soua', 'root', 'Amira'),
(21, 'Gassab', 'root', 'Selma'),
(23, 'Farhat', 'root', 'test'),
(24, 'Soua', 'root', 'Amira'),
(25, 'Gassab', 'root', 'Selma'),
(27, 'Farhat', 'root', 'test'),
(28, 'Soua', 'root', 'Amira'),
(29, 'Gassab', 'root', 'Selma'),
(30, 'Soua', 'root', 'Amira'),
(31, 'Farhat', 'root', 'test'),
(33, 'Gassab', 'root', 'Selma'),
(34, 'Soua', 'root', 'Amira'),
(35, 'Farhat', 'root', 'test'),
(37, 'Gassab', 'root', 'Selma'),
(39, 'Farhat', 'root', 'test'),
(40, 'Soua', 'root', 'Amira'),
(41, 'Gassab', 'root', 'Selma'),
(42, 'Soua', 'root', 'Amira'),
(43, 'Farhat', 'root', 'test'),
(45, 'Gassab', 'root', 'Selma'),
(46, 'Soua', 'root', 'Amira'),
(47, 'Farhat', 'root', 'test'),
(49, 'Gassab', 'root', 'Selma'),
(51, 'Farhat', 'root', 'test'),
(52, 'Soua', 'root', 'Amira'),
(53, 'Gassab', 'root', 'Selma'),
(55, 'Farhat', 'root', 'test'),
(56, 'Soua', 'root', 'Amira'),
(57, 'Gassab', 'root', 'Selma'),
(59, 'Farhat', 'root', 'test'),
(60, 'Soua', 'root', 'Amira'),
(61, 'Gassab', 'root', 'Selma'),
(63, 'Farhat', 'root', 'test'),
(64, 'Soua', 'root', 'Amira'),
(65, 'Gassab', 'root', 'Selma'),
(67, 'Farhat', 'root', 'test'),
(68, 'Soua', 'root', 'Amira'),
(69, 'Gassab', 'root', 'Selma'),
(70, 'Soua', 'root', 'Amira'),
(71, 'Farhat', 'root', 'test'),
(73, 'Gassab', 'root', 'Selma'),
(75, 'Farhat', 'root', 'test'),
(76, 'Soua', 'root', 'Amira'),
(77, 'Gassab', 'root', 'Selma'),
(79, 'Farhat', 'root', 'test'),
(80, 'Soua', 'root', 'Amira'),
(81, 'Gassab', 'root', 'Selma'),
(83, 'Farhat', 'root', 'test'),
(84, 'Soua', 'root', 'Amira'),
(85, 'Gassab', 'root', 'Selma'),
(87, 'Farhat', 'root', 'test'),
(88, 'Soua', 'root', 'Amira'),
(89, 'Gassab', 'root', 'Selma'),
(91, 'Farhat', 'root', 'test'),
(92, 'Soua', 'root', 'Amira'),
(93, 'Gassab', 'root', 'Selma'),
(95, 'Farhat', 'root', 'test'),
(96, 'Soua', 'root', 'Amira'),
(97, 'Gassab', 'root', 'Selma'),
(99, 'Farhat', 'root', 'test'),
(100, 'Soua', 'root', 'Amira'),
(101, 'Gassab', 'root', 'Selma'),
(102, 'Soua', 'root', 'Amira'),
(103, 'Farhat', 'root', 'test'),
(105, 'Gassab', 'root', 'Selma'),
(106, 'Soua', 'root', 'Amira'),
(107, 'Farhat', 'root', 'test'),
(109, 'Gassab', 'root', 'Selma'),
(110, 'Soua', 'root', 'Amira'),
(111, 'Farhat', 'root', 'test'),
(113, 'Gassab', 'root', 'Selma'),
(114, 'Soua', 'root', 'Amira'),
(115, 'Farhat', 'root', 'test'),
(117, 'Gassab', 'root', 'Selma'),
(118, 'Soua', 'root', 'Amira'),
(119, 'Farhat', 'root', 'test'),
(121, 'Gassab', 'root', 'Selma'),
(122, 'Soua', 'root', 'Amira'),
(123, 'Farhat', 'root', 'test'),
(125, 'Gassab', 'root', 'Selma'),
(126, 'Soua', 'root', 'Amira'),
(127, 'Farhat', 'root', 'test'),
(129, 'Gassab', 'root', 'Selma'),
(130, 'Soua', 'root', 'Amira'),
(131, 'Farhat', 'root', 'test'),
(133, 'Gassab', 'root', 'Selma'),
(134, 'Soua', 'root', 'Amira'),
(135, 'Farhat', 'root', 'test'),
(137, 'Gassab', 'root', 'Selma'),
(138, 'Soua', 'root', 'Amira'),
(139, 'Farhat', 'root', 'test'),
(141, 'Gassab', 'root', 'Selma'),
(142, 'Soua', 'root', 'Amira'),
(143, 'Farhat', 'root', 'test'),
(145, 'Gassab', 'root', 'Selma'),
(146, 'Soua', 'root', 'Amira'),
(147, 'Farhat', 'root', 'test'),
(149, 'testetsttststst', 'hhhhhhhh', 'veygufyrgyfgezu'),
(150, 'Gassab', 'root', 'Selma'),
(151, 'Soua', 'root', 'Amira'),
(152, 'Farhat', 'root', 'test'),
(154, 'Gassab', 'root', 'Selma'),
(155, 'Soua', 'root', 'Amira'),
(156, 'Farhat', 'root', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `operateur_factures`
--

DROP TABLE IF EXISTS `operateur_factures`;
CREATE TABLE IF NOT EXISTS `operateur_factures` (
  `operateur_id_operateur` bigint(20) NOT NULL,
  `factures_id_facture` bigint(20) NOT NULL,
  PRIMARY KEY (`operateur_id_operateur`,`factures_id_facture`),
  UNIQUE KEY `UK_blem3wdqx1227f9xkqgnwcu2j` (`factures_id_facture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_produit` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_derniere_modification` date DEFAULT NULL,
  `libelle_produit` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL,
  `categorie_produit_id_categorie_produit` bigint(20) DEFAULT NULL,
  `stock_id_stock` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `FKffpayryoug1422jxg4wlgr3ak` (`categorie_produit_id_categorie_produit`),
  KEY `FKev4l89l3r0e9ogj935x8nsdfb` (`stock_id_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id_produit`, `code_produit`, `date_creation`, `date_derniere_modification`, `libelle_produit`, `prix`, `categorie_produit_id_categorie_produit`, `stock_id_stock`) VALUES
(1, '5555', '2022-10-08', '2022-10-19', 'test', 99, NULL, NULL),
(2, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(3, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(4, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(6, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(7, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(8, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(10, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(11, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(12, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(14, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(15, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(16, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(18, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(19, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(20, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(22, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(23, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(24, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(26, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(27, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(28, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(30, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(31, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(32, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(34, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(35, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(36, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(38, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(39, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(40, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(42, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(43, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(44, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(46, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(47, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(48, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(50, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(51, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(52, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(54, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(55, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(56, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reglement`
--

DROP TABLE IF EXISTS `reglement`;
CREATE TABLE IF NOT EXISTS `reglement` (
  `id_reglement` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_reglement` date DEFAULT NULL,
  `montant_paye` float NOT NULL,
  `montant_restant` float NOT NULL,
  `payee` bit(1) DEFAULT NULL,
  `facture_id_facture` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_reglement`),
  KEY `FK5dxl3urxbrs35sol5hoxmb755` (`facture_id_facture`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reglement`
--

INSERT INTO `reglement` (`id_reglement`, `date_reglement`, `montant_paye`, `montant_restant`, `payee`, `facture_id_facture`) VALUES
(1, '2022-10-06', 22, 11, b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `secteur_activite`
--

DROP TABLE IF EXISTS `secteur_activite`;
CREATE TABLE IF NOT EXISTS `secteur_activite` (
  `id_secteur_activite` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_secteur_activite` varchar(255) DEFAULT NULL,
  `libelle_secteur_activite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_secteur_activite`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secteur_activite`
--

INSERT INTO `secteur_activite` (`id_secteur_activite`, `code_secteur_activite`, `libelle_secteur_activite`) VALUES
(2, 'test', 'sect123'),
(3, 'code12secteur', 'sect12'),
(4, 'code1secteur', 'sect1'),
(6, 'test', 'sect123'),
(7, 'code12secteur', 'sect12'),
(8, 'code1secteur', 'sect1'),
(10, 'test', 'sect123'),
(11, 'code12secteur', 'sect12'),
(12, 'code1secteur', 'sect1'),
(13, 'code12secteur', 'sect12'),
(14, 'code1secteur', 'sect1'),
(15, 'test', 'sect123'),
(18, 'test', 'sect123'),
(19, 'code12secteur', 'sect12'),
(20, 'code1secteur', 'sect1'),
(22, 'test', 'sect123'),
(23, 'code12secteur', 'sect12'),
(24, 'code1secteur', 'sect1'),
(26, 'test', 'sect123'),
(27, 'code12secteur', 'sect12'),
(28, 'code1secteur', 'sect1'),
(30, 'test', 'sect123'),
(31, 'code12secteur', 'sect12'),
(32, 'code1secteur', 'sect1'),
(34, 'test', 'sect123'),
(35, 'code12secteur', 'sect12'),
(36, 'code1secteur', 'sect1'),
(38, 'test', 'sect123'),
(39, 'code12secteur', 'sect12'),
(40, 'code1secteur', 'sect1'),
(42, 'test', 'sect123'),
(43, 'code12secteur', 'sect12'),
(44, 'code1secteur', 'sect1'),
(45, 'code12secteur', 'sect12'),
(46, 'code1secteur', 'sect1'),
(47, 'test', 'sect123'),
(49, 'code12secteur', 'sect12'),
(50, 'code1secteur', 'sect1'),
(51, 'test', 'sect123'),
(53, 'code12secteur', 'sect12'),
(54, 'code1secteur', 'sect1'),
(55, 'test', 'sect123'),
(57, 'code12secteur', 'sect12'),
(58, 'code1secteur', 'sect1'),
(59, 'test', 'sect123'),
(61, 'code12secteur', 'sect12'),
(62, 'code1secteur', 'sect1'),
(63, 'test', 'sect123'),
(65, 'code12secteur', 'sect12'),
(66, 'code1secteur', 'sect1'),
(67, 'test', 'sect123'),
(69, 'code12secteur', 'sect12'),
(70, 'code1secteur', 'sect1'),
(71, 'test', 'sect123'),
(73, 'code12secteur', 'sect12'),
(74, 'code1secteur', 'sect1'),
(75, 'test', 'sect123'),
(77, 'code12secteur', 'sect12'),
(78, 'code1secteur', 'sect1'),
(79, 'test', 'sect123'),
(81, 'code12secteur', 'sect12'),
(82, 'code1secteur', 'sect1'),
(83, 'test', 'sect123'),
(85, 'code12secteur', 'sect12'),
(86, 'code1secteur', 'sect1'),
(87, 'test', 'sect123'),
(89, 'code12secteur', 'sect12'),
(90, 'code1secteur', 'sect1'),
(91, 'test', 'sect123'),
(93, 'code12secteur', 'sect12'),
(94, 'code1secteur', 'sect1'),
(95, 'test', 'sect123'),
(97, 'code12secteur', 'sect12'),
(98, 'code1secteur', 'sect1'),
(99, 'test', 'sect123');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` bigint(20) NOT NULL AUTO_INCREMENT,
  `libelle_stock` varchar(255) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `qte_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_stock`, `libelle_stock`, `qte`, `qte_min`) VALUES
(1, 'stock2', 30, 10),
(2, 'stock1', 27, 7),
(4, 'stock2', 30, 10),
(5, 'stock1', 27, 7),
(7, 'stock2', 30, 10),
(8, 'stock1', 27, 7),
(10, 'stock2', 30, 10),
(11, 'stock1', 27, 7),
(13, 'stock2', 30, 10),
(14, 'stock1', 27, 7),
(16, 'stock2', 30, 10),
(17, 'stock1', 27, 7),
(19, 'stock2', 30, 10),
(20, 'stock1', 27, 7),
(22, 'stock2', 30, 10),
(23, 'stock1', 27, 7),
(25, 'stock2', 30, 10),
(26, 'stock1', 27, 7),
(28, 'stock2', 30, 10),
(29, 'stock1', 27, 7),
(31, 'stock2', 30, 10),
(32, 'stock1', 27, 7),
(34, 'stock2', 30, 10),
(35, 'stock1', 27, 7),
(37, 'stock2', 30, 10),
(38, 'stock1', 27, 7),
(40, 'stock2', 30, 10),
(41, 'stock1', 27, 7);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_facture`
--
ALTER TABLE `detail_facture`
  ADD CONSTRAINT `FKo4yc7y45xlhgtxdutts3p9yo4` FOREIGN KEY (`facture_id_facture`) REFERENCES `facture` (`id_facture`),
  ADD CONSTRAINT `FKptlermnhcwe51qffww9v1yl0k` FOREIGN KEY (`produit_id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Constraints for table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK2pphg0s5146xjyhpyhfpa419l` FOREIGN KEY (`fournisseur_id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`);

--
-- Constraints for table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD CONSTRAINT `FKq5vad51fs51xymlrtju4m2b9r` FOREIGN KEY (`detail_fournisseur_id_detail_fournisseur`) REFERENCES `detail_fournisseur` (`id_detail_fournisseur`);

--
-- Constraints for table `fournisseur_secteur_activites`
--
ALTER TABLE `fournisseur_secteur_activites`
  ADD CONSTRAINT `FK6b9f3m4w6c3vy3xy160xd3t9l` FOREIGN KEY (`fournisseurs_id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`),
  ADD CONSTRAINT `FKllqt521h3meitfrk3c7klahtk` FOREIGN KEY (`secteur_activites_id_secteur_activite`) REFERENCES `secteur_activite` (`id_secteur_activite`);

--
-- Constraints for table `operateur_factures`
--
ALTER TABLE `operateur_factures`
  ADD CONSTRAINT `FKrgr8rgievvo95rvhdreg5lqwq` FOREIGN KEY (`factures_id_facture`) REFERENCES `facture` (`id_facture`),
  ADD CONSTRAINT `FKthvl793sgcnwyihwwpevgt69w` FOREIGN KEY (`operateur_id_operateur`) REFERENCES `operateur` (`id_operateur`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FKev4l89l3r0e9ogj935x8nsdfb` FOREIGN KEY (`stock_id_stock`) REFERENCES `stock` (`id_stock`),
  ADD CONSTRAINT `FKffpayryoug1422jxg4wlgr3ak` FOREIGN KEY (`categorie_produit_id_categorie_produit`) REFERENCES `categorie_produit` (`id_categorie_produit`);

--
-- Constraints for table `reglement`
--
ALTER TABLE `reglement`
  ADD CONSTRAINT `FK5dxl3urxbrs35sol5hoxmb755` FOREIGN KEY (`facture_id_facture`) REFERENCES `facture` (`id_facture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
