USE zoo;

INSERT INTO `area_tematica` (`NOME`, `last_update`) VALUES
('Africa', '2019-05-29 09:36:44'),
('Asia', '2019-05-29 09:37:28'),
('Europa', '2019-05-29 09:37:28'),
('Nord America', '2019-05-29 09:37:28');


INSERT INTO `alloggio` (`NUMERO`, `NOME`, `TIPO`, `NOME_AREA`, `last_update`) VALUES
(1, 'Oasi dei Ghepardi', 'Recinzione in ferro', 'Africa', '2019-05-29 07:37:53'),
(2, 'Lido degli Ippopotami', 'Recinto con siepi', 'Africa', '2019-05-29 13:03:35'),
(1, 'Parco degli Elefanti', 'Recinto con canne di bamboo', 'Asia',  '2019-05-29 13:03:35'),
(2, 'W i Panda', 'Aperto tanto non scappano', 'Asia',  '2019-05-29 13:03:35');


INSERT INTO `animale` (`ID`, `NOME`, `SPECIE`, `HABITAT`, `PESO`, `ETA`, `SESSO`, `last_update`) VALUES
('MCG001', 'Gianluca', 'Ghepardo', 'Savana erbosa', 65, 4, 'M', '2019-05-29 07:34:55'),
('MCG002', 'Lucia', 'Ghepardo', 'Savana erbosa', 58, 3, 'F', '2019-05-29 07:35:40'),
('MEE001', 'Dumbo', 'Elefante indiano', 'Giungla', 3600, 4, 'M', '2019-05-29 12:57:06'),
('MEI002', 'Gianna', 'Ippopotamo', 'Foresta subtropicale secca', 1300, 6, 'F', '2019-05-29 13:00:55'),
('MEP003', 'Botolo', 'Panda', null, 1300, 2, 'M', '2019-05-29 13:00:55');




