-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 sep 2023 om 15:58
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klassen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `namen`
--

CREATE TABLE `namen` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telefoonnummer` varchar(255) NOT NULL,
  `Voornaam` varchar(255) NOT NULL,
  `Tussenvoegsel` varchar(255) NOT NULL,
  `Achternaam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `namen`
--

INSERT INTO `namen` (`ID`, `Email`, `Telefoonnummer`, `Voornaam`, `Tussenvoegsel`, `Achternaam`) VALUES
(1, 'Jensbul@roctilburg.nl', '0631323244', 'Jens', '', 'Bul'),
(2, 'MikaDeijkers@roctilburg.nl', '0687453277', 'Mika', '', 'Deijkers'),
(3, 'FarhanFarah@roctilburg.nl', '0693139931', 'Farhan', '', 'Farah'),
(4, 'MohamadHamoud@roctilburg.nl', '0675765432', 'Mohamad', '', 'Hamoud'),
(5, 'KrisdenHertog@roctilburg.nl', '0631332388', 'Kris', 'den', 'Hertog'),
(6, 'FinnJager@roctilburg.nl', '0641399132', 'Finn', '', 'Jager'),
(7, 'MateoKristic@roctilburg.nl', '0641332313', 'Mateo', '', 'Kristić'),
(8, 'MaciejKwiaotkowski@roctilburg.nl', '0683132231', 'Maciej', '', 'Kwiatkowski'),
(9, 'NishaarLiakathoesein@roctilburg.nl', '0684132293', 'Nishaar', '', 'Liakathoesein'),
(10, 'NoahvanLoon@roctilburg.nl', '0684139922', 'Noah', 'van', 'Loon'),
(11, 'YordivandenMeijdenberg@roctilburg.nl', '0684321133', 'Yordi', 'van den', 'Meijdenberg'),
(12, 'SvenMutsears@roctilburg.nl', '0631992133', 'Sven', '', 'Mutsaers'),
(13, 'KarstenSchoenmakers@roctilburg.nl', '0699134122', 'Karsten', '', 'Schoenmakers'),
(14, 'ParsaSiddighi@roctilburg.nl', '0683123344', 'Parsa', '', 'Siddighi'),
(15, 'DylanvanderVen@roctilburg.nl', '0683112233', 'Dylan', 'Van Der', 'Ven'),
(16, 'StefanVersteeg@roctilburg.nl', '0684332244', 'Stefan', '', 'Versteeg'),
(17, 'FrankvanVroenhoven@roctilburg.nl', '0633113322', 'Frank', 'van', 'Vroenhoven'),
(18, 'OliwierWozniak@roctilburg.nl', '0644331155', 'Oliwier', '', 'Woźniak'),
(19, 'RoneyZakko@roctilburg.nl', '0687345611', 'Roney', '', 'Zakko'),
(20, 'ArdaOzkan@roctilburg.nl', '0691332299', 'Arda', '', 'Özkan');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `namen`
--
ALTER TABLE `namen`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `namen`
--
ALTER TABLE `namen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
