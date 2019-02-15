-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2019 at 12:53 PM
-- Server version: 5.7.25-0ubuntu0.18.10.2
-- PHP Version: 7.2.15-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add city', 7, 'add_city'),
(20, 'Can change city', 7, 'change_city'),
(21, 'Can delete city', 7, 'delete_city'),
(22, 'Can add country', 8, 'add_country'),
(23, 'Can change country', 8, 'change_country'),
(24, 'Can delete country', 8, 'delete_country'),
(25, 'Can add location', 9, 'add_location'),
(26, 'Can change location', 9, 'change_location'),
(27, 'Can delete location', 9, 'delete_location'),
(28, 'Can add hotel', 10, 'add_hotel'),
(29, 'Can change hotel', 10, 'change_hotel'),
(30, 'Can delete hotel', 10, 'delete_hotel'),
(31, 'Can add user', 11, 'add_user'),
(32, 'Can change user', 11, 'change_user'),
(33, 'Can delete user', 11, 'delete_user'),
(34, 'Can add hotel reservation request', 12, 'add_hotelreservationrequest'),
(35, 'Can change hotel reservation request', 12, 'change_hotelreservationrequest'),
(36, 'Can delete hotel reservation request', 12, 'delete_hotelreservationrequest'),
(37, 'Can add user experience', 13, 'add_userexperience'),
(38, 'Can change user experience', 13, 'change_userexperience'),
(39, 'Can delete user experience', 13, 'delete_userexperience'),
(40, 'Can add comments', 14, 'add_comments'),
(41, 'Can change comments', 14, 'change_comments'),
(42, 'Can delete comments', 14, 'delete_comments'),
(43, 'Can add car rental requests', 15, 'add_carrentalrequests'),
(44, 'Can change car rental requests', 15, 'change_carrentalrequests'),
(45, 'Can delete car rental requests', 15, 'delete_carrentalrequests');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car_rental_carrentalrequests`
--

CREATE TABLE `car_rental_carrentalrequests` (
  `id` int(11) NOT NULL,
  `requested_time` datetime(6) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `pick_up_point_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments_and_experiences_comments`
--

CREATE TABLE `comments_and_experiences_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `experience_id_id` int(11) NOT NULL,
  `user_commented_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments_and_experiences_userexperience`
--

CREATE TABLE `comments_and_experiences_userexperience` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `city_id_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries_city`
--

CREATE TABLE `countries_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `city_rate` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `city_country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_city`
--

INSERT INTO `countries_city` (`id`, `city_name`, `city_rate`, `img`, `city_country_id`) VALUES
(1, 'Cairo', 4, 'cairo1.jpg', 1),
(2, 'Alexandria', 5, 'alex1.jpg', 1),
(3, 'Aswan', 5, 'aswan1.jpg', 1),
(4, 'Suhag', 3, 'suhag1.jpg', 1),
(5, 'Luxor', 5, 'luxor1.jpg', 1),
(6, 'Ismailia', 3, 'ismailia1.jpg', 1),
(7, 'Paris', 5, 'paris1.jpg', 2),
(8, 'Lyon', 4, 'lyon1.jpg', 2),
(9, 'Marseille', 3, 'marseille1.jpg', 2),
(10, 'Lille', 3, 'lille1.jpg', 2),
(11, 'Nice', 3, 'nice1.jpg', 2),
(12, 'Strasbourg', 3, 'strasbourg1.jpg', 2),
(13, 'Berlin', 4, 'berlin1.jpg', 3),
(14, 'Stuttgart', 3, 'stuttgart1.jpg', 3),
(15, 'Frankfurt', 3, 'frankfurt1.jpg', 3),
(16, 'Hamburg', 4, 'hamburg1.jpg', 3),
(17, 'Marienberg', 2, 'marienberg1.jpg', 3),
(18, 'Bermen', 2, 'bermen1.jpg', 3),
(19, 'Sydney', 4, 'sydney1.jpg', 4),
(20, 'South_Melbourne', 3, 'southmelbourne1.jpg', 4),
(21, 'Brisbane', 3, 'brisbane1.jpg', 4),
(22, 'Perth', 3, 'perth1.jpg', 4),
(23, 'Adelaide', 2, 'adelaide1.jpg', 4),
(24, 'NewCastle', 2, 'newcastel1.jpg', 4),
(25, 'Shanghai', 3, 'shanghai1.jpg', 5),
(26, 'Beijing', 2, 'beijing1.jpg', 5),
(27, 'Guangzhou', 2, 'guangzhou1.jpg', 5),
(28, 'Shenzhen', 2, 'shenzhen1.jpg', 5),
(29, 'Wuhan', 2, 'wuhan1.jpg', 5),
(30, 'Tianjin', 2, 'tianjin1.jpg', 5),
(31, 'Istanbul', 5, 'istanbul1.jpg', 6),
(32, 'Ankara', 4, 'ankara1.jpg', 6),
(33, 'Izmir', 3, 'izmir1.jpg', 6),
(34, 'Bursa', 2, 'bursa1.jpg', 6),
(35, 'Adana', 2, 'adana1.jpg', 6),
(36, 'Gaziantep', 2, 'gaziantep1.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `countries_country`
--

CREATE TABLE `countries_country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_rate` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_country`
--

