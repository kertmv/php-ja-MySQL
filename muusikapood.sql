-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muusikapood`
--

-- --------------------------------------------------------

--
-- Table structure for table `arved`
--

CREATE TABLE `arved` (
  `id` int(11) NOT NULL,
  `kliendid_id` int(11) NOT NULL,
  `tooted_id` int(11) NOT NULL,
  `kogus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arved`
--

INSERT INTO `arved` (`id`, `kliendid_id`, `tooted_id`, `kogus`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20),
(21, 21, 21, 21),
(22, 22, 22, 22),
(23, 23, 23, 23),
(24, 24, 24, 24),
(25, 25, 25, 25),
(26, 26, 26, 26),
(27, 27, 27, 27),
(28, 28, 28, 28),
(29, 29, 29, 29),
(30, 30, 30, 30),
(31, 31, 31, 31),
(32, 32, 32, 32),
(33, 33, 33, 33),
(34, 34, 34, 34),
(35, 35, 35, 35),
(36, 36, 36, 36),
(37, 37, 37, 37),
(38, 38, 38, 38),
(39, 39, 39, 39),
(40, 40, 40, 40),
(41, 41, 41, 41),
(42, 42, 42, 42),
(43, 43, 43, 43),
(44, 44, 44, 44),
(45, 45, 45, 45),
(46, 46, 46, 46),
(47, 47, 47, 47),
(48, 48, 48, 48),
(49, 49, 49, 49),
(50, 50, 50, 50),
(51, 51, 51, 51),
(52, 52, 52, 52),
(53, 53, 53, 53),
(54, 54, 54, 54),
(55, 55, 55, 55),
(56, 56, 56, 56),
(57, 57, 57, 57),
(58, 58, 58, 58),
(59, 59, 59, 59),
(60, 60, 60, 60),
(61, 61, 61, 61),
(62, 62, 62, 62),
(63, 63, 63, 63),
(64, 64, 64, 64),
(65, 65, 65, 65),
(66, 66, 66, 66),
(67, 67, 67, 67),
(68, 68, 68, 68),
(69, 69, 69, 69),
(70, 70, 70, 70),
(71, 71, 71, 71),
(72, 72, 72, 72),
(73, 73, 73, 73),
(74, 74, 74, 74),
(75, 75, 75, 75),
(76, 76, 76, 76),
(77, 77, 77, 77),
(78, 78, 78, 78),
(79, 79, 79, 79),
(80, 80, 80, 80),
(81, 81, 81, 81),
(82, 82, 82, 82),
(83, 83, 83, 83),
(84, 84, 84, 84),
(85, 85, 85, 85),
(86, 86, 86, 86),
(87, 87, 87, 87),
(88, 88, 88, 88),
(89, 89, 89, 89),
(90, 90, 90, 90),
(91, 91, 91, 91),
(92, 92, 92, 92),
(93, 93, 93, 93),
(94, 94, 94, 94),
(95, 95, 95, 95),
(96, 96, 96, 96),
(97, 97, 97, 97),
(98, 98, 98, 98),
(99, 99, 99, 99),
(100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `kasutajad`
--

CREATE TABLE `kasutajad` (
  `id` int(11) NOT NULL,
  `kasutaja` varchar(255) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasutajad`
--

INSERT INTO `kasutajad` (`id`, `kasutaja`, `parool`) VALUES
(1, 'admin', '69fb46f4c18463dd25002aeffc0257d1');

-- --------------------------------------------------------

--
-- Table structure for table `kliendid`
--

