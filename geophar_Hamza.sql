-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 26 Janvier 2019 à 16:36
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `geophar`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `numeroAdmin` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `tele` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `motdepasse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`numeroAdmin`, `nom`, `prenom`, `cin`, `tele`, `email`, `adresse`, `pseudo`, `motdepasse`) VALUES
(1, 'ELACHBI', 'MOUHSINE', 'WA232323', '064545', 'mouhsine@elachbi.com', '122 rue Jana', 'Lion307', 'djaja');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `numeroclient` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tele` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `motdepasse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`numeroclient`, `nom`, `prenom`, `cin`, `email`, `tele`, `adresse`, `pseudo`, `motdepasse`) VALUES
(1, 'ELACHBI', 'MOUHSINE', 'wa2323', 'Mouhsine@Elachbi.com', '020202020', '132 rue KIKIO', 'LoginMoEl', 'passs'),
(2, 'Elachbi', ' mouhsine', 'wa2323', ' Mouhsine@Elachbi.com', '0678946582', 'Ensias ccccc', 'mouhchbi', '123456'),
(3, ' abdo', ' ismail', 'lk45689', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(4, ' abdo', ' hamza', 'lm45689', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(5, 'ahmed', ' douiri', 'Aw1235', ' ahmed@gmail.com', '0640156325', 'EL jadida b 12 rue yaakoub El mansour', 'ahmed', '1234567'),
(6, ' abdo', ' hamza', 'mc245', ' anas@gmail.com', '0679456829', 'casa', 'anaham', ''),
(7, ' abdo', ' hamza', '45kjf4', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(8, ' abdo', ' hamza', 'mc25689', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(9, ' abdo', ' hamza', 'mc24569', ' anas@gmail.com', '0679456829', 'casa', 'anaham', ''),
(10, ' abdo', ' hamza', 'mc', ' anas@gmail.com', '0679456829', 'casa', 'anaham', ''),
(11, ' abdo', ' hamza', 'mc2456895', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(12, ' abdo', ' hamza', 'mc2456894', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '124356'),
(13, ' abdo', ' hamza', 'mc24568', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(14, ' abdo', ' hamza', 'mc245688', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(15, ' abdo', ' ismail', 'mc24568910', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(16, ' abdo', ' kjh', '456', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(17, ' abdo', ' hamza', 'mc25', ' anas@gmail.com', '0679456829', 'casa', 'anaham', '123456'),
(18, ' mlml', ' hamza', 'kjlmf', ' anas@gmail.com', '0679456829', 'casal', 'anaham', '123'),
(19, ' abdoel', ' hamza', 'mc249', ' anas@gmail.com', '0679456829', 'casal', 'anaham', '123456'),
(20, ' medlamine', ' abdallah', '123456789', ' lamine@gmail.com', '0627740409', 'Ensias,C2', 'medlamine', ''),
(21, ' douyry', ' hamza', 'mc263837', 'hamza@gmail.com', '0670044061', 'hay Elmassira 160 sidi bennour', 'hamzadr', 'pass1');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `numeroCommande` int(11) NOT NULL,
  `dateCommande` date NOT NULL,
  `EtatCommande` varchar(50) NOT NULL,
  `numeroclient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`numeroCommande`, `dateCommande`, `EtatCommande`, `numeroclient`) VALUES
