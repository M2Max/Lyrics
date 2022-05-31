-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 06:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Name` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Name`, `Nationality`) VALUES
('Giacomo', 'Poretti'),
('Max Pezzali', 'Lombardia');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `SongTitle` varchar(50) NOT NULL,
  `SongReleaseDate` date NOT NULL,
  `ArtistName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`SongTitle`, `SongReleaseDate`, `ArtistName`) VALUES
('Diabolik', '2019-05-15', 'Giacomo'),
('Diabolik', '2019-05-15', 'Max Pezzali'),
('I lived', '2007-05-26', 'Giacomo'),
('I lived', '2007-05-26', 'Max Pezzali'),
('My Hero Academia', '2019-05-12', 'Giacomo'),
('Numb', '2005-05-17', 'Max Pezzali');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `Title` varchar(50) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Text` longtext NOT NULL,
  `Language` varchar(20) NOT NULL,
  `userAdd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`Title`, `ReleaseDate`, `Text`, `Language`, `userAdd`) VALUES
('Diabolik', '2019-05-15', 'Waaa<br />Da da, da da<br />(Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik)<br />Da da<br />(Diabolik, Diabolik)<br /><br />Dopo un altro colpo<br />Tu ed Eva Kant Vi guardate intorno<br />E nell’auto siete già<br />Un errore, un contrattempo<br />E adesso c’è la polizia<br />Ma con l’auto nel frattempo<br />Siete già filati via<br /><br />Lei, non ti tradirà mai<br />Perché lei (perché lei)<br />È tutto quel che hai<br />Yeah<br /><br />(Diabolik)<br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Oooh<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi Per arrivare dove vuoi<br /><br />È un’impronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />È un’impronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />È un’impronta il tuo nome<br /><br />Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik<br /><br />Ti muovi con destrezza<br />E con abilità<br />E nell’intraprendenza<br />C’è la tua ingegnosità<br />Sei così, non hai paura<br />La tua vita è questa qua<br />Sempre all’erta, sempre in fuga<br />Con la bionda Eva Kant<br /><br />Lei, non ti tradirà mai<br />Perché lei (perché lei)<br />È tutto quel che hai<br />Yeah<br /><br />(Diabolik)<br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Oooh<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi<br />Per arrivare dove vuoi<br /><br />Uouooo<br />Uouooo<br />Uouooo<br /><br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br /><br />Del tuo passato<br />Non ne parli quasi mai<br />Quello che è stato<br />Solamente tu lo sai<br />Yeah<br /><br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Uooo<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi<br />Per arrivare dove vuoi<br /><br />È un’impronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />È un’impronta il tuo nome<br />Lasci il segno Diabolik, uooh<br /><br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) ', 'Italian', 'user'),
('I lived', '2007-05-26', 'Hope when you take that jump<br />You don\'t fear the fall<br />Hope when the water rises<br />You\'ve built a wall<br /><br />Hope when the crowd screams out<br />It\'s screaming your name<br />Hope if everybody runs<br />You choose to stay<br />Hope that you fall in love<br />And it hurts so bad<br />The only way you can know<br />Is give it all you have<br />And I hope that you don\'t suffer<br />But take the pain<br />Hope when the moment comes<br />You\'ll say<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Hope that you spend your days<br />But they all add up And when that sun goes down<br />Hope you raise your cup<br /><br />Oh, oh<br />I wish that I could witness<br />All your joy and all your pain<br />But until my moment comes<br />I\'ll say<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />With every broken bone<br />I swear I lived<br />With every broken bone<br />I swear I<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />I swear I lived<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh ', 'English', 'user'),
('My Hero Academia', '2019-05-12', 'My Hero Academia(My,My,My,My, My)<br />My Hero Academia(My,My,My,My, My)<br />My Hero<br /><br />Vuoi diventare<br />Un SuperHero<br />Continui a provare<br />But you start from zero<br /><br />Ma non ti arrendi Sei pronto alla sfida<br />E intanto tu prendi<br />Quello che arriva<br /><br />Guardi al tuo mito<br />Con occhi sognanti<br />L\'orgoglio è ferito<br />Però vai avanti<br /><br />Hai tanta rabbia<br />Vorresti scappare<br />Ti senti in gabbia<br />Puoi solo sognare!<br /><br />Voglio guardare in faccia il mio destino<br />(All Might ti aiuterà)<br />Never give up my dream to be an Hero<br />Ti basta un quirk<br />Tutto in me è cambiato<br />E questo gioco È appena cominciato(È appena cominciato)<br /><br />Spingendo fino in fondo<br />Il sogno si realizzerà<br />L\'Eroe che il mondo aspetta già<br /><br />L\'Eroe che il mondo aspetta già<br />(My,My,My,My, My)<br />My Hero Academia<br />(My,My,My,My, My)<br />L\'Eroe che il mondo aspetta già<br />(My,My,My,My, My)<br />My Hero Academia<br />(My,My,My,My, My)<br />My Hero Academia. ', 'Italian', 'user'),
('Numb', '2005-05-17', 'I\'m tired of being what you want me to be<br />Feeling so faithless lost under the surface<br />Don\'t know what you\'re expecting of me<br />Put under the pressure of walking in your shoes<br />(Caught in the undertow just caught in the undertow)<br />Every step that I take is another mistake to you<br />(Caught in the undertow just caught in the undertow)<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />Can\'t you see that you\'re smothering me<br />Holding too tightly afraid to lose control<br />Cause everything that you thought I would be<br />Has fallen apart right in front of you<br />(Caught in the undertow just caught in the undertow)<br />Every step that I take is another mistake to you<br />(Caught in the undertow just caught in the undertow)<br />And every second I waste is more than I can take<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware<br />I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />And I know<br />I may end up failing too<br />But I know You were just like me with someone disappointed in you<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware<br />I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'m tired of being what you want me to be<br />I\'ve become so numb I can\'t feel you there<br />I\'m tired of being what you want me to be', 'English', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('anna', 'lisa'),
('carlo', 'carlo'),
('fede', 'fede'),
('mario', 'mario'),
('N', 'N'),
('piccina99', 'picci'),
('tanzone', '123'),
('user', 'user'),
('usert', '├╣├á├▓');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`SongTitle`,`SongReleaseDate`,`ArtistName`),
  ADD KEY `Artist` (`ArtistName`),
  ADD KEY `SongReleaseDate` (`SongReleaseDate`),
  ADD KEY `Song` (`SongReleaseDate`,`SongTitle`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Title`,`ReleaseDate`),
  ADD KEY `user_added` (`userAdd`),
  ADD KEY `ReleaseDate` (`ReleaseDate`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `Artist` FOREIGN KEY (`ArtistName`) REFERENCES `artist` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Song` FOREIGN KEY (`SongReleaseDate`,`SongTitle`) REFERENCES `song` (`ReleaseDate`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `user_added` FOREIGN KEY (`userAdd`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
