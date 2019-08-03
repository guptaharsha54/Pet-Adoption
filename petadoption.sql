-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 04:29 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petadoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `filesrepository`
--

CREATE TABLE `filesrepository` (
  `unique_ID` int(10) NOT NULL,
  `file_ID` varchar(25) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `current_folder` varchar(500) NOT NULL,
  `destination_folder` varchar(500) NOT NULL,
  `new_file_name` varchar(500) DEFAULT NULL,
  `file_save_folder` varchar(500) DEFAULT NULL,
  `file_temp` varchar(500) DEFAULT NULL,
  `file_size` varchar(100) DEFAULT NULL,
  `file_extension` varchar(50) DEFAULT NULL,
  `file_name` varchar(500) DEFAULT NULL,
  `actual_url` varchar(500) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IPADDRESS` varchar(100) NOT NULL,
  `deleteFlag` int(1) NOT NULL DEFAULT '0',
  `file_type` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesrepository`
--

INSERT INTO `filesrepository` (`unique_ID`, `file_ID`, `user_id`, `current_folder`, `destination_folder`, `new_file_name`, `file_save_folder`, `file_temp`, `file_size`, `file_extension`, `file_name`, `actual_url`, `created_datetime`, `IPADDRESS`, `deleteFlag`, `file_type`) VALUES
(96, 's637815mg1358', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphp118F.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=s637815mg1358', '2018-12-16 21:28:01', '::1', 0, 'image/jpeg'),
(97, '1712834515268a62', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphpDC9C.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=1712834515268a62', '2018-12-16 21:51:49', '::1', 0, 'image/jpeg'),
(98, 'j3860208068i3673', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphpF2E4.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=j3860208068i3673', '2018-12-16 21:51:55', '::1', 0, 'image/jpeg'),
(99, '885931336n75b63', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphpE9B9.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=885931336n75b63', '2018-12-16 21:52:58', '::1', 0, 'image/jpeg'),
(100, '94821315698564423', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphp3EB6.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=94821315698564423', '2018-12-16 21:55:31', '::1', 0, 'image/jpeg'),
(101, '519559855366042l', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphp5627.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=519559855366042l', '2018-12-16 21:55:37', '::1', 0, 'image/jpeg'),
(102, '596691mi90635323', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'cat_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphp671B.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=596691mi90635323', '2018-12-16 21:56:47', '::1', 0, 'image/jpeg'),
(103, '8065436528885m75', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'billy_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphpB5D9.tmp', '114979', 'jpg', 'billy', '/viewImage.php?rid=8065436528885m75', '2018-12-16 22:11:19', '::1', 0, 'image/jpeg'),
(104, '2571qd8961153441', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption', 'dog_.jpg', 'C:xampphtdocsPetAdoption', 'C:xampp	mpphpF94D.tmp', '25689', 'jpg', 'dog', '/viewImage.php?rid=2571qd8961153441', '2018-12-16 22:40:00', '::1', 0, 'image/jpeg'),
(105, '389355795989632', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'dog_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphpDA52.tmp', '25689', 'jpg', 'dog', '/viewImage.php?rid=389355795989632', '2018-12-16 22:52:59', '::1', 0, 'image/jpeg'),
(106, '638866f617830299', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'cat_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphpD1B.tmp', '94255', 'jpg', 'cat', '/viewImage.php?rid=638866f617830299', '2018-12-16 22:53:12', '::1', 0, 'image/jpeg'),
(107, '8954a51439903620', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'cat_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphpA0A.tmp', '94255', 'jpg', 'cat', '/viewimage.php?rid=8954a51439903620', '2018-12-16 22:54:16', '::1', 0, 'image/jpeg'),
(108, '7075566cj496876', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'lucy_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphp6238.tmp', '33326', 'jpg', 'lucy', '/viewimage.php?rid=7075566cj496876', '2018-12-16 22:55:45', '::1', 0, 'image/jpeg'),
(109, '7l968859r973723', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'lucy_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphp710E.tmp', '33326', 'jpg', 'lucy', '/viewimage.php?rid=7l968859r973723', '2018-12-16 22:55:48', '::1', 0, 'image/jpeg'),
(110, '318729s8057134753', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'lucy_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphp8802.tmp', '33326', 'jpg', 'lucy', '/viewimage.php?rid=318729s8057134753', '2018-12-16 22:55:54', '::1', 0, 'image/jpeg'),
(111, 'em2545449255860', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'lucy_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphp3B6E.tmp', '33326', 'jpg', 'lucy', '/viewimage.php?rid=em2545449255860', '2018-12-16 23:05:24', '::1', 0, 'image/jpeg'),
(112, '3930c647x858481', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'milo_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphpC6A.tmp', '42358', 'jpg', 'milo', '/viewimage.php?rid=3930c647x858481', '2018-12-17 00:43:31', '::1', 0, 'image/jpeg'),
(113, '6682444616286o89', '', 'C:xampphtdocsPetAdoption', 'C:xampphtdocsPetAdoption/uploads/', 'billy_.jpg', 'C:xampphtdocsPetAdoption/uploads/', 'C:xampp	mpphp1838.tmp', '114979', 'jpg', 'billy', '/viewimage.php?rid=6682444616286o89', '2018-12-17 01:32:43', '::1', 0, 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `PetID` varchar(255) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `PName` varchar(50) NOT NULL,
  `PetAge` int(11) NOT NULL,
  `PColor` varchar(30) NOT NULL,
  `PBreed` varchar(40) NOT NULL,
  `PetImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`PetID`, `PName`, `PetAge`, `PColor`, `PBreed`, `PetImage`) VALUES
('0f53am', 'Lucy', 5, 'Golden', 'Chihuahua', '621848.jpg'),
('5jw84k', 'Casper', 5, 'White', 'Dalmatian', '161843.jpg'),
('81q53n', 'Molly', 18, 'Golden', 'Bengal Cat', '441386.jpg'),
('e9nce9', 'Missy', 2, 'Golden White', 'Turkish Angora', '91415.jpg'),
('gz9qe7', 'Milo', 4, 'Cream', 'Labrador', '266430.jpg'),
('loxwa4', 'Oscar', 7, 'Grey', 'Husky', '615291.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `UserID` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserID`, `Username`, `FirstName`, `LastName`, `PhoneNumber`, `Email`, `Password`) VALUES
('3xr3pg', 'Vidisha123', 'Vidisha', 'Patel', 0, 'manushidave13@gmail.com', '1b3a003a6040b4f80d4783e9dff2396740c842f47976c4a752'),
('3wjipk', 'Vidisha123', 'Vidisha', 'Patel', 0, 'manushidave13@gmail.com', 'dfa91bcfe862d6698abf2c1fd62497dcc87cbd3b1a2005cc91'),
('cgicsp', 'ap123', 'Apoorva', 'Lonkar', 0, 'ap@gmail.com', '93f630f8fba004c9bc74ecd51a7f8d4604bc9ba92463c865fd'),
('07ky8y', 'vidisha_patel007', 'Vidisha', 'Patel', 0, 'vidisha_patel007@yahoo.com', '66e75d2368dd548252327b7bb960eed0509420ddfda212c2bc'),
('cwhjyg', 'al3', 'Apoorva', 'Lonkar', 0, 'apoorvalonkar3@gmail.com', 'f038a9e53d8284f6dfd1a1c578654cc2a0a570d5c04d7b11f1'),
('wgektj', 'shreya', 'Shreya', 'Rajwade', 0, 's4.shre@gmail.com', '0ca3c4facbe596088d13ca2b3d2374f86702cd814a470ca0d7'),
('le8r1r', 'shre', 'Shreya', 'Rajwade', 0, 's4.shre@gmail.com', '90fe7df23cfa799d5cdb3bff3d1ec5a2902d858f2c15d77eb4'),
('2s47be', 'manu', 'Manushi', 'Dave', 0, 'manu@gmail.com', 'd6c279c8441af7e114a9ac2abede7eeacf61741a75e3e30a5f'),
('wr749n', 'Aditi123', 'Aditi', 'Gohil', 2147483647, 'ag@gmail.com', 'c01368ea111a1a46fdee2ad4d37b5732ef6030261e8f940234'),
('bihcay', 'Amit50', 'Amit', 'Lonkar', 2147483647, 'al@gmail.com', 'a7a4ca68baad7bc0e56747cbb2301392d7489f14a4f475db6f'),
('45adss', 'harsha123', 'Harsha', 'Gupta', 2147483647, 'hg@gmail.com', '41e69302df755ec2e2db75fcd9defef1dcdf15511053a0bd40'),
('0mqs3l', 'apoorva', 'Apoorvaa', 'Gohil', 2147483647, 'ap@gmail.com', '445f49fede36dd060a632585c16e07d354b15e0c89ce7b22f7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filesrepository`
--
ALTER TABLE `filesrepository`
  ADD PRIMARY KEY (`unique_ID`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`PetID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filesrepository`
--
ALTER TABLE `filesrepository`
  MODIFY `unique_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