(1, '2018-10-22', 'non-active', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCommentaire` int(11) NOT NULL,
  `dateCommentaire` date NOT NULL,
  `idClient` int(11) NOT NULL,
  `idPharmacie` int(11) NOT NULL,
  `contenu` varchar(30000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `numeroFacture` int(11) NOT NULL,
  `DateFacture` date NOT NULL,
  `SommeTotale` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`numeroFacture`, `DateFacture`, `SommeTotale`) VALUES
(1, '2009-09-26', 122.33);

-- --------------------------------------------------------

--
-- Structure de la table `linecommande`
--

CREATE TABLE `linecommande` (
  `numeroproduit` int(10) NOT NULL,
  `numeroCommande` int(10) NOT NULL,
  `quantite` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `paiementcarte`
--

CREATE TABLE `paiementcarte` (
  `datePaiement` date NOT NULL,
  `montant` double NOT NULL,
  `payer` int(11) NOT NULL,
  `nomProprietaire` varchar(30) NOT NULL,
  `prenomProprietaire` varchar(30) NOT NULL,
  `numeroCarte` varchar(30) NOT NULL,
  `adresseProprietaire` varchar(50) NOT NULL,
  `CinClient` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `paiementlivraision`
--

CREATE TABLE `paiementlivraision` (
  `datePaiement` date NOT NULL,
  `montant` double NOT NULL,
  `payer` tinyint(1) NOT NULL,
  `nomClient` varchar(30) NOT NULL,
  `prenomClient` varchar(30) NOT NULL,
  `emailClient` varchar(30) NOT NULL,
  `teleClient` varchar(15) NOT NULL,
  `adresseClient` varchar(50) NOT NULL,
  `CinClient` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pharmacie`
--

CREATE TABLE `pharmacie` (
  `idpharmacie` int(11) NOT NULL,
  `nomPharmacie` varchar(30) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `tel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pharmacie`
--

INSERT INTO `pharmacie` (`idpharmacie`, `nomPharmacie`, `adresse`, `tel`) VALUES
(1, 'anassi', ' rabat el Irfane', '+212670054689'),
(2, 'el kamra', ' rabat el kamra', '+21267019265');

-- --------------------------------------------------------

--
-- Structure de la table `pharmacien`
--

CREATE TABLE `pharmacien` (
  `numeroPharmacien` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `cin` varchar(30) DEFAULT NULL,
  `tele` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pseudo` varchar(30) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `motdepasse` varchar(30) DEFAULT NULL,
  `idpharmacie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pharmacien`
--

INSERT INTO `pharmacien` (`numeroPharmacien`, `nom`, `prenom`, `cin`, `tele`, `email`, `pseudo`, `adresse`, `motdepasse`, `idpharmacie`) VALUES
(1, 'douyry', ' hamza', 'mc263836', NULL, ' hamza@gmail.com', 'hamzadr', 'hay Elmassira 160 sidi bennour', '123456', 1),
(2, 'Elachbi', ' mouhsine', 'wa2323', '0645826895', ' Mouhsine@Elachbi.com', 'mouhchbi', 'Ensias ccccc', '123456', 1),
(3, 'abdellah', ' lamin', 'mc263837', '45789456818', ' medlmine@gmail.com', 'medlamin', 'hay Elmassira 160 moritan', '123456', 1),
(4, 'douyry', ' hamza', 'wa2324', '0670044061', ' hamza@gmail.com', 'hamzadr', 'hay Elmassira 160 sidi bennour', '123456', 1),
(5, 'ahmed', ' douiri', 'Aw1235', 'null', ' ahmed@gmail.com', 'ahmeddr', 'hay Elmassira 160 sidi bennour', '123456', 2),
(6, 'benali', ' mohamed', 'Q322889', '0607374352', ' moha@gmail.com', '0607374352', '0607374352', '0607374352', 1),
(7, 'benali', ' mohamed', 'Q32288', '0607374352', ' moha@gmail.com', '0607374352', '0607374352', '1234', 1),
(8, 'douyry', ' hamza', 'wa23234', '0670044061', ' hamza@gmail.com', 'mouhchbii', ' rue yaakoub El mansour', '123', 2),
(9, 'trt', ' hhgftg', 'oiuj', '44', ' 849589@gh', '65', '56592', '123', 2);

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

CREATE TABLE `planning` (
  `idPlanning` int(11) NOT NULL,
  `dateOuverture` date DEFAULT NULL,
  `dateFermeture` date DEFAULT NULL,
  `dateFerie` date DEFAULT NULL,
  `dateGarde` date DEFAULT NULL,
  `idPharmacie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `numeroProduit` int(11) NOT NULL,
  `referenceProduit` int(20) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `DateExpiration` date NOT NULL,
  `DateFabrication` date NOT NULL,
  `TemperatureStock` double NOT NULL,
  `prix` double NOT NULL,
  `idpharmacie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`numeroProduit`, `referenceProduit`, `libelle`, `DateExpiration`, `DateFabrication`, `TemperatureStock`, `prix`, `idpharmacie`) VALUES
(1, 2293, 'COCO', '2009-10-19', '2010-12-21', -10.67, 15.98, NULL),
(2, 229, 'doulipran', '2009-10-19', '2010-12-21', -10.67, 15, 2),
(3, 28999, 'COsoufo', '2018-10-19', '2020-12-21', -5, 15.08, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`numeroAdmin`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`numeroclient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`numeroCommande`),
  ADD KEY `numeroclient` (`numeroclient`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCommentaire`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idPharmacie` (`idPharmacie`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`numeroFacture`);

--
-- Index pour la table `linecommande`
--
ALTER TABLE `linecommande`
  ADD PRIMARY KEY (`numeroproduit`,`numeroCommande`);

--
-- Index pour la table `paiementcarte`
--
ALTER TABLE `paiementcarte`
  ADD PRIMARY KEY (`datePaiement`,`CinClient`);

--
-- Index pour la table `paiementlivraision`
--
ALTER TABLE `paiementlivraision`
  ADD PRIMARY KEY (`datePaiement`,`CinClient`);

--
-- Index pour la table `pharmacie`
--
ALTER TABLE `pharmacie`
  ADD PRIMARY KEY (`idpharmacie`);

--
-- Index pour la table `pharmacien`
--
ALTER TABLE `pharmacien`
  ADD PRIMARY KEY (`numeroPharmacien`),
  ADD KEY `idpharmacie` (`idpharmacie`);

--
-- Index pour la table `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`idPlanning`),
  ADD KEY `idPharmacie` (`idPharmacie`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`numeroProduit`),
  ADD KEY `idpharmacie` (`idpharmacie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `numeroAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `numeroclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `numeroCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `idCommentaire` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `numeroFacture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `pharmacie`
--
ALTER TABLE `pharmacie`
  MODIFY `idpharmacie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `pharmacien`
--
ALTER TABLE `pharmacien`
  MODIFY `numeroPharmacien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `planning`
--
ALTER TABLE `planning`
  MODIFY `idPlanning` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `numeroProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`numeroclient`) REFERENCES `client` (`numeroclient`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`numeroclient`),
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`idPharmacie`) REFERENCES `pharmacie` (`idpharmacie`);

--
-- Contraintes pour la table `pharmacien`
--
ALTER TABLE `pharmacien`
  ADD CONSTRAINT `pharmacien_ibfk_1` FOREIGN KEY (`idpharmacie`) REFERENCES `pharmacie` (`idpharmacie`);

--
-- Contraintes pour la table `planning`
--
ALTER TABLE `planning`
  ADD CONSTRAINT `planning_ibfk_1` FOREIGN KEY (`idPharmacie`) REFERENCES `pharmacie` (`idpharmacie`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`idpharmacie`) REFERENCES `pharmacie` (`idpharmacie`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
