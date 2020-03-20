-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 03:03 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auctionista`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `3_ongoing_auctions`
-- (See below for the actual view)
--
CREATE TABLE `3_ongoing_auctions` (
`auction_end` datetime
,`auction_start` datetime
,`item_desc` varchar(255)
,`item_id` int(11) unsigned
,`item_img` varchar(255)
,`item_name` varchar(255)
,`reserved_price` int(11) unsigned
,`seller_id` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `5_auction_creator`
-- (See below for the actual view)
--
CREATE TABLE `5_auction_creator` (
`auction_end` datetime
,`auction_start` datetime
,`item_desc` varchar(255)
,`item_id` int(11) unsigned
,`item_img` varchar(255)
,`item_name` varchar(255)
,`reserved_price` int(11) unsigned
,`user_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `6_latest_bid`
-- (See below for the actual view)
--
CREATE TABLE `6_latest_bid` (
`bid_id` int(11) unsigned
,`bid_item` int(11) unsigned
,`bid_price` int(11) unsigned
,`bid_time` datetime
,`bid_user` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `8_reserved_price_reached`
-- (See below for the actual view)
--
CREATE TABLE `8_reserved_price_reached` (
`item_name` varchar(255)
,`reserve_price_met` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `9_latest_publ_auction`
-- (See below for the actual view)
--
CREATE TABLE `9_latest_publ_auction` (
`auction_end` datetime
,`auction_start` datetime
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`item_name` varchar(255)
,`seller_id` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `10_auction_ending_first`
-- (See below for the actual view)
--
CREATE TABLE `10_auction_ending_first` (
`auction_end` datetime
,`auction_start` datetime
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`item_name` varchar(255)
,`seller_id` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `bid_id` int(11) UNSIGNED NOT NULL,
  `bid_item` int(11) UNSIGNED NOT NULL,
  `bid_user` int(11) UNSIGNED NOT NULL,
  `bid_price` int(11) UNSIGNED NOT NULL,
  `bid_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`bid_id`, `bid_item`, `bid_user`, `bid_price`, `bid_time`) VALUES
(1, 56, 97, 94693, '2020-03-22 13:58:18'),
(2, 23, 39, 11570, '2020-04-07 18:36:30'),
(3, 88, 65, 5551, '2020-03-27 20:17:07'),
(4, 91, 29, 85367, '2020-04-24 05:47:26'),
(5, 3, 88, 5591, '2020-04-24 22:38:56'),
(6, 3, 66, 5100, '2020-03-18 02:11:57'),
(7, 55, 8, 85836, '2020-05-03 18:59:44'),
(8, 42, 72, 29829, '2020-04-25 21:44:23'),
(9, 100, 8, 41704, '2020-05-15 20:10:52'),
(10, 57, 60, 27869, '2020-05-09 01:41:23'),
(11, 56, 2, 90000, '2020-03-03 11:21:00'),
(12, 56, 2, 90000, '2020-03-03 11:21:00'),
(13, 56, 88, 90000, '2020-03-11 06:26:00'),
(14, 56, 88, 90000, '2020-03-11 06:26:00'),
(15, 23, 44, 10000, '2020-03-17 05:17:27'),
(16, 23, 44, 10000, '2020-03-17 05:17:27'),
(17, 88, 34, 5000, '2020-03-16 06:20:33'),
(18, 88, 34, 5000, '2020-03-16 06:20:33'),
(19, 91, 99, 80000, '2020-03-20 05:25:14'),
(20, 91, 99, 80000, '2020-03-20 05:25:14'),
(21, 3, 77, 4000, '2020-03-24 07:18:00'),
(22, 3, 77, 4000, '2020-03-24 07:18:00'),
(23, 55, 98, 20000, '2020-03-12 05:25:31'),
(24, 55, 98, 20000, '2020-03-12 05:25:31'),
(25, 42, 23, 25000, '2020-03-04 07:15:32'),
(26, 42, 23, 25000, '2020-03-04 07:15:32'),
(27, 57, 14, 21000, '2020-03-03 10:13:00'),
(28, 57, 14, 21000, '2020-03-03 10:13:00'),
(29, 101, 30, 94693, '2020-03-22 12:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `seller_id` int(11) UNSIGNED NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `reserved_price` int(11) UNSIGNED NOT NULL,
  `auction_start` datetime NOT NULL,
  `auction_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `seller_id`, `item_desc`, `item_img`, `reserved_price`, `auction_start`, `auction_end`) VALUES
(1, 'Pediatric Infuvite Multiple Vitamins for Infusion', 47, 'Dilation of Innom Art with 2 Drug-elut, Perc Approach', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 08:22:17', '2020-05-21 00:18:00'),
(2, 'Imipramine Hydrochloride', 54, 'Insert Infusion Dev in Uterus & Cervix, Perc Endo', 'http://dummyimage.com/188x235.bmp/5fa2dd/ffffff', 251, '2020-03-13 08:17:00', '2020-05-18 04:14:00'),
(3, 'ELF TINTED MOISTURIZER', 1, 'Alteration of Female Perineum with Nonaut Sub, Open Approach', 'http://dummyimage.com/229x239.bmp/ff4444/ffffff', 76, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(4, 'Alcohol Swabs with Benzocaine', 94, 'Drainage of Bilateral Seminal Vesicles, Perc Approach', 'http://dummyimage.com/189x144.bmp/ff4444/ffffff', 5, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(5, 'Arnica Betula A', 13, 'Removal of Drain Dev from R Sacroiliac Jt, Perc Approach', 'http://dummyimage.com/210x248.bmp/ff4444/ffffff', 3, '2020-03-10 07:24:00', '2020-05-29 00:00:00'),
(6, 'Lidocaine Hydrochloride', 81, 'Drainage of Cystic Duct with Drainage Device, Open Approach', 'http://dummyimage.com/107x124.jpg/dddddd/000000', 635, '2020-03-17 00:00:00', '2020-05-27 00:00:00'),
(7, 'Isoniazid', 92, 'Bypass Ileum to Cutaneous, Open Approach', 'http://dummyimage.com/178x190.bmp/cc0000/ffffff', 9, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(8, 'Promethazine Hydrochloride', 31, 'Dilate L Thyroid Art, Bifurc, w 4+ Intralum Dev, Perc Endo', 'http://dummyimage.com/120x169.png/5fa2dd/ffffff', 7043, '2020-03-17 00:00:00', '2020-05-24 00:00:00'),
(9, 'AILANTHUS ALTISSIMA POLLEN', 93, 'Plain Radiography of Right Parotid Gland using Oth Contrast', 'http://dummyimage.com/140x150.png/5fa2dd/ffffff', 77, '2020-03-25 00:20:00', '2020-05-03 00:00:00'),
(10, 'Fenofibrate', 87, 'Replace L Thorax Tendon w Synth Sub, Perc Endo', 'http://dummyimage.com/158x217.png/cc0000/ffffff', 95, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(11, 'Grain Smut Mixture', 86, 'Supplement Left Humeral Shaft with Nonaut Sub, Perc Approach', 'http://dummyimage.com/178x212.jpg/cc0000/ffffff', 512, '2020-03-12 07:12:00', '2020-05-17 00:00:00'),
(12, 'Instant Hand Sanitizer Original With Moisturizer and Vitamin E', 85, 'Removal of Radioactive Element from Right Eye, Via Opening', 'http://dummyimage.com/215x154.png/5fa2dd/ffffff', 1, '2020-03-27 07:27:00', '2020-05-17 00:00:00'),
(13, 'Ultravate PAC', 63, 'Removal of Drainage Device from R Carpal Jt, Open Approach', 'http://dummyimage.com/152x244.jpg/cc0000/ffffff', 814, '2020-03-17 00:00:00', '2020-05-10 00:00:00'),
(14, 'simvastatin', 35, 'Revision of Synth Sub in L Knee Jt, Femoral, Open Approach', 'http://dummyimage.com/135x183.jpg/ff4444/ffffff', 95, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(15, 'Diltiazem Hydrochloride', 17, 'Removal of Drainage Device from Cereb Vent, Perc Approach', 'http://dummyimage.com/177x153.png/ff4444/ffffff', 96577, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(16, 'Ziprasidone Hydrochloride', 25, 'Revision of Int Fix in R Clavicle, Perc Endo Approach', 'http://dummyimage.com/208x195.bmp/dddddd/000000', 27, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(17, 'CVS Pharmacy Ibuprofen', 14, 'Bypass Abd Aorta to Low Ex Art w Synth Sub, Perc Endo', 'http://dummyimage.com/173x188.jpg/dddddd/000000', 86163, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(18, 'SURFAXIN', 39, 'Release Cervicothoracic Vertebral Disc, Perc Endo Approach', 'http://dummyimage.com/212x132.jpg/5fa2dd/ffffff', 67892, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(19, 'Plaquenil', 92, 'Dilate R Axilla Art, Bifurc, w 2 Intralum Dev, Open', 'http://dummyimage.com/217x234.bmp/cc0000/ffffff', 508, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(20, 'Carisoprodol', 76, 'Removal of Nonaut Sub from Trachea, Perc Approach', 'http://dummyimage.com/193x222.png/ff4444/ffffff', 786, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(21, 'Clamue Healthy Fresh BB Cream Medium Deep', 53, 'Restriction of Right Subclavian Artery, Perc Endo Approach', 'http://dummyimage.com/232x144.jpg/cc0000/ffffff', 175, '2020-03-17 00:00:00', '2020-05-16 00:00:00'),
(22, 'Gentamicin', 12, 'Division of Tibial Nerve, Open Approach', 'http://dummyimage.com/154x116.bmp/ff4444/ffffff', 9813, '2020-03-05 00:00:00', '2020-05-21 00:00:00'),
(23, 'DIVALPROEX SODIUM', 69, 'Drainage of Right Thorax Muscle, Perc Endo Approach, Diagn', 'http://dummyimage.com/210x156.bmp/5fa2dd/ffffff', 0, '2020-03-29 11:00:00', '2020-05-17 00:00:00'),
(24, 'Elevate RXS', 47, 'Planar Nucl Med Imag Parathyroid Gland w Technetium 99m', 'http://dummyimage.com/205x233.bmp/ff4444/ffffff', 21, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(25, 'Germ Crusher Hand Sanitizer Wipes', 65, 'Dilation of Splenic Art with 3 Intralum Dev, Open Approach', 'http://dummyimage.com/238x154.bmp/ff4444/ffffff', 999, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(26, 'D-Cal Kids', 85, 'Replace of Buccal Mucosa with Nonaut Sub, Extern Approach', 'http://dummyimage.com/105x141.bmp/dddddd/000000', 86, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(27, 'Metoprolol Tartrate', 10, 'Irrigate of Spinal Canal using Irrigat, Perc Approach, Diagn', 'http://dummyimage.com/239x146.png/5fa2dd/ffffff', 0, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(28, 'Bladder Incontinence Formula', 60, 'Drainage of Left Shoulder Muscle, Perc Endo Approach, Diagn', 'http://dummyimage.com/145x210.jpg/ff4444/ffffff', 32459, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(29, 'Walgreen Sensitive Extra Whitening', 74, 'Occlusion Inf Mesent Vein w Extralum Dev, Open', 'http://dummyimage.com/226x105.jpg/dddddd/000000', 3, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(30, 'Mucus Relief PE', 75, 'Release Left External Iliac Artery, Perc Endo Approach', 'http://dummyimage.com/215x195.bmp/ff4444/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(31, 'Pure and Gentle Mineral Oil Enema', 88, 'Drainage of Left Large Intestine, Open Approach', 'http://dummyimage.com/200x173.png/5fa2dd/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(32, 'stila CC color correcting broad-spectrum SPF 20 08 TAN', 73, 'Reposition Left Tibia with Hybrid Ext Fix, Perc Approach', 'http://dummyimage.com/164x207.jpg/dddddd/000000', 37050, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(33, 'Animal Allergens, Feather Mix', 50, 'Bypass R Basilic Vein to Up Vein w Synth Sub, Perc Endo', 'http://dummyimage.com/114x200.jpg/cc0000/ffffff', 7, '2020-03-17 00:00:00', '2020-05-04 00:00:00'),
(34, 'Lipitor', 55, 'Restriction of Inferior Mesenteric Vein, Open Approach', 'http://dummyimage.com/159x187.jpg/cc0000/ffffff', 952, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(35, 'Treatment Set TS337681', 91, 'Occlusion of Stomach, Pylorus, Via Opening', 'http://dummyimage.com/217x236.png/5fa2dd/ffffff', 987, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(36, 'FREDS ADVANCED EYE DROPS', 70, 'Supplement Prepuce with Autol Sub, Perc Endo Approach', 'http://dummyimage.com/158x102.jpg/cc0000/ffffff', 27, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(37, 'Cymbalta', 99, 'Replace R Temporal Bone w Nonaut Sub, Perc Endo', 'http://dummyimage.com/224x162.png/5fa2dd/ffffff', 21819, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(38, 'Dermablend Quick Fix Concealer', 96, 'Repair R Foot Subcu/Fascia, Perc Approach', 'http://dummyimage.com/105x191.png/dddddd/000000', 976, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(39, 'Sunmark enema', 16, 'Destruction of Lower Tooth, Multiple, Open Approach', 'http://dummyimage.com/147x180.png/ff4444/ffffff', 7, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(40, 'eszopiclone', 89, 'Beam Radiation of Mouth using Electrons, Intraoperative', 'http://dummyimage.com/156x159.jpg/ff4444/ffffff', 5, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(41, 'Rimmel London', 60, 'Extirpation of Matter from Cerv Jt, Open Approach', 'http://dummyimage.com/231x204.bmp/cc0000/ffffff', 5385, '2020-03-17 00:00:00', '2020-05-05 00:00:00'),
(42, 'citalopram hydrobromide', 35, 'Destruction of Upper Gingiva, External Approach', 'http://dummyimage.com/123x169.bmp/5fa2dd/ffffff', 9132, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(43, 'Spondylocladium', 29, 'Insertion of Infusion Device into Ileum, Endo', 'http://dummyimage.com/247x179.jpg/ff4444/ffffff', 69544, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(44, 'Multi-Vitamin', 68, 'Revision of Radioactive Element in GU Tract, Via Opening', 'http://dummyimage.com/122x218.bmp/cc0000/ffffff', 45174, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(45, 'PlusPHARMA', 9, 'Extirpation of Matter from R Lg Intest, Perc Endo Approach', 'http://dummyimage.com/125x227.png/dddddd/000000', 9944, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(46, 'THERAPEUTIC', 8, 'Supplement R Inqnl Lymph with Synth Sub, Perc Endo Approach', 'http://dummyimage.com/162x165.jpg/cc0000/ffffff', 72658, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(47, 'Demerol', 17, 'Fusion of R Elbow Jt with Synth Sub, Perc Endo Approach', 'http://dummyimage.com/173x179.jpg/ff4444/ffffff', 45970, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(48, 'NO-AD Sport 50 Sunscreen', 76, 'Revision of Synth Sub in R Tarsal Jt, Extern Approach', 'http://dummyimage.com/151x103.png/dddddd/000000', 8, '2020-03-17 00:00:00', '2020-05-19 00:00:00'),
(49, 'Lisinopril', 17, 'Fusion of Thor Jt, Post Appr A Col, Open Approach', 'http://dummyimage.com/187x129.bmp/ff4444/ffffff', 3, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(50, 'Prednisolone', 31, 'Monitor of Arterial Saturation, Peripheral, Extern Approach', 'http://dummyimage.com/180x116.png/cc0000/ffffff', 8164, '2020-03-17 00:00:00', '2020-05-06 00:00:00'),
(51, 'Klor-Con', 96, 'Insertion of Infusion Dev into R Int Carotid, Perc Approach', 'http://dummyimage.com/151x250.png/5fa2dd/ffffff', 58990, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(52, 'OBAGI C RX SYSTEM C CLARIFYING SERUM', 34, 'Irrigate of Male Reprod using Irrigat, Perc Approach, Diagn', 'http://dummyimage.com/206x199.jpg/5fa2dd/ffffff', 64396, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(53, 'Argatroban', 68, 'Alteration of Left Ankle Region, Open Approach', 'http://dummyimage.com/227x218.png/cc0000/ffffff', 4603, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(54, 'Eye Wash', 22, 'Bypass R Int Iliac Art to R Ext Ilia w Autol Art, Open', 'http://dummyimage.com/145x216.png/dddddd/000000', 16, '2020-03-17 00:00:00', '2020-05-07 00:00:00'),
(55, 'Care One Chest Congestion Relief', 32, 'Remove Contracep Dev from Uterus & Cervix, Perc Endo', 'http://dummyimage.com/218x205.bmp/ff4444/ffffff', 905, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(56, 'HAVE A NICE DAY', 29, 'Reposition Right Hand Tendon, Open Approach', 'http://dummyimage.com/120x143.jpg/5fa2dd/ffffff', 8883, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(57, 'Ferric Subsulfate', 14, 'Division of L Up Arm Subcu/Fascia, Open Approach', 'http://dummyimage.com/176x108.png/cc0000/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(58, 'Head and Shoulders', 2, 'Drainage of Right External Auditory Canal, Perc Approach', 'http://dummyimage.com/155x162.bmp/dddddd/000000', 58, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(59, 'AsthmaClear', 2, 'Removal of Other Device from L Up Extrem, Perc Endo Approach', 'http://dummyimage.com/157x169.jpg/dddddd/000000', 403, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(60, 'RoC Multi Correxion 4 Zone Daily Moisturizer', 45, 'Reposition Left Tympanic Membrane, Perc Endo Approach', 'http://dummyimage.com/180x125.png/cc0000/ffffff', 9051, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(61, 'Oxygen', 10, 'Supplement Peritoneum with Autol Sub, Open Approach', 'http://dummyimage.com/150x220.png/dddddd/000000', 2, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(62, 'Metformin Hydrochloride', 41, 'Fusion Thor Jt w Autol Sub, Ant Appr A Col, Perc', 'http://dummyimage.com/198x224.png/cc0000/ffffff', 55853, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(63, 'Famotidine', 70, 'CT Scan of R Pulm Art using H Osm Contrast', 'http://dummyimage.com/155x243.png/ff4444/ffffff', 21225, '2020-03-17 00:00:00', '2020-05-08 00:00:00'),
(64, 'Precose', 11, 'Excision of Right Choroid, Open Approach, Diagnostic', 'http://dummyimage.com/165x174.png/ff4444/ffffff', 4, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(65, 'AIR', 62, 'Removal of Splint on Back', 'http://dummyimage.com/140x249.bmp/dddddd/000000', 30659, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(66, 'Oxycodone and Acetaminophen', 2, 'Supplement R Knee Tendon with Nonaut Sub, Perc Endo Approach', 'http://dummyimage.com/134x132.jpg/cc0000/ffffff', 72633, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(67, 'Healthy Accents Naproxen Sodium', 60, 'Extirpation of Matter from R Axilla Lymph, Open Approach', 'http://dummyimage.com/193x209.png/cc0000/ffffff', 30, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(68, 'Bakers Yeast', 44, 'Change Drainage Device in Upper Tendon, External Approach', 'http://dummyimage.com/114x222.bmp/dddddd/000000', 2212, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(69, 'Healing Waters Sweet Pea Antibacterial Hand Soap', 45, 'Drainage of Bladder with Drainage Device, Open Approach', 'http://dummyimage.com/222x233.jpg/cc0000/ffffff', 3, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(70, 'Risperidone', 89, 'Upper Veins, Removal', 'http://dummyimage.com/129x236.png/ff4444/ffffff', 61835, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(71, 'Pain Relief', 33, 'Removal of Nonaut Sub from R Ulna, Open Approach', 'http://dummyimage.com/172x228.bmp/dddddd/000000', 43, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(72, 'H-Balm Control', 51, 'Supplement Left Palatine Bone with Nonaut Sub, Perc Approach', 'http://dummyimage.com/133x250.bmp/cc0000/ffffff', 53, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(73, 'Perform', 20, 'Drainage of R Sup Parathyroid with Drain Dev, Perc Approach', 'http://dummyimage.com/152x247.png/dddddd/000000', 43, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(74, 'Epinastine HCl', 40, 'Transfer Training Treatment using Mechanical Equipment', 'http://dummyimage.com/215x156.jpg/5fa2dd/ffffff', 9383, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(75, 'Nystatin and Triamcinolone', 34, 'Fusion C-thor Jt w Intbd Fus Dev, Post Appr A Col, Perc Endo', 'http://dummyimage.com/110x193.bmp/ff4444/ffffff', 8, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(76, 'Metoclopramide', 57, 'Destruction of Upper Lip, Open Approach', 'http://dummyimage.com/118x192.png/cc0000/ffffff', 840, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(77, 'Berkley and Jensen Ranitidine', 85, 'Replacement of L Metatarsal with Nonaut Sub, Perc Approach', 'http://dummyimage.com/169x102.bmp/ff4444/ffffff', 7, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(78, 'Softlips Salted Caramel', 75, 'Insertion of Radioact Elem into Pancreat Duct, Open Approach', 'http://dummyimage.com/187x172.jpg/ff4444/ffffff', 94, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(79, 'Givenchy Photo Perfexion Fluid Foundation SPF 20 Perfect Vanilla Tint 4', 26, 'Revision of Tissue Expander in Right Breast, Endo', 'http://dummyimage.com/246x233.jpg/5fa2dd/ffffff', 6, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(80, 'Lorazepam', 25, 'Dilate L Int Mamm Art, Bifurc, w 3 Intralum Dev, Perc Endo', 'http://dummyimage.com/189x165.bmp/dddddd/000000', 2, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(81, 'First Aid Antibiotic Pain Relief', 31, 'Drainage of Other Fluid from POC, Via Opening', 'http://dummyimage.com/163x200.jpg/dddddd/000000', 0, '2020-03-17 00:00:00', '2020-05-09 00:00:00'),
(82, 'Coppertone Sensitive Skin', 26, 'Release Thoracic Vertebral Joint, Perc Endo Approach', 'http://dummyimage.com/131x164.png/5fa2dd/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(83, 'Zosyn', 60, 'Removal of Nonautologous Tissue Substitute from L Eye, Endo', 'http://dummyimage.com/144x205.jpg/ff4444/ffffff', 660, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(84, 'Rhus Tox Kit Refill', 98, 'Release Common Bile Duct, Endo', 'http://dummyimage.com/222x165.jpg/dddddd/000000', 4, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(85, 'Haddock', 93, 'Revise of Infusion Dev in R Metacarpocarp Jt, Perc Approach', 'http://dummyimage.com/229x212.bmp/5fa2dd/ffffff', 1995, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(86, 'Nizatidine', 8, 'Supplement Upper Gingiva with Autol Sub, Perc Approach', 'http://dummyimage.com/127x222.bmp/5fa2dd/ffffff', 74, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(87, 'Metoclopramide', 59, 'Restriction of Lower Artery with Intralum Dev, Perc Approach', 'http://dummyimage.com/145x187.jpg/5fa2dd/ffffff', 7621, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(88, 'FLUMAZENIL', 22, 'Drainage of L Hip Bursa/Lig with Drain Dev, Perc Approach', 'http://dummyimage.com/241x237.png/cc0000/ffffff', 3, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(89, 'Vida Mia Hand Sanitizer Aloe Vera', 38, 'Fusion Lum Jt w Autol Sub, Ant Appr A Col, Open', 'http://dummyimage.com/116x135.bmp/ff4444/ffffff', 249, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(90, 'Levalbuterol Hydrochloride', 2, 'Dilate of R Thyroid Art with Drug-elut Intra, Open Approach', 'http://dummyimage.com/117x122.jpg/ff4444/ffffff', 44574, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(91, 'Fenofibric Acid', 43, 'Insertion of Infusion Dev into Pericard Cav, Perc Approach', 'http://dummyimage.com/242x178.jpg/cc0000/ffffff', 9, '2020-03-17 00:00:00', '2020-05-12 00:00:00'),
(92, 'Bio Myelin Protein', 46, 'Replacement of Right Mandible with Nonaut Sub, Perc Approach', 'http://dummyimage.com/210x139.bmp/cc0000/ffffff', 4676, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(93, 'Pink Bismuth', 36, 'Drainage of L Metatarsotars Jt, Perc Endo Approach, Diagn', 'http://dummyimage.com/217x141.bmp/5fa2dd/ffffff', 6605, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(94, 'Epirubicin Hydrochloride', 4, 'Release Trigeminal Nerve, Percutaneous Endoscopic Approach', 'http://dummyimage.com/179x154.jpg/5fa2dd/ffffff', 39857, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(95, 'Losartan Potassium and Hydrochlorothiazide', 21, 'Fluoroscopy of Bi Pelvic Vein using L Osm Contrast, Guidance', 'http://dummyimage.com/141x241.bmp/5fa2dd/ffffff', 5, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(96, 'day relief pe', 41, 'Release Right External Carotid Artery, Percutaneous Approach', 'http://dummyimage.com/133x145.png/5fa2dd/ffffff', 8803, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(97, 'Metoprolol Tartrate', 37, 'Dilation of Bi Ureter with Intralum Dev, Perc Endo Approach', 'http://dummyimage.com/108x160.png/5fa2dd/ffffff', 1380, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(98, 'Red Eye Reducer', 71, 'Replace R Low Arm & Wrist Tendon w Synth Sub, Open', 'http://dummyimage.com/230x116.jpg/5fa2dd/ffffff', 5, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(99, 'Kiehls Since 1851 CrossTerrain Antiperspirant Deodorant', 47, 'Replace of L Ext Jugular Vein with Nonaut Sub, Open Approach', 'http://dummyimage.com/248x165.bmp/5fa2dd/ffffff', 36, '2020-03-17 00:00:00', '2020-05-15 00:00:00'),
(100, 'Flurazepam', 57, 'Restrict L Axilla Lymph w Intralum Dev, Perc Endo', 'http://dummyimage.com/179x183.bmp/ff4444/ffffff', 28617, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(101, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(102, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(103, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(104, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(105, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(106, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(107, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00'),
(108, 'Alvedon', 87, 'Makes you sleep', 'http://dummyimage.com/136x245.png/dddddd/000000', 1, '2020-03-09 07:22:17', '2020-05-20 22:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`) VALUES
(1, 'Maurene Halsall', 'mhalsall0@senate.gov'),
(2, 'Mandi Jerdein', 'mjerdein1@auda.org.au'),
(3, 'Evangelin McCaffery', 'emccaffery2@wordpress.com'),
(4, 'Zebedee Marie', 'zmarie3@nyu.edu'),
(5, 'Eyde Novis', 'enovis4@xrea.com'),
(6, 'Izabel Londsdale', 'ilondsdale5@surveymonkey.com'),
(7, 'Florence Jaze', 'fjaze6@stumbleupon.com'),
(8, 'Cordell Duigan', 'cduigan7@symantec.com'),
(9, 'Ban Dwelley', 'bdwelley8@lulu.com'),
(10, 'Lacie Emor', 'lemor9@altervista.org'),
(11, 'Briny Sired', 'bsireda@flickr.com'),
(12, 'Cherise Emmott', 'cemmottb@unesco.org'),
(13, 'Toddie Rumgay', 'trumgayc@eventbrite.com'),
(14, 'Jock Vina', 'jvinad@nba.com'),
(15, 'Helen-elizabeth Larraway', 'hlarrawaye@earthlink.net'),
(16, 'Maitilde Siaskowski', 'msiaskowskif@unesco.org'),
(17, 'Adeline Ziem', 'aziemg@ihg.com'),
(18, 'Luce O\'Sharkey', 'losharkeyh@redcross.org'),
(19, 'Evy Garthshore', 'egarthshorei@mysql.com'),
(20, 'Lorie Dobbyn', 'ldobbynj@senate.gov'),
(21, 'Price Rubke', 'prubkek@cnbc.com'),
(22, 'Janifer Josovich', 'jjosovichl@netvibes.com'),
(23, 'Florrie Rosin', 'frosinm@engadget.com'),
(24, 'Jordain Romayne', 'jromaynen@nydailynews.com'),
(25, 'Milena Borge', 'mborgeo@senate.gov'),
(26, 'Mel Pregel', 'mpregelp@google.pl'),
(27, 'Even Pullinger', 'epullingerq@xing.com'),
(28, 'Elwood Maddrell', 'emaddrellr@vk.com'),
(29, 'Aguie Folks', 'afolkss@samsung.com'),
(30, 'Galven Padly', 'gpadlyt@shinystat.com'),
(31, 'Thaxter Matthewes', 'tmatthewesu@ucla.edu'),
(32, 'Filbert Blaymires', 'fblaymiresv@meetup.com'),
(33, 'Raymund Sidebotton', 'rsidebottonw@printfriendly.com'),
(34, 'Katharyn Gue', 'kguex@example.com'),
(35, 'Claire Handscombe', 'chandscombey@netscape.com'),
(36, 'Knox Ickowicz', 'kickowiczz@istockphoto.com'),
(37, 'Raimondo Busby', 'rbusby10@google.co.uk'),
(38, 'Lesley Lutas', 'llutas11@economist.com'),
(39, 'Rosalie Rizzardo', 'rrizzardo12@soundcloud.com'),
(40, 'Nat Gibbard', 'ngibbard13@blogspot.com'),
(41, 'Del Neljes', 'dneljes14@msu.edu'),
(42, 'Madel Simester', 'msimester15@noaa.gov'),
(43, 'Cchaddie De la Barre', 'cde16@latimes.com'),
(44, 'Cale Babidge', 'cbabidge17@craigslist.org'),
(45, 'Sheba Rogerson', 'srogerson18@deliciousdays.com'),
(46, 'Dorian Woodison', 'dwoodison19@hc360.com'),
(47, 'Maxie Habbershon', 'mhabbershon1a@soundcloud.com'),
(48, 'Darn Monteath', 'dmonteath1b@theatlantic.com'),
(49, 'Melania Schutt', 'mschutt1c@chronoengine.com'),
(50, 'Donny Barti', 'dbarti1d@pbs.org'),
(51, 'Vinnie Stiell', 'vstiell1e@exblog.jp'),
(52, 'Shauna Crick', 'scrick1f@ehow.com'),
(53, 'Rochell Radnedge', 'rradnedge1g@google.co.jp'),
(54, 'Allistir Hanhardt', 'ahanhardt1h@hubpages.com'),
(55, 'Jeffrey Ghest', 'jghest1i@bbc.co.uk'),
(56, 'Carmon Stickler', 'cstickler1j@businessweek.com'),
(57, 'Imelda Crook', 'icrook1k@loc.gov'),
(58, 'Jarad Labb', 'jlabb1l@joomla.org'),
(59, 'Freeland Cattermole', 'fcattermole1m@biglobe.ne.jp'),
(60, 'Camellia Ferrieroi', 'cferrieroi1n@hugedomains.com'),
(61, 'Gerik Acors', 'gacors1o@de.vu'),
(62, 'Lark Longcaster', 'llongcaster1p@sciencedirect.com'),
(63, 'Emelita Duthy', 'eduthy1q@columbia.edu'),
(64, 'Kile Ancell', 'kancell1r@tripadvisor.com'),
(65, 'Ariela Field', 'afield1s@whitehouse.gov'),
(66, 'Corissa Penvarden', 'cpenvarden1t@lycos.com'),
(67, 'Dunc Macveigh', 'dmacveigh1u@163.com'),
(68, 'Chrisse Jagiello', 'cjagiello1v@cnet.com'),
(69, 'Peria Scardifeild', 'pscardifeild1w@skyrock.com'),
(70, 'Weylin Fettiplace', 'wfettiplace1x@pinterest.com'),
(71, 'Henriette Giblett', 'hgiblett1y@dell.com'),
(72, 'Archibald Domke', 'adomke1z@house.gov'),
(73, 'Daniele Boyles', 'dboyles20@dagondesign.com'),
(74, 'Lanna Klaaasen', 'lklaaasen21@t.co'),
(75, 'Julissa Medgwick', 'jmedgwick22@harvard.edu'),
(76, 'Junia Arrow', 'jarrow23@yahoo.com'),
(77, 'Filmore Soltan', 'fsoltan24@reference.com'),
(78, 'Opaline Precious', 'oprecious25@sourceforge.net'),
(79, 'Wood Morillas', 'wmorillas26@constantcontact.com'),
(80, 'Nicolais Meegin', 'nmeegin27@ucoz.com'),
(81, 'Berte Wragge', 'bwragge28@naver.com'),
(82, 'Rhys Dachs', 'rdachs29@europa.eu'),
(83, 'Lona Barkway', 'lbarkway2a@cam.ac.uk'),
(84, 'Filbert Schindler', 'fschindler2b@163.com'),
(85, 'Del Preshaw', 'dpreshaw2c@infoseek.co.jp'),
(86, 'Glenine Bassom', 'gbassom2d@360.cn'),
(87, 'Silvain Pimblott', 'spimblott2e@princeton.edu'),
(88, 'Vince Alvarado', 'valvarado2f@histats.com'),
(89, 'Gilbertine Van Halen', 'gvan2g@unblog.fr'),
(90, 'Marty Melliard', 'mmelliard2h@wordpress.org'),
(91, 'Audy Del Castello', 'adel2i@wiley.com'),
(92, 'Indira Joul', 'ijoul2j@msn.com'),
(93, 'Aileen McVicar', 'amcvicar2k@vk.com'),
(94, 'Fania Rudinger', 'frudinger2l@lycos.com'),
(95, 'Candace Taill', 'ctaill2m@hubpages.com'),
(96, 'Randie Eastabrook', 'reastabrook2n@shop-pro.jp'),
(97, 'Jeniffer Blowin', 'jblowin2o@miibeian.gov.cn'),
(98, 'Rodolphe Holleworth', 'rholleworth2p@nhs.uk'),
(99, 'Tammara Marte', 'tmarte2q@bluehost.com'),
(100, 'Jemie Aglione', 'jaglione2r@abc.net.au'),
(101, 'Berit Nilsson', 'beritnilsson0@senate.com');

-- --------------------------------------------------------

--
-- Structure for view `3_ongoing_auctions`
--
DROP TABLE IF EXISTS `3_ongoing_auctions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `3_ongoing_auctions`  AS  select `items`.`item_id` AS `item_id`,`items`.`item_name` AS `item_name`,`items`.`seller_id` AS `seller_id`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`reserved_price` AS `reserved_price`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` where ((`items`.`auction_end` >= now()) and (`items`.`auction_start` <= now())) ;

-- --------------------------------------------------------

--
-- Structure for view `5_auction_creator`
--
DROP TABLE IF EXISTS `5_auction_creator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `5_auction_creator`  AS  select `users`.`user_name` AS `user_name`,`items`.`item_id` AS `item_id`,`items`.`item_name` AS `item_name`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`reserved_price` AS `reserved_price`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from (`items` join `users`) where (`items`.`seller_id` = `users`.`user_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `6_latest_bid`
--
DROP TABLE IF EXISTS `6_latest_bid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `6_latest_bid`  AS  select `bids`.`bid_id` AS `bid_id`,`bids`.`bid_item` AS `bid_item`,`bids`.`bid_user` AS `bid_user`,`bids`.`bid_price` AS `bid_price`,`bids`.`bid_time` AS `bid_time` from `bids` where (`bids`.`bid_item` = 56) order by `bids`.`bid_time` desc ;

-- --------------------------------------------------------

--
-- Structure for view `8_reserved_price_reached`
--
DROP TABLE IF EXISTS `8_reserved_price_reached`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `8_reserved_price_reached`  AS  select `items`.`item_name` AS `item_name`,(`items`.`reserved_price` < `bids`.`bid_price`) AS `reserve_price_met` from (`items` join `bids`) where (`items`.`item_id` = `bids`.`bid_item`) ;

-- --------------------------------------------------------

--
-- Structure for view `9_latest_publ_auction`
--
DROP TABLE IF EXISTS `9_latest_publ_auction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `9_latest_publ_auction`  AS  select `items`.`item_name` AS `item_name`,`items`.`seller_id` AS `seller_id`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` order by `items`.`auction_start` desc ;

-- --------------------------------------------------------

--
-- Structure for view `10_auction_ending_first`
--
DROP TABLE IF EXISTS `10_auction_ending_first`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `10_auction_ending_first`  AS  select `items`.`item_name` AS `item_name`,`items`.`seller_id` AS `seller_id`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` order by `items`.`auction_end` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `bid_item` (`bid_item`,`bid_user`),
  ADD KEY `bid_user` (`bid_user`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `bid_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`bid_item`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`bid_user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
