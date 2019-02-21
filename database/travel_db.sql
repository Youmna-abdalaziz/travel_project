-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2019 at 12:49 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

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
(25, 'Can add hotel', 9, 'add_hotel'),
(26, 'Can change hotel', 9, 'change_hotel'),
(27, 'Can delete hotel', 9, 'delete_hotel'),
(28, 'Can add location', 10, 'add_location'),
(29, 'Can change location', 10, 'change_location'),
(30, 'Can delete location', 10, 'delete_location'),
(31, 'Can add user', 11, 'add_user'),
(32, 'Can change user', 11, 'change_user'),
(33, 'Can delete user', 11, 'delete_user'),
(34, 'Can add hotel reservation request', 12, 'add_hotelreservationrequest'),
(35, 'Can change hotel reservation request', 12, 'change_hotelreservationrequest'),
(36, 'Can delete hotel reservation request', 12, 'delete_hotelreservationrequest'),
(37, 'Can add comments', 13, 'add_comments'),
(38, 'Can change comments', 13, 'change_comments'),
(39, 'Can delete comments', 13, 'delete_comments'),
(40, 'Can add user experience', 14, 'add_userexperience'),
(41, 'Can change user experience', 14, 'change_userexperience'),
(42, 'Can delete user experience', 14, 'delete_userexperience'),
(43, 'Can add car rental requests', 15, 'add_carrentalrequests'),
(44, 'Can change car rental requests', 15, 'change_carrentalrequests'),
(45, 'Can delete car rental requests', 15, 'delete_carrentalrequests'),
(46, 'Can add extended user', 16, 'add_extendeduser'),
(47, 'Can change extended user', 16, 'change_extendeduser'),
(48, 'Can delete extended user', 16, 'delete_extendeduser'),
(49, 'Can add travel users', 17, 'add_travelusers'),
(50, 'Can change travel users', 17, 'change_travelusers'),
(51, 'Can delete travel users', 17, 'delete_travelusers');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$qAhUSOpJO3hY$/M8Gc2K0wrepb86U6/ejdoxXttyLSP1+8temgFxk75g=', '2019-02-16 16:34:21.398442', 1, 'admin@travel', 'a', 'a', 'asas@xx.com', 1, 1, '2019-02-14 11:19:18.647038'),
(2, 'pbkdf2_sha256$36000$neNnK6zUS5b3$9NMCbaBKlrE4qyyO9NbUme2Y49tQ487IiI7RSmbJHLE=', NULL, 0, 'newuser', '', '', '', 0, 1, '2019-02-14 14:14:43.635546'),
(3, 'pbkdf2_sha256$36000$aDWKb4JIhgfN$9IvhO6m2Tflv5oDzycHJ+off9fxioC4z0RJD5Q5a/JE=', NULL, 0, 'usernew', '', '', '', 0, 1, '2019-02-14 14:24:08.221008'),
(4, 'pbkdf2_sha256$36000$mD5iu6G3LP6z$1C78APprmFFI45266XcESZBl/MdvQJwrokDhXb1vEL8=', NULL, 0, 'newusernew', '', '', '', 0, 1, '2019-02-14 14:45:55.607999'),
(5, 'pbkdf2_sha256$36000$TzoSmJ0lmJIO$m14C7wTB1dhqnzbzFxKyC/OMbbjnhyE69IPE3p+uFAI=', NULL, 0, 'johnyy', '', '', '', 0, 1, '2019-02-14 14:47:49.659793'),
(6, 'pbkdf2_sha256$36000$kt9oVkRk3Y5l$ojqw/9+toXvFr5IdphbgGfMLq1XTjbBQ3Wgp8a8ZCas=', '2019-02-16 12:45:18.235918', 0, 'JohnAnton', 'Johnny', 'Anton', 'john@xxx.com', 0, 1, '2019-02-14 17:08:11.000000'),
(7, 'pbkdf2_sha256$36000$pXFyg5alO52G$j0P+wbttuq+1aedkA0kbPf9asYFUDk2mzgMREtWYD7g=', NULL, 0, 'hassan', '', '', '', 0, 1, '2019-02-14 18:51:18.858504'),
(8, 'pbkdf2_sha256$36000$91jrYvtbQ6lT$pgx4HVsj5oVWrgY5qjOzT0b5qFUp3V06zJ+n//OWEPY=', NULL, 0, 'JohnKamel', 'john', 'kamel', 'johnny@xx.com', 0, 1, '2019-02-15 11:57:44.748573'),
(9, 'pbkdf2_sha256$36000$B3sPL1c4i26w$dl5qUzXdqUYT4+hL657SqvzUwFIwEqWUTlUyVUxMME4=', '2019-02-15 12:12:19.045242', 0, 'JohhnyDebb', 'Johnny', 'Anton', 'johnny@xxs.com', 0, 1, '2019-02-15 12:11:49.469527'),
(11, 'pbkdf2_sha256$36000$uL8CfhrDUjI3$6YBfn6P1U4xRL3Gb5K1QOQ/CKVy/QmG5ZfRgqGdSXZA=', NULL, 0, 'samjohnthen', '', '', '', 0, 1, '2019-02-15 12:54:32.797611'),
(12, 'pbkdf2_sha256$36000$7jqa95CvcOwk$Rd+pj2ZUe90p4fu7lGcEcKhrvYMxeZ4Y7ymtrk4OWgc=', NULL, 0, 'nada', 'newuser', 'user', 'user@xx.com', 0, 1, '2019-02-15 16:00:36.417756'),
(13, 'pbkdf2_sha256$36000$1WnQRfywFf1q$14crDpEZAj6pzSmNM8LvwPYvh1yYugaNT0seP7ykeZU=', NULL, 0, 'Abdelarhman', 'abdElrahman', 'Amnin', 'abdo@gmail.com', 0, 1, '2019-02-16 14:44:46.783192');

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
  `destination_id` int(11) NOT NULL,
  `pick_up_point_id` int(11) NOT NULL,
  `Drop_off_date` date NOT NULL,
  `Drop_off_time` time(6) NOT NULL,
  `pick_up_date` date NOT NULL,
  `pick_up_time` time(6) NOT NULL,
  `user_requested_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_rental_carrentalrequests`
