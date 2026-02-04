-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 14, 2026 la 01:20 PM
-- Versiune server: 10.4.32-MariaDB
-- Versiune PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `piesepc`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `categorii`
--

CREATE TABLE `categorii` (
  `id_categorie` int(11) NOT NULL,
  `nume_categorie` varchar(100) DEFAULT NULL,
  `descriere` varchar(500) DEFAULT NULL,
  `data_creare` datetime DEFAULT NULL,
  `activ` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `categorii`
--

INSERT INTO `categorii` (`id_categorie`, `nume_categorie`, `descriere`, `data_creare`, `activ`) VALUES
(1, 'Procesoare', 'Intel și AMD', NULL, 1),
(2, 'Plăci Video', 'Gaming GPUs', NULL, 1),
(3, 'Stocare', 'SSD și HDD', NULL, 1),
(4, 'Tastaturi', 'Tastaturi mecanice și office', NULL, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `furnizori`
--

CREATE TABLE `furnizori` (
  `id_furnizor` int(11) NOT NULL,
  `nume_furnizor` varchar(100) DEFAULT NULL,
  `oras` varchar(50) DEFAULT NULL,
  `adresa` varchar(200) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cui` varchar(20) DEFAULT NULL,
  `data_inregistrare` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `furnizori`
--

INSERT INTO `furnizori` (`id_furnizor`, `nume_furnizor`, `oras`, `adresa`, `telefon`, `email`, `cui`, `data_inregistrare`, `rating`) VALUES
(1, 'PC Garage', 'București', NULL, NULL, 'contact@pcgarage.ro', NULL, NULL, NULL),
(2, 'eMAG', 'București', NULL, NULL, 'info@emag.ro', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `piese`
--

CREATE TABLE `piese` (
  `id_piesa` int(11) NOT NULL,
  `nume_piesa` varchar(100) DEFAULT NULL,
  `pret` decimal(10,2) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL,
  `specificatii` text DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `favorit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `piese`
--

INSERT INTO `piese` (`id_piesa`, `nume_piesa`, `pret`, `stoc`, `specificatii`, `id_categorie`, `favorit`) VALUES
(1, 'Intel i5-14600K', 1650.00, 10, NULL, 1, 1),
(2, 'NVIDIA RTX 4070', 3800.00, 5, NULL, 2, 1),
(3, 'Kingston NV2 1TB', 320.00, 20, NULL, 3, 0),
(4, 'Tastatură Mecanică Redragon', 250.00, 15, NULL, 4, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `piesefurnizori`
--

CREATE TABLE `piesefurnizori` (
  `id_piesa` int(11) DEFAULT NULL,
  `id_furnizor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `piesefurnizori`
--

INSERT INTO `piesefurnizori` (`id_piesa`, `id_furnizor`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `utilizatori`
--

CREATE TABLE `utilizatori` (
  `Id` int(11) NOT NULL,
  `Nume` varchar(50) DEFAULT NULL,
  `Parola` varchar(50) DEFAULT NULL,
  `data_nastere` date DEFAULT NULL,
  `tara` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `utilizatori`
--

INSERT INTO `utilizatori` (`Id`, `Nume`, `Parola`, `data_nastere`, `tara`) VALUES
(1, 'Alex', 'pass123', '2005-04-10', 'România'),
(2, 'AndreeaT', '456', '1978-11-25', 'România'),
(3, 'Vlad', 'vlad', '2000-01-15', 'România');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `categorii`
--
ALTER TABLE `categorii`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexuri pentru tabele `furnizori`
--
ALTER TABLE `furnizori`
  ADD PRIMARY KEY (`id_furnizor`);

--
-- Indexuri pentru tabele `piese`
--
ALTER TABLE `piese`
  ADD PRIMARY KEY (`id_piesa`);

--
-- Indexuri pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `categorii`
--
ALTER TABLE `categorii`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `furnizori`
--
ALTER TABLE `furnizori`
  MODIFY `id_furnizor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `piese`
--
ALTER TABLE `piese`
  MODIFY `id_piesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
