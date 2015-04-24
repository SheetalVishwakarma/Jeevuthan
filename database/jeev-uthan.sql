-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2015 at 06:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jeev-uthan`
--
CREATE DATABASE IF NOT EXISTS `jeev-uthan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jeev-uthan`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-18 09:26:31', '2015-03-18 09:26:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_info`
--

CREATE TABLE IF NOT EXISTS `wp_info` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` int(11) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created Date',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated Date',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_admin`
--

CREATE TABLE IF NOT EXISTS `wp_ju_admin` (
  `admin_id` int(8) NOT NULL AUTO_INCREMENT,
  `admin_username1` varchar(255) NOT NULL,
  `admin_username2` varchar(255) NOT NULL,
  `admin_username3` varchar(255) NOT NULL,
  `admin_username4` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_location`
--

CREATE TABLE IF NOT EXISTS `wp_ju_location` (
  `location_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_name` (`location_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `wp_ju_location`
--

INSERT INTO `wp_ju_location` (`location_id`, `location_name`) VALUES
(11, 'Anand Bazar(Khajrana)'),
(18, 'Ayodhyapuri Colony(Mhow)'),
(4, 'Bhanwarkua'),
(13, 'Diamond Colony'),
(6, 'Khajrana Road'),
(14, 'Lalaram Nagar'),
(10, 'Manik Baug Road'),
(17, 'MG Road Krishnapura'),
(16, 'MIG teen puliya'),
(3, 'Mishra Nagar'),
(15, 'Palasia'),
(9, 'Pardesipura'),
(12, 'Patnipura'),
(50, 'raaaaaaaaaa'),
(51, 'raaaaeeee'),
(19, 'raajbada'),
(43, 'raajbada1'),
(33, 'raajbada10'),
(34, 'raajbada11'),
(35, 'raajbada112'),
(36, 'raajbada13'),
(37, 'raajbada14'),
(38, 'raajbada15'),
(44, 'raajbada156'),
(39, 'raajbada16'),
(40, 'raajbada17'),
(41, 'raajbada18'),
(46, 'raajbada189'),
(42, 'raajbada19'),
(45, 'raajbada199'),
(47, 'raajbada25'),
(49, 'raajbada27'),
(27, 'raajbada4'),
(28, 'raajbada5'),
(29, 'raajbada6'),
(30, 'raajbada7'),
(31, 'raajbada8'),
(32, 'raajbada9'),
(8, 'Radio Colony'),
(2, 'Ravindra Nagar'),
(52, 'sheeeeee'),
(53, 'shraddha'),
(5, 'Snehalataganj'),
(1, 'Swarna Vatika'),
(7, 'Vijay Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_missingpets`
--

CREATE TABLE IF NOT EXISTS `wp_ju_missingpets` (
  `owner_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_type` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pet_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pet_breed` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pet_color` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pet_height` int(6) NOT NULL,
  `pet_photo_name` varchar(2048) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pet_photo_uploadedon` varchar(65) DEFAULT NULL,
  `pet_location` varchar(255) NOT NULL,
  `pet_missing_date` date NOT NULL,
  `pet_status` tinyint(8) NOT NULL,
  PRIMARY KEY (`pet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_ju_missingpets`
--

INSERT INTO `wp_ju_missingpets` (`owner_id`, `pet_id`, `pet_type`, `pet_name`, `pet_breed`, `pet_color`, `pet_height`, `pet_photo_name`, `pet_photo_uploadedon`, `pet_location`, `pet_missing_date`, `pet_status`) VALUES
(31, 6, 'dog', 'caty', 'pamerian', 'white', 3, NULL, NULL, '', '2015-04-07', 0),
(34, 7, '', 'pu bear', '', '', 7, NULL, NULL, '', '0000-00-00', 0),
(35, 8, 'bear', 'pu bear', 'chimpanji', 'red ', 7, NULL, NULL, '', '2012-02-29', 0),
(36, 9, 'dog', 'sumo', 'bulldog', '#400080', 2, NULL, NULL, '', '2015-04-08', 0),
(37, 10, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0),
(38, 11, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0),
(39, 12, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0),
(40, 13, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0),
(41, 14, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0),
(42, 15, '', '', '', '', 0, NULL, NULL, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_ngo_info`
--

CREATE TABLE IF NOT EXISTS `wp_ju_ngo_info` (
  `ngo_id` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_name` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngo_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngo_contact_no1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngo_contact_no2` varchar(255) DEFAULT NULL,
  `ngo_contact_no3` varchar(255) DEFAULT NULL,
  `ngo_location_id` int(11) NOT NULL,
  `ngo_email` varchar(255) NOT NULL,
  `ngo_website` varchar(2048) NOT NULL,
  PRIMARY KEY (`ngo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `wp_ju_ngo_info`
--

INSERT INTO `wp_ju_ngo_info` (`ngo_id`, `ngo_name`, `ngo_address`, `ngo_contact_no1`, `ngo_contact_no2`, `ngo_contact_no3`, `ngo_location_id`, `ngo_email`, `ngo_website`) VALUES
(1, 'Friends of Animal', '14 m.i.g teen puliya nanda nagar I.f.o sugnidevi girls coll.indore452 011,M.P', '+91 (731) 2559618', NULL, NULL, 16, '', ''),
(2, 'People for Animals', '655 ,Mg Road Krishnapura INDORE 452 001,M.P', '+ 91 (731) 2538082', NULL, NULL, 17, '', ''),
(3, 'Utkarssh Samajik Utthan Samiti', '106/ A, Ayodhyapuri Colony, Kodariya, Mhow, Dist- Indore, Mhow, Indore - 453441', '+(91)-9826324446', '+(91)-731-220370', NULL, 18, '', ''),
(4, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(5, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(6, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(7, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(8, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(9, 'shraddhaNGO9966', '', '', NULL, NULL, 0, '', ''),
(10, 'shraddhaNGO9966', '', '', NULL, NULL, 0, '', ''),
(11, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(12, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(13, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(14, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(15, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(16, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(17, 'shraddhaNGO9966', '', '', NULL, NULL, 0, '', ''),
(18, 'shraddhaNGO9966', '', '', NULL, NULL, 0, '', ''),
(19, 'shraddhaNGO6', '', '', NULL, NULL, 0, '', ''),
(20, 'shraddhaNGO6', '', '', NULL, NULL, 0, '', ''),
(21, 'shraddhaNGO563', '', '', NULL, NULL, 0, '', ''),
(22, 'shraddhaNGO563', '', '', NULL, NULL, 0, '', ''),
(23, 'shraddhaNGO99661', '', '', NULL, NULL, 0, '', ''),
(24, 'shraddhaNGO99661', '', '', NULL, NULL, 0, '', ''),
(25, 'shraddhaNGO996656', '', '', NULL, NULL, 0, '', ''),
(26, 'shraddhaNGO996656', '', '', NULL, NULL, 0, '', ''),
(27, 'shraddhaNGO1596', '', '', NULL, NULL, 0, '', ''),
(28, 'shraddhaNGO1596', '', '', NULL, NULL, 0, '', ''),
(29, 'shraddhaNGO256', '', '', NULL, NULL, 0, '', ''),
(30, 'shraddhaNGO256', '', '', NULL, NULL, 0, '', ''),
(31, 'shraddhaNGO7777', '', '', NULL, NULL, 0, '', ''),
(32, 'shraddhaNGO7777', '', '', NULL, NULL, 0, '', ''),
(33, 'shraddhaNGO1111', '', '', NULL, NULL, 0, '', ''),
(34, 'shraddhaNGO1111', '', '', NULL, NULL, 0, '', ''),
(35, 'shraddhaNGO2563', '', '', NULL, NULL, 0, '', ''),
(36, 'shraddhaNGO2563', '', '', NULL, NULL, 0, '', ''),
(37, 'shraddhaNGO96321', '', '', NULL, NULL, 0, '', ''),
(38, '', '', '', NULL, NULL, 0, '', ''),
(39, '', '', '', NULL, NULL, 0, '', ''),
(40, 'shraddhaNGO', '', '', NULL, NULL, 0, '', ''),
(41, 'shraddhaNGO1236', '527vijay nagar', '+91', '+91', '+91', 0, 'sbhurre@gmail.com', 'jdhsajhdjsdghsdghsgd'),
(42, 'shraddhaNGO9966', 'djhgjshj', '2552781', '2552786', '2552489', 0, 'djhjhks@ndhj', 'dsyisjdg'),
(43, 'shraddhaNGO2222', 'dhfwjkdsnkj', 'kdcdskjchd', 'djcfsdjchj', 'jdhjsdhk', 0, 'jhdihdkhijj@fdghh', 'jdhudyuuiowkl'),
(44, 'shraddhaNGO2369585', 'dhhkkk2563njj', '594232', '148562', '145853', 0, 'khkjbkjgjb@mhjlij', 'vinhfjlknnhjk'),
(45, 'shraddhaNGO', '527vni', '2552781', '2552783', '2552782', 0, 'nhjik@njmklo', 'njllllllllllooooooollllll'),
(46, 'shraddhaNGO9966', '5278lkkk', '2552896', '2552486', '25633', 0, 'jhiuhnk@kjkm', 'hjmnkjklm,m,m'),
(47, 'shraddhaNGO', '527llo', '25528963', '2552963', '255648', 11, 'hjhdkiou@jhuh', 'hghjmdfghjt'),
(48, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(49, '', '', '', '', '', 0, '', ''),
(50, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(51, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(52, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(53, 'shraddhaNGO9966', '', '', '', '', 0, '', ''),
(54, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(55, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(56, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(57, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(58, 'shraddhaNGO2233', '', '', '', '', 0, '', ''),
(59, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(60, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(61, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(62, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(63, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(64, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(65, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(66, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(67, 'shraddhaNGO12', '', '', '', '', 0, '', ''),
(68, 'shraddhaNGO13', '', '', '', '', 0, '', ''),
(69, 'shraddhaNGO14', '', '', '', '', 0, '', ''),
(70, 'shraddhaNGO15', '', '', '', '', 0, '', ''),
(71, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(72, 'shraddhaNGO25', '', '', '', '', 0, '', ''),
(73, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(74, 'shraddhaNGO19', '', '', '', '', 0, '', ''),
(75, 'shraddhaNGO20', '', '', '', '', 0, '', ''),
(76, 'shraddhaNGO21', '', '', '', '', 0, '', ''),
(77, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(78, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(79, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(80, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(81, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(82, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(83, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(84, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(85, 'shraddhaNGO', '', '', '', '', 0, '', ''),
(86, 'shraddhaNGO563', '', '', '', '', 48, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_petowner_info`
--

CREATE TABLE IF NOT EXISTS `wp_ju_petowner_info` (
  `owner_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_contact_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_contact_cc` int(8) NOT NULL,
  `owner_email_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_city` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_q_no` int(8) NOT NULL,
  `owner_q_answer` varchar(100) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `wp_ju_petowner_info`
--

INSERT INTO `wp_ju_petowner_info` (`owner_id`, `owner_name`, `owner_contact_no`, `owner_contact_cc`, `owner_email_id`, `owner_address`, `owner_city`, `owner_q_no`, `owner_q_answer`) VALUES
(31, 'david', '3258964756', 0, 'david@gmail.com', 'pakasia', 'indore', 0, ''),
(32, 'david', '4294967295', 0, 'david@john.com', 'palasia', 'indore', 0, ''),
(33, 'david', '4294967295', 0, 'david@john.com', 'palasia', 'indore', 0, ''),
(34, '', '', 0, '', '', '', 0, ''),
(35, 'vaibhav vishwakarma', '9165842421', 0, 'vishwakarma9vaibhav@gmail.com', '177satyam vihar colony', 'indore', 0, ''),
(36, 'lisa', '2578964521', 0, 'lisa@gmail.com', 'nvsdvnmdsvnds', 'dewas', 0, ''),
(37, '', '', 0, 'csacassasfafsfa@sscs', '', '', 0, ''),
(38, '', '', 0, 'csacassasfafsfa@sscs', '', '', 0, ''),
(39, 'kjkbjb', '', 0, '', '', '', 0, ''),
(40, ' wmmw ', '', 0, '', '', '', 0, ''),
(41, 'dcdscds', '', 0, '', '', '', 0, ''),
(42, 'gtrgrfvef', '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ju_vets_info`
--

CREATE TABLE IF NOT EXISTS `wp_ju_vets_info` (
  `vet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vet_name` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vet_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vet_clinic_no` varchar(255) DEFAULT NULL,
  `vet_mobile_no1` varchar(255) NOT NULL,
  `vet_mobile_no2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vet_location_id` int(11) NOT NULL,
  `vet_email` varchar(255) NOT NULL,
  `vet_website` varchar(2048) NOT NULL,
  PRIMARY KEY (`vet_id`),
  UNIQUE KEY `vet_name` (`vet_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `wp_ju_vets_info`
--

INSERT INTO `wp_ju_vets_info` (`vet_id`, `vet_name`, `vet_address`, `vet_clinic_no`, `vet_mobile_no1`, `vet_mobile_no2`, `vet_location_id`, `vet_email`, `vet_website`) VALUES
(1, 'Goswami Dr Gopalgiri Ishwargiri', '58,Swarna Vatika, Indore-452001', NULL, '+919425380061', NULL, 1, '', ''),
(2, 'Marudkar Dr Shashikant', '24, Ravindra Nagar, Indore-452001', NULL, '+91-731-2491951', NULL, 2, '', ''),
(3, 'Pet Clinic', 'Mishra Nagar,Annapurna Moneyarcade Building, Indore-452009', NULL, '+919827206486', NULL, 3, '', ''),
(4, 'Poulvet Consultants', 'Prem Plaza,Shop No 10,5-6,Ashok Nagar,Bhanwarkua Main Road, Indore-452009', NULL, '+919826029298', NULL, 4, '', ''),
(5, 'Divisional Veterinary Hospital', '19/4,Snehalataganj, Indore-452003', NULL, '\r\n+91-731-2543312', NULL, 5, '', ''),
(6, 'Pet Aid', 'Ug - 8, Suniket Apartment, Khajrana Road, Indore-452018', NULL, '\r\n+919827048269', NULL, 6, '', ''),
(7, 'Pet Care Centre', 'Fh 172,Scheme No 54,Vijaya Nagar, Indore-452010', NULL, '+91-731-2555858', NULL, 7, '', ''),
(8, 'Sharma Dr J M', '35, Radio Coly, Indore-452001', NULL, '+91-731-2702077', NULL, 8, '', ''),
(9, 'Rajani Jain', '29/4, Pardeshipura, Indore-452008', NULL, '+91-731-2556126', NULL, 9, '', ''),
(10, 'Jain Dr Sanjay', '24, Palasia New, Indore-452001', NULL, '+91-731-2530035', NULL, 15, '', ''),
(11, 'Latif Dr Abdul', '16/2, Saking Apartment, Manik Baug Rd, Indore-452009', NULL, '\r\n+91-731-2465349', NULL, 10, '', ''),
(12, 'Jain Dr Rajendra D', '29/4, Pradeshipura, Indore-452008', NULL, '+91-731-2556126', NULL, 9, '', ''),
(13, 'The Pet''s Clinic', 'Ug - 1, Chanaky Square, Saket Square, Anand Bazar, Khajrana Main Road, Shrinagar, Indore-452018', NULL, '\r\n+919826018283', NULL, 11, '', ''),
(14, 'Dr B S Chadha', 'C - 10, Pathipura Main Road, Hig Colony, Near Uco Bank Atm, Indore-452008', NULL, '\r\n+91-731-6563006', NULL, 12, '', ''),
(15, 'Ratnawat Clinic', '19/4, Veternary Hospital, Snehlataganj, Indore-452003', NULL, '\r\n+91-731-2432807', NULL, 5, '', ''),
(16, 'Bhindwale Dr Sunil', '10, Rajgharana Apartment, Diamond Coly, Indore-452001', NULL, '\r\n+91-731-2432200', NULL, 13, '', ''),
(17, 'Vyas Dr Manish', '23,Lalaram Nagar, Indore-452001', NULL, '+919977609132', NULL, 14, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=620 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jeev-uthan', 'yes'),
(2, 'home', 'http://localhost/jeev-uthan', 'yes'),
(3, 'blogname', 'jeev-uthan', 'yes'),
(4, 'blogdescription', 'help for animals', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shraddhabhurre@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '2', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:18:"spider-faq/faq.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:73:"F:\\wamp\\www\\jeev-uthan/wp-content/plugins/custom-database-tables/cdbt.php";i:1;s:87:"F:\\wamp\\www\\jeev-uthan/wp-content/plugins/data-collection-form/data-collection-form.php";i:2;s:0:"";}', 'no'),
(41, 'template', 'twentyfourteen', 'yes'),
(42, 'stylesheet', 'twentyfourteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '0', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1430500401;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430508240;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430515605;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430558860;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', 'a4cd06c52dafa469a6dbf99f1440dd7a', 'yes'),
(99, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1430483825;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(100, 'auth_key', '(LeMZ,E@pGWcpaLe]&`~]Vj|PP8Wv2Y:jQ4&T@kyLPTP7@4V,i.(1VxBrG.!fTA~', 'yes'),
(101, 'auth_salt', '-$?qR/FfX8:K6!5T>Y5~7crk](NqPK%pJ@cxB1@GmSc}.4$~Id0eMsb}IaE03M$k', 'yes'),
(102, 'logged_in_key', ' &;{*!S=jA3d1bhUFep0.rz;-h7{*/JMjf|=0xUE6ssx3(p_lDl<KXBE)N)3Z&=_', 'yes'),
(104, 'logged_in_salt', 'V%k5xqmL+RL:,ho^rde[42#tu`:9Be{)wMNe,[~Te)N4 vdEA kVd*zaK%c:wh9_', 'yes'),
(106, 'nonce_key', 'u?=_VKb9 ~Eib5F&4s]]XDer:K(~j@l4y2>gXTUx+!#;w> z$!pKf{}S#]6:GkF,', 'yes'),
(107, 'nonce_salt', '>AmOZy8U4^|?vIy`lnw7>DslX!+G6S,ZR)_wp_11k(]x64?nZpcsf%eCCcuLh<sb', 'yes'),
(111, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1429863771;s:7:"checked";a:4:{s:7:"hellain";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_timeout_browser_42f68223d6d514f4462f3044b80812af', '1427275628', 'yes'),
(114, '_site_transient_browser_42f68223d6d514f4462f3044b80812af', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"41.0.2272.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(115, 'can_compress_scripts', '1', 'yes'),
(150, 'category_children', 'a:1:{i:2;a:1:{i:0;i:6;}}', 'yes'),
(200, 'recently_activated', 'a:1:{s:24:"wp-awesome-faq/index.php";i:1429703594;}', 'yes'),
(204, 'revisr_db_version', '1.1', 'yes'),
(205, '_transient_timeout_revisr_alert', '1427819040', 'no'),
(206, '_transient_revisr_alert', 'Thanks for installing Revisr! No Git repository was detected, <a href="http://localhost/jeev-uthan/wp-admin/admin-post.php?action=init_repo&amp;revisr_init_nonce=c438ed367c">click here</a> to create one.', 'no'),
(207, 'revisr_general_settings', 'a:5:{s:8:"username";s:14:"shraddhabhurre";s:5:"email";s:24:"shraddhabhurre@gmail.com";s:9:"gitignore";s:0:"";s:17:"automatic_backups";s:5:"daily";s:13:"notifications";s:2:"on";}', 'yes'),
(213, 'revisr_database_settings', 'a:5:{s:11:"db_tracking";s:10:"all_tables";s:8:"reset_db";s:2:"on";s:9:"import_db";s:2:"on";s:15:"development_url";s:0:"";s:10:"mysql_path";s:0:"";}', 'yes'),
(221, 'custom-database-tables', 'a:10:{s:14:"plugin_version";s:6:"1.1.15";s:10:"db_version";d:1.1999999999999999555910790149937383830547332763671875;s:13:"use_wp_prefix";b:1;s:7:"charset";s:4:"utf8";s:8:"timezone";s:0:"";s:16:"cleaning_options";b:1;s:17:"uninstall_options";b:0;s:14:"resume_options";b:0;s:7:"api_key";a:0:{}s:6:"tables";a:2:{i:0;a:7:{s:10:"table_name";s:20:"cdbt_schema_template";s:10:"table_type";s:16:"controller_table";s:3:"sql";s:559:"CREATE TABLE `cdbt_schema_template` (\r\n							`ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT ''ID'',\r\n							{%column_definition%}\r\n							`created` datetime NOT NULL DEFAULT ''0000-00-00 00:00:00'' COMMENT ''Created Date'',\r\n							`updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT ''Updated Date'',\r\n							PRIMARY KEY (`ID`)\r\n							{%keyindex_definition%}\r\n							{%reference_definition%}\r\n						) ENGINE=%s DEFAULT CHARSET=%s COMMENT=''Custom Database Tables Controller'' AUTO_INCREMENT=1 \r\n						{%table_options%} ;";s:9:"db_engine";s:6:"InnoDB";s:16:"show_max_records";i:10;s:5:"roles";a:4:{s:9:"view_role";s:1:"9";s:10:"input_role";s:1:"9";s:9:"edit_role";s:1:"9";s:10:"admin_role";s:1:"9";}s:14:"display_format";a:0:{}}i:1;a:7:{s:10:"table_name";s:7:"wp_info";s:10:"table_type";s:12:"enable_table";s:3:"sql";s:368:"CREATE TABLE `wp_info` (\n  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT ''ID'',\n  `name` int(11) DEFAULT NULL,\n  `created` datetime NOT NULL DEFAULT ''0000-00-00 00:00:00'' COMMENT ''Created Date'',\n  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT ''Updated Date'',\n  PRIMARY KEY (`ID`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8";s:9:"db_engine";s:6:"InnoDB";s:16:"show_max_records";i:10;s:5:"roles";a:4:{s:9:"view_role";s:1:"1";s:10:"input_role";s:1:"5";s:9:"edit_role";s:1:"7";s:10:"admin_role";s:1:"9";}s:14:"display_format";a:3:{s:2:"ID";a:5:{i:0;s:7:"require";i:1;s:4:"none";i:2;s:0:"";i:3;s:0:"";i:4;s:7:"integer";}s:7:"created";a:5:{i:0;s:7:"require";i:1;s:4:"none";i:2;s:0:"";i:3;s:0:"";i:4;s:4:"date";}s:7:"updated";a:5:{i:0;s:7:"require";i:1;s:4:"none";i:2;s:0:"";i:3;s:0:"";i:4;s:4:"date";}}}}}', 'no'),
(287, 'current_theme', 'Twenty Fourteen', 'yes'),
(288, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(289, 'theme_switched', '', 'yes'),
(299, '_transient_timeout_revisr_error', '1427796504', 'no'),
(300, '_transient_revisr_error', 'Error backing up the database.', 'no'),
(305, 'ugf_db_version', '2.5', 'yes'),
(430, '_site_transient_timeout_browser_fcafacbd45d45d703b879170d0407b60', '1429176781', 'yes'),
(431, '_site_transient_browser_fcafacbd45d45d703b879170d0407b60', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"40.0.2214.45";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(453, 'theme_mods_Elegant', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428927983;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(455, 'WPLANG', '', 'yes'),
(484, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(494, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428755965;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(511, '_site_transient_timeout_browser_2edad82b0f98d984bd675835c9c399f5', '1429462248', 'yes'),
(512, '_site_transient_browser_2edad82b0f98d984bd675835c9c399f5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"36.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(516, 'theme_mods_hellain', 'a:4:{i:0;b:0;s:16:"background_color";s:6:"e8e8e8";s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429177411;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(517, 'hellain_theme_logo', 'http://localhost/jeev-uthan/wp-content/themes/hellain/images/logo.png', 'yes'),
(518, 'hellain_theme_ads_125', 'hello', 'yes'),
(519, 'hellain_theme_head', '', 'yes'),
(520, 'hellain_theme_footer', '', 'yes'),
(521, 'hellain_theme_options', 'yes', 'yes'),
(531, '_site_transient_timeout_browser_905c39e6863b9e53e07e5a02e5c19b17', '1429614875', 'yes'),
(532, '_site_transient_browser_905c39e6863b9e53e07e5a02e5c19b17', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(561, '_site_transient_timeout_wporg_theme_feature_list', '1429188339', 'yes'),
(562, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(563, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429177424;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(567, '_site_transient_timeout_browser_28a852a08789958a28a252919317792b', '1429786161', 'yes'),
(568, '_site_transient_browser_28a852a08789958a28a252919317792b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(574, '_site_transient_timeout_browser_837ac6e56c8bf9987e4fbaa5079e156e', '1430307185', 'yes'),
(575, '_site_transient_browser_837ac6e56c8bf9987e4fbaa5079e156e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(581, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1429713198', 'yes'),
(582, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5134";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3220";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3147";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2669";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2462";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1975";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1854";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1809";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1756";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1743";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1701";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1696";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1589";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1381";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1338";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1267";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1196";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1131";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1129";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"990";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"954";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"918";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"873";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"866";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"852";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"837";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"796";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"772";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"744";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"727";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"717";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"706";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"680";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"678";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"669";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"659";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"638";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"629";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"627";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"624";}}', 'yes'),
(587, 'faq_cat_children', 'a:0:{}', 'yes'),
(592, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1429863770;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:31:"custom-database-tables/cdbt.php";O:8:"stdClass":6:{s:2:"id";s:5:"50838";s:4:"slug";s:22:"custom-database-tables";s:6:"plugin";s:31:"custom-database-tables/cdbt.php";s:11:"new_version";s:6:"1.1.15";s:3:"url";s:53:"https://wordpress.org/plugins/custom-database-tables/";s:7:"package";s:71:"http://downloads.wordpress.org/plugin/custom-database-tables.1.1.15.zip";}s:45:"data-collection-form/data-collection-form.php";O:8:"stdClass":6:{s:2:"id";s:5:"52855";s:4:"slug";s:20:"data-collection-form";s:6:"plugin";s:45:"data-collection-form/data-collection-form.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:51:"https://wordpress.org/plugins/data-collection-form/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/data-collection-form.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:18:"spider-faq/faq.php";O:8:"stdClass":6:{s:2:"id";s:5:"38832";s:4:"slug";s:10:"spider-faq";s:6:"plugin";s:18:"spider-faq/faq.php";s:11:"new_version";s:5:"1.1.7";s:3:"url";s:41:"https://wordpress.org/plugins/spider-faq/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/spider-faq.1.1.7.zip";}s:24:"wp-awesome-faq/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"41766";s:4:"slug";s:14:"wp-awesome-faq";s:6:"plugin";s:24:"wp-awesome-faq/index.php";s:11:"new_version";s:5:"1.5.0";s:3:"url";s:45:"https://wordpress.org/plugins/wp-awesome-faq/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/wp-awesome-faq.zip";}}}', 'yes'),
(608, '_site_transient_timeout_theme_roots', '1429865570', 'yes'),
(609, '_site_transient_theme_roots', 'a:4:{s:7:"hellain";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(610, '_transient_timeout_plugin_slugs', '1429950173', 'no'),
(611, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:31:"custom-database-tables/cdbt.php";i:2;s:45:"data-collection-form/data-collection-form.php";i:3;s:9:"hello.php";i:4;s:18:"spider-faq/faq.php";i:5;s:24:"wp-awesome-faq/index.php";}', 'no'),
(612, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1429906973', 'no'),
(613, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(617, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(618, '_transient_is_multi_author', '0', 'yes'),
(619, '_transient_twentyfourteen_category_count', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/FAQ.php'),
(2, 1, '_edit_lock', '1428747971:1'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1426936156:1'),
(5, 9, '_wp_attached_file', '2015/03/fb_icon.png'),
(6, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:325;s:6:"height";i:325;s:4:"file";s:19:"2015/03/fb_icon.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"fb_icon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"fb_icon-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(7, 9, '_wp_attachment_image_alt', 'facebook'),
(8, 15, '_wp_attached_file', '2015/03/4_ple2-00000897-001.jpg'),
(9, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:31:"2015/03/4_ple2-00000897-001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"4_ple2-00000897-001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"4_ple2-00000897-001-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"4_ple2-00000897-001-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"4_ple2-00000897-001-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(10, 16, '_wp_attached_file', '2015/03/5_ABQ_0806.jpg'),
(11, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:22:"2015/03/5_ABQ_0806.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"5_ABQ_0806-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"5_ABQ_0806-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"5_ABQ_0806-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"5_ABQ_0806-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(12, 17, '_wp_attached_file', '2015/03/7.jpg'),
(13, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:592;s:4:"file";s:13:"2015/03/7.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:13:"7-800x510.jpg";s:5:"width";i:800;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 18, '_wp_attached_file', '2015/03/8_100707.jpg'),
(15, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:20:"2015/03/8_100707.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"8_100707-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"8_100707-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"8_100707-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"8_100707-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(16, 19, '_wp_attached_file', '2015/03/11_090422_17.jpg'),
(17, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:24:"2015/03/11_090422_17.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"11_090422_17-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"11_090422_17-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"11_090422_17-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"11_090422_17-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(18, 20, '_wp_attached_file', '2015/03/26.jpg'),
(19, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:722;s:6:"height";i:483;s:4:"file";s:14:"2015/03/26.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"26-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"26-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(20, 5, '_thumbnail_id', '19'),
(21, 25, 'branch', ''),
(22, 25, 'commit_hash', ''),
(23, 25, 'files_changed', '0'),
(24, 25, 'committed_files', 'a:0:{}'),
(25, 25, 'db_hash', ''),
(26, 27, 'branch', ''),
(27, 27, 'commit_hash', ''),
(28, 27, 'files_changed', '0'),
(29, 27, 'committed_files', 'a:0:{}'),
(30, 27, 'db_hash', ''),
(31, 28, 'branch', ''),
(32, 28, 'commit_hash', ''),
(33, 28, 'files_changed', '0'),
(34, 28, 'committed_files', 'a:0:{}'),
(35, 28, 'db_hash', ''),
(36, 29, 'branch', ''),
(37, 29, 'commit_hash', ''),
(38, 29, 'files_changed', '0'),
(39, 29, 'committed_files', 'a:0:{}'),
(40, 29, 'db_hash', ''),
(41, 2, '_edit_lock', '1429704331:1'),
(42, 31, '_edit_last', '1'),
(43, 31, '_edit_lock', '1429181383:1'),
(44, 33, 'branch', ''),
(45, 33, 'commit_hash', ''),
(46, 33, 'files_changed', '0'),
(47, 33, 'committed_files', 'a:0:{}'),
(48, 33, 'db_hash', ''),
(49, 39, '_edit_last', '1'),
(50, 39, '_wp_page_template', 'page-templates/missinganimal.php'),
(51, 39, '_edit_lock', '1429181419:1'),
(52, 31, '_wp_page_template', 'page-templates/About-Us.php'),
(53, 42, '_edit_last', '1'),
(54, 42, '_wp_page_template', 'page-templates/Contact-Us.php'),
(55, 42, '_edit_lock', '1429181390:1'),
(56, 2, '_edit_last', '1'),
(57, 49, '_edit_last', '1'),
(58, 49, '_wp_page_template', 'page-templates/Jeev-Uthan.php'),
(59, 49, '_edit_lock', '1428739482:1'),
(62, 70, '_edit_last', '1'),
(63, 70, '_edit_lock', '1428752806:1'),
(64, 70, '_wp_page_template', 'page-templates/uploadimage.php'),
(65, 73, '_edit_last', '1'),
(66, 73, '_edit_lock', '1428857855:1'),
(67, 74, '_menu_item_type', 'post_type'),
(68, 74, '_menu_item_menu_item_parent', '0'),
(69, 74, '_menu_item_object_id', '70'),
(70, 74, '_menu_item_object', 'page'),
(71, 74, '_menu_item_target', ''),
(72, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 74, '_menu_item_xfn', ''),
(74, 74, '_menu_item_url', ''),
(75, 74, '_menu_item_orphaned', '1428908930'),
(76, 76, '_edit_last', '1'),
(77, 76, '_edit_lock', '1429181410:1'),
(78, 76, '_wp_page_template', 'page-templates/Jeev-Uthan.php'),
(79, 49, '_wp_trash_meta_status', 'publish'),
(80, 49, '_wp_trash_meta_time', '1429181401'),
(81, 80, '_edit_last', '1'),
(82, 80, '_edit_lock', '1429181304:1'),
(83, 80, '_wp_page_template', 'page-templates/demo.php'),
(84, 82, '_edit_last', '1'),
(85, 82, '_edit_lock', '1429702732:1'),
(86, 84, '_edit_last', '1'),
(87, 84, '_edit_lock', '1429703082:1'),
(88, 87, '_edit_last', '1'),
(89, 87, '_edit_lock', '1429705591:1'),
(90, 87, '_wp_page_template', 'default'),
(91, 91, '_edit_last', '1'),
(92, 91, '_edit_lock', '1429778041:1'),
(93, 91, '_wp_page_template', 'page-templates/Reg.php'),
(94, 93, '_edit_last', '1'),
(95, 93, '_edit_lock', '1429863926:1'),
(96, 93, '_wp_page_template', 'page-templates/Reg.php'),
(97, 93, '_wp_trash_meta_status', 'publish'),
(98, 93, '_wp_trash_meta_time', '1429864266');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-18 09:26:31', '2015-03-18 09:26:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-18 09:26:31', '2015-03-18 09:26:31', '', 0, 'http://localhost/jeev-uthan/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-18 09:26:31', '2015-03-18 09:26:31', '[Spider_FAQ id="1" ][Spider_FAQ id="2" ]', 'FAQ', '', 'publish', 'open', 'closed', '', 'faq-2', '', '', '2015-04-22 12:07:48', '2015-04-22 12:07:48', '', 0, 'http://localhost/jeev-uthan/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-03-19 16:54:04', '2015-03-19 16:54:04', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'hello shraddha', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2015-03-19 16:54:04', '2015-03-19 16:54:04', '', 1, 'http://localhost/jeev-uthan/?p=4', 0, 'revision', '', 0),
(5, 1, '2015-03-19 17:31:09', '2015-03-19 17:31:09', '<h1>Android Versions</h1>\r\n&nbsp;\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n[caption id="attachment_9" align="alignright" width="150"]<img class="wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /> goto facebook[/caption]\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_17" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/7.jpg"><img class="size-medium wp-image-17" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/7-300x222.jpg" alt="sea" width="300" height="222" /></a> sea[/caption]\r\n\r\n[caption id="attachment_20" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/26.jpg"><img class="size-medium wp-image-20" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/26-300x201.jpg" alt="view" width="300" height="201" /></a> view[/caption]\r\n\r\n[caption id="attachment_19" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/11_090422_17.jpg"><img class="size-medium wp-image-19" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/11_090422_17-300x188.jpg" alt="lotus" width="300" height="188" /></a> lotus[/caption]\r\n\r\n[caption id="attachment_18" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/8_100707.jpg"><img class="size-medium wp-image-18" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/8_100707-300x188.jpg" alt="glass" width="300" height="188" /></a> glass[/caption]\r\n\r\n[caption id="attachment_16" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/5_ABQ_0806.jpg"><img class="size-medium wp-image-16" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/5_ABQ_0806-300x188.jpg" alt="flowers" width="300" height="188" /></a> flowers[/caption]\r\n\r\n[caption id="attachment_15" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/4_ple2-00000897-001.jpg"><img class="size-medium wp-image-15" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/4_ple2-00000897-001-300x188.jpg" alt="hotel" width="300" height="188" /></a> hotel[/caption]\r\n\r\n<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png"><img class="aligncenter size-medium wp-image-9" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-300x300.png" alt="facebook" width="300" height="300" /></a>\r\n\r\n&nbsp;', 'Do you know about Android Version History?', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-21 10:45:24', '2015-03-21 10:45:24', '', 0, 'http://localhost/jeev-uthan/?p=5', 0, 'post', '', 0),
(6, 1, '2015-03-19 17:24:09', '2015-03-19 17:24:09', 'The version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·         Alpha (1.0)\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-19 17:24:09', '2015-03-19 17:24:09', '', 5, 'http://localhost/jeev-uthan/?p=6', 0, 'revision', '', 0),
(7, 1, '2015-03-21 09:57:15', '2015-03-21 09:57:15', 'The version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 09:57:15', '2015-03-21 09:57:15', '', 5, 'http://localhost/jeev-uthan/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-03-21 10:10:46', '2015-03-21 10:10:46', '<h1>Android Versions</h1>\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:10:46', '2015-03-21 10:10:46', '', 5, 'http://localhost/jeev-uthan/?p=8', 0, 'revision', '', 0),
(9, 1, '2015-03-21 10:12:02', '2015-03-21 10:12:02', '', 'fb_icon', '', 'inherit', 'open', 'open', '', 'fb_icon', '', '', '2015-03-21 10:14:34', '2015-03-21 10:14:34', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2015-03-21 10:18:32', '2015-03-21 10:18:32', '<h1>Android Versions</h1>\r\n<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png"><img class="aligncenter size-medium wp-image-9" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-300x300.png" alt="facebook" width="300" height="300" /></a>The version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:18:32', '2015-03-21 10:18:32', '', 5, 'http://localhost/jeev-uthan/?p=10', 0, 'revision', '', 0),
(11, 1, '2015-03-21 10:19:29', '2015-03-21 10:19:29', '<h1>Android Versions</h1>\r\n<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png"><img class="alignright wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /></a>The version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:19:29', '2015-03-21 10:19:29', '', 5, 'http://localhost/jeev-uthan/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-03-21 10:20:05', '2015-03-21 10:20:05', '<h1>Android Versions</h1>\r\n[caption id="attachment_9" align="alignright" width="150"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png"><img class="wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /></a> goto facebook[/caption]\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:20:05', '2015-03-21 10:20:05', '', 5, 'http://localhost/jeev-uthan/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-03-21 10:21:24', '2015-03-21 10:21:24', '<h1>Android Versions</h1>\r\n&nbsp;\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n·         Beta (<img class="alignright wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" />1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:21:24', '2015-03-21 10:21:24', '', 5, 'http://localhost/jeev-uthan/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-03-21 10:21:43', '2015-03-21 10:21:43', '<h1>Android Versions</h1>\r\n&nbsp;\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n[caption id="attachment_9" align="alignright" width="150"]<img class="wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /> goto facebook[/caption]\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:21:43', '2015-03-21 10:21:43', '', 5, 'http://localhost/jeev-uthan/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-03-21 10:30:35', '2015-03-21 10:30:35', '', 'pic1', 'hotel', 'inherit', 'open', 'open', '', '4_ple2-00000897-001', '', '', '2015-03-21 10:31:15', '2015-03-21 10:31:15', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/4_ple2-00000897-001.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2015-03-21 10:30:37', '2015-03-21 10:30:37', '', 'pic2', 'flowers', 'inherit', 'open', 'open', '', '5_abq_0806', '', '', '2015-03-21 10:31:38', '2015-03-21 10:31:38', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/5_ABQ_0806.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-03-21 10:30:39', '2015-03-21 10:30:39', '', 'pic3', 'sea', 'inherit', 'open', 'open', '', '7', '', '', '2015-03-21 10:31:51', '2015-03-21 10:31:51', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-03-21 10:30:40', '2015-03-21 10:30:40', '', 'pic4', 'glass', 'inherit', 'open', 'open', '', '8_100707', '', '', '2015-03-21 10:32:20', '2015-03-21 10:32:20', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/8_100707.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-03-21 10:30:41', '2015-03-21 10:30:41', '', 'pic5', 'lotus', 'inherit', 'open', 'open', '', '11_090422_17', '', '', '2015-03-21 10:32:35', '2015-03-21 10:32:35', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/11_090422_17.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-03-21 10:30:43', '2015-03-21 10:30:43', '', 'pic6', 'view', 'inherit', 'open', 'open', '', '26', '', '', '2015-03-21 10:32:57', '2015-03-21 10:32:57', '', 5, 'http://localhost/jeev-uthan/wp-content/uploads/2015/03/26.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2015-03-21 10:34:19', '2015-03-21 10:34:19', '<h1>Android Versions</h1>\r\n&nbsp;\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n[caption id="attachment_9" align="alignright" width="150"]<img class="wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /> goto facebook[/caption]\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:34:19', '2015-03-21 10:34:19', '', 5, 'http://localhost/jeev-uthan/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-03-21 10:35:09', '2015-03-21 10:35:09', '<h1>Android Versions</h1>\r\n&nbsp;\r\n\r\nThe version history of the Android mobile operating system began with the release of the Android beta in November 2007. The first commercial version, Android 1.0, was released in September 2008. Android is under ongoing development by Google and the Open Handset Alliance (OHA){ The Open Handset Alliance (OHA) is a consortium[A consortium is an association of two or more individuals, companies, organizations or governments (or any combination of these entities) with the objective of participating in a common activity or pooling their resources for achieving a common goal.] of 84[1] firms to develop open standards for mobile devices. Member firms include Google, HTC, Sony, Dell, Intel, Motorola, Qualcomm, Texas Instruments, Samsung Electronics, LG Electronics, T-Mobile,Sprint Corporation, Nvidia, and Wind River Systems.[2]}, and has seen a number of updates to its base operating system since its initial release.\r\n\r\nSince April 2009, Android versions have been developed under a confectionery-themed code name and released in alphabetical order; the exceptions are versions 1.0 and 1.1 as they were not released under specific code names:\r\n\r\n·       <a title="meuseum" href="http://africa.si.edu/" target="_blank">  Alpha (1.0)</a>\r\n\r\n[caption id="attachment_9" align="alignright" width="150"]<img class="wp-image-9 size-thumbnail" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-150x150.png" alt="facebook" width="150" height="150" /> goto facebook[/caption]\r\n\r\n·         Beta (1.1)\r\n\r\n·         Cupcake (1.5)\r\n\r\n·         Donut (1.6)\r\n\r\n·         Eclair (2.0–2.1)\r\n\r\n·         Froyo (2.2–2.2.3)\r\n\r\n·         Gingerbread (2.3–2.3.7)\r\n\r\n·         Honeycomb (3.0–3.2.6)\r\n\r\n·         Ice Cream Sandwich (4.0–4.0.4)\r\n\r\n·         Jelly Bean (4.1–4.3.1)\r\n\r\n·         KitKat (4.4–4.4.4)\r\n\r\n·         Lollipop (5.0–5.0.2)\r\n\r\n&nbsp;\r\n\r\nOn September 3, 2013, Google announced that one billion activated devices now use the Android OS worldwide.[1] The most recent major Android update was Lollipop 5.0, which was released on November 3, 2014 along with the Nexus 6 smartphone, Nexus 9 tablet, and Nexus Player set-top box.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_17" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/7.jpg"><img class="size-medium wp-image-17" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/7-300x222.jpg" alt="sea" width="300" height="222" /></a> sea[/caption]\r\n\r\n[caption id="attachment_20" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/26.jpg"><img class="size-medium wp-image-20" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/26-300x201.jpg" alt="view" width="300" height="201" /></a> view[/caption]\r\n\r\n[caption id="attachment_19" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/11_090422_17.jpg"><img class="size-medium wp-image-19" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/11_090422_17-300x188.jpg" alt="lotus" width="300" height="188" /></a> lotus[/caption]\r\n\r\n[caption id="attachment_18" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/8_100707.jpg"><img class="size-medium wp-image-18" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/8_100707-300x188.jpg" alt="glass" width="300" height="188" /></a> glass[/caption]\r\n\r\n[caption id="attachment_16" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/5_ABQ_0806.jpg"><img class="size-medium wp-image-16" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/5_ABQ_0806-300x188.jpg" alt="flowers" width="300" height="188" /></a> flowers[/caption]\r\n\r\n[caption id="attachment_15" align="aligncenter" width="300"]<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/4_ple2-00000897-001.jpg"><img class="size-medium wp-image-15" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/4_ple2-00000897-001-300x188.jpg" alt="hotel" width="300" height="188" /></a> hotel[/caption]\r\n\r\n<a href="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon.png"><img class="aligncenter size-medium wp-image-9" src="http://localhost/jeev-uthan/wp-content/uploads/2015/03/fb_icon-300x300.png" alt="facebook" width="300" height="300" /></a>\r\n\r\n&nbsp;', 'Do you know about Android Version History?', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-21 10:35:09', '2015-03-21 10:35:09', '', 5, 'http://localhost/jeev-uthan/?p=22', 0, 'revision', '', 0),
(25, 0, '2015-03-27 08:53:45', '2015-03-27 08:53:45', '', 'Daily backup - March 27, 2015', '', 'publish', 'open', 'open', '', 'daily-backup-march-27-2015', '', '', '2015-03-27 08:53:45', '2015-03-27 08:53:45', '', 0, 'http://localhost/jeev-uthan/?p=25', 0, 'revisr_commits', '', 0),
(27, 0, '2015-03-28 08:53:11', '2015-03-28 08:53:11', '', 'Daily backup - March 28, 2015', '', 'publish', 'open', 'open', '', 'daily-backup-march-28-2015', '', '', '2015-03-28 08:53:11', '2015-03-28 08:53:11', '', 0, 'http://localhost/jeev-uthan/?p=27', 0, 'revisr_commits', '', 0),
(28, 0, '2015-03-29 15:20:01', '2015-03-29 15:20:01', '', 'Daily backup - March 29, 2015', '', 'publish', 'open', 'open', '', 'daily-backup-march-29-2015', '', '', '2015-03-29 15:20:01', '2015-03-29 15:20:01', '', 0, 'http://localhost/jeev-uthan/?p=28', 0, 'revisr_commits', '', 0),
(29, 0, '2015-03-30 09:55:59', '2015-03-30 09:55:59', '', 'Daily backup - March 30, 2015', '', 'publish', 'open', 'open', '', 'daily-backup-march-30-2015', '', '', '2015-03-30 09:55:59', '2015-03-30 09:55:59', '', 0, 'http://localhost/jeev-uthan/?p=29', 0, 'revisr_commits', '', 0),
(31, 1, '2015-03-31 07:00:50', '2015-03-31 07:00:50', 'heyy', 'About-Us', '', 'publish', 'open', 'closed', '', 'missed-pet', '', '', '2015-04-16 10:49:42', '2015-04-16 10:49:42', '', 0, 'http://localhost/jeev-uthan/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-03-31 07:00:50', '2015-03-31 07:00:50', '', 'Missed pet', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-03-31 07:00:50', '2015-03-31 07:00:50', '', 31, 'http://localhost/jeev-uthan/?p=32', 0, 'revision', '', 0),
(33, 0, '2015-03-31 10:08:12', '2015-03-31 10:08:12', '', 'Daily backup - March 31, 2015', '', 'publish', 'open', 'open', '', 'daily-backup-march-31-2015', '', '', '2015-03-31 10:08:12', '2015-03-31 10:08:12', '', 0, 'http://localhost/jeev-uthan/?p=33', 0, 'revisr_commits', '', 0),
(39, 1, '2015-04-01 12:21:08', '2015-04-01 12:21:08', 'missing animal', 'Missing-Animal', '', 'publish', 'open', 'closed', '', 'missingpet', '', '', '2015-04-16 10:50:19', '2015-04-16 10:50:19', '', 0, 'http://localhost/jeev-uthan/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-04-01 12:21:08', '2015-04-01 12:21:08', '', 'MissingAnimal', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-01 12:21:08', '2015-04-01 12:21:08', '', 39, 'http://localhost/jeev-uthan/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-04-02 03:20:35', '2015-04-02 03:20:35', '', 'Missed pet', '', 'inherit', 'open', 'open', '', '31-autosave-v1', '', '', '2015-04-02 03:20:35', '2015-04-02 03:20:35', '', 31, 'http://localhost/jeev-uthan/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-04-02 07:36:47', '2015-04-02 07:36:47', '', 'Contact-Us', '', 'publish', 'open', 'closed', '', 'contact-us-2', '', '', '2015-04-16 10:49:49', '2015-04-16 10:49:49', '', 0, 'http://localhost/jeev-uthan/?page_id=42', 0, 'page', '', 0),
(43, 1, '2015-04-02 07:36:38', '2015-04-02 07:36:38', '', 'FAQ', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-04-02 07:36:38', '2015-04-02 07:36:38', '', 42, 'http://localhost/jeev-uthan/?p=43', 0, 'revision', '', 0),
(45, 1, '2015-04-02 07:38:28', '2015-04-02 07:38:28', '', 'About-Us', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-04-02 07:38:28', '2015-04-02 07:38:28', '', 31, 'http://localhost/jeev-uthan/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-02 07:42:53', '2015-04-02 07:42:53', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/jeev-uthan/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Contact-Us', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-02 07:42:53', '2015-04-02 07:42:53', '', 2, 'http://localhost/jeev-uthan/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-04-02 07:52:22', '2015-04-02 07:52:22', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-02 07:52:22', '2015-04-02 07:52:22', '', 2, 'http://localhost/jeev-uthan/?p=47', 0, 'revision', '', 0),
(49, 1, '2015-04-02 07:54:19', '2015-04-02 07:54:19', '', 'Jeev-Uthan', '', 'trash', 'open', 'closed', '', 'contact-us', '', '', '2015-04-16 10:50:01', '2015-04-16 10:50:01', '', 0, 'http://localhost/jeev-uthan/?page_id=49', 0, 'page', '', 0),
(50, 1, '2015-04-02 07:54:15', '2015-04-02 07:54:15', '', 'Jeev-Uthan', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-04-02 07:54:15', '2015-04-02 07:54:15', '', 49, 'http://localhost/jeev-uthan/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-04-02 08:16:28', '2015-04-02 08:16:28', '', 'FAQ', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-02 08:16:28', '2015-04-02 08:16:28', '', 2, 'http://localhost/jeev-uthan/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-04-02 08:22:27', '2015-04-02 08:22:27', '', 'Jeev-Uthan', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-04-02 08:22:27', '2015-04-02 08:22:27', '', 42, 'http://localhost/jeev-uthan/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-04-02 08:23:46', '2015-04-02 08:23:46', '', 'Missing-Animal', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-04-02 08:23:46', '2015-04-02 08:23:46', '', 49, 'http://localhost/jeev-uthan/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-04-02 08:24:18', '2015-04-02 08:24:18', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:24:18', '2015-04-02 08:24:18', '', 39, 'http://localhost/jeev-uthan/?p=54', 0, 'revision', '', 0),
(55, 1, '2015-04-02 08:25:35', '2015-04-02 08:25:35', '', 'MIssingPetl', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:25:35', '2015-04-02 08:25:35', '', 39, 'http://localhost/jeev-uthan/?p=55', 0, 'revision', '', 0),
(56, 1, '2015-04-02 08:25:45', '2015-04-02 08:25:45', '', 'MIssingPet', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:25:45', '2015-04-02 08:25:45', '', 39, 'http://localhost/jeev-uthan/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-04-02 08:26:05', '2015-04-02 08:26:05', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-04-02 08:26:05', '2015-04-02 08:26:05', '', 49, 'http://localhost/jeev-uthan/?p=57', 0, 'revision', '', 0),
(58, 1, '2015-04-02 08:26:58', '2015-04-02 08:26:58', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:26:58', '2015-04-02 08:26:58', '', 39, 'http://localhost/jeev-uthan/?p=58', 0, 'revision', '', 0),
(59, 1, '2015-04-02 08:27:46', '2015-04-02 08:27:46', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-04-02 08:27:46', '2015-04-02 08:27:46', '', 2, 'http://localhost/jeev-uthan/?p=59', 0, 'revision', '', 0),
(60, 1, '2015-04-02 08:28:57', '2015-04-02 08:28:57', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-04-02 08:28:57', '2015-04-02 08:28:57', '', 42, 'http://localhost/jeev-uthan/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-04-02 08:29:08', '2015-04-02 08:29:08', '', 'Contact-Us', '', 'inherit', 'open', 'open', '', '42-autosave-v1', '', '', '2015-04-02 08:29:08', '2015-04-02 08:29:08', '', 42, 'http://localhost/jeev-uthan/?p=61', 0, 'revision', '', 0),
(62, 1, '2015-04-02 08:29:55', '2015-04-02 08:29:55', '', 'FAQ', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:29:55', '2015-04-02 08:29:55', '', 39, 'http://localhost/jeev-uthan/?p=62', 0, 'revision', '', 0),
(63, 1, '2015-04-02 08:31:25', '2015-04-02 08:31:25', '', 'Jeev-Uthan', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-04-02 08:31:25', '2015-04-02 08:31:25', '', 49, 'http://localhost/jeev-uthan/?p=63', 0, 'revision', '', 0),
(64, 1, '2015-04-02 08:32:06', '2015-04-02 08:32:06', '', 'Missing-Animal', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-02 08:32:06', '2015-04-02 08:32:06', '', 39, 'http://localhost/jeev-uthan/?p=64', 0, 'revision', '', 0),
(69, 1, '2015-04-11 11:45:13', '2015-04-11 11:45:13', 'heyy', 'About-Us', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-04-11 11:45:13', '2015-04-11 11:45:13', '', 31, 'http://localhost/jeev-uthan/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-04-11 11:49:00', '2015-04-11 11:49:00', '', 'uploadimage', '', 'publish', 'open', 'open', '', 'uploadimage', '', '', '2015-04-11 11:49:00', '2015-04-11 11:49:00', '', 0, 'http://localhost/jeev-uthan/?page_id=70', 0, 'page', '', 0),
(71, 1, '2015-04-11 11:49:00', '2015-04-11 11:49:00', '', 'uploadimage', '', 'inherit', 'open', 'open', '', '70-revision-v1', '', '', '2015-04-11 11:49:00', '2015-04-11 11:49:00', '', 70, 'http://localhost/jeev-uthan/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-04-12 16:50:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-12 16:50:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/jeev-uthan/?p=72', 0, 'post', '', 0),
(73, 1, '2015-04-12 16:57:35', '0000-00-00 00:00:00', '', 'image', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-12 16:57:35', '2015-04-12 16:57:35', '', 0, 'http://localhost/jeev-uthan/?p=73', 0, 'post', '', 0),
(74, 1, '2015-04-13 07:08:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-13 07:08:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/jeev-uthan/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2015-04-14 10:59:08', '2015-04-14 10:59:08', 'missing animal', 'Missing-Animal', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-04-14 10:59:08', '2015-04-14 10:59:08', '', 39, 'http://localhost/jeev-uthan/?p=75', 0, 'revision', '', 0),
(76, 1, '2015-04-16 08:58:21', '2015-04-16 08:58:21', '', 'Jeev uthan', '', 'publish', 'open', 'closed', '', 'jeev-uthan', '', '', '2015-04-16 10:50:10', '2015-04-16 10:50:10', '', 0, 'http://localhost/jeev-uthan/?page_id=76', 0, 'page', '', 0),
(77, 1, '2015-04-16 08:58:21', '2015-04-16 08:58:21', '', 'Jeev uthan', '', 'inherit', 'open', 'open', '', '76-revision-v1', '', '', '2015-04-16 08:58:21', '2015-04-16 08:58:21', '', 76, 'http://localhost/jeev-uthan/?p=77', 0, 'revision', '', 0),
(78, 1, '2015-04-16 08:58:40', '2015-04-16 08:58:40', '', 'Jeev uthan', '', 'inherit', 'open', 'open', '', '76-autosave-v1', '', '', '2015-04-16 08:58:40', '2015-04-16 08:58:40', '', 76, 'http://localhost/jeev-uthan/?p=78', 0, 'revision', '', 0),
(79, 1, '2015-04-16 09:10:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-16 09:10:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/jeev-uthan/?page_id=79', 0, 'page', '', 0),
(80, 1, '2015-04-16 10:50:43', '2015-04-16 10:50:43', '', 'demo', '', 'publish', 'open', 'open', '', 'demo', '', '', '2015-04-16 10:50:43', '2015-04-16 10:50:43', '', 0, 'http://localhost/jeev-uthan/?page_id=80', 0, 'page', '', 0),
(81, 1, '2015-04-16 10:50:43', '2015-04-16 10:50:43', '', 'demo', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-04-16 10:50:43', '2015-04-16 10:50:43', '', 80, 'http://localhost/jeev-uthan/?p=81', 0, 'revision', '', 0),
(82, 1, '2015-04-22 11:35:44', '2015-04-22 11:35:44', 'Q1. abcd\r\n\r\n&nbsp;\r\n\r\nans addmf', 'faq to help animals', '', 'publish', 'closed', 'closed', '', 'faq-to-help-animals', '', '', '2015-04-22 11:40:10', '2015-04-22 11:40:10', '', 0, 'http://localhost/jeev-uthan/?post_type=faq&#038;p=82', 0, 'faq', '', 0),
(83, 1, '2015-04-22 11:39:50', '2015-04-22 11:39:50', 'Q1. abcd\n\n&nbsp;\n\nans addmf', 'faq to help animals', '', 'inherit', 'open', 'open', '', '82-autosave-v1', '', '', '2015-04-22 11:39:50', '2015-04-22 11:39:50', '', 82, 'http://localhost/jeev-uthan/?p=83', 0, 'revision', '', 0),
(84, 1, '2015-04-22 11:47:00', '2015-04-22 11:47:00', '', 'page 1', '', 'publish', 'closed', 'closed', '', 'page-1', '', '', '2015-04-22 11:47:00', '2015-04-22 11:47:00', '', 0, 'http://localhost/jeev-uthan/?post_type=faq&#038;p=84', 0, 'faq', '', 0),
(85, 1, '2015-04-22 12:06:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-22 12:06:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/jeev-uthan/?page_id=85', 0, 'page', '', 0),
(86, 1, '2015-04-22 12:07:48', '2015-04-22 12:07:48', '[Spider_FAQ id="1" ][Spider_FAQ id="2" ]', 'FAQ', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-22 12:07:48', '2015-04-22 12:07:48', '', 2, 'http://localhost/jeev-uthan/?p=86', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2015-04-22 12:08:55', '2015-04-22 12:08:55', '[Spider_FAQ id="1" ][Spider_FAQ id="1" ]\r\n\r\n&nbsp;\r\n\r\nhello every1\r\n\r\n&nbsp;\r\n\r\n[Spider_FAQ id="2" ]2nd hello', 'FAQs', '', 'publish', 'open', 'open', '', 'faqs', '', '', '2015-04-22 12:28:13', '2015-04-22 12:28:13', '', 0, 'http://localhost/jeev-uthan/?page_id=87', 0, 'page', '', 0),
(88, 1, '2015-04-22 12:08:55', '2015-04-22 12:08:55', '[Spider_FAQ id="1" ]\r\n\r\n&nbsp;\r\n\r\nhello every1', 'FAQs', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2015-04-22 12:08:55', '2015-04-22 12:08:55', '', 87, 'http://localhost/jeev-uthan/?p=88', 0, 'revision', '', 0),
(89, 1, '2015-04-22 12:11:46', '2015-04-22 12:11:46', '[Spider_FAQ id="1" ]\r\n\r\n&nbsp;\r\n\r\nhello every1\r\n\r\n&nbsp;\r\n\r\n[Spider_FAQ id="2" ]2nd hello', 'FAQs', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2015-04-22 12:11:46', '2015-04-22 12:11:46', '', 87, 'http://localhost/jeev-uthan/?p=89', 0, 'revision', '', 0),
(90, 1, '2015-04-22 12:28:13', '2015-04-22 12:28:13', '[Spider_FAQ id="1" ][Spider_FAQ id="1" ]\r\n\r\n&nbsp;\r\n\r\nhello every1\r\n\r\n&nbsp;\r\n\r\n[Spider_FAQ id="2" ]2nd hello', 'FAQs', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2015-04-22 12:28:13', '2015-04-22 12:28:13', '', 87, 'http://localhost/jeev-uthan/?p=90', 0, 'revision', '', 0),
(91, 1, '2015-04-23 08:18:15', '2015-04-23 08:18:15', '', 'Registration', '', 'publish', 'open', 'open', '', 'registration', '', '', '2015-04-23 08:18:15', '2015-04-23 08:18:15', '', 0, 'http://localhost/jeev-uthan/?page_id=91', 0, 'page', '', 0),
(92, 1, '2015-04-23 08:18:15', '2015-04-23 08:18:15', '', 'Registration', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-23 08:18:15', '2015-04-23 08:18:15', '', 91, 'http://localhost/jeev-uthan/?p=92', 0, 'revision', '', 0),
(93, 1, '2015-04-24 08:23:40', '2015-04-24 08:23:40', '', 'subbu', '', 'trash', 'open', 'open', '', 'subbu', '', '', '2015-04-24 08:31:06', '2015-04-24 08:31:06', '', 0, 'http://localhost/jeev-uthan/?page_id=93', 0, 'page', '', 0),
(94, 1, '2015-04-24 08:23:40', '2015-04-24 08:23:40', '', 'subbu', '', 'inherit', 'open', 'open', '', '93-revision-v1', '', '', '2015-04-24 08:23:40', '2015-04-24 08:23:40', '', 93, 'http://localhost/jeev-uthan/?p=94', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_post_right_content`
--

CREATE TABLE IF NOT EXISTS `wp_post_right_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `like` int(11) NOT NULL,
  `unlike` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_spider_faq_category`
--

CREATE TABLE IF NOT EXISTS `wp_spider_faq_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_description` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_spider_faq_category`
--

INSERT INTO `wp_spider_faq_category` (`id`, `title`, `description`, `show_title`, `show_description`, `published`) VALUES
(1, 'Uncategorized', '', 1, 1, 1),
(2, 'subbu', 'pagal ha\\\\r\\\\n', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_spider_faq_faq`
--

CREATE TABLE IF NOT EXISTS `wp_spider_faq_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `standcat` tinyint(1) NOT NULL,
  `category` varchar(255) NOT NULL,
  `standcategory` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `show_searchform` tinyint(1) NOT NULL,
  `expand` tinyint(1) NOT NULL,
  `numbertext` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `date` text NOT NULL,
  `user` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_spider_faq_faq`
--

INSERT INTO `wp_spider_faq_faq` (`id`, `title`, `standcat`, `category`, `standcategory`, `theme`, `show_searchform`, `expand`, `numbertext`, `like`, `hits`, `date`, `user`) VALUES
(1, 'abcd', 0, ',2,', '', '', 1, 1, 1, 1, 1, '1', '1'),
(2, 'efg', 1, '', '', '', 0, 1, 1, 1, 1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_spider_faq_question`
--

CREATE TABLE IF NOT EXISTS `wp_spider_faq_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `category` int(11) NOT NULL,
  `article` longtext NOT NULL,
  `fullarticle` longtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `like` int(11) NOT NULL,
  `unlike` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `user_name` longtext NOT NULL,
  `date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_spider_faq_question`
--

INSERT INTO `wp_spider_faq_question` (`id`, `title`, `category`, `article`, `fullarticle`, `ordering`, `published`, `like`, `unlike`, `hits`, `user_name`, `date`) VALUES
(1, 'how to help bird', 1, 'give her water', '', 1, 1, 0, 0, 0, 'root', '22-04-2015'),
(2, 'how to help bird', 1, 'warm her up', '', 2, 1, 0, 0, 0, 'root', '22-04-2015');

-- --------------------------------------------------------

--
-- Table structure for table `wp_spider_faq_theme`
--

CREATE TABLE IF NOT EXISTS `wp_spider_faq_theme` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `background` tinyint(2) NOT NULL,
  `bgimage` varchar(200) NOT NULL,
  `bgcolor` text NOT NULL,
  `width` varchar(200) NOT NULL,
  `ctbg` tinyint(1) NOT NULL,
  `ctbggrad` tinyint(1) NOT NULL,
  `ctbgcolor` text NOT NULL,
  `ctgradtype` varchar(200) NOT NULL,
  `ctgradcolor1` text NOT NULL,
  `ctgradcolor2` text NOT NULL,
  `cttxtcolor` text NOT NULL,
  `ctfontsize` varchar(200) NOT NULL,
  `ctmargin` varchar(200) NOT NULL,
  `ctpadding` varchar(200) NOT NULL,
  `ctbstyle` text NOT NULL,
  `ctbwidth` varchar(200) NOT NULL,
  `ctbcolor` text NOT NULL,
  `ctbradius` varchar(200) NOT NULL,
  `cdbg` tinyint(1) NOT NULL,
  `cdbggrad` tinyint(1) NOT NULL,
  `cdbgcolor` text NOT NULL,
  `cdgradtype` varchar(200) NOT NULL,
  `cdgradcolor1` text NOT NULL,
  `cdgradcolor2` text NOT NULL,
  `cdtxtcolor` text NOT NULL,
  `cdfontsize` varchar(200) NOT NULL,
  `cdmargin` varchar(200) NOT NULL,
  `cdpadding` varchar(200) NOT NULL,
  `cdbstyle` varchar(200) NOT NULL,
  `cdbwidth` varchar(200) NOT NULL,
  `cdbcolor` text NOT NULL,
  `cdbradius` varchar(200) NOT NULL,
  `paddingbq` varchar(200) NOT NULL,
  `marginleft` varchar(200) NOT NULL,
  `theight` varchar(200) NOT NULL,
  `twidth` varchar(200) NOT NULL,
  `tfontsize` varchar(200) NOT NULL,
  `ttxtwidth` varchar(200) NOT NULL,
  `ttxtpleft` varchar(200) NOT NULL,
  `tcolor` text NOT NULL,
  `titlebg` tinyint(1) NOT NULL,
  `tbgcolor` text NOT NULL,
  `tbgimage` varchar(200) NOT NULL,
  `titlebggrad` tinyint(1) NOT NULL,
  `gradtype` varchar(200) NOT NULL,
  `gradcolor1` text NOT NULL,
  `gradcolor2` text NOT NULL,
  `tbghovercolor` text NOT NULL,
  `tbgsize` varchar(200) NOT NULL,
  `tbstyle` varchar(200) NOT NULL,
  `tbwidth` varchar(200) NOT NULL,
  `tbcolor` text NOT NULL,
  `tbradius` varchar(200) NOT NULL,
  `tchangeimage1` varchar(200) NOT NULL,
  `marginlimage1` varchar(200) NOT NULL,
  `tchangeimage2` varchar(200) NOT NULL,
  `marginlimage2` varchar(200) NOT NULL,
  `awidth` varchar(200) NOT NULL,
  `amargin` varchar(200) NOT NULL,
  `afontsize` varchar(200) NOT NULL,
  `abg` tinyint(1) NOT NULL,
  `abgcolor` text NOT NULL,
  `abgimage` varchar(200) NOT NULL,
  `abgsize` varchar(200) NOT NULL,
  `abstyle` varchar(200) NOT NULL,
  `abwidth` varchar(200) NOT NULL,
  `abcolor` text NOT NULL,
  `abradius` varchar(200) NOT NULL,
  `aimage` varchar(200) NOT NULL,
  `aimage2` varchar(200) NOT NULL,
  `aimagewidth` varchar(200) NOT NULL,
  `aimageheight` varchar(200) NOT NULL,
  `amarginimage` varchar(200) NOT NULL,
  `aimagewidth2` varchar(200) NOT NULL,
  `aimageheight2` varchar(200) NOT NULL,
  `amarginimage2` varchar(200) NOT NULL,
  `atxtcolor` text NOT NULL,
  `expcolcolor` text NOT NULL,
  `expcolfontsize` varchar(200) NOT NULL,
  `expcolmargin` varchar(200) NOT NULL,
  `expcolhovercolor` text NOT NULL,
  `sformmargin` varchar(200) NOT NULL,
  `sboxwidth` varchar(200) NOT NULL,
  `sboxheight` varchar(200) NOT NULL,
  `sboxbg` tinyint(1) NOT NULL,
  `sboxbgcolor` text NOT NULL,
  `sboxbstyle` text NOT NULL,
  `sboxbwidth` varchar(200) NOT NULL,
  `sboxbcolor` text NOT NULL,
  `sboxfontsize` varchar(200) NOT NULL,
  `sboxtcolor` text NOT NULL,
  `srwidth` varchar(200) NOT NULL,
  `srheight` varchar(200) NOT NULL,
  `srbg` tinyint(1) NOT NULL,
  `srbgcolor` text NOT NULL,
  `srbstyle` text NOT NULL,
  `srbwidth` varchar(200) NOT NULL,
  `srbcolor` text NOT NULL,
  `srfontsize` varchar(200) NOT NULL,
  `srfontweight` varchar(200) NOT NULL,
  `srtcolor` text NOT NULL,
  `rmcolor` text NOT NULL,
  `rmhovercolor` text NOT NULL,
  `rmfontsize` varchar(200) NOT NULL,
  `dwidth` varchar(200) NOT NULL,
  `dheight` varchar(200) NOT NULL,
  `dlikehitswidth` varchar(200) NOT NULL,
  `dlikehitsmargin` varchar(200) NOT NULL,
  `dmarginleft` varchar(200) NOT NULL,
  `dbordertopstyle` varchar(200) NOT NULL,
  `dborderbottomstyle` varchar(200) NOT NULL,
  `dbackgroundcolor` text NOT NULL,
  `dborderstyle` varchar(200) NOT NULL,
  `dborderwidth` varchar(200) NOT NULL,
  `dbordercolor` text NOT NULL,
  `dbordercornerradius` varchar(200) NOT NULL,
  `dtextcolor` text NOT NULL,
  `dlikehitsbgcolor` text NOT NULL,
  `dlikehitsbdrst` text NOT NULL,
  `dlikehitsbdrtst` text NOT NULL,
  `dlikehitsbdrw` text NOT NULL,
  `dlikehitsbdrc` text NOT NULL,
  `dlikehitsbdrrad` text NOT NULL,
  `dlikehitstxtcl` text NOT NULL,
  `apadd` text NOT NULL,
  `dlikehitsbdrbst` text NOT NULL,
  `numbering` tinyint(2) NOT NULL,
  `ansmarginleft` text NOT NULL,
  `imgpos` tinyint(2) NOT NULL,
  `answidth` text NOT NULL,
  `ikncol` tinyint(2) NOT NULL,
  `numberfnts` text NOT NULL,
  `numbercl` text NOT NULL,
  `tbtopstyle` text NOT NULL,
  `tbrightstyle` text NOT NULL,
  `abrightstyle` text NOT NULL,
  `default` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_spider_faq_theme`
--

INSERT INTO `wp_spider_faq_theme` (`id`, `title`, `background`, `bgimage`, `bgcolor`, `width`, `ctbg`, `ctbggrad`, `ctbgcolor`, `ctgradtype`, `ctgradcolor1`, `ctgradcolor2`, `cttxtcolor`, `ctfontsize`, `ctmargin`, `ctpadding`, `ctbstyle`, `ctbwidth`, `ctbcolor`, `ctbradius`, `cdbg`, `cdbggrad`, `cdbgcolor`, `cdgradtype`, `cdgradcolor1`, `cdgradcolor2`, `cdtxtcolor`, `cdfontsize`, `cdmargin`, `cdpadding`, `cdbstyle`, `cdbwidth`, `cdbcolor`, `cdbradius`, `paddingbq`, `marginleft`, `theight`, `twidth`, `tfontsize`, `ttxtwidth`, `ttxtpleft`, `tcolor`, `titlebg`, `tbgcolor`, `tbgimage`, `titlebggrad`, `gradtype`, `gradcolor1`, `gradcolor2`, `tbghovercolor`, `tbgsize`, `tbstyle`, `tbwidth`, `tbcolor`, `tbradius`, `tchangeimage1`, `marginlimage1`, `tchangeimage2`, `marginlimage2`, `awidth`, `amargin`, `afontsize`, `abg`, `abgcolor`, `abgimage`, `abgsize`, `abstyle`, `abwidth`, `abcolor`, `abradius`, `aimage`, `aimage2`, `aimagewidth`, `aimageheight`, `amarginimage`, `aimagewidth2`, `aimageheight2`, `amarginimage2`, `atxtcolor`, `expcolcolor`, `expcolfontsize`, `expcolmargin`, `expcolhovercolor`, `sformmargin`, `sboxwidth`, `sboxheight`, `sboxbg`, `sboxbgcolor`, `sboxbstyle`, `sboxbwidth`, `sboxbcolor`, `sboxfontsize`, `sboxtcolor`, `srwidth`, `srheight`, `srbg`, `srbgcolor`, `srbstyle`, `srbwidth`, `srbcolor`, `srfontsize`, `srfontweight`, `srtcolor`, `rmcolor`, `rmhovercolor`, `rmfontsize`, `dwidth`, `dheight`, `dlikehitswidth`, `dlikehitsmargin`, `dmarginleft`, `dbordertopstyle`, `dborderbottomstyle`, `dbackgroundcolor`, `dborderstyle`, `dborderwidth`, `dbordercolor`, `dbordercornerradius`, `dtextcolor`, `dlikehitsbgcolor`, `dlikehitsbdrst`, `dlikehitsbdrtst`, `dlikehitsbdrw`, `dlikehitsbdrc`, `dlikehitsbdrrad`, `dlikehitstxtcl`, `apadd`, `dlikehitsbdrbst`, `numbering`, `ansmarginleft`, `imgpos`, `answidth`, `ikncol`, `numberfnts`, `numbercl`, `tbtopstyle`, `tbrightstyle`, `abrightstyle`, `default`) VALUES
(1, 'White', 2, '', 'FFFFFF', '600', 1, 1, '44A9CF', 'top', '44A9CF', '54DDFF', 'FFFFFF', '20', '0 60 0 0', '9 20 12', 'solid', '2', 'E0E0E0', '2', 1, 0, 'C4C4C4', 'top', 'FFFFFF', 'FFFFFF', '000000', '12', '10 90 12 21', '4 8', 'double', '3', 'FFFFFF', '2', '', '', '30', '512', '14', '', '6', '000000', 0, 'FFFFFF', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'EDEAD8', '100%', 'solid', '1', 'C7C7C7', '4', '', '', '', '', '513', '0 15 5', '14', 0, 'FFFFFF', '', '', 'none', '', 'FFFFFF', '', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style1/style1a.png', '', '', '', '512', '5', '', '44A9CF', '000000', '14', '12 60 18 0', '8F8F8F', '0 60 12 0', '300', '25', 0, 'EBEBEB', 'solid', '2', 'A6A6A6', '12', '000000', '60', '30', 0, 'FFFFFF', 'solid', '2', '828282', '14', '', '000000', '000000', '9E9E9E', '12', '100', '', '100', '', '', 'solid', 'solid', 'FFFFF', 'solid', '1', 'DBDBDB', '5', '44A9CF', 'FFFFFF', 'solid', 'solid', '1', 'DBDBDB', '5', '44A9CF', '', '0', 0, '0', 0, '0', 0, '', 'FFFFFF', 'solid', 'solid', '0', 1),
(2, 'Cyan', 2, '', 'FFFFFF', '600', 1, 0, '242424', 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '20', '0 60 10 8', '10 15 8 ', 'solid', '2', '5EBDB0', '', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '212121', '13', '10 90 14 30', '6', 'dashed', '2', '5EBDB0', '', '1', '4', '35', '510', '14', '', '5', '2B2727', 0, '70E0D1', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '100% 100%', 'outset', '1', 'ABABAB', '3', '', '', '', '', '511', '0 8 3', '14', 0, '70E0D1', '', '', 'none', '', 'FFFFFF', '', '', '', '', '', '', '', '', '', '2B2727', '000000', '16', '12 60 18 0', '58B0A4', '0 60 12 0', '220', '25', 1, 'EBEBEB', 'solid', '2', '5EBDB0', '14', 'FFFFFF', '70', '28', 1, '242424', 'solid', '2', '5EBDB0', '14', 'bold', 'FFFFFF', '000000', '9E9E9E', '12', '100', '', '100', '', '', 'none', 'solid', 'C4FAF3', 'none', '1', '242424', '', '242424', 'C4FAF3', '', 'outset', '1', '242424', '', '000000', '2', '0', 0, '', 0, '', 0, '', '', 'outset', 'outset', '0', 1),
(3, 'Green Gradient', 2, '', 'FFFFFF', '600', 1, 1, 'BDBDBD', 'top', 'B3B3B3', 'DEDEDE', '000000', '18', '8 60 0 2', '9 6 12', 'outset', '2', '20BD1A', '', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '12', '12 87 18 28', '4 6', 'double', '3', 'C7C7C7', '', '', '', '25', '520', '14', '', '6', 'FFFFFF', 0, '20BD1A', '', 1, 'top', '20BD1A', '6FCF46', 'B5B5B5', '100% 100%', 'solid', '2', '6B9999', '2', '', '', '', '', '520', '', '14', 0, 'C2C2C2', '', '100% 100%', 'solid', '2', '6B9999', '', '', '', '', '', '', '', '', '', '000000', '315221', '14', '12 60 18 0', '9E9E9E', '0 60 12 0', '220', '25', 0, 'EBEBEB', 'solid', '3', '6BB347', '14', '000000', '75', '27', 1, '6BB347', 'solid', '2', 'C9C9C9', '', '', 'FFFFFF', '1EB319', 'CFCFCF', '12', '100', '', '100', '', '', 'none', 'none', '6B9999', 'none', '', '20BD1A', '', 'FFFFFF', '6B9999', '', 'none', '', '', '', 'FFFFFF', '2', '0', 0, '', 0, '', 0, '', '', 'solid', 'solid', '0', 1),
(4, 'Black & Gold', 2, '', 'FFFFFF', '600', 1, 1, 'FFFFFF', 'top', '000000', '3D3D3D', 'FFFFFF', '18', '5 59 20 3', '9 4 12 ', 'outset', '2', 'F5A403', '6', 1, 0, 'FFBE3B', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '8 90 30 30', '4 6', 'groove', '1', '828282', '12', '', '', '30', '520', '14', '', '6', 'F5A403', 0, '000000', '', 1, 'top', '000000', '242424', 'FFFFFF', '100% 100%', 'outset', '1', '878787', '4', '', '', '', '', '521', '', '14', 0, 'ADADAD', '', '', 'none', '', 'FFFFFF', '', '', '', '', '', '', '', '', '', 'FFFFFF', '000000', '14', '12 60 18 0', 'CCCCCC', '0 60 14 0', '220', '25', 1, 'EBEBEB', 'solid', '2', 'F5A403', '14', 'FFFFFF', '70', '25', 1, '0F0F0F', 'solid', '2', 'F5A403', '', '', 'FFFFFF', 'F5A403', '919191', '12', '100', '', '100', '', '', 'solid', 'solid', 'FFBE3B', 'solid', '1', '030303', '4', '000000', 'FFBE3B', 'solid', 'solid', '1', '030303', '4', '000000', '3', '0', 0, '0', 0, '0', 0, '', '', 'outset', 'outset', '0', 1),
(5, 'Light Blue', 2, '', 'FFFFFF', '600', 1, 0, 'D7EBF9', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 0', '6', 'outset', '2', 'AED0EA', '2', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '23376E', '14', '10 60 14 30', '6', 'solid', '1', 'CFCFCF', '5', '', '', '30', '520', '14', '', '6', '2779B1', 0, 'D7EBF9', '', 0, 'top', '00FFCC', '636363', 'EEF6FC', '', 'solid', '1', 'AED0EA', '3', '', '', '', '', '520', '', '14', 0, 'F9FAFB', '', '', 'solid', '1', 'D6D6D6', '2', '', '', '', '', '', '', '', '', '000000', '2779B1', '14', '12 60 18 0', '36DDFF', '0 60 12 0', '220', '25', 1, 'EBEBEB', 'solid', '2', '2779B1', '14', '000000', '70', '30', 1, 'D7EBF9', 'solid', '1', '2779B1', '', '', '2779B1', '6699CC', '000000', '12', '100', '', '100', '', '', 'none', '', 'BBBBBB', 'none', '', 'FFFFFF', '', '2779B1', 'E0E0E0', '', '', '', 'FFFFFF', '', '2779B1', '2', '0', 0, '0', 0, '0', 0, '', '', 'solid', 'solid', '0', 1),
(6, 'Black', 2, '', 'FFFFFF', '600', 1, 1, 'FFFFFF', 'circle', '008BE8', '00498F', 'FFFFFF', '18', '0 60 0 0', '10 4', 'outset', '2', 'CCCCCC', '2', 1, 0, '5C5C5C', 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '14', '10 60 18 30', '4 6', 'solid', '1', '008BE8', '12', '', '', '30', '520', '14', '', '6', 'FFFFFF', 0, '242424', '', 1, 'circle', '242424', '474747', '00498F', '', 'none', '', 'FFFFFF', '4', '', '', '', '', '520', '', '14', 0, '141414', '', '', 'none', '', 'FFFFFF', '', '', '', '', '', '', '', '', '', 'FFFFFF', '00498F', '14', '12 60 18 0', '4F4F4F', '0 60 14 0', '220', '25', 1, 'EBEBEB', 'ridge', '2', '00498F', '14', 'FFFFFF', '70', '25', 1, '303030', 'ridge', '1', '00498F', '', '', 'FFFFFF', 'FFFFFF', '00498F', '12', '100', '', '100', '', '', 'solid', '', '5C5C5C', 'solid', '1', '000000', '4', '000000', '5C5C5C', 'solid', '', '1', '000000', '4', '000000', '', '0', 0, '0', 0, '0', 1, '', '', 'none', 'none', '0', 1),
(7, 'Blue', 2, '', 'FFFFFF', '600', 1, 0, 'A3DFE3', 'top', 'FFFFFF', 'FFFFFF', '080808', '18', '0 60 0 0', '8 6', 'outset', '2', 'E59600', '2', 1, 0, 'E59600', 'top', 'FFFFFF', 'FFFFFF', 'FCFCFC', '14', '10 78 12 22', '4 6', 'solid', '1', '59FFFF', '20', '', '', '30', '520', '14', '', '6', 'FFFFFF', 0, '1283E5', '', 1, 'circle', '1283E5', '2D90E8', 'E59600', '100% 100%', 'solid', '1', 'FFFFFF', '6', '', '', '', '', '518', '', '14', 0, 'EEEEEE', '', '100% 100%', 'solid', '1', 'BABABA', '6', '', '', '', '', '', '', '', '', '000000', '2D90E8', '14', '10 60 14 0', '878787', '0 60 14 0', '220', '25', 1, 'EBEBEB', 'solid', '2', 'E59600', '14', 'FFFFFF', '70', '25', 1, '1283E5', 'solid', '2', 'E59600', '', '', 'FFFFFF', '2D90E8', '6E6E6E', '12', '100', '21', '100', '', '', 'none', '', 'E59600', 'none', '', 'FFFFFF', '4', 'FFFFFF', 'E59600', '', '', '', 'FFFFFF', '4', 'FFFFFF', '3', '0', 0, '0', 0, '0', 0, '', '', 'solid', 'solid', '0', 1),
(8, 'Black & Green', 2, '', 'FFFFFF', '600', 1, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 2', '8 4 10', 'outset', '1', '9BCC60', '4', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 85 12 35', '4 6', 'solid', '1', '616161', '12', '', '', '30', '520', '14', '', '6', '9BCC60', 0, '312C24', '', 1, 'top', '312C24', '262017', '50443A', '100% 100%', 'solid', '2', 'FFFFFF', '4', '', '', '', '', '520', '', '14', 0, '50443A', '', '', 'solid', '2', 'FFFFFF', '4', '', '', '', '', '', '', '', '', 'FFFFFF', '000000', '14', '12 60 11 0', '878787', '0 60 14 0', '220', '25', 1, 'EBEBEB', 'solid', '2', '9BCC60', '14', 'FFFFFF', '70', '27', 1, '312C24', 'solid', '2', '9BCC60', '', '', 'FFFFFF', '9BCC60', 'D9D9D9', '12', '100', '22', '100', '', '', '', '', '413626', 'none', '', 'FFFFFF', '', '000000', '413626', '', '', '', '', '', '000000', '', '0', 0, '0', 0, '0', 1, '', '', 'solid', 'solid', '0', 1),
(9, 'Grey', 2, '', 'FFFFFF', '600', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 4', '8 4 6', 'none', '', 'FFFFFF', '', 1, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '13', '10 80 14 20', '4 6', 'dashed', '1', 'BABABA', '', '', '', '30', '520', '14', '', '6', 'FFFFFF', 0, '8390A0', '', 0, 'top', 'FFFFFF', 'FFFFFF', '384454', '', 'none', '', 'FFFFFF', '4', '', '', '', '', '520', '', '14', 0, '384454', '', '', 'none', '', 'FFFFFF', '4', '', '', '', '', '', '', '', '', 'FFFFFF', '000000', '14', '8 60 14 0', 'CCCCCC', '0 60 14 0', '220', '25', 0, 'EBEBEB', 'solid', '2', '000000', '14', '000000', '70', '27', 0, 'FFFFFF', 'solid', '2', '000000', '', '', '000000', 'FFFFFF', '6E6E6E', '12', '100', '23', '100', '', '', '', 'solid', '8390A0', '', '1', '000000', '3', '000000', '8390A0', '', 'solid', '1', '000000', '3', '000000', '2', '0', 0, '0', 0, '0', 0, '', '', 'none', 'none', '0', 1),
(10, 'Tomato', 2, '', 'FFFFFF', '600', 1, 1, '434544', 'top', '262626', '757575', 'FFFFFF', '18', '0 60 0 4', '8 4', 'none', '', 'FFFFFF', '8', 1, 0, 'D9D9D9', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 60 14 35', '4 6', 'solid', '1', 'B5B5B5', '5', '', '', '30', '520', '14', '', '6', 'FFFFFF', 0, 'C44F45', '', 0, 'top', 'FFFFFF', 'FFFFFF', '7C7E7D', '100% 100%', 'solid', '1', 'A1A1A1', '5', '', '', '', '', '520', '', '14', 0, 'D9D4CE', '', '', 'solid', '1', 'A1A1A1', '5', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'CCCCCC', '0 60 16 0', '220', '25', 1, 'EBEBEB', 'solid', '2', 'C44F45', '14', '000000', '70', '27', 1, 'FFFFFF', 'solid', '2', 'C44F45', '', '', '000000', 'C44F45', 'E6E6E6', '12', '100', '', '100', '', '', '', 'solid', 'E4DFDA', '', '1', '737373', '', '000000', 'E4DFDA', '', 'solid', '1', '737373', '', '000000', '', '0', 0, '0', 0, '0', 0, '', '', 'solid', 'solid', '0', 1),
(11, 'Green', 2, '', 'FFFFFF', '600', 1, 1, 'FFFFFF', 'top', '12FFDA', '0FD1B3', 'FFFFFF', '18', '0 60 0 0', '8 4', 'groove', '1', '0A8E79', '8', 1, 0, 'FFB969', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 60 14 35', '5 7', 'outset', '1', 'A6A6A6', '12', '', '', '30', '520', '14', '', '6', 'FFFFFF', 0, '0A8E79', '', 0, 'top', 'FFFFFF', 'FFFFFF', '0EC9AC', '', 'none', '', 'FFFFFF', '5', '', '', '', '', '518', '', '14', 0, 'EDEDED', '', '100% 100%', 'solid', '1', 'A6A6A6', '5', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'A1A1A1', '0 60 16 0', '220', '25', 1, 'EBEBEB', 'solid', '2', '087362', '14', 'FFFFFF', '70', '27', 1, '0EC9AC', 'solid', '2', '087362', '', '', 'FFFFFF', '087362', 'C9C9C9', '12', '100', '', '100', '', '', '', '', 'E0E0E0', '', '', 'FFFFFF', '2', '000000', 'E0E0E0', '', '', '', 'FFFFFF', '2', '000000', '2', '0', 0, '0', 0, '0', 0, '', '', 'none', 'none', '0', 1),
(12, 'Yellow', 2, '', 'FFFFFF', '600', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 4', '10 4 8', 'solid', '1', '000000', '12', 1, 0, 'DEDCD9', 'top', 'FFFFFF', 'FFFFFF', '000000', '13', '10 60 14 4', '5 8', 'groove', '1', 'CCCCCC', '20', '', '', '30', '520', '14', '', '8', '000000', 0, 'FEE000', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '100% 100%', 'solid', '1', '737373', '12', '', '', '', '', '520', '', '14', 0, 'F2F2F2', '', '100% 100%', 'solid', '1', 'B3B3B3', '12', '', '', '', '', '', '', '', '', '000000', '000000', '14', '12 60 18 0', 'CCCCCC', '0 60 14 0', '220', '25', 0, 'EBEBEB', 'solid', '2', '000000', '14', '000000', '70', '27', 0, 'FFFFFF', 'solid', '2', '000000', '', '', '000000', '000000', '919191', '12', '100', '', '100', '', '', '', '', 'DFDFDF', '', '', 'FFFFFF', '11', '000000', 'DFDFDF', '', '', '', 'FFFFFF', '11', '000000', '', '0', 0, '0', 0, '0', 0, '', '', 'solid', 'solid', '0', 1),
(13, 'White & Blue', 2, '', 'FFFFFF', '600', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 4', '8 4 10', 'groove', '2', '3BCBFF', '12', 1, 0, 'E6E6E6', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '12 100 14 40', '4 6', 'dotted', '1', '595959', '12', '', '', '30', '520', '14', '', '8', '000000', 0, 'F5F5F5', '', 0, 'top', 'FFFFFF', 'FFFFFF', '3BCBFF', '100% 100%', 'outset', '1', 'C7C7C7', '14', '', '', '', '', '520', '', '14', 0, 'FFFFFF', '', '100% 100%', 'outset', '1', 'C7C7C7', '14', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'CCCCCC', '0 60 16 0', '220', '25', 0, 'EBEBEB', 'outset', '1', '000000', '14', '000000', '70', '27', 0, 'FFFFFF', 'outset', '1', '000000', '', '', '000000', '000000', '8F8F8F', '12', '100', '', '100', '', '', '', '', 'E2E2E2', '', '', 'FFFFFF', '15', '000000', 'E2E2E2', '', '', '', 'FFFFFF', '15', '000000', '', '0', 0, '0', 0, '0', 0, '', '', 'outset', 'outset', '0', 1),
(14, 'Light Yellow', 2, '', 'FFFFFF', '600', 1, 0, 'F5F5F5', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 60 0 0', '8 4', 'solid', '1', 'C5A009', '', 1, 0, 'FDF6D2', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 82 14 25', '4 8', 'groove', '1', '8F8F8F', '5', '', '', '30', '520', '14', '', '7', '1C94CD', 0, 'F6F6F6', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'FDF6D2', '100% 100%', 'outset', '1', 'FBCB09', '0', '', '', '', '', '520', '', '14', 0, 'EEEEEE', '', '100% 100%', 'outset', '1', 'D1D1D1', '', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'A6A6A6', '0 60 16 0', '220', '25', 1, 'EBEBEB', 'outset', '2', 'FBCB09', '14', '000000', '70', '27', 1, 'F6F6F6', 'outset', '2', 'FBCB09', '', '', '000000', '1C94CD', '7A7A7A', '12', '100', '', '100', '', '', '', 'solid', 'E6E6E6', '', '1', 'D3D3D3', '', '000000', 'E6E6E6', '', 'solid', '1', 'D3D3D3', '', '000000', '', '0', 0, '0', 0, '0', 0, '', '', 'outset', 'outset', '0', 1),
(15, 'Yellow Gradient', 2, '', 'FFFFFF', '600', 1, 1, 'FEF9D9', 'top', 'FEF9D9', 'F3E157', '000000', '18', '0 60 0 0', '8 4', 'ridge', '1', 'B3B3B3', '', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 86 14 31', '4 8', 'ridge', '1', 'CFCFCF', '2', '', '', '30', '520', '14', '92', '1', '000000', 0, 'FEF9D9', '', 1, 'top', 'FEF9D9', 'F3E157', 'FFFFFF', '100% 100%', 'outset', '1', 'CEB80D', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style15/style15a.png', '6', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style15/style15b.png', '', '520', '', '14', 0, 'FCF8D5', '', '100% 100%', 'solid', '1', 'DBDBDB', '', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'CCCCCC', '0 60 16 0', '220', '25', 1, 'EBEBEB', 'outset', '2', 'CEB80D', '14', '000000', '70', '27', 1, 'FCF8D5', 'outset', '2', 'CEB80D', '', '', '000000', '000000', '787878', '14', '100', '', '100', '', '', '', 'solid', 'FFF7B5', '', '1', 'DAD7D7', '', '4E4E4E', 'FFF7B5', '', 'solid', '1', 'DAD7D7', '', '4E4E4E', '', '0', 0, '0', 0, '520', 0, '', '', 'outset', 'outset', '0', 1),
(16, 'Grey & White', 2, '', 'FFFFFF', '600', 0, 1, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '20', '0 60 0 0', '6 4 8', 'none', '', 'FFFFFF', '', 1, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '10 60 14 42', '4 8', 'ridge', '1', 'CCCCCC', '', '', '', '30', '520', '14', '90', '1', '000000', 0, 'D3D3D3', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '100% 100%', 'outset', '1', '000000', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style16/style16a.png', '10', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style16/style16b.png', '', '520', '', '14', 0, 'EBEBEB', '', '100% 100%', 'outset', '1', 'B8B8B8', '', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 60 14 0', 'CCCCCC', '0 60 16 0', '220', '25', 0, 'EBEBEB', 'solid', '2', '000000', '14', '000000', '70', '27', 0, 'FFFFFF', 'solid', '2', '000000', '', '', '000000', '000000', '616161', '12', '100', '', '100', '', '', '', 'solid', 'DBDBDB', '', '1', 'C5C5C5', '', '000000', 'DBDBDB', '', 'solid', '1', 'C5C5C5', '', '000000', '', '', 0, '', 0, '520', 0, '', '', 'outset', 'outset', 'outset', 1),
(17, 'Green & Blue', 2, '', 'FFFFFF', '600', 1, 0, 'E0CA3B', 'top', 'FFFFFF', 'FFFFFF', '000000', '18', '0 20 0 0', '8 4 6', 'groove', '1', 'AED2D9', '8', 0, 0, 'FFFFFF', 'top', 'FFFFFF', 'FFFFFF', '000000', '14', '9 20 14 42', '8', 'outset', '1', 'E3E3E3', '5', '', '', '30', '560', '14', '92', '1', '000000', 0, 'AED2D9', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'CCD232', '100% 100%', 'none', '1', '3B3B3B', '18', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style17/style17a.png', '8', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style17/style17b.png', '', '560', '', '14', 0, 'E8E8E8', '', '100% 100%', 'outset', '1', 'D4D4D4', '18', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 40 14 0', 'B2B82C', '0 40 16 0', '220', '25', 0, 'EBEBEB', 'inset', '', '000000', '14', '000000', '70', '27', 0, 'FFFFFF', 'inset', '', '000000', '', '', '000000', '000000', 'C9C9C9', '12', '100', '', '100', '', '', '', '', 'D5D5D5', '', '', 'FFFFFF', '10', '000000', 'D5D5D5', '', '', '', 'FFFFFF', '10', '000000', '3', '0', 0, '0', 0, '520', 0, '', '', 'none', 'none', '0', 1),
(22, 'Dark Blue', 2, '', 'FFFFFF', '600', 1, 0, 'BDBDBD', 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '20', '1 37 1 1', '11', 'none', '', 'FFFFFF', '5', 1, 0, 'E7E7E7', 'top', 'FFFFFF', 'FFFFFF', '000000', '', '10 90 14 30', '10', 'none', '', 'FFFFFF', '5', '5', '2', '30', '540', '18', '92', '10', 'FFFFFF', 0, '283841', '', 0, 'top', 'FFFFFF', 'FFFFFF', '283839', '', 'none', '', 'FFFFFF', '5', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style18/style18b.png', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style18/style18a.png', '', '525', '', '14', 1, 'CCCCCC', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style19/BG.png', '', 'none', '', 'FFFFFF', '', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 40 14 0', 'CCCCCC', '', '220', '20', 1, 'EBEBEB', 'solid', '2', '9C9C9C', '14', 'FFFFFF', '53', '20', 1, 'BDBDBD', 'solid', '2', '9C9C9C', '14', '', 'FFFFFF', '283841', '283841', '12', '100', '', '98', '5', '', 'none', 'none', 'DAD7D7', 'none', '', 'FFFFFF', '', '969494', 'F5F3EB', 'none', 'solid', '1', 'DAD7D7', '', '969494', '', 'none', 0, '9', 1, '520', 0, '', '', '', '', '', 22),
(19, 'Grey & Black', 2, '', 'FFFFFF', '600', 1, 0, 'BDBDBD', 'top', 'FFFFFF', 'FFFFFF', '000000', '20', '1 37 1 1', '11', 'none', '', 'FFFFFF', '5', 1, 0, 'E7E7E7', 'top', 'FFFFFF', 'FFFFFF', '000000', '', '10 90 14 30', '10', 'none', '', 'FFFFFF', '5', '5', '2', '30', '540', '18', '92', '', 'ECECE7', 0, '5E5D5D', '', 0, 'top', 'FFFFFF', 'FFFFFF', '5A5E5E', '', 'none', '', 'FFFFFF', '5', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style19/style19a.png', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/style19/style19b.png', '', '530', '', '14', 0, 'C4C4C4', '', '', 'none', '', 'FFFFFF', '4', '', '', '', '', '', '', '', '', '000000', '000000', '14', '10 40 14 0', 'CCCCCC', '', '220', '20', 1, 'EBEBEB', 'solid', '1', '5A5E5E', '14', 'FFFFFF', '53', '20', 1, 'BDBDBD', 'solid', '1', '5A5E5E', '14', '', 'FFFFFF', '5E5D5D', '5E5D5D', '12', '100', '', '100', '', '', 'none', 'solid', 'C4C4C4', 'none', '1', 'B2B0B0', '', '969494', 'B2B0B0', 'none', 'none', '', 'FFFFFF', '2', 'FFFFFF', '2', 'none', 0, '7', 0, '530', 0, '', '', '', '', '', 19),
(20, 'Green & White', 2, '', 'FFFFFF', '600', 1, 0, 'D3D3D3', 'top', 'FFFFFF', 'FFFFFF', '4E4E4E', '20', '1 37 1 1', '11', 'none', '', 'FFFFFF', '5', 1, 0, 'B2B2B0', 'top', 'FFFFFF', 'FFFFFF', '4E4E4E', '', '10 90 14 30', '10', 'none', '', 'FFFFFF', '5', '', '', '30', '540', '18', '92', '13', 'ECE7E7', 0, '0D3700', '', 0, 'top', 'FFFFFF', 'FFFFFF', '003312', '', 'none', '5', '003312', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/ikon/Icon.png', '', 'http://localhost/jeev-uthan/wp-content/plugins/spider-faq/upload/ikon/Icon.png', '', '495', '', '14', 0, 'D3D3D3', '', '', 'none', '5', 'A3A3A3', '', '', '', '', '', '', '', '', '', '6B6969', '000000', '14', '10 40 14 0', 'CCCCCC', '', '220', '20', 1, 'EBEBEB', 'solid', '2', '5A5E5E', '14', 'FFFFFF', '53', '20', 1, 'BDBDBD', 'solid', '2', '5A5E5E', '14', '', 'FFFFFF', '0D3700', '0D3700', '12', '99', '', '100', '', '2', 'none', 'solid', 'D3D3D3', 'none', '1', 'B2B0B0', '', 'A3A3A3', 'CCCDCE', 'none', 'none', '', 'FFFFFF', '2', 'A3A3A3', '2', 'none', 0, '47', 0, '495', 0, '', '', 'none', 'solid', 'solid', 20),
(21, 'Red & Grey', 2, '', 'FFFFFF', '600', 1, 0, '8F8F8F', 'top', 'FFFFFF', 'FFFFFF', 'ECE7E7', '20', '1 37 1 1', '11', 'none', '', 'FFFFFF', '3', 1, 0, '8F8F8F', 'top', 'FFFFFF', 'FFFFFF', 'ECE7E7', '', '10 90 14 30', '10', 'none', '', 'FFFFFF', '5', '5', '2', '30', '540', '18', '', '', 'ECE7E7', 0, '370009', '', 0, 'top', 'FFFFFF', 'FFFFFF', '46171E', '', 'none', '3', '46171E', '', '', '', '', '', '537', '', '14', 0, 'C4C4C4', '', '', 'none', '', 'FFFFFF', '', '', '', '', '', '', '', '', '', '4E4D4D', '000000', '14', '10 40 14 0', 'CCCCCC', '', '220', '20', 1, 'EBEBEB', 'solid', '1', '8B8B8B', '14', 'FFFFFF', '53', '20', 1, 'C2C2C2', 'solid', '1', '8B8B8B', '14', '', 'FFFFFF', '370009', '370009', '12', '100', '', '98', '5', '', 'none', 'none', 'B2B0B0', 'none', '1', 'FFFFFF', '', '46171E', 'C4C4C4', 'none', 'solid', '1', 'A3A3A3', '', '46171E', '', 'none', 0, '3', 0, '530', 1, '', '', 'solid', 'none', '', 21),
(18, 'Grey & White', 2, '', 'FFFFFF', '600', 1, 0, '636363', 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '19', '1 37 1 1', '11', 'none', '', 'FFFFFF', '3', 1, 0, 'ACACAC', 'top', 'FFFFFF', 'FFFFFF', 'FFFFFF', '12', '10 90 14 30', '10', 'none', '', 'FFFFFF', '3', '5', '2', '30', '540', '18', '', '15', '4E4D4D', 0, 'C2C2C2', '', 0, 'top', 'FFFFFF', 'FFFFFF', 'D9DBDB', '', 'none', '7', 'D9DBDB', '', '', '', '', '', '516', '4 7', '14', 0, 'D8D7D7', '', '', 'none', '7', '9C9C9C', '', '', '', '', '', '', '', '', '', '2F3B41', '000000', '14', '10 40 14 0', 'CCCCCC', '', '220', '20', 1, 'EBEBEB', 'solid', '2', '666666', '14', '000000', '53', '20', 1, 'EBEBEB', 'solid', '2', '666666', '14', '', '000000', 'C2C2C2', 'C2C2C2', '12', '98', '', '99', '3', '5', 'none', 'solid', 'D8D7D7', 'none', '1', 'B2B0B0', '', '7C7A7A', 'D8D7D7', 'none', 'none', '', 'FFFFFF', '', '7C7A7A', '', 'none', 1, '26', 0, '', 0, '30', 'FFFFFF', 'none', 'solid', 'solid', 18);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Android', 'android', 0),
(6, 'Version history', 'version-history', 0),
(7, 'mobileOS', 'mobileos', 0),
(8, 'about us', 'about-us', 0),
(9, 'help them', 'help-them', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(5, 6, 0),
(5, 7, 0),
(73, 2, 0),
(82, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(6, 6, 'category', '', 2, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 0),
(9, 9, 'faq_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ugf_fields`
--

CREATE TABLE IF NOT EXISTS `wp_ugf_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `field_type` varchar(25) DEFAULT NULL,
  `field_label` varchar(250) DEFAULT 'Inline',
  `lbl_placement` varchar(10) NOT NULL DEFAULT 'inline',
  `field_class` varchar(100) NOT NULL DEFAULT 'ugf-form-control',
  `lbl_wrapper_class` varchar(250) DEFAULT NULL,
  `field_machine_name` varchar(250) DEFAULT NULL,
  `field_wrapper_class` varchar(250) DEFAULT NULL,
  `field_prefix_html` text,
  `field_postfix_html` text,
  `matched_post_fields` varchar(50) DEFAULT NULL,
  `label_prefix` text,
  `label_suffix` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_ugf_fields`
--

INSERT INTO `wp_ugf_fields` (`id`, `form_id`, `field_type`, `field_label`, `lbl_placement`, `field_class`, `lbl_wrapper_class`, `field_machine_name`, `field_wrapper_class`, `field_prefix_html`, `field_postfix_html`, `matched_post_fields`, `label_prefix`, `label_suffix`, `ordering`) VALUES
(1, 1, 'image', 'please upload your pet\\''s photo', 'Inline', '', '', 'please upload your pet\\''s photo', '', '', '', NULL, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ugf_fields_attributes`
--

CREATE TABLE IF NOT EXISTS `wp_ugf_fields_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `attribute_name` varchar(50) NOT NULL,
  `attribute_value` varchar(250) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'input',
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_ugf_fields_attributes`
--

INSERT INTO `wp_ugf_fields_attributes` (`id`, `field_id`, `attribute_name`, `attribute_value`, `type`, `form_id`) VALUES
(1, 1, 'width', '', 'input', 1),
(2, 1, 'height', '', 'input', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ugf_fields_validations`
--

CREATE TABLE IF NOT EXISTS `wp_ugf_fields_validations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `validation_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ugf_forms`
--

CREATE TABLE IF NOT EXISTS `wp_ugf_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(50) DEFAULT NULL,
  `post_method` enum('POST','GET') DEFAULT NULL,
  `post_type` varchar(25) DEFAULT NULL,
  `form_short_code` varchar(250) DEFAULT NULL,
  `email_template` text,
  `form_prefix_html` text,
  `form_postfix_html` text,
  `form_classes` varchar(250) DEFAULT NULL,
  `form_start_date` date DEFAULT NULL,
  `form_end_date` date DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT '0',
  `captcha_msg` varchar(250) DEFAULT NULL,
  `form_sucess_msg` text,
  `enable_form` int(1) NOT NULL DEFAULT '1',
  `post_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_ugf_forms`
--

INSERT INTO `wp_ugf_forms` (`id`, `form_name`, `post_method`, `post_type`, `form_short_code`, `email_template`, `form_prefix_html`, `form_postfix_html`, `form_classes`, `form_start_date`, `form_end_date`, `captcha`, `captcha_msg`, `form_sucess_msg`, `enable_form`, `post_title`) VALUES
(1, 'missing pets', 'POST', 'page', NULL, NULL, '<h1>missing pet''s information</h1>\r\n<form></form>', '<h4>close</h4>', 'mypet', '2015-03-31', '2016-03-31', 1, 'please enter the given numbers', 'form submitted successfully', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '72'),
(17, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:18:"dashboard_activity";}'),
(18, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(19, 1, 'wp_user-settings', 'hidetb=1&editor=tinymce&post_dfw=off&libraryContent=browse&align=center&posts_list_mode=list'),
(20, 1, 'wp_user-settings-time', '1429702703'),
(23, 1, 'session_tokens', 'a:6:{s:64:"4df9e55d35e73f43d758b657ba830db972bff31422395d762ca998a46146bb3d";a:4:{s:10:"expiration";i:1429811022;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428601422;}s:64:"2db2216497d6e5f0f7b747d913e4b529de34a56f6ba63c234f8fe1e704f30fa6";a:4:{s:10:"expiration";i:1429961888;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.45 Safari/537.36";s:5:"login";i:1428752288;}s:64:"41d9f3239cbe614bdb856c0b2beeac83496ab165704b6bb7ae3aac740bf0c745";a:4:{s:10:"expiration";i:1430137555;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0";s:5:"login";i:1428927955;}s:64:"9379978a626f9ea6450dd1f0cf3badcd4ff83dbf6b528d2e064753526c26c105";a:4:{s:10:"expiration";i:1430194655;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428985055;}s:64:"0a92df0c0375ef29c51ea956a3c0c9708f2dfa568bf6fa425a5d9e765d466e27";a:4:{s:10:"expiration";i:1430194680;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428985080;}s:64:"77b058eb7b2c4c32ab3984be101e3511134434b2bdb4f24090a82f30065530cd";a:4:{s:10:"expiration";i:1429875182;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1429702382;}}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(26, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2'),
(28, 1, 'closedpostboxes_page', 'a:0:{}'),
(29, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(30, 1, 'nav_menu_recently_edited', '8');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bqgc6C98A5yz7uHw9YixKq6GKgBF3v.', 'root', 'shraddhabhurre@gmail.com', '', '2015-03-18 09:26:31', '', 0, 'root');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
