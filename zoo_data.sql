USE zoo;

INSERT INTO `area_tematica` (`NOME`, `last_update`) VALUES
('Africa', '2019-05-29 09:36:44'),
('Asia', '2019-05-29 09:37:28'),
('Europa', '2019-05-29 09:37:28'),
('Oceania', '2019-05-29 09:37:28'),
('America', '2019-05-29 09:37:28');

INSERT INTO `ALLOGGIO` (`NUMERO`, `NOME`, `TIPO`,`NOME_AREA`, `last_update`) VALUES 
('1','Appennini','Recinto alto','Europa','2019-06-18 17:24:21'),
('2','Alpi','Recinto alto','Europa','2019-06-18 17:24:21'),
('3','Casa dei Panda','Recinto basso','Asia','2019-06-18 17:24:21'),
('4','Barriera corallina','Vasca','Oceania','2019-06-18 17:24:21'),
('5','Serpenti velenosi','Teca','America','2019-06-18 17:24:21'),
('6','Montagne rocciose','Recinto alto','America','2019-06-18 17:24:21'),
('7','Outback','Prato','Oceania','2019-06-18 17:24:21'),
('8','Acque mediterranee','Vasca','Europa','2019-06-18 17:24:21'),
('9','Grandi laghi europei','Vasca','Europa','2019-06-18 17:24:21'),
('10','Vita nella savana','Prato','Africa','2019-06-18 17:24:21'),
('11','Paludi della Luisiana','Vasca','America','2019-06-18 17:24:21'),
('12','Corsa con gli struzzi','Recinto alto','Oceania','2019-06-18 17:24:21'),
('13','Montagne innevate','Recinto alto','Asia','2019-06-18 17:24:21'); 




INSERT INTO `ANIMALE` (`ID`, `NOME`, `SPECIE`,`HABITAT`, `PESO`, `ETA`, `SESSO`, `last_update`) VALUES 
('033','Brant','Coccodrillo','Tundra','24','8','M','2019-06-18 17:12:45'),
('099','Eleazar','Gufo','Foresta','706','9','F','2019-06-18 17:12:45'),
('104','Fannie','Coccodrillo','Prateria','808','4','F','2019-06-18 17:12:45'),
('111','Rocky','Gufo','Foresta subtropicale','874445509','5','F','2019-06-18 17:12:45'),
('116','Jaron','Tigre siberiana','Tundra','5278','5','M','2019-06-18 17:12:45'),
('122','Grayson','Cammello','Vegetazione alpina','3287719','3','F','2019-06-18 17:12:45'),
('127','Flossie','Cammello','Foresta pluviale','64','3','F','2019-06-18 17:12:45'),
('133','Rowena','Panda','Prateria','6','2','M','2019-06-18 17:12:45'),
('139','Sarina','Zebra','Macchia mediterranea','94865712','1','F','2019-06-18 17:12:45'),
('158','Perry','Coccodrillo','Savana','64237','5','F','2019-06-18 17:12:45'),
('166','Colten','Gufo','Steppa','5511777','4','M','2019-06-18 17:12:45'),
('179','Jordane','Leone','Vegetazione alpina','153771931','6','M','2019-06-18 17:12:45'),
('217','Rosa','Gufo','Foresta subtropicale','25','3','F','2019-06-18 17:12:45'),
('230','Elise','Elefante','Foresta subtropicale','470645159','6','M','2019-06-18 17:12:45'),
('232','Kayden','Panda','Tundra','97295','5','M','2019-06-18 17:12:45'),
('242','Carlo','Leone','Foresta','484567437','6','F','2019-06-18 17:12:45');

INSERT INTO `DIETA` (`ID`, `last_update`) VALUES
('1', '2019-05-29 07:34:55'),
('2', '2019-05-29 07:34:55'),
('3', '2019-05-29 07:34:55');

