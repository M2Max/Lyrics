-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: lyrics
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `Name` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('AISHA','Latvia'),('Bon Jovi','USA'),('Giorgio Vanni','Italian'),('Jovanotti','Italian'),('Lewis Capaldi','United Kingdom'),('Linkin` Park','USA'),('One Republic','USA');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance` (
  `SongTitle` varchar(50) NOT NULL,
  `SongReleaseDate` date NOT NULL,
  `ArtistName` varchar(20) NOT NULL,
  PRIMARY KEY (`SongTitle`,`SongReleaseDate`,`ArtistName`),
  KEY `Artist` (`ArtistName`),
  KEY `SongReleaseDate` (`SongReleaseDate`),
  KEY `Song` (`SongReleaseDate`,`SongTitle`),
  CONSTRAINT `Artist` FOREIGN KEY (`ArtistName`) REFERENCES `artist` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Song` FOREIGN KEY (`SongReleaseDate`, `SongTitle`) REFERENCES `song` (`ReleaseDate`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES ('Diabolik','2019-05-15','Giorgio Vanni'),('Hollywood','2019-05-17','Lewis Capaldi'),('I lived','2007-05-26','One Republic'),('I Love You Baby','2020-02-06','Jovanotti'),('It`s my life','2000-05-23','Bon Jovi'),('My Hero Academia','2019-05-12','Giorgio Vanni'),('Numb','2005-05-17','Linkin` Park'),('Sunshine','2021-11-10','AISHA'),('Sunshine','2021-11-10','One Republic');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `Title` varchar(50) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Text` longtext NOT NULL,
  `Language` varchar(20) NOT NULL,
  `userAdd` varchar(20) NOT NULL,
  PRIMARY KEY (`Title`,`ReleaseDate`),
  KEY `user_added` (`userAdd`),
  KEY `ReleaseDate` (`ReleaseDate`),
  CONSTRAINT `user_added` FOREIGN KEY (`userAdd`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('Diabolik','2019-05-15','Waaa<br />Da da, da da<br />(Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik)<br />Da da<br />(Diabolik, Diabolik)<br /><br />Dopo un altro colpo<br />Tu ed Eva Kant Vi guardate intorno<br />E nellÔÇÖauto siete gi├á<br />Un errore, un contrattempo<br />E adesso cÔÇÖ├¿ la polizia<br />Ma con lÔÇÖauto nel frattempo<br />Siete gi├á filati via<br /><br />Lei, non ti tradir├á mai<br />Perch├® lei (perch├® lei)<br />├ê tutto quel che hai<br />Yeah<br /><br />(Diabolik)<br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Oooh<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi Per arrivare dove vuoi<br /><br />├ê unÔÇÖimpronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />├ê unÔÇÖimpronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />├ê unÔÇÖimpronta il tuo nome<br /><br />Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik<br />Diabolik, Diabolik<br /><br />Ti muovi con destrezza<br />E con abilit├á<br />E nellÔÇÖintraprendenza<br />CÔÇÖ├¿ la tua ingegnosit├á<br />Sei cos├¼, non hai paura<br />La tua vita ├¿ questa qua<br />Sempre allÔÇÖerta, sempre in fuga<br />Con la bionda Eva Kant<br /><br />Lei, non ti tradir├á mai<br />Perch├® lei (perch├® lei)<br />├ê tutto quel che hai<br />Yeah<br /><br />(Diabolik)<br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Oooh<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi<br />Per arrivare dove vuoi<br /><br />Uouooo<br />Uouooo<br />Uouooo<br /><br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br /><br />Del tuo passato<br />Non ne parli quasi mai<br />Quello che ├¿ stato<br />Solamente tu lo sai<br />Yeah<br /><br />Uouooo<br />I tuoi occhi nella notte<br />Sono fari che risplendono<br />E il bene e il male accendono<br />Uooo<br />Quando affronti le tue lotte<br />Tu fai sempre tutto quel che puoi<br />Per arrivare dove vuoi<br /><br />├ê unÔÇÖimpronta il tuo nome<br />Lasci il segno Diabolik, uooh<br />├ê unÔÇÖimpronta il tuo nome<br />Lasci il segno Diabolik, uooh<br /><br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) sta arrivando<br />(Diabolik, Diabolik) ','Italian','user'),('Hollywood','2019-05-17','Out of focus<br>Didn`t take a second to notice<br>Now we`re separated by oceans, vast<br>Couldn`t make this last<br>I wish I`d have stayed<br>`Cause love can find a way to make your feet run heavy<br>Make your heart run steady<br>Then it breaks<br>So I`m praying that you`re feeling the same<br>You know I spent some time in Hollywood tryna find<br>Something to get the thought of you and I off my mind<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do you ever feel like going back to the start?<br>All the streetlights<br>Illuminate what home used to feel like<br>And when I get to thinking, can`t sleep at night<br>No, I don`t feel right<br>I wish I`d have stayed<br>`Cause love can find a way to make your feet run heavy<br>Make your heart run steady<br>Then it breaks<br>So I`m praying that you`re feeling the same<br>You know I spent some time in Hollywood tryna find<br>Something to get the thought of you and I off my mind<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do you ever feel like going back to the start?<br>Oh, and you know I would if I could<br>Maybe I spend more time in Hollywood than I should<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do you ever feel like going back to the start?<br>If you can hear me, does it really have to end?<br>I feel you close, although you`re eight hours ahead<br>If we can pick it up, then just tell me where and when<br>We`ll go back to the start again<br>If you can hear me, does it really have to end?<br>I feel you close, although you`re eight hours ahead<br>If we can pick it up, just tell me where and when<br>We`ll go back to the start again<br>You know I spent some time in Hollywood tryna find<br>Something to get the thought of you and I off my mind<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do now you ever feel like going back?<br>You know I spent some time in Hollywood tryna find<br>Something to get the thought of you and I off my mind<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do you ever feel like going back to the start?<br>Oh, and you know I would if I could<br>Maybe I spend more time in Hollywood than I should<br>So tell me honey, oh, when you`re just a step away from falling apart<br>Do you ever feel like going back to the start?','English','user'),('I lived','2007-05-26','Hope when you take that jump<br />You don\'t fear the fall<br />Hope when the water rises<br />You\'ve built a wall<br /><br />Hope when the crowd screams out<br />It\'s screaming your name<br />Hope if everybody runs<br />You choose to stay<br />Hope that you fall in love<br />And it hurts so bad<br />The only way you can know<br />Is give it all you have<br />And I hope that you don\'t suffer<br />But take the pain<br />Hope when the moment comes<br />You\'ll say<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Hope that you spend your days<br />But they all add up And when that sun goes down<br />Hope you raise your cup<br /><br />Oh, oh<br />I wish that I could witness<br />All your joy and all your pain<br />But until my moment comes<br />I\'ll say<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />With every broken bone<br />I swear I lived<br />With every broken bone<br />I swear I<br /><br />I...I did it all<br />I...I did it all<br />I owned every second<br />that this world could give<br />I saw so many places<br />The things that I did<br />Yeah, with every broken bone<br />I swear I lived<br /><br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh<br />I swear I lived<br />Oh whoa oh oh oh oh oh<br />Oh whoa oh oh oh oh oh ','English','user'),('I Love You Baby','2020-02-06','I giorni passano lenti<br>Se li conti uno per volta aspettando una svolta, baby<br>Bisogna che non ci pensi<br>Non guardare cosa fa l`altra gente, non lo sa, credi<br><br>Pare che di questi tempi<br>Tutti cercano di dare una colpa per spiegare<br>Cosa succede alle loro menti<br>Che si intrecciano a pensare, non riescono a volare<br>Senti, c`├¿ una canzone di tanti anni fa<br>Che sembra scritta ora<br>Non mi ricordo neanche pi├╣ come fa<br>Ma il testo dice qualcosa come:<br><br>\"I love you baby\", pi├╣ chiaro di cos├¼ non c`era<br>\"I love you baby\", lo canter├▓ per te stasera<br>Domani e finch├® non vedr├▓<br>La luce dei tuoi occhi tornare nei tuoi occhi<br>La luce dei tuoi occhi tornare nei tuoi occhi<br><br>La tua bellezza ├¿ potente<br>Ci puoi fare cose belle, anche fottere la gente<br>Le cose accadono sempre<br>Sulla strada per Damasco penso subito:<br><br>\"Non ├¿ un incidente\", sai com`├¿, dipende<br>Sul pacchetto delle Camel qualcuno non ci vede un bel niente<br>A te io affido i miei istinti<br>Soprattutto perch├® so quanto ami gli animali<br>Senti quella canzone di tanti anni fa<br>Che sembra scritta ora<br>Non mi ricordo neanche pi├╣ come fa<br>Ma il testo dice qualcosa come:<br><br>\"I love you baby\", pi├╣ chiaro di cos├¼ non c`era<br>\"I love you baby\", lo canter├▓ per te stasera<br>Domani e finch├® non vedr├▓<br>La luce dei tuoi occhi tornare nei tuoi occhi<br>La luce dei tuoi occhi tornare nei tuoi occhi<br>La luce dei tuoi occhi tornare nei tuoi occhi<br>La luce dei tuoi occhi tornare nei tuoi occhi<br><br>Meno male che esisti<br>Che senn├▓ ti avrei dovuto inventare da zero<br>Come fanno gli artisti<br>E invece sei qua, sei vera, uh<br>Che ti posso toccare, baciare, abbracciare<br>Amarti e litigare, uoh, oh, oh<br><br>\"I love you baby\", pi├╣ chiaro di cos├¼ non c`era<br>\"I love you baby\", lo canter├▓ per te stasera<br>Per sempre e finch├® non vedr├▓<br>La luce dei tuoi occhi tornare nei tuoi occhi<br>La luce dei tuoi occhi<br>I love you baby<br>I love you baby<br>I love you baby','Italian','user'),('It`s my life','2000-05-23','This ain`t a song for the broken-hearted<br>No silent prayer for the faith-departed<br>I ain`t gonna be just a face in the crowd<br>You`re gonna hear my voice<br>When I shout it out loud<br><br>It`s my life<br>It`s now or never<br>I ain`t gonna live forever<br>I just want to live while I`m alive(It`s my life)<br>My heart is like an open highway<br>Like Frankie said, \"I did it my way\"<br>I just wanna live while I`m alive<br>It`s my life<br><br>This is for the ones who stood their ground<br>For Tommy and Gina who never backed down<br>Tomorrow`s getting harder make no mistake<br>Luck ain`t even lucky<br>Got to make your own breaks<br><br>It`s my life<br>It`s now or never<br>I ain`t gonna live forever<br>I just want to live while I`m alive<br>(It`s my life)<br>My heart is like an open highway<br>Like Frankie said, \"I did it my way\"<br>I just wanna live while I`m aliveIt`s my life<br><br>Better stand tall when they`re calling you out<br>Don`t bend, don`t break, baby, don`t back down<br><br>It`s my life<br>It`s now or never<br>I ain`t gonna live forever<br>I just want to live while I`m alive<br>(It`s my life)<br>My heart is like an open highway<br>Like Frankie said, \"I did it my way\"<br>I just wanna live while I`m alive<br>It`s my life<br><br>It`s my life<br>It`s now or never<br>I ain`t gonna live forever<br>I just want to live while I`m alive<br>(It`s my life)<br>My heart is like an open highway<br>Like Frankie said, \"I did it my way\"<br>I just wanna live while I`m alive<br>It`s my life','English','user'),('My Hero Academia','2019-05-12','My Hero Academia(My,My,My,My, My)<br />My Hero Academia(My,My,My,My, My)<br />My Hero<br /><br />Vuoi diventare<br />Un SuperHero<br />Continui a provare<br />But you start from zero<br /><br />Ma non ti arrendi Sei pronto alla sfida<br />E intanto tu prendi<br />Quello che arriva<br /><br />Guardi al tuo mito<br />Con occhi sognanti<br />L\'orgoglio ├¿ ferito<br />Per├▓ vai avanti<br /><br />Hai tanta rabbia<br />Vorresti scappare<br />Ti senti in gabbia<br />Puoi solo sognare!<br /><br />Voglio guardare in faccia il mio destino<br />(All Might ti aiuter├á)<br />Never give up my dream to be an Hero<br />Ti basta un quirk<br />Tutto in me ├¿ cambiato<br />E questo gioco ├ê appena cominciato(├ê appena cominciato)<br /><br />Spingendo fino in fondo<br />Il sogno si realizzer├á<br />L\'Eroe che il mondo aspetta gi├á<br /><br />L\'Eroe che il mondo aspetta gi├á<br />(My,My,My,My, My)<br />My Hero Academia<br />(My,My,My,My, My)<br />L\'Eroe che il mondo aspetta gi├á<br />(My,My,My,My, My)<br />My Hero Academia<br />(My,My,My,My, My)<br />My Hero Academia. ','Italian','user'),('Numb','2005-05-17','I\'m tired of being what you want me to be<br />Feeling so faithless lost under the surface<br />Don\'t know what you\'re expecting of me<br />Put under the pressure of walking in your shoes<br />(Caught in the undertow just caught in the undertow)<br />Every step that I take is another mistake to you<br />(Caught in the undertow just caught in the undertow)<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />Can\'t you see that you\'re smothering me<br />Holding too tightly afraid to lose control<br />Cause everything that you thought I would be<br />Has fallen apart right in front of you<br />(Caught in the undertow just caught in the undertow)<br />Every step that I take is another mistake to you<br />(Caught in the undertow just caught in the undertow)<br />And every second I waste is more than I can take<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware<br />I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />And I know<br />I may end up failing too<br />But I know You were just like me with someone disappointed in you<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'ve become so tired so much more aware<br />I\'m becoming this all I want to do<br />Is be more like me and be less like you<br /><br />I\'ve become so numb I can\'t feel you there<br />I\'m tired of being what you want me to be<br />I\'ve become so numb I can\'t feel you there<br />I\'m tired of being what you want me to be','English','user'),('Sunshine','2021-11-10','Runnin` through this strange life<br>Chasin` all them green lights<br>Throwin` up the shade for a little bit of sunshine<br>Hit me with them good vibes<br>Pictures on my phone like<br>Everything is so fine<br>Little bit of sunshine<br>Yeah, crazy lately, I`m confirmin`<br>Tryna write myself a sermon<br>You just tryna get a word and life is not fair<br>I`ve been workin` on my tunnel vision<br>Tryna get a new prescription<br>Takin` swings and even missin` but I don`t care<br>I`m dancin` more just a little bit<br>Breathin` more just a little bit<br>Care a little less just a little bit<br>Like life is woo hoo<br>I`m makin` more just a little bit<br>Spend a little more to get rid of it<br>Smile a little more and I`m into it<br>I, I, I, I, I`ve been runnin` through this strange life<br>Chasin` all them green lights<br>Throwin` up the shade for a little bit of sunshine<br>Hit me with them good vibes<br>Pictures on my phone like<br>Everything is so fine<br>Little bit of sunshine<br>A little bit of sunshine<br>A little bit of sunshine<br>`Nother day, another selfish moment<br>I`ve been feelin` helpless<br>Sick of seein` all the selfies, now I don`t care<br>Found myself a new vocation<br>Calibrated motivation<br>No more static, change the station<br>Headin` somewhere<br>I`m dancin` more just a little bit<br>Breathin` more just a little bit<br>Care a little less just a little bit<br>Like life is woo hoo<br>I`m makin` more just a little bit<br>Spend a little more to get rid of it<br>Smile a little more and I`m into it<br>Honestly man, lately<br>I, I`ve been runnin` through this strange life<br>Chasin` all them green lights<br>Throwin` up the shade for a little bit of sunshine<br>Hit me with them good vibes<br>Pictures on my phone like<br>Everything is so fine<br>Little bit of sunshine<br>A little bit of sunshine<br>A little bit of sunshine<br>I don`t really know any other way to say this<br>Can`t slow down, tryna keep up with the changes<br>Punch that number and the name when I clock in<br>Now I feel like Michael with a cane when I walk in<br>Basically, life is the same thing unless you don`t want the same thing<br>Probably shoulda went and got a feature, but I didn`t<br>I`ve been savin` up the money `cause it`s better for the business<br>I, I`ve been runnin` through this strange life<br>Chasin` all them green lights<br>Throwin` up the shade for a little bit of sunshine (yeah)<br>Woo Woo<br>A little bit of sunshine<br>A little bit of sunshine','English','user');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('user','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 10:34:32
