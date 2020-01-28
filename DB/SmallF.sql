-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2019 at 07:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `restful_db`
--
CREATE DATABASE IF NOT EXISTS `restful_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `restful_db`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'Product 1', 2000),
(2, 'Product 2 Updated', 7000),
(3, 'Product 3', 4000),
(4, 'Product 4', 6000),
(9, 'Product 8 Added', 6000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `SmallFit`
--
CREATE DATABASE IF NOT EXISTS `SmallFit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `SmallFit`;

-- --------------------------------------------------------

--
-- Table structure for table `Articles`
--

CREATE TABLE `Articles` (
  `IdArti` int(11) NOT NULL,
  `LibelleArti` varchar(150) NOT NULL,
  `DatePArti` datetime NOT NULL,
  `DateFArti` datetime DEFAULT NULL,
  `TypeArti` enum('Alimentation','Antreman') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `IdCli` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Nom` int(50) NOT NULL,
  `Prenom` int(25) NOT NULL,
  `Sexe` enum('M','F') NOT NULL,
  `DateN` date NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Ville` varchar(200) NOT NULL,
  `CP` int(5) NOT NULL,
  `Portable` varchar(10) NOT NULL,
  `Taille` decimal(5,0) NOT NULL,
  `Poids` decimal(5,0) NOT NULL,
  `TxGraisse` enum('4-9','10-14','15-20','20-25') NOT NULL,
  `TxCible` enum('4-9','10-14','15-20','21-25') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Coachs`
--

CREATE TABLE `Coachs` (
  `IdCoa` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Portable` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Connexion`
--

CREATE TABLE `Connexion` (
  `IdCon` int(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Formules`
--

CREATE TABLE `Formules` (
  `IdForm` int(20) UNSIGNED NOT NULL,
  `Libelle` varchar(50) NOT NULL,
  `Prix` decimal(10,0) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Partenaires`
--

CREATE TABLE `Partenaires` (
  `IdPart` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Portable` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Reservations`
--

CREATE TABLE `Reservations` (
  `IdRes` int(11) NOT NULL,
  `IdCli` int(11) NOT NULL,
  `DateRes` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Seances`
--

CREATE TABLE `Seances` (
  `IdSeance` int(11) NOT NULL,
  `LibelleSeance` varchar(150) DEFAULT NULL,
  `Theme` enum('force','endrance','interval') NOT NULL,
  `Type` enum('klasik','konbine') NOT NULL,
  `Muscle1` enum('Biceps','Epaules','Triceps','Dos','Fesses','Pectoraux','Cuisses') DEFAULT NULL,
  `Muscle2` enum('Biceps','Epaules','Triceps','Dos','Fesses','Pectoraux','Cuisses') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Videos`
--

CREATE TABLE `Videos` (
  `IdVideo` int(11) NOT NULL,
  `LibelleVideo` varchar(150) NOT NULL,
  `DatePVideo` datetime DEFAULT NULL,
  `DateFinPVideo` datetime DEFAULT NULL,
  `TypeVideo` enum('Alimentation','Antreman') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Votes`
--

CREATE TABLE `Votes` (
  `IdVote` int(11) NOT NULL,
  `IdSeance` int(11) NOT NULL,
  `NbVotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`IdCli`,`email`);

--
-- Indexes for table `Coachs`
--
ALTER TABLE `Coachs`
  ADD PRIMARY KEY (`IdCoa`,`email`);

--
-- Indexes for table `Connexion`
--
ALTER TABLE `Connexion`
  ADD PRIMARY KEY (`IdCon`,`email`);

--
-- Indexes for table `Formules`
--
ALTER TABLE `Formules`
  ADD PRIMARY KEY (`IdForm`);

--
-- Indexes for table `Partenaires`
--
ALTER TABLE `Partenaires`
  ADD PRIMARY KEY (`IdPart`,`email`);

--
-- Indexes for table `Reservations`
--
ALTER TABLE `Reservations`
  ADD PRIMARY KEY (`IdRes`,`IdCli`);

--
-- Indexes for table `Seances`
--
ALTER TABLE `Seances`
  ADD PRIMARY KEY (`IdSeance`);

--
-- Indexes for table `Videos`
--
ALTER TABLE `Videos`
  ADD PRIMARY KEY (`IdVideo`);

--
-- Indexes for table `Votes`
--
ALTER TABLE `Votes`
  ADD PRIMARY KEY (`IdVote`,`IdSeance`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `IdCli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Coachs`
--
ALTER TABLE `Coachs`
  MODIFY `IdCoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Connexion`
--
ALTER TABLE `Connexion`
  MODIFY `IdCon` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Formules`
--
ALTER TABLE `Formules`
  MODIFY `IdForm` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Partenaires`
--
ALTER TABLE `Partenaires`
  MODIFY `IdPart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reservations`
--
ALTER TABLE `Reservations`
  MODIFY `IdRes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Seances`
--
ALTER TABLE `Seances`
  MODIFY `IdSeance` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Videos`
--
ALTER TABLE `Videos`
  MODIFY `IdVideo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Votes`
--
ALTER TABLE `Votes`
  MODIFY `IdVote` int(11) NOT NULL AUTO_INCREMENT;
