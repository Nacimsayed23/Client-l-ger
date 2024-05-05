-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 mai 2024 à 20:15
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lbc`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `ida` int(2) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `vendeur` int(2) NOT NULL,
  `date` varchar(30) NOT NULL,
  `detail` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `categorie` int(2) NOT NULL,
  `prix` int(10) NOT NULL,
  `etat` varchar(40) NOT NULL,
  `favoris` int(4) NOT NULL,
  `livraison` int(2) NOT NULL,
  `vue` int(6) NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`ida`, `titre`, `vendeur`, `date`, `detail`, `photo`, `categorie`, `prix`, `etat`, `favoris`, `livraison`, `vue`, `time`) VALUES
(8, 'Robe Élégante Zara : État Impeccable, Style Incont', 4, '2024-04-29 02:40:31', 'Plongez dans l\'élégance intemporelle avec cette magnifique robe de la marque Zara, en parfait état. Conçue avec soin et attention aux détails, cette pièce allie confort et style pour vous offrir une silhouette impeccable à chaque occasion. Le tissu de qualité assure un ajustement parfait, tandis que le design sophistiqué ajoute une touche de glamour à votre garde-robe. Ne manquez pas cette opportunité de vous démarquer avec cette robe Zara qui incarne le raffinement et la classe. Commandez dès maintenant et faites sensation à chaque sortie!', 'image/annonce/8.png', 1, 85, 'Très bon état', 1, 0, 0, 1714351231),
(9, 'Ensemble Homme : Élégance et Qualité Assurées!', 4, '2024-04-29 03:05:02', 'Ensemble pour homme en excellent état, alliant style et confort. Parfait pour toutes occasions. Disponible dès maintenant.', 'image/annonce/Ensemble Homme : Élégance et Qualité Assurées!.png', 2, 30, 'Bon état', 0, 0, 0, 1714352702),
(10, 'Ensemble Femme : État Satisfaisant, Style Irrésist', 4, '2024-04-29 03:13:56', 'Découvrez cet ensemble pour femme, en état satisfaisant, qui offre un style irrésistible à petit prix! Composé d\'une veste et d\'une jupe assortie, cet ensemble vous permettra de créer des looks tendance et polyvalents pour diverses occasions. Bien que présentant quelques signes d\'usage, cet ensemble conserve tout son charme et sa qualité.', 'image/annonce/Ensemble Femme : État Satisfaisant, Style Irrésistible!.png', 1, 30, 'Satisfaisant', 0, 0, 0, 1714353236);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idc` int(2) NOT NULL,
  `nomCat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idc`, `nomCat`) VALUES
(1, 'Femme'),
(2, 'Homme'),
(3, 'Enfant'),
(4, 'Chaussure '),
(5, 'Sacs à main');

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE `conversation` (
  `idc` int(11) NOT NULL,
  `idan` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `idv` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `idf` int(4) NOT NULL,
  `ida` int(2) NOT NULL,
  `idu` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`idf`, `ida`, `idu`) VALUES
(11, 8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `idm` int(2) NOT NULL,
  `idu_q` int(2) NOT NULL,
  `idu_r` int(2) NOT NULL,
  `idc` int(2) NOT NULL,
  `contenu` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idu` int(2) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `numRue` varchar(10) NOT NULL,
  `nomRue` varchar(50) NOT NULL,
  `nomVille` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `statue` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idu`, `nom`, `prenom`, `mail`, `tel`, `mdp`, `numRue`, `nomRue`, `nomVille`, `cp`, `avatar`, `statue`) VALUES
(4, 'marwa', 'nacim', 'marwa.nacimsayed@gmail.com', '98766544', '18338fde69bfd465536bb6483d3cd256', '4556788', '56XGX', 'DALL', '8765', NULL, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`ida`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idc`);

--
-- Index pour la table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`idc`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`idf`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idm`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `ida` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idc` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `idf` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `idm` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idu` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