--

INSERT INTO `car_rental_carrentalrequests` (`id`, `destination_id`, `pick_up_point_id`, `Drop_off_date`, `Drop_off_time`, `pick_up_date`, `pick_up_time`, `user_requested_id`) VALUES
(1, 2, 3, '2019-02-01', '10:15:00.000000', '2019-02-01', '09:00:00.000000', 1),
(2, 2, 3, '2019-02-01', '10:15:00.000000', '2019-02-01', '09:00:00.000000', 2),
(3, 2, 1, '2019-02-02', '08:22:15.000000', '2019-02-02', '11:00:00.000000', 1),
(4, 6, 7, '2019-02-01', '09:18:32.000000', '2019-02-01', '10:00:00.000000', 2),
(5, 7, 8, '2019-02-20', '19:00:00.000000', '2019-02-20', '18:00:00.000000', 1),
(6, 10, 7, '2019-02-20', '04:00:00.000000', '2019-02-20', '03:00:00.000000', 1),
(7, 4, 1, '2019-02-20', '15:00:00.000000', '2019-02-20', '13:00:00.000000', 5),
(8, 9, 7, '2019-02-21', '13:00:00.000000', '2019-02-21', '12:00:00.000000', 5);

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

--
-- Dumping data for table `comments_and_experiences_comments`
--