INSERT INTO `VETERINARIO` (`CF`, `NOME`, `COGNOME`, `TELEFONO`, `EMAIL`, `INDIRIZZO`, `H_INIZIO`, `H_FINE`, `GIORNO_LIBERO`, `TIPOLOGIA_ANIMALE`, `last_update`) VALUES 
('285227', 'Veronica', 'Wilkinson', '(958)361-4407x6', 'marlen.mitchell@example.org', '817 Rice Lights Suite 968\nBernhardburgh, VA 08571-', '02:13:33', '07:20:52', 'Sabato', 'Grandi', '2019-05-29 13:00:55'),
('347', 'Bernadine', 'McClure', '(667)146-0258', 'vhilpert@example.org', '36674 Marshall Green\nLibbiemouth, ME 08282-5076', '03:07:58', '07:58:44', 'Giovedì', 'Piccoli', '2019-05-29 13:00:55'),
('39', 'Alexa', 'O\'Keefe', '(153)053-8877x6', 'josefa.ruecker@example.org', '833 Kutch Hills Apt. 943\nPort Ellisberg, MO 06232', '13:46:29', '11:20:12', 'Martedì', 'Medi', '2019-05-29 13:00:55'),
('51128', 'Juvenal', 'Boehm', '230.562.9267x14', 'bernadette43@example.org', '6977 Cedrick Rest\nEast Merritt, PA 67826-3097', '16:13:44', '13:38:35', 'Giovedì', 'Grandi', '2019-05-29 13:00:55'),
('532', 'Nicole', 'Ritchie', '566.134.2068x52', 'maudie.zieme@example.org', '3935 Alene Pines Apt. 347\nKeeganmouth, DC 97612-05', '07:18:13', '23:29:03', 'Venerdì', 'Medi', '2019-05-29 13:00:55'),
('571751', 'Annabel', 'Graham', '1-939-547-2664x', 'joseph17@example.net', '77553 Anibal Unions\nCollierfurt, NV 63114-1785', '20:42:08', '05:14:56', 'Domenica', 'Medi', '2019-05-29 13:00:55'),
('578', 'Eloise', 'White', '1-208-555-3823x', 'feeney.vivian@example.org', '31098 Gregorio Shores Apt. 583\nNew Royside, UT 348', '11:10:42', '08:34:48', 'Lunedì', 'Grandi', '2019-05-29 13:00:55'),
('760', 'Wendell', 'Littel', '588.196.9557x47', 'myra.jacobson@example.org', '9912 Wuckert Radial Apt. 995\nMacifort, CA 35674-48', '11:55:22', '04:31:06', 'Giovedì', 'Piccoli','2019-05-29 13:00:55'),
('86213', 'Jodie', 'Upton', '1-472-499-5179x', 'crooks.troy@example.net', '227 Alf Shoals Apt. 619\nSouth Bellaland, WY 24845', '11:17:44', '11:05:20', 'Mercoledì', 'Medi', '2019-05-29 13:00:55'),
('936025083', 'Cara', 'Kerluke', '196-828-4278x81', 'teagan.waters@example.net', '56924 Amelie Summit\nEnochmouth, WA 96180', '18:55:49', '04:41:45', 'Giovedì', 'Grandi', '2019-05-29 13:00:55');

INSERT INTO `DIETOLOGO` (`CF`, `NOME`, `COGNOME`, `TELEFONO`, `EMAIL`, `H_INIZIO`, `H_FINE`, `GIORNO_LIBERO`, `TIPOLOGIA_DIETA`, `last_update`) VALUES
('3578', 'Douglas', 'Wolf', '1-539-067-9022x', 'wshields@example.net', '15:15:16', '13:46:51', 'Venerdì', NULL, '2019-05-29 13:00:55'),
('15443276', 'Edna', 'Swift', '05246477971', 'eileen.bergnaum@example.com', '15:31:31', '13:53:12', 'Giovedì', NULL, '2019-05-29 13:00:55'),
('19426248', 'Toy', 'Nader', '1-031-047-0336', 'tromp.halie@example.org', '16:39:53', '05:51:38', 'Lunedì', NULL, '2019-05-29 13:00:55'),
('672', 'Lon', 'Kutch', '653-097-2939x61', 'marjorie82@example.com', '20:52:54', '07:44:55', 'Domenica', NULL, '2019-05-29 13:00:55'),
('774675156', 'Christophe', 'McKenzie', '+34(0)104836206', 'reginald91@example.com', '02:57:54', '01:53:09', 'Sabato', NULL, '2019-05-29 13:00:55');

