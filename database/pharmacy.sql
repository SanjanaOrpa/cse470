-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2015 at 05:57 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE IF NOT EXISTS `medicines` (
  `medicine_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `medicine_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `generic_name` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `medicine_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `medicine_descr` text COLLATE latin1_general_ci,
  `medicine_price` decimal(6,2) NOT NULL,
  `medicine_weight` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicine_isbn`, `medicine_title`, `generic_name`, `medicine_image`, `medicine_descr`, `medicine_price`, `medicine_weight`) VALUES
('978-0-321-94786-4', 'napa extra', 'Caffeine+Paracetamol', 'napa_extra.jpg', ' This is the combination of Paracetamol (Acetaminophen) and Caffeine. It has analgesic and antipyretic properties. The presence of Caffeine increases the analgesic effect of Paracetamol. Paracetamol is one of the safest and most widely used analgesic and antipyretic. It produces analgesic action by elevation of the pain threshold and antipyresis through action on the hypothalamic heat regulating center. Caffeine is an alkaloid which is a theophylline like Xanthine derivative. By intermolecular association with Paracetamol, Caffeine increases the solubility and transmembrane permeation of Paracetamol. In addition caffeine increases the pain threshold and tolerance of pain. Caffeine has also an intrinsic power to raise vessel tone in the cranial of the brain, which provides another benefit to treat migraine and headache.', '2.00', 6),
('978-0-7303-1484-4', 'Amilin', 'Amitrytyline Hydrochloride BP', 'Amilin.jpg', 'Amitriptyline HCl is an antidepressant with sedative effects. Its mechanism of action in man is not known. It is not a monoamine oxidase inhibitor and it does not act primarily by stimulation of the central nervous system.
Amitriptyline inhibits the membrane pump mechanism responsible for uptake of norepinephrine and serotonin in adrenergic and serotonergic neurons. Pharmacologically, this action may potentiate or prolong neuronal activity since reuptake of these biogenic amines is important physiologically in terminating transmitting activity. This interference with reuptake of norepinephrine and/or serotonin is believed by some to underlie the antidepressant activity of Amitriptyline.', '20.00', 2),
('978-1-118-94924-5', 'Bizoran', 'Amlodipline+Olmesartan Medoxomil', 'Bizoran.jpg', 'Bizoran® is a combination product containing Amlodipine, a calcium channel blocker and Olmesartan, an angiotensin II receptor blocker. Amlodipine is a dihydropyridine calcium channel blocker that inhibits the transmembrane influx of calcium ions into vascular smooth muscle & cardiac muscle. Amlodipine is a peripheral arterial vasodilator that acts directly on vascular smooth muscle to cause a reduction in peripheral vascular resistance & a reduction in blood pressure. Olmesartan is an angiotensin II receptor blocker that acts on AT1 subtype. By blocking the action of angiotensin II, Olmesartan dilates blood vessels and reduces blood pressure without affecting pulse rate', '37.00', 5),
('978-1-1180-2669-4', 'Coversyl', 'Perindopril tert-butylamine', 'coversyl.jpg', 'The name of your medicine is COVERSYL. The medicine contains the active ingredient perindopril arginine. Perindopril belongs to a group of medicines called angiotensin converting enzyme (ACE) inhibitors.', '13.00', 1),
('978-1-44937-019-0', 'Deslor', 'Desloratadine INN', 'deslor.jpg', 'Desloratadine is an antihistamine used to relieve allergy symptoms such as watery eyes, runny nose, itching eyes/nose, sneezing, hives, and itching. It works by blocking a certain natural substance (histamine) that your body makes during an allergic reaction.', '70.00', 3),
('978-1-44937-075-6', 'Doxin', 'Doxycycline', 'doxin.jpg', 'Doxycycline has a very wide spectrum of activities and has been used in the treatment of a large number of infections caused by susceptible organisms', '40.00', 3),
('978-1-4571-0402-2', 'Fexo', 'Fexofenadine Hydrochloride USP', 'FEXO.jpg', 'Fexofenadine is an antihistamine used to relieve allergy symptoms such as watery eyes, runny nose, itching eyes/nose, sneezing, hives, and itching. It works by blocking a certain natural substance (histamine) that your body makes during an allergic reaction.', '100.00', 1),
('978-1-484216-40-8', 'Flagyl 400', 'Metronidazple BP', 'flagyl.jpg', 'The name of this medicine is Flagyl 200mg or 400mg Tablets (called Flagyl in this leaflet). Flagyl contains a medicine called metronidazole. This belongs to a group of medicines called antibiotics.', '15.00', 4),
('978-1-484217-26-9', 'Informet', 'Metformin Hydrocholdride', 'Informet.jpg', 'The name of this medicine is Flagyl 200mg or 400mg Tablets (called Flagyl in this leaflet). Flagyl contains a medicine called metronidazole. This belongs to a group of medicines called antibiotics.', '20.00', 11),
('978-1-49192-706-9', 'Linatab', 'Linagliptin', 'Linatab.jpg', 'Linagliptin is indicated in the treatment of type-2 diabetes mellitus to improve glycaemic control in adults:', '20.00', 90);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(10) unsigned NOT NULL,
  `customerid` int(10) unsigned NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `orderid` int(10) unsigned NOT NULL,
  `medicine_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `medicine_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `medicine_weight` int(10) unsigned NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`medicine_weight`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O''Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicine_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`medicine_weight`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `medicine_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
