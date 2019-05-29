-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 29, 2019 alle 11:44
-- Versione del server: 10.1.40-MariaDB
-- Versione PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `addetto_pulizie`
--

CREATE TABLE `addetto_pulizie` (
  `CF` varchar(15) NOT NULL,
  `NOME` varchar(20) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `H_INIZIO` time DEFAULT NULL,
  `H_FINE` time DEFAULT NULL,
  `GIORNO_LIBERO` enum('lun','mar','mer','gio','ven','sab','dom') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `alloggia`
--

CREATE TABLE `alloggia` (
  `ID_ANIMALE` varchar(10) NOT NULL,
  `NOME_STRUTTURA` varchar(30) NOT NULL,
  `DATA_I` datetime DEFAULT NULL,
  `DATA_F` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `alloggio`
--

CREATE TABLE `alloggio` (
  `NUMERO` int(11) NOT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  `TIPO` varchar(20) DEFAULT NULL,
  `NOME_AREA` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `alloggio`
--

INSERT INTO `alloggio` (`NUMERO`, `NOME`, `TIPO`, `NOME_AREA`, `last_update`) VALUES
(1, 'Oasi dei Ghepardi', 'Recinzione in ferro', 'Africa', '2019-05-29 09:37:53');

-- --------------------------------------------------------

--
-- Struttura della tabella `animale`
--

CREATE TABLE `animale` (
  `ID` varchar(10) NOT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  `SPECIE` varchar(20) NOT NULL,
  `HABITAT` varchar(80) DEFAULT NULL,
  `BIOMA` enum('Calotta polare','Tundra','Taiga','Foresta decidua','Steppa e prateria','Foresta pluviale temperata','Foresta pluviale tropicale','Macchia mediterranea','Giungla','Deserto sabbioso','Deserto roccioso','Deserto semiarido','Steppa arida','Savana erbosa','Savana alberata','Foresta subtropicale secca','Tundra alpina','Vegetazione alpina') DEFAULT NULL,
  `PESO` int(10) UNSIGNED DEFAULT NULL,
  `ETA` int(10) UNSIGNED DEFAULT NULL,
  `SESSO` enum('M','F') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `animale`
--

INSERT INTO `animale` (`ID`, `NOME`, `SPECIE`, `HABITAT`, `BIOMA`, `PESO`, `ETA`, `SESSO`, `last_update`) VALUES
('MC000001', 'Gianluca', 'Ghepardo', 'Pianura con climasemiarido', 'Savana erbosa', 65, 4, 'M', '2019-05-29 09:34:55'),
('MC000002', 'Lucia', 'Ghepardo', 'Pianura con climasemiarido', 'Savana erbosa', 58, 3, 'F', '2019-05-29 09:35:40');

-- --------------------------------------------------------

--
-- Struttura della tabella `area_tematica`
--

CREATE TABLE `area_tematica` (
  `NOME` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `area_tematica`
--

INSERT INTO `area_tematica` (`NOME`, `last_update`) VALUES
('Africa', '2019-05-29 09:36:44'),
('Antartide', '2019-05-29 09:37:28'),
('Artide', '2019-05-29 09:37:28'),
('Asia', '2019-05-29 09:37:28'),
('Europa', '2019-05-29 09:37:28'),
('Nord America', '2019-05-29 09:37:28'),
('Oceania', '2019-05-29 09:37:28'),
('Sud America', '2019-05-29 09:37:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `cibo`
--

CREATE TABLE `cibo` (
  `ID` varchar(20) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `DATA_SCADENZA` datetime NOT NULL,
  `TIPO` varchar(20) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `composta`
--

CREATE TABLE `composta` (
  `ID_CIBO` varchar(20) NOT NULL,
  `ID_DIETA` int(10) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `conserva_cibo`
--

CREATE TABLE `conserva_cibo` (
  `ID_CIBO` varchar(20) NOT NULL,
  `NUMERO_MAGAZZINO` int(3) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `dieta`
--

CREATE TABLE `dieta` (
  `ID` int(10) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `dietologo`
--

CREATE TABLE `dietologo` (
  `CF` varchar(15) NOT NULL,
  `NOME` varchar(20) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `H_INIZIO` time DEFAULT NULL,
  `H_FINE` time DEFAULT NULL,
  `GIORNO_LIBERO` enum('lun','mar','mer','gio','ven','sab','dom') DEFAULT NULL,
  `TIPOLOGIA_DIETA` varchar(20) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `lavora_addetto_pulizie`
--

CREATE TABLE `lavora_addetto_pulizie` (
  `CF_P` varchar(15) NOT NULL,
  `NOME_AREA` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `lavora_dietologo`
--

CREATE TABLE `lavora_dietologo` (
  `CF_D` varchar(15) NOT NULL,
  `NOME_AREA` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `lavora_veterinario`
--

CREATE TABLE `lavora_veterinario` (
  `CF_V` varchar(15) NOT NULL,
  `NOME_AREA` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `magazzino`
--

CREATE TABLE `magazzino` (
  `NUMERO` int(3) UNSIGNED NOT NULL,
  `CAPACITA` int(10) UNSIGNED DEFAULT NULL,
  `NOME_AREA` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `malattia`
--

CREATE TABLE `malattia` (
  `ID` int(11) NOT NULL,
  `ID_ANIMALE` varchar(10) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `medicina`
--

CREATE TABLE `medicina` (
  `ID` varchar(20) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `DATA_SCADENZA` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `pianifica`
--

CREATE TABLE `pianifica` (
  `CF` varchar(15) NOT NULL,
  `ID_DIETA` int(10) UNSIGNED NOT NULL,
  `ID_ANIMALE` varchar(10) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `pulito`
--

CREATE TABLE `pulito` (
  `CF` varchar(15) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `DATA` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `risiede`
--

CREATE TABLE `risiede` (
  `ID_ANIMALE` varchar(10) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `risiede`
--

INSERT INTO `risiede` (`ID_ANIMALE`, `NUMERO`, `last_update`) VALUES
('MC000001', 1, '2019-05-29 09:38:41'),
('MC000002', 1, '2019-05-29 09:38:55');

-- --------------------------------------------------------

--
-- Struttura della tabella `somministrata`
--

CREATE TABLE `somministrata` (
  `CODICE` int(11) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `sottoposto`
--

CREATE TABLE `sottoposto` (
  `CODICE` int(11) NOT NULL,
  `CF` varchar(15) NOT NULL,
  `ID_ANIMALE` varchar(10) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_veterinaria`
--

CREATE TABLE `struttura_veterinaria` (
  `NOME` varchar(30) NOT NULL,
  `INDIRIZZO` varchar(30) NOT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `veterinario`
--

CREATE TABLE `veterinario` (
  `CF` varchar(15) NOT NULL,
  `NOME` varchar(20) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `H_INIZIO` time DEFAULT NULL,
  `H_FINE` time DEFAULT NULL,
  `GIORNO_LIBERO` enum('lun','mar','mer','gio','ven','sab','dom') DEFAULT NULL,
  `TIPOLOGIA_ANIMALE` enum('piccoli','medi','grandi') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `visita_veterinaria`
--

CREATE TABLE `visita_veterinaria` (
  `CODICE` int(11) NOT NULL,
  `IMPORTANZA` enum('bianco','verde','giallo','rosso') DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `ID_ANIMALE` varchar(10) NOT NULL,
  `CF` varchar(15) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `addetto_pulizie`
--
ALTER TABLE `addetto_pulizie`
  ADD PRIMARY KEY (`CF`);

--
-- Indici per le tabelle `alloggia`
--
ALTER TABLE `alloggia`
  ADD PRIMARY KEY (`ID_ANIMALE`,`NOME_STRUTTURA`),
  ADD KEY `NOME_STRUTTURA` (`NOME_STRUTTURA`);

--
-- Indici per le tabelle `alloggio`
--
ALTER TABLE `alloggio`
  ADD PRIMARY KEY (`NUMERO`),
  ADD KEY `NOME_AREA` (`NOME_AREA`);

--
-- Indici per le tabelle `animale`
--
ALTER TABLE `animale`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `area_tematica`
--
ALTER TABLE `area_tematica`
  ADD PRIMARY KEY (`NOME`);

--
-- Indici per le tabelle `cibo`
--
ALTER TABLE `cibo`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `composta`
--
ALTER TABLE `composta`
  ADD PRIMARY KEY (`ID_DIETA`,`ID_CIBO`),
  ADD KEY `ID_CIBO` (`ID_CIBO`);

--
-- Indici per le tabelle `conserva_cibo`
--
ALTER TABLE `conserva_cibo`
  ADD PRIMARY KEY (`ID_CIBO`,`NUMERO_MAGAZZINO`),
  ADD KEY `NUMERO_MAGAZZINO` (`NUMERO_MAGAZZINO`);

--
-- Indici per le tabelle `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `dietologo`
--
ALTER TABLE `dietologo`
  ADD PRIMARY KEY (`CF`);

--
-- Indici per le tabelle `lavora_addetto_pulizie`
--
ALTER TABLE `lavora_addetto_pulizie`
  ADD PRIMARY KEY (`CF_P`,`NOME_AREA`),
  ADD KEY `NOME_AREA` (`NOME_AREA`);

--
-- Indici per le tabelle `lavora_dietologo`
--
ALTER TABLE `lavora_dietologo`
  ADD PRIMARY KEY (`CF_D`,`NOME_AREA`),
  ADD KEY `NOME_AREA` (`NOME_AREA`);

--
-- Indici per le tabelle `lavora_veterinario`
--
ALTER TABLE `lavora_veterinario`
  ADD PRIMARY KEY (`CF_V`,`NOME_AREA`),
  ADD KEY `NOME_AREA` (`NOME_AREA`);

--
-- Indici per le tabelle `magazzino`
--
ALTER TABLE `magazzino`
  ADD PRIMARY KEY (`NUMERO`),
  ADD KEY `NOME_AREA` (`NOME_AREA`);

--
-- Indici per le tabelle `malattia`
--
ALTER TABLE `malattia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ANIMALE` (`ID_ANIMALE`);

--
-- Indici per le tabelle `medicina`
--
ALTER TABLE `medicina`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pianifica`
--
ALTER TABLE `pianifica`
  ADD PRIMARY KEY (`CF`,`ID_DIETA`,`ID_ANIMALE`),
  ADD KEY `ID_DIETA` (`ID_DIETA`),
  ADD KEY `ID_ANIMALE` (`ID_ANIMALE`);

--
-- Indici per le tabelle `pulito`
--
ALTER TABLE `pulito`
  ADD PRIMARY KEY (`CF`,`NUMERO`),
  ADD KEY `NUMERO` (`NUMERO`);

--
-- Indici per le tabelle `risiede`
--
ALTER TABLE `risiede`
  ADD PRIMARY KEY (`ID_ANIMALE`,`NUMERO`),
  ADD KEY `NUMERO` (`NUMERO`);

--
-- Indici per le tabelle `somministrata`
--
ALTER TABLE `somministrata`
  ADD PRIMARY KEY (`CODICE`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indici per le tabelle `sottoposto`
--
ALTER TABLE `sottoposto`
  ADD PRIMARY KEY (`CODICE`,`CF`,`ID_ANIMALE`),
  ADD KEY `CF` (`CF`),
  ADD KEY `ID_ANIMALE` (`ID_ANIMALE`);

--
-- Indici per le tabelle `struttura_veterinaria`
--
ALTER TABLE `struttura_veterinaria`
  ADD PRIMARY KEY (`NOME`,`INDIRIZZO`);

--
-- Indici per le tabelle `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`CF`);

--
-- Indici per le tabelle `visita_veterinaria`
--
ALTER TABLE `visita_veterinaria`
  ADD PRIMARY KEY (`CODICE`),
  ADD KEY `ID_ANIMALE` (`ID_ANIMALE`),
  ADD KEY `CF` (`CF`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `dieta`
--
ALTER TABLE `dieta`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  MODIFY `NUMERO` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `alloggia`
--
ALTER TABLE `alloggia`
  ADD CONSTRAINT `alloggia_ibfk_1` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`),
  ADD CONSTRAINT `alloggia_ibfk_2` FOREIGN KEY (`NOME_STRUTTURA`) REFERENCES `struttura_veterinaria` (`NOME`);

--
-- Limiti per la tabella `alloggio`
--
ALTER TABLE `alloggio`
  ADD CONSTRAINT `alloggio_ibfk_1` FOREIGN KEY (`NOME_AREA`) REFERENCES `area_tematica` (`NOME`);

--
-- Limiti per la tabella `composta`
--
ALTER TABLE `composta`
  ADD CONSTRAINT `composta_ibfk_1` FOREIGN KEY (`ID_DIETA`) REFERENCES `dieta` (`ID`),
  ADD CONSTRAINT `composta_ibfk_2` FOREIGN KEY (`ID_CIBO`) REFERENCES `cibo` (`ID`);

--
-- Limiti per la tabella `conserva_cibo`
--
ALTER TABLE `conserva_cibo`
  ADD CONSTRAINT `conserva_cibo_ibfk_1` FOREIGN KEY (`ID_CIBO`) REFERENCES `cibo` (`ID`),
  ADD CONSTRAINT `conserva_cibo_ibfk_2` FOREIGN KEY (`NUMERO_MAGAZZINO`) REFERENCES `magazzino` (`NUMERO`);

--
-- Limiti per la tabella `lavora_addetto_pulizie`
--
ALTER TABLE `lavora_addetto_pulizie`
  ADD CONSTRAINT `lavora_addetto_pulizie_ibfk_1` FOREIGN KEY (`CF_P`) REFERENCES `addetto_pulizie` (`CF`),
  ADD CONSTRAINT `lavora_addetto_pulizie_ibfk_2` FOREIGN KEY (`NOME_AREA`) REFERENCES `area_tematica` (`NOME`);

--
-- Limiti per la tabella `lavora_dietologo`
--
ALTER TABLE `lavora_dietologo`
  ADD CONSTRAINT `lavora_dietologo_ibfk_1` FOREIGN KEY (`CF_D`) REFERENCES `dietologo` (`CF`),
  ADD CONSTRAINT `lavora_dietologo_ibfk_2` FOREIGN KEY (`NOME_AREA`) REFERENCES `area_tematica` (`NOME`);

--
-- Limiti per la tabella `lavora_veterinario`
--
ALTER TABLE `lavora_veterinario`
  ADD CONSTRAINT `lavora_veterinario_ibfk_1` FOREIGN KEY (`CF_V`) REFERENCES `veterinario` (`CF`),
  ADD CONSTRAINT `lavora_veterinario_ibfk_2` FOREIGN KEY (`NOME_AREA`) REFERENCES `area_tematica` (`NOME`);

--
-- Limiti per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  ADD CONSTRAINT `magazzino_ibfk_1` FOREIGN KEY (`NOME_AREA`) REFERENCES `area_tematica` (`NOME`);

--
-- Limiti per la tabella `malattia`
--
ALTER TABLE `malattia`
  ADD CONSTRAINT `malattia_ibfk_1` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`);

--
-- Limiti per la tabella `pianifica`
--
ALTER TABLE `pianifica`
  ADD CONSTRAINT `pianifica_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `dietologo` (`CF`),
  ADD CONSTRAINT `pianifica_ibfk_2` FOREIGN KEY (`ID_DIETA`) REFERENCES `dieta` (`ID`),
  ADD CONSTRAINT `pianifica_ibfk_3` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`);

--
-- Limiti per la tabella `pulito`
--
ALTER TABLE `pulito`
  ADD CONSTRAINT `pulito_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `addetto_pulizie` (`CF`),
  ADD CONSTRAINT `pulito_ibfk_2` FOREIGN KEY (`NUMERO`) REFERENCES `alloggio` (`NUMERO`);

--
-- Limiti per la tabella `risiede`
--
ALTER TABLE `risiede`
  ADD CONSTRAINT `risiede_ibfk_1` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`),
  ADD CONSTRAINT `risiede_ibfk_2` FOREIGN KEY (`NUMERO`) REFERENCES `alloggio` (`NUMERO`);

--
-- Limiti per la tabella `somministrata`
--
ALTER TABLE `somministrata`
  ADD CONSTRAINT `somministrata_ibfk_1` FOREIGN KEY (`CODICE`) REFERENCES `visita_veterinaria` (`CODICE`),
  ADD CONSTRAINT `somministrata_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `medicina` (`ID`);

--
-- Limiti per la tabella `sottoposto`
--
ALTER TABLE `sottoposto`
  ADD CONSTRAINT `sottoposto_ibfk_1` FOREIGN KEY (`CODICE`) REFERENCES `visita_veterinaria` (`CODICE`),
  ADD CONSTRAINT `sottoposto_ibfk_2` FOREIGN KEY (`CF`) REFERENCES `veterinario` (`CF`),
  ADD CONSTRAINT `sottoposto_ibfk_3` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`);

--
-- Limiti per la tabella `visita_veterinaria`
--
ALTER TABLE `visita_veterinaria`
  ADD CONSTRAINT `visita_veterinaria_ibfk_1` FOREIGN KEY (`ID_ANIMALE`) REFERENCES `animale` (`ID`),
  ADD CONSTRAINT `visita_veterinaria_ibfk_2` FOREIGN KEY (`CF`) REFERENCES `veterinario` (`CF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