INSERT INTO `ADDETTO_PULIZIE` (`CF`, `NOME`, `COGNOME`, `TELEFONO`, `EMAIL`, `H_INIZIO`, `H_FINE`, `GIORNO_LIBERO`, `last_update`) VALUES 
('19', 'Christop', 'Nader', '05346917478', 'ervin.jast@example.org', '06:26:56', '08:37:55', 'Giovedì', '2019-05-29 13:00:55'),
('2317', 'Vicente', 'Lockman', '670-614-9147x12', 'dherman@example.org', '07:43:02', '17:27:00', 'Mercoledì', '2019-05-29 13:00:55'),
('2934', 'Elvera', 'Jenkins', '896-760-4557', 'ila49@example.org', '16:18:45', '18:12:09', 'Sabato','2019-05-29 13:00:55'),
('35', 'Alexanne', 'Ortiz', '09573795652', 'ysporer@example.com', '16:30:36', '19:52:48', 'Giovedì', '2019-05-29 13:00:55'),
('40', 'Nikolas', 'Hudson', '479.112.3412', 'ukunde@example.org', '00:14:07', '16:32:49', 'Domenica','2019-05-29 13:00:55'),
('46', 'Harmon', 'Brakus', '1-813-157-7093x', 'kuhlman.mable@example.net', '04:14:19', '09:50:15', 'Martedì','2019-05-29 13:00:55'),
('47073817', 'Daisy', 'Reichel', '(023)161-4034', 'ellis.lind@example.com', '03:18:56', '03:36:19', 'Martedì', '2019-05-29 13:00:55'),
('5383', 'Eli', 'Jakubowski', '1-559-459-6996x', 'aconnelly@example.org', '06:48:52', '01:10:19', 'Martedì', '2019-05-29 13:00:55'),
('56', 'Cleveland', 'Roob', '+20(5)614432481', 'mac.streich@example.org', '11:58:20', '22:06:58', 'Domenica', '2019-05-29 13:00:55'),
('57221', 'Kraig', 'Schultz', '+28(5)811942361', 'nola70@example.com', '12:53:24', '02:07:28', 'LuneDì','2019-05-29 13:00:55'),
('6', 'Hailie', 'Hermann', '1-518-526-2230x', 'mireille73@example.com', '19:08:34', '11:43:35', 'Venerdì', '2019-05-29 13:00:55'),
('7', 'Estell', 'Stiedemann', '(462)964-0029x4', 'rashad.kling@example.org', '00:43:11', '14:41:44', 'Martedì', '2019-05-29 13:00:55'),
('704854330', 'Annamae', 'Wilkinson', '664-772-7934x03', 'grayson.torphy@example.net', '00:45:38', '00:09:19', 'Giovedì', '2019-05-29 13:00:55'),
('74849501', 'Rusty', 'Hermiston', '03302413687', 'nigel65@example.com', '06:47:45', '01:42:53', 'Sabato', '2019-05-29 13:00:55'),
('9663', 'Blanche', 'Labadie', '(731)958-3884', 'maybelle24@example.org', '23:26:55', '21:09:54', 'Domenica', '2019-05-29 13:00:55');

INSERT INTO `STRUTTURA_VETERINARIA`  (`NOME`, `INDIRIZZO`, `TELEFONO`, `last_update`) VALUES 
('Anderson-Schuster','627 Ankunding Motorway Suite 6','(165)355-7','2019-06-18 10:44:23'),
('Beahan Group','768 Jones Forks\nEast Jayden, V','106-285-10','2019-06-18 10:44:23'),
('Goodwin and Greenholt','26745 Nicolette Plain Apt. 467','180-113-38','2019-06-18 10:44:23'),
('Langosh-Gleichner','0295 O\'Conner Points Suite 660','682-336-20','2019-06-18 10:44:23'),
('Maggio-Koss','3425 Alicia Ford\nStaceymouth, ','1-363-460-','2019-06-18 10:44:23'),
('Nikolaus Inc','926 Trevor Mountain\nNew Nova, ','820.923.93','2019-06-18 10:44:23'),
('O\'Hara Ltd','706 Borer Manors\nPort Tremaine','822.436.91','2019-06-18 10:44:23'),
('Sipes-Spencer','1526 Schimmel Fork Apt. 471\nWu','1-391-613-','2019-06-18 10:44:23'),
('Streich Group','6809 Yasmine Freeway Apt. 751\n','1-675-119-','2019-06-18 10:44:23'),
('Mills and Johnston','2422 Mason Tunnel\nNew Amandato','060-936-18','2019-06-18 10:44:23'); 