CREATE TABLE `kliendid` (
  `id` int(11) NOT NULL,
  `eesnimi` varchar(20) NOT NULL,
  `perenimi` varchar(20) NOT NULL,
  `telefoninumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kliendid`
--

INSERT INTO `kliendid` (`id`, `eesnimi`, `perenimi`, `telefoninumber`) VALUES
(1, 'Wilton', 'Madgewick', '17766174'),
(2, 'Olly', 'Lamcken', '55708546'),
(3, 'Jimmie', 'Balchin', '40842851'),
(4, 'Udell', 'Abramino', '12246196'),
(5, 'Travis', 'Cady', '36155526'),
(6, 'Sandro', 'Scourgie', '28364877'),
(7, 'Egbert', 'Redhouse', '47994370'),
(8, 'Gabie', 'Birchall', '56810521'),
(9, 'Vannie', 'Barrowcliff', '45465885'),
(10, 'Cecilio', 'Gert', '48184147'),
(11, 'Fonz', 'Westwater', '23728521'),
(12, 'Sean', 'Pack', '57137684'),
(13, 'Ulberto', 'Rummin', '25364230'),
(14, 'Jorie', 'Chrismas', '37275408'),
(15, 'Catlin', 'Buttrum', '5257181'),
(16, 'Ardelis', 'Bambra', '48700021'),
(17, 'Allis', 'Coomes', '5823585'),
(18, 'Coreen', 'Kopacek', '41103899'),
(19, 'Tiler', 'Bambridge', '62210786'),
(20, 'Karlen', 'Aslott', '62384980'),
(21, 'Ario', 'Mazey', '23914959'),
(22, 'Dieter', 'Standage', '23000181'),
(23, 'Bowie', 'Cokayne', '59342532'),
(24, 'Ruggiero', 'Marquess', '18322362'),
(25, 'Charlton', 'Behn', '6106669'),
(26, 'Asa', 'Crossgrove', '14934846'),
(27, 'Osbourne', 'Delacourt', '57127435'),
(28, 'Renell', 'Barcke', '21673686'),
(29, 'Killian', 'Waren', '50501111'),
(30, 'Kev', 'Shepard', '23889721'),
(31, 'Rinaldo', 'Moohan', '56335749'),
(32, 'Geoffrey', 'Brimelow', '4230604'),
(33, 'Mandy', 'Nevin', '51804539'),
(34, 'Edgardo', 'Pedwell', '21664202'),
(35, 'Audi', 'Ladbury', '55117212'),
(36, 'Tobye', 'Malenoir', '47825414'),
(37, 'Cathe', 'Pruvost', '52891487'),
(38, 'Coralie', 'O\'Hegertie', '22583144'),
(39, 'Avrit', 'Sydney', '37876764'),
(40, 'Matteo', 'Cordobes', '56395594'),
(41, 'Justen', 'Hulls', '18272782'),
(42, 'Patric', 'Dunnion', '36562364'),
(43, 'Jacynth', 'Metzel', '38516788'),
(44, 'Pansy', 'Sheerin', '58406095'),
(45, 'Marlane', 'Lawrinson', '588543'),
(46, 'Rosalynd', 'Slainey', '40765645'),
(47, 'Christoffer', 'Titlow', '62197005'),
(48, 'Vassili', 'Hatzar', '51493739'),
(49, 'Vanda', 'Deniseau', '39922898'),
(50, 'Munmro', 'Bilyard', '9564812'),
(51, 'Upton', 'Rupert', '27584180'),
(52, 'Jackson', 'Riba', '56898607'),
(53, 'Montgomery', 'Mugridge', '41684672'),
(54, 'Danny', 'Surmeir', '9271208'),
(55, 'Cornall', 'McGennis', '22277806'),
(56, 'Roselle', 'Stears', '64381576'),
(57, 'Bryana', 'Bellsham', '58400087'),
(58, 'Deny', 'McMearty', '16822910'),
(59, 'Buffy', 'Smallpeace', '31008725'),
(60, 'Mommy', 'Kluge', '62562482'),
(61, 'Dickie', 'Hazell', '47088018'),
(62, 'Adoree', 'Hazel', '29874110'),
(63, 'Clarice', 'Ungerer', '11211453'),
(64, 'Mersey', 'Mulliss', '52597259'),
(65, 'Beverley', 'Gayne', '29960270'),
(66, 'Fabio', 'Caston', '3315622'),
(67, 'Georgena', 'Jacke', '33534762'),
(68, 'Sherry', 'Worcs', '40611354'),
(69, 'Carie', 'Navarre', '62153752'),
(70, 'Katlin', 'Deverell', '54405233'),
(71, 'Rufus', 'Stivens', '4939816'),
(72, 'Myrle', 'Drever', '30585583'),
(73, 'Deidre', 'Writtle', '34681291'),
(74, 'Nelly', 'Everingham', '37994086'),
(75, 'Rogers', 'Boughey', '14490467'),
(76, 'Noreen', 'MacTrustie', '63016979'),
(77, 'Rolando', 'Thurbon', '62471582'),
(78, 'Ulrikaumeko', 'Collaton', '6570032'),
(79, 'Katey', 'Haselden', '33290284'),
(80, 'Maudie', 'Kellart', '54498028'),
(81, 'Kaitlin', 'Cheson', '28293194'),
(82, 'Vaughan', 'Duberry', '13429474'),
(83, 'Ugo', 'Kytter', '54938841'),
(84, 'Gaby', 'Giacobo', '44351023'),
(85, 'Lindon', 'Stollberger', '14942306'),
(86, 'Rosemonde', 'Gurley', '4081409'),
(87, 'Barb', 'Cases', '15563840'),
(88, 'Kipper', 'O\'Henecan', '37578155'),
(89, 'Page', 'Jotham', '32932286'),
(90, 'Ira', 'Crosskell', '42357852'),
(91, 'Lance', 'Eykel', '7529956'),
(92, 'Hagen', 'Woolsey', '66176987'),
(93, 'Emeline', 'Ibert', '13126044'),
(94, 'Roarke', 'Drever', '7120956'),
(95, 'Olwen', 'Bowes', '54494409'),
(96, 'Elwin', 'Doodson', '21896068'),
(97, 'Dela', 'Farbrace', '39289759'),
(98, 'Christiano', 'Dovidaitis', '65824184'),
(99, 'Griz', 'Kirtland', '36430969'),
(100, 'Andrea', 'January', '15340484');

-- --------------------------------------------------------

--
-- Table structure for table `tooted`
--

CREATE TABLE `tooted` (
  `id` int(7) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tooted`
--

INSERT INTO `tooted` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Marko Eesmaa', 'Jummeli Valtelt', '1999', 20.00),
(2, 'Tasane', 'Pilvede Embuses', '2002', 45.00),
(3, 'Arvo Part', 'Pikksukk', '2005', 20.00),
(4, 'Rambo', 'Taneli Laul', '2006', 17.00),
(5, 'Paradiis', '17', '2007', 17.00),
(6, 'Alphazap', 'Araraquara Airport', '2003', 71.07),
(7, 'Y-find', 'Évreux-Fauville (BA 105) Air Base', '2004', 38.83),
(8, 'Alpha', 'California Redwood Coast-Humboldt County Airport', '2005', 33.07),
(9, 'Cookley', 'Sardar-e-Jangal Airport', '2004', 21.50),
(10, 'Sub-Ex', 'Fleetlands Heliport', '2015', 38.82),
(11, 'Bytecard', 'Ine Airport', '2009', 81.49),
(12, 'Subin', 'Limpopo Valley Airport', '2018', 75.59),
(13, 'Lotstring', 'Paramakatoi Airport', '2016', 86.30),
(14, 'Gembucket', 'Biaru Airport', '2009', 20.23),
(15, 'Konklux', 'Tarauacá Airport', '2004', 63.23),
(16, 'Lotstring', 'Tête-à-la-Baleine Airport', '2010', 96.81),
(17, 'Mat Lam Tam', 'Sulayel Airport', '2022', 63.43),
(18, 'Pannier', 'Buffalo Narrows Airport', '1990', 11.04),
(19, 'Lotlux', 'Capitán Av. Selin Zeitun Lopez Airport', '2023', 41.96),
(20, 'Alpha', 'Capitán FAP Guillermo Concha Iberico International Airport', '2013', 13.55),
(21, 'Tin', 'Galion Municipal Airport', '1996', 51.43),
(22, 'Greenlam', 'Prince Mohammad Bin Abdulaziz Airport', '2010', 82.01),
(23, 'Sonair', 'Kagua Airport', '2020', 43.00),
(24, 'Flowdesk', 'Ensenada International Airport', '2010', 55.42),
(25, 'Sub-Ex', 'Tiputini Airport', '2020', 60.21),
(26, 'Job', 'Corpus Christi International Airport', '2007', 99.97),
(27, 'Span', 'Seronera Airport', '2003', 8.01),
(28, 'Pannier', 'Kimaam Airport', '2006', 70.25),
(29, 'Temp', 'Port Simpson Seaplane Base', '2019', 88.65),
(30, 'Flowdesk', 'Baracoa Airport', '1991', 27.09),
(31, 'Bitchip', 'Weeze Airport', '2012', 14.30),
(32, 'It', 'Katowice International Airport', '1994', 33.53),
(33, 'Ronstring', 'Songea Airport', '1990', 48.03),
(34, 'Pannier', 'Ft Devens Moore Army Air Field', '2008', 65.02),
(35, 'Ronstring', 'Grafton Airport', '2019', 29.90),
(36, 'Domainer', 'Ruse Airport', '2021', 66.28),
(37, 'Latlux', 'Ladouanie Airport', '2004', 56.83),
(38, 'Alpha', 'Dachuan Airport', '1999', 13.45),
(39, 'Stronghold', 'Adi Sumarmo Wiryokusumo Airport', '2018', 36.72),
(40, 'Zaam-Dox', 'Goose Bay Airport', '1998', 97.30),
(41, 'Temp', 'Chinchilla Airport', '1997', 80.78),
(42, 'It', 'Drumduff Airport', '1997', 17.07),
(43, 'Latlux', 'Orlando Executive Airport', '1991', 73.12),
(44, 'Zoolab', 'Rochester International Airport', '1992', 98.50),
(45, 'Latlux', 'West Point Village Seaplane Base', '2014', 47.35),
(46, 'Stringtough', 'Savonlinna Airport', '2013', 15.43),
(47, 'Ventosanzap', 'Cocos (Keeling) Islands Airport', '2003', 93.94),
(48, 'Temp', 'Tobago-Crown Point Airport', '2017', 98.17),
(49, 'Matsoft', 'Iringa Airport', '2023', 25.56),
(50, 'Overhold', 'Metropolitan Airport', '1999', 17.46),
(51, 'Lotlux', 'Tosontsengel Airport', '1995', 93.60),
(52, 'Alpha', 'Fougamou Airport', '1998', 52.61),
(53, 'Otcom', 'Kaya Airport', '2011', 46.93),
(54, 'Cardguard', 'Tuguegarao Airport', '2004', 13.56),
(55, 'Andalax', 'Saint-Nazaire-Montoir Airport', '1991', 9.41),
(56, 'Greenlam', 'Los Angeles International Airport', '2024', 33.13);

-- --------------------------------------------------------

--
-- Table structure for table `uudised`
--

CREATE TABLE `uudised` (
  `id` int(11) NOT NULL,
  `pealkiri` varchar(255) NOT NULL,
  `uudis` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uudised`
--

INSERT INTO `uudised` (`id`, `pealkiri`, `uudis`) VALUES
(1, 'Dasyurus maculatus', 'Laparoscopically assisted vaginal hysterectomy (LAVH)'),
(2, 'Fregata magnificans', 'Other excision of joint, hip'),
(3, 'Cracticus nigroagularis', 'Removal of arteriovenous shunt for renal dialysis'),
(4, 'Tadorna tadorna', 'Open reduction of dislocation of other specified sites'),
(5, 'Ovis musimon', 'Clinical test of hearing'),
(6, 'Nasua nasua', 'Exploratory laparotomy'),
(7, 'Hystrix cristata', 'Refusion of atlas-axis spine'),
(8, 'Equus burchelli', 'Irrigation of pancreatic tube'),
(9, 'Toxostoma curvirostre', 'Removal of other device from genital tract'),
(10, 'Ramphastos tucanus', 'Microscopic examination of specimen from endocrine gland, not elsewhere classified, cell block and Papanicolaou smear'),
(11, 'Naja nivea', 'Other septoplasty'),
(12, 'Bubalornis niger', 'Other tenoplasty of hand'),
(13, 'Francolinus coqui', 'Supportive verbal psychotherapy'),
(14, 'Equus burchelli', 'Removal of intraluminal foreign body from urethra without incision'),
(15, 'Globicephala melas', 'Biopsy of cul-de-sac'),
(16, 'Vanessa indica', 'Laparoscopic oophorotomy'),
(17, 'Uraeginthus granatina', 'Suture of laceration of anus'),
(18, 'Bos taurus', 'Other repair of mesentery'),
(19, 'Francolinus leucoscepus', 'Complete laryngectomy'),
(20, 'Canis dingo', 'Endoscopic excision or destruction of lesion or tissue of stomach'),
(21, 'Nasua narica', 'Refusion of other cervical spine, posterior column, posterior technique'),
(22, 'Phalacrocorax niger', 'Repair of cleft hand'),
(23, 'Lemur fulvus', 'Bone marrow transplant, not otherwise specified'),
(24, 'Felis caracal', 'Excision of lesion of muscle'),
(25, 'Connochaetus taurinus', 'Pharyngeal biopsy'),
(26, 'Paraxerus cepapi', 'Limb shortening procedures, humerus'),
(27, 'Phascogale calura', 'Repair of claw toe'),
(28, 'Castor fiber', 'Other skeletal traction'),
(29, 'Manouria emys', 'Suture of capsule or ligament of upper extremity'),
(30, 'Bassariscus astutus', 'Extraction of fat for graft or banking'),
(31, 'Sciurus vulgaris', 'Microscopic examination of specimen from operative wound, other microscopic examination'),
(32, 'Casmerodius albus', 'Microscopic examination of peritoneal and retroperitoneal specimen, culture'),
(33, 'Paroaria gularis', 'Replacement of stent (tube) in biliary or pancreatic duct'),
(34, 'Macaca mulatta', 'Clinical vestibular function tests'),
(35, 'Eumetopias jubatus', 'Dilation and curettage for termination of pregnancy'),
(36, 'Suricata suricatta', 'Other excision of joint, elbow'),
(37, 'Psophia viridis', 'Diagnostic aspiration of vitreous'),
(38, 'Sceloporus magister', 'Reanastomosis of urethra'),
(39, 'Corvus albus', 'Atrial cardioversion'),
(40, 'Martes americana', 'Arthroscopy, unspecified site'),
(41, 'Francolinus swainsonii', 'Removal of surgically implanted material from posterior segment of eye'),
(42, 'Anthropoides paradisea', 'Reduction of facial fracture, not otherwise specified'),
(43, 'Tayassu tajacu', 'Revision of anastomosis of large intestine'),
(44, 'Scolopax minor', 'Suture of cranial and peripheral nerves'),
(45, 'Dusicyon thous', 'Other stapedectomy'),
(46, 'Crocodylus niloticus', 'Excision of accessory spleen'),
(47, 'Lamprotornis chalybaeus', 'Root canal therapy with irrigation'),
(48, 'Spermophilus parryii', 'Revision of hip replacement, femoral component'),
(49, 'Varanus sp.', 'Application of external fixator device, humerus'),
(50, 'Connochaetus taurinus', 'Dilation of urethra'),
(51, 'Snycerus caffer', 'Repair of brain'),
(52, 'Otaria flavescens', 'Endoscopic dilation of ampulla and biliary duct'),
(53, 'Nesomimus trifasciatus', 'Other contrast bronchogram'),
(54, 'Bucephala clangula', 'Replacement of vaginal or vulvar packing or drain'),
(55, 'Streptopelia senegalensis', 'Vaginal suspension and fixation'),
(56, 'Sarcophilus harrisii', 'Arthrotomy for removal of prosthesis without replacement, hip'),
(57, 'Tursiops truncatus', 'X-ray of gravid uterus'),
(58, 'Nasua nasua', 'Local excision of other lesion or tissue of esophagus'),
(59, 'Neophoca cinerea', 'Reconstruction of eyelid with skin flap or graft'),
(60, 'Ceratotherium simum', 'Repair of blepharoptosis by frontalis muscle technique with suture'),
(61, 'Nyctea scandiaca', 'Sequestrectomy, carpals and metacarpals'),
(62, 'Anas bahamensis', 'Infusion of immunosuppressive antibody therapy'),
(63, 'Melanerpes erythrocephalus', 'Stapes mobilization'),
(64, 'Stercorarius longicausus', 'Excision of other lesion of soft tissue of hand'),
(65, 'Eudyptula minor', 'Release of tarsal tunnel'),
(66, 'Cebus albifrons', 'Control of hemorrhage, not otherwise specified'),
(67, 'Acridotheres tristis', 'Microscopic examination of specimen from liver, biliary tract, and pancreas, culture'),
(68, 'Leipoa ocellata', 'Sequestrectomy, carpals and metacarpals'),
(69, 'Oxybelis sp.', 'Rhinoscopy'),
(70, 'Plectopterus gambensis', 'Revision of facet replacement device(s)'),
(71, 'Speothos vanaticus', 'Limb lengthening procedures, carpals and metacarpals'),
(72, 'Melophus lathami', 'Diathermy'),
(73, 'Aegypius occipitalis', 'Other partial ostectomy, unspecified site'),
(74, 'Marmota caligata', 'Insertion or replacement of non-inflatable penile prosthesis'),
(75, 'Camelus dromedarius', 'Routine chest x-ray, so described'),
(76, 'Alopex lagopus', 'Insertion of other vaginal pessary'),
(77, 'Felis silvestris lybica', 'Renal autotransplantation'),
(78, 'Ardea golieth', 'Arthroscopy, foot and toe'),
(79, 'Pelecanus occidentalis', 'Excision of lingual thyroid'),
(80, 'Coendou prehensilis', 'Microscopic examination of specimen from trachea, bronchus, pleura, lung, and other thoracic specimen, and of sputum, bacterial smear'),
(81, 'Bison bison', 'Other destruction of chorioretinal lesion'),
(82, 'Tetracerus quadricornis', 'Microscopic examination of specimen from operative wound, cell block and Papanicolaou smear'),
(83, 'Canis aureus', 'Other operations on pancreas'),
(84, 'Eubalaena australis', 'Partial ostectomy of other facial bone'),
(85, 'Cacatua tenuirostris', 'Bilateral repair of femoral hernia with graft or prosthesis'),
(86, 'Streptopelia senegalensis', 'Aortocoronary bypass for heart revascularization, not otherwise specified'),
(87, 'Tachybaptus ruficollis', 'Open and other left hemicolectomy'),
(88, 'Parus atricapillus', 'Small-to-small intestinal anastomosis'),
(89, 'Tiliqua scincoides', 'Bilateral extended radical mastectomy'),
(90, 'Plegadis ridgwayi', 'Unspecified operation on bone injury, carpals and metacarpals'),
(91, 'Terathopius ecaudatus', 'Immediate postpartum manual replacement of inverted uterus'),
(92, 'Merops nubicus', 'Laparoscopic lysis of perirenal or periureteral adhesions'),
(93, 'Eremophila alpestris', 'Whirlpool treatment'),
(94, 'Sceloporus magister', 'Repair of laceration involving lid margin, full-thickness'),
(95, 'Microcebus murinus', 'Closure of other fistula of urethra'),
(96, 'Speotyte cuniculata', 'Mechanical phacofragmentation and aspiration of cataract by posterior route'),
(97, 'Damaliscus lunatus', 'Resection of vessel with anastomosis, unspecified site'),
(98, 'Dendrocygna viduata', 'Paracervical uterine denervation'),
(99, 'Alcelaphus buselaphus caama', 'Other diagnostic procedures on eyelid'),
(100, 'Dasyurus maculatus', 'Upper limb amputation, not otherwise specified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arved`
--
ALTER TABLE `arved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasutajad`
--
ALTER TABLE `kasutajad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kliendid`
--
ALTER TABLE `kliendid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tooted`
--
ALTER TABLE `tooted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uudised`
--
ALTER TABLE `uudised`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arved`
--
ALTER TABLE `arved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `kasutajad`
--
ALTER TABLE `kasutajad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kliendid`
--
ALTER TABLE `kliendid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tooted`
--
ALTER TABLE `tooted`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `uudised`
--
ALTER TABLE `uudised`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