INSERT INTO `countries_country` (`id`, `country_name`, `country_rate`, `img`) VALUES
(1, 'Egypt', 4, 'egypt1.jpg'),
(2, 'France', 5, 'france1.jpg'),
(3, 'German', 3, 'german1.jpg'),
(4, 'Australia', 3, 'australia1.jpg'),
(5, 'China', 2, 'china1.jpg'),
(6, 'Turkey', 4, 'turkey1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `countries_hotel`
--

CREATE TABLE `countries_hotel` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `hotel_city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_hotel`
--

INSERT INTO `countries_hotel` (`id`, `hotel_name`, `hotel_city_id`) VALUES
(1, '1920s_Boutique_Hotel&Restaurants', 1),
(2, 'The_Westin_Cairo_Golf_Resort&Spa_Katameya_Dunes', 1),
(3, 'Safir_Hotel_Cairo', 1),
(4, 'Pyramisa_Suites_Hotel_Cairo', 1),
(5, 'Sheraton_Montazah_Hotel', 2),
(6, 'Hilton_Alexandria_Corniche', 2),
(7, 'Romance_Hotel_Alexandria', 2),
(8, 'Raml_Station_Club&Hotel_For_Armed_Forces', 2),
(9, 'Movenpick_Resort_Aswan', 3),
(10, 'Marhaba_Aswan_Hotel', 3),
(11, 'Keylany_Hotel', 3),
(12, 'Happi_Hotel', 3),
(13, 'ElSafa_Hotel', 4),
(14, 'Hotel_Boat_Sohag', 4),
(15, 'Andalus_Hotel', 4),
(16, 'Reem_Hotel', 4),
(17, 'Steigenberger_Nile_Palace_Luxor', 5),
(18, 'Hotel_Sofitel_Winter_Palace_Luxor', 5),
(19, 'Sonesta_St.George_Hotel_Luxor', 5),
(20, 'Hotel_Sofitel_Winter_Palace_Luxor', 5),
(21, 'Mercure_Ismailia_Forsan_land', 6),
(22, 'TOLIP_Elforsan_Resort', 6),
(23, 'Tolip_Alforsan_Island_Hotel_And_Spa', 6),
(24, 'Grand_Hotel_Ismailia', 6),
(25, 'Holiday_Inn_Paris _Gare_de_l\'Est', 7),
(26, 'Hotel_Mercure_Paris_Centre_Tour_Eiffel', 7),
(27, 'Hotel_Gustave', 7),
(28, 'Hotel_Paris_Lafayette ', 7),
(29, 'Radisson_Blu_Hotel', 8),
(30, 'Okko_Hotels_Lyon_Pont_Lafayette', 8),
(31, 'Hotel_ibis_Lyon_Centre_Perrache', 8),
(32, 'Hotel_ibis_Budget_Lyon_Gerland', 8),
(33, 'Mercure_Marseille_Centre_Vieux_Port_Hotel', 9),
(34, 'Radisson_Blu_Hotel_Marseille_Vieux_Port', 9),
(35, 'InterContinental_Marseille_Hotel_Dieu', 9),
(36, 'Hotel_Novotel_Marseille_Vieux_Port', 9),
(37, 'Hôtel_Barrière_de_Lille', 10),
(38, 'Eklo_Hotels_Lille', 10),
(39, 'Hôtel_Lille_Europe _Euralille', 10),
(40, 'Hotel_Novotel_Lille_Centre_Gares', 10),
(41, 'Radisson_Blu_Hotel_Nice', 11),
(42, 'Westminster_Hotel&Spa_Nice', 11),
(43, 'Hyatt_Regency_Nice_Palais_de_la_Méditerranée', 11),
(44, 'Hôtel_Vendome', 11),
(45, 'Clarion_Inn_Strasburg-Lancaster', 12),
(46, 'Eden_Resort&Suites', 12),
(47, 'La_Quinta_Inn&Suites_Lancaster', 12),
(48, 'SANA_Berlin_Hotel', 13),
(49, 'Hotel_Berlin_Berlin', 13),
(50, 'Park_Inn_by_Radisson_Berlin_Alexanderplatz ', 13),
(51, 'H4_Hotel_Berlin_Alexanderplatz', 13),
(52, 'Park_Inn_by_Radisson_Stuttgart', 14),
(53, 'Wyndham_Stuttgart_Airport_Messe', 14),
(54, 'arcona_MO.HOTEL_Stuttgart', 14),
(55, 'Mercure_Hotel_Stuttgart_Airport_Messe', 14),
(56, 'Radisson_Blu_Hotel_Frankfurt', 15),
(57, 'Frankfurt_Marriott_Hotel', 15),
(58, 'Leonardo_Royal_Hotel_Frankfurt', 15),
(59, 'The_Westin_Grand_Frankfurt', 15),
(60, 'Leonardo_Hotel_Hamburg_City_Nord', 16),
(61, 'Radisson_Blu_Hotel_Hamburg', 16),
(62, 'Steigenberger_Hotel_Treudelberg_Hamburg', 16),
(63, 'Hotel_Hafen_Hamburg', 16),
(64, 'pentahotel_Chemnitz', 17),
(65, 'Hotel_Weißes_Roß_Marienberg', 17),
(66, 'Hotel_Boží_Dar_Excalibur', 17),
(67, 'Gewölberestaurant_Roßtunnel_Marienberg', 17),
(68, 'Maritim_Hotel_Bremen', 18),
(69, 'Radisson_Blu_Hotel_Bremen', 18),
(70, 'Swissôtel_Bremen', 18),
(71, 'INNSIDE_Bremen', 18),
(72, 'QT_Sydney', 19),
(73, 'Mercure_Sydney', 19),
(74, 'Radisson_Blu_Plaza_Hotel_Sydney', 19),
(75, 'Novotel_Sydney_on_Darling_Harbour', 19),
(76, 'Imagine_Marco', 20),
(77, 'City_Park_Hotel', 20),
(78, 'Melbourne_City_Backpackers', 20),
(79, 'Pullman_Melbourne_On_The_Park', 20),
(80, 'Hilton_Brisbane', 21),
(81, 'Brisbane_Marriott_Hotel', 21),
(82, 'Pacific_Hotel_Brisbane', 21),
(83, 'Hotel_Grand_Chancellor_Brisbane', 21),
(84, 'Parmelia_Hilton_Perth', 22),
(85, 'Mercure_Perth', 22),
(86, 'Duxton_Hotel_Perth', 22),
(87, 'Crown_Promenade_Perth', 22),
(88, 'Hilton_Adelaide', 23),
(89, 'Stamford_Plaza_Adelaide', 23),
(90, 'InterContinental_Adelaide', 23),
(91, 'Pullman_Adelaide', 23),
(92, 'Staybridge_Suites_Newcastle', 24),
(93, 'Maldron_Hotel_Newcastle', 24),
(94, 'Sandman_Signature_Newcastle_Hotel', 24),
(95, 'Copthorne_Hotel_Newcastle', 24),
(96, 'New_World_Shanghai_Hotel', 25),
(97, 'Shanghai_Marriott_Hotel_City_Centre', 25),
(98, 'Dorsett_Shanghai', 25),
(99, 'Sheraton_Shanghai_Pudong_Hotel  ', 25),
(100, 'Fairmont_Beijing_Hotel', 26),
(101, 'Rosewood_Beijing', 26),
(102, 'Crowne_Plaza_Beijing_Chaoyang_U-Town', 26),
(103, 'Crowne_Plaza_Beijing_Wangfujing', 26),
(104, 'Sheraton_Guangzhou_Hotel', 27),
(105, 'Hilton_Guangzhou_Tianhe', 27),
(106, 'Asia_International_Hotel', 27),
(107, 'Mandarin_Hotel_Guangzhou', 27),
(108, 'Best_Western_Shenzhen_Felicity_Hotel', 28),
(109, 'Hard_Rock_Hotel_Shenzhen', 28),
(110, 'Four_Seasons_Hotel_Shenzhen', 28),
(111, 'Hilton_Shenzhen_Shekou_Nanhai', 28),
(112, 'Dorsett_Wuhan', 29),
(113, 'Renaissance_Wuhan_Hotel', 29),
(114, 'Sheraton_Wuhan_Hankou_Hotel', 29),
(115, 'Ramada_Plaza_Tian_Lu_Hotel_Wuhan', 29),
(116, 'The_Ritz-Carlton_Tianjin', 30),
(117, 'Crowne_Plaza_Tianjin_Binhai', 30),
(118, 'Shangri-La_Hotel_Tianjin', 30),
(119, 'Hyatt_Regency_Tianjin_East', 30),
(120, 'Radisson_Blu_Hotel_Istanbul_Sisli', 31),
(121, 'W_Istanbul', 31),
(122, 'Hilton_Istanbul_Bosphorus', 31),
(123, 'Four_Seasons_Hotel_Istanbul_At_Sultanahmet', 31),
(124, 'Radisson_Blu_Hotel_Ankara', 32),
(125, 'Sheraton_Ankara_Hotel&Convention_Center', 32),
(126, 'Ankara_HiltonSA', 32),
(127, 'Bera_Ankara', 32),
(128, 'Hilton_Izmir', 33),
(129, 'Renaissance_Izmir_Hotel', 33),
(130, 'Four_Points_by_Sheraton_Izmir', 33),
(131, 'Mövenpick_Hotel_Izmir', 33),
(132, 'Mercure_Bursa_Hotel', 34),
(133, 'Aloft_Bursa_Hotel', 34),
(134, 'Sheraton_Bursa_Hotel', 34),
(135, 'Crowne_Plaza_Bursa', 34),
(136, 'Sheraton_Grand_Adana', 35),
(137, 'Divan_Adana', 35),
(138, 'Sürmeli_Adana_Hotel', 35),
(139, ' Sirin_Park_Hotel', 35),
(140, 'Hampton_by_Hilton_Gaziantep', 36),
(141, 'Hotel_ibis_Gaziantep', 36),
(142, 'Hotel_Novotel_Gaziantep', 36),
(143, 'Holiday_Inn_Gaziantep_Sehitkamil', 36);

-- --------------------------------------------------------

--
-- Table structure for table `countries_location`
--

CREATE TABLE `countries_location` (
  `id` int(11) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `location_city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_location`
--

INSERT INTO `countries_location` (`id`, `location_name`, `img`, `location_city_id`) VALUES
(1, 'Pyramids_of_Giza', NULL, 1),
(2, 'Egyptian_Museum', NULL, 1),
(3, 'Al_Azhar_Mosque', NULL, 1),
(4, 'Old_Cairo', NULL, 1),
(5, 'Khan_el_Khalili ', NULL, 1),
(6, 'The_Citadel', NULL, 1),
(7, 'Bibliotheca_Alexandrina', NULL, 2),
(8, 'Alexandria_National_Museum', NULL, 2),
(9, 'Qaitbey', NULL, 2),
(10, 'Montazah', NULL, 2),
(11, 'Elephantine_Island', NULL, 3),
(12, 'Nubia_Museum', NULL, 3),
(13, 'Philae_Temple', NULL, 3),
(14, 'Aswan_High_Dam', NULL, 3),
(15, 'Abydos', NULL, 4),
(16, 'Temple_of_Rameses_II', NULL, 4),
(17, 'The_Red_Monastery', NULL, 4),
(18, 'Temple_of_Karnak', NULL, 5),
(19, 'Valley_of_the_Kings', NULL, 5),
(20, 'Luxor_Temple', NULL, 5),
(21, 'Valley_of_the_Queens', NULL, 5),
(22, 'Ismailia_Museum', NULL, 6),
(23, 'De_Lesseps’s_House', NULL, 6),
(24, 'Eiffel_Tower', NULL, 7),
(25, 'Jardin_des_Tuileries', NULL, 7),
(26, 'Palais_Garnier', NULL, 7),
(27, 'Musée_des_Beaux_Arts', NULL, 8),
(28, 'Quartier_Saint_Jean&Quartier_Saint_Georges', NULL, 8),
(29, 'Musée_de_la_Civilisation_Gallo_Romaine', NULL, 8),
(30, ' Basilique_Notre_Dame_de_la_Garde', NULL, 9),
(31, 'Vieux_Port', NULL, 9),
(32, 'Le_Panier', NULL, 9),
(33, 'Place_du_Général_de_Gaulle', NULL, 10),
(34, 'Palais_Beaux_Arts', NULL, 10),
(35, 'Musée_Louvre_Lens', NULL, 10),
(36, 'Vieille_Ville', NULL, 11),
(37, 'Promenade_des_Anglais', NULL, 11),
(38, 'Musée_Matisse', NULL, 11),
(39, ' Cathédrale_Notre_Dame_de_Strasbourg', NULL, 12),
(40, 'Quartier_des_Tanneurs', NULL, 12),
(41, 'Maison_Kammerzell', NULL, 12),
(42, 'Reichstag', NULL, 13),
(43, 'Brandenburg_Gate', NULL, 13),
(44, 'Berlin_Television_Tower', NULL, 13),
(45, 'Gendarmenmarkt', NULL, 13),
(46, 'Berlin_Cathedral', NULL, 13),
(47, 'Staatsgalerie_Stuttgart', NULL, 14),
(48, 'Neues_Schloss&Altes_Schloss', NULL, 14),
(49, ' The_Sepulchral_Chapel_on_Württemberg_Hill', NULL, 14),
(50, 'The_Römerberg', NULL, 15),
(51, 'The_Museum_District', NULL, 15),
(52, 'The_Palm_Garden', NULL, 15),
(53, 'Senckenberg_Natural_History_Museum', NULL, 15),
(54, 'The_Port_of_Hamburg', NULL, 16),
(55, 'Miniatur_Wunderland', NULL, 16),
(56, 'Kunsthalle_Hamburg', NULL, 16),
(57, 'St. Michael\'s_Church', NULL, 16),
(58, 'Schwarzwassertal', NULL, 17),
(59, 'St.Annenkirche', NULL, 17),
(60, 'Schloss_Wolkenstein', NULL, 17),
(61, 'Marktplatz_and_Bremen_Roland', NULL, 18),
(62, 'Bremen_Town_Hall', NULL, 18),
(63, 'The_Schnoor_Quarter', NULL, 18),
(64, 'The Cathedral_of_St._Peter', NULL, 18),
(65, 'Sydney_Opera_House', NULL, 19),
(66, 'Sydney_Harbour_Bridge', NULL, 19),
(67, 'The_Rocks', NULL, 19),
(68, 'The_Royal_Botanic_Garden_Sydney', NULL, 19),
(69, 'Royal_Botanic_Gardens', NULL, 20),
(70, 'NGV_International', NULL, 20),
(71, 'Melbourne_Museum', NULL, 20),
(72, 'The_Cultural_Precinct', NULL, 21),
(73, 'Brisbane_Botanic_Gardens_Mount_Coot_tha', NULL, 21),
(74, 'Queen_Street_Mall', NULL, 21),
(75, 'Kings_Park&Botanic_Garden', NULL, 22),
(76, 'Swan_River', NULL, 22),
(77, 'The_Perth_Mint', NULL, 22),
(78, 'North_Terrace', NULL, 23),
(79, 'Adelaide_Botanic_Garden', NULL, 23),
(80, 'Art_Gallery_of_South_Australia', NULL, 23),
(81, 'The_Tyne_Bridges', NULL, 24),
(82, 'Historic_Quayside', NULL, 24),
(83, 'Newcastle_Castle', NULL, 24),
(84, 'St.Nicholas_Cathedral', NULL, 24),
(85, 'Shanghai\'s_Promenade', NULL, 25),
(86, 'Yu_Garden', NULL, 25),
(87, 'The_Jade_Buddha_Temple', NULL, 25),
(88, 'The_Shanghai_Museum', NULL, 25),
(89, 'The_Imperial_Palace&the_Forbidden_City', NULL, 26),
(90, 'The_Great_Wall_of_China', NULL, 26),
(91, 'Tiananmen_Square', NULL, 26),
(92, 'Beihai_Park', NULL, 26),
(93, 'Chen_Clan_Ancestral_Hall', NULL, 27),
(94, 'Mausoleum_of_the_Nányuè_King', NULL, 27),
(95, 'Yúyìn_Mountain_Villa', NULL, 27),
(96, 'Oil_Painting_Village', NULL, 28),
(97, 'Window_of_the_World', NULL, 28),
(98, 'Sunrise_Art_Center', NULL, 28),
(99, 'Yellow_Crane_Tower', NULL, 29),
(100, 'Hubei_Provincial_Museum', NULL, 29),
(101, 'Changchun_Temple', NULL, 29),
(102, 'Shi_Courtyard', NULL, 30),
(103, 'Mt.Panshan', NULL, 30),
(104, 'Eastern_Qing_Tombs', NULL, 30),
(105, 'Aya_Sofya', NULL, 31),
(106, 'Topkapi_Palace', NULL, 31),
(107, 'Blue_Mosque', NULL, 31),
(108, 'Basilica_Cistern', NULL, 31),
(109, 'Citadel', NULL, 32),
(110, 'Anit_Kabir', NULL, 32),
(111, 'Ethnography_Museum', NULL, 32),
(112, 'Izmir_Museum_of_History&Art', NULL, 33),
(113, 'KemeraltI_Market', NULL, 33),
(114, 'Agora', NULL, 33),
(115, 'Green_Mosque', NULL, 34),
(116, 'City_Center', NULL, 34),
(117, 'Citadel', NULL, 34),
(118, 'Adana_Merkez_Camii', NULL, 35),
(119, 'Varda(Alman)Koprusu', NULL, 35),
(120, 'Tas_Kopru', NULL, 35),
(121, 'Zeugma_Mozaik_Muzesi', NULL, 36),
(122, 'Rumkale', NULL, 36),
(123, 'Gaziantep_Castle', NULL, 36);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(15, 'car_rental', 'carrentalrequests'),
(14, 'comments_and_experiences', 'comments'),
(13, 'comments_and_experiences', 'userexperience'),
(5, 'contenttypes', 'contenttype'),
(7, 'countries', 'city'),
(8, 'countries', 'country'),
(10, 'countries', 'hotel'),
(9, 'countries', 'location'),
(12, 'hotel_reservation', 'hotelreservationrequest'),
(6, 'sessions', 'session'),
(11, 'user_profile', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-12 18:00:24.643932'),
(2, 'auth', '0001_initial', '2019-02-12 18:00:33.248589'),
(3, 'admin', '0001_initial', '2019-02-12 18:00:35.260020'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-12 18:00:35.397226'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-02-12 18:00:36.593900'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-02-12 18:00:36.707494'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-02-12 18:00:36.830632'),
(8, 'auth', '0004_alter_user_username_opts', '2019-02-12 18:00:36.879676'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-02-12 18:00:37.780049'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-02-12 18:00:37.815315'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-02-12 18:00:37.860774'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-02-12 18:00:37.984351'),
(13, 'countries', '0001_initial', '2019-02-12 18:00:40.671154'),
(14, 'sessions', '0001_initial', '2019-02-12 18:00:41.266173'),
(15, 'countries', '0002_hotel', '2019-02-12 18:09:09.164473'),
(16, 'car_rental', '0001_initial', '2019-02-13 15:26:02.994587'),
(17, 'user_profile', '0001_initial', '2019-02-13 15:26:03.337329'),
(18, 'comments_and_experiences', '0001_initial', '2019-02-13 15:26:07.962839'),
(19, 'hotel_reservation', '0001_initial', '2019-02-13 15:26:09.115843');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_reservation_hotelreservationrequest`
--

CREATE TABLE `hotel_reservation_hotelreservationrequest` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `no_of_adults` int(11) NOT NULL,
  `requested_hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_user`
--

CREATE TABLE `user_profile_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_user`
--

INSERT INTO `user_profile_user` (`id`, `user_name`, `name`, `password`, `is_admin`, `status`) VALUES
(1, 'nada', 'nada', '1234567', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `car_rental_carrentalrequests`
--
ALTER TABLE `car_rental_carrentalrequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_rental_carrental_destination_id_2afc5d0a_fk_countries` (`destination_id`),
  ADD KEY `car_rental_carrental_pick_up_point_id_fab41c15_fk_countries` (`pick_up_point_id`);

--
-- Indexes for table `comments_and_experiences_comments`
--
ALTER TABLE `comments_and_experiences_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_and_experie_experience_id_id_7e343278_fk_comments_` (`experience_id_id`),
  ADD KEY `comments_and_experie_user_commented_id_90f94d31_fk_user_prof` (`user_commented_id`);

--
-- Indexes for table `comments_and_experiences_userexperience`
--
ALTER TABLE `comments_and_experiences_userexperience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_and_experie_city_id_id_065d05c1_fk_countries` (`city_id_id`),
  ADD KEY `comments_and_experie_writer_id_c0322eb5_fk_user_prof` (`writer_id`);

--
-- Indexes for table `countries_city`
--
ALTER TABLE `countries_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_city_city_country_id_49020bf1_fk_countries_country_id` (`city_country_id`);

--
-- Indexes for table `countries_country`
--
ALTER TABLE `countries_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_hotel`
--
ALTER TABLE `countries_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_hotel_hotel_city_id_993d5861_fk_countries_city_id` (`hotel_city_id`);

--
-- Indexes for table `countries_location`
--
ALTER TABLE `countries_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_location_location_city_id_cd0abe33_fk_countries` (`location_city_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hotel_reservation_hotelreservationrequest`
--
ALTER TABLE `hotel_reservation_hotelreservationrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_reservation_ho_requested_hotel_id_4680a693_fk_countries` (`requested_hotel_id`);

--
-- Indexes for table `user_profile_user`
--
ALTER TABLE `user_profile_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `car_rental_carrentalrequests`
--
ALTER TABLE `car_rental_carrentalrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments_and_experiences_comments`
--
ALTER TABLE `comments_and_experiences_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments_and_experiences_userexperience`
--
ALTER TABLE `comments_and_experiences_userexperience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries_city`
--
ALTER TABLE `countries_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `countries_country`
--
ALTER TABLE `countries_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `countries_hotel`
--
ALTER TABLE `countries_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `countries_location`
--
ALTER TABLE `countries_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `hotel_reservation_hotelreservationrequest`
--
ALTER TABLE `hotel_reservation_hotelreservationrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_profile_user`
--
ALTER TABLE `user_profile_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `car_rental_carrentalrequests`
--
ALTER TABLE `car_rental_carrentalrequests`
  ADD CONSTRAINT `car_rental_carrental_destination_id_2afc5d0a_fk_countries` FOREIGN KEY (`destination_id`) REFERENCES `countries_location` (`id`),
  ADD CONSTRAINT `car_rental_carrental_pick_up_point_id_fab41c15_fk_countries` FOREIGN KEY (`pick_up_point_id`) REFERENCES `countries_location` (`id`);

--
-- Constraints for table `comments_and_experiences_comments`
--
ALTER TABLE `comments_and_experiences_comments`
  ADD CONSTRAINT `comments_and_experie_experience_id_id_7e343278_fk_comments_` FOREIGN KEY (`experience_id_id`) REFERENCES `comments_and_experiences_userexperience` (`id`),
  ADD CONSTRAINT `comments_and_experie_user_commented_id_90f94d31_fk_user_prof` FOREIGN KEY (`user_commented_id`) REFERENCES `user_profile_user` (`id`);

--
-- Constraints for table `comments_and_experiences_userexperience`
--
ALTER TABLE `comments_and_experiences_userexperience`
  ADD CONSTRAINT `comments_and_experie_city_id_id_065d05c1_fk_countries` FOREIGN KEY (`city_id_id`) REFERENCES `countries_city` (`id`),
  ADD CONSTRAINT `comments_and_experie_writer_id_c0322eb5_fk_user_prof` FOREIGN KEY (`writer_id`) REFERENCES `user_profile_user` (`id`);

--
-- Constraints for table `countries_city`
--
ALTER TABLE `countries_city`
  ADD CONSTRAINT `countries_city_city_country_id_49020bf1_fk_countries_country_id` FOREIGN KEY (`city_country_id`) REFERENCES `countries_country` (`id`);

--
-- Constraints for table `countries_hotel`
--
ALTER TABLE `countries_hotel`
  ADD CONSTRAINT `countries_hotel_hotel_city_id_993d5861_fk_countries_city_id` FOREIGN KEY (`hotel_city_id`) REFERENCES `countries_city` (`id`);

--
-- Constraints for table `countries_location`
--
ALTER TABLE `countries_location`
  ADD CONSTRAINT `countries_location_location_city_id_cd0abe33_fk_countries` FOREIGN KEY (`location_city_id`) REFERENCES `countries_city` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hotel_reservation_hotelreservationrequest`
--
ALTER TABLE `hotel_reservation_hotelreservationrequest`
  ADD CONSTRAINT `hotel_reservation_ho_requested_hotel_id_4680a693_fk_countries` FOREIGN KEY (`requested_hotel_id`) REFERENCES `countries_hotel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