INSERT INTO `MEDICINA` (`ID`, `NOME`, `DATA_SCADENZA`, `last_update`) VALUES 
('0597-0018', 'Persantine', '2020-06-22', '2019-06-18 10:44:23'),
('63629-1305', 'Cefaclor', '2020-01-14','2019-06-18 10:44:23'),
('51143-153', 'Everyday Clean Dandruff', '2019-06-29','2019-06-18 10:44:23'),
('67777-100', 'povidine iodine', '2021-05-30','2019-06-18 10:44:23'),
('0904-6143', 'Doxazosin Mesylate', '2025-03-10','2019-06-18 10:44:23'),
('11559-727', 'NUTRITIOUS', '2019-09-13','2019-06-18 10:44:23'),
('0245-0008', 'Fortical', '2020-03-22','2019-06-18 10:44:23'),
('60429-932', 'Carbamazepine', '2022-05-04','2019-06-18 10:44:23'),
('75857-0003', 'Antibacterial Wet Wipes', '2021-07-07','2019-06-18 10:44:23'),
('37808-161', 'Pain and Fever', '2023-08-01','2019-06-18 10:44:23'),
('0781-2227', 'Thiothixene', '2020-01-01','2019-06-18 10:44:23');

INSERT INTO `CIBO` (`ID`, `NOME`, `DATA_SCADENZA`, `last_update`) VALUES
('3511110238', 'Pollo', '2021-08-23' ,'2019-06-18 10:44:23'),
('6040536969', 'Gambero', '2019-08-28','2019-06-18 10:44:23'),
('9235091268', 'Fieno', '2021-02-25','2019-06-18 10:44:23'),
('2711947629', 'Carota', '2021-05-17','2019-06-18 10:44:23'),
('1838464557', 'Mela', '2024-03-31','2019-06-18 10:44:23'),
('6445855962', 'Banana', '2024-09-28','2019-06-18 10:44:23'),
('4411010151', 'Mirtilli', '2023-01-21','2019-06-18 10:44:23'),
('9353731585', 'Lattuga', '2021-10-16','2019-06-18 10:44:23'),
('0417766122', 'Manzo', '2024-03-26','2019-06-18 10:44:23'),
('7786890416', 'Maiale', '2020-04-18','2019-06-18 10:44:23'),
('7943122127', 'Verza', '2025-01-29','2019-06-18 10:44:23'),
('3874207420', 'Pera', '2023-10-07','2019-06-18 10:44:23'),
('5132562310', 'Fragole', '2020-07-20','2019-06-18 10:44:23'),
('9059959892', 'Funghi', '2021-12-29','2019-06-18 10:44:23'),
('6288686670', 'Salmone', '2022-04-14','2019-06-18 10:44:23');

INSERT INTO `risiede` (`ID_ANIMALE`, `NUMERO`, `last_update`) VALUES 
('033', '11', '2019-06-18 10:44:23'),
('099', '2', '2019-06-18 10:44:23'), 
('104', '11', '2019-06-18 10:44:23'), 
('111', '2', '2019-06-18 10:44:23'), 
('116', '13', '2019-06-18 10:44:23'), 
('122', '10', '2019-06-18 10:44:23'), 
('127', '10', '2019-06-18 10:44:23'), 
('133', '3', '2019-06-18 10:44:23'), 
('139', '10', '2019-06-18 10:44:23'), 
('158', '11', '2019-06-18 10:44:23'), 
('166', '2', '2019-06-18 10:44:23'), 
('179', '10', '2019-06-18 10:44:23'), 
('217', '2', '2019-06-18 10:44:23'), 
('230', '10', '2019-06-18 10:44:23'), 
('232', '3', '2019-06-18 10:44:23'), 
('242', '10', '2019-06-18 10:44:23');
