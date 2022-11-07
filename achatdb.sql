-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 nov. 2022 à 16:10
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.15

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
(57, NULL, '2022-11-04', NULL, NULL),
(58, NULL, '2022-11-04', NULL, NULL),
(59, NULL, '2022-11-04', NULL, NULL),
(61, NULL, '2022-11-04', NULL, NULL),
(62, NULL, '2022-11-04', NULL, NULL),
(63, NULL, '2022-11-04', NULL, NULL),
(65, NULL, '2022-11-04', NULL, NULL),
(66, NULL, '2022-11-04', NULL, NULL),
(67, NULL, '2022-11-04', NULL, NULL),
(69, NULL, '2022-11-04', NULL, NULL),
(70, NULL, '2022-11-04', NULL, NULL),
(71, NULL, '2022-11-04', NULL, NULL),
(73, NULL, '2022-11-04', NULL, NULL),
(74, NULL, '2022-11-04', NULL, NULL),
(75, NULL, '2022-11-04', NULL, NULL),
(77, NULL, '2022-11-05', NULL, NULL),
(78, NULL, '2022-11-05', NULL, NULL),
(80, NULL, '2022-11-05', NULL, NULL),
(82, NULL, '2022-11-05', NULL, NULL),
(83, NULL, '2022-11-05', NULL, NULL),
(84, NULL, '2022-11-05', NULL, NULL),
(86, NULL, '2022-11-05', NULL, NULL),
(87, NULL, '2022-11-05', NULL, NULL),
(88, NULL, '2022-11-05', NULL, NULL),
(90, NULL, '2022-11-05', NULL, NULL),
(91, NULL, '2022-11-05', NULL, NULL),
(92, NULL, '2022-11-05', NULL, NULL),
(94, NULL, '2022-11-06', NULL, NULL),
(95, NULL, '2022-11-06', NULL, NULL),
(96, NULL, '2022-11-06', NULL, NULL),
(98, NULL, '2022-11-06', NULL, NULL),
(99, NULL, '2022-11-06', NULL, NULL),
(100, NULL, '2022-11-06', NULL, NULL),
(102, NULL, '2022-11-06', NULL, NULL),
(103, NULL, '2022-11-06', NULL, NULL),
(104, NULL, '2022-11-06', NULL, NULL);

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
(80, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 57),
(81, 'ORDINAIRE', 'UPCODE', 'LIB2', 58),
(82, 'ORDINAIRE', 'CODE1', 'LIB2', 59),
(84, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 61),
(85, 'ORDINAIRE', 'UPCODE', 'LIB2', 62),
(86, 'ORDINAIRE', 'CODE1', 'LIB2', 63),
(88, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 65),
(89, 'ORDINAIRE', 'UPCODE', 'LIB2', 66),
(90, 'ORDINAIRE', 'CODE1', 'LIB2', 67),
(92, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 69),
(93, 'ORDINAIRE', 'UPCODE', 'LIB2', 70),
(94, 'ORDINAIRE', 'CODE1', 'LIB2', 71),
(96, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 73),
(97, 'ORDINAIRE', 'UPCODE', 'LIB2', 74),
(98, 'ORDINAIRE', 'CODE1', 'LIB2', 75),
(100, 'ORDINAIRE', 'UPCODE', 'LIB2', 77),
(101, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 78),
(103, 'ORDINAIRE', 'CODE1', 'LIB2', 80),
(105, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 82),
(106, 'ORDINAIRE', 'UPCODE', 'LIB2', 83),
(107, 'ORDINAIRE', 'CODE1', 'LIB2', 84),
(109, 'ORDINAIRE', 'CODE1', 'LIB2', 86),
(110, 'ORDINAIRE', 'UPCODE', 'LIB2', 87),
(111, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 88),
(113, 'ORDINAIRE', 'CODE1', 'LIB2', 90),
(114, 'ORDINAIRE', 'UPCODE', 'LIB2', 91),
(115, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 92),
(117, 'ORDINAIRE', 'CODE1', 'LIB2', 94),
(118, 'ORDINAIRE', 'UPCODE', 'LIB2', 95),
(119, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 96),
(121, 'ORDINAIRE', 'CODE1', 'LIB2', 98),
(122, 'ORDINAIRE', 'UPCODE', 'LIB2', 99),
(123, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 100),
(125, 'ORDINAIRE', 'CODE1', 'LIB2', 102),
(126, 'ORDINAIRE', 'UPCODE', 'LIB2', 103),
(127, 'ORDINAIRE', 'aaaa', 'aaaaaaaaaaaaa', 104);

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
(34, 'Soua', 'root', 'Amira'),
(35, 'Farhat', 'root', 'test'),
(37, 'Gassab', 'root', 'Selma'),
(38, 'Soua', 'root', 'Amira'),
(39, 'Farhat', 'root', 'test'),
(41, 'Gassab', 'root', 'Selma'),
(42, 'Soua', 'root', 'Amira'),
(43, 'Farhat', 'root', 'test'),
(45, 'Gassab', 'root', 'Selma'),
(46, 'Soua', 'root', 'Amira'),
(47, 'Farhat', 'root', 'test'),
(49, 'Gassab', 'root', 'Selma'),
(50, 'Soua', 'root', 'Amira'),
(51, 'Farhat', 'root', 'test'),
(53, 'Gassab', 'root', 'Selma'),
(54, 'Soua', 'root', 'Amira'),
(55, 'Farhat', 'root', 'test'),
(57, 'Gassab', 'root', 'Selma'),
(59, 'Farhat', 'root', 'test'),
(60, 'Soua', 'root', 'Amira'),
(61, 'Gassab', 'root', 'Selma'),
(62, 'Soua', 'root', 'Amira'),
(63, 'Farhat', 'root', 'test'),
(65, 'Gassab', 'root', 'Selma'),
(66, 'Soua', 'root', 'Amira'),
(67, 'Farhat', 'root', 'test'),
(69, 'Gassab', 'root', 'Selma'),
(70, 'Soua', 'root', 'Amira'),
(71, 'Farhat', 'root', 'test'),
(74, 'Gassab', 'root', 'Selma'),
(75, 'Soua', 'root', 'Amira'),
(76, 'Farhat', 'root', 'test'),
(78, 'Gassab', 'root', 'Selma'),
(79, 'Soua', 'root', 'Amira'),
(80, 'Farhat', 'root', 'test'),
(82, 'Gassab', 'root', 'Selma'),
(83, 'Soua', 'root', 'Amira'),
(84, 'Farhat', 'root', 'test');

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
(23, '8888', NULL, NULL, 'yaourt', 52, NULL, NULL);

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
(45, 'code12secteur', 'sect12'),
(46, 'code1secteur', 'sect1'),
(47, 'test', 'sect123'),
(49, 'code12secteur', 'sect12'),
(50, 'code1secteur', 'sect1'),
(51, 'test', 'sect123'),
(53, 'code12secteur', 'sect12'),
(54, 'code1secteur', 'sect1'),
(55, 'test', 'sect123'),
(58, 'test', 'sect123'),
(59, 'code12secteur', 'sect12'),
(60, 'code1secteur', 'sect1'),
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
(87, 'test', 'sect123');

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
(17, 'stock1', 27, 7);

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
  MODIFY `id_detail_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id_facture` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT pour la table `operateur`
--
ALTER TABLE `operateur`
  MODIFY `id_operateur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `reglement`
--
ALTER TABLE `reglement`
  MODIFY `id_reglement` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteur_activite`
--
ALTER TABLE `secteur_activite`
  MODIFY `id_secteur_activite` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
