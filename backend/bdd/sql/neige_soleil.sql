-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 sep. 2025 à 14:35
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
-- Base de données : `neige_soleil`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartement`
--

CREATE TABLE `appartement` (
  `numA` int(11) NOT NULL,
  `SurfaceH` int(11) DEFAULT NULL,
  `SurfaceB` int(11) DEFAULT NULL,
  `Capacite` int(11) DEFAULT NULL,
  `DistancePiste` decimal(15,2) DEFAULT NULL,
  `numE` int(11) NOT NULL,
  `numT` int(11) NOT NULL,
  `IBAN` char(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appartement`
--

INSERT INTO `appartement` (`numA`, `SurfaceH`, `SurfaceB`, `Capacite`, `DistancePiste`, `numE`, `numT`, `IBAN`) VALUES
(1, 35, 30, 4, 150.00, 2, 1, 'FR7630001007941234567890185'),
(2, 50, 45, 6, 200.00, 1, 2, 'FR7610096000501234567890187'),
(3, 70, 65, 8, 100.00, 2, 3, 'FR7630004000031234567890143'),
(4, 90, 85, 10, 50.00, 5, 4, 'FR7610011000201234567890188'),
(5, 110, 100, 12, 75.00, 3, 5, 'FR7630002000011234567890199');

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `NumC` int(11) NOT NULL,
  `numS` int(11) NOT NULL,
  `Année` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appartenir`
--

INSERT INTO `appartenir` (`NumC`, `numS`, `Année`) VALUES
(1, 1, '2024'),
(2, 2, '2024'),
(3, 3, '2025'),
(4, 4, '2025');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `numC` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `TelF` int(11) DEFAULT NULL,
  `TelP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`numC`, `Nom`, `Prenom`, `Adresse`, `Mail`, `TelF`, `TelP`) VALUES
(1, 'Dupont', 'Jean', '12 Rue de la Montagne, Chamonix', 'jean.dupont@email.com', 450234567, 612345678),
(2, 'Martin', 'Marie', '25 Avenue des Neiges, Grenoble', 'marie.martin@email.com', 430765432, 698765432),
(3, 'Bernard', 'Pierre', '8 Chemin du Soleil, Annecy', 'pierre.bernard@email.com', 450112233, 677889900),
(4, 'Dubois', 'Sophie', '17 Route des Pistes, Megève', 'sophie.dubois@email.com', 450998877, 665544332),
(5, 'Moreau', 'Luc', '3 Impasse des Sapins, Courchevel', 'luc.moreau@email.com', 450445566, 622334455);

-- --------------------------------------------------------

--
-- Structure de la table `concerner`
--

