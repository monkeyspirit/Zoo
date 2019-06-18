USE zoo;

INSERT INTO `area_tematica` (`NOME`, `last_update`) VALUES
('Africa', '2019-05-29 09:36:44'),
('Asia', '2019-05-29 09:37:28'),
('Europa', '2019-05-29 09:37:28'),
('Nord America', '2019-05-29 09:37:28');


INSERT INTO `alloggio` (`NUMERO`, `NOME`, `TIPO`, `NOME_AREA`, `last_update`) VALUES
(1, 'Oasi dei Ghepardi', 'Recinzione in ferro', 'Africa', '2019-05-29 07:37:53'),
(2, 'Lido degli Ippopotami', 'Recinto con siepi', 'Africa', '2019-05-29 13:03:35'),
(3, 'Parco degli Elefanti', 'Recinto con canne di bamboo', 'Asia',  '2019-05-29 13:03:35'),
(4, 'W i Panda', 'Aperto tanto non scappano', 'Asia',  '2019-05-29 13:03:35');


INSERT INTO `animale` (`ID`, `NOME`, `SPECIE`, `HABITAT`, `PESO`, `ETA`, `SESSO`, `last_update`) VALUES
('MCG001', 'Gianluca', 'Ghepardo', 'Savana erbosa', 65, 4, 'M', '2019-05-29 07:34:55'),
('MCG002', 'Lucia', 'Ghepardo', 'Savana erbosa', 58, 3, 'F', '2019-05-29 07:35:40'),
('MEE001', 'Dumbo', 'Elefante indiano', 'Giungla', 3600, 4, 'M', '2019-05-29 12:57:06'),
('MEI002', 'Gianna', 'Ippopotamo', 'Foresta subtropicale secca', 1300, 6, 'F', '2019-05-29 13:00:55'),
('MEP003', 'Botolo', 'Panda', 'Giungla' , 1300, 2, 'M', '2019-05-29 13:00:55'),
('RCT001', 'Saetta', 'Testuggine', 'Macchia mediterranea', 2, 5,'M', '2019-05-29 13:00:55');


INSERT INTO  `risiede` (`ID_ANIMALE`, `NUMERO`, `last_update`) VALUES
('MCG001', '1', '2019-05-29 07:34:55'),
('MCG002', '1', '2019-05-29 07:35:40');

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
('0781-2227', 'Thiothixene', '2020-01-01','2019-06-18 10:44:23'),
('58118-1290', 'Methocarbamol', '2022-07-30','2019-06-18 10:44:23'),
('44911-0066', 'Infectistat', '2024-01-29','2019-06-18 10:44:23'),
('14290-282', 'Tretinoin', '2020-10-27','2019-06-18 10:44:23'),
('52125-212', 'Azithromycin', '202-11-22','2019-06-18 10:44:23'),
 ('52731-7022', 'Shoulder/Arm Complex', '2020-06-20','2019-06-18 10:44:23'),
 ('68788-9501', 'Phenazopyridine Hydrochloride', '2020-01-24','2019-06-18 10:44:23'),
 ('59572-215', 'Thalomid', '2021-04-15','2019-06-18 10:44:23'),
 ('0409-1041', 'Carbocaine', '2022-01-22','2019-06-18 10:44:23'),
 ('53499-0190', 'Alpha CF', '2023-05-16','2019-06-18 10:44:23'),
 ('64764-080', 'Amitiza', '2022-04-17','2019-06-18 10:44:23'),
 ('57627-100', 'Clear Complexion Spot Treatment', '2021-06-02','2019-06-18 10:44:23'),
 ('55289-354', 'hydroxyzine pamoate', '2022-05-11','2019-06-18 10:44:23'),
 ('0924-0133', 'PhysiciansCare Sinus', '2019-09-11','2019-06-18 10:44:23'),
 ('58633-233', 'CC SPF 18', '2022-04-11','2019-06-18 10:44:23'),
 ('54838-502', 'Hydroxyzine', '2019-11-04','2019-06-18 10:44:23'),
 ('51079-062', 'Repaglinide', '2021-01-14','2019-06-18 10:44:23'),
 ('49288-0620', 'Acrothecium robustum', '2019-12-09','2019-06-18 10:44:23'),
 ('55111-124', 'Atorvastatin Calcium', '2020-05-15','2019-06-18 10:44:23'),
 ('0904-6378', 'Ciprofloxacin', '2020-08-11','2019-06-18 10:44:23');

