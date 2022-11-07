-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 nov. 2022 à 16:11
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `achatdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie_produit`
--

CREATE TABLE `categorie_produit` (
  `id_categorie_produit` bigint(20) NOT NULL,
  `code_categorie` varchar(255) DEFAULT NULL,
  `libelle_categorie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `detail_facture`
--

CREATE TABLE `detail_facture` (
  `id_detail_facture` bigint(20) NOT NULL,
  `montant_remise` float NOT NULL,
  `pourcentage_remise` int(11) DEFAULT NULL,
  `prix_total_detail` float NOT NULL,
  `qte_commandee` int(11) DEFAULT NULL,
  `facture_id_facture` bigint(20) DEFAULT NULL,
  `produit_id_produit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `detail_fournisseur`
--

CREATE TABLE `detail_fournisseur` (
  `id_detail_fournisseur` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `date_debut_collaboration` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detail_fournisseur`
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
(13, NULL, '2022-11-04', NULL, NULL),
(14, NULL, '2022-11-04', NULL, NULL),
(15, NULL, '2022-11-04', NULL, NULL),
(17, NULL, '2022-11-04', NULL, NULL),
(18, NULL, '2022-11-04', NULL, NULL),
(19, NULL, '2022-11-04', NULL, NULL),
(21, NULL, '2022-11-04', NULL, NULL),
(22, NULL, '2022-11-04', NULL, NULL),
(23, NULL, '2022-11-04', NULL, NULL),
(25, NULL, '2022-11-05', NULL, NULL),
(26, NULL, '2022-11-05', NULL, NULL),
(27, NULL, '2022-11-05', NULL, NULL),
(29, NULL, '2022-11-05', NULL, NULL),
(30, NULL, '2022-11-05', NULL, NULL),
(31, NULL, '2022-11-05', NULL, NULL),
(33, NULL, '2022-11-05', NULL, NULL),
(34, NULL, '2022-11-05', NULL, NULL),
(35, NULL, '2022-11-05', NULL, NULL),
(37, NULL, '2022-11-05', NULL, NULL),
(38, NULL, '2022-11-05', NULL, NULL),
(39, NULL, '2022-11-05', NULL, NULL),
(41, NULL, '2022-11-05', NULL, NULL),
(42, NULL, '2022-11-05', NULL, NULL),
(43, NULL, '2022-11-05', NULL, NULL),
(45, NULL, '2022-11-05', NULL, NULL),
(46, NULL, '2022-11-05', NULL, NULL),
(47, NULL, '2022-11-05', NULL, NULL),
(49, NULL, '2022-11-05', NULL, NULL),
(50, NULL, '2022-11-05', NULL, NULL),
(51, NULL, '2022-11-05', NULL, NULL),
(53, NULL, '2022-11-05', NULL, NULL),
(54, NULL, '2022-11-05', NULL, NULL),
(55, NULL, '2022-11-05', NULL, NULL),
(57, NULL, '2022-11-05', NULL, NULL),
(58, NULL, '2022-11-05', NULL, NULL),
(59, NULL, '2022-11-05', NULL, NULL),
(61, NULL, '2022-11-05', NULL, NULL),
(62, NULL, '2022-11-05', NULL, NULL),
(63, NULL, '2022-11-05', NULL, NULL),
(65, NULL, '2022-11-05', NULL, NULL),
(66, NULL, '2022-11-05', NULL, NULL),
(67, NULL, '2022-11-05', NULL, NULL),
(69, NULL, '2022-11-05', NULL, NULL),
(70, NULL, '2022-11-05', NULL, NULL),
(71, NULL, '2022-11-05', NULL, NULL),
(73, NULL, '2022-11-05', NULL, NULL),
(74, NULL, '2022-11-05', NULL, NULL),
(75, NULL, '2022-11-05', NULL, NULL),
(77, NULL, '2022-11-07', NULL, NULL),
(78, NULL, '2022-11-07', NULL, NULL),
(79, NULL, '2022-11-07', NULL, NULL),
(81, NULL, '2022-11-07', NULL, NULL),
(82, NULL, '2022-11-07', NULL, NULL),
(83, NULL, '2022-11-07', NULL, NULL),
(85, NULL, '2022-11-07', NULL, NULL),
(86, NULL, '2022-11-07', NULL, NULL),
(87, NULL, '2022-11-07', NULL, NULL),
(89, NULL, '2022-11-07', NULL, NULL),
(90, NULL, '2022-11-07', NULL, NULL),
(91, NULL, '2022-11-07', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_facture` bigint(20) NOT NULL,
  `archivee` bit(1) DEFAULT NULL,
  `date_creation_facture` date DEFAULT NULL,
  `date_derniere_modification_facture` date DEFAULT NULL,
  `montant_facture` float NOT NULL,
  `montant_remise` float NOT NULL,
  `fournisseur_id_fournisseur` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` bigint(20) NOT NULL,
  `categorie_fournisseur` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `detail_fournisseur_id_detail_fournisseur` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
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
(13, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 13),
(14, 'ORDINAIRE', 'UPCODE', 'LIB2', 14),
(15, 'ORDINAIRE', 'CODE1', 'LIB2', 15),
(17, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 17),
(18, 'ORDINAIRE', 'UPCODE', 'LIB2', 18),
(19, 'ORDINAIRE', 'CODE1', 'LIB2', 19),
(21, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 21),
(22, 'ORDINAIRE', 'UPCODE', 'LIB2', 22),
(23, 'ORDINAIRE', 'CODE1', 'LIB2', 23),
(25, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 25),
(26, 'ORDINAIRE', 'UPCODE', 'LIB2', 26),
(27, 'ORDINAIRE', 'CODE1', 'LIB2', 27),
(29, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 29),
(30, 'ORDINAIRE', 'UPCODE', 'LIB2', 30),
(31, 'ORDINAIRE', 'CODE1', 'LIB2', 31),
(33, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 33),
(34, 'ORDINAIRE', 'UPCODE', 'LIB2', 34),
(35, 'ORDINAIRE', 'CODE1', 'LIB2', 35),
(37, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 37),
(38, 'ORDINAIRE', 'UPCODE', 'LIB2', 38),
(39, 'ORDINAIRE', 'CODE1', 'LIB2', 39),
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
(67, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 67),
(69, 'ORDINAIRE', 'CODE1', 'LIB2', 69),
(70, 'ORDINAIRE', 'UPCODE', 'LIB2', 70),
(71, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 71),
(73, 'ORDINAIRE', 'CODE1', 'LIB2', 73),
(74, 'ORDINAIRE', 'UPCODE', 'LIB2', 74),
(75, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 75),
(77, 'ORDINAIRE', 'CODE1', 'LIB2', 77),
(78, 'ORDINAIRE', 'UPCODE', 'LIB2', 78),
(79, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 79),
(81, 'ORDINAIRE', 'CODE1', 'LIB2', 81),
(82, 'ORDINAIRE', 'UPCODE', 'LIB2', 82),
(83, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 83),
(85, 'ORDINAIRE', 'CODE1', 'LIB2', 85),
(86, 'ORDINAIRE', 'UPCODE', 'LIB2', 86),
(87, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 87),
(89, 'ORDINAIRE', 'CODE1', 'LIB2', 89),
(90, 'ORDINAIRE', 'UPCODE', 'LIB2', 90),
(91, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 91);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur_secteur_activites`
--

CREATE TABLE `fournisseur_secteur_activites` (
  `fournisseurs_id_fournisseur` bigint(20) NOT NULL,
  `secteur_activites_id_secteur_activite` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `operateur`
--

CREATE TABLE `operateur` (
  `id_operateur` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `operateur`
--

INSERT INTO `operateur` (`id_operateur`, `nom`, `password`, `prenom`) VALUES
(1, 'Gassab', 'root', 'Selma'),
(2, 'Soua', 'root', 'Amira'),
(3, 'Farhat', 'root', 'test'),
(5, 'Gassab', 'root', 'Selma'),
(6, 'Soua', 'root', 'Amira'),
(7, 'Farhat', 'root', 'test'),
(9, 'Gassab', 'root', 'Selma'),
(10, 'Soua', 'root', 'Amira'),
(11, 'Farhat', 'root', 'test'),
(13, 'Gassab', 'root', 'Selma'),
(14, 'Soua', 'root', 'Amira'),
(15, 'Farhat', 'root', 'test'),
(17, 'Gassab', 'root', 'Selma'),
(18, 'Soua', 'root', 'Amira'),
(19, 'Farhat', 'root', 'test'),
(21, 'Gassab', 'root', 'Selma'),
(22, 'Soua', 'root', 'Amira'),
(23, 'Farhat', 'root', 'test'),
(25, 'Gassab', 'root', 'Selma'),
(26, 'Soua', 'root', 'Amira'),
(27, 'Farhat', 'root', 'test'),
(29, 'Gassab', 'root', 'Selma'),
(30, 'Soua', 'root', 'Amira'),
(31, 'Farhat', 'root', 'test'),
(33, 'Gassab', 'root', 'Selma'),
(35, 'Farhat', 'root', 'test'),
(36, 'Soua', 'root', 'Amira'),
(37, 'Gassab', 'root', 'Selma'),
(39, 'Farhat', 'root', 'test'),
(40, 'Soua', 'root', 'Amira'),
(41, 'Gassab', 'root', 'Selma'),
(43, 'Farhat', 'root', 'test'),
(44, 'Soua', 'root', 'Amira'),
(45, 'Gassab', 'root', 'Selma'),
(47, 'Farhat', 'root', 'test'),
(48, 'Soua', 'root', 'Amira'),
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
(71, 'Farhat', 'root', 'test'),
(72, 'Soua', 'root', 'Amira'),
(73, 'Gassab', 'root', 'Selma'),
(74, 'Soua', 'root', 'Amira'),
(75, 'Farhat', 'root', 'test'),
(77, 'Gassab', 'root', 'Selma'),
(78, 'Soua', 'root', 'Amira'),
(79, 'Farhat', 'root', 'test'),
(81, 'Gassab', 'root', 'Selma'),
(82, 'Soua', 'root', 'Amira'),
(83, 'Farhat', 'root', 'test'),
(85, 'Gassab', 'root', 'Selma'),
(86, 'Soua', 'root', 'Amira'),
(87, 'Farhat', 'root', 'test'),
(89, 'Gassab', 'root', 'Selma'),
(90, 'Soua', 'root', 'Amira'),
(91, 'Farhat', 'root', 'test'),
(93, 'Gassab', 'root', 'Selma'),
(94, 'Soua', 'root', 'Amira'),
(95, 'Farhat', 'root', 'test'),
(97, 'Gassab', 'root', 'Selma'),
(98, 'Soua', 'root', 'Amira'),
(99, 'Farhat', 'root', 'test'),
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
(123, 'Farhat', 'root', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `operateur_factures`
--

CREATE TABLE `operateur_factures` (
  `operateur_id_operateur` bigint(20) NOT NULL,
  `factures_id_facture` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` bigint(20) NOT NULL,
  `code_produit` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_derniere_modification` date DEFAULT NULL,
  `libelle_produit` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL,
  `categorie_produit_id_categorie_produit` bigint(20) DEFAULT NULL,
  `stock_id_stock` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `code_produit`, `date_creation`, `date_derniere_modification`, `libelle_produit`, `prix`, `categorie_produit_id_categorie_produit`, `stock_id_stock`) VALUES
(1, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(2, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(3, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(5, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(6, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(7, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(9, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(10, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(11, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(13, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(14, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(15, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(17, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(18, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(19, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(21, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(22, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(23, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(25, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(26, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(27, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(29, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(30, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(31, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL),
(33, '777', NULL, NULL, 'yaourt', 52, NULL, NULL),
(34, '785', NULL, NULL, 'gazouz', 52, NULL, NULL),
(35, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reglement`
--

CREATE TABLE `reglement` (
  `id_reglement` bigint(20) NOT NULL,
  `date_reglement` date DEFAULT NULL,
  `montant_paye` float NOT NULL,
  `montant_restant` float NOT NULL,
  `payee` bit(1) DEFAULT NULL,
  `facture_id_facture` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `secteur_activite`
--

CREATE TABLE `secteur_activite` (
  `id_secteur_activite` bigint(20) NOT NULL,
  `code_secteur_activite` varchar(255) DEFAULT NULL,
  `libelle_secteur_activite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `secteur_activite`
--

INSERT INTO `secteur_activite` (`id_secteur_activite`, `code_secteur_activite`, `libelle_secteur_activite`) VALUES
(9, 'code12secteur', 'sect12'),
(10, 'code1secteur', 'sect1'),
(11, 'test', 'sect123'),
(13, 'code12secteur', 'sect12'),
(14, 'code1secteur', 'sect1'),
(15, 'test', 'sect123'),
(17, 'code12secteur', 'sect12'),
(18, 'code1secteur', 'sect1'),
(19, 'test', 'sect123'),
(21, 'code12secteur', 'sect12'),
(22, 'code1secteur', 'sect1'),
(23, 'test', 'sect123'),
(25, 'code12secteur', 'sect12'),
(26, 'code1secteur', 'sect1'),
(27, 'test', 'sect123'),
(29, 'code12secteur', 'sect12'),
(30, 'code1secteur', 'sect1'),
(31, 'test', 'sect123'),
(33, 'code12secteur', 'sect12'),
(34, 'code1secteur', 'sect1'),
(35, 'test', 'sect123'),
(37, 'code12secteur', 'sect12'),
(38, 'code1secteur', 'sect1'),
(39, 'test', 'sect123'),
(41, 'code12secteur', 'sect12'),
(42, 'code1secteur', 'sect1'),
(43, 'test', 'sect123'),
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
(98, 'test', 'sect123'),
(99, 'code12secteur', 'sect12'),
(100, 'code1secteur', 'sect1'),
(102, 'test', 'sect123'),
(103, 'code12secteur', 'sect12'),
(104, 'code1secteur', 'sect1'),
(106, 'test', 'sect123'),
(107, 'code12secteur', 'sect12'),
(108, 'code1secteur', 'sect1'),
(110, 'test', 'sect123'),
(111, 'code12secteur', 'sect12'),
(112, 'code1secteur', 'sect1'),
(113, 'code12secteur', 'sect12'),
(114, 'code1secteur', 'sect1'),
(115, 'test', 'sect123'),
(117, 'code12secteur', 'sect12'),
(118, 'code1secteur', 'sect1'),
(119, 'test', 'sect123'),
(122, 'test', 'sect123'),
(123, 'code12secteur', 'sect12'),
(124, 'code1secteur', 'sect1'),
(126, 'test', 'sect123'),
(127, 'code12secteur', 'sect12'),
(128, 'code1secteur', 'sect1'),
(130, 'test', 'sect123'),
(131, 'code12secteur', 'sect12'),
(132, 'code1secteur', 'sect1'),
(134, 'test', 'sect123'),
(135, 'code12secteur', 'sect12'),
(136, 'code1secteur', 'sect1'),
(137, 'code12secteur', 'sect12'),
(138, 'code1secteur', 'sect1'),
(139, 'test', 'sect123'),
(141, 'code12secteur', 'sect12'),
(142, 'code1secteur', 'sect1'),
(143, 'test', 'sect123'),
(145, 'code12secteur', 'sect12'),
(146, 'code1secteur', 'sect1'),
(147, 'test', 'sect123'),
(149, 'code12secteur', 'sect12'),
(150, 'code1secteur', 'sect1'),
(151, 'test', 'sect123'),
(153, 'code12secteur', 'sect12'),
(154, 'code1secteur', 'sect1'),
(155, 'test', 'sect123'),
(157, 'code12secteur', 'sect12'),
(158, 'code1secteur', 'sect1'),
(159, 'test', 'sect123'),
(161, 'code12secteur', 'sect12'),
(162, 'code1secteur', 'sect1'),
(163, 'test', 'sect123'),
(165, 'code12secteur', 'sect12'),
(166, 'code1secteur', 'sect1'),
(167, 'test', 'sect123'),
(169, 'code12secteur', 'sect12'),
(170, 'code1secteur', 'sect1'),
(171, 'test', 'sect123'),
(173, 'code12secteur', 'sect12'),
(174, 'code1secteur', 'sect1'),
(175, 'test', 'sect123'),
(177, 'code12secteur', 'sect12'),
(178, 'code1secteur', 'sect1'),
(179, 'test', 'sect123'),
(181, 'code12secteur', 'sect12'),
(182, 'code1secteur', 'sect1'),
(183, 'test', 'sect123');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id_stock` bigint(20) NOT NULL,
  `libelle_stock` varchar(255) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `qte_min` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id_stock`, `libelle_stock`, `qte`, `qte_min`) VALUES
(1, 'stock1', 27, 7),
(2, 'stock2', 30, 10),
(4, 'stock1', 27, 7),
(5, 'stock2', 30, 10),
(7, 'stock1', 27, 7),
(8, 'stock2', 30, 10),
(10, 'stock2', 30, 10),
(11, 'stock1', 27, 7),
(13, 'stock2', 30, 10),
(14, 'stock1', 27, 7),
(16, 'stock1', 27, 7),
(17, 'stock2', 30, 10),
(19, 'stock1', 27, 7),
(20, 'stock2', 30, 10),
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
(41, 'stock1', 27, 7),
(43, 'stock2', 30, 10),
(44, 'stock1', 27, 7),
(46, 'stock2', 30, 10),
(47, 'stock1', 27, 7),
(49, 'stock2', 30, 10),
(50, 'stock1', 27, 7),
(52, 'stock2', 30, 10),
(53, 'stock1', 27, 7),
(55, 'stock2', 30, 10),
(56, 'stock1', 27, 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie_produit`
--
ALTER TABLE `categorie_produit`
  ADD PRIMARY KEY (`id_categorie_produit`);

--
-- Index pour la table `detail_facture`
--
ALTER TABLE `detail_facture`
  ADD PRIMARY KEY (`id_detail_facture`),
  ADD KEY `FKo4yc7y45xlhgtxdutts3p9yo4` (`facture_id_facture`),
  ADD KEY `FKptlermnhcwe51qffww9v1yl0k` (`produit_id_produit`);

--
-- Index pour la table `detail_fournisseur`
--
ALTER TABLE `detail_fournisseur`
  ADD PRIMARY KEY (`id_detail_fournisseur`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_facture`),
  ADD KEY `FK2pphg0s5146xjyhpyhfpa419l` (`fournisseur_id_fournisseur`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`),
  ADD KEY `FKq5vad51fs51xymlrtju4m2b9r` (`detail_fournisseur_id_detail_fournisseur`);

--
-- Index pour la table `fournisseur_secteur_activites`
--
ALTER TABLE `fournisseur_secteur_activites`
  ADD PRIMARY KEY (`fournisseurs_id_fournisseur`,`secteur_activites_id_secteur_activite`),
  ADD KEY `FKllqt521h3meitfrk3c7klahtk` (`secteur_activites_id_secteur_activite`);

--
-- Index pour la table `operateur`
--
ALTER TABLE `operateur`
  ADD PRIMARY KEY (`id_operateur`);

--
-- Index pour la table `operateur_factures`
--
ALTER TABLE `operateur_factures`
  ADD PRIMARY KEY (`operateur_id_operateur`,`factures_id_facture`),
  ADD UNIQUE KEY `UK_blem3wdqx1227f9xkqgnwcu2j` (`factures_id_facture`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `FKffpayryoug1422jxg4wlgr3ak` (`categorie_produit_id_categorie_produit`),
  ADD KEY `FKev4l89l3r0e9ogj935x8nsdfb` (`stock_id_stock`);

--
-- Index pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD PRIMARY KEY (`id_reglement`),
  ADD KEY `FK5dxl3urxbrs35sol5hoxmb755` (`facture_id_facture`);

--
-- Index pour la table `secteur_activite`
--
ALTER TABLE `secteur_activite`
  ADD PRIMARY KEY (`id_secteur_activite`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie_produit`
--
ALTER TABLE `categorie_produit`
  MODIFY `id_categorie_produit` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_facture`
--
ALTER TABLE `detail_facture`
  MODIFY `id_detail_facture` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_fournisseur`
--
ALTER TABLE `detail_fournisseur`
  MODIFY `id_detail_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id_facture` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `operateur`
--
ALTER TABLE `operateur`
  MODIFY `id_operateur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `reglement`
--
ALTER TABLE `reglement`
  MODIFY `id_reglement` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteur_activite`
--
ALTER TABLE `secteur_activite`
  MODIFY `id_secteur_activite` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `detail_facture`
--
ALTER TABLE `detail_facture`
  ADD CONSTRAINT `FKo4yc7y45xlhgtxdutts3p9yo4` FOREIGN KEY (`facture_id_facture`) REFERENCES `facture` (`id_facture`),
  ADD CONSTRAINT `FKptlermnhcwe51qffww9v1yl0k` FOREIGN KEY (`produit_id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK2pphg0s5146xjyhpyhfpa419l` FOREIGN KEY (`fournisseur_id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`);

--
-- Contraintes pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD CONSTRAINT `FKq5vad51fs51xymlrtju4m2b9r` FOREIGN KEY (`detail_fournisseur_id_detail_fournisseur`) REFERENCES `detail_fournisseur` (`id_detail_fournisseur`);

--
-- Contraintes pour la table `fournisseur_secteur_activites`
--
ALTER TABLE `fournisseur_secteur_activites`
  ADD CONSTRAINT `FK6b9f3m4w6c3vy3xy160xd3t9l` FOREIGN KEY (`fournisseurs_id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`),
  ADD CONSTRAINT `FKllqt521h3meitfrk3c7klahtk` FOREIGN KEY (`secteur_activites_id_secteur_activite`) REFERENCES `secteur_activite` (`id_secteur_activite`);

--
-- Contraintes pour la table `operateur_factures`
--
ALTER TABLE `operateur_factures`
  ADD CONSTRAINT `FKrgr8rgievvo95rvhdreg5lqwq` FOREIGN KEY (`factures_id_facture`) REFERENCES `facture` (`id_facture`),
  ADD CONSTRAINT `FKthvl793sgcnwyihwwpevgt69w` FOREIGN KEY (`operateur_id_operateur`) REFERENCES `operateur` (`id_operateur`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FKev4l89l3r0e9ogj935x8nsdfb` FOREIGN KEY (`stock_id_stock`) REFERENCES `stock` (`id_stock`),
  ADD CONSTRAINT `FKffpayryoug1422jxg4wlgr3ak` FOREIGN KEY (`categorie_produit_id_categorie_produit`) REFERENCES `categorie_produit` (`id_categorie_produit`);

--
-- Contraintes pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD CONSTRAINT `FK5dxl3urxbrs35sol5hoxmb755` FOREIGN KEY (`facture_id_facture`) REFERENCES `facture` (`id_facture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