INSERT INTO `comments_and_experiences_comments` (`id`, `comment`, `experience_id_id`, `user_commented_id`) VALUES
(76, 'beautiful place', 4, 2),
(77, 'good', 4, 2),
(78, 'beautiful place', 12, 2),
(79, 'good', 12, 2),
(80, 'ok nice', 13, 2),
(81, 'goood', 17, 2),
(82, 'yes', 17, 2),
(83, 'beautiful place', 18, 2),
(84, 'nice', 18, 2),
(85, 'good place', 19, 2),
(86, 'good and nice place', 15, 2),
(87, 'nice place', 14, 2),
(88, 'good', 14, 2),
(89, 'yes', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments_and_experiences_userexperience`
--

CREATE TABLE `comments_and_experiences_userexperience` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `city_id_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments_and_experiences_userexperience`
--

INSERT INTO `comments_and_experiences_userexperience` (`id`, `title`, `description`, `city_id_id`, `writer_id`) VALUES
(4, '\nA perfect day in Cairo: how to spend 24 hours in Egypt\'s capital ', 'Egypt is changing by the minute as it continues its post-revolution recovery, but there are still a number of unshakeable constants in the formula for the perfect day in Cairo: giving a nod to the city’s ancient past, soaking up its contemporary art and music scene, and learning the colloquial morning greeting to earn warm smiles and instant friends. ', 1, 1),
(12, 'How to live like a Local in Cairo', 'After spending a carefree summer getting to know Egypt back in 2010, Lonely Planet Local Leah Bremer returned in 2017 to find dusty, ancient Cairo forever changed and yet exactly the same. Adapting to sunny life in the cultural nexus of north Africa and the Middle East took little time, and once she learned the importance of dodging sandstorms and giving street cats the right of way, she knew she could call Cairo home.', 1, 2),
(13, '8 Reasons to Visit Egypt’s Alexandria in Winter', 'Egyptian Streets\r\nApril 7, 2017\r\n\r\nThis article explains why visiting Alexandria, Egypt during the winter is way cooler than visiting in the summer. Being a tourist in your city can become challenging sometimes.\r\n\r\nBy Rhoda Ismail\r\n\r\nYou want to visit the places that you miss, to see the good old friends, and to eat mama’s cooking. Nostalgia is a strong emotion I feel when I visit Alexandria, Egypt, the place where I grew up for a decade and where my parents are from.', 2, 2),
(14, 'Nile 4-Day Cruise from Aswan to Luxor, Private Guide Option', 'Enjoy the beautiful scenery as you cruise the Nile on a 4-day journey from Aswan to Luxor. Sightseeing, entrance fees and meals are included on this luxuriously relaxing cruise on Egypt\'s famous river. Upgrade to a private guided tour and plan a more personal itinerary with a qualified Egyptologist guide.\r\nScheduled privately guided tours on the cruise include the Valley of the Kings, Edfu Temple, Kom Ombo and the beautiful Philae Temple in Aswan. Upgrade to a private tour, and you can plan your itinerary with your guide during the cruise. The deluxe Nile cruiser M/Y Mirage has an onboard restaurant, lounges and reading areas, a discotheque, swimming pool with jacuzzi, large shaded sundeck with bar, massage service, boutique, gift shop and laundry service. Evening entertainment may include Nubian music and dancers, a Galabayeh night and belly dancing. The cruiser\'s 58 air-conditioned cabins have private facilities and satellite TV. With all meals, accommodation and sightseeing included, your M/Y Mirage cruise on the Nile River makes your journey into ancient Egypt as relaxed and enjoyable as possible. You\'ll gain valuable insights into Egypt\'s ancient history and civilization on this laidback but informative cruise.Please note: Groups of travelers requiring different cabin types are required to make separate bookings in order to guarantee cabins of their choice', 3, 2),
(15, 'How to live like a Local in Cairo', 'After spending a carefree summer getting to know Egypt back in 2010, Lonely Planet Local Leah Bremer returned in 2017 to find dusty, ancient Cairo forever changed and yet exactly the same. Adapting to sunny life in the cultural nexus of north Africa and the Middle East took little time, and once she learned the importance of dodging sandstorms and giving street cats the right of way, she knew she could call Cairo home.', 1, 2),
(16, 'Private Tour: Abu Simbel Flight and Tour from Aswan', 'Fast track your journey and take the quick route to see the magnificent temples of Abu Simbel on an air tour from Aswan. With a qualified Egyptologist as your guide (fully guided or part guided depending on option selected), this private tour provides the most personalized visit to Abu Simbel, in the shortest time possible.\r\nThe flight from Aswan to the small town of Abu Simbel takes only around 30 minutes. Your Egyptologist guide will meet you at the airport (if option selected) and accompany you to the famous temples of Ramses II and his favorite wife Nefertari. On the short walk to the temple entrances, your guide will explain the history of the site, including details of the UNESCO-led relocation of the entire cliff face to higher ground, and how the temples were discovered by accident in 1813. Due to the large number of visitors to Abu Simbel, guides are not permitted inside either the Great Temple of Ramses II or the smaller Temple of Hathor. However, by using photos and illustrations, your guide will explain to you the structures and their interior artworks. You will then have free time to enter the temples and explore them at your leisure.As one of the few ancient Egyptian sites which largely escaped damage by past invaders, the interiors of Abu Simbel\'s temples are astounding. The scale of the buildings and their detailed decoration leaves most visitors in awe. The temples\' attraction is further enhanced by their scenic location on the edge of Lake Nasser in the orange sands of the desert.After visiting the temples there may be time for a short visit to the small visitor\'s center which documents the UNESCO relocation project.', 3, 2),
(17, 'The ancient ruins', 'The southern part of Thebes grew up around a beautiful temple dedicated to Amon, king of the gods, his consort Mut', 4, 2),
(18, 'The ancient ruins', ' The southern part of Thebes grew up around a beautiful temple dedicated to Amon, king of the gods, his consort Mut', 5, 2),
(19, 'Ismailia', 'Ismailia played an important role in modern Egyptian history: British suppression of an uprising by rebellious Egyptian police there in January 1952 was a key event leading to the overthrow of King Farouk I later that year and the Egyptian Revolution that followed. During the period that the canal was open to traffic (1869–1956; 1957–67), Ismailia prospered. The operating headquarters of the Suez Canal Company and the Central Movement Office, which regulated canal traffic, were there. When the canal was closed for eight years following the June (Six-Day) War of 1967, the city’s economic base was undermined and much of the population was resettled elsewhere in Egypt.', 6, 2),
(20, 'suhag', 'For the first time this year, the two governments will have 2+2 dialogue which will involve both foreign affairs and defence ministry to discuss a broad range of security. I can say confidently that we have no irritants in our relationship at this point of time (which) enables us to move forward with positive agendas... We are therefore in this happy space. \"Last year, we had a remarkable year as 11 Australian cabinet ministers visited India that alone is an indication of the importance that Australia gives to its relationship with India,\" Suri said.', 4, 2),
(22, 'good and switable place', 'good and switable place  good good', 8, 2),
(23, 'john experience', 'it was great to be here', 2, 1),
(24, 'our experience', 'New experience', 31, 1),
(25, 'new', 'trying experience', 31, 1),
(26, 'skhdkahd', 'slkajdlkjal', 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries_city`
--

CREATE TABLE `countries_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `city_rate` int(11) NOT NULL,
  `city_country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_city`
--

INSERT INTO `countries_city` (`id`, `city_name`, `city_rate`, `city_country_id`) VALUES
(1, 'Cairo', 4, 1),
(2, 'Alexandria', 5, 1),
(3, 'Aswan', 5, 1),
(4, 'Suhag', 3, 1),
(5, 'Luxor', 5, 1),
(6, 'Ismailia', 3, 1),
(7, 'Paris', 5, 2),
(8, 'Lyon', 4, 2),
(9, 'Marseille', 3, 2),
(10, 'Lille', 3, 2),
(11, 'Nice', 3, 2),
(12, 'Strasbourg', 3, 2),
(13, 'Berlin', 4, 3),
(14, 'Stuttgart', 3, 3),
(15, 'Frankfurt', 3, 3),
(16, 'Hamburg', 4, 3),
(17, 'Marienberg', 2, 3),
(18, 'Bermen', 2, 3),
(19, 'Sydney', 4, 4),
(20, 'South_Melbourne', 3, 4),
(21, 'Brisbane', 3, 4),
(22, 'Perth', 3, 4),
(23, 'Adelaide', 2, 4),
(24, 'NewCastle', 2, 4),
(25, 'Shanghai', 3, 5),
(26, 'Beijing', 2, 5),
(27, 'Guangzhou', 2, 5),
(28, 'Shenzhen', 2, 5),
(29, 'Wuhan', 2, 5),
(30, 'Tianjin', 2, 5),
(31, 'Istanbul', 5, 6),
(32, 'Ankara', 4, 6),
(33, 'Izmir', 3, 6),
(34, 'Bursa', 2, 6),
(35, 'Adana', 2, 6),
(36, 'Gaziantep', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `countries_country`
--

CREATE TABLE `countries_country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_country`
--

INSERT INTO `countries_country` (`id`, `country_name`, `country_rate`) VALUES
(1, 'Egypt', 4),
(2, 'France', 5),
(3, 'Germany', 3),
(4, 'Australia', 3),
(5, 'China', 2),
(6, 'Turkey', 4);

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
  `location_city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_location`
--

INSERT INTO `countries_location` (`id`, `location_name`, `location_city_id`) VALUES
(1, 'Pyramids_of_Giza', 1),
(2, 'Egyptian_Museum', 1),
(3, 'Al_Azhar_Mosque', 1),
(4, 'Old_Cairo', 1),
(5, 'Khan_el_Khalili ', 1),
(6, 'The_Citadel', 1),
(7, 'Bibliotheca_Alexandrina', 2),
(8, 'Alexandria_National_Museum', 2),
(9, 'Qaitbey', 2),
(10, 'Montazah', 2),
(11, 'Elephantine_Island', 3),
(12, 'Nubia_Museum', 3),
(13, 'Philae_Temple', 3),
(14, 'Aswan_High_Dam', 3),
(15, 'Abydos', 4),
(16, 'Dendra', 4),
(17, 'The_Red_Monastery', 4),
(18, 'Temple_of_Karnak', 5),
(19, 'Valley_of_the_Kings', 5),
(20, 'Luxor_Temple', 5),
(21, 'Valley_of_the_Queens', 5),
(22, 'Ismailia_Museum', 6),
(23, 'De_Lesseps’s_House', 6),
(24, 'Eiffel_Tower', 7),
(25, 'Jardin_des_Tuileries', 7),
(26, 'Palais_Garnier', 7),
(27, 'Musée_des_Beaux_Arts', 8),
(28, 'Quartier_Saint_Jean&Quartier_Saint_Georges', 8),
(29, 'Musée_de_la_Civilisation_Gallo_Romaine', 8),
(30, 'Basilique_Notre_Dame_de_la_Garde', 9),
(31, 'Vieux_Port', 9),
(32, 'Le_Panier', 9),
(33, 'Place_du_Général_de_Gaulle', 10),
(34, 'Palais_Beaux_Arts', 10),
(35, 'Musée_Louvre_Lens', 10),
(36, 'Vieille_Ville', 11),
(37, 'Promenade_des_Anglais', 11),
(38, 'Musée_Matisse', 11),
(39, 'Cathédrale_Notre_Dame_de_Strasbourg', 12),
(40, 'Quartier_des_Tanneurs', 12),
(41, 'Maison_Kammerzell', 12),
(42, 'Reichstag', 13),
(43, 'Brandenburg_Gate', 13),
(44, 'Berlin_Television_Tower', 13),
(45, 'Gendarmenmarkt', 13),
(46, 'Berlin_Cathedral', 13),
(47, 'Staatsgalerie_Stuttgart', 14),
(48, 'Neues_Schloss&Altes_Schloss', 14),
(49, 'The_Sepulchral_Chapel_on_Württemberg_Hill', 14),
(50, 'The_Römerberg', 15),
(51, 'The_Museum_District', 15),
(52, 'The_Palm_Garden', 15),
(53, 'Senckenberg_Natural_History_Museum', 15),
(54, 'The_Port_of_Hamburg', 16),
(55, 'Miniatur_Wunderland', 16),
(56, 'Kunsthalle_Hamburg', 16),
(57, 'St.Michael\'s_Church', 16),
(58, 'Schwarzwassertal', 17),
(59, 'St.Annenkirche', 17),
(60, 'Schloss_Wolkenstein', 17),
(61, 'Marktplatz_and_Bremen_Roland', 18),
(62, 'Bremen_Town_Hall', 18),
(63, 'The_Schnoor_Quarter', 18),
(64, 'The Cathedral_of_St._Peter', 18),
(65, 'Sydney_Opera_House', 19),
(66, 'Sydney_Harbour_Bridge', 19),
(67, 'The_Rocks', 19),
(68, 'The_Royal_Botanic_Garden_Sydney', 19),
(69, 'Royal_Botanic_Gardens', 20),
(70, 'NGV_International', 20),
(71, 'Melbourne_Museum', 20),
(72, 'The_Cultural_Precinct', 21),
(73, 'Brisbane_Botanic_Gardens_Mount_Coot_tha', 21),
(74, 'Queen_Street_Mall', 21),
(75, 'Kings_Park&Botanic_Garden', 22),
(76, 'Swan_River', 22),
(77, 'The_Perth_Mint', 22),
(78, 'North_Terrace', 23),
(79, 'Adelaide_Botanic_Garden', 23),
(80, 'Art_Gallery_of_South_Australia', 23),
(81, 'The_Tyne_Bridges', 24),
(82, 'Historic_Quayside', 24),
(83, 'Newcastle_Castle', 24),
(84, 'St.Nicholas_Cathedral', 24),
(85, 'Shanghai\'s_Promenade', 25),
(86, 'Yu_Garden', 25),
(87, 'The_Jade_Buddha_Temple', 25),
(88, 'The_Shanghai_Museum', 25),
(89, 'The_Imperial_Palace&the_Forbidden_City', 26),
(90, 'The_Great_Wall_of_China', 26),
(91, 'Tiananmen_Square', 26),
(92, 'Beihai_Park', 26),
(93, 'Chen_Clan_Ancestral_Hall', 27),
(94, 'Mausoleum_of_the_Nányuè_King', 27),
(95, 'Yúyìn_Mountain_Villa', 27),
(96, 'Oil_Painting_Village', 28),
(97, 'Window_of_the_World', 28),
(98, 'Sunrise_Art_Center', 28),
(99, 'Yellow_Crane_Tower', 29),
(100, 'Hubei_Provincial_Museum', 29),
(101, 'Changchun_Temple', 29),
(102, 'Shi_Courtyard', 30),
(103, 'Mt.Panshan', 30),
(104, 'Eastern_Qing_Tombs', 30),
(105, 'Aya_Sofya', 31),
(106, 'Topkapi_Palace', 31),
(107, 'Blue_Mosque', 31),
(108, 'Basilica_Cistern', 31),
(109, 'Citadel', 32),
(110, 'Anit_Kabir', 32),
(111, 'Ethnography_Museum', 32),
(112, 'Izmir_Museum_of_History&Art', 33),
(113, 'KemeraltI_Market', 33),
(114, 'Agora', 33),
(115, 'Green_Mosque', 34),
(116, 'City_Center', 34),
(117, 'Citadel', 34),
(118, 'Adana_Merkez_Camii', 35),
(119, 'Varda(Alman)Koprusu', 35),
(120, 'Tas_Kopru', 35),
(121, 'Zeugma_Mozaik_Muzesi', 36),
(122, 'Rumkale', 36),
(123, 'Gaziantep_Castle', 36);

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-02-14 19:53:42.549922', '6', 'JohnAnton', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(2, '2019-02-15 12:54:32.832287', '11', 'samjohnthen', 1, '[{\"added\": {}}]', 4, 1),
(3, '2019-02-15 13:14:35.130324', '2', 'samjohnthen', 1, '[{\"added\": {}}]', 16, 1),
(4, '2019-02-15 14:16:03.231239', '2', 'JohhnyDebb', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 16, 1),
(5, '2019-02-15 14:57:15.934265', '1', 'samjohnthen', 2, '[{\"changed\": {\"fields\": [\"details\", \"image\"]}}]', 16, 1),
(6, '2019-02-15 15:38:13.102001', '1', 'samjohnthen', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 16, 1),
(7, '2019-02-21 22:19:05.490685', '1', 'JohnAnton', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 17, 4);

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
(13, 'comments_and_experiences', 'comments'),
(14, 'comments_and_experiences', 'userexperience'),
(5, 'contenttypes', 'contenttype'),
(7, 'countries', 'city'),
(8, 'countries', 'country'),
(9, 'countries', 'hotel'),
(10, 'countries', 'location'),
(12, 'hotel_reservation', 'hotelreservationrequest'),
(6, 'sessions', 'session'),
(16, 'user_profile', 'extendeduser'),
(17, 'user_profile', 'travelusers'),
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
(1, 'contenttypes', '0001_initial', '2019-02-13 14:45:12.835016'),
(2, 'auth', '0001_initial', '2019-02-13 14:45:18.532982'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-02-13 14:45:20.662017'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-02-13 14:45:20.760572'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-02-13 14:45:20.868943'),
(8, 'auth', '0004_alter_user_username_opts', '2019-02-13 14:45:20.913227'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-02-13 14:45:21.342146'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-02-13 14:45:21.374580'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-02-13 14:45:21.417375'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-02-13 14:45:22.134007'),
(18, 'sessions', '0001_initial', '2019-02-13 14:45:30.357197'),
(19, 'user_profile', '0002_auto_20190215_1209', '2019-02-15 12:09:38.567422'),
(20, 'comments_and_experiences', '0002_auto_20190215_1237', '2019-02-15 12:37:56.671576'),
(21, 'user_profile', '0003_auto_20190215_1237', '2019-02-15 12:37:57.821730'),
(22, 'user_profile', '0004_remove_extendeduser_status', '2019-02-15 12:53:43.473986'),
(23, 'user_profile', '0005_auto_20190215_1300', '2019-02-15 13:00:44.108969'),
(24, 'user_profile', '0006_remove_extendeduser_user_name', '2019-02-15 13:16:35.399529'),
(25, 'user_profile', '0007_extendeduser_image', '2019-02-15 14:02:20.504885'),
(26, 'user_profile', '0008_remove_extendeduser_image', '2019-02-15 15:45:45.698981'),
(27, 'car_rental', '0002_auto_20190216_0126', '2019-02-16 16:32:46.197248'),
(28, 'hotel_reservation', '0002_auto_20190215_1358', '2019-02-16 16:32:46.700718'),
(29, 'hotel_reservation', '0003_auto_20190216_0126', '2019-02-16 16:32:46.732068'),
(30, 'user_profile', '0009_travelusers', '2019-02-16 20:54:01.540117'),
(31, 'user_profile', '0010_auto_20190216_2109', '2019-02-16 21:10:30.757442'),
(32, 'user_profile', '0011_auto_20190216_2124', '2019-02-16 21:25:19.308232'),
(33, 'user_profile', '0012_delete_extendeduser', '2019-02-16 21:29:06.104238'),
(34, 'hotel_reservation', '0004_hotelreservationrequest_user_requested', '2019-02-16 22:05:02.544631'),
(35, 'hotel_reservation', '0005_remove_hotelreservationrequest_user_requested', '2019-02-16 22:05:03.048146'),
(37, 'comments_and_experiences', '0003_auto_20190216_2209', '2019-02-16 22:09:57.085761'),
(38, 'hotel_reservation', '0006_hotelreservationrequest_user_requested', '2019-02-16 22:09:58.004217'),
(39, 'car_rental', '0002_auto_20190220_1603', '2019-02-20 16:03:45.354536'),
(40, 'user_profile', '0001_initial', '2019-02-21 21:48:37.335690'),
(41, 'admin', '0001_initial', '2019-02-21 21:48:37.583171'),
(42, 'admin', '0002_logentry_remove_auto_add', '2019-02-21 21:48:37.719125'),
(43, 'countries', '0001_initial', '2019-02-21 21:48:37.765647'),
(44, 'car_rental', '0001_initial', '2019-02-21 21:48:37.799740'),
(45, 'car_rental', '0002_carrentalrequests_user_requested', '2019-02-21 21:48:37.846905'),
(46, 'comments_and_experiences', '0001_initial', '2019-02-21 21:48:37.895250'),
(47, 'comments_and_experiences', '0002_auto_20190221_2146', '2019-02-21 21:48:37.964427'),
(48, 'hotel_reservation', '0001_initial', '2019-02-21 21:48:38.015171'),
(49, 'hotel_reservation', '0002_hotelreservationrequest_user_requested', '2019-02-21 21:48:38.064693');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('48i0ywh8d1kqupw96eeh32kf1azuglwq', 'ZmI0Y2ZhN2QzZmFiNTczMDAzN2MzNGU1NmNkZTg2MTE5ZjAzNGJlZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMDQwNDMzZDEyMDg3YzRmZGY5ZDJjNzIxZGUyOGZhZDEyMTc5MjNiIn0=', '2019-03-07 22:31:48.007663'),
('xzof6r131etisipys45z9y4beovbt0e2', 'Yjc3ZmRjOTM3ZDc4NGI1ZjFhZWNjYTIxMDcxYTgyMDM5Nzk0NWIzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjODJmOTM0OGExOTBmNDE4NGJlYTc3ZjhkZTU0YmFlYjU2ZTVjNjYyIn0=', '2019-03-02 21:32:54.839297');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_reservation_hotelreservationrequest`
--

CREATE TABLE `hotel_reservation_hotelreservationrequest` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `no_of_adults` varchar(1) NOT NULL,
  `requested_hotel_id` int(11) NOT NULL,
  `user_requested_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_reservation_hotelreservationrequest`
--

INSERT INTO `hotel_reservation_hotelreservationrequest` (`id`, `from_date`, `to_date`, `no_of_adults`, `requested_hotel_id`, `user_requested_id`) VALUES
(1, '2019-02-01', '2019-02-05', '3', 2, 1),
(2, '2019-02-08', '2019-02-11', '2', 1, 2),
(3, '2019-12-23', '2020-02-02', '4', 5, 1),
(4, '2010-08-12', '2010-09-03', '4', 5, 1),
(5, '2019-12-23', '2020-02-02', '3', 29, 7),
(6, '2019-12-23', '2020-02-02', '4', 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_travelusers`
--

CREATE TABLE `user_profile_travelusers` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_travelusers`
--

INSERT INTO `user_profile_travelusers` (`id`, `password`, `last_login`, `description`, `email`, `first_name`, `last_name`, `date_joined`, `is_active`, `is_staff`, `is_superuser`, `username`) VALUES
(1, 'pbkdf2_sha256$36000$1D1lH0yblVpX$pFe0b/DXEitJGY5hvPliexdLtMvQ5e5FUGuPCD2leq4=', '2019-02-21 21:56:29.334288', '', 'john@xxx.com', 'john', 'Anton', '2019-02-17 06:01:42.972575', 0, 0, 0, 'JohnAnton'),
(2, 'pbkdf2_sha256$36000$ZHYIgbdfAnfn$beL0iUU4K0jne7yWH5nerfeG1fpuSfBRksK+jRWEVjE=', NULL, '', 'lolo@kk.com', 'lolo', 'asasa', '2019-02-17 19:45:32.140127', 1, 0, 0, 'laila'),
(3, 'pbkdf2_sha256$36000$w51pN6Rt5sFL$SLbo9G0nczcb6aFYaVv+0D4JgIAVU1DM35zQsGDVEgg=', '2019-02-18 06:54:23.674113', '', 'user@mm.com', 'user', 'user', '2019-02-18 06:53:55.665014', 1, 0, 0, 'newuser'),
(4, 'pbkdf2_sha256$36000$lMK0ghY0RXgy$M1PQR7cEf3ZBCauSJ11vW4EmWAu0SNxzs2vW4U+JWJ0=', '2019-02-21 22:10:18.975080', '', '', '', '', '2019-02-18 17:17:42.910542', 1, 1, 1, 'admin@travel'),
(5, 'pbkdf2_sha256$36000$b7N3VeJ5KkRU$JkDUDa5Rv5MODn4A8CDLJqq7dOKtRQ6uaO/jozfwjvg=', '2019-02-21 22:31:47.979014', '', 'youmna@yy.com', 'youmna', 'Anton', '2019-02-20 16:12:34.126364', 1, 0, 0, 'Youmna'),
(6, 'pbkdf2_sha256$36000$s00Xtp3XZ647$jRxZKYPEFe68r01waT2qIk+rUDzCK3ecD2aRyPU9OaM=', NULL, '', 'sha@zz.com', 'sha', 'sha', '2019-02-21 17:36:43.514698', 1, 0, 0, 'shroukuser'),
(7, 'pbkdf2_sha256$36000$5HeCKq2mruUo$TolajWjjeC2KAqFp+IGZDk9bD5eDRuphGuQ3iRLNU3o=', '2019-02-21 19:16:19.408931', '', 'youmna@yy.com', 'youmnaaa', 'abdelaziz', '2019-02-21 19:16:03.708936', 1, 0, 0, 'yoyooooo');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_travelusers_groups`
--

CREATE TABLE `user_profile_travelusers_groups` (
  `id` int(11) NOT NULL,
  `travelusers_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_travelusers_user_permissions`
--

CREATE TABLE `user_profile_travelusers_user_permissions` (
  `id` int(11) NOT NULL,
  `travelusers_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD KEY `car_rental_carrental_pick_up_point_id_fab41c15_fk_countries` (`pick_up_point_id`),
  ADD KEY `car_rental_carrental_user_requested_id_dcdec133_fk_user_prof` (`user_requested_id`);

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

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
  ADD KEY `hotel_reservation_ho_requested_hotel_id_4680a693_fk_countries` (`requested_hotel_id`),
  ADD KEY `hotel_reservation_ho_user_requested_id_3064c6c1_fk_user_prof` (`user_requested_id`);

--
-- Indexes for table `user_profile_travelusers`
--
ALTER TABLE `user_profile_travelusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_profile_travelusers_groups`
--
ALTER TABLE `user_profile_travelusers_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profile_travelusers_travelusers_id_group_id_5a686e1f_uniq` (`travelusers_id`,`group_id`),
  ADD KEY `user_profile_travelu_group_id_799aab8d_fk_auth_grou` (`group_id`);

--
-- Indexes for table `user_profile_travelusers_user_permissions`
--
ALTER TABLE `user_profile_travelusers_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profile_travelusers_travelusers_id_permissio_2315a53a_uniq` (`travelusers_id`,`permission_id`),
  ADD KEY `user_profile_travelu_permission_id_d5d761a2_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments_and_experiences_comments`
--
ALTER TABLE `comments_and_experiences_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `comments_and_experiences_userexperience`
--
ALTER TABLE `comments_and_experiences_userexperience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `hotel_reservation_hotelreservationrequest`
--
ALTER TABLE `hotel_reservation_hotelreservationrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_profile_travelusers`
--
ALTER TABLE `user_profile_travelusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_profile_travelusers_groups`
--
ALTER TABLE `user_profile_travelusers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_profile_travelusers_user_permissions`
--
ALTER TABLE `user_profile_travelusers_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  ADD CONSTRAINT `car_rental_carrental_pick_up_point_id_fab41c15_fk_countries` FOREIGN KEY (`pick_up_point_id`) REFERENCES `countries_location` (`id`),
  ADD CONSTRAINT `car_rental_carrental_user_requested_id_dcdec133_fk_user_prof` FOREIGN KEY (`user_requested_id`) REFERENCES `user_profile_travelusers` (`id`);

--
-- Constraints for table `comments_and_experiences_comments`
--
ALTER TABLE `comments_and_experiences_comments`
  ADD CONSTRAINT `comments_and_experie_experience_id_id_7e343278_fk_comments_` FOREIGN KEY (`experience_id_id`) REFERENCES `comments_and_experiences_userexperience` (`id`),
  ADD CONSTRAINT `comments_and_experie_user_commented_id_90f94d31_fk_user_prof` FOREIGN KEY (`user_commented_id`) REFERENCES `user_profile_travelusers` (`id`);

--
-- Constraints for table `comments_and_experiences_userexperience`
--
ALTER TABLE `comments_and_experiences_userexperience`
  ADD CONSTRAINT `comments_and_experie_city_id_id_065d05c1_fk_countries` FOREIGN KEY (`city_id_id`) REFERENCES `countries_city` (`id`),
  ADD CONSTRAINT `comments_and_experie_writer_id_c0322eb5_fk_user_prof` FOREIGN KEY (`writer_id`) REFERENCES `user_profile_travelusers` (`id`);

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hotel_reservation_hotelreservationrequest`
--
ALTER TABLE `hotel_reservation_hotelreservationrequest`
  ADD CONSTRAINT `hotel_reservation_ho_requested_hotel_id_4680a693_fk_countries` FOREIGN KEY (`requested_hotel_id`) REFERENCES `countries_hotel` (`id`),
  ADD CONSTRAINT `hotel_reservation_ho_user_requested_id_3064c6c1_fk_user_prof` FOREIGN KEY (`user_requested_id`) REFERENCES `user_profile_travelusers` (`id`);

--
-- Constraints for table `user_profile_travelusers_groups`
--
ALTER TABLE `user_profile_travelusers_groups`
  ADD CONSTRAINT `user_profile_travelu_group_id_799aab8d_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_profile_travelu_travelusers_id_02bdc2a1_fk_user_prof` FOREIGN KEY (`travelusers_id`) REFERENCES `user_profile_travelusers` (`id`);

--
-- Constraints for table `user_profile_travelusers_user_permissions`
--
ALTER TABLE `user_profile_travelusers_user_permissions`
  ADD CONSTRAINT `user_profile_travelu_permission_id_d5d761a2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_profile_travelu_travelusers_id_d3dd3516_fk_user_prof` FOREIGN KEY (`travelusers_id`) REFERENCES `user_profile_travelusers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
