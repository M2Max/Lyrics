-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 27, 2022 alle 11:14
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyrics`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `artist`
--

CREATE TABLE `artist` (
  `Name` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `artist`
--

INSERT INTO `artist` (`Name`, `Nationality`, `BirthDate`) VALUES
('Max Pezzali', 'Lombardia', '2021-11-08');

-- --------------------------------------------------------

--
-- Struttura della tabella `performance`
--

CREATE TABLE `performance` (
  `SongTitle` varchar(50) NOT NULL,
  `SongReleaseDate` date NOT NULL,
  `ArtistName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `performance`
--

INSERT INTO `performance` (`SongTitle`, `SongReleaseDate`, `ArtistName`) VALUES
('Dio Porco', '2022-02-15', 'Max Pezzali');

-- --------------------------------------------------------

--
-- Struttura della tabella `song`
--

CREATE TABLE `song` (
  `Title` varchar(50) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Text` text NOT NULL,
  `Language` varchar(20) NOT NULL,
  `userAdd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `song`
--

INSERT INTO `song` (`Title`, `ReleaseDate`, `Text`, `Language`, `userAdd`) VALUES
('Dio Porco', '2022-02-15', 'E lo mare quanto è bello', 'Napolitan', 'user');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('user', 'user');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Name`);

--
-- Indici per le tabelle `performance`
--
ALTER TABLE `performance`
  ADD KEY `Artist` (`ArtistName`),
  ADD KEY `SongReleaseDate` (`SongReleaseDate`),
  ADD KEY `Song` (`SongReleaseDate`,`SongTitle`);

--
-- Indici per le tabelle `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Title`,`ReleaseDate`),
  ADD KEY `user_added` (`userAdd`),
  ADD KEY `ReleaseDate` (`ReleaseDate`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `Artist` FOREIGN KEY (`ArtistName`) REFERENCES `artist` (`Name`),
  ADD CONSTRAINT `Song` FOREIGN KEY (`SongReleaseDate`,`SongTitle`) REFERENCES `song` (`ReleaseDate`, `Title`);

--
-- Limiti per la tabella `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `user_added` FOREIGN KEY (`userAdd`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