CREATE TABLE `concerner` (
  `numA` int(11) NOT NULL,
  `NumSaison` tinyint(4) NOT NULL,
  `Prix` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `concerner`
--

INSERT INTO `concerner` (`numA`, `NumSaison`, `Prix`) VALUES
(1, 1, 400.0000),
(1, 2, 550.0000),
(1, 3, 700.0000),
(1, 4, 850.0000),
(2, 1, 600.0000),
(2, 2, 750.0000),
(2, 3, 900.0000),
(2, 4, 1100.0000),
(3, 1, 800.0000),
(3, 2, 950.0000),
(3, 3, 1200.0000),
(3, 4, 1500.0000);

-- --------------------------------------------------------

--
-- Structure de la table `contratdelocation`
--

CREATE TABLE `contratdelocation` (
  `NumC` int(11) NOT NULL,
  `DateC` date DEFAULT NULL,
  `numA` int(11) NOT NULL,
  `numC_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contratdelocation`
--

INSERT INTO `contratdelocation` (`NumC`, `DateC`, `numA`, `numC_1`) VALUES
(1, '2024-12-15', 1, 2),
(2, '2024-12-20', 2, 3),
(3, '2025-01-05', 3, 4),
(4, '2025-02-10', 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `exposition`
--

CREATE TABLE `exposition` (
  `numE` int(11) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exposition`
--

INSERT INTO `exposition` (`numE`, `Description`) VALUES
(1, 'Nord'),
(2, 'Sud'),
(3, 'Est'),
(4, 'Ouest'),
(5, 'Sud-Est');

-- --------------------------------------------------------

--
-- Structure de la table `locataire`
--

CREATE TABLE `locataire` (
  `numC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `locataire`
--

INSERT INTO `locataire` (`numC`) VALUES
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `propritétaire`
--

CREATE TABLE `propritétaire` (
  `IBAN` char(34) NOT NULL,
  `numC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `propritétaire`
--

INSERT INTO `propritétaire` (`IBAN`, `numC`) VALUES
('FR7630001007941234567890185', 1),
('FR7610096000501234567890187', 2),
('FR7630004000031234567890143', 3),
('FR7610011000201234567890188', 4),
('FR7630002000011234567890199', 5);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `NumSaison` tinyint(4) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`NumSaison`, `Description`) VALUES
(1, 'Basse saison'),
(2, 'Moyenne saison'),
(3, 'Haute saison'),
(4, 'Très haute saison');

-- --------------------------------------------------------

--
-- Structure de la table `semaine`
--

CREATE TABLE `semaine` (
  `numS` int(11) NOT NULL,
  `Année` varchar(50) NOT NULL,
  `NumSaison` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `semaine`
--

INSERT INTO `semaine` (`numS`, `Année`, `NumSaison`) VALUES
(6, '2025', 1),
(5, '2025', 2),
(3, '2025', 3),
(4, '2025', 3),
(1, '2024', 4),
(2, '2024', 4);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `numT` int(11) NOT NULL,
  `desciption` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`numT`, `desciption`) VALUES
(1, 'Studio'),
(2, 'Appartement 2 pièces'),
(3, 'Appartement 3 pièces'),
(4, 'Chalet 4 personnes'),
(5, 'Chalet 6 personnes');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartement`
--
ALTER TABLE `appartement`
  ADD PRIMARY KEY (`numA`),
  ADD KEY `numE` (`numE`),
  ADD KEY `numT` (`numT`),
  ADD KEY `IBAN` (`IBAN`);

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`NumC`,`numS`,`Année`),
  ADD KEY `numS` (`numS`,`Année`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`numC`);

--
-- Index pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`numA`,`NumSaison`),
  ADD KEY `NumSaison` (`NumSaison`);

--
-- Index pour la table `contratdelocation`
--
ALTER TABLE `contratdelocation`
  ADD PRIMARY KEY (`NumC`),
  ADD KEY `numA` (`numA`),
  ADD KEY `numC_1` (`numC_1`);

--
-- Index pour la table `exposition`
--
ALTER TABLE `exposition`
  ADD PRIMARY KEY (`numE`);

--
-- Index pour la table `locataire`
--
ALTER TABLE `locataire`
  ADD PRIMARY KEY (`numC`);

--
-- Index pour la table `propritétaire`
--
ALTER TABLE `propritétaire`
  ADD PRIMARY KEY (`IBAN`),
  ADD UNIQUE KEY `numC` (`numC`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`NumSaison`);

--
-- Index pour la table `semaine`
--
ALTER TABLE `semaine`
  ADD PRIMARY KEY (`numS`,`Année`),
  ADD KEY `NumSaison` (`NumSaison`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`numT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appartement`
--
ALTER TABLE `appartement`
  MODIFY `numA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `numC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `contratdelocation`
--
ALTER TABLE `contratdelocation`
  MODIFY `NumC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `exposition`
--
ALTER TABLE `exposition`
  MODIFY `numE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `numT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartement`
--
ALTER TABLE `appartement`
  ADD CONSTRAINT `appartement_ibfk_1` FOREIGN KEY (`numE`) REFERENCES `exposition` (`numE`),
  ADD CONSTRAINT `appartement_ibfk_2` FOREIGN KEY (`numT`) REFERENCES `type` (`numT`),
  ADD CONSTRAINT `appartement_ibfk_3` FOREIGN KEY (`IBAN`) REFERENCES `propritétaire` (`IBAN`);

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_ibfk_1` FOREIGN KEY (`NumC`) REFERENCES `contratdelocation` (`NumC`),
  ADD CONSTRAINT `appartenir_ibfk_2` FOREIGN KEY (`numS`,`Année`) REFERENCES `semaine` (`numS`, `Année`);

--
-- Contraintes pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD CONSTRAINT `concerner_ibfk_1` FOREIGN KEY (`numA`) REFERENCES `appartement` (`numA`),
  ADD CONSTRAINT `concerner_ibfk_2` FOREIGN KEY (`NumSaison`) REFERENCES `saison` (`NumSaison`);

--
-- Contraintes pour la table `contratdelocation`
--
ALTER TABLE `contratdelocation`
  ADD CONSTRAINT `contratdelocation_ibfk_1` FOREIGN KEY (`numA`) REFERENCES `appartement` (`numA`),
  ADD CONSTRAINT `contratdelocation_ibfk_2` FOREIGN KEY (`numC_1`) REFERENCES `locataire` (`numC`);

--
-- Contraintes pour la table `locataire`
--
ALTER TABLE `locataire`
  ADD CONSTRAINT `locataire_ibfk_1` FOREIGN KEY (`numC`) REFERENCES `client` (`numC`);

--
-- Contraintes pour la table `propritétaire`
--
ALTER TABLE `propritétaire`
  ADD CONSTRAINT `propritétaire_ibfk_1` FOREIGN KEY (`numC`) REFERENCES `client` (`numC`);

--
-- Contraintes pour la table `semaine`
--
ALTER TABLE `semaine`
  ADD CONSTRAINT `semaine_ibfk_1` FOREIGN KEY (`NumSaison`) REFERENCES `saison` (`NumSaison`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