INSERT INTO `CIBO` (`ID`, `NOME`, `DATA_SCADENZA`, `last_update`) VALUES
('3511110238', 'Madeira', '2021-08-23' ,'2019-06-18 10:44:23'),
('6040536969', 'Bacardi Limon', '2019-08-28','2019-06-18 10:44:23'),
('9235091268', 'Shrimp - 16 - 20 Cooked, Peeled', '2021-02-25','2019-06-18 10:44:23'),
('2711947629', 'Beans - Fava, Canned', '2021-05-17','2019-06-18 10:44:23'),
('1838464557', 'Muffin Mix - Raisin Bran', '2024-03-31','2019-06-18 10:44:23'),
('6445855962', 'Longos - Chicken Wings', '2024-09-28','2019-06-18 10:44:23'),
('4411010151', 'Olives - Black, Pitted', '2023-01-21','2019-06-18 10:44:23'),
('9353731585', 'Pepper - Chillies, Crushed', '2021-10-16','2019-06-18 10:44:23'),
('0417766122', 'Pepper - White, Whole', '2024-03-26','2019-06-18 10:44:23'),
('7786890416', 'Chicken - Livers', '2020-04-18','2019-06-18 10:44:23'),
('7943122127', 'Ice Cream Bar - Oreo Sandwich', '2025-01-29','2019-06-18 10:44:23'),
('3874207420', 'Nut - Walnut, Chopped', '2023-10-07','2019-06-18 10:44:23'),
('5132562310', 'Cake - Sheet Strawberry', '2020-07-20','2019-06-18 10:44:23'),
('9059959892', 'Mushroom - Chanterelle Frozen', '2021-12-29','2019-06-18 10:44:23'),
('6288686670', 'Salmon - Smoked, Sliced', '2022-04-14','2019-06-18 10:44:23'),
('6536438671', 'Beef - Tenderloin', '2023-11-14','2019-06-18 10:44:23'),
('8896693772', 'Wine - Fat Bastard Merlot', '2023-05-29','2019-06-18 10:44:23'),
('2402332107', 'Figs', '2020-12-07','2019-06-18 10:44:23'),
('3648887270', 'Cocoa Feuilletine', '2026-03-06','2019-06-18 10:44:23'),
('3414443783', 'Wine - German Riesling', '2021-05-06','2019-06-18 10:44:23'),
('0053355512', 'Spaghetti Squash', '2026-05-13','2019-06-18 10:44:23'),
('5959862999', 'Catfish - Fillets', '2020-04-05','2019-06-18 10:44:23'),
('6953705426', 'Tequila - Sauza Silver', '2020-09-16','2019-06-18 10:44:23'),
('4884819411', 'Island Oasis - Wildberry', '2020-07-30','2019-06-18 10:44:23'),
('6110815187', 'Honey - Liquid', '2024-02-05','2019-06-18 10:44:23'),
('4858619788', 'Curry Paste - Madras', '2027-02-13','2019-06-18 10:44:23'),
('3087063851', 'Longos - Greek Salad', '2027-01-27','2019-06-18 10:44:23'),
('1676830707', 'Seaweed Green Sheets', '2020-02-20','2019-06-18 10:44:23'),
('0279094108', 'Flour - Strong', '2020-10-15','2019-06-18 10:44:23'),
('7048175109', 'Bread - 10 Grain', '2019-12-04','2019-06-18 10:44:23'),
('7132618318', 'Appetizer - Spring Roll, Veg', '2021-01-29','2019-06-18 10:44:23'),
('5828537326', 'Cheese - Cheddar, Mild', '2021-09-11','2019-06-18 10:44:23'),
('9907088900', 'Lamb - Racks, Frenched', '2023-04-15','2019-06-18 10:44:23'),
('9256113252', 'Pork - Butt, Boneless', '2026-10-04','2019-06-18 10:44:23'),
('6597774809', 'Blue Curacao - Marie Brizard', '2025-07-12','2019-06-18 10:44:23'),
('5462663056', 'Clams - Canned', '2022-05-30','2019-06-18 10:44:23'),
('8342953033', 'Wine - Chablis J Moreau Et Fils', '2023-10-27','2019-06-18 10:44:23'),
('0740852558', 'Cheese - Grana Padano', '2020-08-17','2019-06-18 10:44:23'),
('7049670154', 'Mushrooms - Honey', '2022-09-02','2019-06-18 10:44:23');

